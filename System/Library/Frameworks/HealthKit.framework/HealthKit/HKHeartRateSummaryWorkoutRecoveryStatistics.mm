@interface HKHeartRateSummaryWorkoutRecoveryStatistics
- (BOOL)isEqual:(id)equal;
- (HKHeartRateSummaryWorkoutRecoveryStatistics)initWithCoder:(id)coder;
- (HKHeartRateSummaryWorkoutRecoveryStatistics)initWithDateInterval:(id)interval numberOfBuckets:(int64_t)buckets workoutUUID:(id)d workoutActivityType:(unint64_t)type;
- (id)description;
- (id)initFromStatistics:(id)statistics;
- (unint64_t)hash;
- (void)_setPerMinuteReadings:(id)readings;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKHeartRateSummaryWorkoutRecoveryStatistics

- (HKHeartRateSummaryWorkoutRecoveryStatistics)initWithDateInterval:(id)interval numberOfBuckets:(int64_t)buckets workoutUUID:(id)d workoutActivityType:(unint64_t)type
{
  v8.receiver = self;
  v8.super_class = HKHeartRateSummaryWorkoutRecoveryStatistics;
  result = [(HKHeartRateSummaryStatistics *)&v8 initWithDateInterval:interval numberOfBuckets:buckets sessionUUID:d];
  if (result)
  {
    result->_workoutActivityType = type;
  }

  return result;
}

- (id)initFromStatistics:(id)statistics
{
  statisticsCopy = statistics;
  v10.receiver = self;
  v10.super_class = HKHeartRateSummaryWorkoutRecoveryStatistics;
  v5 = [(HKHeartRateSummaryStatistics *)&v10 initFromStatistics:statisticsCopy];
  v6 = v5;
  if (v5)
  {
    v5[7] = *(statisticsCopy + 7);
    v7 = [*(statisticsCopy + 8) copy];
    v8 = v6[8];
    v6[8] = v7;
  }

  return v6;
}

- (void)_setPerMinuteReadings:(id)readings
{
  v4 = [readings copy];
  perMinuteReadings = self->_perMinuteReadings;
  self->_perMinuteReadings = v4;

  MEMORY[0x1EEE66BB8](v4, perMinuteReadings);
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = HKHeartRateSummaryWorkoutRecoveryStatistics;
  coderCopy = coder;
  [(HKHeartRateSummaryStatistics *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInteger:-[HKHeartRateSummaryWorkoutRecoveryStatistics workoutActivityType](self forKey:{"workoutActivityType", v5.receiver, v5.super_class), @"WorkoutActivityTypeKey"}];
  [coderCopy encodeObject:self->_perMinuteReadings forKey:@"PerMinuteReadings"];
}

- (HKHeartRateSummaryWorkoutRecoveryStatistics)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = HKHeartRateSummaryWorkoutRecoveryStatistics;
  v5 = [(HKHeartRateSummaryStatistics *)&v13 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_workoutActivityType = [coderCopy decodeIntegerForKey:@"WorkoutActivityTypeKey"];
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = [v6 setWithObjects:{v7, v8, objc_opt_class(), 0}];
    v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"PerMinuteReadings"];
    perMinuteReadings = v5->_perMinuteReadings;
    v5->_perMinuteReadings = v10;
  }

  return v5;
}

- (id)description
{
  v15 = MEMORY[0x1E696AEC0];
  v14 = objc_opt_class();
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:{-[HKHeartRateSummaryStatistics numberOfReadings](self, "numberOfReadings")}];
  sessionUUID = [(HKHeartRateSummaryStatistics *)self sessionUUID];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[HKHeartRateSummaryWorkoutRecoveryStatistics workoutActivityType](self, "workoutActivityType")}];
  dateInterval = [(HKHeartRateSummaryStatistics *)self dateInterval];
  startDate = [dateInterval startDate];
  dateInterval2 = [(HKHeartRateSummaryStatistics *)self dateInterval];
  endDate = [dateInterval2 endDate];
  perMinuteReadings = [(HKHeartRateSummaryWorkoutRecoveryStatistics *)self perMinuteReadings];
  allKeys = [perMinuteReadings allKeys];
  v12 = [v15 stringWithFormat:@"<%@:%p count:%@ session:%@ activityType:%@ (%@ - %@) minutes:%@>", v14, self, v3, sessionUUID, v5, startDate, endDate, allKeys];

  return v12;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && (v13.receiver = self, v13.super_class = HKHeartRateSummaryWorkoutRecoveryStatistics, [(HKHeartRateSummaryStatistics *)&v13 isEqual:equalCopy]) && (v5 = [(HKHeartRateSummaryWorkoutRecoveryStatistics *)self workoutActivityType], v5 == [(HKHeartRateSummaryWorkoutRecoveryStatistics *)equalCopy workoutActivityType]))
    {
      perMinuteReadings = [(HKHeartRateSummaryWorkoutRecoveryStatistics *)self perMinuteReadings];
      perMinuteReadings2 = [(HKHeartRateSummaryWorkoutRecoveryStatistics *)equalCopy perMinuteReadings];
      if (perMinuteReadings == perMinuteReadings2)
      {
        v11 = 1;
      }

      else
      {
        perMinuteReadings3 = [(HKHeartRateSummaryWorkoutRecoveryStatistics *)equalCopy perMinuteReadings];
        if (perMinuteReadings3)
        {
          perMinuteReadings4 = [(HKHeartRateSummaryWorkoutRecoveryStatistics *)self perMinuteReadings];
          perMinuteReadings5 = [(HKHeartRateSummaryWorkoutRecoveryStatistics *)equalCopy perMinuteReadings];
          v11 = [perMinuteReadings4 isEqual:perMinuteReadings5];
        }

        else
        {
          v11 = 0;
        }
      }
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (unint64_t)hash
{
  v8.receiver = self;
  v8.super_class = HKHeartRateSummaryWorkoutRecoveryStatistics;
  v3 = [(HKHeartRateSummaryStatistics *)&v8 hash];
  workoutActivityType = [(HKHeartRateSummaryWorkoutRecoveryStatistics *)self workoutActivityType];
  perMinuteReadings = [(HKHeartRateSummaryWorkoutRecoveryStatistics *)self perMinuteReadings];
  v6 = workoutActivityType ^ [perMinuteReadings hash];

  return v6 ^ v3;
}

@end