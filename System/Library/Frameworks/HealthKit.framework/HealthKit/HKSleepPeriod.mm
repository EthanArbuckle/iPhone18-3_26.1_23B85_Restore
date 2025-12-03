@interface HKSleepPeriod
+ (BOOL)_isSleepDayInterval:(id)interval bestFitForSampleInterval:(id)sampleInterval consideringInterval:(id)consideringInterval;
+ (id)sleepPeriodWithDateInterval:(id)interval segments:(id)segments isIncomplete:(BOOL)incomplete timezoneName:(id)name;
- (BOOL)isEqual:(id)equal;
- (HKSleepPeriod)initWithCoder:(id)coder;
- (NSString)hk_redactedDescription;
- (double)durationForCategory:(int64_t)category bestFittingSleepDayInterval:(id)interval consideringInterval:(id)consideringInterval;
- (double)durationForCategory:(int64_t)category overlappingDateInterval:(id)interval;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKSleepPeriod

+ (id)sleepPeriodWithDateInterval:(id)interval segments:(id)segments isIncomplete:(BOOL)incomplete timezoneName:(id)name
{
  nameCopy = name;
  segmentsCopy = segments;
  intervalCopy = interval;
  v12 = objc_alloc_init(HKSleepPeriod);
  v13 = [intervalCopy copy];

  dateInterval = v12->_dateInterval;
  v12->_dateInterval = v13;

  v15 = [segmentsCopy copy];
  segments = v12->_segments;
  v12->_segments = v15;

  v12->_isIncomplete = incomplete;
  v17 = [nameCopy copy];

  timezoneName = v12->_timezoneName;
  v12->_timezoneName = v17;

  return v12;
}

- (id)description
{
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  startDate = [(NSDateInterval *)self->_dateInterval startDate];
  endDate = [(NSDateInterval *)self->_dateInterval endDate];
  v8 = [v3 stringWithFormat:@"<%@:%p (%@ - %@), segments = %@", v5, self, startDate, endDate, self->_segments];

  if (self->_timezoneName)
  {
    [v8 appendFormat:@", timezone = %@", self->_timezoneName];
  }

  if (self->_isIncomplete)
  {
    [v8 appendString:{@", (incomplete)"}];
  }

  v9 = [v8 copy];

  return v9;
}

- (NSString)hk_redactedDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@:%p>", v5, self];

  return v6;
}

- (double)durationForCategory:(int64_t)category overlappingDateInterval:(id)interval
{
  v33 = *MEMORY[0x1E69E9840];
  intervalCopy = interval;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = self->_segments;
  v7 = [(NSArray *)obj countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v28;
    v10 = 0.0;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v28 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v27 + 1) + 8 * i);
        if ([v12 category] == category)
        {
          v25 = 0u;
          v26 = 0u;
          v23 = 0u;
          v24 = 0u;
          sampleIntervals = [v12 sampleIntervals];
          v14 = [sampleIntervals countByEnumeratingWithState:&v23 objects:v31 count:16];
          if (v14)
          {
            v15 = v14;
            v16 = *v24;
            do
            {
              for (j = 0; j != v15; ++j)
              {
                if (*v24 != v16)
                {
                  objc_enumerationMutation(sampleIntervals);
                }

                v18 = [*(*(&v23 + 1) + 8 * j) intersectionWithDateInterval:intervalCopy];
                [v18 duration];
                v10 = v10 + v19;
              }

              v15 = [sampleIntervals countByEnumeratingWithState:&v23 objects:v31 count:16];
            }

            while (v15);
          }
        }
      }

      v8 = [(NSArray *)obj countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v8);
  }

  else
  {
    v10 = 0.0;
  }

  v20 = *MEMORY[0x1E69E9840];
  return v10;
}

