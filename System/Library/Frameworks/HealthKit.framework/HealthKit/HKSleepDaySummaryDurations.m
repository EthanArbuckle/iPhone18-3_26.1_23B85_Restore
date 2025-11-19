@interface HKSleepDaySummaryDurations
- (HKSleepDaySummaryDurations)initWithInBedDuration:(double)a3 sleepDuration:(double)a4 unspecifiedSleepDuration:(double)a5 coreSleepDuration:(double)a6 deepSleepDuration:(double)a7 remSleepDuration:(double)a8 awakeDuration:(double)a9;
- (double)maxDuration;
- (id)durationsByAdding:(id)a3;
@end

@implementation HKSleepDaySummaryDurations

- (HKSleepDaySummaryDurations)initWithInBedDuration:(double)a3 sleepDuration:(double)a4 unspecifiedSleepDuration:(double)a5 coreSleepDuration:(double)a6 deepSleepDuration:(double)a7 remSleepDuration:(double)a8 awakeDuration:(double)a9
{
  v17.receiver = self;
  v17.super_class = HKSleepDaySummaryDurations;
  result = [(HKSleepDaySummaryDurations *)&v17 init];
  if (result)
  {
    result->_inBedDuration = a3;
    result->_sleepDuration = a4;
    result->_unspecifiedSleepDuration = a5;
    result->_coreSleepDuration = a6;
    result->_deepSleepDuration = a7;
    result->_remSleepDuration = a8;
    result->_awakeDuration = a9;
  }

  return result;
}

- (id)durationsByAdding:(id)a3
{
  v4 = a3;
  v5 = [HKSleepDaySummaryDurations alloc];
  [(HKSleepDaySummaryDurations *)self inBedDuration];
  v7 = v6;
  [v4 inBedDuration];
  v9 = v7 + v8;
  [(HKSleepDaySummaryDurations *)self sleepDuration];
  v11 = v10;
  [v4 sleepDuration];
  v13 = v11 + v12;
  [(HKSleepDaySummaryDurations *)self unspecifiedSleepDuration];
  v15 = v14;
  [v4 unspecifiedSleepDuration];
  v17 = v15 + v16;
  [(HKSleepDaySummaryDurations *)self coreSleepDuration];
  v19 = v18;
  [v4 coreSleepDuration];
  v21 = v19 + v20;
  [(HKSleepDaySummaryDurations *)self deepSleepDuration];
  v23 = v22;
  [v4 deepSleepDuration];
  v25 = v23 + v24;
  [(HKSleepDaySummaryDurations *)self remSleepDuration];
  v27 = v26;
  [v4 remSleepDuration];
  v29 = v27 + v28;
  [(HKSleepDaySummaryDurations *)self awakeDuration];
  v31 = v30;
  [v4 awakeDuration];
  v33 = v32;

  v34 = [(HKSleepDaySummaryDurations *)v5 initWithInBedDuration:v9 sleepDuration:v13 unspecifiedSleepDuration:v17 coreSleepDuration:v21 deepSleepDuration:v25 remSleepDuration:v29 awakeDuration:v31 + v33];

  return v34;
}

- (double)maxDuration
{
  [(HKSleepDaySummaryDurations *)self sleepDuration];
  v4 = v3;
  [(HKSleepDaySummaryDurations *)self inBedDuration];
  if (v4 >= result)
  {
    return v4;
  }

  return result;
}

@end