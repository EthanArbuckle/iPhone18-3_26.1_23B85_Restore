@interface ATXNaivePositiveAnchorModelCandidateClassifier
- (ATXNaivePositiveAnchorModelCandidateClassifier)initWithCandidateId:(id)id candidateType:(id)type anchor:(id)anchor;
- (ATXNaivePositiveAnchorModelCandidateClassifier)initWithCoder:(id)coder;
- (BOOL)checkAndReportDecodingFailureIfNeededForid:(id)forid key:(id)key coder:(id)coder errorDomain:(id)domain errorCode:(int64_t)code;
- (BOOL)isEqual:(id)equal;
- (id)classifyCandidateForAnchorOccurrence:(id)occurrence trainingResult:(id)result;
- (void)encodeWithCoder:(id)coder;
- (void)train;
@end

@implementation ATXNaivePositiveAnchorModelCandidateClassifier

- (ATXNaivePositiveAnchorModelCandidateClassifier)initWithCandidateId:(id)id candidateType:(id)type anchor:(id)anchor
{
  idCopy = id;
  typeCopy = type;
  anchorCopy = anchor;
  v18.receiver = self;
  v18.super_class = ATXNaivePositiveAnchorModelCandidateClassifier;
  v11 = [(ATXNaivePositiveAnchorModelCandidateClassifier *)&v18 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_anchor, anchor);
    v13 = [idCopy copy];
    candidateId = v12->_candidateId;
    v12->_candidateId = v13;

    v15 = [typeCopy copy];
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
  v4 = *(self + 24);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v5, v6, OS_LOG_TYPE_DEBUG, v7, v8, 0x16u);

  v9 = *MEMORY[0x277D85DE8];
}

- (id)classifyCandidateForAnchorOccurrence:(id)occurrence trainingResult:(id)result
{
  v5 = __atxlog_handle_anchor();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [ATXNaivePositiveAnchorModelCandidateClassifier classifyCandidateForAnchorOccurrence:? trainingResult:?];
  }

  v6 = [[ATXAnchorModelClassificationResult alloc] initWithShouldPredictCandidate:1 score:1.0];

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
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

- (BOOL)checkAndReportDecodingFailureIfNeededForid:(id)forid key:(id)key coder:(id)coder errorDomain:(id)domain errorCode:(int64_t)code
{
  v23[1] = *MEMORY[0x277D85DE8];
  keyCopy = key;
  coderCopy = coder;
  domainCopy = domain;
  if (!forid)
  {
    error = [coderCopy error];

    if (error)
    {
      v14 = 1;
      goto LABEL_7;
    }

    if (([coderCopy containsValueForKey:keyCopy] & 1) == 0)
    {
      v16 = objc_alloc(MEMORY[0x277CCA9B8]);
      v22 = *MEMORY[0x277CCA450];
      v17 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Failed to decode key %@", keyCopy, v22];
      v23[0] = v17;
      v14 = 1;
      v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:&v22 count:1];
      v19 = [v16 initWithDomain:domainCopy code:code userInfo:v18];

      [coderCopy failWithError:v19];
      goto LABEL_7;
    }
  }

  v14 = 0;
LABEL_7:

  v20 = *MEMORY[0x277D85DE8];
  return v14;
}

- (void)encodeWithCoder:(id)coder
{
  candidateId = self->_candidateId;
  coderCopy = coder;
  [coderCopy encodeObject:candidateId forKey:@"codingKeyForCandidateId"];
  [coderCopy encodeObject:self->_candidateType forKey:@"codingKeyForCandidateType"];
  anchor = self->_anchor;
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  [coderCopy encodeObject:v8 forKey:@"codingKeyForAnchor"];
}

- (ATXNaivePositiveAnchorModelCandidateClassifier)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"codingKeyForCandidateId"];
  if (![(ATXNaivePositiveAnchorModelCandidateClassifier *)self checkAndReportDecodingFailureIfNeededForid:v5 key:@"codingKeyForCandidateId" coder:coderCopy errorDomain:@"com.apple.proactive.NaivePositiveAnchorModelCandidateClassifier" errorCode:-1])
  {
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"codingKeyForCandidateType"];
    if ([(ATXNaivePositiveAnchorModelCandidateClassifier *)self checkAndReportDecodingFailureIfNeededForid:v7 key:@"codingKeyForCandidateType" coder:coderCopy errorDomain:@"com.apple.proactive.NaivePositiveAnchorModelCandidateClassifier" errorCode:-1])
    {
      selfCopy = 0;
LABEL_21:

      goto LABEL_22;
    }

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"codingKeyForAnchor"];
    if ([(ATXNaivePositiveAnchorModelCandidateClassifier *)self checkAndReportDecodingFailureIfNeededForid:v8 key:@"codingKeyForAnchor" coder:coderCopy errorDomain:@"com.apple.proactive.NaivePositiveAnchorModelCandidateClassifier" errorCode:-1])
    {
      selfCopy = 0;
LABEL_20:

      goto LABEL_21;
    }

    v9 = +[ATXAnchorModelHyperParameters sharedInstance];
    enabledAnchors = [v9 enabledAnchors];
    v11 = [enabledAnchors containsObject:v8];

    if (v11)
    {
      if (NSClassFromString(v8))
      {
        v12 = objc_opt_new();
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          self = [(ATXNaivePositiveAnchorModelCandidateClassifier *)self initWithCandidateId:v5 candidateType:v7 anchor:v12];
          selfCopy = self;
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

    selfCopy = 0;
    goto LABEL_19;
  }

  selfCopy = 0;
LABEL_22:

  return selfCopy;
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