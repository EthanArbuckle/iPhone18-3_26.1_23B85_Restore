@interface ATXFakeAnchorModelPhase2Trainer
- (ATXFakeAnchorModelPhase2Trainer)init;
- (id)trainPhase2ForCandidate:(id)a3 candidateType:(id)a4;
@end

@implementation ATXFakeAnchorModelPhase2Trainer

- (ATXFakeAnchorModelPhase2Trainer)init
{
  v6.receiver = self;
  v6.super_class = ATXFakeAnchorModelPhase2Trainer;
  v2 = [(ATXFakeAnchorModelPhase2Trainer *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    candidateIdsForPhase2Training = v2->_candidateIdsForPhase2Training;
    v2->_candidateIdsForPhase2Training = v3;
  }

  return v2;
}

- (id)trainPhase2ForCandidate:(id)a3 candidateType:(id)a4
{
  candidateIdsForPhase2Training = self->_candidateIdsForPhase2Training;
  v5 = a3;
  [(NSMutableArray *)candidateIdsForPhase2Training addObject:v5];
  v6 = [ATXNaivePositiveAnchorModelCandidateClassifier alloc];
  v7 = objc_opt_new();
  v8 = [(ATXNaivePositiveAnchorModelCandidateClassifier *)v6 initWithCandidateId:v5 candidateType:@"action" anchor:v7];

  [(ATXNaivePositiveAnchorModelCandidateClassifier *)v8 train];

  return v8;
}

@end