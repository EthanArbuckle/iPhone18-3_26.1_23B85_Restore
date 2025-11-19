@interface ATXContextHeuristicsRecentsMetric
- (id)coreAnalyticsDictionary;
@end

@implementation ATXContextHeuristicsRecentsMetric

- (id)coreAnalyticsDictionary
{
  v27[10] = *MEMORY[0x277D85DE8];
  v26[0] = @"recentType";
  v3 = [(ATXContextHeuristicsRecentsMetric *)self recentType];
  v25 = v3;
  if (!v3)
  {
    v3 = [MEMORY[0x277CBEB68] null];
  }

  v20 = v3;
  v27[0] = v3;
  v26[1] = @"recentAge";
  v24 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ATXContextHeuristicsRecentsMetric recentAge](self, "recentAge")}];
  v27[1] = v24;
  v26[2] = @"numEngaged";
  v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ATXContextHeuristicsRecentsMetric numEngaged](self, "numEngaged")}];
  v27[2] = v23;
  v26[3] = @"numSearched";
  v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ATXContextHeuristicsRecentsMetric numSearched](self, "numSearched")}];
  v27[3] = v22;
  v26[4] = @"trialDeploymentId";
  v4 = [(ATXContextHeuristicsRecentsMetric *)self trialDeploymentId];
  v5 = v4;
  if (!v4)
  {
    v4 = [MEMORY[0x277CBEB68] null];
  }

  v19 = v4;
  v27[4] = v4;
  v26[5] = @"trialExperimentId";
  v6 = [(ATXContextHeuristicsRecentsMetric *)self trialExperimentId];
  v7 = v6;
  if (!v6)
  {
    v6 = [MEMORY[0x277CBEB68] null];
  }

  v27[5] = v6;
  v26[6] = @"trialTreatmentId";
  v8 = [(ATXContextHeuristicsRecentsMetric *)self trialTreatmentId];
  v9 = v8;
  if (!v8)
  {
    v9 = [MEMORY[0x277CBEB68] null];
  }

  v27[6] = v9;
  v26[7] = @"atxTrialDeploymentId";
  v10 = [(ATXContextHeuristicsRecentsMetric *)self atxTrialDeploymentId];
  v11 = v10;
  if (!v10)
  {
    v11 = [MEMORY[0x277CBEB68] null];
  }

  v27[7] = v11;
  v26[8] = @"atxTrialExperimentId";
  v12 = [(ATXContextHeuristicsRecentsMetric *)self atxTrialExperimentId];
  v13 = v12;
  if (!v12)
  {
    v13 = [MEMORY[0x277CBEB68] null];
  }

  v27[8] = v13;
  v26[9] = @"atxTrialTreatmentId";
  v14 = [(ATXContextHeuristicsRecentsMetric *)self atxTrialTreatmentId];
  v15 = v14;
  if (!v14)
  {
    v15 = [MEMORY[0x277CBEB68] null];
  }

  v27[9] = v15;
  v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:10];
  if (!v14)
  {
  }

  if (!v12)
  {
  }

  if (!v10)
  {
  }

  if (!v8)
  {
  }

  if (!v7)
  {
  }

  if (!v5)
  {
  }

  if (!v25)
  {
  }

  v16 = *MEMORY[0x277D85DE8];

  return v21;
}

@end