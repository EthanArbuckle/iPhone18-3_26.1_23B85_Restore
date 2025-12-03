@interface ATXCandidateRelevanceModelOneHotCategoricalFeaturizer
- (id)categoricalFeatureValueForContext:(id)context candidate:(id)candidate;
- (id)categoricalFeatureValuesForContext:(id)context candidate:(id)candidate;
@end

@implementation ATXCandidateRelevanceModelOneHotCategoricalFeaturizer

- (id)categoricalFeatureValuesForContext:(id)context candidate:(id)candidate
{
  v4 = MEMORY[0x277CBEB98];
  v5 = [(ATXCandidateRelevanceModelOneHotCategoricalFeaturizer *)self categoricalFeatureValueForContext:context candidate:candidate];
  v6 = [v4 setWithObject:v5];

  return v6;
}

- (id)categoricalFeatureValueForContext:(id)context candidate:(id)candidate
{
  contextCopy = context;
  result = candidate;
  __break(1u);
  return result;
}

@end