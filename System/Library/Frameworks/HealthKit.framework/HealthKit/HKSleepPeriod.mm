@interface HKSleepPeriod
+ (BOOL)_isSleepDayInterval:(id)a3 bestFitForSampleInterval:(id)a4 consideringInterval:(id)a5;
+ (id)sleepPeriodWithDateInterval:(id)a3 segments:(id)a4 isIncomplete:(BOOL)a5 timezoneName:(id)a6;
- (BOOL)isEqual:(id)a3;
- (HKSleepPeriod)initWithCoder:(id)a3;
- (NSString)hk_redactedDescription;
- (double)durationForCategory:(int64_t)a3 bestFittingSleepDayInterval:(id)a4 consideringInterval:(id)a5;
- (double)durationForCategory:(int64_t)a3 overlappingDateInterval:(id)a4;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKSleepPeriod

+ (id)sleepPeriodWithDateInterval:(id)a3 segments:(id)a4 isIncomplete:(BOOL)a5 timezoneName:(id)a6
{
  v9 = a6;
  v10 = a4;
  v11 = a3;
  v12 = objc_alloc_init(HKSleepPeriod);
  v13 = [v11 copy];

  dateInterval = v12->_dateInterval;
  v12->_dateInterval = v13;

  v15 = [v10 copy];
  segments = v12->_segments;
  v12->_segments = v15;

  v12->_isIncomplete = a5;
  v17 = [v9 copy];

  timezoneName = v12->_timezoneName;
  v12->_timezoneName = v17;

  return v12;
}

- (id)description
{
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(NSDateInterval *)self->_dateInterval startDate];
  v7 = [(NSDateInterval *)self->_dateInterval endDate];
  v8 = [v3 stringWithFormat:@"<%@:%p (%@ - %@), segments = %@", v5, self, v6, v7, self->_segments];

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

- (double)durationForCategory:(int64_t)a3 overlappingDateInterval:(id)a4
{
  v33 = *MEMORY[0x1E69E9840];
  v6 = a4;
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
        if ([v12 category] == a3)
        {
          v25 = 0u;
          v26 = 0u;
          v23 = 0u;
          v24 = 0u;
          v13 = [v12 sampleIntervals];
          v14 = [v13 countByEnumeratingWithState:&v23 objects:v31 count:16];
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
                  objc_enumerationMutation(v13);
                }

                v18 = [*(*(&v23 + 1) + 8 * j) intersectionWithDateInterval:v6];
                [v18 duration];
                v10 = v10 + v19;
              }

              v15 = [v13 countByEnumeratingWithState:&v23 objects:v31 count:16];
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

- (double)durationForCategory:(int64_t)a3 bestFittingSleepDayInterval:(id)a4 consideringInterval:(id)a5
{
  v39 = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a5;
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
        if ([v15 category] == a3)
        {
          v16 = a3;
          v31 = 0u;
          v32 = 0u;
          v29 = 0u;
          v30 = 0u;
          v17 = [v15 sampleIntervals];
          v18 = [v17 countByEnumeratingWithState:&v29 objects:v37 count:16];
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
                  objc_enumerationMutation(v17);
                }

                v22 = *(*(&v29 + 1) + 8 * i);
                if ([objc_opt_class() _isSleepDayInterval:v8 bestFitForSampleInterval:v22 consideringInterval:v9])
                {
                  [v22 duration];
                  v13 = v13 + v23;
                }
              }

              v19 = [v17 countByEnumeratingWithState:&v29 objects:v37 count:16];
            }

            while (v19);
          }

          a3 = v16;
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

