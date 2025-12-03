@interface ASCompetitionScoreViewConfiguration
+ (id)companionFriendListConfiguration;
+ (id)companionTotalScoreFriendDetailConfiguration;
+ (id)companionTotalWinsFriendDetailConfiguration;
+ (id)companionTotalWinsStandaloneFriendDetailConfiguration;
+ (id)gizmoTodayScoreConfiguration;
+ (id)gizmoTotalScoreConfiguration;
+ (id)gizmoTotalScoreFriendDetailConfiguration;
+ (id)gizmoTotalWinsConfiguration;
+ (id)gizmoTotalWinsStandaloneConfiguration;
- (CGSize)achievementThumbnailSize;
@end

@implementation ASCompetitionScoreViewConfiguration

+ (id)gizmoTotalScoreConfiguration
{
  v2 = objc_alloc_init(ASCompetitionScoreViewConfiguration);
  [(ASCompetitionScoreViewConfiguration *)v2 setShowsScoreTypeHeader:0];
  v3 = [MEMORY[0x277D74300] systemFontOfSize:13.0];
  [(ASCompetitionScoreViewConfiguration *)v2 setNameFont:v3];

  [(ASCompetitionScoreViewConfiguration *)v2 setNameBaselineOffset:19.5];
  [(ASCompetitionScoreViewConfiguration *)v2 setShowsNames:1];
  [(ASCompetitionScoreViewConfiguration *)v2 setUppercaseNames:1];
  v4 = [MEMORY[0x277D74300] fu_sausageFontOfSize:25.0];
  [(ASCompetitionScoreViewConfiguration *)v2 setPrimaryScoreFont:v4];

  [(ASCompetitionScoreViewConfiguration *)v2 setPrimaryScoreBaselineOffset:22.5];
  [(ASCompetitionScoreViewConfiguration *)v2 setPrimaryScoreSource:0];
  [(ASCompetitionScoreViewConfiguration *)v2 setShowsPrimaryScoreUnits:0];
  [(ASCompetitionScoreViewConfiguration *)v2 setZeroPadPrimaryScore:1];
  [(ASCompetitionScoreViewConfiguration *)v2 setShowsAchievementThumbnail:0];
  [(ASCompetitionScoreViewConfiguration *)v2 setBottomMargin:10.0];
  [(ASCompetitionScoreViewConfiguration *)v2 setSideMargin:10.0];
  [(ASCompetitionScoreViewConfiguration *)v2 setMinimumMiddleMargin:8.0];
  [(ASCompetitionScoreViewConfiguration *)v2 setAlignment:1];
  [(ASCompetitionScoreViewConfiguration *)v2 setDivision:1];
  [(ASCompetitionScoreViewConfiguration *)v2 setWantsScaledBaselineAlignment:0];

  return v2;
}

+ (id)gizmoTotalScoreFriendDetailConfiguration
{
  gizmoTotalScoreConfiguration = [self gizmoTotalScoreConfiguration];
  v3 = [MEMORY[0x277D74300] systemFontOfSize:13.0];
  [gizmoTotalScoreConfiguration setHeaderFont:v3];

  [gizmoTotalScoreConfiguration setHeaderBaselineOffset:19.5];
  [gizmoTotalScoreConfiguration setNameBaselineOffset:21.0];
  [gizmoTotalScoreConfiguration setShowsScoreTypeHeader:1];

  return gizmoTotalScoreConfiguration;
}

+ (id)gizmoTodayScoreConfiguration
{
  gizmoTotalScoreFriendDetailConfiguration = [self gizmoTotalScoreFriendDetailConfiguration];
  [gizmoTotalScoreFriendDetailConfiguration setShowsNames:0];
  [gizmoTotalScoreFriendDetailConfiguration setPrimaryScoreSource:1];

  return gizmoTotalScoreFriendDetailConfiguration;
}

+ (id)gizmoTotalWinsConfiguration
{
  gizmoTotalScoreFriendDetailConfiguration = [self gizmoTotalScoreFriendDetailConfiguration];
  [gizmoTotalScoreFriendDetailConfiguration setShowsNames:0];
  [gizmoTotalScoreFriendDetailConfiguration setPrimaryScoreSource:2];
  [gizmoTotalScoreFriendDetailConfiguration setAchievementThumbnailSize:{20.0, 20.0}];
  [gizmoTotalScoreFriendDetailConfiguration setAchievementThumbnailTopMargin:5.5];
  [gizmoTotalScoreFriendDetailConfiguration setShowsAchievementThumbnail:1];
  [gizmoTotalScoreFriendDetailConfiguration setAchievementThumbnailAlignment:0];
  [gizmoTotalScoreFriendDetailConfiguration setAchievementThumbnailQuality:0];

  return gizmoTotalScoreFriendDetailConfiguration;
}

+ (id)gizmoTotalWinsStandaloneConfiguration
{
  gizmoTotalWinsConfiguration = [self gizmoTotalWinsConfiguration];
  [gizmoTotalWinsConfiguration setShowsNames:1];

  return gizmoTotalWinsConfiguration;
}

