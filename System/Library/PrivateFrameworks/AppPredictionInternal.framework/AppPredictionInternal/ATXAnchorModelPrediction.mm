@interface ATXAnchorModelPrediction
- (ATXAnchorModelPrediction)initWithAnchorType:(id)type anchorEvent:(id)event candidateType:(id)candidateType candidateId:(id)id dateIntervalForPrediction:(id)prediction score:(double)score numUniqueOccurrencesAfterAnchor:(unint64_t)anchor posteriorProbability:(double)self0 classConditionalProbability:(double)self1 standardDeviationOfOffsetFromAnchor:(double)self2 anchorPopularity:(double)self3 globalPopularity:(double)self4 offsetFromAnchorToShowPrediction:(id)self5 candidateClassifier:(id)self6;
- (ATXAnchorModelPrediction)initWithCoder:(id)coder;
- (BOOL)checkAndReportDecodingFailureIfNeededForNSInteger:(int64_t)integer key:(id)key coder:(id)coder errorDomain:(id)domain errorCode:(int64_t)code;
- (BOOL)checkAndReportDecodingFailureIfNeededFordouble:(double)fordouble key:(id)key coder:(id)coder errorDomain:(id)domain errorCode:(int64_t)code;
- (BOOL)isEqual:(id)equal;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ATXAnchorModelPrediction

- (ATXAnchorModelPrediction)initWithAnchorType:(id)type anchorEvent:(id)event candidateType:(id)candidateType candidateId:(id)id dateIntervalForPrediction:(id)prediction score:(double)score numUniqueOccurrencesAfterAnchor:(unint64_t)anchor posteriorProbability:(double)self0 classConditionalProbability:(double)self1 standardDeviationOfOffsetFromAnchor:(double)self2 anchorPopularity:(double)self3 globalPopularity:(double)self4 offsetFromAnchorToShowPrediction:(id)self5 candidateClassifier:(id)self6
{
  typeCopy = type;
  eventCopy = event;
  candidateTypeCopy = candidateType;
  idCopy = id;
  predictionCopy = prediction;
  showPredictionCopy = showPrediction;
  classifierCopy = classifier;
  v43.receiver = self;
  v43.super_class = ATXAnchorModelPrediction;
  v32 = [(ATXAnchorModelPrediction *)&v43 init];
  if (v32)
  {
    v33 = [typeCopy copy];
    anchorType = v32->_anchorType;
    v32->_anchorType = v33;

    objc_storeStrong(&v32->_anchorEvent, event);
    v35 = [candidateTypeCopy copy];
    candidateType = v32->_candidateType;
    v32->_candidateType = v35;

    v37 = [idCopy copy];
    candidateId = v32->_candidateId;
    v32->_candidateId = v37;

    objc_storeStrong(&v32->_dateIntervalForPrediction, prediction);
    v32->_score = score;
    v32->_numUniqueOccurrencesAfterAnchor = anchor;
    v32->_posteriorProbability = probability;
    v32->_classConditionalProbability = conditionalProbability;
    v32->_standardDeviationOfOffsetFromAnchor = fromAnchor;
    v32->_anchorPopularity = popularity;
    v32->_globalPopularity = globalPopularity;
    objc_storeStrong(&v32->_offsetFromAnchorToShowPrediction, showPrediction);
    objc_storeStrong(&v32->_candidateClassifier, classifier);
  }

  return v32;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  anchorType = self->_anchorType;
  v5 = [v3 initWithFormat:@"Anchor type: %@\nCandidate type: %@\nCandidate id: %@\nDate interval: %@\nScore: %.2f\nOffset: %@", anchorType, self->_candidateType, self->_candidateId, self->_dateIntervalForPrediction, *&self->_score, self->_offsetFromAnchorToShowPrediction];

  return v5;
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
      v6 = self->_anchorType;
      v7 = v6;
      if (v6 == v5->_anchorType)
      {
      }

      else
      {
        v8 = [(NSString *)v6 isEqual:?];

        if ((v8 & 1) == 0)
        {
          goto LABEL_30;
        }
      }

      v10 = self->_candidateType;
      v11 = v10;
      if (v10 == v5->_candidateType)
      {
      }

      else
      {
        v12 = [(NSString *)v10 isEqual:?];

        if ((v12 & 1) == 0)
        {
          goto LABEL_30;
        }
      }

      v13 = self->_candidateId;
      v14 = v13;
      if (v13 == v5->_candidateId)
      {
      }

      else
      {
        v15 = [(NSString *)v13 isEqual:?];

        if ((v15 & 1) == 0)
        {
          goto LABEL_30;
        }
      }

      v16 = self->_dateIntervalForPrediction;
      v17 = v16;
      if (v16 == v5->_dateIntervalForPrediction)
      {
      }

      else
      {
        v18 = [(NSDateInterval *)v16 isEqual:?];

        if ((v18 & 1) == 0)
        {
          goto LABEL_30;
        }
      }

      [(ATXAnchorModelPrediction *)v5 score];
      if (v19 != self->_score)
      {
        goto LABEL_30;
      }

      if ([(ATXAnchorModelPrediction *)v5 numUniqueOccurrencesAfterAnchor]!= self->_numUniqueOccurrencesAfterAnchor)
      {
        goto LABEL_30;
      }

      [(ATXAnchorModelPrediction *)v5 posteriorProbability];
      if (vabdd_f64(v20, self->_posteriorProbability) > 0.001)
      {
        goto LABEL_30;
      }

      [(ATXAnchorModelPrediction *)v5 classConditionalProbability];
      if (vabdd_f64(v21, self->_classConditionalProbability) > 0.001)
      {
        goto LABEL_30;
      }

      [(ATXAnchorModelPrediction *)v5 standardDeviationOfOffsetFromAnchor];
      if (vabdd_f64(v22, self->_standardDeviationOfOffsetFromAnchor) > 0.001)
      {
        goto LABEL_30;
      }

      [(ATXAnchorModelPrediction *)v5 anchorPopularity];
      if (vabdd_f64(v23, self->_anchorPopularity) > 0.001)
      {
        goto LABEL_30;
      }

      [(ATXAnchorModelPrediction *)v5 globalPopularity];
      if (vabdd_f64(v24, self->_globalPopularity) > 0.001)
      {
        goto LABEL_30;
      }

      v25 = self->_offsetFromAnchorToShowPrediction;
      v26 = v25;
      if (v25 == v5->_offsetFromAnchorToShowPrediction)
      {
      }

      else
      {
        v27 = [(ATXAnchorModelPredictionOffsetFromAnchorOccurrence *)v25 isEqual:?];

        if (!v27)
        {
LABEL_30:
          v9 = 0;
LABEL_31:

          goto LABEL_32;
        }
      }

      v29 = self->_candidateClassifier;
      v30 = v29;
      if (v29 == v5->_candidateClassifier)
      {
        v9 = 1;
      }

      else
      {
        v9 = [(ATXAnchorModelCandidateClassifierProtocol *)v29 isEqual:?];
      }

      goto LABEL_31;
    }

    v9 = 0;
  }

