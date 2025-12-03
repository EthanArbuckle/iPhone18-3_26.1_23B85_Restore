@interface ATXCandidateRelevanceModelCandidateCacheResult
- (ATXCandidateRelevanceModelCandidateCacheResult)initWithCandidates:(id)candidates featurizationManager:(id)manager;
@end

@implementation ATXCandidateRelevanceModelCandidateCacheResult

- (ATXCandidateRelevanceModelCandidateCacheResult)initWithCandidates:(id)candidates featurizationManager:(id)manager
{
  candidatesCopy = candidates;
  managerCopy = manager;
  v12.receiver = self;
  v12.super_class = ATXCandidateRelevanceModelCandidateCacheResult;
  v9 = [(ATXCandidateRelevanceModelCandidateCacheResult *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_candidates, candidates);
    objc_storeStrong(&v10->_featurizationManager, manager);
  }

  return v10;
}

@end