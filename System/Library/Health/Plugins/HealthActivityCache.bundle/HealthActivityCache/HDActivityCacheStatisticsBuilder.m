@interface HDActivityCacheStatisticsBuilder
- (HDActivityCacheStatisticsBuilder)init;
- (HDActivityCacheStatisticsBuilder)initWithDateInterval:(id)a3 loggingName:(id)a4;
- (HDActivityCacheStatisticsBuilderSourceDelegate)sourceDelegate;
- (id).cxx_construct;
- (id)activeEnergyValue;
- (id)createExerciseStatisticsWithIntervalComponents:(id)a3 calendar:(id)a4;
- (id)createMoveMinuteStatisticsWithIntervalComponents:(id)a3 calendar:(id)a4;
- (id)createMoveStatisticsWithIntervalComponents:(id)a3 calendar:(id)a4;
- (id)createStandStatisticsWithCalendar:(id)a3;
- (id)createStatisticsCollectionWithType:(id)a3 intervalComponents:(id)a4 calendar:(id)a5;
- (id)distanceWalkingValue;
- (id)workoutSamplesWithSourceManager:(id)a3;
- (int64_t)exerciseMinuteValue;
- (int64_t)flightsClimbedValue;
- (int64_t)moveMinuteValue;
- (int64_t)pushCountValue;
- (int64_t)standHourValue;
- (int64_t)stepCountValue;
- (void)addActivationLogSamples:(const void *)a3;
- (void)addDeviceSample:(HDActivityCacheStatisticsBuilderSample *)a3 typeCode:(int64_t)a4;
- (void)addDeviceSamples:(const void *)a3 typeCode:(int64_t)a4;
- (void)addStandHourSamples:(const void *)a3;
- (void)addWorkoutSample:(HDActivityCacheStatisticsBuilderSample *)a3 typeCode:(int64_t)a4;
- (void)addWorkouts:(const void *)a3;
@end

@implementation HDActivityCacheStatisticsBuilder

- (HDActivityCacheStatisticsBuilder)initWithDateInterval:(id)a3 loggingName:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15.receiver = self;
  v15.super_class = HDActivityCacheStatisticsBuilder;
  v8 = [(HDActivityCacheStatisticsBuilder *)&v15 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_loggingName, a4);
    *&v9->_intervalDuration = HDActivityCacheStatisticsBuilderDefaultIntervalDuration;
    v10 = [v6 startDate];
    [v10 timeIntervalSinceReferenceDate];
    v9->_builderStartTime = v11;

    v12 = [v6 endDate];
    [v12 timeIntervalSinceReferenceDate];
    v9->_builderEndTime = v13;

    v9->_deepBreathingDurationValue = 0.0;
  }

  return v9;
}

- (HDActivityCacheStatisticsBuilder)init
{
  v3 = NSStringFromSelector(a2);
  [NSException raise:NSInvalidArgumentException format:@"The -%@ method is not available on %@", v3, objc_opt_class()];

  return 0;
}

- (id)activeEnergyValue
{
  lastActiveEnergyValue = self->_lastActiveEnergyValue;
  if (!lastActiveEnergyValue)
  {
    sub_179D8(self, 10, &v14);
    v13 = 10;
    v16 = &v13;
    v4 = sub_1CB64(&self->_sourceTotalsByIntervalIndexByTypeCode, &v13);
    v11 = 0;
    v12 = 0;
    __p = 0;
    sub_AB24(&__p, v14, v15, (v15 - v14) >> 3);
    v5 = sub_17E28(self, v4 + 5, &__p);
    if (__p)
    {
      v11 = __p;
      operator delete(__p);
    }

    v6 = +[HKUnit kilocalorieUnit];
    v7 = [HKQuantity quantityWithUnit:v6 doubleValue:v5];
    v8 = self->_lastActiveEnergyValue;
    self->_lastActiveEnergyValue = v7;

    if (v14)
    {
      v15 = v14;
      operator delete(v14);
    }

    lastActiveEnergyValue = self->_lastActiveEnergyValue;
  }

  return lastActiveEnergyValue;
}

