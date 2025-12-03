@interface ATXCandidateRelevanceModelFeaturizer
- (void)observeContext:(id)context candidate:(id)candidate;
@end

@implementation ATXCandidateRelevanceModelFeaturizer

- (void)observeContext:(id)context candidate:(id)candidate
{
  contextCopy = context;
  candidateCopy = candidate;
  __break(1u);
}

@end