@interface HKSleepSchedule
+ (id)_sleepScheduleWithDate:(id)a3 weekdays:(unint64_t)a4 wakeTimeComponents:(id)a5 bedTimeComponents:(id)a6 overrideDayIndex:(id)a7 device:(id)a8 metadata:(id)a9 config:(id)a10;
- (BOOL)hasEquivalentOverrideDayToSleepSchedule:(id)a3;
- (BOOL)hasEquivalentTimesToSleepSchedule:(id)a3;
- (BOOL)isEquivalent:(id)a3;
- (HKSleepSchedule)init;
- (HKSleepSchedule)initWithCoder:(id)a3;
- (id)_validateWithConfiguration:(HKObjectValidationConfiguration)a3;
- (id)bedtimeDateIntervalForMorningIndex:(int64_t)a3 calendar:(id)a4;
- (id)bedtimeDateIntervalForWakeTime:(id)a3 calendar:(id)a4;
- (id)description;
- (id)wakeDateComponentsForMorningIndex:(int64_t)a3 calendar:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKSleepSchedule

+ (id)_sleepScheduleWithDate:(id)a3 weekdays:(unint64_t)a4 wakeTimeComponents:(id)a5 bedTimeComponents:(id)a6 overrideDayIndex:(id)a7 device:(id)a8 metadata:(id)a9 config:(id)a10
{
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a10;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __128__HKSleepSchedule__sleepScheduleWithDate_weekdays_wakeTimeComponents_bedTimeComponents_overrideDayIndex_device_metadata_config___block_invoke;
  aBlock[3] = &unk_1E7385A38;
  v36 = v19;
  v37 = a4;
  v33 = v16;
  v34 = v17;
  v35 = v18;
  v20 = v19;
  v21 = v18;
  v22 = v17;
  v23 = v16;
  v24 = a9;
  v25 = a8;
  v26 = a3;
  v27 = _Block_copy(aBlock);
  v28 = +[HKObjectType sleepScheduleType];
  v31.receiver = a1;
  v31.super_class = &OBJC_METACLASS___HKSleepSchedule;
  v29 = objc_msgSendSuper2(&v31, sel__newSampleFromDatesWithType_startDate_endDate_device_metadata_config_, v28, v26, v26, v25, v24, v27);

  return v29;
}

void __128__HKSleepSchedule__sleepScheduleWithDate_weekdays_wakeTimeComponents_bedTimeComponents_overrideDayIndex_device_metadata_config___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  *(v4 + 12) = *(a1 + 64);
  objc_storeStrong(v4 + 13, *(a1 + 32));
  objc_storeStrong(v4 + 14, *(a1 + 40));
  objc_storeStrong(v4 + 15, *(a1 + 48));
  v3 = *(a1 + 56);
  if (v3)
  {
    (*(v3 + 16))(v3, v4);
  }
}

- (HKSleepSchedule)init
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D940];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(HKSample *)self startDate];
  v6 = NSStringFromHKSleepScheduleWeekdays([(HKSleepSchedule *)self weekdays]);
  v7 = [(HKSleepSchedule *)self wakeTimeComponents];
  v8 = [v7 hk_dateOptionalDescription];
  v9 = [(HKSleepSchedule *)self bedTimeComponents];
  v10 = [v9 hk_dateOptionalDescription];
  v11 = [(HKSleepSchedule *)self overrideDayIndex];
  v12 = [v3 stringWithFormat:@"<%@:%p date: %@, days: %@, waketime: %@, bedtime: %@, day index: %@>", v4, self, v5, v6, v8, v10, v11, 0];

  return v12;
}

- (id)_validateWithConfiguration:(HKObjectValidationConfiguration)a3
{
  v14.receiver = self;
  v14.super_class = HKSleepSchedule;
  v5 = [(HKSample *)&v14 _validateWithConfiguration:a3.var0, a3.var1];
  v6 = v5;
  if (!v5)
  {
    overrideDayIndex = self->_overrideDayIndex;
    if (self->_weekdays)
    {
      if (overrideDayIndex)
      {
        v9 = MEMORY[0x1E696ABC0];
        v10 = objc_opt_class();
        v11 = @"Only sleep schedules without weekdays can specify an override day index.";
LABEL_9:
        v7 = [v9 hk_errorForInvalidArgument:@"@" class:v10 selector:a2 format:v11];
        goto LABEL_10;
      }
    }

    else if (!overrideDayIndex)
    {
      v9 = MEMORY[0x1E696ABC0];
      v10 = objc_opt_class();
      v11 = @"Sleep schedules without weekdays must specify an override day index.";
      goto LABEL_9;
    }

    v12 = 0;
    goto LABEL_11;
  }

  v7 = v5;
LABEL_10:
  v12 = v7;
LABEL_11:

  return v12;
}

