@interface HKHeartRateSummaryStatistics
- (BOOL)isEqual:(id)equal;
- (HKHeartRateSummaryStatistics)initWithCoder:(id)coder;
- (HKHeartRateSummaryStatistics)initWithDateInterval:(id)interval numberOfBuckets:(int64_t)buckets sessionUUID:(id)d;
- (id)_bucketAtIndex:(int64_t)index createdIfNeeded:(BOOL)needed;
- (id)_bucketsDescription;
- (id)_dictionaryRepresentation;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)initFromStatistics:(id)statistics;
- (unint64_t)hash;
- (void)_setHighlightedReadings:(id)readings;
- (void)addHeartRateInBeatsPerMinute:(double)minute forTime:(double)time;
- (void)encodeWithCoder:(id)coder;
- (void)enumerateBucketsWithBlock:(id)block;
@end

@implementation HKHeartRateSummaryStatistics

- (HKHeartRateSummaryStatistics)initWithDateInterval:(id)interval numberOfBuckets:(int64_t)buckets sessionUUID:(id)d
{
  intervalCopy = interval;
  dCopy = d;
  v16.receiver = self;
  v16.super_class = HKHeartRateSummaryStatistics;
  v11 = [(HKHeartRateSummaryStatistics *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_dateInterval, interval);
    v12->_numberOfBuckets = buckets;
    objc_storeStrong(&v12->_sessionUUID, d);
    array = [MEMORY[0x1E695DF70] array];
    sortedBuckets = v12->_sortedBuckets;
    v12->_sortedBuckets = array;
  }

  return v12;
}

- (id)initFromStatistics:(id)statistics
{
  v24 = *MEMORY[0x1E69E9840];
  statisticsCopy = statistics;
  v22.receiver = self;
  v22.super_class = HKHeartRateSummaryStatistics;
  v5 = [(HKHeartRateSummaryStatistics *)&v22 init];
  v6 = v5;
  if (v5)
  {
    objc_storeStrong(&v5->_dateInterval, statisticsCopy[2]);
    v6->_numberOfBuckets = statisticsCopy[3];
    v6->_numberOfReadings = statisticsCopy[4];
    objc_storeStrong(&v6->_sessionUUID, statisticsCopy[5]);
    array = [MEMORY[0x1E695DF70] array];
    sortedBuckets = v6->_sortedBuckets;
    v6->_sortedBuckets = array;

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v9 = statisticsCopy[1];
    v10 = [v9 countByEnumeratingWithState:&v18 objects:v23 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v19;
      do
      {
        v13 = 0;
        do
        {
          if (*v19 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = v6->_sortedBuckets;
          v15 = [*(*(&v18 + 1) + 8 * v13) copy];
          [(NSMutableArray *)v14 addObject:v15];

          ++v13;
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v18 objects:v23 count:16];
      }

      while (v11);
    }

    objc_storeStrong(&v6->_highlightedReadings, statisticsCopy[6]);
  }

  v16 = *MEMORY[0x1E69E9840];
  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());

  return [v4 initFromStatistics:self];
}

- (void)_setHighlightedReadings:(id)readings
{
  v4 = [readings copy];
  highlightedReadings = self->_highlightedReadings;
  self->_highlightedReadings = v4;

  MEMORY[0x1EEE66BB8](v4, highlightedReadings);
}

