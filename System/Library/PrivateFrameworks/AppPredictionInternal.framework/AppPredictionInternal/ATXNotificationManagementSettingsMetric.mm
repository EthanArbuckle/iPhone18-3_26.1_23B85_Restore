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
  areHighlightsEnabled = [(ATXNotificationManagementSettingsMetric *)self areHighlightsEnabled];
  null = areHighlightsEnabled;
  if (!areHighlightsEnabled)
  {
    null = [MEMORY[0x277CBEB68] null];
  }

  v16[5] = null;
  v15[6] = @"areSummariesEnabled";
  areSummariesEnabled = [(ATXNotificationManagementSettingsMetric *)self areSummariesEnabled];
  null2 = areSummariesEnabled;
  if (!areSummariesEnabled)
  {
    null2 = [MEMORY[0x277CBEB68] null];
  }

  v16[6] = null2;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:7];
  if (!areSummariesEnabled)
  {
  }

  if (!areHighlightsEnabled)
  {
  }

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  numDailyDigests = [(ATXNotificationManagementSettingsMetric *)self numDailyDigests];
  numDigestApps = [(ATXNotificationManagementSettingsMetric *)self numDigestApps];
  numConfiguredModes = [(ATXNotificationManagementSettingsMetric *)self numConfiguredModes];
  hasOfferedDigest = [(ATXNotificationManagementSettingsMetric *)self hasOfferedDigest];
  hasSetupDigest = [(ATXNotificationManagementSettingsMetric *)self hasSetupDigest];
  areHighlightsEnabled = [(ATXNotificationManagementSettingsMetric *)self areHighlightsEnabled];
  v10 = areHighlightsEnabled;
  if (areHighlightsEnabled)
  {
    v11 = areHighlightsEnabled;
  }

  else
  {
    v11 = @"nil";
  }

  areSummariesEnabled = [(ATXNotificationManagementSettingsMetric *)self areSummariesEnabled];
  v13 = areSummariesEnabled;
  if (areSummariesEnabled)
  {
    v14 = areSummariesEnabled;
  }

  else
  {
    v14 = @"nil";
  }

  v15 = [v3 stringWithFormat:@"ATXNotificationManagementSettingsMetric numDailyDigests:%lu\nnumDigestApps:%lu\nnumConfiguredModes:%lu\nhasOfferedDigest:%d\nhasSetupDigest:%d\nareHighlightsEnabled:%@\nareSummariesEnabled:%@", numDailyDigests, numDigestApps, numConfiguredModes, hasOfferedDigest, hasSetupDigest, v11, v14];

  return v15;
}

@end