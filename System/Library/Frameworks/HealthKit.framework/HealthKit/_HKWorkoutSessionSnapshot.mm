@interface _HKWorkoutSessionSnapshot
- (_HKWorkoutSessionSnapshot)initWithCoder:(id)a3;
- (id)_initWithSessionState:(int64_t)a3 startDate:(id)a4 endDate:(id)a5 currentActivity:(id)a6;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _HKWorkoutSessionSnapshot

- (id)_initWithSessionState:(int64_t)a3 startDate:(id)a4 endDate:(id)a5 currentActivity:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v22.receiver = self;
  v22.super_class = _HKWorkoutSessionSnapshot;
  v13 = [(_HKWorkoutSessionSnapshot *)&v22 init];
  v14 = v13;
  if (v13)
  {
    v13->_sessionState = a3;
    v15 = [v10 copy];
    startDate = v14->_startDate;
    v14->_startDate = v15;

    v17 = [v11 copy];
    endDate = v14->_endDate;
    v14->_endDate = v17;

    v19 = [v12 copy];
    currentActivity = v14->_currentActivity;
    v14->_currentActivity = v19;
  }

  return v14;
}

- (_HKWorkoutSessionSnapshot)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = _HKWorkoutSessionSnapshot;
  v5 = [(_HKWorkoutSessionSnapshot *)&v13 init];
  if (v5)
  {
    v5->_sessionState = [v4 decodeIntegerForKey:@"sessionState"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"startDate"];
    startDate = v5->_startDate;
    v5->_startDate = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"endDate"];
    endDate = v5->_endDate;
    v5->_endDate = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"currentActivity"];
    currentActivity = v5->_currentActivity;
    v5->_currentActivity = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  sessionState = self->_sessionState;
  v5 = a3;
  [v5 encodeInteger:sessionState forKey:@"sessionState"];
  [v5 encodeObject:self->_startDate forKey:@"startDate"];
  [v5 encodeObject:self->_endDate forKey:@"endDate"];
  [v5 encodeObject:self->_currentActivity forKey:@"currentActivity"];
}

@end