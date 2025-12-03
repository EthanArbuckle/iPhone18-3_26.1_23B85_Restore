@interface ATXCandidateRelevanceModelMultiHotCategoricalFeaturizer
- (ATXCandidateRelevanceModelMultiHotCategoricalFeaturizer)init;
- (ATXCandidateRelevanceModelMultiHotCategoricalFeaturizer)initWithObservedFeatureValueCounts:(id)counts;
- (ATXCandidateRelevanceModelMultiHotCategoricalFeaturizer)initWithObservedFeatureValueCounts:(id)counts maxCategoricalFeaturesCount:(unint64_t)count;
- (id)categoricalFeatureValuesForContext:(id)context candidate:(id)candidate;
- (id)computeFeatureValueNames;
- (id)featureVectorForContext:(id)context candidate:(id)candidate;
- (id)immutableCopy;
- (void)observeContext:(id)context candidate:(id)candidate;
@end

@implementation ATXCandidateRelevanceModelMultiHotCategoricalFeaturizer

- (ATXCandidateRelevanceModelMultiHotCategoricalFeaturizer)init
{
  v3 = objc_opt_new();
  v4 = [(ATXCandidateRelevanceModelMultiHotCategoricalFeaturizer *)self initWithObservedFeatureValueCounts:v3];

  return v4;
}

- (ATXCandidateRelevanceModelMultiHotCategoricalFeaturizer)initWithObservedFeatureValueCounts:(id)counts
{
  countsCopy = counts;
  v5 = +[ATXCandidateRelevanceModelGlobals sharedInstance];
  v6 = -[ATXCandidateRelevanceModelMultiHotCategoricalFeaturizer initWithObservedFeatureValueCounts:maxCategoricalFeaturesCount:](self, "initWithObservedFeatureValueCounts:maxCategoricalFeaturesCount:", countsCopy, [v5 maxCategoricalFeaturesCount]);

  return v6;
}

- (ATXCandidateRelevanceModelMultiHotCategoricalFeaturizer)initWithObservedFeatureValueCounts:(id)counts maxCategoricalFeaturesCount:(unint64_t)count
{
  countsCopy = counts;
  v11.receiver = self;
  v11.super_class = ATXCandidateRelevanceModelMultiHotCategoricalFeaturizer;
  v8 = [(ATXCandidateRelevanceModelMultiHotCategoricalFeaturizer *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_observedFeatureValueCounts, counts);
    v9->_maxCategoricalFeaturesCount = count;
  }

  return v9;
}

- (id)featureVectorForContext:(id)context candidate:(id)candidate
{
  v23 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  candidateCopy = candidate;
  v8 = objc_opt_new();
  v9 = [(ATXCandidateRelevanceModelMultiHotCategoricalFeaturizer *)self categoricalFeatureValuesForContext:contextCopy candidate:candidateCopy];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  featureValueNames = [(ATXImmutableCandidateRelevanceModelFeaturizer *)self featureValueNames];
  v11 = [featureValueNames countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v19;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v19 != v13)
        {
          objc_enumerationMutation(featureValueNames);
        }

        v15 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v9, "containsObject:", *(*(&v18 + 1) + 8 * i))}];
        [v8 addObject:v15];
      }

      v12 = [featureValueNames countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v12);
  }

  v16 = *MEMORY[0x277D85DE8];

  return v8;
}

- (void)observeContext:(id)context candidate:(id)candidate
{
  v21 = *MEMORY[0x277D85DE8];
  [(ATXCandidateRelevanceModelMultiHotCategoricalFeaturizer *)self categoricalFeatureValuesForContext:context candidate:candidate];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  obj = v19 = 0u;
  v5 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        v10 = [(NSMutableDictionary *)self->_observedFeatureValueCounts objectForKey:v9];
        intValue = [v10 intValue];

        observedFeatureValueCounts = self->_observedFeatureValueCounts;
        v13 = [MEMORY[0x277CCABB0] numberWithInt:(intValue + 1)];
        [(NSMutableDictionary *)observedFeatureValueCounts setObject:v13 forKey:v9];
      }

      v6 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (id)categoricalFeatureValuesForContext:(id)context candidate:(id)candidate
{
  contextCopy = context;
  result = candidate;
  __break(1u);
  return result;
}

- (id)immutableCopy
{
  selfCopy = self;
  computeFeatureValueNames = [(ATXCandidateRelevanceModelMultiHotCategoricalFeaturizer *)selfCopy computeFeatureValueNames];
  v4 = [(ATXImmutableCandidateRelevanceModelFeaturizer *)selfCopy initWithFeatureValueNames:computeFeatureValueNames];

  return v4;
}

- (id)computeFeatureValueNames
{
  v20 = *MEMORY[0x277D85DE8];
  allKeys = [(NSMutableDictionary *)self->_observedFeatureValueCounts allKeys];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __83__ATXCandidateRelevanceModelMultiHotCategoricalFeaturizer_computeFeatureValueNames__block_invoke;
  v13[3] = &unk_278598110;
  v13[4] = self;
  v4 = [allKeys sortedArrayUsingComparator:v13];

  if ([v4 count] > self->_maxCategoricalFeaturesCount)
  {
    v5 = __atxlog_handle_relevance_model();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      v8 = [v4 count];
      maxCategoricalFeaturesCount = self->_maxCategoricalFeaturesCount;
      *buf = 138412802;
      v15 = v7;
      v16 = 2048;
      v17 = v8;
      v18 = 2048;
      v19 = maxCategoricalFeaturesCount;
      _os_log_impl(&dword_2263AA000, v5, OS_LOG_TYPE_DEFAULT, "%@ - Pruning feature value names because there were %lu values observed which is more than the max of %lu values.", buf, 0x20u);
    }

    v10 = [v4 subarrayWithRange:{0, self->_maxCategoricalFeaturesCount}];

    v4 = v10;
  }

  v11 = *MEMORY[0x277D85DE8];

  return v4;
}

uint64_t __83__ATXCandidateRelevanceModelMultiHotCategoricalFeaturizer_computeFeatureValueNames__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(*(a1 + 32) + 16) objectForKeyedSubscript:v6];
  v8 = [*(*(a1 + 32) + 16) objectForKeyedSubscript:v5];
  v9 = [v7 compare:v8];

  if (!v9)
  {
    v9 = [v5 compare:v6];
  }

  return v9;
}

@end