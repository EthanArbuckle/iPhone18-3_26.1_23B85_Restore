@interface ATXFakeAnchorModelPhase3Trainer
- (ATXFakeAnchorModelPhase3Trainer)init;
- (id)trainPhase3ForCandidate:(id)candidate;
@end

@implementation ATXFakeAnchorModelPhase3Trainer

- (ATXFakeAnchorModelPhase3Trainer)init
{
  v6.receiver = self;
  v6.super_class = ATXFakeAnchorModelPhase3Trainer;
  v2 = [(ATXFakeAnchorModelPhase3Trainer *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    candidateIdsForPhase3Training = v2->_candidateIdsForPhase3Training;
    v2->_candidateIdsForPhase3Training = v3;
  }

  return v2;
}

- (id)trainPhase3ForCandidate:(id)candidate
{
  [(NSMutableArray *)self->_candidateIdsForPhase3Training addObject:candidate];
  v3 = [[ATXAnchorModelPredictionOffsetFromAnchorOccurrence alloc] initWithStartSecondsAfterAnchor:-1.0 endSecondsAfterAnchor:-1.0];

  return v3;
}

@end