- (void)addHeartRateInBeatsPerMinute:(double)minute forTime:(double)time
{
  v31 = *MEMORY[0x1E69E9840];
  if ([(NSDateInterval *)self->_dateInterval hk_containsTime:time])
  {
    startDate = [(NSDateInterval *)self->_dateInterval startDate];
    [startDate timeIntervalSinceReferenceDate];
    v9 = time - v8;

    v10 = v9 * self->_numberOfBuckets;
    [(NSDateInterval *)self->_dateInterval duration];
    v12 = vcvtmd_s64_f64(v10 / v11);
    numberOfBuckets = self->_numberOfBuckets;
    if (numberOfBuckets <= v12)
    {
      v14 = numberOfBuckets - 1;
    }

    else
    {
      v14 = v12;
    }

    v24 = [(HKHeartRateSummaryStatistics *)self _bucketAtIndex:v14 createdIfNeeded:1];
    [v24 addHeartRateInBeatsPerMinute:llround(minute)];
    ++self->_numberOfReadings;
    v15 = *MEMORY[0x1E69E9840];
  }

  else
  {
    _HKInitializeLogging();
    v16 = HKLogHeartRate;
    if (os_log_type_enabled(HKLogHeartRate, OS_LOG_TYPE_ERROR))
    {
      v18 = v16;
      v19 = objc_opt_class();
      v20 = MEMORY[0x1E695DF00];
      v21 = v19;
      v22 = [v20 dateWithTimeIntervalSinceReferenceDate:time];
      dateInterval = self->_dateInterval;
      *buf = 138543874;
      v26 = v19;
      v27 = 2114;
      v28 = v22;
      v29 = 2114;
      v30 = dateInterval;
      _os_log_error_impl(&dword_19197B000, v18, OS_LOG_TYPE_ERROR, "%{public}@: attempting to add heart rate for date %{public}@ outside of date interval %{public}@", buf, 0x20u);
    }

    v17 = *MEMORY[0x1E69E9840];
  }
}

