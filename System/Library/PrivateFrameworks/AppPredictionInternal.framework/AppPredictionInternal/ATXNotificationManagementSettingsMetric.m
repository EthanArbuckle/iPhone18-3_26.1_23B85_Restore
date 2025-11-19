@interface ATXNotificationManagementSettingsMetric
- (id)coreAnalyticsDictionary;
- (id)description;
@end

@implementation ATXNotificationManagementSettingsMetric

- (id)coreAnalyticsDictionary
{
  v16[7] = *MEMORY[0x277D85DE8];
  v15[0] = @"numDailyDigests";
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ATXNotificationManagementSettingsMetric numDailyDigests](self, "numDailyDigests")}];
  v16[0] = v3;
  v15[1] = @"numDigestApps";
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ATXNotificationManagementSettingsMetric numDigestApps](self, "numDigestApps")}];
  v16[1] = v4;
  v15[2] = @"numConfiguredModes";
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ATXNotificationManagementSettingsMetric numConfiguredModes](self, "numConfiguredModes")}];
  v16[2] = v5;
  v15[3] = @"hasOfferedDigest";
  v6 = [MEMORY[0x277CCABB0] numberWithBool:{-[ATXNotificationManagementSettingsMetric hasOfferedDigest](self, "hasOfferedDigest")}];
  v16[3] = v6;
  v15[4] = @"hasSetupDigest";
  v7 = [MEMORY[0x277CCABB0] numberWithBool:{-[ATXNotificationManagementSettingsMetric hasSetupDigest](self, "hasSetupDigest")}];
  v16[4] = v7;
  v15[5] = @"areHighlightsEnabled";
  v8 = [(ATXNotificationManagementSettingsMetric *)self areHighlightsEnabled];
  v9 = v8;
  if (!v8)
  {
    v9 = [MEMORY[0x277CBEB68] null];
  }

  v16[5] = v9;
  v15[6] = @"areSummariesEnabled";
  v10 = [(ATXNotificationManagementSettingsMetric *)self areSummariesEnabled];
  v11 = v10;
  if (!v10)
  {
    v11 = [MEMORY[0x277CBEB68] null];
  }

  v16[6] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:7];
  if (!v10)
  {
  }

  if (!v8)
  {
  }

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(ATXNotificationManagementSettingsMetric *)self numDailyDigests];
  v5 = [(ATXNotificationManagementSettingsMetric *)self numDigestApps];
  v6 = [(ATXNotificationManagementSettingsMetric *)self numConfiguredModes];
  v7 = [(ATXNotificationManagementSettingsMetric *)self hasOfferedDigest];
  v8 = [(ATXNotificationManagementSettingsMetric *)self hasSetupDigest];
  v9 = [(ATXNotificationManagementSettingsMetric *)self areHighlightsEnabled];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = @"nil";
  }

  v12 = [(ATXNotificationManagementSettingsMetric *)self areSummariesEnabled];
  v13 = v12;
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = @"nil";
  }

  v15 = [v3 stringWithFormat:@"ATXNotificationManagementSettingsMetric numDailyDigests:%lu\nnumDigestApps:%lu\nnumConfiguredModes:%lu\nhasOfferedDigest:%d\nhasSetupDigest:%d\nareHighlightsEnabled:%@\nareSummariesEnabled:%@", v4, v5, v6, v7, v8, v11, v14];

  return v15;
}

@end