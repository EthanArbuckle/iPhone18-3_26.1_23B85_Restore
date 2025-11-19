@interface HKHeartRateSummaryStatistics
- (BOOL)isEqual:(id)a3;
- (HKHeartRateSummaryStatistics)initWithCoder:(id)a3;
- (HKHeartRateSummaryStatistics)initWithDateInterval:(id)a3 numberOfBuckets:(int64_t)a4 sessionUUID:(id)a5;
- (id)_bucketAtIndex:(int64_t)a3 createdIfNeeded:(BOOL)a4;
- (id)_bucketsDescription;
- (id)_dictionaryRepresentation;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)initFromStatistics:(id)a3;
- (unint64_t)hash;
- (void)_setHighlightedReadings:(id)a3;
- (void)addHeartRateInBeatsPerMinute:(double)a3 forTime:(double)a4;
- (void)encodeWithCoder:(id)a3;
- (void)enumerateBucketsWithBlock:(id)a3;
@end

@implementation HKHeartRateSummaryStatistics

- (HKHeartRateSummaryStatistics)initWithDateInterval:(id)a3 numberOfBuckets:(int64_t)a4 sessionUUID:(id)a5
{
  v9 = a3;
  v10 = a5;
  v16.receiver = self;
  v16.super_class = HKHeartRateSummaryStatistics;
  v11 = [(HKHeartRateSummaryStatistics *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_dateInterval, a3);
    v12->_numberOfBuckets = a4;
    objc_storeStrong(&v12->_sessionUUID, a5);
    v13 = [MEMORY[0x1E695DF70] array];
    sortedBuckets = v12->_sortedBuckets;
    v12->_sortedBuckets = v13;
  }

  return v12;
}

- (id)initFromStatistics:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v22.receiver = self;
  v22.super_class = HKHeartRateSummaryStatistics;
  v5 = [(HKHeartRateSummaryStatistics *)&v22 init];
  v6 = v5;
  if (v5)
  {
    objc_storeStrong(&v5->_dateInterval, v4[2]);
    v6->_numberOfBuckets = v4[3];
    v6->_numberOfReadings = v4[4];
    objc_storeStrong(&v6->_sessionUUID, v4[5]);
    v7 = [MEMORY[0x1E695DF70] array];
    sortedBuckets = v6->_sortedBuckets;
    v6->_sortedBuckets = v7;

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v9 = v4[1];
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

    objc_storeStrong(&v6->_highlightedReadings, v4[6]);
  }

  v16 = *MEMORY[0x1E69E9840];
  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());

  return [v4 initFromStatistics:self];
}

- (void)_setHighlightedReadings:(id)a3
{
  v4 = [a3 copy];
  highlightedReadings = self->_highlightedReadings;
  self->_highlightedReadings = v4;

  MEMORY[0x1EEE66BB8](v4, highlightedReadings);
}

- (void)addHeartRateInBeatsPerMinute:(double)a3 forTime:(double)a4
{
  v31 = *MEMORY[0x1E69E9840];
  if ([(NSDateInterval *)self->_dateInterval hk_containsTime:a4])
  {
    v7 = [(NSDateInterval *)self->_dateInterval startDate];
    [v7 timeIntervalSinceReferenceDate];
    v9 = a4 - v8;

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
    [v24 addHeartRateInBeatsPerMinute:llround(a3)];
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
      v22 = [v20 dateWithTimeIntervalSinceReferenceDate:a4];
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

- (void)enumerateBucketsWithBlock:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5)
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

        v5[2](v5, *(*(&v12 + 1) + 8 * i));
      }

      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (id)_bucketAtIndex:(int64_t)a3 createdIfNeeded:(BOOL)a4
{
  v4 = a4;
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
    if ([v10 bucketIndex] == a3)
    {
      break;
    }

    if ([v10 bucketIndex] >= a3)
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
    if (v4)
    {
      v11 = [[HKHeartRateSummaryStatisticsBucket alloc] initWithBucketIndex:a3];
      [(NSMutableArray *)self->_sortedBuckets insertObject:v11 atIndex:v9];
    }
  }

  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  dateInterval = self->_dateInterval;
  v5 = a3;
  [v5 encodeObject:dateInterval forKey:@"DateInterval"];
  [v5 encodeInteger:self->_numberOfBuckets forKey:@"NumberOfBuckets"];
  [v5 encodeObject:self->_sortedBuckets forKey:@"SortedBuckets"];
  [v5 encodeInteger:self->_numberOfReadings forKey:@"NumberOfReadings"];
  [v5 encodeObject:self->_sessionUUID forKey:@"SessionUUIDKey"];
  [v5 encodeObject:self->_highlightedReadings forKey:@"HighlightedReadings"];
}

