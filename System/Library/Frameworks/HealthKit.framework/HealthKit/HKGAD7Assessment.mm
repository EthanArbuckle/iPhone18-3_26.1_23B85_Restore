@interface HKGAD7Assessment
+ (id)assessmentWithDate:(id)date answers:(id)answers metadata:(id)metadata;
+ (int64_t)_riskForAnswers:(id)answers;
+ (int64_t)_scoreForAnswers:(id)answers;
- (BOOL)isEquivalent:(id)equivalent;
- (HKGAD7Assessment)initWithCoder:(id)coder;
- (HKGAD7Assessment)initWithDate:(id)date answers:(id)answers metadata:(id)metadata;
- (NSString)description;
- (id)_validateWithConfiguration:(HKObjectValidationConfiguration)configuration;
- (void)_validateAnswers:(id)answers;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKGAD7Assessment

+ (id)assessmentWithDate:(id)date answers:(id)answers metadata:(id)metadata
{
  answersCopy = answers;
  metadataCopy = metadata;
  dateCopy = date;
  v11 = [(HKObjectType *)HKScoredAssessmentType scoredAssessmentTypeForIdentifier:@"HKScoredAssessmentTypeIdentifierGAD7"];
  v12 = [HKGAD7Assessment _scoreForAnswers:answersCopy];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __56__HKGAD7Assessment_assessmentWithDate_answers_metadata___block_invoke;
  v17[3] = &unk_1E7376AE8;
  v18 = answersCopy;
  v16.receiver = self;
  v16.super_class = &OBJC_METACLASS___HKGAD7Assessment;
  v13 = answersCopy;
  v14 = objc_msgSendSuper2(&v16, sel_assessmentWithDate_type_score_metadata_config_, dateCopy, v11, v12, metadataCopy, v17);

  return v14;
}

uint64_t __56__HKGAD7Assessment_assessmentWithDate_answers_metadata___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v7 = a2;
  v4 = [v3 copy];
  v5 = v7[13];
  v7[13] = v4;

  v7[14] = [HKGAD7Assessment _riskForAnswers:*(a1 + 32)];

  return MEMORY[0x1EEE66BB8]();
}

- (HKGAD7Assessment)initWithDate:(id)date answers:(id)answers metadata:(id)metadata
{
  v6 = [HKGAD7Assessment assessmentWithDate:date answers:answers metadata:metadata];

  return v6;
}

+ (int64_t)_scoreForAnswers:(id)answers
{
  v16 = *MEMORY[0x1E69E9840];
  answersCopy = answers;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [answersCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(answersCopy);
        }

        v6 += [*(*(&v11 + 1) + 8 * i) integerValue];
      }

      v5 = [answersCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  v9 = *MEMORY[0x1E69E9840];
  return v6;
}

+ (int64_t)_riskForAnswers:(id)answers
{
  v3 = [HKGAD7Assessment _scoreForAnswers:answers];
  if (v3 < 5)
  {
    return 1;
  }

  v4 = 3;
  if (v3 > 0xE)
  {
    v4 = 4;
  }

  if (v3 >= 0xA)
  {
    return v4;
  }

  else
  {
    return 2;
  }
}

- (id)_validateWithConfiguration:(HKObjectValidationConfiguration)configuration
{
  v8.receiver = self;
  v8.super_class = HKGAD7Assessment;
  v4 = [(HKSample *)&v8 _validateWithConfiguration:configuration.var0, configuration.var1];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    [(HKGAD7Assessment *)self _validateAnswers:self->_answers];
  }

  return v5;
}

- (void)_validateAnswers:(id)answers
{
  v19 = *MEMORY[0x1E69E9840];
  answersCopy = answers;
  v4 = [answersCopy count];
  v5 = MEMORY[0x1E695D940];
  if (v4 != 7)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%@ requires 7 answers.", objc_opt_class()}];
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = answersCopy;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    v10 = *v5;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v14 + 1) + 8 * i);
        if ([v12 integerValue] > 3 || objc_msgSend(v12, "integerValue") < 0)
        {
          [MEMORY[0x1E695DF30] raise:v10 format:{@"%@ answer must be on a scale of 0 to 3.", objc_opt_class()}];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (BOOL)isEquivalent:(id)equivalent
{
  equivalentCopy = equivalent;
  v8.receiver = self;
  v8.super_class = HKGAD7Assessment;
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
  v9.super_class = HKGAD7Assessment;
  v3 = [(HKScoredAssessment *)&v9 description];
  sampleType = [(HKSample *)self sampleType];
  startDate = [(HKSample *)self startDate];
  answers = [(HKGAD7Assessment *)self answers];
  v7 = [v3 stringByAppendingFormat:@"type: %@, date: %@, answers: %@, score: %ld, risk: %ld", sampleType, startDate, answers, -[HKScoredAssessment score](self, "score"), -[HKGAD7Assessment risk](self, "risk")];

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = HKGAD7Assessment;
  coderCopy = coder;
  [(HKScoredAssessment *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_answers forKey:{@"Answers", v5.receiver, v5.super_class}];
  [coderCopy encodeInteger:self->_risk forKey:@"Risk"];
}

- (HKGAD7Assessment)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = HKGAD7Assessment;
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