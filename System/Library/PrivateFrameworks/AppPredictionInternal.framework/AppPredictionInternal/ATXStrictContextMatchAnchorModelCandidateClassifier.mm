@interface ATXStrictContextMatchAnchorModelCandidateClassifier
- (BOOL)isEqual:(id)equal;
- (id)classifyCandidateForAnchorOccurrence:(id)occurrence trainingResult:(id)result;
@end

@implementation ATXStrictContextMatchAnchorModelCandidateClassifier

- (id)classifyCandidateForAnchorOccurrence:(id)occurrence trainingResult:(id)result
{
  v29 = *MEMORY[0x277D85DE8];
  occurrenceCopy = occurrence;
  v6 = __atxlog_handle_anchor();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    candidateId = [(ATXNaivePositiveAnchorModelCandidateClassifier *)self candidateId];
    v25 = 138412546;
    v26 = v8;
    v27 = 2112;
    v28 = candidateId;
    _os_log_impl(&dword_2263AA000, v6, OS_LOG_TYPE_INFO, "%@ making a prediction for candidate: %@", &v25, 0x16u);
  }

  v10 = objc_opt_new();
  anchor = [(ATXNaivePositiveAnchorModelCandidateClassifier *)self anchor];
  v12 = [v10 featurizeAnchorEvent:occurrenceCopy anchor:anchor];

  v13 = objc_opt_new();
  candidateId2 = [(ATXNaivePositiveAnchorModelCandidateClassifier *)self candidateId];
  anchor2 = [(ATXNaivePositiveAnchorModelCandidateClassifier *)self anchor];
  v16 = [v13 numCandidateIdOccurrencesInJointAnchorContext:candidateId2 anchor:anchor2 anchorMetadata:v12];

  v17 = __atxlog_handle_anchor();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    candidateId3 = [(ATXNaivePositiveAnchorModelCandidateClassifier *)self candidateId];
    v25 = 138412546;
    v26 = candidateId3;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      candidateId = [(ATXNaivePositiveAnchorModelCandidateClassifier *)self candidateId];
      candidateId2 = [(ATXNaivePositiveAnchorModelCandidateClassifier *)v5 candidateId];
      v8 = [candidateId isEqualToString:candidateId2];

      if (v8)
      {
        anchor = [(ATXNaivePositiveAnchorModelCandidateClassifier *)self anchor];
        anchor2 = [(ATXNaivePositiveAnchorModelCandidateClassifier *)v5 anchor];
        v11 = [anchor isEqual:anchor2];
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