@interface HKScoredAssessment
+ (id)assessmentWithDate:(id)a3 type:(id)a4 score:(int64_t)a5 metadata:(id)a6 config:(id)a7;
- (BOOL)isEquivalent:(id)a3;
- (HKScoredAssessment)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKScoredAssessment

+ (id)assessmentWithDate:(id)a3 type:(id)a4 score:(int64_t)a5 metadata:(id)a6 config:(id)a7
{
  v12 = a7;
  v13 = a6;
  v14 = a4;
  v15 = a3;
  if ([v13 count])
  {
    v16 = v13;
  }

  else
  {
    v16 = 0;
  }

  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __68__HKScoredAssessment_assessmentWithDate_type_score_metadata_config___block_invoke;
  v21[3] = &unk_1E73852B8;
  v22 = v12;
  v23 = a5;
  v20.receiver = a1;
  v20.super_class = &OBJC_METACLASS___HKScoredAssessment;
  v17 = v12;
  v18 = objc_msgSendSuper2(&v20, sel__newSampleFromDatesWithType_startDate_endDate_device_metadata_config_, v14, v15, v15, 0, v16, v21);

  return v18;
}

uint64_t __68__HKScoredAssessment_assessmentWithDate_type_score_metadata_config___block_invoke(uint64_t a1, uint64_t a2)
{
  *(a2 + 96) = *(a1 + 40);
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (BOOL)isEquivalent:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = HKScoredAssessment;
  if ([(HKSample *)&v7 isEquivalent:v4])
  {
    v5 = self->_score == v4[12];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(HKSample *)self sampleType];
  v6 = [(HKSample *)self startDate];
  v7 = [v3 stringWithFormat:@"<%@:%p type: %@, date: %@, score: %ld>", v4, self, v5, v6, -[HKScoredAssessment score](self, "score")];

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = HKScoredAssessment;
  v4 = a3;
  [(HKSample *)&v5 encodeWithCoder:v4];
  [v4 encodeInteger:self->_score forKey:{@"Score", v5.receiver, v5.super_class}];
}

- (HKScoredAssessment)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = HKScoredAssessment;
  v5 = [(HKSample *)&v7 initWithCoder:v4];
  if (v5)
  {
    v5->_score = [v4 decodeIntegerForKey:@"Score"];
  }

  return v5;
}

@end