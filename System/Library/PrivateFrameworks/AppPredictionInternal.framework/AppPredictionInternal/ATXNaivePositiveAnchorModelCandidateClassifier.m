@interface ATXNaivePositiveAnchorModelCandidateClassifier
- (ATXNaivePositiveAnchorModelCandidateClassifier)initWithCandidateId:(id)a3 candidateType:(id)a4 anchor:(id)a5;
- (ATXNaivePositiveAnchorModelCandidateClassifier)initWithCoder:(id)a3;
- (BOOL)checkAndReportDecodingFailureIfNeededForid:(id)a3 key:(id)a4 coder:(id)a5 errorDomain:(id)a6 errorCode:(int64_t)a7;
- (BOOL)isEqual:(id)a3;
- (id)classifyCandidateForAnchorOccurrence:(id)a3 trainingResult:(id)a4;
- (void)encodeWithCoder:(id)a3;
- (void)train;
@end

@implementation ATXNaivePositiveAnchorModelCandidateClassifier

- (ATXNaivePositiveAnchorModelCandidateClassifier)initWithCandidateId:(id)a3 candidateType:(id)a4 anchor:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v18.receiver = self;
  v18.super_class = ATXNaivePositiveAnchorModelCandidateClassifier;
  v11 = [(ATXNaivePositiveAnchorModelCandidateClassifier *)&v18 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_anchor, a5);
    v13 = [v8 copy];
    candidateId = v12->_candidateId;
    v12->_candidateId = v13;

    v15 = [v9 copy];
    candidateType = v12->_candidateType;
    v12->_candidateType = v15;

    v12->_isTrained = 0;
  }

  return v12;
}

- (void)train
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  v4 = *(a1 + 24);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v5, v6, OS_LOG_TYPE_DEBUG, v7, v8, 0x16u);

  v9 = *MEMORY[0x277D85DE8];
}

- (id)classifyCandidateForAnchorOccurrence:(id)a3 trainingResult:(id)a4
{
  v5 = __atxlog_handle_anchor();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [ATXNaivePositiveAnchorModelCandidateClassifier classifyCandidateForAnchorOccurrence:? trainingResult:?];
  }

  v6 = [[ATXAnchorModelClassificationResult alloc] initWithShouldPredictCandidate:1 score:1.0];

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = self->_candidateId;
      v7 = v6;
      if (v6 == v5->_candidateId)
      {
      }

      else
      {
        v8 = [(NSString *)v6 isEqual:?];

        if ((v8 & 1) == 0)
        {
          v9 = 0;
LABEL_13:

          goto LABEL_14;
        }
      }

      v10 = self->_anchor;
      v11 = v10;
      if (v10 == v5->_anchor)
      {
        v9 = 1;
      }

      else
      {
        v9 = [(ATXAnchor *)v10 isEqual:?];
      }

      goto LABEL_13;
    }

    v9 = 0;
  }

LABEL_14:

  return v9;
}

- (BOOL)checkAndReportDecodingFailureIfNeededForid:(id)a3 key:(id)a4 coder:(id)a5 errorDomain:(id)a6 errorCode:(int64_t)a7
{
  v23[1] = *MEMORY[0x277D85DE8];
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (!a3)
  {
    v15 = [v12 error];

    if (v15)
    {
      v14 = 1;
      goto LABEL_7;
    }

    if (([v12 containsValueForKey:v11] & 1) == 0)
    {
      v16 = objc_alloc(MEMORY[0x277CCA9B8]);
      v22 = *MEMORY[0x277CCA450];
      v17 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Failed to decode key %@", v11, v22];
      v23[0] = v17;
      v14 = 1;
      v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:&v22 count:1];
      v19 = [v16 initWithDomain:v13 code:a7 userInfo:v18];

      [v12 failWithError:v19];
      goto LABEL_7;
    }
  }

  v14 = 0;
LABEL_7:

  v20 = *MEMORY[0x277D85DE8];
  return v14;
}

- (void)encodeWithCoder:(id)a3
{
  candidateId = self->_candidateId;
  v5 = a3;
  [v5 encodeObject:candidateId forKey:@"codingKeyForCandidateId"];
  [v5 encodeObject:self->_candidateType forKey:@"codingKeyForCandidateType"];
  anchor = self->_anchor;
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  [v5 encodeObject:v8 forKey:@"codingKeyForAnchor"];
}

- (ATXNaivePositiveAnchorModelCandidateClassifier)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"codingKeyForCandidateId"];
  if (![(ATXNaivePositiveAnchorModelCandidateClassifier *)self checkAndReportDecodingFailureIfNeededForid:v5 key:@"codingKeyForCandidateId" coder:v4 errorDomain:@"com.apple.proactive.NaivePositiveAnchorModelCandidateClassifier" errorCode:-1])
  {
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"codingKeyForCandidateType"];
    if ([(ATXNaivePositiveAnchorModelCandidateClassifier *)self checkAndReportDecodingFailureIfNeededForid:v7 key:@"codingKeyForCandidateType" coder:v4 errorDomain:@"com.apple.proactive.NaivePositiveAnchorModelCandidateClassifier" errorCode:-1])
    {
      v6 = 0;
LABEL_21:

      goto LABEL_22;
    }

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"codingKeyForAnchor"];
    if ([(ATXNaivePositiveAnchorModelCandidateClassifier *)self checkAndReportDecodingFailureIfNeededForid:v8 key:@"codingKeyForAnchor" coder:v4 errorDomain:@"com.apple.proactive.NaivePositiveAnchorModelCandidateClassifier" errorCode:-1])
    {
      v6 = 0;
LABEL_20:

      goto LABEL_21;
    }

    v9 = +[ATXAnchorModelHyperParameters sharedInstance];
    v10 = [v9 enabledAnchors];
    v11 = [v10 containsObject:v8];

    if (v11)
    {
      if (NSClassFromString(v8))
      {
        v12 = objc_opt_new();
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          self = [(ATXNaivePositiveAnchorModelCandidateClassifier *)self initWithCandidateId:v5 candidateType:v7 anchor:v12];
          v6 = self;
LABEL_19:

          goto LABEL_20;
        }

        v13 = __atxlog_handle_anchor();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
        {
          [ATXGamePlayKitDecisionTreeAnchorModelCandidateClassifier initWithCoder:];
        }
      }

      else
      {
        v12 = __atxlog_handle_anchor();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
        {
          [ATXGamePlayKitDecisionTreeAnchorModelCandidateClassifier initWithCoder:];
        }
      }
    }

    else
    {
      v12 = __atxlog_handle_anchor();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [ATXGamePlayKitDecisionTreeAnchorModelCandidateClassifier initWithCoder:];
      }
    }

    v6 = 0;
    goto LABEL_19;
  }

  v6 = 0;
LABEL_22:

  return v6;
}

- (void)classifyCandidateForAnchorOccurrence:(uint64_t)a1 trainingResult:.cold.1(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  v4 = *(a1 + 24);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v5, v6, OS_LOG_TYPE_DEBUG, v7, v8, 0x16u);

  v9 = *MEMORY[0x277D85DE8];
}

@end