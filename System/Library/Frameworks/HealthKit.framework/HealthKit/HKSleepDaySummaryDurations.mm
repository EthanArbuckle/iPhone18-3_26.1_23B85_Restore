@interface HKSleepDaySummaryDurations
- (HKSleepDaySummaryDurations)initWithInBedDuration:(double)duration sleepDuration:(double)sleepDuration unspecifiedSleepDuration:(double)unspecifiedSleepDuration coreSleepDuration:(double)coreSleepDuration deepSleepDuration:(double)deepSleepDuration remSleepDuration:(double)remSleepDuration awakeDuration:(double)awakeDuration;
- (double)maxDuration;
- (id)durationsByAdding:(id)adding;
@end

@implementation HKSleepDaySummaryDurations

- (HKSleepDaySummaryDurations)initWithInBedDuration:(double)duration sleepDuration:(double)sleepDuration unspecifiedSleepDuration:(double)unspecifiedSleepDuration coreSleepDuration:(double)coreSleepDuration deepSleepDuration:(double)deepSleepDuration remSleepDuration:(double)remSleepDuration awakeDuration:(double)awakeDuration
{
  v17.receiver = self;
  v17.super_class = HKSleepDaySummaryDurations;
  result = [(HKSleepDaySummaryDurations *)&v17 init];
  if (result)
  {
    result->_inBedDuration = duration;
    result->_sleepDuration = sleepDuration;
    result->_unspecifiedSleepDuration = unspecifiedSleepDuration;
    result->_coreSleepDuration = coreSleepDuration;
    result->_deepSleepDuration = deepSleepDuration;
    result->_remSleepDuration = remSleepDuration;
    result->_awakeDuration = awakeDuration;
  }

  return result;
}

- (id)durationsByAdding:(id)adding
{
  addingCopy = adding;
  v5 = [HKSleepDaySummaryDurations alloc];
  [(HKSleepDaySummaryDurations *)self inBedDuration];
  v7 = v6;
  [addingCopy inBedDuration];
  v9 = v7 + v8;
  [(HKSleepDaySummaryDurations *)self sleepDuration];
  v11 = v10;
  [addingCopy sleepDuration];
  v13 = v11 + v12;
  [(HKSleepDaySummaryDurations *)self unspecifiedSleepDuration];
  v15 = v14;
  [addingCopy unspecifiedSleepDuration];
  v17 = v15 + v16;
  [(HKSleepDaySummaryDurations *)self coreSleepDuration];
  v19 = v18;
  [addingCopy coreSleepDuration];
  v21 = v19 + v20;
  [(HKSleepDaySummaryDurations *)self deepSleepDuration];
  v23 = v22;
  [addingCopy deepSleepDuration];
  v25 = v23 + v24;
  [(HKSleepDaySummaryDurations *)self remSleepDuration];
  v27 = v26;
  [addingCopy remSleepDuration];
  v29 = v27 + v28;
  [(HKSleepDaySummaryDurations *)self awakeDuration];
  v31 = v30;
  [addingCopy awakeDuration];
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