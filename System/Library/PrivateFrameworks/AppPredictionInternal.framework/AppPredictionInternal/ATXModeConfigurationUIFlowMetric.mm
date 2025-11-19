@interface ATXModeConfigurationUIFlowMetric
- (id)coreAnalyticsDictionary;
@end

@implementation ATXModeConfigurationUIFlowMetric

- (id)coreAnalyticsDictionary
{
  v27[15] = *MEMORY[0x277D85DE8];
  v26[0] = @"stableModeID";
  v25 = [(ATXModeConfigurationUIFlowMetric *)self modeUUID];
  if (v25)
  {
    v24 = [(ATXModeConfigurationUIFlowMetric *)self modeUUID];
    v3 = [ATXCoreAnalyticsFieldUtilities hashBoundString:?];
  }

  else
  {
    v3 = [MEMORY[0x277CBEB68] null];
    v24 = v3;
  }

  v18 = v3;
  v27[0] = v3;
  v26[1] = @"modeSemanticType";
  v4 = [(ATXModeConfigurationUIFlowMetric *)self modeSemanticType];
  v5 = v4;
  if (!v4)
  {
    v4 = [MEMORY[0x277CBEB68] null];
  }

  v17 = v4;
  v27[1] = v4;
  v26[2] = @"modeConfigurationUI";
  v23 = [(ATXModeConfigurationUIFlowMetric *)self modeConfigurationUI];
  v27[2] = v23;
  v26[3] = @"numAppsAdded";
  v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ATXModeConfigurationUIFlowMetric numAppsAdded](self, "numAppsAdded")}];
  v27[3] = v22;
  v26[4] = @"numAppsRemoved";
  v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ATXModeConfigurationUIFlowMetric numAppsRemoved](self, "numAppsRemoved")}];
  v27[4] = v21;
  v26[5] = @"numAppsSuggested";
  v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ATXModeConfigurationUIFlowMetric numAppsSuggested](self, "numAppsSuggested")}];
  v27[5] = v20;
  v26[6] = @"numExistingAllowedApps";
  v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ATXModeConfigurationUIFlowMetric numExistingAllowedApps](self, "numExistingAllowedApps")}];
  v27[6] = v19;
  v26[7] = @"numSuggestedAppsAdded";
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ATXModeConfigurationUIFlowMetric numSuggestedAppsAdded](self, "numSuggestedAppsAdded")}];
  v27[7] = v6;
  v26[8] = @"numSuggestedAppsRemoved";
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ATXModeConfigurationUIFlowMetric numSuggestedAppsRemoved](self, "numSuggestedAppsRemoved")}];
  v27[8] = v7;
  v26[9] = @"numContactsAdded";
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ATXModeConfigurationUIFlowMetric numContactsAdded](self, "numContactsAdded")}];
  v27[9] = v8;
  v26[10] = @"numContactsRemoved";
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ATXModeConfigurationUIFlowMetric numContactsRemoved](self, "numContactsRemoved")}];
  v27[10] = v9;
  v26[11] = @"numContactsSuggested";
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ATXModeConfigurationUIFlowMetric numContactsSuggested](self, "numContactsSuggested")}];
  v27[11] = v10;
  v26[12] = @"numExistingAllowedContacts";
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ATXModeConfigurationUIFlowMetric numExistingAllowedContacts](self, "numExistingAllowedContacts")}];
  v27[12] = v11;
  v26[13] = @"numSuggestedContactsAdded";
  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ATXModeConfigurationUIFlowMetric numSuggestedContactsAdded](self, "numSuggestedContactsAdded")}];
  v27[13] = v12;
  v26[14] = @"numSuggestedContactsRemoved";
  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ATXModeConfigurationUIFlowMetric numSuggestedContactsRemoved](self, "numSuggestedContactsRemoved")}];
  v27[14] = v13;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:15];

  if (!v5)
  {
  }

  if (v25)
  {
  }

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

@end