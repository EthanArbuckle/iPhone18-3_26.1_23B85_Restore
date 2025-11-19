@interface ATXContextHeuristicsLifetimeEngagementMetric
- (id)coreAnalyticsDictionary;
@end

@implementation ATXContextHeuristicsLifetimeEngagementMetric

- (id)coreAnalyticsDictionary
{
  v30[10] = *MEMORY[0x277D85DE8];
  v29[0] = @"actionId";
  v3 = [(ATXContextHeuristicsLifetimeEngagementMetric *)self actionId];
  v4 = v3;
  if (!v3)
  {
    v3 = [MEMORY[0x277CBEB68] null];
  }

  v28 = v4;
  v23 = v3;
  v30[0] = v3;
  v29[1] = @"contextType";
  v5 = [(ATXContextHeuristicsLifetimeEngagementMetric *)self contextType];
  v27 = v5;
  if (!v5)
  {
    v5 = [MEMORY[0x277CBEB68] null];
  }

  v22 = v5;
  v30[1] = v5;
  v29[2] = @"numShown";
  v26 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ATXContextHeuristicsLifetimeEngagementMetric numShown](self, "numShown")}];
  v30[2] = v26;
  v29[3] = @"numEngaged";
  v25 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ATXContextHeuristicsLifetimeEngagementMetric numEngaged](self, "numEngaged")}];
  v30[3] = v25;
  v29[4] = @"trialDeploymentId";
  v6 = [(ATXContextHeuristicsLifetimeEngagementMetric *)self trialDeploymentId];
  v7 = v6;
  if (!v6)
  {
    v6 = [MEMORY[0x277CBEB68] null];
  }

  v21 = v6;
  v30[4] = v6;
  v29[5] = @"trialExperimentId";
  v8 = [(ATXContextHeuristicsLifetimeEngagementMetric *)self trialExperimentId];
  v9 = v8;
  if (!v8)
  {
    v8 = [MEMORY[0x277CBEB68] null];
  }

  v20 = v8;
  v30[5] = v8;
  v29[6] = @"trialTreatmentId";
  v10 = [(ATXContextHeuristicsLifetimeEngagementMetric *)self trialTreatmentId];
  v11 = v10;
  if (!v10)
  {
    v11 = [MEMORY[0x277CBEB68] null];
  }

  v30[6] = v11;
  v29[7] = @"atxTrialDeploymentId";
  v12 = [(ATXContextHeuristicsLifetimeEngagementMetric *)self atxTrialDeploymentId];
  v13 = v12;
  if (!v12)
  {
    v13 = [MEMORY[0x277CBEB68] null];
  }

  v30[7] = v13;
  v29[8] = @"atxTrialExperimentId";
  v14 = [(ATXContextHeuristicsLifetimeEngagementMetric *)self atxTrialExperimentId];
  v15 = v14;
  if (!v14)
  {
    v15 = [MEMORY[0x277CBEB68] null];
  }

  v30[8] = v15;
  v29[9] = @"atxTrialTreatmentId";
  v16 = [(ATXContextHeuristicsLifetimeEngagementMetric *)self atxTrialTreatmentId];
  v17 = v16;
  if (!v16)
  {
    v17 = [MEMORY[0x277CBEB68] null];
  }

  v30[9] = v17;
  v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:10];
  if (!v16)
  {
  }

  if (!v14)
  {
  }

  if (!v12)
  {
  }

  if (!v10)
  {
  }

  if (!v9)
  {
  }

  if (!v7)
  {
  }

  if (!v27)
  {
  }

  if (!v28)
  {
  }

  v18 = *MEMORY[0x277D85DE8];

  return v24;
}

@end