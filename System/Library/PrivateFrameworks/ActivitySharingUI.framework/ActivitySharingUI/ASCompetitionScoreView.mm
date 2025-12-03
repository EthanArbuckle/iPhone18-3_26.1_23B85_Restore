@interface ASCompetitionScoreView
+ (double)preferredHeightForConfiguration:(id)configuration friend:(id)friend;
- (ASCompetitionScoreView)initWithConfiguration:(id)configuration;
- (CGSize)sizeThatFits:(CGSize)fits;
- (double)lastBaselineY;
- (double)participantScoreViewWidthForParticipant:(int64_t)participant maximumWidth:(double)width;
- (void)layoutForWidth:(double)width;
- (void)layoutSubviews;
- (void)setFriend:(id)friend competition:(id)competition;
@end

@implementation ASCompetitionScoreView

- (ASCompetitionScoreView)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v29.receiver = self;
  v29.super_class = ASCompetitionScoreView;
  v6 = *MEMORY[0x277CBF3A0];
  v7 = *(MEMORY[0x277CBF3A0] + 8);
  v8 = *(MEMORY[0x277CBF3A0] + 16);
  v9 = *(MEMORY[0x277CBF3A0] + 24);
  v10 = [(ASCompetitionScoreView *)&v29 initWithFrame:*MEMORY[0x277CBF3A0], v7, v8, v9];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_configuration, configuration);
    v11->_isRTLLayout = [MEMORY[0x277D75D18] userInterfaceLayoutDirectionForSemanticContentAttribute:0] == 1;
    v12 = [[ASCompetitionParticipantScoreView alloc] initWithConfiguration:configurationCopy];
    myScoreView = v11->_myScoreView;
    v11->_myScoreView = v12;

    [(ASCompetitionScoreView *)v11 addSubview:v11->_myScoreView];
    v14 = [[ASCompetitionParticipantScoreView alloc] initWithConfiguration:configurationCopy];
    opponentScoreView = v11->_opponentScoreView;
    v11->_opponentScoreView = v14;

    [(ASCompetitionScoreView *)v11 addSubview:v11->_opponentScoreView];
    if ([configurationCopy showsScoreTypeHeader])
    {
      v16 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v6, v7, v8, v9}];
      scoreTypeHeaderLabel = v11->_scoreTypeHeaderLabel;
      v11->_scoreTypeHeaderLabel = v16;

      headerFont = [configurationCopy headerFont];
      [(UILabel *)v11->_scoreTypeHeaderLabel setFont:headerFont];

      primaryScoreSource = [configurationCopy primaryScoreSource];
      if (primaryScoreSource <= 2)
      {
        v20 = off_278C532D0[primaryScoreSource];
        v21 = ActivitySharingBundle();
        headerFont = [v21 localizedStringForKey:v20 value:&stru_2850F6650 table:@"Localizable"];
      }

      localizedUppercaseString = [headerFont localizedUppercaseString];
      [(UILabel *)v11->_scoreTypeHeaderLabel setText:localizedUppercaseString];

      whiteColor = [MEMORY[0x277D75348] whiteColor];
      [(UILabel *)v11->_scoreTypeHeaderLabel setTextColor:whiteColor];

      [(UILabel *)v11->_scoreTypeHeaderLabel setTextAlignment:1];
      [(ASCompetitionScoreView *)v11 addSubview:v11->_scoreTypeHeaderLabel];
    }

    if ([configurationCopy showsAchievementThumbnail])
    {
      v24 = [objc_alloc(MEMORY[0x277D755E8]) initWithFrame:{v6, v7, v8, v9}];
      achievementThumbnailView = v11->_achievementThumbnailView;
      v11->_achievementThumbnailView = v24;

      [(UIImageView *)v11->_achievementThumbnailView setContentMode:2];
      [(UIImageView *)v11->_achievementThumbnailView setClipsToBounds:0];
      [(ASCompetitionScoreView *)v11 addSubview:v11->_achievementThumbnailView];
      if (![configurationCopy achievementThumbnailAlignment])
      {
        [configurationCopy achievementThumbnailSize];
        v27 = v26 * 0.5;
        [(ASCompetitionParticipantScoreView *)v11->_myScoreView setScoreLeftMargin:v26 * 0.5];
        [(ASCompetitionParticipantScoreView *)v11->_opponentScoreView setScoreRightMargin:v27];
      }
    }
  }

  return v11;
}

