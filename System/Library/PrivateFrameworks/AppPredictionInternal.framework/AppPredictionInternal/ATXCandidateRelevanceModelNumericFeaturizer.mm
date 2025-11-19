@interface ATXCandidateRelevanceModelNumericFeaturizer
- (id)featureVectorForContext:(id)a3 candidate:(id)a4;
- (id)numericFeatureValueForContext:(id)a3 candidate:(id)a4;
@end

@implementation ATXCandidateRelevanceModelNumericFeaturizer

- (id)featureVectorForContext:(id)a3 candidate:(id)a4
{
  v8[1] = *MEMORY[0x277D85DE8];
  v4 = [(ATXCandidateRelevanceModelNumericFeaturizer *)self numericFeatureValueForContext:a3 candidate:a4];
  v8[0] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)numericFeatureValueForContext:(id)a3 candidate:(id)a4
{
  v5 = a3;
  result = a4;
  __break(1u);
  return result;
}

@end