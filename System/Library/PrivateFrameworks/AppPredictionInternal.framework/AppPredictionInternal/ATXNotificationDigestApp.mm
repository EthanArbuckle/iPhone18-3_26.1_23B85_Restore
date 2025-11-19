@interface ATXNotificationDigestApp
- (ATXNotificationDigestApp)initWithBundleId:(id)a3 digestFeedback:(id)a4 digestConstants:(id)a5;
- (BOOL)hasImage;
- (NSArray)orderedGroups;
- (double)logisticScoreForInput:(double)a3;
- (void)addGroup:(id)a3;
- (void)populateScoresFromBundleId;
- (void)refreshGroupOrder;
@end

@implementation ATXNotificationDigestApp

- (ATXNotificationDigestApp)initWithBundleId:(id)a3 digestFeedback:(id)a4 digestConstants:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v17.receiver = self;
  v17.super_class = ATXNotificationDigestApp;
  v12 = [(ATXNotificationDigestApp *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_bundleId, a3);
    objc_storeStrong(&v13->_digestFeedback, a4);
    objc_storeStrong(&v13->_c, a5);
    v14 = objc_opt_new();
    rawGroups = v13->_rawGroups;
    v13->_rawGroups = v14;

    [(ATXNotificationDigestApp *)v13 populateScoresFromBundleId];
  }

  return v13;
}

- (NSArray)orderedGroups
{
  orderedGroups = self->_orderedGroups;
  if (!orderedGroups || (v4 = [(NSArray *)orderedGroups count], v4 != [(NSMutableArray *)self->_rawGroups count]))
  {
    [(ATXNotificationDigestApp *)self refreshGroupOrder];
  }

  v5 = self->_orderedGroups;

  return v5;
}

- (BOOL)hasImage
{
  v3 = [(ATXNotificationDigestApp *)self orderedGroups];
  v4 = [v3 firstObject];
  if (v4)
  {
    v5 = [(ATXNotificationDigestApp *)self orderedGroups];
    v6 = [v5 firstObject];
    v7 = [v6 hasPreviewableAttachment];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)addGroup:(id)a3
{
  v4 = a3;
  [(ATXNotificationDigestApp *)self appScore];
  [v4 setPriority:?];
  [(NSMutableArray *)self->_rawGroups addObject:v4];
}

- (void)populateScoresFromBundleId
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
  [(ATXNotificationDigestApp *)self logisticScoreForInput:v24 + v14 * v25];
  self->_appScore = v26;
  [(ATXNotificationDigestFeedbackProtocol *)self->_digestFeedback alltimeMarqueeAppearancesForBundleId:self->_bundleId];
  v28 = v27;
  [(ATXNotificationDigestRankingConstants *)self->_c minMarqueeAppearancesPerApp];
  self->_isEligibleForAutomaticMarquee = v28 < v29;
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

- (void)refreshGroupOrder
{
  v28 = *MEMORY[0x277D85DE8];
  rawGroups = self->_rawGroups;
  if (rawGroups)
  {
    [(NSMutableArray *)rawGroups sortedArrayUsingComparator:&__block_literal_global_253];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v4 = v25 = 0u;
    v5 = [v4 countByEnumeratingWithState:&v22 objects:v27 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v23;
LABEL_4:
      v8 = 0;
      while (1)
      {
        if (*v23 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v22 + 1) + 8 * v8);
        if ([v9 hasPreviewableAttachment])
        {
          break;
        }

        if (v6 == ++v8)
        {
          v6 = [v4 countByEnumeratingWithState:&v22 objects:v27 count:16];
          if (v6)
          {
            goto LABEL_4;
          }

          goto LABEL_10;
        }
      }

      v10 = v9;

      if (!v10)
      {
        goto LABEL_13;
      }

      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __45__ATXNotificationDigestApp_refreshGroupOrder__block_invoke_2;
      v20[3] = &unk_2785A1B00;
      v21 = v10;
      v11 = v10;
      v12 = [v4 _pas_filteredArrayWithTest:v20];
      v26 = v11;
      v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v26 count:1];
      v14 = [v13 arrayByAddingObjectsFromArray:v12];
      orderedGroups = self->_orderedGroups;
      self->_orderedGroups = v14;
    }

    else
    {
LABEL_10:

LABEL_13:
      v16 = v4;
      v11 = self->_orderedGroups;
      self->_orderedGroups = v16;
    }

    v17 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v18 = self->_orderedGroups;
    self->_orderedGroups = MEMORY[0x277CBEBF8];
    v19 = *MEMORY[0x277D85DE8];
  }
}

uint64_t __45__ATXNotificationDigestApp_refreshGroupOrder__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x277CCABB0];
  v5 = a2;
  [a3 appSpecifiedScore];
  v6 = [v4 numberWithDouble:?];
  v7 = MEMORY[0x277CCABB0];
  [v5 appSpecifiedScore];
  v9 = v8;

  v10 = [v7 numberWithDouble:v9];
  v11 = [v6 compare:v10];

  return v11;
}

@end