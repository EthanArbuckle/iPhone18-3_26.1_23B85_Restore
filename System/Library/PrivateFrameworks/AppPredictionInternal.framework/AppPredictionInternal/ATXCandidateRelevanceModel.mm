@interface ATXCandidateRelevanceModel
- (ATXCandidateRelevanceModel)initWithCoder:(id)a3;
- (float)predictForContext:(id)a3 candidate:(id)a4 featurizationManager:(id)a5;
- (id)featureContributionsDuringInferenceDescriptionForContext:(id)a3 candidate:(id)a4 featurizationManager:(id)a5;
- (id)featureContributionsDuringInferenceForContext:(id)a3 candidate:(id)a4 featurizationManager:(id)a5;
- (id)featureImportanceDescriptionForFeaturizationManager:(id)a3;
- (id)featureImportancesForFeaturizationManager:(id)a3;
@end

@implementation ATXCandidateRelevanceModel

- (float)predictForContext:(id)a3 candidate:(id)a4 featurizationManager:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  __break(1u);
  return result;
}

- (id)featureImportanceDescriptionForFeaturizationManager:(id)a3
{
  result = a3;
  __break(1u);
  return result;
}

- (id)featureImportancesForFeaturizationManager:(id)a3
{
  result = a3;
  __break(1u);
  return result;
}

- (id)featureContributionsDuringInferenceForContext:(id)a3 candidate:(id)a4 featurizationManager:(id)a5
{
  v7 = a3;
  v8 = a4;
  result = a5;
  __break(1u);
  return result;
}

- (id)featureContributionsDuringInferenceDescriptionForContext:(id)a3 candidate:(id)a4 featurizationManager:(id)a5
{
  v7 = a3;
  v8 = a4;
  result = a5;
  __break(1u);
  return result;
}

- (ATXCandidateRelevanceModel)initWithCoder:(id)a3
{
  result = a3;
  __break(1u);
  return result;
}

@end