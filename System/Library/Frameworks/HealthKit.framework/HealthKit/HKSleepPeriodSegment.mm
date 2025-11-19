@interface HKSleepPeriodSegment
+ (id)sleepPeriodSegmentWithDateInterval:(id)a3 category:(int64_t)a4;
+ (id)sleepPeriodSegmentWithDateInterval:(id)a3 sampleIntervals:(id)a4 category:(int64_t)a5 containsAppleSleepTrackingData:(BOOL)a6;
- (BOOL)isEqual:(id)a3;
- (HKSleepPeriodSegment)initWithCoder:(id)a3;
- (NSString)hk_redactedDescription;
- (id)description;
- (id)mergingSleepPeriodSegment:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKSleepPeriodSegment

+ (id)sleepPeriodSegmentWithDateInterval:(id)a3 category:(int64_t)a4
{
  v13 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v6 = MEMORY[0x1E695DEC8];
  v7 = a3;
  v8 = [v6 arrayWithObjects:&v12 count:1];
  v9 = [a1 sleepPeriodSegmentWithDateInterval:v7 sampleIntervals:v8 category:a4 containsAppleSleepTrackingData:{0, v12, v13}];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

+ (id)sleepPeriodSegmentWithDateInterval:(id)a3 sampleIntervals:(id)a4 category:(int64_t)a5 containsAppleSleepTrackingData:(BOOL)a6
{
  v9 = a4;
  v10 = a3;
  v11 = objc_alloc_init(HKSleepPeriodSegment);
  v12 = [v10 copy];

  dateInterval = v11->_dateInterval;
  v11->_dateInterval = v12;

  v14 = [v9 copy];
  sampleIntervals = v11->_sampleIntervals;
  v11->_sampleIntervals = v14;

  v11->_category = a5;
  v11->_containsAppleSleepTrackingData = a6;

  return v11;
}

- (id)mergingSleepPeriodSegment:(id)a3
{
  v44 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [(HKSleepPeriodSegment *)self category];
  if (v6 != [v5 category])
  {
    [(HKSleepPeriodSegment *)a2 mergingSleepPeriodSegment:?];
  }

  v7 = objc_alloc_init(HKDateIntervalTree);
  [(HKDateIntervalTree *)v7 setMergeIntervals:1];
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v8 = [(HKSleepPeriodSegment *)self sampleIntervals];
  v9 = [v8 countByEnumeratingWithState:&v38 objects:v43 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v39;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v39 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [(HKDateIntervalTree *)v7 insertInterval:*(*(&v38 + 1) + 8 * i)];
      }

      v10 = [v8 countByEnumeratingWithState:&v38 objects:v43 count:16];
    }

    while (v10);
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v13 = [v5 sampleIntervals];
  v14 = [v13 countByEnumeratingWithState:&v34 objects:v42 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v35;
    do
    {
      for (j = 0; j != v15; ++j)
      {
        if (*v35 != v16)
        {
          objc_enumerationMutation(v13);
        }

        [(HKDateIntervalTree *)v7 insertInterval:*(*(&v34 + 1) + 8 * j)];
      }

      v15 = [v13 countByEnumeratingWithState:&v34 objects:v42 count:16];
    }

    while (v15);
  }

  v18 = [(HKDateIntervalTree *)v7 mergedIntervals];
  v19 = [(HKSleepPeriodSegment *)self dateInterval];
  v20 = [v19 startDate];
  v21 = [v5 dateInterval];
  v22 = [v21 startDate];
  v23 = [v20 earlierDate:v22];

  v24 = [(HKSleepPeriodSegment *)self dateInterval];
  v25 = [v24 endDate];
  v26 = [v5 dateInterval];
  v27 = [v26 endDate];
  v28 = [v25 laterDate:v27];

  v29 = [objc_alloc(MEMORY[0x1E696AB80]) initWithStartDate:v23 endDate:v28];
  if ([(HKSleepPeriodSegment *)self containsAppleSleepTrackingData])
  {
    v30 = 1;
  }

  else
  {
    v30 = [v5 containsAppleSleepTrackingData];
  }

  v31 = [HKSleepPeriodSegment sleepPeriodSegmentWithDateInterval:v29 sampleIntervals:v18 category:[(HKSleepPeriodSegment *)self category] containsAppleSleepTrackingData:v30];

  v32 = *MEMORY[0x1E69E9840];

  return v31;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(NSDateInterval *)self->_dateInterval startDate];
  v7 = [(NSDateInterval *)self->_dateInterval endDate];
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[NSArray count](self->_sampleIntervals, "count")}];
  v9 = NSStringFromHKCategoryValueSleepAnalysis(self->_category);
  v10 = HKStringFromBool(self->_containsAppleSleepTrackingData);
  v11 = [v3 stringWithFormat:@"<%@:%p (%@ - %@), %@ samples, category = %@, containsAppleSleepTrackingData = %@>", v5, self, v6, v7, v8, v9, v10];

  return v11;
}

