@interface HKSleepPeriodSegment
+ (id)sleepPeriodSegmentWithDateInterval:(id)interval category:(int64_t)category;
+ (id)sleepPeriodSegmentWithDateInterval:(id)interval sampleIntervals:(id)intervals category:(int64_t)category containsAppleSleepTrackingData:(BOOL)data;
- (BOOL)isEqual:(id)equal;
- (HKSleepPeriodSegment)initWithCoder:(id)coder;
- (NSString)hk_redactedDescription;
- (id)description;
- (id)mergingSleepPeriodSegment:(id)segment;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKSleepPeriodSegment

+ (id)sleepPeriodSegmentWithDateInterval:(id)interval category:(int64_t)category
{
  v13 = *MEMORY[0x1E69E9840];
  intervalCopy = interval;
  v6 = MEMORY[0x1E695DEC8];
  intervalCopy2 = interval;
  v8 = [v6 arrayWithObjects:&intervalCopy count:1];
  v9 = [self sleepPeriodSegmentWithDateInterval:intervalCopy2 sampleIntervals:v8 category:category containsAppleSleepTrackingData:{0, intervalCopy, v13}];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

+ (id)sleepPeriodSegmentWithDateInterval:(id)interval sampleIntervals:(id)intervals category:(int64_t)category containsAppleSleepTrackingData:(BOOL)data
{
  intervalsCopy = intervals;
  intervalCopy = interval;
  v11 = objc_alloc_init(HKSleepPeriodSegment);
  v12 = [intervalCopy copy];

  dateInterval = v11->_dateInterval;
  v11->_dateInterval = v12;

  v14 = [intervalsCopy copy];
  sampleIntervals = v11->_sampleIntervals;
  v11->_sampleIntervals = v14;

  v11->_category = category;
  v11->_containsAppleSleepTrackingData = data;

  return v11;
}

- (id)mergingSleepPeriodSegment:(id)segment
{
  v44 = *MEMORY[0x1E69E9840];
  segmentCopy = segment;
  category = [(HKSleepPeriodSegment *)self category];
  if (category != [segmentCopy category])
  {
    [(HKSleepPeriodSegment *)a2 mergingSleepPeriodSegment:?];
  }

  v7 = objc_alloc_init(HKDateIntervalTree);
  [(HKDateIntervalTree *)v7 setMergeIntervals:1];
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  sampleIntervals = [(HKSleepPeriodSegment *)self sampleIntervals];
  v9 = [sampleIntervals countByEnumeratingWithState:&v38 objects:v43 count:16];
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
          objc_enumerationMutation(sampleIntervals);
        }

        [(HKDateIntervalTree *)v7 insertInterval:*(*(&v38 + 1) + 8 * i)];
      }

      v10 = [sampleIntervals countByEnumeratingWithState:&v38 objects:v43 count:16];
    }

    while (v10);
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  sampleIntervals2 = [segmentCopy sampleIntervals];
  v14 = [sampleIntervals2 countByEnumeratingWithState:&v34 objects:v42 count:16];
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
          objc_enumerationMutation(sampleIntervals2);
        }

        [(HKDateIntervalTree *)v7 insertInterval:*(*(&v34 + 1) + 8 * j)];
      }

      v15 = [sampleIntervals2 countByEnumeratingWithState:&v34 objects:v42 count:16];
    }

    while (v15);
  }

  mergedIntervals = [(HKDateIntervalTree *)v7 mergedIntervals];
  dateInterval = [(HKSleepPeriodSegment *)self dateInterval];
  startDate = [dateInterval startDate];
  dateInterval2 = [segmentCopy dateInterval];
  startDate2 = [dateInterval2 startDate];
  v23 = [startDate earlierDate:startDate2];

  dateInterval3 = [(HKSleepPeriodSegment *)self dateInterval];
  endDate = [dateInterval3 endDate];
  dateInterval4 = [segmentCopy dateInterval];
  endDate2 = [dateInterval4 endDate];
  v28 = [endDate laterDate:endDate2];

  v29 = [objc_alloc(MEMORY[0x1E696AB80]) initWithStartDate:v23 endDate:v28];
  if ([(HKSleepPeriodSegment *)self containsAppleSleepTrackingData])
  {
    containsAppleSleepTrackingData = 1;
  }

  else
  {
    containsAppleSleepTrackingData = [segmentCopy containsAppleSleepTrackingData];
  }

  v31 = [HKSleepPeriodSegment sleepPeriodSegmentWithDateInterval:v29 sampleIntervals:mergedIntervals category:[(HKSleepPeriodSegment *)self category] containsAppleSleepTrackingData:containsAppleSleepTrackingData];

  v32 = *MEMORY[0x1E69E9840];

  return v31;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  startDate = [(NSDateInterval *)self->_dateInterval startDate];
  endDate = [(NSDateInterval *)self->_dateInterval endDate];
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[NSArray count](self->_sampleIntervals, "count")}];
  v9 = NSStringFromHKCategoryValueSleepAnalysis(self->_category);
  v10 = HKStringFromBool(self->_containsAppleSleepTrackingData);
  v11 = [v3 stringWithFormat:@"<%@:%p (%@ - %@), %@ samples, category = %@, containsAppleSleepTrackingData = %@>", v5, self, startDate, endDate, v8, v9, v10];

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

