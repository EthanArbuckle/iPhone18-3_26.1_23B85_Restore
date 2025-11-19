@interface _App
- (_App)initWithNotificationStacks:(id)a3 maxAppMarqueeGroups:(unint64_t)a4 digestFeedback:(id)a5;
- (double)logisticScoreForInput:(double)a3;
- (double)setDigestRankingScore;
- (id)getGroupsFromNotificationStacks:(id)a3;
- (void)setBundleId;
- (void)setRankedGroupsFromNotificationGroups:(id)a3;
@end

@implementation _App

- (_App)initWithNotificationStacks:(id)a3 maxAppMarqueeGroups:(unint64_t)a4 digestFeedback:(id)a5
{
  v8 = a3;
  v9 = a5;
  v15.receiver = self;
  v15.super_class = _App;
  v10 = [(_App *)&v15 init];
  if (v10)
  {
    v11 = +[ATXNotificationDigestRankingConstants sharedInstance];
    c = v10->_c;
    v10->_c = v11;

    v10->_maxAppMarqueeGroups = a4;
    objc_storeStrong(&v10->_digestFeedback, a5);
    v13 = [(_App *)v10 getGroupsFromNotificationStacks:v8];
    [(_App *)v10 setRankedGroupsFromNotificationGroups:v13];

    [(_App *)v10 setBundleId];
    [(_App *)v10 setDigestRankingScore];
  }

  return v10;
}

- (id)getGroupsFromNotificationStacks:(id)a3
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __40___App_getGroupsFromNotificationStacks___block_invoke;
  v5[3] = &unk_2785A1C38;
  v5[4] = self;
  v3 = [a3 _pas_mappedArrayWithTransform:v5];

  return v3;
}

- (void)setBundleId
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBEB70];
  groups = self->_groups;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __19___App_setBundleId__block_invoke;
  v18[3] = &unk_2785A1C60;
  v18[4] = self;
  v5 = [(NSArray *)groups _pas_mappedArrayWithTransform:v18];
  v6 = [v3 orderedSetWithArray:v5];

  if (![v6 count])
  {
    v7 = __atxlog_handle_notification_management();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v14 = objc_opt_class();
      v9 = NSStringFromClass(v14);
      *buf = 138412290;
      v20 = v9;
      v11 = "[%@] Missing bundleId. Proceeding to rank app without bundleId.";
      v12 = v7;
      v13 = 12;
      goto LABEL_7;
    }

LABEL_8:

    goto LABEL_9;
  }

  if ([v6 count] >= 2)
  {
    v7 = __atxlog_handle_notification_management();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      v10 = [v6 count];
      *buf = 138412546;
      v20 = v9;
      v21 = 2048;
      v22 = v10;
      v11 = "[%@] Expected to find exactly one bundle ID, but found %lu. Assuming first bundleId.";
      v12 = v7;
      v13 = 22;
LABEL_7:
      _os_log_impl(&dword_2263AA000, v12, OS_LOG_TYPE_INFO, v11, buf, v13);

      goto LABEL_8;
    }

    goto LABEL_8;
  }

LABEL_9:
  v15 = [v6 firstObject];
  bundleId = self->_bundleId;
  self->_bundleId = v15;

  v17 = *MEMORY[0x277D85DE8];
}