- (double)participantScoreViewWidthForParticipant:(int64_t)participant maximumWidth:(double)width
{
  [(ASCompetitionScoreViewConfiguration *)self->_configuration sideMargin];
  v8 = width + v7 * -2.0;
  [(ASCompetitionScoreViewConfiguration *)self->_configuration minimumMiddleMargin];
  v10 = v8 - v9;
  division = [(ASCompetitionScoreViewConfiguration *)self->_configuration division];
  if (division)
  {
    if (division == 2)
    {
      [(ASCompetitionScoreViewConfiguration *)self->_configuration minimumMiddleMargin];
      v14 = (v10 + v13) * 0.5;
      [(ASCompetitionScoreViewConfiguration *)self->_configuration minimumMiddleMargin];
      result = (v10 - v15) * 0.5;
      if (participant)
      {
        if (self->_isRTLLayout)
        {
          return v14;
        }
      }

      else if (!self->_isRTLLayout)
      {
        return v14;
      }
    }

    else if (division == 1)
    {
      return v10 * 0.5;
    }
  }

  else
  {
    isRTLLayout = self->_isRTLLayout;
    [(ASCompetitionScoreViewConfiguration *)self->_configuration opponentScoreViewWidth];
    if (participant)
    {
      if (isRTLLayout)
      {
        return v10 - result;
      }
    }

    else if (!isRTLLayout)
    {
      return v10 - result;
    }
  }

  return result;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  [(ASCompetitionScoreView *)self layoutForWidth:?];
  [(ASCompetitionParticipantScoreView *)self->_myScoreView sizeThatFits:width, height];
  v7 = v6;
  [(ASCompetitionScoreViewConfiguration *)self->_configuration bottomMargin];
  v9 = v7 + v8;
  if ([(ASCompetitionScoreViewConfiguration *)self->_configuration showsScoreTypeHeader])
  {
    [(UILabel *)self->_scoreTypeHeaderLabel _lastLineBaselineFrameOriginY];
    v9 = v9 + v10;
  }

  v11 = width;
  v12 = v9;
  result.height = v12;
  result.width = v11;
  return result;
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = ASCompetitionScoreView;
  [(ASCompetitionScoreView *)&v4 layoutSubviews];
  [(ASCompetitionScoreView *)self bounds];
  [(ASCompetitionScoreView *)self layoutForWidth:v3];
}

