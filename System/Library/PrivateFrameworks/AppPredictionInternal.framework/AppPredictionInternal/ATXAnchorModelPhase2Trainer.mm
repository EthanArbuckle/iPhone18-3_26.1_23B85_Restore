@interface ATXAnchorModelPhase2Trainer
- (id)initForAnchor:(id)anchor;
- (id)initForAnchor:(id)anchor anchorModelDataStoreWrapper:(id)wrapper;
- (id)trainClassifierForCandidateId:(id)id candidateType:(id)type;
- (id)trainGamePlayKitDecisionTreeCandidateClassifierForCandidate:(id)candidate candidateType:(id)type;
- (id)trainNaivePositiveCandidateClassifierForCandidate:(id)candidate candidateType:(id)type;
- (id)trainPhase2ForCandidate:(id)candidate candidateType:(id)type;
- (id)trainStrictContextMatchCandidateClassifierForCandidate:(id)candidate candidateType:(id)type;
@end

@implementation ATXAnchorModelPhase2Trainer

- (id)initForAnchor:(id)anchor
{
  anchorCopy = anchor;
  v5 = objc_opt_new();
  v6 = [(ATXAnchorModelPhase2Trainer *)self initForAnchor:anchorCopy anchorModelDataStoreWrapper:v5];

  return v6;
}

- (id)initForAnchor:(id)anchor anchorModelDataStoreWrapper:(id)wrapper
{
  anchorCopy = anchor;
  wrapperCopy = wrapper;
  v14.receiver = self;
  v14.super_class = ATXAnchorModelPhase2Trainer;
  v9 = [(ATXAnchorModelPhase2Trainer *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_anchor, anchor);
    objc_storeStrong(&v10->_storeWrapper, wrapper);
    v11 = +[ATXAnchorModelHyperParameters sharedInstance];
    hyperParameters = v10->_hyperParameters;
    v10->_hyperParameters = v11;
  }

  return v10;
}

- (id)trainPhase2ForCandidate:(id)candidate candidateType:(id)type
{
  candidateCopy = candidate;
  typeCopy = type;
  v8 = __atxlog_handle_anchor();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [ATXAnchorModelPhase2Trainer trainPhase2ForCandidate:candidateCopy candidateType:v8];
  }

  v9 = [(ATXAnchorModelPhase2Trainer *)self trainClassifierForCandidateId:candidateCopy candidateType:typeCopy];

  v10 = __atxlog_handle_anchor();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [ATXAnchorModelPhase2Trainer trainPhase2ForCandidate:candidateCopy candidateType:v10];
  }

  return v9;
}

- (id)trainClassifierForCandidateId:(id)id candidateType:(id)type
{
  idCopy = id;
  typeCopy = type;
  candidateClassifierType = [(ATXAnchorModelPhase2Trainer *)self candidateClassifierType];
  if (candidateClassifierType == 3)
  {
    v9 = [(ATXAnchorModelPhase2Trainer *)self trainGamePlayKitDecisionTreeCandidateClassifierForCandidate:idCopy candidateType:typeCopy];
  }

  else
  {
    if (candidateClassifierType == 1)
    {
      [(ATXAnchorModelPhase2Trainer *)self trainNaivePositiveCandidateClassifierForCandidate:idCopy candidateType:typeCopy];
    }

    else
    {
      [(ATXAnchorModelPhase2Trainer *)self trainStrictContextMatchCandidateClassifierForCandidate:idCopy candidateType:typeCopy];
    }
    v9 = ;
  }

  v10 = v9;

  return v10;
}

- (id)trainGamePlayKitDecisionTreeCandidateClassifierForCandidate:(id)candidate candidateType:(id)type
{
  typeCopy = type;
  candidateCopy = candidate;
  v8 = [[ATXGamePlayKitDecisionTreeAnchorModelCandidateClassifier alloc] initWithCandidateId:candidateCopy candidateType:typeCopy anchor:self->_anchor hyperParameters:self->_hyperParameters];

  [(ATXGamePlayKitDecisionTreeAnchorModelCandidateClassifier *)v8 train];

  return v8;
}

- (id)trainNaivePositiveCandidateClassifierForCandidate:(id)candidate candidateType:(id)type
{
  typeCopy = type;
  candidateCopy = candidate;
  v8 = [[ATXNaivePositiveAnchorModelCandidateClassifier alloc] initWithCandidateId:candidateCopy candidateType:typeCopy anchor:self->_anchor];

  [(ATXNaivePositiveAnchorModelCandidateClassifier *)v8 train];

  return v8;
}

- (id)trainStrictContextMatchCandidateClassifierForCandidate:(id)candidate candidateType:(id)type
{
  typeCopy = type;
  candidateCopy = candidate;
  v8 = [(ATXNaivePositiveAnchorModelCandidateClassifier *)[ATXStrictContextMatchAnchorModelCandidateClassifier alloc] initWithCandidateId:candidateCopy candidateType:typeCopy anchor:self->_anchor];

  [(ATXNaivePositiveAnchorModelCandidateClassifier *)v8 train];

  return v8;
}

- (void)trainPhase2ForCandidate:(uint64_t)a1 candidateType:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_2263AA000, a2, OS_LOG_TYPE_DEBUG, "Training Phase 2 Candidate Classifier for candidate: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)trainPhase2ForCandidate:(uint64_t)a1 candidateType:(NSObject *)a2 .cold.2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_2263AA000, a2, OS_LOG_TYPE_DEBUG, "Done training Phase 2 Candidate Classifier for candidate: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end