- (NSString)hk_redactedDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@:%p>", v5, self];

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  dateInterval = self->_dateInterval;
  v5 = a3;
  [v5 encodeObject:dateInterval forKey:@"DateInterval"];
  [v5 encodeObject:self->_sampleIntervals forKey:@"SampleIntervals"];
  [v5 encodeInteger:self->_category forKey:@"Category"];
  [v5 encodeBool:self->_containsAppleSleepTrackingData forKey:@"ContainsAppleSleepTrackingData"];
}

- (HKSleepPeriodSegment)initWithCoder:(id)a3
{
  v16[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v15.receiver = self;
  v15.super_class = HKSleepPeriodSegment;
  v5 = [(HKSleepPeriodSegment *)&v15 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"DateInterval"];
    dateInterval = v5->_dateInterval;
    v5->_dateInterval = v6;

    v8 = MEMORY[0x1E695DFD8];
    v16[0] = objc_opt_class();
    v16[1] = objc_opt_class();
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:2];
    v10 = [v8 setWithArray:v9];
    v11 = [v4 decodeObjectOfClasses:v10 forKey:@"SampleIntervals"];
    sampleIntervals = v5->_sampleIntervals;
    v5->_sampleIntervals = v11;

    v5->_category = [v4 decodeIntegerForKey:@"Category"];
    v5->_containsAppleSleepTrackingData = [v4 decodeBoolForKey:@"ContainsAppleSleepTrackingData"];
  }

  v13 = *MEMORY[0x1E69E9840];
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v7 = a3;
  v8 = [(HKSleepPeriodSegment *)self dateInterval];
  v9 = [v7 dateInterval];
  if (v8 != v9)
  {
    v10 = [v7 dateInterval];
    if (!v10)
    {
      LOBYTE(v15) = 0;
      goto LABEL_21;
    }

    v11 = v10;
    v3 = [(HKSleepPeriodSegment *)self dateInterval];
    v4 = [v7 dateInterval];
    if (![v3 isEqual:v4])
    {
      LOBYTE(v15) = 0;
LABEL_20:

      goto LABEL_21;
    }

    v19 = v4;
    v20 = v3;
    v21 = v11;
  }

  v12 = [(HKSleepPeriodSegment *)self sampleIntervals];
  v13 = [v7 sampleIntervals];
  if (v12 != v13)
  {
    v14 = [v7 sampleIntervals];
    if (!v14)
    {
      goto LABEL_16;
    }

    v5 = v14;
    v3 = [(HKSleepPeriodSegment *)self sampleIntervals];
    v4 = [v7 sampleIntervals];
    if (![v3 isEqual:v4])
    {
      LOBYTE(v15) = 0;
LABEL_12:

      goto LABEL_18;
    }
  }

  v16 = [(HKSleepPeriodSegment *)self category];
  if (v16 != [v7 category])
  {
    if (v12 == v13)
    {
      LOBYTE(v15) = 0;
      goto LABEL_18;
    }

LABEL_16:
    LOBYTE(v15) = 0;
    goto LABEL_19;
  }

  v17 = [(HKSleepPeriodSegment *)self containsAppleSleepTrackingData];
  v15 = v17 ^ [v7 containsAppleSleepTrackingData] ^ 1;
  if (v12 != v13)
  {
    goto LABEL_12;
  }

LABEL_18:

LABEL_19:
  v3 = v20;
  v11 = v21;
  v4 = v19;
  if (v8 != v9)
  {
    goto LABEL_20;
  }

LABEL_21:

  return v15;
}

- (unint64_t)hash
{
  v3 = [(HKSleepPeriodSegment *)self dateInterval];
  v4 = [v3 hash];
  v5 = [(HKSleepPeriodSegment *)self sampleIntervals];
  v6 = [v5 hash] ^ v4;
  v7 = v6 ^ [(HKSleepPeriodSegment *)self category];
  v8 = [(HKSleepPeriodSegment *)self containsAppleSleepTrackingData];

  return v7 ^ v8;
}

- (void)mergingSleepPeriodSegment:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKSleepPeriod.m" lineNumber:75 description:@"Cannot merge segments with different category values."];
}

@end