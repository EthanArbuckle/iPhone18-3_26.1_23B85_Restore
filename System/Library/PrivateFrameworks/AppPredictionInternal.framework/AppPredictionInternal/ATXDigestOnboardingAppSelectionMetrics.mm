@interface ATXDigestOnboardingAppSelectionMetrics
- (id)coreAnalyticsDictionary;
@end

@implementation ATXDigestOnboardingAppSelectionMetrics

- (id)coreAnalyticsDictionary
{
  v18[8] = *MEMORY[0x277D85DE8];
  v17[0] = @"sessionUUID";
  sessionUUID = [(ATXDigestOnboardingAppSelectionMetrics *)self sessionUUID];
  v4 = sessionUUID;
  if (!sessionUUID)
  {
    sessionUUID = [MEMORY[0x277CBEB68] null];
  }

  v18[0] = sessionUUID;
  v17[1] = @"bundleId";
  bundleId = [(ATXDigestOnboardingAppSelectionMetrics *)self bundleId];
  null = bundleId;
  if (!bundleId)
  {
    null = [MEMORY[0x277CBEB68] null];
  }

  v18[1] = null;
  v17[2] = @"basicNotifications";
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ATXDigestOnboardingAppSelectionMetrics avgNumBasicNotifications](self, "avgNumBasicNotifications")}];
  v18[2] = v7;
  v17[3] = @"messageNotifications";
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ATXDigestOnboardingAppSelectionMetrics avgNumMessageNotfications](self, "avgNumMessageNotfications")}];
  v18[3] = v8;
  v17[4] = @"timeSensitiveNotifications";
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ATXDigestOnboardingAppSelectionMetrics avgNumTimeSensitiveNonMessageNotifications](self, "avgNumTimeSensitiveNonMessageNotifications")}];
  v18[4] = v9;
  v17[5] = @"rank";
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ATXDigestOnboardingAppSelectionMetrics rank](self, "rank")}];
  v18[5] = v10;
  v17[6] = @"addedToDigest";
  v11 = [MEMORY[0x277CCABB0] numberWithBool:{-[ATXDigestOnboardingAppSelectionMetrics addedToDigest](self, "addedToDigest")}];
  v18[6] = v11;
  v17[7] = @"wasShownInDigest";
  v12 = [MEMORY[0x277CCABB0] numberWithBool:{-[ATXDigestOnboardingAppSelectionMetrics wasShownInDigestOnboarding](self, "wasShownInDigestOnboarding")}];
  v18[7] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:8];

  if (!bundleId)
  {
  }

  if (!v4)
  {
  }

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

@end