- (void)layoutForWidth:(double)width
{
  scoreTypeHeaderLabel = self->_scoreTypeHeaderLabel;
  if (scoreTypeHeaderLabel)
  {
    [(UILabel *)scoreTypeHeaderLabel sizeToFit];
    [(UILabel *)self->_scoreTypeHeaderLabel bounds];
    [(UILabel *)self->_scoreTypeHeaderLabel setFrame:0.0, 0.0, width, CGRectGetHeight(v51)];
    [(ASCompetitionScoreViewConfiguration *)self->_configuration headerBaselineOffset];
    [(UILabel *)self->_scoreTypeHeaderLabel _setFirstLineBaselineFrameOriginY:?];
  }

  [(ASCompetitionScoreViewConfiguration *)self->_configuration sideMargin];
  v7 = v6;
  [(UILabel *)self->_scoreTypeHeaderLabel _lastLineBaselineFrameOriginY];
  v9 = v8;
  [(ASCompetitionScoreView *)self participantScoreViewWidthForParticipant:1 maximumWidth:width];
  v11 = v10;
  [(ASCompetitionScoreView *)self participantScoreViewWidthForParticipant:0 maximumWidth:width];
  v13 = v12;
  [(ASCompetitionParticipantScoreView *)self->_opponentScoreView sizeThatFits:width, 1.79769313e308];
  v15 = v14;
  [(ASCompetitionParticipantScoreView *)self->_opponentScoreView setFrame:v7, v9, v11, v14];
  [(ASCompetitionParticipantScoreView *)self->_opponentScoreView frame];
  MaxX = CGRectGetMaxX(v52);
  [(ASCompetitionScoreViewConfiguration *)self->_configuration minimumMiddleMargin];
  [(ASCompetitionParticipantScoreView *)self->_myScoreView setFrame:MaxX + v17, v9, v13, v15];
  if (self->_isRTLLayout)
  {
    [(ASCompetitionParticipantScoreView *)self->_opponentScoreView frame];
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v25 = v24;
    [(ASCompetitionParticipantScoreView *)self->_myScoreView frame];
    [(ASCompetitionParticipantScoreView *)self->_opponentScoreView setFrame:?];
    [(ASCompetitionParticipantScoreView *)self->_myScoreView setFrame:v19, v21, v23, v25];
  }

  if (self->_achievementThumbnailView)
  {
    [(ASCompetitionScoreViewConfiguration *)self->_configuration achievementThumbnailSize];
    v27 = v26;
    [(ASCompetitionScoreViewConfiguration *)self->_configuration achievementThumbnailSize];
    v29 = v28;
    achievementThumbnailAlignment = [(ASCompetitionScoreViewConfiguration *)self->_configuration achievementThumbnailAlignment];
    if (achievementThumbnailAlignment == 1)
    {
      [(ASCompetitionParticipantScoreView *)self->_myScoreView frame];
      v34 = CGRectGetMaxY(v53) - v29 + 2.5;
      v37 = 0.0;
      if (!self->_isRTLLayout)
      {
        [(ASCompetitionScoreViewConfiguration *)self->_configuration achievementThumbnailSize];
        v37 = width - v38;
      }
    }

    else
    {
      if (achievementThumbnailAlignment)
      {
        goto LABEL_14;
      }

      [(UILabel *)self->_scoreTypeHeaderLabel _lastLineBaselineFrameOriginY];
      v32 = v31;
      [(ASCompetitionScoreViewConfiguration *)self->_configuration achievementThumbnailTopMargin];
      v34 = v32 + v33;
      if ([(ASCompetitionScoreViewConfiguration *)self->_configuration showsNames])
      {
        [(ASCompetitionParticipantScoreView *)self->_myScoreView nameBaselineY];
        v34 = v34 + v35;
      }

      [(ASCompetitionScoreViewConfiguration *)self->_configuration achievementThumbnailSize];
      v37 = (width - v36) * 0.5;
    }

    [(UIImageView *)self->_achievementThumbnailView setFrame:v37, v34, v27, v29];
  }

LABEL_14:
  [(ASCompetitionParticipantScoreView *)self->_myScoreView computeNameFontSizeReductionForWidth:v13];
  v40 = v39;
  [(ASCompetitionParticipantScoreView *)self->_opponentScoreView computeNameFontSizeReductionForWidth:v11];
  v41 = v40;
  *&v42 = v42;
  v43 = fmaxf(v41, *&v42);
  [(ASCompetitionParticipantScoreView *)self->_myScoreView setNameFontSizeReduction:v43];
  [(ASCompetitionParticipantScoreView *)self->_opponentScoreView setNameFontSizeReduction:v43];
  [(ASCompetitionParticipantScoreView *)self->_myScoreView computePrimaryScoreFontSizeReductionForWidth:v13];
  v45 = v44;
  [(ASCompetitionParticipantScoreView *)self->_opponentScoreView computePrimaryScoreFontSizeReductionForWidth:v11];
  v46 = v45;
  *&v47 = v47;
  v48 = fmaxf(v46, *&v47);
  [(ASCompetitionParticipantScoreView *)self->_myScoreView setPrimaryScoreFontSizeReduction:v48];
  opponentScoreView = self->_opponentScoreView;

  [(ASCompetitionParticipantScoreView *)opponentScoreView setPrimaryScoreFontSizeReduction:v48];
}