- (double)durationForCategory:(int64_t)category bestFittingSleepDayInterval:(id)interval consideringInterval:(id)consideringInterval
{
  v39 = *MEMORY[0x1E69E9840];
  intervalCopy = interval;
  consideringIntervalCopy = consideringInterval;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = self->_segments;
  v10 = [(NSArray *)obj countByEnumeratingWithState:&v33 objects:v38 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v34;
    v13 = 0.0;
    v26 = *v34;
    do
    {
      v14 = 0;
      v27 = v11;
      do
      {
        if (*v34 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v33 + 1) + 8 * v14);
        if ([v15 category] == category)
        {
          categoryCopy = category;
          v31 = 0u;
          v32 = 0u;
          v29 = 0u;
          v30 = 0u;
          sampleIntervals = [v15 sampleIntervals];
          v18 = [sampleIntervals countByEnumeratingWithState:&v29 objects:v37 count:16];
          if (v18)
          {
            v19 = v18;
            v20 = *v30;
            do
            {
              for (i = 0; i != v19; ++i)
              {
                if (*v30 != v20)
                {
                  objc_enumerationMutation(sampleIntervals);
                }

                v22 = *(*(&v29 + 1) + 8 * i);
                if ([objc_opt_class() _isSleepDayInterval:intervalCopy bestFitForSampleInterval:v22 consideringInterval:consideringIntervalCopy])
                {
                  [v22 duration];
                  v13 = v13 + v23;
                }
              }

              v19 = [sampleIntervals countByEnumeratingWithState:&v29 objects:v37 count:16];
            }

            while (v19);
          }

          category = categoryCopy;
          v12 = v26;
          v11 = v27;
        }

        ++v14;
      }

      while (v14 != v11);
      v11 = [(NSArray *)obj countByEnumeratingWithState:&v33 objects:v38 count:16];
    }

    while (v11);
  }

  else
  {
    v13 = 0.0;
  }

  v24 = *MEMORY[0x1E69E9840];
  return v13;
}

+ (BOOL)_isSleepDayInterval:(id)interval bestFitForSampleInterval:(id)sampleInterval consideringInterval:(id)consideringInterval
{
  intervalCopy = interval;
  sampleIntervalCopy = sampleInterval;
  consideringIntervalCopy = consideringInterval;
  if ([consideringIntervalCopy hk_containsDateInterval:intervalCopy] && objc_msgSend(consideringIntervalCopy, "intersectsDateInterval:", sampleIntervalCopy))
  {
    if ([intervalCopy isEqualToDateInterval:sampleIntervalCopy])
    {
      LOBYTE(v10) = 1;
    }

    else
    {
      startDate = [intervalCopy startDate];
      startDate2 = [sampleIntervalCopy startDate];
      if ([startDate compare:startDate2] == -1)
      {
        endDate = [intervalCopy endDate];
        endDate2 = [sampleIntervalCopy endDate];
        v10 = [endDate compare:endDate2];

        if (v10 == 1)
        {
          goto LABEL_6;
        }
      }

      else
      {
      }

      v16 = [sampleIntervalCopy intersectionWithDateInterval:intervalCopy];
      [v16 duration];
      v18 = v17;
      [sampleIntervalCopy duration];
      v20 = v19 - v18;
      if (v18 > v20 || v18 == v20 && ([sampleIntervalCopy startDate], v21 = objc_claimAutoreleasedReturnValue(), v22 = objc_msgSend(intervalCopy, "containsDate:", v21), v21, (v22 & 1) != 0))
      {
        LOBYTE(v10) = 1;
      }

      else
      {
        v23 = objc_alloc(MEMORY[0x1E696AB80]);
        startDate3 = [consideringIntervalCopy startDate];
        startDate4 = [intervalCopy startDate];
        v26 = [v23 initWithStartDate:startDate3 endDate:startDate4];

        v27 = objc_alloc(MEMORY[0x1E696AB80]);
        endDate3 = [intervalCopy endDate];
        endDate4 = [consideringIntervalCopy endDate];
        v30 = [v27 initWithStartDate:endDate3 endDate:endDate4];

        v31 = [sampleIntervalCopy intersectionWithDateInterval:v26];
        v32 = [sampleIntervalCopy intersectionWithDateInterval:v30];
        [v31 duration];
        LOBYTE(v10) = v18 > v33 && ([v32 duration], v18 > v34) || (objc_msgSend(sampleIntervalCopy, "duration"), v36 = v35, objc_msgSend(intervalCopy, "duration"), v36 > v37) && (objc_msgSend(v31, "duration"), v18 > v38);
      }
    }
  }

  else
  {
    LOBYTE(v10) = 0;
  }

LABEL_6:

  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  dateInterval = self->_dateInterval;
  coderCopy = coder;
  [coderCopy encodeObject:dateInterval forKey:@"DateInterval"];
  [coderCopy encodeObject:self->_segments forKey:@"Segments"];
  [coderCopy encodeBool:self->_isIncomplete forKey:@"Incomplete"];
  [coderCopy encodeObject:self->_timezoneName forKey:@"Timezone"];
}

