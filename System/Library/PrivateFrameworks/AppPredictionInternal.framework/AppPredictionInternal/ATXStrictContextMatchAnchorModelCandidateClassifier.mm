@interface ATXStrictContextMatchAnchorModelCandidateClassifier
- (BOOL)isEqual:(id)a3;
- (id)classifyCandidateForAnchorOccurrence:(id)a3 trainingResult:(id)a4;
@end

@implementation ATXStrictContextMatchAnchorModelCandidateClassifier

- (id)classifyCandidateForAnchorOccurrence:(id)a3 trainingResult:(id)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = __atxlog_handle_anchor();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = [(ATXNaivePositiveAnchorModelCandidateClassifier *)self candidateId];
    v25 = 138412546;
    v26 = v8;
    v27 = 2112;
    v28 = v9;
    _os_log_impl(&dword_2263AA000, v6, OS_LOG_TYPE_INFO, "%@ making a prediction for candidate: %@", &v25, 0x16u);
  }

  v10 = objc_opt_new();
  v11 = [(ATXNaivePositiveAnchorModelCandidateClassifier *)self anchor];
  v12 = [v10 featurizeAnchorEvent:v5 anchor:v11];

  v13 = objc_opt_new();
  v14 = [(ATXNaivePositiveAnchorModelCandidateClassifier *)self candidateId];
  v15 = [(ATXNaivePositiveAnchorModelCandidateClassifier *)self anchor];
  v16 = [v13 numCandidateIdOccurrencesInJointAnchorContext:v14 anchor:v15 anchorMetadata:v12];

  v17 = __atxlog_handle_anchor();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    v18 = [(ATXNaivePositiveAnchorModelCandidateClassifier *)self candidateId];
    v25 = 138412546;
    v26 = v18;
    v27 = 2048;
    v28 = v16;
    _os_log_impl(&dword_2263AA000, v17, OS_LOG_TYPE_INFO, "Candidate %@ has %ld occurrences in the joint context of the anchor.", &v25, 0x16u);
  }

  v19 = [ATXAnchorModelClassificationResult alloc];
  if (v16 < 1)
  {
    v20 = v16;
    v21 = 0;
  }

  else
  {
    v20 = v16;
    v21 = 1;
  }

  v22 = [(ATXAnchorModelClassificationResult *)v19 initWithShouldPredictCandidate:v21 score:v20];

  v23 = *MEMORY[0x277D85DE8];

  return v22;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(ATXNaivePositiveAnchorModelCandidateClassifier *)self candidateId];
      v7 = [(ATXNaivePositiveAnchorModelCandidateClassifier *)v5 candidateId];
      v8 = [v6 isEqualToString:v7];

      if (v8)
      {
        v9 = [(ATXNaivePositiveAnchorModelCandidateClassifier *)self anchor];
        v10 = [(ATXNaivePositiveAnchorModelCandidateClassifier *)v5 anchor];
        v11 = [v9 isEqual:v10];
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

@end