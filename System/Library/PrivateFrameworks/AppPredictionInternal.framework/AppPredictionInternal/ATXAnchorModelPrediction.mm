@interface ATXAnchorModelPrediction
- (ATXAnchorModelPrediction)initWithAnchorType:(id)a3 anchorEvent:(id)a4 candidateType:(id)a5 candidateId:(id)a6 dateIntervalForPrediction:(id)a7 score:(double)a8 numUniqueOccurrencesAfterAnchor:(unint64_t)a9 posteriorProbability:(double)a10 classConditionalProbability:(double)a11 standardDeviationOfOffsetFromAnchor:(double)a12 anchorPopularity:(double)a13 globalPopularity:(double)a14 offsetFromAnchorToShowPrediction:(id)a15 candidateClassifier:(id)a16;
- (ATXAnchorModelPrediction)initWithCoder:(id)a3;
- (BOOL)checkAndReportDecodingFailureIfNeededForNSInteger:(int64_t)a3 key:(id)a4 coder:(id)a5 errorDomain:(id)a6 errorCode:(int64_t)a7;
- (BOOL)checkAndReportDecodingFailureIfNeededFordouble:(double)a3 key:(id)a4 coder:(id)a5 errorDomain:(id)a6 errorCode:(int64_t)a7;
- (BOOL)isEqual:(id)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ATXAnchorModelPrediction

