@interface ATXAnchorModelTrainingResult
- (ATXAnchorModelTrainingResult)initWithAnchor:(id)anchor candidateId:(id)id candidateType:(id)type phase1TrainingResult:(id)result candidateClassifier:(id)classifier candidateClassifierType:(int64_t)classifierType offsetFromAnchorToShowPrediction:(id)prediction;
- (id)description;
@end

@implementation ATXAnchorModelTrainingResult

- (ATXAnchorModelTrainingResult)initWithAnchor:(id)anchor candidateId:(id)id candidateType:(id)type phase1TrainingResult:(id)result candidateClassifier:(id)classifier candidateClassifierType:(int64_t)classifierType offsetFromAnchorToShowPrediction:(id)prediction
{
  anchorCopy = anchor;
  idCopy = id;
  typeCopy = type;
  resultCopy = result;
  classifierCopy = classifier;
  predictionCopy = prediction;
  v29.receiver = self;
  v29.super_class = ATXAnchorModelTrainingResult;
  v20 = [(ATXAnchorModelTrainingResult *)&v29 init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_anchor, anchor);
    v22 = [idCopy copy];
    candidateId = v21->_candidateId;
    v21->_candidateId = v22;

    v24 = [typeCopy copy];
    candidateType = v21->_candidateType;
    v21->_candidateType = v24;

    objc_storeStrong(&v21->_phase1TrainingResult, result);
    objc_storeStrong(&v21->_candidateClassifier, classifier);
    v21->_candidateClassifierType = classifierType;
    objc_storeStrong(&v21->_offsetFromAnchorToShowPrediction, prediction);
  }

  return v21;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  anchor = self->_anchor;
  anchorEventIdentifier = [(ATXAnchor *)anchor anchorEventIdentifier];
  v6 = [v3 initWithFormat:@"Anchor: %@, Anchor Event Identifier: %@, Candidate: %@, Candidate type: %@, Phase 1 training result: %@, Candidate classifier: %@, Candidate Classifier Type: %ld, Offset from anchor: %@", anchor, anchorEventIdentifier, self->_candidateId, self->_candidateType, self->_phase1TrainingResult, self->_candidateClassifier, self->_candidateClassifierType, self->_offsetFromAnchorToShowPrediction];

  return v6;
}

@end