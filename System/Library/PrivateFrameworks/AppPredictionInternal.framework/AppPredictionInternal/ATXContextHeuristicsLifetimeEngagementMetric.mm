@interface ATXContextHeuristicsLifetimeEngagementMetric
- (id)coreAnalyticsDictionary;
@end

@implementation ATXContextHeuristicsLifetimeEngagementMetric

- (id)coreAnalyticsDictionary
{
  v30[10] = *MEMORY[0x277D85DE8];
  v29[0] = @"actionId";
  actionId = [(ATXContextHeuristicsLifetimeEngagementMetric *)self actionId];
  v4 = actionId;
  if (!actionId)
  {
    actionId = [MEMORY[0x277CBEB68] null];
  }

  v28 = v4;
  v23 = actionId;
  v30[0] = actionId;
  v29[1] = @"contextType";
  contextType = [(ATXContextHeuristicsLifetimeEngagementMetric *)self contextType];
  v27 = contextType;
  if (!contextType)
  {
    contextType = [MEMORY[0x277CBEB68] null];
  }

  v22 = contextType;
  v30[1] = contextType;
  v29[2] = @"numShown";
  v26 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ATXContextHeuristicsLifetimeEngagementMetric numShown](self, "numShown")}];
  v30[2] = v26;
  v29[3] = @"numEngaged";
  v25 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ATXContextHeuristicsLifetimeEngagementMetric numEngaged](self, "numEngaged")}];
  v30[3] = v25;
  v29[4] = @"trialDeploymentId";
  trialDeploymentId = [(ATXContextHeuristicsLifetimeEngagementMetric *)self trialDeploymentId];
  v7 = trialDeploymentId;
  if (!trialDeploymentId)
  {
    trialDeploymentId = [MEMORY[0x277CBEB68] null];
  }

  v21 = trialDeploymentId;
  v30[4] = trialDeploymentId;
  v29[5] = @"trialExperimentId";
  trialExperimentId = [(ATXContextHeuristicsLifetimeEngagementMetric *)self trialExperimentId];
  v9 = trialExperimentId;
  if (!trialExperimentId)
  {
    trialExperimentId = [MEMORY[0x277CBEB68] null];
  }

  v20 = trialExperimentId;
  v30[5] = trialExperimentId;
  v29[6] = @"trialTreatmentId";
  trialTreatmentId = [(ATXContextHeuristicsLifetimeEngagementMetric *)self trialTreatmentId];
  null = trialTreatmentId;
  if (!trialTreatmentId)
  {
    null = [MEMORY[0x277CBEB68] null];
  }

  v30[6] = null;
  v29[7] = @"atxTrialDeploymentId";
  atxTrialDeploymentId = [(ATXContextHeuristicsLifetimeEngagementMetric *)self atxTrialDeploymentId];
  null2 = atxTrialDeploymentId;
  if (!atxTrialDeploymentId)
  {
    null2 = [MEMORY[0x277CBEB68] null];
  }

  v30[7] = null2;
  v29[8] = @"atxTrialExperimentId";
  atxTrialExperimentId = [(ATXContextHeuristicsLifetimeEngagementMetric *)self atxTrialExperimentId];
  null3 = atxTrialExperimentId;
  if (!atxTrialExperimentId)
  {
    null3 = [MEMORY[0x277CBEB68] null];
  }

  v30[8] = null3;
  v29[9] = @"atxTrialTreatmentId";
  atxTrialTreatmentId = [(ATXContextHeuristicsLifetimeEngagementMetric *)self atxTrialTreatmentId];
  null4 = atxTrialTreatmentId;
  if (!atxTrialTreatmentId)
  {
    null4 = [MEMORY[0x277CBEB68] null];
  }

  v30[9] = null4;
  v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:10];
  if (!atxTrialTreatmentId)
  {
  }

  if (!atxTrialExperimentId)
  {
  }

  if (!atxTrialDeploymentId)
  {
  }

  if (!trialTreatmentId)
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