- (ATXAnchorModelPrediction)initWithAnchorType:(id)a3 anchorEvent:(id)a4 candidateType:(id)a5 candidateId:(id)a6 dateIntervalForPrediction:(id)a7 score:(double)a8 numUniqueOccurrencesAfterAnchor:(unint64_t)a9 posteriorProbability:(double)a10 classConditionalProbability:(double)a11 standardDeviationOfOffsetFromAnchor:(double)a12 anchorPopularity:(double)a13 globalPopularity:(double)a14 offsetFromAnchorToShowPrediction:(id)a15 candidateClassifier:(id)a16
{
  v27 = a3;
  v42 = a4;
  v28 = a5;
  v29 = a6;
  v41 = a7;
  v30 = a15;
  v31 = a16;
  v43.receiver = self;
  v43.super_class = ATXAnchorModelPrediction;
  v32 = [(ATXAnchorModelPrediction *)&v43 init];
  if (v32)
  {
    v33 = [v27 copy];
    anchorType = v32->_anchorType;
    v32->_anchorType = v33;

    objc_storeStrong(&v32->_anchorEvent, a4);
    v35 = [v28 copy];
    candidateType = v32->_candidateType;
    v32->_candidateType = v35;

    v37 = [v29 copy];
    candidateId = v32->_candidateId;
    v32->_candidateId = v37;

    objc_storeStrong(&v32->_dateIntervalForPrediction, a7);
    v32->_score = a8;
    v32->_numUniqueOccurrencesAfterAnchor = a9;
    v32->_posteriorProbability = a10;
    v32->_classConditionalProbability = a11;
    v32->_standardDeviationOfOffsetFromAnchor = a12;
    v32->_anchorPopularity = a13;
    v32->_globalPopularity = a14;
    objc_storeStrong(&v32->_offsetFromAnchorToShowPrediction, a15);
    objc_storeStrong(&v32->_candidateClassifier, a16);
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

- (BOOL)checkAndReportDecodingFailureIfNeededForNSInteger:(int64_t)a3 key:(id)a4 coder:(id)a5 errorDomain:(id)a6 errorCode:(int64_t)a7
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

- (BOOL)checkAndReportDecodingFailureIfNeededFordouble:(double)a3 key:(id)a4 coder:(id)a5 errorDomain:(id)a6 errorCode:(int64_t)a7
{
  v23[1] = *MEMORY[0x277D85DE8];
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (a3 == 0.0)
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
  anchorType = self->_anchorType;
  v5 = a3;
  [v5 encodeObject:anchorType forKey:@"codingKeyForAnchorType"];
  [v5 encodeObject:self->_anchorEvent forKey:@"codingKeyForAnchorEvent"];
  [v5 encodeObject:self->_candidateType forKey:@"codingKeyForCandidateType"];
  [v5 encodeObject:self->_candidateId forKey:@"codingKeyForCandidateId"];
  [v5 encodeObject:self->_dateIntervalForPrediction forKey:@"codingKeyForPredictionDateInterval"];
  [v5 encodeDouble:@"codingKeyForScore" forKey:self->_score];
  [v5 encodeInteger:self->_numUniqueOccurrencesAfterAnchor forKey:@"codingKeyForNumUniqueOccurrencesAfterAnchor"];
  [v5 encodeDouble:@"codingKeyForPosteriorProbability" forKey:self->_posteriorProbability];
  [v5 encodeDouble:@"codingKeyForClassConditionalProbability" forKey:self->_classConditionalProbability];
  [v5 encodeDouble:@"codingKeyForStandardDeviationOfOffsetFromAnchor" forKey:self->_standardDeviationOfOffsetFromAnchor];
  [v5 encodeDouble:@"codingKeyForAnchorPopularity" forKey:self->_anchorPopularity];
  [v5 encodeDouble:@"codingKeyForGlobalPopularity" forKey:self->_globalPopularity];
  [v5 encodeObject:self->_offsetFromAnchorToShowPrediction forKey:@"codingKeyForAnchorOffset"];
  [v5 encodeObject:self->_candidateClassifier forKey:@"codingKeyForCandidateClassifier"];
}

- (ATXAnchorModelPrediction)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x277D42620];
  v6 = objc_opt_class();
  v7 = __atxlog_handle_anchor();
  v8 = [v5 robustDecodeObjectOfClass:v6 forKey:@"codingKeyForAnchorType" withCoder:v4 expectNonNull:1 errorDomain:@"com.apple.proactive.AnchorModelPrediction" errorCode:-1 logHandle:v7];

  if (v8)
  {
    v9 = MEMORY[0x277D42620];
    v10 = objc_opt_class();
    v11 = __atxlog_handle_anchor();
    v12 = [v9 robustDecodeObjectOfClass:v10 forKey:@"codingKeyForAnchorEvent" withCoder:v4 expectNonNull:1 errorDomain:@"com.apple.proactive.AnchorModelPrediction" errorCode:-1 logHandle:v11];

    if (v12)
    {
      v13 = MEMORY[0x277D42620];
      v14 = objc_opt_class();
      v15 = __atxlog_handle_anchor();
      v16 = [v13 robustDecodeObjectOfClass:v14 forKey:@"codingKeyForCandidateType" withCoder:v4 expectNonNull:1 errorDomain:@"com.apple.proactive.AnchorModelPrediction" errorCode:-1 logHandle:v15];

      if (v16)
      {
        v17 = MEMORY[0x277D42620];
        v18 = objc_opt_class();
        v19 = __atxlog_handle_anchor();
        v20 = [v17 robustDecodeObjectOfClass:v18 forKey:@"codingKeyForCandidateId" withCoder:v4 expectNonNull:1 errorDomain:@"com.apple.proactive.AnchorModelPrediction" errorCode:-1 logHandle:v19];

        if (v20)
        {
          v21 = MEMORY[0x277D42620];
          v22 = objc_opt_class();
          v23 = __atxlog_handle_anchor();
          v24 = [v21 robustDecodeObjectOfClass:v22 forKey:@"codingKeyForPredictionDateInterval" withCoder:v4 expectNonNull:1 errorDomain:@"com.apple.proactive.AnchorModelPrediction" errorCode:-1 logHandle:v23];

          if (!v24)
          {
            goto LABEL_13;
          }

          [v4 decodeDoubleForKey:@"codingKeyForScore"];
          v26 = v25;
          if ([(ATXAnchorModelPrediction *)self checkAndReportDecodingFailureIfNeededFordouble:@"codingKeyForScore" key:v4 coder:@"com.apple.proactive.AnchorModelPrediction" errorDomain:-1 errorCode:?])
          {
            goto LABEL_13;
          }

          v27 = [v4 decodeIntegerForKey:@"codingKeyForNumUniqueOccurrencesAfterAnchor"];
          if ([(ATXAnchorModelPrediction *)self checkAndReportDecodingFailureIfNeededForNSInteger:v26 key:@"codingKeyForNumUniqueOccurrencesAfterAnchor" coder:v4 errorDomain:@"com.apple.proactive.AnchorModelPrediction" errorCode:-1])
          {
            goto LABEL_13;
          }

          [v4 decodeDoubleForKey:@"codingKeyForPosteriorProbability"];
          v29 = v28;
          if ([(ATXAnchorModelPrediction *)self checkAndReportDecodingFailureIfNeededFordouble:@"codingKeyForPosteriorProbability" key:v4 coder:@"com.apple.proactive.AnchorModelPrediction" errorDomain:-1 errorCode:v26])
          {
            goto LABEL_13;
          }

          [v4 decodeDoubleForKey:@"codingKeyForClassConditionalProbability"];
          v31 = v30;
          if (-[ATXAnchorModelPrediction checkAndReportDecodingFailureIfNeededFordouble:key:coder:errorDomain:errorCode:](self, "checkAndReportDecodingFailureIfNeededFordouble:key:coder:errorDomain:errorCode:", @"codingKeyForClassConditionalProbability", v4, @"com.apple.proactive.AnchorModelPrediction", -1, v26) || ([v4 decodeDoubleForKey:@"codingKeyForStandardDeviationOfOffsetFromAnchor"], v33 = v32, -[ATXAnchorModelPrediction checkAndReportDecodingFailureIfNeededFordouble:key:coder:errorDomain:errorCode:](self, "checkAndReportDecodingFailureIfNeededFordouble:key:coder:errorDomain:errorCode:", @"codingKeyForStandardDeviationOfOffsetFromAnchor", v4, @"com.apple.proactive.AnchorModelPrediction", -1, v26)) || (objc_msgSend(v4, "decodeDoubleForKey:", @"codingKeyForAnchorPopularity"), v35 = v34, -[ATXAnchorModelPrediction checkAndReportDecodingFailureIfNeededFordouble:key:coder:errorDomain:errorCode:](self, "checkAndReportDecodingFailureIfNeededFordouble:key:coder:errorDomain:errorCode:", @"codingKeyForAnchorPopularity", v4, @"com.apple.proactive.AnchorModelPrediction", -1, v26)) || (objc_msgSend(v4, "decodeDoubleForKey:", @"codingKeyForGlobalPopularity"), v37 = v36, -[ATXAnchorModelPrediction checkAndReportDecodingFailureIfNeededFordouble:key:coder:errorDomain:errorCode:](self, "checkAndReportDecodingFailureIfNeededFordouble:key:coder:errorDomain:errorCode:", @"codingKeyForGlobalPopularity", v4, @"com.apple.proactive.AnchorModelPrediction", -1, v26)))
          {
LABEL_13:
            v38 = 0;
          }

          else
          {
            v40 = MEMORY[0x277D42620];
            v50 = objc_opt_class();
            v52 = __atxlog_handle_anchor();
            v41 = [v40 robustDecodeObjectOfClass:v50 forKey:@"codingKeyForAnchorOffset" withCoder:v4 expectNonNull:1 errorDomain:@"com.apple.proactive.AnchorModelPrediction" errorCode:-1 logHandle:v52];

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
              v45 = [v51 robustDecodeObjectOfClasses:v48 forKey:@"codingKeyForCandidateClassifier" withCoder:v4 expectNonNull:0 errorDomain:@"com.apple.proactive.AnchorModelPrediction" errorCode:-1 logHandle:v44];

              self = [(ATXAnchorModelPrediction *)self initWithAnchorType:v8 anchorEvent:v12 candidateType:v16 candidateId:v20 dateIntervalForPrediction:v24 score:v27 numUniqueOccurrencesAfterAnchor:v26 posteriorProbability:v29 classConditionalProbability:v31 standardDeviationOfOffsetFromAnchor:v33 anchorPopularity:v35 globalPopularity:v37 offsetFromAnchorToShowPrediction:v53 candidateClassifier:v45];
              v38 = self;
              v46 = v53;
            }

            else
            {
              v38 = 0;
              v46 = 0;
            }
          }
        }

        else
        {
          v38 = 0;
        }
      }

      else
      {
        v38 = 0;
      }
    }

    else
    {
      v38 = 0;
    }
  }

  else
  {
    v38 = 0;
  }

  return v38;
}

@end