LABEL_32:

  return v9;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_anchorType hash];
  v4 = [(NSString *)self->_candidateType hash]- v3 + 32 * v3;
  v5 = [(NSString *)self->_candidateId hash]- v4 + 32 * v4;
  v6 = [(NSDateInterval *)self->_dateIntervalForPrediction hash];
  v7 = self->_score - (v6 - v5 + 32 * v5) + 32 * (v6 - v5 + 32 * v5);
  return [(ATXAnchorModelPredictionOffsetFromAnchorOccurrence *)self->_offsetFromAnchorToShowPrediction hash]- v7 + 32 * v7;
}

- (BOOL)checkAndReportDecodingFailureIfNeededForNSInteger:(int64_t)integer key:(id)key coder:(id)coder errorDomain:(id)domain errorCode:(int64_t)code
{
  v23[1] = *MEMORY[0x277D85DE8];
  keyCopy = key;
  coderCopy = coder;
  domainCopy = domain;
  if (!integer)
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

- (BOOL)checkAndReportDecodingFailureIfNeededFordouble:(double)fordouble key:(id)key coder:(id)coder errorDomain:(id)domain errorCode:(int64_t)code
{
  v23[1] = *MEMORY[0x277D85DE8];
  keyCopy = key;
  coderCopy = coder;
  domainCopy = domain;
  if (fordouble == 0.0)
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
  anchorType = self->_anchorType;
  coderCopy = coder;
  [coderCopy encodeObject:anchorType forKey:@"codingKeyForAnchorType"];
  [coderCopy encodeObject:self->_anchorEvent forKey:@"codingKeyForAnchorEvent"];
  [coderCopy encodeObject:self->_candidateType forKey:@"codingKeyForCandidateType"];
  [coderCopy encodeObject:self->_candidateId forKey:@"codingKeyForCandidateId"];
  [coderCopy encodeObject:self->_dateIntervalForPrediction forKey:@"codingKeyForPredictionDateInterval"];
  [coderCopy encodeDouble:@"codingKeyForScore" forKey:self->_score];
  [coderCopy encodeInteger:self->_numUniqueOccurrencesAfterAnchor forKey:@"codingKeyForNumUniqueOccurrencesAfterAnchor"];
  [coderCopy encodeDouble:@"codingKeyForPosteriorProbability" forKey:self->_posteriorProbability];
  [coderCopy encodeDouble:@"codingKeyForClassConditionalProbability" forKey:self->_classConditionalProbability];
  [coderCopy encodeDouble:@"codingKeyForStandardDeviationOfOffsetFromAnchor" forKey:self->_standardDeviationOfOffsetFromAnchor];
  [coderCopy encodeDouble:@"codingKeyForAnchorPopularity" forKey:self->_anchorPopularity];
  [coderCopy encodeDouble:@"codingKeyForGlobalPopularity" forKey:self->_globalPopularity];
  [coderCopy encodeObject:self->_offsetFromAnchorToShowPrediction forKey:@"codingKeyForAnchorOffset"];
  [coderCopy encodeObject:self->_candidateClassifier forKey:@"codingKeyForCandidateClassifier"];
}

- (ATXAnchorModelPrediction)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = MEMORY[0x277D42620];
  v6 = objc_opt_class();
  v7 = __atxlog_handle_anchor();
  v8 = [v5 robustDecodeObjectOfClass:v6 forKey:@"codingKeyForAnchorType" withCoder:coderCopy expectNonNull:1 errorDomain:@"com.apple.proactive.AnchorModelPrediction" errorCode:-1 logHandle:v7];

  if (v8)
  {
    v9 = MEMORY[0x277D42620];
    v10 = objc_opt_class();
    v11 = __atxlog_handle_anchor();
    v12 = [v9 robustDecodeObjectOfClass:v10 forKey:@"codingKeyForAnchorEvent" withCoder:coderCopy expectNonNull:1 errorDomain:@"com.apple.proactive.AnchorModelPrediction" errorCode:-1 logHandle:v11];

    if (v12)
    {
      v13 = MEMORY[0x277D42620];
      v14 = objc_opt_class();
      v15 = __atxlog_handle_anchor();
      v16 = [v13 robustDecodeObjectOfClass:v14 forKey:@"codingKeyForCandidateType" withCoder:coderCopy expectNonNull:1 errorDomain:@"com.apple.proactive.AnchorModelPrediction" errorCode:-1 logHandle:v15];

      if (v16)
      {
        v17 = MEMORY[0x277D42620];
        v18 = objc_opt_class();
        v19 = __atxlog_handle_anchor();
        v20 = [v17 robustDecodeObjectOfClass:v18 forKey:@"codingKeyForCandidateId" withCoder:coderCopy expectNonNull:1 errorDomain:@"com.apple.proactive.AnchorModelPrediction" errorCode:-1 logHandle:v19];

        if (v20)
        {
          v21 = MEMORY[0x277D42620];
          v22 = objc_opt_class();
          v23 = __atxlog_handle_anchor();
          v24 = [v21 robustDecodeObjectOfClass:v22 forKey:@"codingKeyForPredictionDateInterval" withCoder:coderCopy expectNonNull:1 errorDomain:@"com.apple.proactive.AnchorModelPrediction" errorCode:-1 logHandle:v23];

          if (!v24)
          {
            goto LABEL_13;
          }

          [coderCopy decodeDoubleForKey:@"codingKeyForScore"];
          v26 = v25;
          if ([(ATXAnchorModelPrediction *)self checkAndReportDecodingFailureIfNeededFordouble:@"codingKeyForScore" key:coderCopy coder:@"com.apple.proactive.AnchorModelPrediction" errorDomain:-1 errorCode:?])
          {
            goto LABEL_13;
          }

          v27 = [coderCopy decodeIntegerForKey:@"codingKeyForNumUniqueOccurrencesAfterAnchor"];
          if ([(ATXAnchorModelPrediction *)self checkAndReportDecodingFailureIfNeededForNSInteger:v26 key:@"codingKeyForNumUniqueOccurrencesAfterAnchor" coder:coderCopy errorDomain:@"com.apple.proactive.AnchorModelPrediction" errorCode:-1])
          {
            goto LABEL_13;
          }

          [coderCopy decodeDoubleForKey:@"codingKeyForPosteriorProbability"];
          v29 = v28;
          if ([(ATXAnchorModelPrediction *)self checkAndReportDecodingFailureIfNeededFordouble:@"codingKeyForPosteriorProbability" key:coderCopy coder:@"com.apple.proactive.AnchorModelPrediction" errorDomain:-1 errorCode:v26])
          {
            goto LABEL_13;
          }

          [coderCopy decodeDoubleForKey:@"codingKeyForClassConditionalProbability"];
          v31 = v30;
          if (-[ATXAnchorModelPrediction checkAndReportDecodingFailureIfNeededFordouble:key:coder:errorDomain:errorCode:](self, "checkAndReportDecodingFailureIfNeededFordouble:key:coder:errorDomain:errorCode:", @"codingKeyForClassConditionalProbability", coderCopy, @"com.apple.proactive.AnchorModelPrediction", -1, v26) || ([coderCopy decodeDoubleForKey:@"codingKeyForStandardDeviationOfOffsetFromAnchor"], v33 = v32, -[ATXAnchorModelPrediction checkAndReportDecodingFailureIfNeededFordouble:key:coder:errorDomain:errorCode:](self, "checkAndReportDecodingFailureIfNeededFordouble:key:coder:errorDomain:errorCode:", @"codingKeyForStandardDeviationOfOffsetFromAnchor", coderCopy, @"com.apple.proactive.AnchorModelPrediction", -1, v26)) || (objc_msgSend(coderCopy, "decodeDoubleForKey:", @"codingKeyForAnchorPopularity"), v35 = v34, -[ATXAnchorModelPrediction checkAndReportDecodingFailureIfNeededFordouble:key:coder:errorDomain:errorCode:](self, "checkAndReportDecodingFailureIfNeededFordouble:key:coder:errorDomain:errorCode:", @"codingKeyForAnchorPopularity", coderCopy, @"com.apple.proactive.AnchorModelPrediction", -1, v26)) || (objc_msgSend(coderCopy, "decodeDoubleForKey:", @"codingKeyForGlobalPopularity"), v37 = v36, -[ATXAnchorModelPrediction checkAndReportDecodingFailureIfNeededFordouble:key:coder:errorDomain:errorCode:](self, "checkAndReportDecodingFailureIfNeededFordouble:key:coder:errorDomain:errorCode:", @"codingKeyForGlobalPopularity", coderCopy, @"com.apple.proactive.AnchorModelPrediction", -1, v26)))
          {
LABEL_13:
            selfCopy = 0;
          }

          else
          {
            v40 = MEMORY[0x277D42620];
            v50 = objc_opt_class();
            v52 = __atxlog_handle_anchor();
            v41 = [v40 robustDecodeObjectOfClass:v50 forKey:@"codingKeyForAnchorOffset" withCoder:coderCopy expectNonNull:1 errorDomain:@"com.apple.proactive.AnchorModelPrediction" errorCode:-1 logHandle:v52];

            v53 = v41;
            if (v41)
            {
              v51 = MEMORY[0x277D42620];
              context = objc_autoreleasePoolPush();
              v47 = objc_alloc(MEMORY[0x277CBEB98]);
              v42 = objc_opt_class();
              v43 = objc_opt_class();
              v48 = [v47 initWithObjects:{v42, v43, objc_opt_class(), 0}];
              objc_autoreleasePoolPop(context);
              v44 = __atxlog_handle_anchor();
              v45 = [v51 robustDecodeObjectOfClasses:v48 forKey:@"codingKeyForCandidateClassifier" withCoder:coderCopy expectNonNull:0 errorDomain:@"com.apple.proactive.AnchorModelPrediction" errorCode:-1 logHandle:v44];

              self = [(ATXAnchorModelPrediction *)self initWithAnchorType:v8 anchorEvent:v12 candidateType:v16 candidateId:v20 dateIntervalForPrediction:v24 score:v27 numUniqueOccurrencesAfterAnchor:v26 posteriorProbability:v29 classConditionalProbability:v31 standardDeviationOfOffsetFromAnchor:v33 anchorPopularity:v35 globalPopularity:v37 offsetFromAnchorToShowPrediction:v53 candidateClassifier:v45];
              selfCopy = self;
              v46 = v53;
            }

            else
            {
              selfCopy = 0;
              v46 = 0;
            }
          }
        }

        else
        {
          selfCopy = 0;
        }
      }

      else
      {
        selfCopy = 0;
      }
    }

    else
    {
      selfCopy = 0;
    }
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

@end