- (int64_t)moveMinuteValue
{
  lastMoveMinuteValue = self->_lastMoveMinuteValue;
  if (!lastMoveMinuteValue)
  {
    sub_179D8(self, 179, &v13);
    v12 = 179;
    v15 = &v12;
    v4 = sub_1CB64(&self->_sourceTotalsByIntervalIndexByTypeCode, &v12);
    v10 = 0;
    v11 = 0;
    __p = 0;
    sub_AB24(&__p, v13, v14, (v14 - v13) >> 3);
    v5 = sub_17E28(self, v4 + 5, &__p);
    if (__p)
    {
      v10 = __p;
      operator delete(__p);
    }

    v6 = [NSNumber numberWithDouble:round(v5)];
    v7 = self->_lastMoveMinuteValue;
    self->_lastMoveMinuteValue = v6;

    if (v13)
    {
      v14 = v13;
      operator delete(v13);
    }

    lastMoveMinuteValue = self->_lastMoveMinuteValue;
  }

  return [(NSNumber *)lastMoveMinuteValue integerValue];
}

- (id)distanceWalkingValue
{
  lastDistanceWalkingValue = self->_lastDistanceWalkingValue;
  if (!lastDistanceWalkingValue)
  {
    sub_179D8(self, 8, &v14);
    v13 = 8;
    v16 = &v13;
    v4 = sub_1CB64(&self->_sourceTotalsByIntervalIndexByTypeCode, &v13);
    v11 = 0;
    v12 = 0;
    __p = 0;
    sub_AB24(&__p, v14, v15, (v15 - v14) >> 3);
    v5 = sub_17E28(self, v4 + 5, &__p);
    if (__p)
    {
      v11 = __p;
      operator delete(__p);
    }

    v6 = +[HKUnit meterUnit];
    v7 = [HKQuantity quantityWithUnit:v6 doubleValue:v5];
    v8 = self->_lastDistanceWalkingValue;
    self->_lastDistanceWalkingValue = v7;

    if (v14)
    {
      v15 = v14;
      operator delete(v14);
    }

    lastDistanceWalkingValue = self->_lastDistanceWalkingValue;
  }

  return lastDistanceWalkingValue;
}

- (int64_t)flightsClimbedValue
{
  lastFlightsClimbedValue = self->_lastFlightsClimbedValue;
  if (!lastFlightsClimbedValue)
  {
    sub_179D8(self, 12, &v13);
    v12 = 12;
    v15 = &v12;
    v4 = sub_1CB64(&self->_sourceTotalsByIntervalIndexByTypeCode, &v12);
    v10 = 0;
    v11 = 0;
    __p = 0;
    sub_AB24(&__p, v13, v14, (v14 - v13) >> 3);
    v5 = sub_17E28(self, v4 + 5, &__p);
    if (__p)
    {
      v10 = __p;
      operator delete(__p);
    }

    v6 = [NSNumber numberWithDouble:round(v5)];
    v7 = self->_lastFlightsClimbedValue;
    self->_lastFlightsClimbedValue = v6;

    if (v13)
    {
      v14 = v13;
      operator delete(v13);
    }

    lastFlightsClimbedValue = self->_lastFlightsClimbedValue;
  }

  return [(NSNumber *)lastFlightsClimbedValue integerValue];
}

- (int64_t)stepCountValue
{
  lastStepCountValue = self->_lastStepCountValue;
  if (!lastStepCountValue)
  {
    sub_179D8(self, 7, &v13);
    v12 = 7;
    v15 = &v12;
    v4 = sub_1CB64(&self->_sourceTotalsByIntervalIndexByTypeCode, &v12);
    v10 = 0;
    v11 = 0;
    __p = 0;
    sub_AB24(&__p, v13, v14, (v14 - v13) >> 3);
    v5 = sub_17E28(self, v4 + 5, &__p);
    if (__p)
    {
      v10 = __p;
      operator delete(__p);
    }

    v6 = [NSNumber numberWithDouble:round(v5)];
    v7 = self->_lastStepCountValue;
    self->_lastStepCountValue = v6;

    if (v13)
    {
      v14 = v13;
      operator delete(v13);
    }

    lastStepCountValue = self->_lastStepCountValue;
  }

  return [(NSNumber *)lastStepCountValue integerValue];
}

- (int64_t)pushCountValue
{
  lastPushCountValue = self->_lastPushCountValue;
  if (!lastPushCountValue)
  {
    sub_179D8(self, 101, &v13);
    v12 = 101;
    v15 = &v12;
    v4 = sub_1CB64(&self->_sourceTotalsByIntervalIndexByTypeCode, &v12);
    v10 = 0;
    v11 = 0;
    __p = 0;
    sub_AB24(&__p, v13, v14, (v14 - v13) >> 3);
    v5 = sub_17E28(self, v4 + 5, &__p);
    if (__p)
    {
      v10 = __p;
      operator delete(__p);
    }

    v6 = [NSNumber numberWithDouble:round(v5)];
    v7 = self->_lastPushCountValue;
    self->_lastPushCountValue = v6;

    if (v13)
    {
      v14 = v13;
      operator delete(v13);
    }

    lastPushCountValue = self->_lastPushCountValue;
  }

  return [(NSNumber *)lastPushCountValue integerValue];
}