+ (BOOL)_isSleepDayInterval:(id)a3 bestFitForSampleInterval:(id)a4 consideringInterval:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if ([v9 hk_containsDateInterval:v7] && objc_msgSend(v9, "intersectsDateInterval:", v8))
  {
    if ([v7 isEqualToDateInterval:v8])
    {
      LOBYTE(v10) = 1;
    }

    else
    {
      v12 = [v7 startDate];
      v13 = [v8 startDate];
      if ([v12 compare:v13] == -1)
      {
        v14 = [v7 endDate];
        v15 = [v8 endDate];
        v10 = [v14 compare:v15];

        if (v10 == 1)
        {
          goto LABEL_6;
        }
      }

      else
      {
      }

      v16 = [v8 intersectionWithDateInterval:v7];
      [v16 duration];
      v18 = v17;
      [v8 duration];
      v20 = v19 - v18;
      if (v18 > v20 || v18 == v20 && ([v8 startDate], v21 = objc_claimAutoreleasedReturnValue(), v22 = objc_msgSend(v7, "containsDate:", v21), v21, (v22 & 1) != 0))
      {
        LOBYTE(v10) = 1;
      }

      else
      {
        v23 = objc_alloc(MEMORY[0x1E696AB80]);
        v24 = [v9 startDate];
        v25 = [v7 startDate];
        v26 = [v23 initWithStartDate:v24 endDate:v25];

        v27 = objc_alloc(MEMORY[0x1E696AB80]);
        v28 = [v7 endDate];
        v29 = [v9 endDate];
        v30 = [v27 initWithStartDate:v28 endDate:v29];

        v31 = [v8 intersectionWithDateInterval:v26];
        v32 = [v8 intersectionWithDateInterval:v30];
        [v31 duration];
        LOBYTE(v10) = v18 > v33 && ([v32 duration], v18 > v34) || (objc_msgSend(v8, "duration"), v36 = v35, objc_msgSend(v7, "duration"), v36 > v37) && (objc_msgSend(v31, "duration"), v18 > v38);
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

- (void)encodeWithCoder:(id)a3
{
  dateInterval = self->_dateInterval;
  v5 = a3;
  [v5 encodeObject:dateInterval forKey:@"DateInterval"];
  [v5 encodeObject:self->_segments forKey:@"Segments"];
  [v5 encodeBool:self->_isIncomplete forKey:@"Incomplete"];
  [v5 encodeObject:self->_timezoneName forKey:@"Timezone"];
}

- (HKSleepPeriod)initWithCoder:(id)a3
{
  v18[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v17.receiver = self;
  v17.super_class = HKSleepPeriod;
  v5 = [(HKSleepPeriod *)&v17 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"DateInterval"];
    dateInterval = v5->_dateInterval;
    v5->_dateInterval = v6;

    v8 = MEMORY[0x1E695DFD8];
    v18[0] = objc_opt_class();
    v18[1] = objc_opt_class();
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:2];
    v10 = [v8 setWithArray:v9];
    v11 = [v4 decodeObjectOfClasses:v10 forKey:@"Segments"];
    segments = v5->_segments;
    v5->_segments = v11;

    v5->_isIncomplete = [v4 decodeBoolForKey:@"Incomplete"];
    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Timezone"];
    timezoneName = v5->_timezoneName;
    v5->_timezoneName = v13;
  }

  v15 = *MEMORY[0x1E69E9840];
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v6 = a3;
  v7 = [(HKSleepPeriod *)self dateInterval];
  v8 = [v6 dateInterval];
  if (v7 != v8)
  {
    v9 = [v6 dateInterval];
    if (!v9)
    {
      v16 = 0;
      goto LABEL_29;
    }

    v3 = v9;
    v4 = [(HKSleepPeriod *)self dateInterval];
    v10 = [v6 dateInterval];
    if (![v4 isEqual:v10])
    {
      v16 = 0;
LABEL_28:

      goto LABEL_29;
    }

    v33 = v10;
  }

  v11 = [(HKSleepPeriod *)self segments];
  v12 = [v6 segments];
  if (v11 != v12)
  {
    v13 = [v6 segments];
    if (!v13)
    {
      v16 = 0;
      goto LABEL_25;
    }

    v32 = v13;
    v14 = [(HKSleepPeriod *)self segments];
    v15 = [v6 segments];
    if (([v14 isEqual:v15] & 1) == 0)
    {

      v16 = 0;
LABEL_26:
      v25 = v7 == v8;
      goto LABEL_27;
    }

    v28 = v15;
    v31 = v14;
  }

  v17 = [(HKSleepPeriod *)self isIncomplete];
  if (v17 != [v6 isIncomplete])
  {
    v16 = 0;
    v18 = v31;
    if (v11 == v12)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  v29 = v4;
  v30 = v3;
  v19 = [(HKSleepPeriod *)self timezoneName];
  v20 = [v6 timezoneName];
  v21 = v20;
  v18 = v31;
  if (v19 == v20)
  {

    v16 = 1;
    goto LABEL_23;
  }

  v22 = [v6 timezoneName];
  if (!v22)
  {

    v16 = 0;
LABEL_23:
    v4 = v29;
    v3 = v30;
    if (v11 != v12)
    {
LABEL_24:
    }

LABEL_25:

    goto LABEL_26;
  }

  v27 = v22;
  v23 = [(HKSleepPeriod *)self timezoneName];
  v24 = [v6 timezoneName];
  v16 = [v23 isEqual:v24];

  if (v11 != v12)
  {
  }

  v25 = v7 == v8;
  v4 = v29;
  v3 = v30;
LABEL_27:
  v10 = v33;
  if (!v25)
  {
    goto LABEL_28;
  }

LABEL_29:

  return v16;
}

- (unint64_t)hash
{
  v3 = [(HKSleepPeriod *)self dateInterval];
  v4 = [v3 hash];
  v5 = [(HKSleepPeriod *)self segments];
  v6 = [v5 hash] ^ v4;
  v7 = v6 ^ [(HKSleepPeriod *)self isIncomplete];
  v8 = [(HKSleepPeriod *)self timezoneName];
  v9 = [v8 hash];

  return v7 ^ v9;
}

@end