- (void)encodeWithCoder:(id)coder
{
  dateInterval = self->_dateInterval;
  coderCopy = coder;
  [coderCopy encodeObject:dateInterval forKey:@"DateInterval"];
  [coderCopy encodeObject:self->_sampleIntervals forKey:@"SampleIntervals"];
  [coderCopy encodeInteger:self->_category forKey:@"Category"];
  [coderCopy encodeBool:self->_containsAppleSleepTrackingData forKey:@"ContainsAppleSleepTrackingData"];
}

- (HKSleepPeriodSegment)initWithCoder:(id)coder
{
  v16[2] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = HKSleepPeriodSegment;
  v5 = [(HKSleepPeriodSegment *)&v15 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"DateInterval"];
    dateInterval = v5->_dateInterval;
    v5->_dateInterval = v6;

    v8 = MEMORY[0x1E695DFD8];
    v16[0] = objc_opt_class();
    v16[1] = objc_opt_class();
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:2];
    v10 = [v8 setWithArray:v9];
    v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"SampleIntervals"];
    sampleIntervals = v5->_sampleIntervals;
    v5->_sampleIntervals = v11;

    v5->_category = [coderCopy decodeIntegerForKey:@"Category"];
    v5->_containsAppleSleepTrackingData = [coderCopy decodeBoolForKey:@"ContainsAppleSleepTrackingData"];
  }

  v13 = *MEMORY[0x1E69E9840];
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  dateInterval = [(HKSleepPeriodSegment *)self dateInterval];
  dateInterval2 = [equalCopy dateInterval];
  if (dateInterval != dateInterval2)
  {
    dateInterval3 = [equalCopy dateInterval];
    if (!dateInterval3)
    {
      LOBYTE(v15) = 0;
      goto LABEL_21;
    }

    v11 = dateInterval3;
    dateInterval4 = [(HKSleepPeriodSegment *)self dateInterval];
    dateInterval5 = [equalCopy dateInterval];
    if (![dateInterval4 isEqual:dateInterval5])
    {
      LOBYTE(v15) = 0;
LABEL_20:

      goto LABEL_21;
    }

    v19 = dateInterval5;
    v20 = dateInterval4;
    v21 = v11;
  }

  sampleIntervals = [(HKSleepPeriodSegment *)self sampleIntervals];
  sampleIntervals2 = [equalCopy sampleIntervals];
  if (sampleIntervals != sampleIntervals2)
  {
    sampleIntervals3 = [equalCopy sampleIntervals];
    if (!sampleIntervals3)
    {
      goto LABEL_16;
    }

    v5 = sampleIntervals3;
    dateInterval4 = [(HKSleepPeriodSegment *)self sampleIntervals];
    dateInterval5 = [equalCopy sampleIntervals];
    if (![dateInterval4 isEqual:dateInterval5])
    {
      LOBYTE(v15) = 0;
LABEL_12:

      goto LABEL_18;
    }
  }

  category = [(HKSleepPeriodSegment *)self category];
  if (category != [equalCopy category])
  {
    if (sampleIntervals == sampleIntervals2)
    {
      LOBYTE(v15) = 0;
      goto LABEL_18;
    }

LABEL_16:
    LOBYTE(v15) = 0;
    goto LABEL_19;
  }

  containsAppleSleepTrackingData = [(HKSleepPeriodSegment *)self containsAppleSleepTrackingData];
  v15 = containsAppleSleepTrackingData ^ [equalCopy containsAppleSleepTrackingData] ^ 1;
  if (sampleIntervals != sampleIntervals2)
  {
    goto LABEL_12;
  }

LABEL_18:

LABEL_19:
  dateInterval4 = v20;
  v11 = v21;
  dateInterval5 = v19;
  if (dateInterval != dateInterval2)
  {
    goto LABEL_20;
  }

LABEL_21:

  return v15;
}

- (unint64_t)hash
{
  dateInterval = [(HKSleepPeriodSegment *)self dateInterval];
  v4 = [dateInterval hash];
  sampleIntervals = [(HKSleepPeriodSegment *)self sampleIntervals];
  v6 = [sampleIntervals hash] ^ v4;
  v7 = v6 ^ [(HKSleepPeriodSegment *)self category];
  containsAppleSleepTrackingData = [(HKSleepPeriodSegment *)self containsAppleSleepTrackingData];

  return v7 ^ containsAppleSleepTrackingData;
}

- (void)mergingSleepPeriodSegment:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKSleepPeriod.m" lineNumber:75 description:@"Cannot merge segments with different category values."];
}

@end