- (HKHeartRateSummaryStatistics)initWithCoder:(id)a3
{
  v4 = a3;
  v22.receiver = self;
  v22.super_class = HKHeartRateSummaryStatistics;
  v5 = [(HKHeartRateSummaryStatistics *)&v22 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"DateInterval"];
    dateInterval = v5->_dateInterval;
    v5->_dateInterval = v6;

    v5->_numberOfBuckets = [v4 decodeIntegerForKey:@"NumberOfBuckets"];
    v8 = MEMORY[0x1E695DFD8];
    v9 = objc_opt_class();
    v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
    v11 = [v4 decodeObjectOfClasses:v10 forKey:@"SortedBuckets"];
    v12 = [v11 mutableCopy];
    sortedBuckets = v5->_sortedBuckets;
    v5->_sortedBuckets = v12;

    v5->_numberOfReadings = [v4 decodeIntegerForKey:@"NumberOfReadings"];
    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SessionUUIDKey"];
    sessionUUID = v5->_sessionUUID;
    v5->_sessionUUID = v14;

    v16 = MEMORY[0x1E695DFD8];
    v17 = objc_opt_class();
    v18 = [v16 setWithObjects:{v17, objc_opt_class(), 0}];
    v19 = [v4 decodeObjectOfClasses:v18 forKey:@"HighlightedReadings"];
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
  v6 = [(NSDateInterval *)self->_dateInterval startDate];
  v7 = [(NSDateInterval *)self->_dateInterval endDate];
  v8 = [v3 stringWithFormat:@"<%@:%p count:%@ %@ - %@>", v4, self, v5, v6, v7];

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v7 = a3;
  if (self == v7)
  {
    LOBYTE(v11) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [(HKHeartRateSummaryStatistics *)self dateInterval];
      v9 = [(HKHeartRateSummaryStatistics *)v7 dateInterval];
      if (v8 != v9)
      {
        v10 = [(HKHeartRateSummaryStatistics *)v7 dateInterval];
        if (!v10)
        {
          LOBYTE(v11) = 0;
          goto LABEL_21;
        }

        v3 = v10;
        v4 = [(HKHeartRateSummaryStatistics *)self dateInterval];
        v5 = [(HKHeartRateSummaryStatistics *)v7 dateInterval];
        if (![v4 isEqual:v5])
        {
          LOBYTE(v11) = 0;
          goto LABEL_19;
        }
      }

      sortedBuckets = self->_sortedBuckets;
      v13 = v7->_sortedBuckets;
      if (sortedBuckets != v13 && (!v13 || ![(NSMutableArray *)sortedBuckets isEqual:?]) || (v14 = [(HKHeartRateSummaryStatistics *)self numberOfReadings], v14 != [(HKHeartRateSummaryStatistics *)v7 numberOfReadings]))
      {
        LOBYTE(v11) = 0;
        goto LABEL_18;
      }

      v15 = [(HKHeartRateSummaryStatistics *)self sessionUUID];
      v16 = [(HKHeartRateSummaryStatistics *)v7 sessionUUID];
      v17 = v16;
      if (v15 == v16)
      {
        v32 = v5;
        v33 = v4;
        v30 = v16;
        v31 = v15;
      }

      else
      {
        v11 = [(HKHeartRateSummaryStatistics *)v7 sessionUUID];
        if (!v11)
        {
LABEL_31:

LABEL_18:
          if (v8 == v9)
          {
LABEL_21:

            goto LABEL_22;
          }

LABEL_19:

          goto LABEL_21;
        }

        v32 = v5;
        v33 = v4;
        v18 = [(HKHeartRateSummaryStatistics *)self sessionUUID];
        v19 = [(HKHeartRateSummaryStatistics *)v7 sessionUUID];
        if (([v18 isEqual:v19] & 1) == 0)
        {

          LOBYTE(v11) = 0;
          goto LABEL_34;
        }

        v27 = v19;
        v28 = v18;
        v29 = v11;
        v30 = v17;
        v31 = v15;
      }

      v21 = [(HKHeartRateSummaryStatistics *)self highlightedReadings];
      v22 = [(HKHeartRateSummaryStatistics *)v7 highlightedReadings];
      LOBYTE(v11) = v21 == v22;
      if (v21 != v22)
      {
        v23 = [(HKHeartRateSummaryStatistics *)v7 highlightedReadings];
        if (v23)
        {
          v24 = v23;
          v25 = [(HKHeartRateSummaryStatistics *)self highlightedReadings];
          v26 = [(HKHeartRateSummaryStatistics *)v7 highlightedReadings];
          LOBYTE(v11) = [v25 isEqual:v26];

          v15 = v31;
          if (v31 != v30)
          {
          }

          goto LABEL_33;
        }
      }

      v17 = v30;
      v15 = v31;
      if (v31 == v30)
      {
LABEL_33:

LABEL_34:
        v5 = v32;
        v4 = v33;
        if (v8 == v9)
        {
          goto LABEL_21;
        }

        goto LABEL_19;
      }

      v5 = v32;
      v4 = v33;
      goto LABEL_31;
    }

    LOBYTE(v11) = 0;
  }

LABEL_22:

  return v11;
}

- (unint64_t)hash
{
  v3 = [(HKHeartRateSummaryStatistics *)self dateInterval];
  v4 = [v3 hash];
  v5 = [(NSMutableArray *)self->_sortedBuckets hash];
  v6 = v5 ^ v4 ^ [(HKHeartRateSummaryStatistics *)self numberOfReadings];
  v7 = [(NSMutableArray *)self->_sortedBuckets hash];
  v8 = [(HKHeartRateSummaryStatistics *)self sessionUUID];
  v9 = v6 ^ v7 ^ [v8 hash];
  v10 = [(HKHeartRateSummaryStatistics *)self highlightedReadings];
  v11 = [v10 hash];

  return v9 ^ v11;
}

- (id)_dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __66__HKHeartRateSummaryStatistics_Testing___dictionaryRepresentation__block_invoke;
  v6[3] = &unk_1E7385448;
  v4 = v3;
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