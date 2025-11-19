@interface ATXCandidateRelevanceModelTrainingCoordinator
- (ATXCandidateRelevanceModelTrainingCoordinator)init;
- (ATXCandidateRelevanceModelTrainingCoordinator)initWithConfigs:(id)a3;
@end

@implementation ATXCandidateRelevanceModelTrainingCoordinator

- (ATXCandidateRelevanceModelTrainingCoordinator)init
{
  v3 = allRelevanceModelConfigs();
  v4 = [(ATXCandidateRelevanceModelTrainingCoordinator *)self initWithConfigs:v3];

  return v4;
}

- (ATXCandidateRelevanceModelTrainingCoordinator)initWithConfigs:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ATXCandidateRelevanceModelTrainingCoordinator;
  v6 = [(ATXCandidateRelevanceModelTrainingCoordinator *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_configs, a3);
  }

  return v7;
}

@end