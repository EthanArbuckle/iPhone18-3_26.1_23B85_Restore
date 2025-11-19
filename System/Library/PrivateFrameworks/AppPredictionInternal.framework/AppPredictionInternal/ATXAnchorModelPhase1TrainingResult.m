@interface ATXAnchorModelPhase1TrainingResult
- (id)description;
@end

@implementation ATXAnchorModelPhase1TrainingResult

- (id)description
{
  v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@, num unique anchor occurrences: %ld, class conditional probability: %.2f, posterior probability: %.2f", self->_candidateId, self->_numUniqueAnchorOccurrencesWithUniqueCandidateOccurrence, *&self->_classConditionalProbability, *&self->_posteriorProbability];

  return v2;
}

@end