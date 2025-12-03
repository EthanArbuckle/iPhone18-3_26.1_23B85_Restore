@interface HKScoredAssessment
+ (id)assessmentWithDate:(id)date type:(id)type score:(int64_t)score metadata:(id)metadata config:(id)config;
- (BOOL)isEquivalent:(id)equivalent;
- (HKScoredAssessment)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKScoredAssessment

+ (id)assessmentWithDate:(id)date type:(id)type score:(int64_t)score metadata:(id)metadata config:(id)config
{
  configCopy = config;
  metadataCopy = metadata;
  typeCopy = type;
  dateCopy = date;
  if ([metadataCopy count])
  {
    v16 = metadataCopy;
  }

  else
  {
    v16 = 0;
  }

  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __68__HKScoredAssessment_assessmentWithDate_type_score_metadata_config___block_invoke;
  v21[3] = &unk_1E73852B8;
  v22 = configCopy;
  scoreCopy = score;
  v20.receiver = self;
  v20.super_class = &OBJC_METACLASS___HKScoredAssessment;
  v17 = configCopy;
  v18 = objc_msgSendSuper2(&v20, sel__newSampleFromDatesWithType_startDate_endDate_device_metadata_config_, typeCopy, dateCopy, dateCopy, 0, v16, v21);

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

- (BOOL)isEquivalent:(id)equivalent
{
  equivalentCopy = equivalent;
  v7.receiver = self;
  v7.super_class = HKScoredAssessment;
  if ([(HKSample *)&v7 isEquivalent:equivalentCopy])
  {
    v5 = self->_score == equivalentCopy[12];
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
  sampleType = [(HKSample *)self sampleType];
  startDate = [(HKSample *)self startDate];
  v7 = [v3 stringWithFormat:@"<%@:%p type: %@, date: %@, score: %ld>", v4, self, sampleType, startDate, -[HKScoredAssessment score](self, "score")];

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = HKScoredAssessment;
  coderCopy = coder;
  [(HKSample *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInteger:self->_score forKey:{@"Score", v5.receiver, v5.super_class}];
}

- (HKScoredAssessment)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = HKScoredAssessment;
  v5 = [(HKSample *)&v7 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_score = [coderCopy decodeIntegerForKey:@"Score"];
  }

  return v5;
}

@end