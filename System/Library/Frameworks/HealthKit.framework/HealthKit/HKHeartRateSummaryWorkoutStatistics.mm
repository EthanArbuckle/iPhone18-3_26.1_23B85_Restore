@interface HKHeartRateSummaryWorkoutStatistics
- (BOOL)isEqual:(id)a3;
- (HKHeartRateSummaryWorkoutStatistics)initWithCoder:(id)a3;
- (HKHeartRateSummaryWorkoutStatistics)initWithDateInterval:(id)a3 numberOfBuckets:(int64_t)a4 workoutUUID:(id)a5 workoutActivityType:(unint64_t)a6;
- (id)description;
- (id)initFromStatistics:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKHeartRateSummaryWorkoutStatistics

- (HKHeartRateSummaryWorkoutStatistics)initWithDateInterval:(id)a3 numberOfBuckets:(int64_t)a4 workoutUUID:(id)a5 workoutActivityType:(unint64_t)a6
{
  v8.receiver = self;
  v8.super_class = HKHeartRateSummaryWorkoutStatistics;
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
  v8.receiver = self;
  v8.super_class = HKHeartRateSummaryWorkoutStatistics;
  v5 = [(HKHeartRateSummaryStatistics *)&v8 initFromStatistics:v4];
  v6 = v5;
  if (v5)
  {
    v5[7] = *(v4 + 7);
    objc_storeStrong(v5 + 8, *(v4 + 8));
    objc_storeStrong(v6 + 9, *(v4 + 9));
  }

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = HKHeartRateSummaryWorkoutStatistics;
  v4 = a3;
  [(HKHeartRateSummaryStatistics *)&v7 encodeWithCoder:v4];
  [v4 encodeInteger:-[HKHeartRateSummaryWorkoutStatistics workoutActivityType](self forKey:{"workoutActivityType", v7.receiver, v7.super_class), @"WorkoutActivityTypeKey"}];
  v5 = [(HKHeartRateSummaryWorkoutStatistics *)self averageHeartRate];
  [v4 encodeObject:v5 forKey:@"AverageHeartRateKey"];

  v6 = [(HKHeartRateSummaryWorkoutStatistics *)self maximumHeartRate];
  [v4 encodeObject:v6 forKey:@"MaximumHeartRateKey"];
}

- (HKHeartRateSummaryWorkoutStatistics)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = HKHeartRateSummaryWorkoutStatistics;
  v5 = [(HKHeartRateSummaryStatistics *)&v11 initWithCoder:v4];
  if (v5)
  {
    v5->_workoutActivityType = [v4 decodeIntegerForKey:@"WorkoutActivityTypeKey"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"AverageHeartRateKey"];
    averageHeartRate = v5->_averageHeartRate;
    v5->_averageHeartRate = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MaximumHeartRateKey"];
    maximumHeartRate = v5->_maximumHeartRate;
    v5->_maximumHeartRate = v8;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  if (self == v5)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v25.receiver = self;
      v25.super_class = HKHeartRateSummaryWorkoutStatistics;
      if ([(HKHeartRateSummaryStatistics *)&v25 isEqual:v5])
      {
        v6 = [(HKHeartRateSummaryWorkoutStatistics *)self workoutActivityType];
        if (v6 == [(HKHeartRateSummaryWorkoutStatistics *)v5 workoutActivityType])
        {
          v7 = [(HKHeartRateSummaryWorkoutStatistics *)self averageHeartRate];
          v8 = [(HKHeartRateSummaryWorkoutStatistics *)v5 averageHeartRate];
          if (v7 == v8)
          {
            [(HKHeartRateSummaryWorkoutStatistics *)self maximumHeartRate:v21];
          }

          else
          {
            v9 = [(HKHeartRateSummaryWorkoutStatistics *)v5 averageHeartRate];
            if (!v9)
            {
              v12 = 0;
LABEL_22:

              goto LABEL_11;
            }

            v3 = v9;
            v10 = [(HKHeartRateSummaryWorkoutStatistics *)self averageHeartRate];
            v11 = [(HKHeartRateSummaryWorkoutStatistics *)v5 averageHeartRate];
            if (![v10 isEqual:v11])
            {
              v12 = 0;
LABEL_21:

              goto LABEL_22;
            }

            [(HKHeartRateSummaryWorkoutStatistics *)self maximumHeartRate:v11];
          }
          v14 = ;
          v15 = [(HKHeartRateSummaryWorkoutStatistics *)v5 maximumHeartRate];
          v16 = v15;
          if (v14 == v15)
          {

            v12 = 1;
          }

          else
          {
            v17 = [(HKHeartRateSummaryWorkoutStatistics *)v5 maximumHeartRate];
            if (v17)
            {
              v18 = v17;
              v19 = [(HKHeartRateSummaryWorkoutStatistics *)self maximumHeartRate];
              v20 = [(HKHeartRateSummaryWorkoutStatistics *)v5 maximumHeartRate];
              v12 = [v19 isEqual:v20];
            }

            else
            {

              v12 = 0;
            }
          }

          v11 = v22;
          v10 = v24;
          if (v7 == v8)
          {
            goto LABEL_22;
          }

          goto LABEL_21;
        }
      }
    }

    v12 = 0;
  }

LABEL_11:

  return v12;
}

- (unint64_t)hash
{
  v10.receiver = self;
  v10.super_class = HKHeartRateSummaryWorkoutStatistics;
  v3 = [(HKHeartRateSummaryStatistics *)&v10 hash];
  v4 = [(HKHeartRateSummaryWorkoutStatistics *)self workoutActivityType];
  v5 = [(HKHeartRateSummaryWorkoutStatistics *)self averageHeartRate];
  v6 = v4 ^ [v5 hash];
  v7 = [(HKHeartRateSummaryWorkoutStatistics *)self maximumHeartRate];
  v8 = v6 ^ [v7 hash];

  return v8 ^ v3;
}

- (id)description
{
  v20 = MEMORY[0x1E696AEC0];
  v19 = objc_opt_class();
  v18 = [MEMORY[0x1E696AD98] numberWithInteger:{-[HKHeartRateSummaryStatistics numberOfReadings](self, "numberOfReadings")}];
  v3 = [(HKHeartRateSummaryStatistics *)self sessionUUID];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[HKHeartRateSummaryWorkoutStatistics workoutActivityType](self, "workoutActivityType")}];
  v5 = [(HKHeartRateSummaryStatistics *)self dateInterval];
  v6 = [v5 startDate];
  v7 = [(HKHeartRateSummaryStatistics *)self dateInterval];
  v8 = [v7 endDate];
  averageHeartRate = self->_averageHeartRate;
  v10 = +[HKUnit _countPerMinuteUnit];
  [(HKQuantity *)averageHeartRate doubleValueForUnit:v10];
  v12 = v11;
  maximumHeartRate = self->_maximumHeartRate;
  v14 = +[HKUnit _countPerMinuteUnit];
  [(HKQuantity *)maximumHeartRate doubleValueForUnit:v14];
  v16 = [v20 stringWithFormat:@"<%@:%p count:%@ session:%@ activityType:%@ (%@ - %@) average:%.1fbpm max:%.1fbpm>", v19, self, v18, v3, v4, v6, v8, v12, v15];

  return v16;
}

@end