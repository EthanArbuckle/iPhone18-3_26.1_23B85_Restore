@interface ATXCandidateRelevanceModelCandidateCacheResult
- (ATXCandidateRelevanceModelCandidateCacheResult)initWithCandidates:(id)a3 featurizationManager:(id)a4;
@end

@implementation ATXCandidateRelevanceModelCandidateCacheResult

- (ATXCandidateRelevanceModelCandidateCacheResult)initWithCandidates:(id)a3 featurizationManager:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = ATXCandidateRelevanceModelCandidateCacheResult;
  v9 = [(ATXCandidateRelevanceModelCandidateCacheResult *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_candidates, a3);
    objc_storeStrong(&v10->_featurizationManager, a4);
  }

  return v10;
}

@end