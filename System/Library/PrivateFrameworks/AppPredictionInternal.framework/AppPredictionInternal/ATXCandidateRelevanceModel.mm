@interface ATXCandidateRelevanceModel
- (ATXCandidateRelevanceModel)initWithCoder:(id)coder;
- (float)predictForContext:(id)context candidate:(id)candidate featurizationManager:(id)manager;
- (id)featureContributionsDuringInferenceDescriptionForContext:(id)context candidate:(id)candidate featurizationManager:(id)manager;
- (id)featureContributionsDuringInferenceForContext:(id)context candidate:(id)candidate featurizationManager:(id)manager;
- (id)featureImportanceDescriptionForFeaturizationManager:(id)manager;
- (id)featureImportancesForFeaturizationManager:(id)manager;
@end

@implementation ATXCandidateRelevanceModel

- (float)predictForContext:(id)context candidate:(id)candidate featurizationManager:(id)manager
{
  contextCopy = context;
  candidateCopy = candidate;
  managerCopy = manager;
  __break(1u);
  return result;
}

- (id)featureImportanceDescriptionForFeaturizationManager:(id)manager
{
  result = manager;
  __break(1u);
  return result;
}

- (id)featureImportancesForFeaturizationManager:(id)manager
{
  result = manager;
  __break(1u);
  return result;
}

- (id)featureContributionsDuringInferenceForContext:(id)context candidate:(id)candidate featurizationManager:(id)manager
{
  contextCopy = context;
  candidateCopy = candidate;
  result = manager;
  __break(1u);
  return result;
}

- (id)featureContributionsDuringInferenceDescriptionForContext:(id)context candidate:(id)candidate featurizationManager:(id)manager
{
  contextCopy = context;
  candidateCopy = candidate;
  result = manager;
  __break(1u);
  return result;
}

- (ATXCandidateRelevanceModel)initWithCoder:(id)coder
{
  result = coder;
  __break(1u);
  return result;
}

@end