- (int64_t)standHourValue
{
  lastStandHourValue = self->_lastStandHourValue;
  if (!lastStandHourValue)
  {
    v4 = [NSNumber numberWithInteger:HDActivityCacheStatisticsBuilderStandHoursStatisticsForSamples(&self->_standHourSamples)];
    v5 = self->_lastStandHourValue;
    self->_lastStandHourValue = v4;

    lastStandHourValue = self->_lastStandHourValue;
  }

  return [(NSNumber *)lastStandHourValue integerValue];
}

- (int64_t)exerciseMinuteValue
{
  lastExerciseMinuteValue = self->_lastExerciseMinuteValue;
  if (!lastExerciseMinuteValue)
  {
    sub_179D8(self, 75, &v13);
    v12 = 75;
    v15 = &v12;
    v4 = sub_1CB64(&self->_sourceTotalsByIntervalIndexByTypeCode, &v12);
    v10 = 0;
    v11 = 0;
    __p = 0;
    sub_AB24(&__p, v13, v14, (v14 - v13) >> 3);
    v5 = sub_17E28(self, v4 + 5, &__p);
    if (__p)
    {
      v10 = __p;
      operator delete(__p);
    }

    v6 = [NSNumber numberWithDouble:round(v5)];
    v7 = self->_lastExerciseMinuteValue;
    self->_lastExerciseMinuteValue = v6;

    if (v13)
    {
      v14 = v13;
      operator delete(v13);
    }

    lastExerciseMinuteValue = self->_lastExerciseMinuteValue;
  }

  return [(NSNumber *)lastExerciseMinuteValue integerValue];
}

- (void)addWorkouts:(const void *)a3
{
  v5 = *a3;
  v6 = *(a3 + 1);
  v7 = *a3;
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
      sub_16A60(&self->_workouts.__begin_, self->_workouts.__end_, *a3, *(a3 + 1), (*(a3 + 1) - *a3) >> 6);
      sub_16C90(self->_workouts.__begin_, self->_workouts.__begin_ + v11, self->_workouts.__end_, &v12);
    }

    sub_21AA0(self);
    goto LABEL_8;
  }

  sub_21AA0(self);
  if (self)
  {
LABEL_8:
    sub_AC98(&self->_activeSourcesList);
  }
}

- (void)addStandHourSamples:(const void *)a3
{
  sub_1A950(&self->_standHourSamples.__begin_, self->_standHourSamples.__end_, *a3, *(a3 + 1), 0xAAAAAAAAAAAAAAABLL * ((*(a3 + 1) - *a3) >> 3));
  lastStandHourValue = self->_lastStandHourValue;
  self->_lastStandHourValue = 0;
}

- (void)addActivationLogSamples:(const void *)a3
{
  sub_18DE0(self, a3, &v8);
  if (v9 == v8)
  {
    sub_21AA0(self);
    if (!self)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v4 = 0xCCCCCCCCCCCCCCCDLL * ((v9 - v8) >> 3);
    begin = self->_activationLogSamples.__begin_;
    end = self->_activationLogSamples.__end_;
    v7 = end - begin;
    if (end == begin)
    {
      sub_1CD88(&self->_activationLogSamples, begin, v8, v9, v4);
    }

    else
    {
      sub_1CCAC(&self->_activationLogSamples.__begin_, v4 - 0x3333333333333333 * (v7 >> 3));
      sub_1CD88(&self->_activationLogSamples, self->_activationLogSamples.__end_, v8, v9, 0xCCCCCCCCCCCCCCCDLL * ((v9 - v8) >> 3));
      sub_1D270(self->_activationLogSamples.__begin_, (self->_activationLogSamples.__begin_ + v7), self->_activationLogSamples.__end_, &v10);
    }

    sub_21AA0(self);
  }

  sub_AC98(&self->_activeSourcesList);
LABEL_9:
  v11 = &v8;
  sub_CBB8(&v11);
}

