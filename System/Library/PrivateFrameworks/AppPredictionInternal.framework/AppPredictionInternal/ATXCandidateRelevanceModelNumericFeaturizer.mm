@interface ATXCandidateRelevanceModelNumericFeaturizer
- (id)featureVectorForContext:(id)context candidate:(id)candidate;
- (id)numericFeatureValueForContext:(id)context candidate:(id)candidate;
@end

@implementation ATXCandidateRelevanceModelNumericFeaturizer

- (id)featureVectorForContext:(id)context candidate:(id)candidate
{
  v8[1] = *MEMORY[0x277D85DE8];
  v4 = [(ATXCandidateRelevanceModelNumericFeaturizer *)self numericFeatureValueForContext:context candidate:candidate];
  v8[0] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)numericFeatureValueForContext:(id)context candidate:(id)candidate
{
  contextCopy = context;
  result = candidate;
  __break(1u);
  return result;
}

@end