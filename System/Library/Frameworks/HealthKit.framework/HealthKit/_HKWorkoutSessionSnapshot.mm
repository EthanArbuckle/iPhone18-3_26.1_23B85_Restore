@interface _HKWorkoutSessionSnapshot
- (_HKWorkoutSessionSnapshot)initWithCoder:(id)coder;
- (id)_initWithSessionState:(int64_t)state startDate:(id)date endDate:(id)endDate currentActivity:(id)activity;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _HKWorkoutSessionSnapshot

- (id)_initWithSessionState:(int64_t)state startDate:(id)date endDate:(id)endDate currentActivity:(id)activity
{
  dateCopy = date;
  endDateCopy = endDate;
  activityCopy = activity;
  v22.receiver = self;
  v22.super_class = _HKWorkoutSessionSnapshot;
  v13 = [(_HKWorkoutSessionSnapshot *)&v22 init];
  v14 = v13;
  if (v13)
  {
    v13->_sessionState = state;
    v15 = [dateCopy copy];
    startDate = v14->_startDate;
    v14->_startDate = v15;

    v17 = [endDateCopy copy];
    endDate = v14->_endDate;
    v14->_endDate = v17;

    v19 = [activityCopy copy];
    currentActivity = v14->_currentActivity;
    v14->_currentActivity = v19;
  }

  return v14;
}

- (_HKWorkoutSessionSnapshot)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = _HKWorkoutSessionSnapshot;
  v5 = [(_HKWorkoutSessionSnapshot *)&v13 init];
  if (v5)
  {
    v5->_sessionState = [coderCopy decodeIntegerForKey:@"sessionState"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"startDate"];
    startDate = v5->_startDate;
    v5->_startDate = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"endDate"];
    endDate = v5->_endDate;
    v5->_endDate = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"currentActivity"];
    currentActivity = v5->_currentActivity;
    v5->_currentActivity = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  sessionState = self->_sessionState;
  coderCopy = coder;
  [coderCopy encodeInteger:sessionState forKey:@"sessionState"];
  [coderCopy encodeObject:self->_startDate forKey:@"startDate"];
  [coderCopy encodeObject:self->_endDate forKey:@"endDate"];
  [coderCopy encodeObject:self->_currentActivity forKey:@"currentActivity"];
}

@end