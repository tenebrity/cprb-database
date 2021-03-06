USE [cprb]
GO
/****** Object:  Table [dbo].[Recommendation]    Script Date: 11/12/2014 16:52:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Recommendation](
	[RecommendationId] [int] IDENTITY(1,1) NOT NULL,
	[RecommendationText] [varchar](max) NOT NULL,
	[RecommendationComplete] [bit] NOT NULL,
 CONSTRAINT [PK_Recommendation] PRIMARY KEY CLUSTERED 
(
	[RecommendationId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Rationale]    Script Date: 11/12/2014 16:52:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Rationale](
	[RationaleId] [int] IDENTITY(1,1) NOT NULL,
	[RationaleText] [varchar](100) NOT NULL,
 CONSTRAINT [PK_Rationale] PRIMARY KEY CLUSTERED 
(
	[RationaleId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Officer]    Script Date: 11/12/2014 16:52:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Officer](
	[OfficerId] [int] IDENTITY(1,1) NOT NULL,
	[OfficerBadgeNumber] [varchar](30) NULL,
	[OfficerFirstName] [varchar](50) NULL,
	[OfficerLastName] [varchar](50) NULL,
	[OfficerUniqueId] [varchar](50) NULL,
 CONSTRAINT [PK_Officer] PRIMARY KEY CLUSTERED 
(
	[OfficerId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Investigator]    Script Date: 11/12/2014 16:52:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Investigator](
	[InvestigatorId] [int] IDENTITY(1,1) NOT NULL,
	[InvestigatorFirstName] [nvarchar](50) NULL,
	[InvestigatorLastName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Investigator] PRIMARY KEY CLUSTERED 
(
	[InvestigatorId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cases]    Script Date: 11/12/2014 16:52:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Cases](
	[CaseId] [int] IDENTITY(1,1) NOT NULL,
	[CaseNo] [nvarchar](20) NOT NULL,
	[Summary] [varchar](max) NOT NULL,
	[IssuedDate] [datetime] NOT NULL,
	[IsResolved] [bit] NOT NULL,
 CONSTRAINT [PK_Case] PRIMARY KEY CLUSTERED 
(
	[CaseId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[BoardMember]    Script Date: 11/12/2014 16:52:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BoardMember](
	[BoardMemberId] [int] IDENTITY(1,1) NOT NULL,
	[BoardMemberFirstName] [varchar](50) NOT NULL,
	[BoardMemberLastName] [varchar](50) NOT NULL,
	[DateServedStart] [datetime] NOT NULL,
	[DateServedEnd] [datetime] NULL,
 CONSTRAINT [PK_BoardMember] PRIMARY KEY CLUSTERED 
(
	[BoardMemberId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[BoardHearing]    Script Date: 11/12/2014 16:52:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BoardHearing](
	[BoardHearingId] [int] IDENTITY(1,1) NOT NULL,
	[DateHeld] [datetime] NOT NULL,
	[Notes] [varchar](max) NULL,
	[pdf] [varbinary](max) NULL,
 CONSTRAINT [PK_BoardHearing] PRIMARY KEY CLUSTERED 
(
	[BoardHearingId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Allegation]    Script Date: 11/12/2014 16:52:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Allegation](
	[AllegationId] [int] IDENTITY(1,1) NOT NULL,
	[AllegationText] [varchar](500) NOT NULL,
	[AllegationCode] [varchar](100) NOT NULL,
 CONSTRAINT [PK_Allegation] PRIMARY KEY CLUSTERED 
(
	[AllegationId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Status]    Script Date: 11/12/2014 16:52:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Status](
	[CaseId] [int] NOT NULL,
	[RecommendationId] [int] NOT NULL,
	[BoardHearingId] [int] NOT NULL,
	[RationaleId] [int] NOT NULL,
	[AsideText] [varchar](max) NULL,
	[Ruling] [varchar](12) NULL,
	[NameOne] [varchar](50) NULL,
	[NameTwo] [varchar](50) NULL,
 CONSTRAINT [PK_Status] PRIMARY KEY CLUSTERED 
(
	[CaseId] ASC,
	[RecommendationId] ASC,
	[BoardHearingId] ASC,
	[RationaleId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CaseOfficers]    Script Date: 11/12/2014 16:52:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CaseOfficers](
	[CaseId] [int] NOT NULL,
	[OfficerId] [int] NOT NULL,
 CONSTRAINT [PK_CaseOfficers] PRIMARY KEY CLUSTERED 
(
	[CaseId] ASC,
	[OfficerId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CaseInvestigators]    Script Date: 11/12/2014 16:52:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CaseInvestigators](
	[CaseId] [int] NOT NULL,
	[InvestigatorId] [int] NOT NULL,
 CONSTRAINT [PK_CaseInvestigators] PRIMARY KEY CLUSTERED 
(
	[CaseId] ASC,
	[InvestigatorId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CaseAllegations]    Script Date: 11/12/2014 16:52:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CaseAllegations](
	[CaseId] [int] NOT NULL,
	[AllegationId] [int] NOT NULL,
 CONSTRAINT [PK_CaseAllegations] PRIMARY KEY CLUSTERED 
(
	[CaseId] ASC,
	[AllegationId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  ForeignKey [CaseAllegations_AllegationId]    Script Date: 11/12/2014 16:52:49 ******/
