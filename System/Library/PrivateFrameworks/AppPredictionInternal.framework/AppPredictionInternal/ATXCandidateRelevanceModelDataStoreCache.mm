@interface ATXCandidateRelevanceModelDataStoreCache
- (ATXCandidateRelevanceModelDataStoreCache)init;
- (id)featurizationManagerForFeaturizationManagerId:(int64_t)id;
- (void)setFeaturizationManager:(id)manager forFeaturizationManagerId:(int64_t)id;
@end

@implementation ATXCandidateRelevanceModelDataStoreCache

- (ATXCandidateRelevanceModelDataStoreCache)init
{
  v6.receiver = self;
  v6.super_class = ATXCandidateRelevanceModelDataStoreCache;
  v2 = [(ATXCandidateRelevanceModelDataStoreCache *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    featurizationManagers = v2->_featurizationManagers;
    v2->_featurizationManagers = v3;
  }

  return v2;
}

- (id)featurizationManagerForFeaturizationManagerId:(int64_t)id
{
  featurizationManagers = self->_featurizationManagers;
  v4 = [MEMORY[0x277CCABB0] numberWithLongLong:id];
  v5 = [(NSMutableDictionary *)featurizationManagers objectForKeyedSubscript:v4];

  return v5;
}

- (void)setFeaturizationManager:(id)manager forFeaturizationManagerId:(int64_t)id
{
  featurizationManagers = self->_featurizationManagers;
  v6 = MEMORY[0x277CCABB0];
  managerCopy = manager;
  v8 = [v6 numberWithLongLong:id];
  [(NSMutableDictionary *)featurizationManagers setObject:managerCopy forKeyedSubscript:v8];
}

@end