- (void)enumerateBucketsWithBlock:(id)block
{
  v17 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  if (!blockCopy)
  {
    [(HKHeartRateSummaryStatistics *)a2 enumerateBucketsWithBlock:?];
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = self->_sortedBuckets;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        blockCopy[2](blockCopy, *(*(&v12 + 1) + 8 * i));
      }

      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (id)_bucketAtIndex:(int64_t)index createdIfNeeded:(BOOL)needed
{
  neededCopy = needed;
  v7 = [(NSMutableArray *)self->_sortedBuckets count]- 1;
  if (v7 < 0)
  {
    v9 = 0;
LABEL_10:
    v11 = 0;
    goto LABEL_12;
  }

  v8 = 0;
  while (1)
  {
    v9 = (v7 + v8) >> 1;
    v10 = [(NSMutableArray *)self->_sortedBuckets objectAtIndexedSubscript:v9];
    if ([v10 bucketIndex] == index)
    {
      break;
    }

    if ([v10 bucketIndex] >= index)
    {
      v7 = v9 - 1;
    }

    else
    {
      v8 = v9 + 1;
    }

    if (v8 > v7)
    {
      goto LABEL_10;
    }
  }

  v11 = [(NSMutableArray *)self->_sortedBuckets objectAtIndexedSubscript:(v7 + v8) >> 1];

  if (!v11)
  {
LABEL_12:
    if (neededCopy)
    {
      v11 = [[HKHeartRateSummaryStatisticsBucket alloc] initWithBucketIndex:index];
      [(NSMutableArray *)self->_sortedBuckets insertObject:v11 atIndex:v9];
    }
  }

  return v11;
}

- (void)encodeWithCoder:(id)coder
{
  dateInterval = self->_dateInterval;
  coderCopy = coder;
  [coderCopy encodeObject:dateInterval forKey:@"DateInterval"];
  [coderCopy encodeInteger:self->_numberOfBuckets forKey:@"NumberOfBuckets"];
  [coderCopy encodeObject:self->_sortedBuckets forKey:@"SortedBuckets"];
  [coderCopy encodeInteger:self->_numberOfReadings forKey:@"NumberOfReadings"];
  [coderCopy encodeObject:self->_sessionUUID forKey:@"SessionUUIDKey"];
  [coderCopy encodeObject:self->_highlightedReadings forKey:@"HighlightedReadings"];
}

- (HKHeartRateSummaryStatistics)initWithCoder:(id)coder
{
  coderCopy = coder;
  v22.receiver = self;
  v22.super_class = HKHeartRateSummaryStatistics;
  v5 = [(HKHeartRateSummaryStatistics *)&v22 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"DateInterval"];
    dateInterval = v5->_dateInterval;
    v5->_dateInterval = v6;

    v5->_numberOfBuckets = [coderCopy decodeIntegerForKey:@"NumberOfBuckets"];
    v8 = MEMORY[0x1E695DFD8];
    v9 = objc_opt_class();
    v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
    v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"SortedBuckets"];
    v12 = [v11 mutableCopy];
    sortedBuckets = v5->_sortedBuckets;
    v5->_sortedBuckets = v12;

    v5->_numberOfReadings = [coderCopy decodeIntegerForKey:@"NumberOfReadings"];
    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SessionUUIDKey"];
    sessionUUID = v5->_sessionUUID;
    v5->_sessionUUID = v14;

    v16 = MEMORY[0x1E695DFD8];
    v17 = objc_opt_class();
    v18 = [v16 setWithObjects:{v17, objc_opt_class(), 0}];
    v19 = [coderCopy decodeObjectOfClasses:v18 forKey:@"HighlightedReadings"];
    highlightedReadings = v5->_highlightedReadings;
    v5->_highlightedReadings = v19;
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:{-[HKHeartRateSummaryStatistics numberOfReadings](self, "numberOfReadings")}];
  startDate = [(NSDateInterval *)self->_dateInterval startDate];
  endDate = [(NSDateInterval *)self->_dateInterval endDate];
  v8 = [v3 stringWithFormat:@"<%@:%p count:%@ %@ - %@>", v4, self, v5, startDate, endDate];

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    LOBYTE(sessionUUID3) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      dateInterval = [(HKHeartRateSummaryStatistics *)self dateInterval];
      dateInterval2 = [(HKHeartRateSummaryStatistics *)equalCopy dateInterval];
      if (dateInterval != dateInterval2)
      {
        dateInterval3 = [(HKHeartRateSummaryStatistics *)equalCopy dateInterval];
        if (!dateInterval3)
        {
          LOBYTE(sessionUUID3) = 0;
          goto LABEL_21;
        }

        v3 = dateInterval3;
        dateInterval4 = [(HKHeartRateSummaryStatistics *)self dateInterval];
        dateInterval5 = [(HKHeartRateSummaryStatistics *)equalCopy dateInterval];
        if (![dateInterval4 isEqual:dateInterval5])
        {
          LOBYTE(sessionUUID3) = 0;
          goto LABEL_19;
        }
      }

      sortedBuckets = self->_sortedBuckets;
      v13 = equalCopy->_sortedBuckets;
      if (sortedBuckets != v13 && (!v13 || ![(NSMutableArray *)sortedBuckets isEqual:?]) || (v14 = [(HKHeartRateSummaryStatistics *)self numberOfReadings], v14 != [(HKHeartRateSummaryStatistics *)equalCopy numberOfReadings]))
      {
        LOBYTE(sessionUUID3) = 0;
        goto LABEL_18;
      }

      sessionUUID = [(HKHeartRateSummaryStatistics *)self sessionUUID];
      sessionUUID2 = [(HKHeartRateSummaryStatistics *)equalCopy sessionUUID];
      v17 = sessionUUID2;
      if (sessionUUID == sessionUUID2)
      {
        v32 = dateInterval5;
        v33 = dateInterval4;
        v30 = sessionUUID2;
        v31 = sessionUUID;
      }

      else
      {
        sessionUUID3 = [(HKHeartRateSummaryStatistics *)equalCopy sessionUUID];
        if (!sessionUUID3)
        {
LABEL_31:

LABEL_18:
          if (dateInterval == dateInterval2)
          {
LABEL_21:

            goto LABEL_22;
          }

LABEL_19:

          goto LABEL_21;
        }

        v32 = dateInterval5;
        v33 = dateInterval4;
        sessionUUID4 = [(HKHeartRateSummaryStatistics *)self sessionUUID];
        sessionUUID5 = [(HKHeartRateSummaryStatistics *)equalCopy sessionUUID];
        if (([sessionUUID4 isEqual:sessionUUID5] & 1) == 0)
        {

          LOBYTE(sessionUUID3) = 0;
          goto LABEL_34;
        }

        v27 = sessionUUID5;
        v28 = sessionUUID4;
        v29 = sessionUUID3;
        v30 = v17;
        v31 = sessionUUID;
      }

      highlightedReadings = [(HKHeartRateSummaryStatistics *)self highlightedReadings];
      highlightedReadings2 = [(HKHeartRateSummaryStatistics *)equalCopy highlightedReadings];
      LOBYTE(sessionUUID3) = highlightedReadings == highlightedReadings2;
      if (highlightedReadings != highlightedReadings2)
      {
        highlightedReadings3 = [(HKHeartRateSummaryStatistics *)equalCopy highlightedReadings];
        if (highlightedReadings3)
        {
          v24 = highlightedReadings3;
          highlightedReadings4 = [(HKHeartRateSummaryStatistics *)self highlightedReadings];
          highlightedReadings5 = [(HKHeartRateSummaryStatistics *)equalCopy highlightedReadings];
          LOBYTE(sessionUUID3) = [highlightedReadings4 isEqual:highlightedReadings5];

          sessionUUID = v31;
          if (v31 != v30)
          {
          }

          goto LABEL_33;
        }
      }

      v17 = v30;
      sessionUUID = v31;
      if (v31 == v30)
      {
LABEL_33:

LABEL_34:
        dateInterval5 = v32;
        dateInterval4 = v33;
        if (dateInterval == dateInterval2)
        {
          goto LABEL_21;
        }

        goto LABEL_19;
      }

      dateInterval5 = v32;
      dateInterval4 = v33;
      goto LABEL_31;
    }

    LOBYTE(sessionUUID3) = 0;
  }

