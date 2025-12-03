@interface HealthSampleUpdateRecord
- (HealthSampleUpdateRecord)initWithCoder:(id)coder;
- (HealthSampleUpdateRecord)initWithRecordType:(unint64_t)type initialSample:(id)sample;
- (NSDateInterval)currentStateDuration;
- (NSDateInterval)previousStateDuration;
- (NSError)currentStateError;
- (NSError)previousStateError;
- (NSNumber)currentState;
- (NSNumber)previousState;
- (id)dict;
- (id)updatedRecordWithHealthSample:(id)sample;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HealthSampleUpdateRecord

- (HealthSampleUpdateRecord)initWithRecordType:(unint64_t)type initialSample:(id)sample
{
  sampleCopy = sample;
  v13.receiver = self;
  v13.super_class = HealthSampleUpdateRecord;
  v8 = [(HealthSampleUpdateRecord *)&v13 init];
  v9 = v8;
  if (v8)
  {
    previousStateFirstSample = v8->_previousStateFirstSample;
    v8->_type = type;
    v8->_previousStateFirstSample = 0;

    previousStateLastSample = v9->_previousStateLastSample;
    v9->_previousStateLastSample = 0;

    objc_storeStrong(&v9->_currentStateFirstSample, sample);
    objc_storeStrong(&v9->_currentStateMostRecentSample, sample);
  }

  return v9;
}

- (id)updatedRecordWithHealthSample:(id)sample
{
  sampleCopy = sample;
  v5 = objc_alloc_init(HealthSampleUpdateRecord);
  v5->_type = [(HealthSampleUpdateRecord *)self type];
  currentStateMostRecentSample = [(HealthSampleUpdateRecord *)self currentStateMostRecentSample];
  v7 = [currentStateMostRecentSample sameValueAndErrorAsHealthSample:sampleCopy forType:{-[HealthSampleUpdateRecord type](self, "type")}];

  if (v7)
  {
    previousStateFirstSample = [(HealthSampleUpdateRecord *)self previousStateFirstSample];
    previousStateFirstSample = v5->_previousStateFirstSample;
    v5->_previousStateFirstSample = previousStateFirstSample;

    previousStateLastSample = [(HealthSampleUpdateRecord *)self previousStateLastSample];
    previousStateLastSample = v5->_previousStateLastSample;
    v5->_previousStateLastSample = previousStateLastSample;

    currentStateFirstSample = [(HealthSampleUpdateRecord *)self currentStateFirstSample];
  }

  else
  {
    currentStateFirstSample2 = [(HealthSampleUpdateRecord *)self currentStateFirstSample];
    v14 = v5->_previousStateFirstSample;
    v5->_previousStateFirstSample = currentStateFirstSample2;

    currentStateMostRecentSample2 = [(HealthSampleUpdateRecord *)self currentStateMostRecentSample];
    v16 = v5->_previousStateLastSample;
    v5->_previousStateLastSample = currentStateMostRecentSample2;

    currentStateFirstSample = sampleCopy;
  }

  currentStateFirstSample = v5->_currentStateFirstSample;
  v5->_currentStateFirstSample = currentStateFirstSample;

  currentStateMostRecentSample = v5->_currentStateMostRecentSample;
  v5->_currentStateMostRecentSample = sampleCopy;

  return v5;
}

