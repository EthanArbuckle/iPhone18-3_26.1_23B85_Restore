@interface HealthSampleUpdateRecord
- (HealthSampleUpdateRecord)initWithCoder:(id)a3;
- (HealthSampleUpdateRecord)initWithRecordType:(unint64_t)a3 initialSample:(id)a4;
- (NSDateInterval)currentStateDuration;
- (NSDateInterval)previousStateDuration;
- (NSError)currentStateError;
- (NSError)previousStateError;
- (NSNumber)currentState;
- (NSNumber)previousState;
- (id)dict;
- (id)updatedRecordWithHealthSample:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HealthSampleUpdateRecord

- (HealthSampleUpdateRecord)initWithRecordType:(unint64_t)a3 initialSample:(id)a4
{
  v7 = a4;
  v13.receiver = self;
  v13.super_class = HealthSampleUpdateRecord;
  v8 = [(HealthSampleUpdateRecord *)&v13 init];
  v9 = v8;
  if (v8)
  {
    previousStateFirstSample = v8->_previousStateFirstSample;
    v8->_type = a3;
    v8->_previousStateFirstSample = 0;

    previousStateLastSample = v9->_previousStateLastSample;
    v9->_previousStateLastSample = 0;

    objc_storeStrong(&v9->_currentStateFirstSample, a4);
    objc_storeStrong(&v9->_currentStateMostRecentSample, a4);
  }

  return v9;
}

- (id)updatedRecordWithHealthSample:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(HealthSampleUpdateRecord);
  v5->_type = [(HealthSampleUpdateRecord *)self type];
  v6 = [(HealthSampleUpdateRecord *)self currentStateMostRecentSample];
  v7 = [v6 sameValueAndErrorAsHealthSample:v4 forType:{-[HealthSampleUpdateRecord type](self, "type")}];

  if (v7)
  {
    v8 = [(HealthSampleUpdateRecord *)self previousStateFirstSample];
    previousStateFirstSample = v5->_previousStateFirstSample;
    v5->_previousStateFirstSample = v8;

    v10 = [(HealthSampleUpdateRecord *)self previousStateLastSample];
    previousStateLastSample = v5->_previousStateLastSample;
    v5->_previousStateLastSample = v10;

    v12 = [(HealthSampleUpdateRecord *)self currentStateFirstSample];
  }

  else
  {
    v13 = [(HealthSampleUpdateRecord *)self currentStateFirstSample];
    v14 = v5->_previousStateFirstSample;
    v5->_previousStateFirstSample = v13;

    v15 = [(HealthSampleUpdateRecord *)self currentStateMostRecentSample];
    v16 = v5->_previousStateLastSample;
    v5->_previousStateLastSample = v15;

    v12 = v4;
  }

  currentStateFirstSample = v5->_currentStateFirstSample;
  v5->_currentStateFirstSample = v12;

  currentStateMostRecentSample = v5->_currentStateMostRecentSample;
  v5->_currentStateMostRecentSample = v4;

  return v5;
}

- (HealthSampleUpdateRecord)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = HealthSampleUpdateRecord;
  v5 = [(HealthSampleUpdateRecord *)&v15 init];
  if (v5)
  {
    v5->_type = [v4 decodeIntegerForKey:@"type"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"previousStateFirstSample"];
    previousStateFirstSample = v5->_previousStateFirstSample;
    v5->_previousStateFirstSample = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"previousStateLastSample"];
    previousStateLastSample = v5->_previousStateLastSample;
    v5->_previousStateLastSample = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"currentStateFirstSample"];
    currentStateFirstSample = v5->_currentStateFirstSample;
    v5->_currentStateFirstSample = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"currentStateMostRecentSample"];
    currentStateMostRecentSample = v5->_currentStateMostRecentSample;
    v5->_currentStateMostRecentSample = v12;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInteger:-[HealthSampleUpdateRecord type](self forKey:{"type"), @"type"}];
  v5 = [(HealthSampleUpdateRecord *)self previousStateFirstSample];
  [v4 encodeObject:v5 forKey:@"previousStateFirstSample"];

  v6 = [(HealthSampleUpdateRecord *)self previousStateLastSample];
  [v4 encodeObject:v6 forKey:@"previousStateLastSample"];

  v7 = [(HealthSampleUpdateRecord *)self currentStateFirstSample];
  [v4 encodeObject:v7 forKey:@"currentStateFirstSample"];

  v8 = [(HealthSampleUpdateRecord *)self currentStateMostRecentSample];
  [v4 encodeObject:v8 forKey:@"currentStateMostRecentSample"];
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

  v5 = [(HealthSampleUpdateRecord *)self previousStateLastSample];
  v6 = [v5 valueForKeyPath:v4];

  return v6;
}

- (NSError)previousStateError
{
  v3 = sub_1000061E8([(HealthSampleUpdateRecord *)self type]);
  v4 = [(HealthSampleUpdateRecord *)self previousStateLastSample];
  v5 = [v4 valueForKeyPath:v3];

  return v5;
}

- (NSDateInterval)previousStateDuration
{
  v3 = [(HealthSampleUpdateRecord *)self previousStateFirstSample];
  if (v3 && (v4 = v3, [(HealthSampleUpdateRecord *)self previousStateLastSample], v5 = objc_claimAutoreleasedReturnValue(), v5, v4, v5))
  {
    v6 = [NSDateInterval alloc];
    v7 = [(HealthSampleUpdateRecord *)self previousStateFirstSample];
    v8 = [v7 timestamp];
    v9 = [(HealthSampleUpdateRecord *)self previousStateLastSample];
    v10 = [v9 timestamp];
    v11 = [v6 initWithStartDate:v8 endDate:v10];
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

  v5 = [(HealthSampleUpdateRecord *)self currentStateMostRecentSample];
  v6 = [v5 valueForKeyPath:v4];

  return v6;
}

- (NSError)currentStateError
{
  v3 = sub_1000061E8([(HealthSampleUpdateRecord *)self type]);
  v4 = [(HealthSampleUpdateRecord *)self currentStateMostRecentSample];
  v5 = [v4 valueForKeyPath:v3];

  return v5;
}

- (NSDateInterval)currentStateDuration
{
  v3 = [NSDateInterval alloc];
  v4 = [(HealthSampleUpdateRecord *)self currentStateFirstSample];
  v5 = [v4 timestamp];
  v6 = [(HealthSampleUpdateRecord *)self currentStateMostRecentSample];
  v7 = [v6 timestamp];
  v8 = [v3 initWithStartDate:v5 endDate:v7];

  return v8;
}

- (id)dict
{
  v2 = objc_alloc_init(NSMutableDictionary);

  return v2;
}

@end