- (HKSleepPeriod)initWithCoder:(id)coder
{
  v18[2] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = HKSleepPeriod;
  v5 = [(HKSleepPeriod *)&v17 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"DateInterval"];
    dateInterval = v5->_dateInterval;
    v5->_dateInterval = v6;

    v8 = MEMORY[0x1E695DFD8];
    v18[0] = objc_opt_class();
    v18[1] = objc_opt_class();
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:2];
    v10 = [v8 setWithArray:v9];
    v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"Segments"];
    segments = v5->_segments;
    v5->_segments = v11;

    v5->_isIncomplete = [coderCopy decodeBoolForKey:@"Incomplete"];
    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Timezone"];
    timezoneName = v5->_timezoneName;
    v5->_timezoneName = v13;
  }

  v15 = *MEMORY[0x1E69E9840];
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  dateInterval = [(HKSleepPeriod *)self dateInterval];
  dateInterval2 = [equalCopy dateInterval];
  if (dateInterval != dateInterval2)
  {
    dateInterval3 = [equalCopy dateInterval];
    if (!dateInterval3)
    {
      v16 = 0;
      goto LABEL_29;
    }

    v3 = dateInterval3;
    dateInterval4 = [(HKSleepPeriod *)self dateInterval];
    dateInterval5 = [equalCopy dateInterval];
    if (![dateInterval4 isEqual:dateInterval5])
    {
      v16 = 0;
LABEL_28:

      goto LABEL_29;
    }

    v33 = dateInterval5;
  }

  segments = [(HKSleepPeriod *)self segments];
  segments2 = [equalCopy segments];
  if (segments != segments2)
  {
    segments3 = [equalCopy segments];
    if (!segments3)
    {
      v16 = 0;
      goto LABEL_25;
    }

    v32 = segments3;
    segments4 = [(HKSleepPeriod *)self segments];
    segments5 = [equalCopy segments];
    if (([segments4 isEqual:segments5] & 1) == 0)
    {

      v16 = 0;
LABEL_26:
      v25 = dateInterval == dateInterval2;
      goto LABEL_27;
    }

    v28 = segments5;
    v31 = segments4;
  }

  isIncomplete = [(HKSleepPeriod *)self isIncomplete];
  if (isIncomplete != [equalCopy isIncomplete])
  {
    v16 = 0;
    v18 = v31;
    if (segments == segments2)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  v29 = dateInterval4;
  v30 = v3;
  timezoneName = [(HKSleepPeriod *)self timezoneName];
  timezoneName2 = [equalCopy timezoneName];
  v21 = timezoneName2;
  v18 = v31;
  if (timezoneName == timezoneName2)
  {

    v16 = 1;
    goto LABEL_23;
  }

  timezoneName3 = [equalCopy timezoneName];
  if (!timezoneName3)
  {

    v16 = 0;
LABEL_23:
    dateInterval4 = v29;
    v3 = v30;
    if (segments != segments2)
    {
LABEL_24:
    }

LABEL_25:

    goto LABEL_26;
  }

  v27 = timezoneName3;
  timezoneName4 = [(HKSleepPeriod *)self timezoneName];
  timezoneName5 = [equalCopy timezoneName];
  v16 = [timezoneName4 isEqual:timezoneName5];

  if (segments != segments2)
  {
  }

  v25 = dateInterval == dateInterval2;
  dateInterval4 = v29;
  v3 = v30;
LABEL_27:
  dateInterval5 = v33;
  if (!v25)
  {
    goto LABEL_28;
  }

LABEL_29:

  return v16;
}

- (unint64_t)hash
{
  dateInterval = [(HKSleepPeriod *)self dateInterval];
  v4 = [dateInterval hash];
  segments = [(HKSleepPeriod *)self segments];
  v6 = [segments hash] ^ v4;
  v7 = v6 ^ [(HKSleepPeriod *)self isIncomplete];
  timezoneName = [(HKSleepPeriod *)self timezoneName];
  v9 = [timezoneName hash];

  return v7 ^ v9;
}

@end