- (double)lastBaselineY
{
  [(ASCompetitionParticipantScoreView *)self->_myScoreView frame];

  return CGRectGetMaxY(*&v2);
}

- (void)setFriend:(id)friend competition:(id)competition
{
  friendCopy = friend;
  competitionCopy = competition;
  if (competitionCopy)
  {
    v7 = [MEMORY[0x277D75348] as_colorForParticipant:1 competition:competitionCopy];
    [(ASCompetitionParticipantScoreView *)self->_opponentScoreView setScoreColor:v7];

    as_lightCompetitionGold = [MEMORY[0x277D75348] as_colorForParticipant:0 competition:competitionCopy];
LABEL_5:
    v12 = as_lightCompetitionGold;
    goto LABEL_6;
  }

  numberOfCompetitionWinsByMe = [friendCopy numberOfCompetitionWinsByMe];
  numberOfCompetitionWinsAgainstMe = [friendCopy numberOfCompetitionWinsAgainstMe];
  if (numberOfCompetitionWinsByMe > numberOfCompetitionWinsAgainstMe)
  {
    as_darkCompetitionGold = [MEMORY[0x277D75348] as_darkCompetitionGold];
    [(ASCompetitionParticipantScoreView *)self->_opponentScoreView setScoreColor:as_darkCompetitionGold];

    as_lightCompetitionGold = [MEMORY[0x277D75348] as_lightCompetitionGold];
    goto LABEL_5;
  }

  v35 = numberOfCompetitionWinsAgainstMe;
  as_lightCompetitionGold2 = [MEMORY[0x277D75348] as_lightCompetitionGold];
  [(ASCompetitionParticipantScoreView *)self->_opponentScoreView setScoreColor:as_lightCompetitionGold2];

  if (v35 <= numberOfCompetitionWinsByMe)
  {
    [MEMORY[0x277D75348] as_lightCompetitionGold];
  }

  else
  {
    [MEMORY[0x277D75348] as_darkCompetitionGold];
  }
  v12 = ;
LABEL_6:
  [(ASCompetitionParticipantScoreView *)self->_myScoreView setScoreColor:v12];

  uppercaseNames = [(ASCompetitionScoreViewConfiguration *)self->_configuration uppercaseNames];
  displayName = [friendCopy displayName];
  v15 = displayName;
  if (uppercaseNames)
  {
    uppercaseString = [displayName uppercaseString];

    v15 = uppercaseString;
  }

  uppercaseNames2 = [(ASCompetitionScoreViewConfiguration *)self->_configuration uppercaseNames];
  v18 = ActivitySharingBundle();
  v19 = v18;
  if (uppercaseNames2)
  {
    v20 = @"UPPERCASE_ME";
  }

  else
  {
    v20 = @"ME";
  }

  v21 = [v18 localizedStringForKey:v20 value:&stru_2850F6650 table:@"Localizable"];

  [(ASCompetitionParticipantScoreView *)self->_opponentScoreView setName:v15];
  [(ASCompetitionParticipantScoreView *)self->_myScoreView setName:v21];
  date = [MEMORY[0x277CBEAA8] date];
  v23 = [competitionCopy dailyScoreForParticipant:0 onDate:date];

  date2 = [MEMORY[0x277CBEAA8] date];
  v25 = [competitionCopy dailyScoreForParticipant:1 onDate:date2];

  primaryScoreSource = [(ASCompetitionScoreViewConfiguration *)self->_configuration primaryScoreSource];
  switch(primaryScoreSource)
  {
    case 2:
      -[ASCompetitionParticipantScoreView setPrimaryScore:](self->_opponentScoreView, "setPrimaryScore:", [friendCopy numberOfCompetitionWinsAgainstMe]);
      numberOfCompetitionWinsByMe2 = [friendCopy numberOfCompetitionWinsByMe];
      myScoreView = self->_myScoreView;
      goto LABEL_18;
    case 1:
      [(ASCompetitionParticipantScoreView *)self->_opponentScoreView setPrimaryScore:v25];
      myScoreView = self->_myScoreView;
      numberOfCompetitionWinsByMe2 = v23;
LABEL_18:
      [(ASCompetitionParticipantScoreView *)myScoreView setPrimaryScore:numberOfCompetitionWinsByMe2];
      break;
    case 0:
      -[ASCompetitionParticipantScoreView setPrimaryScore:](self->_opponentScoreView, "setPrimaryScore:", [competitionCopy opponentTotalScore]);
      -[ASCompetitionParticipantScoreView setPrimaryScore:](self->_myScoreView, "setPrimaryScore:", [competitionCopy myTotalScore]);
      if ([(ASCompetitionScoreViewConfiguration *)self->_configuration showsTodaySecondaryScore])
      {
        -[ASCompetitionParticipantScoreView setSecondaryScoreEnabled:](self->_opponentScoreView, "setSecondaryScoreEnabled:", [friendCopy hasCompletedFirstDayOfCurrentCompetition]);
        -[ASCompetitionParticipantScoreView setSecondaryScoreEnabled:](self->_myScoreView, "setSecondaryScoreEnabled:", [friendCopy hasCompletedFirstDayOfCurrentCompetition]);
        [(ASCompetitionParticipantScoreView *)self->_opponentScoreView setSecondaryScore:v25];
        [(ASCompetitionParticipantScoreView *)self->_myScoreView setSecondaryScore:v23];
      }

      break;
  }

  if (competitionCopy)
  {
    currentOrMostRecentCompetition = competitionCopy;
  }

  else
  {
    currentOrMostRecentCompetition = [friendCopy currentOrMostRecentCompetition];
  }

  v30 = currentOrMostRecentCompetition;
  achievementThumbnailView = self->_achievementThumbnailView;
  if (achievementThumbnailView && v30)
  {
    [v30 victoryBadgeStyle];
    [(ASCompetitionScoreViewConfiguration *)self->_configuration achievementThumbnailQuality];
    v32 = ASAchievementThumbnailPathForStyle();
    v33 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:v32 options:0 error:0];
    v34 = [MEMORY[0x277D755B8] imageWithData:v33];
    [(UIImageView *)self->_achievementThumbnailView setImage:v34];
  }

  else
  {
    [(UIImageView *)achievementThumbnailView setImage:0];
  }

  [(ASCompetitionScoreView *)self setNeedsLayout];
}

