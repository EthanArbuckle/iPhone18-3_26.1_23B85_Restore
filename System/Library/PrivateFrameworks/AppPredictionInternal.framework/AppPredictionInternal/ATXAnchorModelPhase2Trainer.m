@interface ATXAnchorModelPhase2Trainer
- (id)initForAnchor:(id)a3;
- (id)initForAnchor:(id)a3 anchorModelDataStoreWrapper:(id)a4;
- (id)trainClassifierForCandidateId:(id)a3 candidateType:(id)a4;
- (id)trainGamePlayKitDecisionTreeCandidateClassifierForCandidate:(id)a3 candidateType:(id)a4;
- (id)trainNaivePositiveCandidateClassifierForCandidate:(id)a3 candidateType:(id)a4;
- (id)trainPhase2ForCandidate:(id)a3 candidateType:(id)a4;
- (id)trainStrictContextMatchCandidateClassifierForCandidate:(id)a3 candidateType:(id)a4;
@end

@implementation ATXAnchorModelPhase2Trainer

- (id)initForAnchor:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v6 = [(ATXAnchorModelPhase2Trainer *)self initForAnchor:v4 anchorModelDataStoreWrapper:v5];

  return v6;
}

- (id)initForAnchor:(id)a3 anchorModelDataStoreWrapper:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = ATXAnchorModelPhase2Trainer;
  v9 = [(ATXAnchorModelPhase2Trainer *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_anchor, a3);
    objc_storeStrong(&v10->_storeWrapper, a4);
    v11 = +[ATXAnchorModelHyperParameters sharedInstance];
    hyperParameters = v10->_hyperParameters;
    v10->_hyperParameters = v11;
  }

  return v10;
}

- (id)trainPhase2ForCandidate:(id)a3 candidateType:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = __atxlog_handle_anchor();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [ATXAnchorModelPhase2Trainer trainPhase2ForCandidate:v6 candidateType:v8];
  }

  v9 = [(ATXAnchorModelPhase2Trainer *)self trainClassifierForCandidateId:v6 candidateType:v7];

  v10 = __atxlog_handle_anchor();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [ATXAnchorModelPhase2Trainer trainPhase2ForCandidate:v6 candidateType:v10];
  }

  return v9;
}

- (id)trainClassifierForCandidateId:(id)a3 candidateType:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(ATXAnchorModelPhase2Trainer *)self candidateClassifierType];
  if (v8 == 3)
  {
    v9 = [(ATXAnchorModelPhase2Trainer *)self trainGamePlayKitDecisionTreeCandidateClassifierForCandidate:v6 candidateType:v7];
  }

  else
  {
    if (v8 == 1)
    {
      [(ATXAnchorModelPhase2Trainer *)self trainNaivePositiveCandidateClassifierForCandidate:v6 candidateType:v7];
    }

    else
    {
      [(ATXAnchorModelPhase2Trainer *)self trainStrictContextMatchCandidateClassifierForCandidate:v6 candidateType:v7];
    }
    v9 = ;
  }

  v10 = v9;

  return v10;
}

- (id)trainGamePlayKitDecisionTreeCandidateClassifierForCandidate:(id)a3 candidateType:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[ATXGamePlayKitDecisionTreeAnchorModelCandidateClassifier alloc] initWithCandidateId:v7 candidateType:v6 anchor:self->_anchor hyperParameters:self->_hyperParameters];

  [(ATXGamePlayKitDecisionTreeAnchorModelCandidateClassifier *)v8 train];

  return v8;
}

- (id)trainNaivePositiveCandidateClassifierForCandidate:(id)a3 candidateType:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[ATXNaivePositiveAnchorModelCandidateClassifier alloc] initWithCandidateId:v7 candidateType:v6 anchor:self->_anchor];

  [(ATXNaivePositiveAnchorModelCandidateClassifier *)v8 train];

  return v8;
}

- (id)trainStrictContextMatchCandidateClassifierForCandidate:(id)a3 candidateType:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(ATXNaivePositiveAnchorModelCandidateClassifier *)[ATXStrictContextMatchAnchorModelCandidateClassifier alloc] initWithCandidateId:v7 candidateType:v6 anchor:self->_anchor];

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