- (id)wakeDateComponentsForMorningIndex:(int64_t)a3 calendar:(id)a4
{
  v6 = a4;
  v7 = [(HKSleepSchedule *)self wakeTimeComponents];

  if (v7)
  {
    v8 = [MEMORY[0x1E695DF10] hk_componentsWithDayIndex:a3 calendar:v6];
    v9 = [(HKSleepSchedule *)self wakeTimeComponents];
    [v8 setHour:{objc_msgSend(v9, "hour")}];

    v10 = [(HKSleepSchedule *)self wakeTimeComponents];
    [v8 setMinute:{objc_msgSend(v10, "minute")}];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)bedtimeDateIntervalForWakeTime:(id)a3 calendar:(id)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(HKSleepSchedule *)self bedTimeComponents];
  v9 = [v7 nextDateAfterDate:v6 matchingComponents:v8 options:516];

  if (v9 && [v6 hk_isAfterOrEqualToDate:v9])
  {
    v10 = [objc_alloc(MEMORY[0x1E696AB80]) initWithStartDate:v9 endDate:v6];
  }

  else
  {
    _HKInitializeLogging();
    v11 = HKLogSleep;
    if (os_log_type_enabled(HKLogSleep, OS_LOG_TYPE_ERROR))
    {
      v14 = v11;
      v16 = 138544130;
      v17 = objc_opt_class();
      v18 = 2112;
      v19 = v6;
      v20 = 2112;
      v21 = v9;
      v22 = 2112;
      v23 = self;
      v15 = v17;
      _os_log_error_impl(&dword_19197B000, v14, OS_LOG_TYPE_ERROR, "[%{public}@] Found invalid bedtime interval (%@ - %@) for schedule: %@", &v16, 0x2Au);
    }

    v10 = 0;
  }

  v12 = *MEMORY[0x1E69E9840];

  return v10;
}

