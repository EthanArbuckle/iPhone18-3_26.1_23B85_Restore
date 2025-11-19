@interface ATXModeAppConfigurationMetric
- (id)coreAnalyticsDictionary;
- (id)description;
@end

@implementation ATXModeAppConfigurationMetric

- (id)coreAnalyticsDictionary
{
  v11[2] = *MEMORY[0x277D85DE8];
  v10[0] = @"bundleId";
  v3 = [(ATXModeAppConfigurationMetric *)self bundleId];
  v4 = v3;
  if (!v3)
  {
    v4 = [MEMORY[0x277CBEB68] null];
  }

  v10[1] = @"semanticType";
  v11[0] = v4;
  v5 = [(ATXModeAppConfigurationMetric *)self modeSemanticType];
  v6 = v5;
  if (!v5)
  {
    v6 = [MEMORY[0x277CBEB68] null];
  }

  v11[1] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:2];
  if (!v5)
  {
  }

  if (!v3)
  {
  }

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(ATXModeAppConfigurationMetric *)self bundleId];
  v5 = [(ATXModeAppConfigurationMetric *)self modeSemanticType];
  v6 = [v3 stringWithFormat:@"ATXModeAppConfigurationMetric bundleId:%@\nmodeSemanticType:%@\n", v4, v5];

  return v6;
}

@end