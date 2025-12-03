@interface ATXContextHeuristicsRecentsMetric
- (id)coreAnalyticsDictionary;
@end

@implementation ATXContextHeuristicsRecentsMetric

- (id)coreAnalyticsDictionary
{
  v27[10] = *MEMORY[0x277D85DE8];
  v26[0] = @"recentType";
  recentType = [(ATXContextHeuristicsRecentsMetric *)self recentType];
  v25 = recentType;
  if (!recentType)
  {
    recentType = [MEMORY[0x277CBEB68] null];
  }

  v20 = recentType;
  v27[0] = recentType;
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
  trialDeploymentId = [(ATXContextHeuristicsRecentsMetric *)self trialDeploymentId];
  v5 = trialDeploymentId;
  if (!trialDeploymentId)
  {
    trialDeploymentId = [MEMORY[0x277CBEB68] null];
  }

  v19 = trialDeploymentId;
  v27[4] = trialDeploymentId;
  v26[5] = @"trialExperimentId";
  trialExperimentId = [(ATXContextHeuristicsRecentsMetric *)self trialExperimentId];
  v7 = trialExperimentId;
  if (!trialExperimentId)
  {
    trialExperimentId = [MEMORY[0x277CBEB68] null];
  }

  v27[5] = trialExperimentId;
  v26[6] = @"trialTreatmentId";
  trialTreatmentId = [(ATXContextHeuristicsRecentsMetric *)self trialTreatmentId];
  null = trialTreatmentId;
  if (!trialTreatmentId)
  {
    null = [MEMORY[0x277CBEB68] null];
  }

  v27[6] = null;
  v26[7] = @"atxTrialDeploymentId";
  atxTrialDeploymentId = [(ATXContextHeuristicsRecentsMetric *)self atxTrialDeploymentId];
  null2 = atxTrialDeploymentId;
  if (!atxTrialDeploymentId)
  {
    null2 = [MEMORY[0x277CBEB68] null];
  }

  v27[7] = null2;
  v26[8] = @"atxTrialExperimentId";
  atxTrialExperimentId = [(ATXContextHeuristicsRecentsMetric *)self atxTrialExperimentId];
  null3 = atxTrialExperimentId;
  if (!atxTrialExperimentId)
  {
    null3 = [MEMORY[0x277CBEB68] null];
  }

  v27[8] = null3;
  v26[9] = @"atxTrialTreatmentId";
  atxTrialTreatmentId = [(ATXContextHeuristicsRecentsMetric *)self atxTrialTreatmentId];
  null4 = atxTrialTreatmentId;
  if (!atxTrialTreatmentId)
  {
    null4 = [MEMORY[0x277CBEB68] null];
  }

  v27[9] = null4;
  v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:10];
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