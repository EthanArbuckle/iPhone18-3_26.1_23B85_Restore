@interface ATXCandidateRelevanceModelOneHotCategoricalFeaturizer
- (id)categoricalFeatureValueForContext:(id)a3 candidate:(id)a4;
- (id)categoricalFeatureValuesForContext:(id)a3 candidate:(id)a4;
@end

@implementation ATXCandidateRelevanceModelOneHotCategoricalFeaturizer

- (id)categoricalFeatureValuesForContext:(id)a3 candidate:(id)a4
{
  v4 = MEMORY[0x277CBEB98];
  v5 = [(ATXCandidateRelevanceModelOneHotCategoricalFeaturizer *)self categoricalFeatureValueForContext:a3 candidate:a4];
  v6 = [v4 setWithObject:v5];

  return v6;
}

- (id)categoricalFeatureValueForContext:(id)a3 candidate:(id)a4
{
  v5 = a3;
  result = a4;
  __break(1u);
  return result;
}

@end