LABEL_22:

  return sessionUUID3;
}

- (unint64_t)hash
{
  dateInterval = [(HKHeartRateSummaryStatistics *)self dateInterval];
  v4 = [dateInterval hash];
  v5 = [(NSMutableArray *)self->_sortedBuckets hash];
  v6 = v5 ^ v4 ^ [(HKHeartRateSummaryStatistics *)self numberOfReadings];
  v7 = [(NSMutableArray *)self->_sortedBuckets hash];
  sessionUUID = [(HKHeartRateSummaryStatistics *)self sessionUUID];
  v9 = v6 ^ v7 ^ [sessionUUID hash];
  highlightedReadings = [(HKHeartRateSummaryStatistics *)self highlightedReadings];
  v11 = [highlightedReadings hash];

  return v9 ^ v11;
}

- (id)_dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __66__HKHeartRateSummaryStatistics_Testing___dictionaryRepresentation__block_invoke;
  v6[3] = &unk_1E7385448;
  v4 = dictionary;
  v7 = v4;
  [(HKHeartRateSummaryStatistics *)self enumerateBucketsWithBlock:v6];

  return v4;
}

void __66__HKHeartRateSummaryStatistics_Testing___dictionaryRepresentation__block_invoke(uint64_t a1, void *a2)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 heartRatesInBeatsPerMinute];
  v5 = v12 - ((8 * [v4 count] + 15) & 0xFFFFFFFFFFFFFFF0);
  [v4 getIndexes:v5 maxCount:objc_msgSend(v4 inIndexRange:{"count"), 0}];
  v6 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v4, "count")}];
  if ([v4 count])
  {
    v7 = 0;
    do
    {
      v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*&v5[8 * v7]];
      [v6 addObject:v8];

      ++v7;
    }

    while (v7 < [v4 count]);
  }

  if ([v6 count])
  {
    v9 = *(a1 + 32);
    v10 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v3, "bucketIndex")}];
    [v9 setObject:v6 forKey:v10];
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (id)_bucketsDescription
{
  if ([(NSMutableArray *)self->_sortedBuckets count])
  {
    v3 = objc_msgSend(MEMORY[0x1E696AD60], "stringWithString:", @"(\n");
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __60__HKHeartRateSummaryStatistics_Testing___bucketsDescription__block_invoke;
    v6[3] = &unk_1E7385448;
    v4 = v3;
    v7 = v4;
    [(HKHeartRateSummaryStatistics *)self enumerateBucketsWithBlock:v6];
    [v4 appendFormat:@""]);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void __60__HKHeartRateSummaryStatistics_Testing___bucketsDescription__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = MEMORY[0x1E696AD98];
  v4 = a2;
  v6 = [v3 numberWithInteger:{objc_msgSend(v4, "bucketIndex")}];
  v5 = [v4 heartRatesInBeatsPerMinute];

  [v2 appendFormat:@"    %@ => %@\n", v6, v5];
}

- (void)enumerateBucketsWithBlock:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKHeartRateSummaryStatistics.m" lineNumber:89 description:{@"Invalid parameter not satisfying: %@", @"block != nil"}];
}

@end