- (HealthSampleUpdateRecord)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = HealthSampleUpdateRecord;
  v5 = [(HealthSampleUpdateRecord *)&v15 init];
  if (v5)
  {
    v5->_type = [coderCopy decodeIntegerForKey:@"type"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"previousStateFirstSample"];
    previousStateFirstSample = v5->_previousStateFirstSample;
    v5->_previousStateFirstSample = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"previousStateLastSample"];
    previousStateLastSample = v5->_previousStateLastSample;
    v5->_previousStateLastSample = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"currentStateFirstSample"];
    currentStateFirstSample = v5->_currentStateFirstSample;
    v5->_currentStateFirstSample = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"currentStateMostRecentSample"];
    currentStateMostRecentSample = v5->_currentStateMostRecentSample;
    v5->_currentStateMostRecentSample = v12;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:-[HealthSampleUpdateRecord type](self forKey:{"type"), @"type"}];
  previousStateFirstSample = [(HealthSampleUpdateRecord *)self previousStateFirstSample];
  [coderCopy encodeObject:previousStateFirstSample forKey:@"previousStateFirstSample"];

  previousStateLastSample = [(HealthSampleUpdateRecord *)self previousStateLastSample];
  [coderCopy encodeObject:previousStateLastSample forKey:@"previousStateLastSample"];

  currentStateFirstSample = [(HealthSampleUpdateRecord *)self currentStateFirstSample];
  [coderCopy encodeObject:currentStateFirstSample forKey:@"currentStateFirstSample"];

  currentStateMostRecentSample = [(HealthSampleUpdateRecord *)self currentStateMostRecentSample];
  [coderCopy encodeObject:currentStateMostRecentSample forKey:@"currentStateMostRecentSample"];
}

- (NSNumber)previousState
{
  v3 = [(HealthSampleUpdateRecord *)self type]- 3;
  if (v3 > 2)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(&off_100010710 + v3);
  }

  previousStateLastSample = [(HealthSampleUpdateRecord *)self previousStateLastSample];
  v6 = [previousStateLastSample valueForKeyPath:v4];

  return v6;
}

- (NSError)previousStateError
{
  v3 = sub_1000061E8([(HealthSampleUpdateRecord *)self type]);
  previousStateLastSample = [(HealthSampleUpdateRecord *)self previousStateLastSample];
  v5 = [previousStateLastSample valueForKeyPath:v3];

  return v5;
}

- (NSDateInterval)previousStateDuration
{
  previousStateFirstSample = [(HealthSampleUpdateRecord *)self previousStateFirstSample];
  if (previousStateFirstSample && (v4 = previousStateFirstSample, [(HealthSampleUpdateRecord *)self previousStateLastSample], v5 = objc_claimAutoreleasedReturnValue(), v5, v4, v5))
  {
    v6 = [NSDateInterval alloc];
    previousStateFirstSample2 = [(HealthSampleUpdateRecord *)self previousStateFirstSample];
    timestamp = [previousStateFirstSample2 timestamp];
    previousStateLastSample = [(HealthSampleUpdateRecord *)self previousStateLastSample];
    timestamp2 = [previousStateLastSample timestamp];
    v11 = [v6 initWithStartDate:timestamp endDate:timestamp2];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (NSNumber)currentState
{
  v3 = [(HealthSampleUpdateRecord *)self type]- 3;
  if (v3 > 2)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(&off_100010710 + v3);
  }

  currentStateMostRecentSample = [(HealthSampleUpdateRecord *)self currentStateMostRecentSample];
  v6 = [currentStateMostRecentSample valueForKeyPath:v4];

  return v6;
}

- (NSError)currentStateError
{
  v3 = sub_1000061E8([(HealthSampleUpdateRecord *)self type]);
  currentStateMostRecentSample = [(HealthSampleUpdateRecord *)self currentStateMostRecentSample];
  v5 = [currentStateMostRecentSample valueForKeyPath:v3];

  return v5;
}

- (NSDateInterval)currentStateDuration
{
  v3 = [NSDateInterval alloc];
  currentStateFirstSample = [(HealthSampleUpdateRecord *)self currentStateFirstSample];
  timestamp = [currentStateFirstSample timestamp];
  currentStateMostRecentSample = [(HealthSampleUpdateRecord *)self currentStateMostRecentSample];
  timestamp2 = [currentStateMostRecentSample timestamp];
  v8 = [v3 initWithStartDate:timestamp endDate:timestamp2];

  return v8;
}

- (id)dict
{
  v2 = objc_alloc_init(NSMutableDictionary);

  return v2;
}

@end