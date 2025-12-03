@interface HKSleepSchedule
+ (id)_sleepScheduleWithDate:(id)date weekdays:(unint64_t)weekdays wakeTimeComponents:(id)components bedTimeComponents:(id)timeComponents overrideDayIndex:(id)index device:(id)device metadata:(id)metadata config:(id)self0;
- (BOOL)hasEquivalentOverrideDayToSleepSchedule:(id)schedule;
- (BOOL)hasEquivalentTimesToSleepSchedule:(id)schedule;
- (BOOL)isEquivalent:(id)equivalent;
- (HKSleepSchedule)init;
- (HKSleepSchedule)initWithCoder:(id)coder;
- (id)_validateWithConfiguration:(HKObjectValidationConfiguration)configuration;
- (id)bedtimeDateIntervalForMorningIndex:(int64_t)index calendar:(id)calendar;
- (id)bedtimeDateIntervalForWakeTime:(id)time calendar:(id)calendar;
- (id)description;
- (id)wakeDateComponentsForMorningIndex:(int64_t)index calendar:(id)calendar;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKSleepSchedule

+ (id)_sleepScheduleWithDate:(id)date weekdays:(unint64_t)weekdays wakeTimeComponents:(id)components bedTimeComponents:(id)timeComponents overrideDayIndex:(id)index device:(id)device metadata:(id)metadata config:(id)self0
{
  componentsCopy = components;
  timeComponentsCopy = timeComponents;
  indexCopy = index;
  configCopy = config;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __128__HKSleepSchedule__sleepScheduleWithDate_weekdays_wakeTimeComponents_bedTimeComponents_overrideDayIndex_device_metadata_config___block_invoke;
  aBlock[3] = &unk_1E7385A38;
  v36 = configCopy;
  weekdaysCopy = weekdays;
  v33 = componentsCopy;
  v34 = timeComponentsCopy;
  v35 = indexCopy;
  v20 = configCopy;
  v21 = indexCopy;
  v22 = timeComponentsCopy;
  v23 = componentsCopy;
  metadataCopy = metadata;
  deviceCopy = device;
  dateCopy = date;
  v27 = _Block_copy(aBlock);
  v28 = +[HKObjectType sleepScheduleType];
  v31.receiver = self;
  v31.super_class = &OBJC_METACLASS___HKSleepSchedule;
  v29 = objc_msgSendSuper2(&v31, sel__newSampleFromDatesWithType_startDate_endDate_device_metadata_config_, v28, dateCopy, dateCopy, deviceCopy, metadataCopy, v27);

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
  startDate = [(HKSample *)self startDate];
  v6 = NSStringFromHKSleepScheduleWeekdays([(HKSleepSchedule *)self weekdays]);
  wakeTimeComponents = [(HKSleepSchedule *)self wakeTimeComponents];
  hk_dateOptionalDescription = [wakeTimeComponents hk_dateOptionalDescription];
  bedTimeComponents = [(HKSleepSchedule *)self bedTimeComponents];
  hk_dateOptionalDescription2 = [bedTimeComponents hk_dateOptionalDescription];
  overrideDayIndex = [(HKSleepSchedule *)self overrideDayIndex];
  v12 = [v3 stringWithFormat:@"<%@:%p date: %@, days: %@, waketime: %@, bedtime: %@, day index: %@>", v4, self, startDate, v6, hk_dateOptionalDescription, hk_dateOptionalDescription2, overrideDayIndex, 0];

  return v12;
}

