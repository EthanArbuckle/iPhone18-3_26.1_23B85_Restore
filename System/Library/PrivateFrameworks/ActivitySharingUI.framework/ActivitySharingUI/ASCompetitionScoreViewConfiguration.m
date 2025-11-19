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
  v2 = [a1 gizmoTotalScoreConfiguration];
  v3 = [MEMORY[0x277D74300] systemFontOfSize:13.0];
  [v2 setHeaderFont:v3];

  [v2 setHeaderBaselineOffset:19.5];
  [v2 setNameBaselineOffset:21.0];
  [v2 setShowsScoreTypeHeader:1];

  return v2;
}

+ (id)gizmoTodayScoreConfiguration
{
  v2 = [a1 gizmoTotalScoreFriendDetailConfiguration];
  [v2 setShowsNames:0];
  [v2 setPrimaryScoreSource:1];

  return v2;
}

+ (id)gizmoTotalWinsConfiguration
{
  v2 = [a1 gizmoTotalScoreFriendDetailConfiguration];
  [v2 setShowsNames:0];
  [v2 setPrimaryScoreSource:2];
  [v2 setAchievementThumbnailSize:{20.0, 20.0}];
  [v2 setAchievementThumbnailTopMargin:5.5];
  [v2 setShowsAchievementThumbnail:1];
  [v2 setAchievementThumbnailAlignment:0];
  [v2 setAchievementThumbnailQuality:0];

  return v2;
}

+ (id)gizmoTotalWinsStandaloneConfiguration
{
  v2 = [a1 gizmoTotalWinsConfiguration];
  [v2 setShowsNames:1];

  return v2;
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

  v9 = [v4 fontDescriptor];
  v10 = [v9 fontDescriptorByAddingAttributes:v8];

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
  v2 = [a1 companionTotalScoreFriendDetailConfiguration];
  [v2 setDivision:0];
  [v2 setNameBaselineOffset:30.0];
  [v2 setMinimumMiddleMargin:19.0];
  [v2 setSideMargin:19.0];

  return v2;
}

+ (id)companionTotalWinsFriendDetailConfiguration
{
  v2 = [a1 companionTotalScoreFriendDetailConfiguration];
  [v2 setPrimaryScoreSource:2];
  [v2 setShowsPrimaryScoreUnits:0];
  [v2 setShowsNames:0];
  [v2 setShowsTodaySecondaryScore:0];
  [v2 setBottomMargin:19.0];
  [v2 setPrimaryScoreBaselineOffset:29.0];
  [v2 setShowsAchievementThumbnail:1];
  [v2 setAchievementThumbnailAlignment:1];
  [v2 setAchievementThumbnailQuality:1];
  [v2 setAchievementThumbnailSize:{41.0, 41.0}];

  return v2;
}

+ (id)companionTotalWinsStandaloneFriendDetailConfiguration
{
  v2 = [a1 companionTotalWinsFriendDetailConfiguration];
  [v2 setShowsNames:1];

  return v2;
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