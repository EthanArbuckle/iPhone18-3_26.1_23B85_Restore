@interface HKHeartRateSummaryWorkoutStatistics
- (BOOL)isEqual:(id)equal;
- (HKHeartRateSummaryWorkoutStatistics)initWithCoder:(id)coder;
- (HKHeartRateSummaryWorkoutStatistics)initWithDateInterval:(id)interval numberOfBuckets:(int64_t)buckets workoutUUID:(id)d workoutActivityType:(unint64_t)type;
- (id)description;
- (id)initFromStatistics:(id)statistics;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKHeartRateSummaryWorkoutStatistics

- (HKHeartRateSummaryWorkoutStatistics)initWithDateInterval:(id)interval numberOfBuckets:(int64_t)buckets workoutUUID:(id)d workoutActivityType:(unint64_t)type
{
  v8.receiver = self;
  v8.super_class = HKHeartRateSummaryWorkoutStatistics;
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
  v8.receiver = self;
  v8.super_class = HKHeartRateSummaryWorkoutStatistics;
  v5 = [(HKHeartRateSummaryStatistics *)&v8 initFromStatistics:statisticsCopy];
  v6 = v5;
  if (v5)
  {
    v5[7] = *(statisticsCopy + 7);
    objc_storeStrong(v5 + 8, *(statisticsCopy + 8));
    objc_storeStrong(v6 + 9, *(statisticsCopy + 9));
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = HKHeartRateSummaryWorkoutStatistics;
  coderCopy = coder;
  [(HKHeartRateSummaryStatistics *)&v7 encodeWithCoder:coderCopy];
  [coderCopy encodeInteger:-[HKHeartRateSummaryWorkoutStatistics workoutActivityType](self forKey:{"workoutActivityType", v7.receiver, v7.super_class), @"WorkoutActivityTypeKey"}];
  averageHeartRate = [(HKHeartRateSummaryWorkoutStatistics *)self averageHeartRate];
  [coderCopy encodeObject:averageHeartRate forKey:@"AverageHeartRateKey"];

  maximumHeartRate = [(HKHeartRateSummaryWorkoutStatistics *)self maximumHeartRate];
  [coderCopy encodeObject:maximumHeartRate forKey:@"MaximumHeartRateKey"];
}

- (HKHeartRateSummaryWorkoutStatistics)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = HKHeartRateSummaryWorkoutStatistics;
  v5 = [(HKHeartRateSummaryStatistics *)&v11 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_workoutActivityType = [coderCopy decodeIntegerForKey:@"WorkoutActivityTypeKey"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AverageHeartRateKey"];
    averageHeartRate = v5->_averageHeartRate;
    v5->_averageHeartRate = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MaximumHeartRateKey"];
    maximumHeartRate = v5->_maximumHeartRate;
    v5->_maximumHeartRate = v8;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
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
      if ([(HKHeartRateSummaryStatistics *)&v25 isEqual:equalCopy])
      {
        workoutActivityType = [(HKHeartRateSummaryWorkoutStatistics *)self workoutActivityType];
        if (workoutActivityType == [(HKHeartRateSummaryWorkoutStatistics *)equalCopy workoutActivityType])
        {
          averageHeartRate = [(HKHeartRateSummaryWorkoutStatistics *)self averageHeartRate];
          averageHeartRate2 = [(HKHeartRateSummaryWorkoutStatistics *)equalCopy averageHeartRate];
          if (averageHeartRate == averageHeartRate2)
          {
            [(HKHeartRateSummaryWorkoutStatistics *)self maximumHeartRate:v21];
          }

          else
          {
            averageHeartRate3 = [(HKHeartRateSummaryWorkoutStatistics *)equalCopy averageHeartRate];
            if (!averageHeartRate3)
            {
              v12 = 0;
LABEL_22:

              goto LABEL_11;
            }

            v3 = averageHeartRate3;
            averageHeartRate4 = [(HKHeartRateSummaryWorkoutStatistics *)self averageHeartRate];
            averageHeartRate5 = [(HKHeartRateSummaryWorkoutStatistics *)equalCopy averageHeartRate];
            if (![averageHeartRate4 isEqual:averageHeartRate5])
            {
              v12 = 0;
LABEL_21:

              goto LABEL_22;
            }

            [(HKHeartRateSummaryWorkoutStatistics *)self maximumHeartRate:averageHeartRate5];
          }
          v14 = ;
          maximumHeartRate = [(HKHeartRateSummaryWorkoutStatistics *)equalCopy maximumHeartRate];
          v16 = maximumHeartRate;
          if (v14 == maximumHeartRate)
          {

            v12 = 1;
          }

          else
          {
            maximumHeartRate2 = [(HKHeartRateSummaryWorkoutStatistics *)equalCopy maximumHeartRate];
            if (maximumHeartRate2)
            {
              v18 = maximumHeartRate2;
              maximumHeartRate3 = [(HKHeartRateSummaryWorkoutStatistics *)self maximumHeartRate];
              maximumHeartRate4 = [(HKHeartRateSummaryWorkoutStatistics *)equalCopy maximumHeartRate];
              v12 = [maximumHeartRate3 isEqual:maximumHeartRate4];
            }

            else
            {

              v12 = 0;
            }
          }

          averageHeartRate5 = v22;
          averageHeartRate4 = v24;
          if (averageHeartRate == averageHeartRate2)
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
  workoutActivityType = [(HKHeartRateSummaryWorkoutStatistics *)self workoutActivityType];
  averageHeartRate = [(HKHeartRateSummaryWorkoutStatistics *)self averageHeartRate];
  v6 = workoutActivityType ^ [averageHeartRate hash];
  maximumHeartRate = [(HKHeartRateSummaryWorkoutStatistics *)self maximumHeartRate];
  v8 = v6 ^ [maximumHeartRate hash];

  return v8 ^ v3;
}

- (id)description
{
  v20 = MEMORY[0x1E696AEC0];
  v19 = objc_opt_class();
  v18 = [MEMORY[0x1E696AD98] numberWithInteger:{-[HKHeartRateSummaryStatistics numberOfReadings](self, "numberOfReadings")}];
  sessionUUID = [(HKHeartRateSummaryStatistics *)self sessionUUID];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[HKHeartRateSummaryWorkoutStatistics workoutActivityType](self, "workoutActivityType")}];
  dateInterval = [(HKHeartRateSummaryStatistics *)self dateInterval];
  startDate = [dateInterval startDate];
  dateInterval2 = [(HKHeartRateSummaryStatistics *)self dateInterval];
  endDate = [dateInterval2 endDate];
  averageHeartRate = self->_averageHeartRate;
  v10 = +[HKUnit _countPerMinuteUnit];
  [(HKQuantity *)averageHeartRate doubleValueForUnit:v10];
  v12 = v11;
  maximumHeartRate = self->_maximumHeartRate;
  v14 = +[HKUnit _countPerMinuteUnit];
  [(HKQuantity *)maximumHeartRate doubleValueForUnit:v14];
  v16 = [v20 stringWithFormat:@"<%@:%p count:%@ session:%@ activityType:%@ (%@ - %@) average:%.1fbpm max:%.1fbpm>", v19, self, v18, sessionUUID, v4, startDate, endDate, v12, v15];

  return v16;
}

@end