- (id)createStatisticsCollectionWithType:(id)a3 intervalComponents:(id)a4 calendar:(id)a5
{
  v8 = a3;
  v9 = a4;
  v35 = a5;
  v42[0] = [v8 code];
  v10 = [v8 canonicalUnit];
  v11 = [NSDate dateWithTimeIntervalSinceReferenceDate:self->_builderStartTime];
  v12 = [v35 dateByAddingComponents:v9 toDate:v11 options:0];
  v36 = [NSDate dateWithTimeIntervalSinceReferenceDate:self->_builderEndTime];
  v13 = [[HKStatisticsCollection alloc] initWithAnchorDate:v11 statisticsInterval:v9];
  sub_179D8(self, v42[0], &__p);
  v42[2] = v42;
  v14 = sub_1CB64(&self->_sourceTotalsByIntervalIndexByTypeCode, v42);
  v15 = v14;
  v16 = v14[7];
  if (v16)
  {
    v20 = self->_builderStartTime + *(v14[5] + 32) * self->_intervalDuration;
    v21 = sub_21CD4(self, (v14 + 5));
    v34 = v10;
    while (1)
    {
      [v11 timeIntervalSinceReferenceDate];
      v23 = v22;
      [v36 timeIntervalSinceReferenceDate];
      if (v23 >= v24)
      {
        break;
      }

      [v11 timeIntervalSinceReferenceDate];
      v26 = v25;
      [v12 timeIntervalSinceReferenceDate];
      if (v26 >= v21)
      {
        break;
      }

      v28 = v27;
      if (v27 > v20)
      {
        v37 = 0;
        v38 = 0;
        v39 = 0;
        sub_AB24(&v37, __p, v41, (v41 - __p) >> 3);
        v29 = sub_19580(self, v15 + 5, &v37, v26, v28);
        if (v37)
        {
          v38 = v37;
          operator delete(v37);
        }

        if (v29 > 0.00000011920929)
        {
          v30 = [[HKStatistics alloc] initWithDataType:v8 startDate:v11 endDate:v12];
          v31 = [HKQuantity quantityWithUnit:v10 doubleValue:v29];
          [v30 setSumQuantity:v31];

          [v30 setDataCount:1];
          [v13 _insertStatistics:v30];

          v10 = v34;
        }
      }

      v32 = v12;

      v33 = [v35 dateByAddingComponents:v9 toDate:v32 options:0];

      v12 = v33;
      v11 = v32;
    }
  }

  else
  {
    v17 = v13;
  }

  if (__p)
  {
    v41 = __p;
    operator delete(__p);
  }

  if (v16)
  {
    v18 = v13;
  }

  return v13;
}

- (id)createMoveStatisticsWithIntervalComponents:(id)a3 calendar:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [HKQuantityType quantityTypeForIdentifier:HKQuantityTypeIdentifierActiveEnergyBurned];
  v9 = sub_199C0(self, v8, v6, v7);

  return v9;
}

- (id)createMoveMinuteStatisticsWithIntervalComponents:(id)a3 calendar:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [HKQuantityType quantityTypeForIdentifier:HKQuantityTypeIdentifierAppleMoveTime];
  v9 = sub_199C0(self, v8, v6, v7);

  return v9;
}

- (id)createExerciseStatisticsWithIntervalComponents:(id)a3 calendar:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[HKQuantityType briskMinuteDataType];
  v9 = sub_199C0(self, v8, v6, v7);

  return v9;
}

