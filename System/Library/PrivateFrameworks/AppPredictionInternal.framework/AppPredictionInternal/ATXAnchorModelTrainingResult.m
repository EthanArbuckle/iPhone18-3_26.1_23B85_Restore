@interface ATXAnchorModelTrainingResult
- (ATXAnchorModelTrainingResult)initWithAnchor:(id)a3 candidateId:(id)a4 candidateType:(id)a5 phase1TrainingResult:(id)a6 candidateClassifier:(id)a7 candidateClassifierType:(int64_t)a8 offsetFromAnchorToShowPrediction:(id)a9;
- (id)description;
@end

@implementation ATXAnchorModelTrainingResult

- (ATXAnchorModelTrainingResult)initWithAnchor:(id)a3 candidateId:(id)a4 candidateType:(id)a5 phase1TrainingResult:(id)a6 candidateClassifier:(id)a7 candidateClassifierType:(int64_t)a8 offsetFromAnchorToShowPrediction:(id)a9
{
  v28 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a9;
  v29.receiver = self;
  v29.super_class = ATXAnchorModelTrainingResult;
  v20 = [(ATXAnchorModelTrainingResult *)&v29 init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_anchor, a3);
    v22 = [v15 copy];
    candidateId = v21->_candidateId;
    v21->_candidateId = v22;

    v24 = [v16 copy];
    candidateType = v21->_candidateType;
    v21->_candidateType = v24;

    objc_storeStrong(&v21->_phase1TrainingResult, a6);
    objc_storeStrong(&v21->_candidateClassifier, a7);
    v21->_candidateClassifierType = a8;
    objc_storeStrong(&v21->_offsetFromAnchorToShowPrediction, a9);
  }

  return v21;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  anchor = self->_anchor;
  v5 = [(ATXAnchor *)anchor anchorEventIdentifier];
  v6 = [v3 initWithFormat:@"Anchor: %@, Anchor Event Identifier: %@, Candidate: %@, Candidate type: %@, Phase 1 training result: %@, Candidate classifier: %@, Candidate Classifier Type: %ld, Offset from anchor: %@", anchor, v5, self->_candidateId, self->_candidateType, self->_phase1TrainingResult, self->_candidateClassifier, self->_candidateClassifierType, self->_offsetFromAnchorToShowPrediction];

  return v6;
}

@end