+ (id)companionTotalScoreFriendDetailConfiguration
{
  v20[1] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D74310] preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76918]];
  v3 = [v2 fontDescriptorWithSymbolicTraits:0x8000];

  v4 = [MEMORY[0x277D74300] fu_sausageFontOfSize:30.0];
  v19 = *MEMORY[0x277D74338];
  v5 = *MEMORY[0x277D74388];
  v16[0] = *MEMORY[0x277D74398];
  v16[1] = v5;
  v17[0] = &unk_2850F9B80;
  v17[1] = &unk_2850F9B98;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:2];
  v18 = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:&v18 count:1];
  v20[0] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:&v19 count:1];

  fontDescriptor = [v4 fontDescriptor];
  v10 = [fontDescriptor fontDescriptorByAddingAttributes:v8];

  v11 = [MEMORY[0x277D74300] fontWithDescriptor:v10 size:0.0];
  v12 = objc_alloc_init(ASCompetitionScoreViewConfiguration);
  [(ASCompetitionScoreViewConfiguration *)v12 setShowsScoreTypeHeader:0];
  v13 = [MEMORY[0x277D74300] fontWithDescriptor:v3 size:0.0];
  [(ASCompetitionScoreViewConfiguration *)v12 setNameFont:v13];

  [(ASCompetitionScoreViewConfiguration *)v12 setNameBaselineOffset:20.5];
  [(ASCompetitionScoreViewConfiguration *)v12 setShowsNames:1];
  [(ASCompetitionScoreViewConfiguration *)v12 setUppercaseNames:0];
  [(ASCompetitionScoreViewConfiguration *)v12 setPrimaryScoreFont:v4];
  [(ASCompetitionScoreViewConfiguration *)v12 setPrimaryScoreBaselineOffset:30.0];
  [(ASCompetitionScoreViewConfiguration *)v12 setPrimaryScoreSource:0];
  [(ASCompetitionScoreViewConfiguration *)v12 setShowsPrimaryScoreUnits:1];
  [(ASCompetitionScoreViewConfiguration *)v12 setPrimaryScoreUnitFont:v11];
  [(ASCompetitionScoreViewConfiguration *)v12 setZeroPadPrimaryScore:0];
  [(ASCompetitionScoreViewConfiguration *)v12 setShowsTodaySecondaryScore:1];
  v14 = [MEMORY[0x277D74300] fontWithDescriptor:v3 size:0.0];
  [(ASCompetitionScoreViewConfiguration *)v12 setSecondaryScoreFont:v14];

  [(ASCompetitionScoreViewConfiguration *)v12 setSecondaryScoreBaselineOffset:20.5];
  [(ASCompetitionScoreViewConfiguration *)v12 setShowsAchievementThumbnail:0];
  [(ASCompetitionScoreViewConfiguration *)v12 setBottomMargin:19.0];
  [(ASCompetitionScoreViewConfiguration *)v12 setSideMargin:0.0];
  [(ASCompetitionScoreViewConfiguration *)v12 setMinimumMiddleMargin:19.0];
  [(ASCompetitionScoreViewConfiguration *)v12 setAlignment:0];
  [(ASCompetitionScoreViewConfiguration *)v12 setDivision:2];
  [(ASCompetitionScoreViewConfiguration *)v12 setWantsScaledBaselineAlignment:1];

  return v12;
}

+ (id)companionFriendListConfiguration
{
  companionTotalScoreFriendDetailConfiguration = [self companionTotalScoreFriendDetailConfiguration];
  [companionTotalScoreFriendDetailConfiguration setDivision:0];
  [companionTotalScoreFriendDetailConfiguration setNameBaselineOffset:30.0];
  [companionTotalScoreFriendDetailConfiguration setMinimumMiddleMargin:19.0];
  [companionTotalScoreFriendDetailConfiguration setSideMargin:19.0];

  return companionTotalScoreFriendDetailConfiguration;
}

+ (id)companionTotalWinsFriendDetailConfiguration
{
  companionTotalScoreFriendDetailConfiguration = [self companionTotalScoreFriendDetailConfiguration];
  [companionTotalScoreFriendDetailConfiguration setPrimaryScoreSource:2];
  [companionTotalScoreFriendDetailConfiguration setShowsPrimaryScoreUnits:0];
  [companionTotalScoreFriendDetailConfiguration setShowsNames:0];
  [companionTotalScoreFriendDetailConfiguration setShowsTodaySecondaryScore:0];
  [companionTotalScoreFriendDetailConfiguration setBottomMargin:19.0];
  [companionTotalScoreFriendDetailConfiguration setPrimaryScoreBaselineOffset:29.0];
  [companionTotalScoreFriendDetailConfiguration setShowsAchievementThumbnail:1];
  [companionTotalScoreFriendDetailConfiguration setAchievementThumbnailAlignment:1];
  [companionTotalScoreFriendDetailConfiguration setAchievementThumbnailQuality:1];
  [companionTotalScoreFriendDetailConfiguration setAchievementThumbnailSize:{41.0, 41.0}];

  return companionTotalScoreFriendDetailConfiguration;
}

+ (id)companionTotalWinsStandaloneFriendDetailConfiguration
{
  companionTotalWinsFriendDetailConfiguration = [self companionTotalWinsFriendDetailConfiguration];
  [companionTotalWinsFriendDetailConfiguration setShowsNames:1];

  return companionTotalWinsFriendDetailConfiguration;
}

- (CGSize)achievementThumbnailSize
{
  width = self->_achievementThumbnailSize.width;
  height = self->_achievementThumbnailSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end