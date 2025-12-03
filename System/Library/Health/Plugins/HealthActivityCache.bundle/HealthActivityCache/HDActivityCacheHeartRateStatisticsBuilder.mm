@interface HDActivityCacheHeartRateStatisticsBuilder
- (HDActivityCacheHeartRateStatisticsBuilder)initWithDateInterval:(id)interval activityCacheIndex:(int64_t)index;
- (HKHeartRateSummary)heartRateSummary;
- (id).cxx_construct;
- (void)addAsleepTimeIntervals:(id)intervals;
- (void)addBreatheSessions:(const void *)sessions;
- (void)addHeartRateSamples:(const void *)samples;
- (void)addWorkouts:(const void *)workouts;
- (void)reportDailyAnalyticsWithProfile:(id)profile;
@end

@implementation HDActivityCacheHeartRateStatisticsBuilder

- (HKHeartRateSummary)heartRateSummary
{
  v11 = 0;
  v10 = 0;
  v3 = sub_1417C(self, 10, 0, 0, &v11, &v10);
  [(HKHeartRateSummarySleepStatistics *)self->_sleepStatistics setHasBGHRSleepMode:v11];
  v4 = [HKHeartRateSummary alloc];
  activityCacheIndex = self->_activityCacheIndex;
  v6 = sub_37C0(self);
  v7 = sub_3884(self);
  v8 = [v4 initWithActivityCacheIndex:activityCacheIndex heartRateDateInterval:v6 restingHeartRate:v3 walkingAverageHeartRate:v7 allDayStatistics:self->_allDayStatistics workoutStatistics:self->_workoutStatistics workoutRecoveryStatistics:self->_workoutRecoveryStatistics breatheStatistics:self->_breatheStatistics sleepStatistics:self->_sleepStatistics];

  return v8;
}

- (HDActivityCacheHeartRateStatisticsBuilder)initWithDateInterval:(id)interval activityCacheIndex:(int64_t)index
{
  intervalCopy = interval;
  v32.receiver = self;
  v32.super_class = HDActivityCacheHeartRateStatisticsBuilder;
  v8 = [(HDActivityCacheHeartRateStatisticsBuilder *)&v32 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_dateInterval, interval);
    v9->_activityCacheIndex = index;
    v10 = [HKHeartRateSummaryStatistics alloc];
    v11 = [v10 initWithDateInterval:intervalCopy numberOfBuckets:HDActivityCacheHeartRateStatisticsBuilderNumberOfHeartRateBuckets sessionUUID:0];
    allDayStatistics = v9->_allDayStatistics;
    v9->_allDayStatistics = v11;

    v13 = +[NSMutableArray array];
    workoutStatistics = v9->_workoutStatistics;
    v9->_workoutStatistics = v13;

    v15 = +[NSMutableArray array];
    workoutRecoveryStatistics = v9->_workoutRecoveryStatistics;
    v9->_workoutRecoveryStatistics = v15;

    v17 = +[NSMutableArray array];
    breatheStatistics = v9->_breatheStatistics;
    v9->_breatheStatistics = v17;

    v19 = objc_alloc_init(HKHeartRateSummarySleepStatistics);
    sleepStatistics = v9->_sleepStatistics;
    v9->_sleepStatistics = v19;

    v21 = +[NSMutableDictionary dictionary];
    averageCalculatorsByWorkoutUUID = v9->_averageCalculatorsByWorkoutUUID;
    v9->_averageCalculatorsByWorkoutUUID = v21;

    v23 = +[NSMutableDictionary dictionary];
    recoveryReadingsByWorkoutUUID = v9->_recoveryReadingsByWorkoutUUID;
    v9->_recoveryReadingsByWorkoutUUID = v23;

    v25 = +[NSMutableDictionary dictionary];
    breatheSessionReadingsBySessionUUID = v9->_breatheSessionReadingsBySessionUUID;
    v9->_breatheSessionReadingsBySessionUUID = v25;

    v27 = +[NSMutableDictionary dictionary];
    breatheSessionDateIntervalBySessionUUID = v9->_breatheSessionDateIntervalBySessionUUID;
    v9->_breatheSessionDateIntervalBySessionUUID = v27;

    v29 = objc_alloc_init(HKDateIntervalTree);
    asleepTimeIntervals = v9->_asleepTimeIntervals;
    v9->_asleepTimeIntervals = v29;
  }

  return v9;
}

- (void)addHeartRateSamples:(const void *)samples
{
  v5 = *samples;
  v6 = *(samples + 1);
  v7 = *samples;
  if (v6 != v7)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v6 - v7) >> 3);
    begin = self->_heartRateSamples.__begin_;
    end = self->_heartRateSamples.__end_;
    v11 = end - begin;
    if (end == begin)
    {
      sub_12E50(&self->_heartRateSamples.__begin_, begin, v7, v6, v8);
    }

    else
    {
      sub_12D90(&self->_heartRateSamples.__begin_, v8 - 0x5555555555555555 * (v11 >> 3));
      sub_12E50(&self->_heartRateSamples.__begin_, self->_heartRateSamples.__end_, *samples, *(samples + 1), 0xAAAAAAAAAAAAAAABLL * ((*(samples + 1) - *samples) >> 3));
      sub_130C8(self->_heartRateSamples.__begin_, self->_heartRateSamples.__begin_ + v11, self->_heartRateSamples.__end_, &v21);
    }
  }

  sub_14948(self, samples);
  v12 = *samples;
  v13 = *(samples + 1);
  if (*samples != v13)
  {
    v14 = 0;
    v15 = 0;
    while (1)
    {
      v16 = *(v12 + 4);
      v17 = v16 == 4 ? 1 : v15;
      if (v16 == 3)
      {
        v14 = 1;
      }

      else
      {
        v15 = v17;
      }

      if (v14 & 1) != 0 && (v15)
      {
        break;
      }

      v12 += 24;
      if (v12 == v13)
      {
        if (v14)
        {
          restingHeartRate = self->_restingHeartRate;
          self->_restingHeartRate = 0;
        }

        if ((v15 & 1) == 0)
        {
          return;
        }

LABEL_21:
        walkingAverageHeartRate = self->_walkingAverageHeartRate;
        self->_walkingAverageHeartRate = 0;

        return;
      }
    }

    v19 = self->_restingHeartRate;
    self->_restingHeartRate = 0;

    goto LABEL_21;
  }
}

