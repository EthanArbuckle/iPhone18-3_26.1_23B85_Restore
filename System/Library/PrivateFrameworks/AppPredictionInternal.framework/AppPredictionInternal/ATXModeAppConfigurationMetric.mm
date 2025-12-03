@interface ATXModeAppConfigurationMetric
- (id)coreAnalyticsDictionary;
- (id)description;
@end

@implementation ATXModeAppConfigurationMetric

- (id)coreAnalyticsDictionary
{
  v11[2] = *MEMORY[0x277D85DE8];
  v10[0] = @"bundleId";
  bundleId = [(ATXModeAppConfigurationMetric *)self bundleId];
  null = bundleId;
  if (!bundleId)
  {
    null = [MEMORY[0x277CBEB68] null];
  }

  v10[1] = @"semanticType";
  v11[0] = null;
  modeSemanticType = [(ATXModeAppConfigurationMetric *)self modeSemanticType];
  null2 = modeSemanticType;
  if (!modeSemanticType)
  {
    null2 = [MEMORY[0x277CBEB68] null];
  }

  v11[1] = null2;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:2];
  if (!modeSemanticType)
  {
  }

  if (!bundleId)
  {
  }

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  bundleId = [(ATXModeAppConfigurationMetric *)self bundleId];
  modeSemanticType = [(ATXModeAppConfigurationMetric *)self modeSemanticType];
  v6 = [v3 stringWithFormat:@"ATXModeAppConfigurationMetric bundleId:%@\nmodeSemanticType:%@\n", bundleId, modeSemanticType];

  return v6;
}

@end