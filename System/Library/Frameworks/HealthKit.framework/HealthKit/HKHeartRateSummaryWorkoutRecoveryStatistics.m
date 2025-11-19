@interface HKHeartRateSummaryWorkoutRecoveryStatistics
- (BOOL)isEqual:(id)a3;
- (HKHeartRateSummaryWorkoutRecoveryStatistics)initWithCoder:(id)a3;
- (HKHeartRateSummaryWorkoutRecoveryStatistics)initWithDateInterval:(id)a3 numberOfBuckets:(int64_t)a4 workoutUUID:(id)a5 workoutActivityType:(unint64_t)a6;
- (id)description;
- (id)initFromStatistics:(id)a3;
- (unint64_t)hash;
- (void)_setPerMinuteReadings:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKHeartRateSummaryWorkoutRecoveryStatistics

- (HKHeartRateSummaryWorkoutRecoveryStatistics)initWithDateInterval:(id)a3 numberOfBuckets:(int64_t)a4 workoutUUID:(id)a5 workoutActivityType:(unint64_t)a6
{
  v8.receiver = self;
  v8.super_class = HKHeartRateSummaryWorkoutRecoveryStatistics;
  result = [(HKHeartRateSummaryStatistics *)&v8 initWithDateInterval:a3 numberOfBuckets:a4 sessionUUID:a5];
  if (result)
  {
    result->_workoutActivityType = a6;
  }

  return result;
}

- (id)initFromStatistics:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = HKHeartRateSummaryWorkoutRecoveryStatistics;
  v5 = [(HKHeartRateSummaryStatistics *)&v10 initFromStatistics:v4];
  v6 = v5;
  if (v5)
  {
    v5[7] = *(v4 + 7);
    v7 = [*(v4 + 8) copy];
    v8 = v6[8];
    v6[8] = v7;
  }

  return v6;
}

- (void)_setPerMinuteReadings:(id)a3
{
  v4 = [a3 copy];
  perMinuteReadings = self->_perMinuteReadings;
  self->_perMinuteReadings = v4;

  MEMORY[0x1EEE66BB8](v4, perMinuteReadings);
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = HKHeartRateSummaryWorkoutRecoveryStatistics;
  v4 = a3;
  [(HKHeartRateSummaryStatistics *)&v5 encodeWithCoder:v4];
  [v4 encodeInteger:-[HKHeartRateSummaryWorkoutRecoveryStatistics workoutActivityType](self forKey:{"workoutActivityType", v5.receiver, v5.super_class), @"WorkoutActivityTypeKey"}];
  [v4 encodeObject:self->_perMinuteReadings forKey:@"PerMinuteReadings"];
}

- (HKHeartRateSummaryWorkoutRecoveryStatistics)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = HKHeartRateSummaryWorkoutRecoveryStatistics;
  v5 = [(HKHeartRateSummaryStatistics *)&v13 initWithCoder:v4];
  if (v5)
  {
    v5->_workoutActivityType = [v4 decodeIntegerForKey:@"WorkoutActivityTypeKey"];
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = [v6 setWithObjects:{v7, v8, objc_opt_class(), 0}];
    v10 = [v4 decodeObjectOfClasses:v9 forKey:@"PerMinuteReadings"];
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
  v4 = [(HKHeartRateSummaryStatistics *)self sessionUUID];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[HKHeartRateSummaryWorkoutRecoveryStatistics workoutActivityType](self, "workoutActivityType")}];
  v6 = [(HKHeartRateSummaryStatistics *)self dateInterval];
  v7 = [v6 startDate];
  v8 = [(HKHeartRateSummaryStatistics *)self dateInterval];
  v9 = [v8 endDate];
  v10 = [(HKHeartRateSummaryWorkoutRecoveryStatistics *)self perMinuteReadings];
  v11 = [v10 allKeys];
  v12 = [v15 stringWithFormat:@"<%@:%p count:%@ session:%@ activityType:%@ (%@ - %@) minutes:%@>", v14, self, v3, v4, v5, v7, v9, v11];

  return v12;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && (v13.receiver = self, v13.super_class = HKHeartRateSummaryWorkoutRecoveryStatistics, [(HKHeartRateSummaryStatistics *)&v13 isEqual:v4]) && (v5 = [(HKHeartRateSummaryWorkoutRecoveryStatistics *)self workoutActivityType], v5 == [(HKHeartRateSummaryWorkoutRecoveryStatistics *)v4 workoutActivityType]))
    {
      v6 = [(HKHeartRateSummaryWorkoutRecoveryStatistics *)self perMinuteReadings];
      v7 = [(HKHeartRateSummaryWorkoutRecoveryStatistics *)v4 perMinuteReadings];
      if (v6 == v7)
      {
        v11 = 1;
      }

      else
      {
        v8 = [(HKHeartRateSummaryWorkoutRecoveryStatistics *)v4 perMinuteReadings];
        if (v8)
        {
          v9 = [(HKHeartRateSummaryWorkoutRecoveryStatistics *)self perMinuteReadings];
          v10 = [(HKHeartRateSummaryWorkoutRecoveryStatistics *)v4 perMinuteReadings];
          v11 = [v9 isEqual:v10];
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
  v4 = [(HKHeartRateSummaryWorkoutRecoveryStatistics *)self workoutActivityType];
  v5 = [(HKHeartRateSummaryWorkoutRecoveryStatistics *)self perMinuteReadings];
  v6 = v4 ^ [v5 hash];

  return v6 ^ v3;
}

@end