- (id)createStandStatisticsWithCalendar:(id)a3
{
  v4 = a3;
  begin = self->_standHourSamples.__begin_;
  end = self->_standHourSamples.__end_;
  if (end == begin)
  {
    v21 = &__NSArray0__struct;
  }

  else
  {
    sub_1AD08(begin, end, &v26, 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((end - begin) >> 3)), 1, v5);
    v26 = 0;
    v27 = 0;
    v28 = 0;
    v9 = self->_standHourSamples.__begin_;
    v8 = self->_standHourSamples.__end_;
    v10 = *(v9 + 2);
    v24 = *v9;
    v25 = v10;
    if (v9 != v8)
    {
      v11 = v24;
      do
      {
        v12 = *v9;
        v13 = *(v9 + 2);
        v14 = vceq_s32(*v9, v11);
        if (v14.i32[0] & v14.i32[1])
        {
          v15 = DWORD2(v24);
          if (SDWORD2(v24) >= SDWORD2(v12))
          {
            v15 = DWORD2(*(v9 + 8));
          }

          DWORD2(v24) = v15;
        }

        else
        {
          v23 = *v9;
          sub_1A354(&v26, &v24);
          *&v12 = v23;
          v24 = v23;
        }

        v25 = v13;
        v9 = (v9 + 24);
        v11 = v12;
      }

      while (v9 != v8);
    }

    sub_1A354(&v26, &v24);
    v16 = [NSMutableArray alloc];
    v17 = [v16 initWithCapacity:0xAAAAAAAAAAAAAAABLL * ((v27 - v26) >> 3)];
    v18 = v26;
    v19 = v27;
    if (v26 != v27)
    {
      do
      {
        v20 = [[_HKActivityStatisticsStandHourInfo alloc] initWithTimeStamp:*(v18 + 8) != 0 state:*(v18 + 16)];
        [v17 addObject:v20];

        v18 += 24;
      }

      while (v18 != v19);
      v18 = v26;
    }

    if (v18)
    {
      v27 = v18;
      operator delete(v18);
    }

    v21 = [NSArray arrayWithArray:v17, v23, v24];
  }

  return v21;
}

- (id)workoutSamplesWithSourceManager:(id)a3
{
  v4 = a3;
  v18 = [[NSMutableArray alloc] initWithCapacity:(self->_workouts.__end_ - self->_workouts.__begin_) >> 6];
  begin = self->_workouts.__begin_;
  end = self->_workouts.__end_;
  if (begin != end)
  {
    *&v5 = 138412290;
    v17 = v5;
    do
    {
      v8 = [NSNumber numberWithLongLong:*(begin + 4), v17];
      v19 = 0;
      v9 = [v4 clientSourceForPersistentID:v8 error:&v19];
      v10 = v19;

      if (v9)
      {
        v11 = [_HKActivityStatisticsWorkoutInfo alloc];
        v12 = [NSDate dateWithTimeIntervalSinceReferenceDate:*begin];
        v13 = [NSDate dateWithTimeIntervalSinceReferenceDate:*(begin + 1)];
        v14 = [v11 initWithStartDate:v12 endDate:v13 source:v9];

        [v18 addObject:v14];
      }

      else
      {
        _HKInitializeLogging();
        v14 = HKLogActivityCache;
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v15 = [NSNumber numberWithLongLong:*(begin + 4)];
          *buf = v17;
          v21 = v15;
          _os_log_impl(&def_21990, v14, OS_LOG_TYPE_DEFAULT, "Did not find a source for workout sample with source identifier %@", buf, 0xCu);
        }
      }

      begin = (begin + 64);
    }

    while (begin != end);
  }

  return v18;
}

- (HDActivityCacheStatisticsBuilderSourceDelegate)sourceDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_sourceDelegate);

  return WeakRetained;
}

- (id).cxx_construct
{
  *(self + 19) = 0;
  *(self + 20) = 0;
  *(self + 24) = 0;
  *(self + 23) = 0;
  *(self + 8) = 0u;
  *(self + 24) = 0u;
  *(self + 40) = 0u;
  *(self + 56) = 0u;
  *(self + 9) = 0;
  *(self + 21) = 0;
  *(self + 22) = self + 184;
  return self;
}

- (void)addDeviceSample:(HDActivityCacheStatisticsBuilderSample *)a3 typeCode:(int64_t)a4
{
  *&v10 = sub_1DD04(self, a2, a3, a4, v4, v5, v6, v7, v14, v15).n128_u64[0];
  v13 = sub_1DD24(v11, v12, &std::piecewise_construct, v10);
  sub_18F18(v9, v16, v13 + 5, 0);
  sub_21910(v9, v8);
}

- (void)addDeviceSamples:(const void *)a3 typeCode:(int64_t)a4
{
  v8[0] = a4;
  v8[2] = v8;
  v7 = sub_1CB64(&self->_sourceTotalsByIntervalIndexByTypeCode, v8);
  sub_21C08(self, a3, v7 + 5, 0);
  sub_21910(self, a4);
}

- (void)addWorkoutSample:(HDActivityCacheStatisticsBuilderSample *)a3 typeCode:(int64_t)a4
{
  *&v10 = sub_1DD04(self, a2, a3, a4, v4, v5, v6, v7, v14, v15).n128_u64[0];
  v13 = sub_1DD24(v11, v12, &std::piecewise_construct, v10);
  sub_18F18(v9, v16, v13 + 5, 1);
  sub_21910(v9, v8);
}

@end