+ (double)preferredHeightForConfiguration:(id)configuration friend:(id)friend
{
  configurationCopy = configuration;
  friendCopy = friend;
  [configurationCopy bottomMargin];
  v8 = v7;
  if ([configurationCopy wantsScaledBaselineAlignment])
  {
    primaryScoreFont = [configurationCopy primaryScoreFont];
    [configurationCopy primaryScoreBaselineOffset];
    [primaryScoreFont _scaledValueForValue:?];
    v11 = v10;
  }

  else
  {
    [configurationCopy primaryScoreBaselineOffset];
    v11 = v12;
  }

  v13 = v8 + v11;
  if ([configurationCopy showsNames])
  {
    if ([configurationCopy wantsScaledBaselineAlignment])
    {
      nameFont = [configurationCopy nameFont];
      [configurationCopy nameBaselineOffset];
      [nameFont _scaledValueForValue:?];
      v13 = v13 + v15;
    }

    else
    {
      [configurationCopy nameBaselineOffset];
      v13 = v13 + v16;
    }
  }

  if ([configurationCopy showsTodaySecondaryScore] && objc_msgSend(friendCopy, "hasCompletedFirstDayOfCurrentCompetition"))
  {
    secondaryScoreFont = [configurationCopy secondaryScoreFont];
    [configurationCopy secondaryScoreBaselineOffset];
    [secondaryScoreFont _scaledValueForValue:?];
    v13 = v13 + v18;
  }

  return v13;
}

@end