- (id)_validateWithConfiguration:(HKObjectValidationConfiguration)configuration
{
  v14.receiver = self;
  v14.super_class = HKSleepSchedule;
  v5 = [(HKSample *)&v14 _validateWithConfiguration:configuration.var0, configuration.var1];
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

- (id)wakeDateComponentsForMorningIndex:(int64_t)index calendar:(id)calendar
{
  calendarCopy = calendar;
  wakeTimeComponents = [(HKSleepSchedule *)self wakeTimeComponents];

  if (wakeTimeComponents)
  {
    v8 = [MEMORY[0x1E695DF10] hk_componentsWithDayIndex:index calendar:calendarCopy];
    wakeTimeComponents2 = [(HKSleepSchedule *)self wakeTimeComponents];
    [v8 setHour:{objc_msgSend(wakeTimeComponents2, "hour")}];

    wakeTimeComponents3 = [(HKSleepSchedule *)self wakeTimeComponents];
    [v8 setMinute:{objc_msgSend(wakeTimeComponents3, "minute")}];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)bedtimeDateIntervalForWakeTime:(id)time calendar:(id)calendar
{
  v24 = *MEMORY[0x1E69E9840];
  timeCopy = time;
  calendarCopy = calendar;
  bedTimeComponents = [(HKSleepSchedule *)self bedTimeComponents];
  v9 = [calendarCopy nextDateAfterDate:timeCopy matchingComponents:bedTimeComponents options:516];

  if (v9 && [timeCopy hk_isAfterOrEqualToDate:v9])
  {
    v10 = [objc_alloc(MEMORY[0x1E696AB80]) initWithStartDate:v9 endDate:timeCopy];
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
      v19 = timeCopy;
      v20 = 2112;
      v21 = v9;
      v22 = 2112;
      selfCopy = self;
      v15 = v17;
      _os_log_error_impl(&dword_19197B000, v14, OS_LOG_TYPE_ERROR, "[%{public}@] Found invalid bedtime interval (%@ - %@) for schedule: %@", &v16, 0x2Au);
    }

    v10 = 0;
  }

  v12 = *MEMORY[0x1E69E9840];

  return v10;
}

- (id)bedtimeDateIntervalForMorningIndex:(int64_t)index calendar:(id)calendar
{
  calendarCopy = calendar;
  v7 = [(HKSleepSchedule *)self wakeDateComponentsForMorningIndex:index calendar:calendarCopy];
  date = [v7 date];

  if (date)
  {
    v9 = [(HKSleepSchedule *)self bedtimeDateIntervalForWakeTime:date calendar:calendarCopy];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)hasEquivalentTimesToSleepSchedule:(id)schedule
{
  scheduleCopy = schedule;
  wakeTimeComponents = [(HKSleepSchedule *)self wakeTimeComponents];
  wakeTimeComponents2 = [scheduleCopy wakeTimeComponents];
  v7 = wakeTimeComponents2;
  if (wakeTimeComponents == wakeTimeComponents2)
  {
  }

  else
  {
    wakeTimeComponents3 = [scheduleCopy wakeTimeComponents];
    if (!wakeTimeComponents3)
    {
LABEL_10:

      goto LABEL_11;
    }

    v9 = wakeTimeComponents3;
    wakeTimeComponents4 = [(HKSleepSchedule *)self wakeTimeComponents];
    wakeTimeComponents5 = [scheduleCopy wakeTimeComponents];
    v12 = [wakeTimeComponents4 isEqual:wakeTimeComponents5];

    if (!v12)
    {
      goto LABEL_11;
    }
  }

  wakeTimeComponents = [(HKSleepSchedule *)self bedTimeComponents];
  bedTimeComponents = [scheduleCopy bedTimeComponents];
  v7 = bedTimeComponents;
  if (wakeTimeComponents == bedTimeComponents)
  {

LABEL_13:
    v19 = 1;
    goto LABEL_14;
  }

  bedTimeComponents2 = [scheduleCopy bedTimeComponents];
  if (!bedTimeComponents2)
  {
    goto LABEL_10;
  }

  v15 = bedTimeComponents2;
  bedTimeComponents3 = [(HKSleepSchedule *)self bedTimeComponents];
  bedTimeComponents4 = [scheduleCopy bedTimeComponents];
  v18 = [bedTimeComponents3 isEqual:bedTimeComponents4];

  if (v18)
  {
    goto LABEL_13;
  }

LABEL_11:
  v19 = 0;
LABEL_14:

  return v19;
}

- (BOOL)hasEquivalentOverrideDayToSleepSchedule:(id)schedule
{
  scheduleCopy = schedule;
  if (-[HKSleepSchedule weekdays](self, "weekdays") || [scheduleCopy weekdays])
  {
    goto LABEL_3;
  }

  overrideDayIndex = [(HKSleepSchedule *)self overrideDayIndex];
  overrideDayIndex2 = [scheduleCopy overrideDayIndex];
  v9 = overrideDayIndex2;
  if (overrideDayIndex == overrideDayIndex2)
  {

LABEL_10:
    v5 = 1;
    goto LABEL_4;
  }

  overrideDayIndex3 = [scheduleCopy overrideDayIndex];
  if (overrideDayIndex3)
  {
    v11 = overrideDayIndex3;
    overrideDayIndex4 = [(HKSleepSchedule *)self overrideDayIndex];
    overrideDayIndex5 = [scheduleCopy overrideDayIndex];
    v14 = [overrideDayIndex4 isEqual:overrideDayIndex5];

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

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = HKSleepSchedule;
  coderCopy = coder;
  [(HKSample *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInteger:self->_weekdays forKey:{@"Weekdays", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_wakeTimeComponents forKey:@"WakeTimeComponents"];
  [coderCopy encodeObject:self->_bedTimeComponents forKey:@"BedTimeComponents"];
  [coderCopy encodeObject:self->_overrideDayIndex forKey:@"OverrideDayIndex"];
}

- (HKSleepSchedule)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = HKSleepSchedule;
  v5 = [(HKSample *)&v13 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_weekdays = [coderCopy decodeIntegerForKey:@"Weekdays"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"WakeTimeComponents"];
    wakeTimeComponents = v5->_wakeTimeComponents;
    v5->_wakeTimeComponents = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"BedTimeComponents"];
    bedTimeComponents = v5->_bedTimeComponents;
    v5->_bedTimeComponents = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"OverrideDayIndex"];
    overrideDayIndex = v5->_overrideDayIndex;
    v5->_overrideDayIndex = v10;
  }

  return v5;
}

- (BOOL)isEquivalent:(id)equivalent
{
  equivalentCopy = equivalent;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equivalentCopy;
    v29.receiver = self;
    v29.super_class = HKSleepSchedule;
    if (![(HKSample *)&v29 isEquivalent:v5])
    {
      goto LABEL_20;
    }

    weekdays = [(HKSleepSchedule *)self weekdays];
    if (weekdays != [v5 weekdays])
    {
      goto LABEL_20;
    }

    wakeTimeComponents = [(HKSleepSchedule *)self wakeTimeComponents];
    wakeTimeComponents2 = [v5 wakeTimeComponents];
    v9 = wakeTimeComponents2;
    if (wakeTimeComponents == wakeTimeComponents2)
    {
    }

    else
    {
      wakeTimeComponents3 = [v5 wakeTimeComponents];
      if (!wakeTimeComponents3)
      {
        goto LABEL_19;
      }

      v11 = wakeTimeComponents3;
      wakeTimeComponents4 = [(HKSleepSchedule *)self wakeTimeComponents];
      wakeTimeComponents5 = [v5 wakeTimeComponents];
      v14 = [wakeTimeComponents4 isEqual:wakeTimeComponents5];

      if (!v14)
      {
        goto LABEL_20;
      }
    }

    wakeTimeComponents = [(HKSleepSchedule *)self bedTimeComponents];
    bedTimeComponents = [v5 bedTimeComponents];
    v9 = bedTimeComponents;
    if (wakeTimeComponents == bedTimeComponents)
    {
    }

    else
    {
      bedTimeComponents2 = [v5 bedTimeComponents];
      if (!bedTimeComponents2)
      {
        goto LABEL_19;
      }

      v18 = bedTimeComponents2;
      bedTimeComponents3 = [(HKSleepSchedule *)self bedTimeComponents];
      bedTimeComponents4 = [v5 bedTimeComponents];
      v21 = [bedTimeComponents3 isEqual:bedTimeComponents4];

      if (!v21)
      {
        goto LABEL_20;
      }
    }

    wakeTimeComponents = [(HKSleepSchedule *)self overrideDayIndex];
    overrideDayIndex = [v5 overrideDayIndex];
    v9 = overrideDayIndex;
    if (wakeTimeComponents == overrideDayIndex)
    {

LABEL_24:
      v15 = 1;
      goto LABEL_21;
    }

    overrideDayIndex2 = [v5 overrideDayIndex];
    if (overrideDayIndex2)
    {
      v24 = overrideDayIndex2;
      overrideDayIndex3 = [(HKSleepSchedule *)self overrideDayIndex];
      overrideDayIndex4 = [v5 overrideDayIndex];
      v27 = [overrideDayIndex3 isEqual:overrideDayIndex4];

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