ALTER TABLE [dbo].[CaseAllegations]  WITH CHECK ADD  CONSTRAINT [CaseAllegations_AllegationId] FOREIGN KEY([AllegationId])
REFERENCES [dbo].[Allegation] ([AllegationId])
GO
ALTER TABLE [dbo].[CaseAllegations] CHECK CONSTRAINT [CaseAllegations_AllegationId]
GO
/****** Object:  ForeignKey [CaseAllegations_CaseId]    Script Date: 11/12/2014 16:52:49 ******/
ALTER TABLE [dbo].[CaseAllegations]  WITH CHECK ADD  CONSTRAINT [CaseAllegations_CaseId] FOREIGN KEY([CaseId])
REFERENCES [dbo].[Cases] ([CaseId])
GO
ALTER TABLE [dbo].[CaseAllegations] CHECK CONSTRAINT [CaseAllegations_CaseId]
GO
/****** Object:  ForeignKey [CaseInvestigators_CaseId]    Script Date: 11/12/2014 16:52:49 ******/
ALTER TABLE [dbo].[CaseInvestigators]  WITH CHECK ADD  CONSTRAINT [CaseInvestigators_CaseId] FOREIGN KEY([CaseId])
REFERENCES [dbo].[Cases] ([CaseId])
GO
ALTER TABLE [dbo].[CaseInvestigators] CHECK CONSTRAINT [CaseInvestigators_CaseId]
GO
/****** Object:  ForeignKey [CaseInvestigators_InvestigatorId]    Script Date: 11/12/2014 16:52:49 ******/
ALTER TABLE [dbo].[CaseInvestigators]  WITH CHECK ADD  CONSTRAINT [CaseInvestigators_InvestigatorId] FOREIGN KEY([InvestigatorId])
REFERENCES [dbo].[Investigator] ([InvestigatorId])
GO
ALTER TABLE [dbo].[CaseInvestigators] CHECK CONSTRAINT [CaseInvestigators_InvestigatorId]
GO
/****** Object:  ForeignKey [CaseOfficer_CaseId]    Script Date: 11/12/2014 16:52:49 ******/
ALTER TABLE [dbo].[CaseOfficers]  WITH CHECK ADD  CONSTRAINT [CaseOfficer_CaseId] FOREIGN KEY([CaseId])
REFERENCES [dbo].[Cases] ([CaseId])
GO
ALTER TABLE [dbo].[CaseOfficers] CHECK CONSTRAINT [CaseOfficer_CaseId]
GO
/****** Object:  ForeignKey [CaseOfficers_OfficerId]    Script Date: 11/12/2014 16:52:49 ******/
ALTER TABLE [dbo].[CaseOfficers]  WITH CHECK ADD  CONSTRAINT [CaseOfficers_OfficerId] FOREIGN KEY([OfficerId])
REFERENCES [dbo].[Officer] ([OfficerId])
GO
ALTER TABLE [dbo].[CaseOfficers] CHECK CONSTRAINT [CaseOfficers_OfficerId]
GO
/****** Object:  ForeignKey [Status_BoardHearingId]    Script Date: 11/12/2014 16:52:49 ******/
ALTER TABLE [dbo].[Status]  WITH CHECK ADD  CONSTRAINT [Status_BoardHearingId] FOREIGN KEY([BoardHearingId])
REFERENCES [dbo].[BoardHearing] ([BoardHearingId])
GO
ALTER TABLE [dbo].[Status] CHECK CONSTRAINT [Status_BoardHearingId]
GO
/****** Object:  ForeignKey [Status_CaseId]    Script Date: 11/12/2014 16:52:49 ******/
ALTER TABLE [dbo].[Status]  WITH CHECK ADD  CONSTRAINT [Status_CaseId] FOREIGN KEY([CaseId])
REFERENCES [dbo].[Cases] ([CaseId])
GO
ALTER TABLE [dbo].[Status] CHECK CONSTRAINT [Status_CaseId]
GO
/****** Object:  ForeignKey [Status_RationaleId]    Script Date: 11/12/2014 16:52:49 ******/
ALTER TABLE [dbo].[Status]  WITH CHECK ADD  CONSTRAINT [Status_RationaleId] FOREIGN KEY([RationaleId])
REFERENCES [dbo].[Rationale] ([RationaleId])
GO
ALTER TABLE [dbo].[Status] CHECK CONSTRAINT [Status_RationaleId]
GO
/****** Object:  ForeignKey [Status_RecommendationId]    Script Date: 11/12/2014 16:52:49 ******/
ALTER TABLE [dbo].[Status]  WITH CHECK ADD  CONSTRAINT [Status_RecommendationId] FOREIGN KEY([RecommendationId])
REFERENCES [dbo].[Recommendation] ([RecommendationId])
GO
ALTER TABLE [dbo].[Status] CHECK CONSTRAINT [Status_RecommendationId]
GO