- (void)addAsleepTimeIntervals:(id)intervals
{
  intervalsCopy = intervals;
  restingHeartRate = self->_restingHeartRate;
  self->_restingHeartRate = 0;

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  mergedIntervals = [intervalsCopy mergedIntervals];
  v7 = [mergedIntervals countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v7)
  {
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(mergedIntervals);
        }

        [(HKDateIntervalTree *)self->_asleepTimeIntervals insertInterval:*(*(&v10 + 1) + 8 * v9)];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [mergedIntervals countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)addWorkouts:(const void *)workouts
{
  v5 = *workouts;
  v6 = *(workouts + 1);
  v7 = *workouts;
  if (v6 != v7)
  {
    v8 = (v6 - v7) >> 6;
    begin = self->_workouts.__begin_;
    end = self->_workouts.__end_;
    v11 = end - begin;
    if (end == begin)
    {
      sub_16A60(&self->_workouts.__begin_, begin, v7, v6, v8);
    }

    else
    {
      sub_169C0(&self->_workouts.__begin_, v8 + (v11 >> 6));
      sub_16A60(&self->_workouts.__begin_, self->_workouts.__end_, *workouts, *(workouts + 1), (*(workouts + 1) - *workouts) >> 6);
      sub_16C90(self->_workouts.__begin_, self->_workouts.__begin_ + v11, self->_workouts.__end_, &v14);
    }
  }

  sub_15CE0(self, workouts);
  for (i = *workouts; i != *(workouts + 1); i += 64)
  {
    if (*(i + 2) == 52)
    {
      walkingAverageHeartRate = self->_walkingAverageHeartRate;
      self->_walkingAverageHeartRate = 0;

      return;
    }
  }
}

- (void)addBreatheSessions:(const void *)sessions
{
  v16 = +[NSMutableArray array];
  v5 = *sessions;
  v6 = *(sessions + 1);
  if (*sessions != v6)
  {
    do
    {
      v7 = [[NSUUID alloc] initWithUUIDBytes:v5 + 2];
      v8 = [NSDateInterval alloc];
      v9 = [NSDate dateWithTimeIntervalSinceReferenceDate:*v5];
      v10 = [NSDate dateWithTimeIntervalSinceReferenceDate:v5[1]];
      v11 = [v8 initWithStartDate:v9 endDate:v10];

      [(NSMutableDictionary *)self->_breatheSessionDateIntervalBySessionUUID setObject:v11 forKeyedSubscript:v7];
      v12 = [NSDate dateWithTimeIntervalSinceReferenceDate:*v5 + (*v5 - v5[1] + 900.0) * -0.5];
      v13 = [[NSDateInterval alloc] initWithStartDate:v12 duration:900.0];
      v14 = [HKHeartRateSummaryBreatheStatistics alloc];
      v15 = [v14 initWithDateInterval:v13 numberOfBuckets:HDActivityCacheHeartRateStatisticsBuilderNumberOfHeartRateBuckets sessionUUID:v7];
      [(NSMutableArray *)self->_breatheStatistics addObject:v15];
      [v16 addObject:v15];

      v5 += 4;
    }

    while (v5 != v6);
  }

  sub_149F8(&self->super.isa, &self->_heartRateSamples, v16);
}

- (void)reportDailyAnalyticsWithProfile:(id)profile
{
  profileCopy = profile;
  daemon = [profileCopy daemon];
  analyticsSubmissionCoordinator = [daemon analyticsSubmissionCoordinator];
  isImprovedHealthAndActivityEnabled = [analyticsSubmissionCoordinator isImprovedHealthAndActivityEnabled];

  if (isImprovedHealthAndActivityEnabled)
  {
    restingHeartRate = self->_restingHeartRate;
    self->_restingHeartRate = 0;

    v19 = 0;
    v18 = 0;
    v17 = 0.0;
    v9 = sub_1417C(self, 2, &v19 + 1, &v19, &v18, &v17);
    v10 = +[HKUnit _countPerMinuteUnit];
    [v9 doubleValueForUnit:v10];
    v12 = v11;

    mergedIntervals = [(HKDateIntervalTree *)self->_asleepTimeIntervals mergedIntervals];
    v14 = [mergedIntervals count];

    daemon2 = [profileCopy daemon];
    analyticsSubmissionCoordinator2 = [daemon2 analyticsSubmissionCoordinator];
    [analyticsSubmissionCoordinator2 heartRate_reportDailyRestingHeartRate:HIDWORD(v19) sedentaryHeartRateCount:v19 filteredSedentaryHeartRateCount:v14 != 0 hasTimeAsleep:v18 hasBGHRSleepMode:objc_msgSend(profileCopy unfilteredRestingHeartRate:"profileType") profileType:{v12, v17}];
  }
}

- (id).cxx_construct
{
  *(self + 56) = 0u;
  *(self + 40) = 0u;
  *(self + 24) = 0u;
  return self;
}

@end