- (id)bedtimeDateIntervalForMorningIndex:(int64_t)a3 calendar:(id)a4
{
  v6 = a4;
  v7 = [(HKSleepSchedule *)self wakeDateComponentsForMorningIndex:a3 calendar:v6];
  v8 = [v7 date];

  if (v8)
  {
    v9 = [(HKSleepSchedule *)self bedtimeDateIntervalForWakeTime:v8 calendar:v6];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)hasEquivalentTimesToSleepSchedule:(id)a3
{
  v4 = a3;
  v5 = [(HKSleepSchedule *)self wakeTimeComponents];
  v6 = [v4 wakeTimeComponents];
  v7 = v6;
  if (v5 == v6)
  {
  }

  else
  {
    v8 = [v4 wakeTimeComponents];
    if (!v8)
    {
LABEL_10:

      goto LABEL_11;
    }

    v9 = v8;
    v10 = [(HKSleepSchedule *)self wakeTimeComponents];
    v11 = [v4 wakeTimeComponents];
    v12 = [v10 isEqual:v11];

    if (!v12)
    {
      goto LABEL_11;
    }
  }

  v5 = [(HKSleepSchedule *)self bedTimeComponents];
  v13 = [v4 bedTimeComponents];
  v7 = v13;
  if (v5 == v13)
  {

LABEL_13:
    v19 = 1;
    goto LABEL_14;
  }

  v14 = [v4 bedTimeComponents];
  if (!v14)
  {
    goto LABEL_10;
  }

  v15 = v14;
  v16 = [(HKSleepSchedule *)self bedTimeComponents];
  v17 = [v4 bedTimeComponents];
  v18 = [v16 isEqual:v17];

  if (v18)
  {
    goto LABEL_13;
  }

LABEL_11:
  v19 = 0;
LABEL_14:

  return v19;
}

- (BOOL)hasEquivalentOverrideDayToSleepSchedule:(id)a3
{
  v4 = a3;
  if (-[HKSleepSchedule weekdays](self, "weekdays") || [v4 weekdays])
  {
    goto LABEL_3;
  }

  v7 = [(HKSleepSchedule *)self overrideDayIndex];
  v8 = [v4 overrideDayIndex];
  v9 = v8;
  if (v7 == v8)
  {

LABEL_10:
    v5 = 1;
    goto LABEL_4;
  }

  v10 = [v4 overrideDayIndex];
  if (v10)
  {
    v11 = v10;
    v12 = [(HKSleepSchedule *)self overrideDayIndex];
    v13 = [v4 overrideDayIndex];
    v14 = [v12 isEqual:v13];

    if (v14)
    {
      goto LABEL_10;
    }
  }

  else
  {
  }

LABEL_3:
  v5 = 0;
LABEL_4:

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = HKSleepSchedule;
  v4 = a3;
  [(HKSample *)&v5 encodeWithCoder:v4];
  [v4 encodeInteger:self->_weekdays forKey:{@"Weekdays", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_wakeTimeComponents forKey:@"WakeTimeComponents"];
  [v4 encodeObject:self->_bedTimeComponents forKey:@"BedTimeComponents"];
  [v4 encodeObject:self->_overrideDayIndex forKey:@"OverrideDayIndex"];
}

- (HKSleepSchedule)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = HKSleepSchedule;
  v5 = [(HKSample *)&v13 initWithCoder:v4];
  if (v5)
  {
    v5->_weekdays = [v4 decodeIntegerForKey:@"Weekdays"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"WakeTimeComponents"];
    wakeTimeComponents = v5->_wakeTimeComponents;
    v5->_wakeTimeComponents = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"BedTimeComponents"];
    bedTimeComponents = v5->_bedTimeComponents;
    v5->_bedTimeComponents = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"OverrideDayIndex"];
    overrideDayIndex = v5->_overrideDayIndex;
    v5->_overrideDayIndex = v10;
  }

  return v5;
}

- (BOOL)isEquivalent:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v29.receiver = self;
    v29.super_class = HKSleepSchedule;
    if (![(HKSample *)&v29 isEquivalent:v5])
    {
      goto LABEL_20;
    }

    v6 = [(HKSleepSchedule *)self weekdays];
    if (v6 != [v5 weekdays])
    {
      goto LABEL_20;
    }

    v7 = [(HKSleepSchedule *)self wakeTimeComponents];
    v8 = [v5 wakeTimeComponents];
    v9 = v8;
    if (v7 == v8)
    {
    }

    else
    {
      v10 = [v5 wakeTimeComponents];
      if (!v10)
      {
        goto LABEL_19;
      }

      v11 = v10;
      v12 = [(HKSleepSchedule *)self wakeTimeComponents];
      v13 = [v5 wakeTimeComponents];
      v14 = [v12 isEqual:v13];

      if (!v14)
      {
        goto LABEL_20;
      }
    }

    v7 = [(HKSleepSchedule *)self bedTimeComponents];
    v16 = [v5 bedTimeComponents];
    v9 = v16;
    if (v7 == v16)
    {
    }

    else
    {
      v17 = [v5 bedTimeComponents];
      if (!v17)
      {
        goto LABEL_19;
      }

      v18 = v17;
      v19 = [(HKSleepSchedule *)self bedTimeComponents];
      v20 = [v5 bedTimeComponents];
      v21 = [v19 isEqual:v20];

      if (!v21)
      {
        goto LABEL_20;
      }
    }

    v7 = [(HKSleepSchedule *)self overrideDayIndex];
    v22 = [v5 overrideDayIndex];
    v9 = v22;
    if (v7 == v22)
    {

LABEL_24:
      v15 = 1;
      goto LABEL_21;
    }

    v23 = [v5 overrideDayIndex];
    if (v23)
    {
      v24 = v23;
      v25 = [(HKSleepSchedule *)self overrideDayIndex];
      v26 = [v5 overrideDayIndex];
      v27 = [v25 isEqual:v26];

      if (v27)
      {
        goto LABEL_24;
      }

LABEL_20:
      v15 = 0;
LABEL_21:

      goto LABEL_22;
    }

LABEL_19:

    goto LABEL_20;
  }

  v15 = 0;
LABEL_22:

  return v15;
}

@end