@interface HKPHQ9Assessment
+ (id)assessmentWithDate:(id)date answers:(id)answers metadata:(id)metadata;
+ (int64_t)_riskForAnswers:(id)answers;
+ (int64_t)_scoreForAnswers:(id)answers;
- (BOOL)isEquivalent:(id)equivalent;
- (HKPHQ9Assessment)initWithCoder:(id)coder;
- (HKPHQ9Assessment)initWithDate:(id)date answers:(id)answers metadata:(id)metadata;
- (NSString)description;
- (id)_validateWithConfiguration:(HKObjectValidationConfiguration)configuration;
- (void)_validateAnswers:(id)answers;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKPHQ9Assessment

+ (id)assessmentWithDate:(id)date answers:(id)answers metadata:(id)metadata
{
  answersCopy = answers;
  metadataCopy = metadata;
  dateCopy = date;
  v11 = [(HKObjectType *)HKScoredAssessmentType scoredAssessmentTypeForIdentifier:@"HKScoredAssessmentTypeIdentifierPHQ9"];
  v12 = [HKPHQ9Assessment _scoreForAnswers:answersCopy];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __56__HKPHQ9Assessment_assessmentWithDate_answers_metadata___block_invoke;
  v17[3] = &unk_1E7376AE8;
  v18 = answersCopy;
  v16.receiver = self;
  v16.super_class = &OBJC_METACLASS___HKPHQ9Assessment;
  v13 = answersCopy;
  v14 = objc_msgSendSuper2(&v16, sel_assessmentWithDate_type_score_metadata_config_, dateCopy, v11, v12, metadataCopy, v17);

  return v14;
}

uint64_t __56__HKPHQ9Assessment_assessmentWithDate_answers_metadata___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v7 = a2;
  v4 = [v3 copy];
  v5 = v7[13];
  v7[13] = v4;

  v7[14] = [HKPHQ9Assessment _riskForAnswers:*(a1 + 32)];

  return MEMORY[0x1EEE66BB8]();
}

- (HKPHQ9Assessment)initWithDate:(id)date answers:(id)answers metadata:(id)metadata
{
  v6 = [HKPHQ9Assessment assessmentWithDate:date answers:answers metadata:metadata];

  return v6;
}

+ (int64_t)_scoreForAnswers:(id)answers
{
  v18 = *MEMORY[0x1E69E9840];
  answersCopy = answers;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [answersCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v14;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(answersCopy);
        }

        v6 += [*(*(&v13 + 1) + 8 * i) integerValue];
      }

      v5 = [answersCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  if ([answersCopy count] == 9)
  {
    v9 = [answersCopy objectAtIndexedSubscript:8];
    integerValue = [v9 integerValue];

    if (integerValue == 4)
    {
      v6 -= 4;
    }
  }

  v11 = *MEMORY[0x1E69E9840];
  return v6;
}

+ (int64_t)_riskForAnswers:(id)answers
{
  v3 = [HKPHQ9Assessment _scoreForAnswers:answers];
  if (v3 < 5)
  {
    return 1;
  }

  if (v3 < 0xA)
  {
    return 2;
  }

  v4 = 4;
  if (v3 > 0x13)
  {
    v4 = 5;
  }

  if (v3 >= 0xF)
  {
    return v4;
  }

  else
  {
    return 3;
  }
}

- (id)_validateWithConfiguration:(HKObjectValidationConfiguration)configuration
{
  v8.receiver = self;
  v8.super_class = HKPHQ9Assessment;
  v4 = [(HKSample *)&v8 _validateWithConfiguration:configuration.var0, configuration.var1];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    [(HKPHQ9Assessment *)self _validateAnswers:self->_answers];
  }

  return v5;
}

- (void)_validateAnswers:(id)answers
{
  v20 = *MEMORY[0x1E69E9840];
  answersCopy = answers;
  if ([answersCopy count] != 9)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%@ requires 9 answers.", objc_opt_class()}];
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [answersCopy subarrayWithRange:{0, 8}];
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    v8 = *MEMORY[0x1E695D940];
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        if ([v10 integerValue] > 3 || objc_msgSend(v10, "integerValue") < 0)
        {
          [MEMORY[0x1E695DF30] raise:v8 format:{@"%@ answer for questions #1-8 must be on a scale of 0 to 3.", objc_opt_class()}];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  v11 = [answersCopy objectAtIndexedSubscript:8];
  if ([v11 integerValue] >= 5)
  {

LABEL_17:
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%@ answer for questions #9 must be on a scale of 0 to 3 or unanswered.", objc_opt_class()}];
    goto LABEL_18;
  }

  v12 = [answersCopy objectAtIndexedSubscript:8];
  integerValue = [v12 integerValue];

  if (integerValue < 0)
  {
    goto LABEL_17;
  }

LABEL_18:

  v14 = *MEMORY[0x1E69E9840];
}

- (BOOL)isEquivalent:(id)equivalent
{
  equivalentCopy = equivalent;
  v8.receiver = self;
  v8.super_class = HKPHQ9Assessment;
  if ([(HKScoredAssessment *)&v8 isEquivalent:equivalentCopy])
  {
    v5 = equivalentCopy;
    if ([(NSArray *)self->_answers isEqual:v5[13]])
    {
      v6 = self->_risk == v5[14];
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (NSString)description
{
  v9.receiver = self;
  v9.super_class = HKPHQ9Assessment;
  v3 = [(HKScoredAssessment *)&v9 description];
  sampleType = [(HKSample *)self sampleType];
  startDate = [(HKSample *)self startDate];
  answers = [(HKPHQ9Assessment *)self answers];
  v7 = [v3 stringByAppendingFormat:@"type: %@, date: %@, answers: %@, score: %ld, risk: %ld", sampleType, startDate, answers, -[HKScoredAssessment score](self, "score"), -[HKPHQ9Assessment risk](self, "risk")];

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = HKPHQ9Assessment;
  coderCopy = coder;
  [(HKScoredAssessment *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_answers forKey:{@"Answers", v5.receiver, v5.super_class}];
  [coderCopy encodeInteger:self->_risk forKey:@"Risk"];
}

- (HKPHQ9Assessment)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = HKPHQ9Assessment;
  v5 = [(HKScoredAssessment *)&v10 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [MEMORY[0x1E695DFD8] hk_typesForArrayOf:objc_opt_class()];
    v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"Answers"];
    answers = v5->_answers;
    v5->_answers = v7;

    v5->_risk = [coderCopy decodeIntegerForKey:@"Risk"];
  }

  return v5;
}

@end