@interface HKPHQ9Assessment
+ (id)assessmentWithDate:(id)a3 answers:(id)a4 metadata:(id)a5;
+ (int64_t)_riskForAnswers:(id)a3;
+ (int64_t)_scoreForAnswers:(id)a3;
- (BOOL)isEquivalent:(id)a3;
- (HKPHQ9Assessment)initWithCoder:(id)a3;
- (HKPHQ9Assessment)initWithDate:(id)a3 answers:(id)a4 metadata:(id)a5;
- (NSString)description;
- (id)_validateWithConfiguration:(HKObjectValidationConfiguration)a3;
- (void)_validateAnswers:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKPHQ9Assessment

+ (id)assessmentWithDate:(id)a3 answers:(id)a4 metadata:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = a3;
  v11 = [(HKObjectType *)HKScoredAssessmentType scoredAssessmentTypeForIdentifier:@"HKScoredAssessmentTypeIdentifierPHQ9"];
  v12 = [HKPHQ9Assessment _scoreForAnswers:v8];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __56__HKPHQ9Assessment_assessmentWithDate_answers_metadata___block_invoke;
  v17[3] = &unk_1E7376AE8;
  v18 = v8;
  v16.receiver = a1;
  v16.super_class = &OBJC_METACLASS___HKPHQ9Assessment;
  v13 = v8;
  v14 = objc_msgSendSuper2(&v16, sel_assessmentWithDate_type_score_metadata_config_, v10, v11, v12, v9, v17);

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

- (HKPHQ9Assessment)initWithDate:(id)a3 answers:(id)a4 metadata:(id)a5
{
  v6 = [HKPHQ9Assessment assessmentWithDate:a3 answers:a4 metadata:a5];

  return v6;
}

+ (int64_t)_scoreForAnswers:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(v3);
        }

        v6 += [*(*(&v13 + 1) + 8 * i) integerValue];
      }

      v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  if ([v3 count] == 9)
  {
    v9 = [v3 objectAtIndexedSubscript:8];
    v10 = [v9 integerValue];

    if (v10 == 4)
    {
      v6 -= 4;
    }
  }

  v11 = *MEMORY[0x1E69E9840];
  return v6;
}

+ (int64_t)_riskForAnswers:(id)a3
{
  v3 = [HKPHQ9Assessment _scoreForAnswers:a3];
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

- (id)_validateWithConfiguration:(HKObjectValidationConfiguration)a3
{
  v8.receiver = self;
  v8.super_class = HKPHQ9Assessment;
  v4 = [(HKSample *)&v8 _validateWithConfiguration:a3.var0, a3.var1];
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

- (void)_validateAnswers:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if ([v3 count] != 9)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%@ requires 9 answers.", objc_opt_class()}];
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [v3 subarrayWithRange:{0, 8}];
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

  v11 = [v3 objectAtIndexedSubscript:8];
  if ([v11 integerValue] >= 5)
  {

LABEL_17:
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%@ answer for questions #9 must be on a scale of 0 to 3 or unanswered.", objc_opt_class()}];
    goto LABEL_18;
  }

  v12 = [v3 objectAtIndexedSubscript:8];
  v13 = [v12 integerValue];

  if (v13 < 0)
  {
    goto LABEL_17;
  }

LABEL_18:

  v14 = *MEMORY[0x1E69E9840];
}

- (BOOL)isEquivalent:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = HKPHQ9Assessment;
  if ([(HKScoredAssessment *)&v8 isEquivalent:v4])
  {
    v5 = v4;
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
  v4 = [(HKSample *)self sampleType];
  v5 = [(HKSample *)self startDate];
  v6 = [(HKPHQ9Assessment *)self answers];
  v7 = [v3 stringByAppendingFormat:@"type: %@, date: %@, answers: %@, score: %ld, risk: %ld", v4, v5, v6, -[HKScoredAssessment score](self, "score"), -[HKPHQ9Assessment risk](self, "risk")];

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = HKPHQ9Assessment;
  v4 = a3;
  [(HKScoredAssessment *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_answers forKey:{@"Answers", v5.receiver, v5.super_class}];
  [v4 encodeInteger:self->_risk forKey:@"Risk"];
}

- (HKPHQ9Assessment)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = HKPHQ9Assessment;
  v5 = [(HKScoredAssessment *)&v10 initWithCoder:v4];
  if (v5)
  {
    v6 = [MEMORY[0x1E695DFD8] hk_typesForArrayOf:objc_opt_class()];
    v7 = [v4 decodeObjectOfClasses:v6 forKey:@"Answers"];
    answers = v5->_answers;
    v5->_answers = v7;

    v5->_risk = [v4 decodeIntegerForKey:@"Risk"];
  }

  return v5;
}

@end