- (void)setRankedGroupsFromNotificationGroups:(id)a3
{
  v4 = [a3 sortedArrayUsingComparator:&__block_literal_global_255];
  v5 = [v4 _pas_filteredArrayWithTest:&__block_literal_global_27_2];
  groupsWithComms = self->_groupsWithComms;
  self->_groupsWithComms = v5;

  v7 = [v4 _pas_filteredArrayWithTest:&__block_literal_global_29_4];
  groupsWithoutComms = self->_groupsWithoutComms;
  self->_groupsWithoutComms = v7;

  v9 = [(NSArray *)self->_groupsWithComms _pas_filteredArrayWithTest:&__block_literal_global_31_3];
  groupsWithCommsWithPreviewableAttachment = self->_groupsWithCommsWithPreviewableAttachment;
  self->_groupsWithCommsWithPreviewableAttachment = v9;

  v11 = [(NSArray *)self->_groupsWithComms _pas_filteredArrayWithTest:&__block_literal_global_33_1];
  groupsWithCommsWithoutPreviewableAttachment = self->_groupsWithCommsWithoutPreviewableAttachment;
  self->_groupsWithCommsWithoutPreviewableAttachment = v11;

  v13 = [(NSArray *)self->_groupsWithoutComms _pas_filteredArrayWithTest:&__block_literal_global_35_6];
  groupsWithoutCommsWithPreviewableAttachment = self->_groupsWithoutCommsWithPreviewableAttachment;
  self->_groupsWithoutCommsWithPreviewableAttachment = v13;

  v15 = [(NSArray *)self->_groupsWithoutComms _pas_filteredArrayWithTest:&__block_literal_global_37_0];
  groupsWithoutCommsWithoutPreviewableAttachment = self->_groupsWithoutCommsWithoutPreviewableAttachment;
  self->_groupsWithoutCommsWithoutPreviewableAttachment = v15;

  v17 = objc_opt_new();
  [v17 addObjectsFromArray:self->_groupsWithCommsWithPreviewableAttachment];
  [v17 addObjectsFromArray:self->_groupsWithCommsWithoutPreviewableAttachment];
  [v17 addObjectsFromArray:self->_groupsWithoutCommsWithPreviewableAttachment];
  [v17 addObjectsFromArray:self->_groupsWithoutCommsWithoutPreviewableAttachment];
  v18 = [v17 count];
  if (v18 >= self->_maxAppMarqueeGroups)
  {
    maxAppMarqueeGroups = self->_maxAppMarqueeGroups;
  }

  else
  {
    maxAppMarqueeGroups = v18;
  }

  v20 = [v17 subarrayWithRange:{0, maxAppMarqueeGroups}];
  appMarqueeGroups = self->_appMarqueeGroups;
  self->_appMarqueeGroups = v20;

  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __46___App_setRankedGroupsFromNotificationGroups___block_invoke_8;
  v26[3] = &unk_2785A1B00;
  v26[4] = self;
  v22 = [v4 _pas_filteredArrayWithTest:v26];
  nonAppMarqueeGroups = self->_nonAppMarqueeGroups;
  self->_nonAppMarqueeGroups = v22;

  v24 = [(NSArray *)self->_appMarqueeGroups arrayByAddingObjectsFromArray:self->_nonAppMarqueeGroups];
  groups = self->_groups;
  self->_groups = v24;
}

- (double)setDigestRankingScore
{
  [(ATXNotificationDigestFeedbackProtocol *)self->_digestFeedback marqueeAppearancesForBundleId:self->_bundleId];
  v4 = v3;
  [(ATXNotificationDigestFeedbackProtocol *)self->_digestFeedback marqueeEngagementsForBundleId:self->_bundleId];
  v6 = v5;
  [(ATXNotificationDigestFeedbackProtocol *)self->_digestFeedback nonMarqueeAppearancesForBundleId:self->_bundleId];
  v8 = v7;
  [(ATXNotificationDigestFeedbackProtocol *)self->_digestFeedback nonMarqueeEngagementsForBundleId:self->_bundleId];
  v10 = v9;
  [(ATXNotificationDigestFeedbackProtocol *)self->_digestFeedback basicNotificationsSentForBundleId:self->_bundleId];
  v12 = v11;
  [(ATXNotificationDigestFeedbackProtocol *)self->_digestFeedback timeSensitiveNotificationsSentForBundleId:self->_bundleId];
  v14 = v13;
  [(ATXNotificationDigestRankingConstants *)self->_c weightForMarqueeAppearance];
  v16 = v15;
  [(ATXNotificationDigestRankingConstants *)self->_c weightForMarqueeEngagement];
  v18 = v6 * v17 + v4 * v16;
  [(ATXNotificationDigestRankingConstants *)self->_c weightForNonMarqueeAppearance];
  v20 = v18 + v8 * v19;
  [(ATXNotificationDigestRankingConstants *)self->_c weightForNonMarqueeEngagement];
  v22 = v20 + v10 * v21;
  [(ATXNotificationDigestRankingConstants *)self->_c weightForBasicNotificationsSent];
  v24 = v22 + v12 * v23;
  [(ATXNotificationDigestRankingConstants *)self->_c weightForTimeSensitiveNotificationsSent];
  v26 = v24 + v14 * v25;

  [(_App *)self logisticScoreForInput:v26];
  return result;
}

- (double)logisticScoreForInput:(double)a3
{
  v4 = fmin(a3, 25.0);
  if (v4 >= -25.0)
  {
    v5 = v4;
  }

  else
  {
    v5 = -25.0;
  }

  [(ATXNotificationDigestRankingConstants *)self->_c logisticCenterXVal];
  v7 = v5 - v6;
  [(ATXNotificationDigestRankingConstants *)self->_c logisticGrowthRate];
  return 1.0 / (exp(-(v8 * v7)) + 1.0) + 0.002;
}

@end