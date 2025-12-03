@interface HKStatisticsCollection
- (BOOL)_insertStatistics:(id)statistics;
- (HKStatistics)statisticsForDate:(NSDate *)date;
- (HKStatisticsCollection)init;
- (HKStatisticsCollection)initWithAnchorDate:(id)date statisticsInterval:(id)interval emptyStatisticsConstructor:(id)constructor;
- (NSArray)statistics;
- (NSSet)sources;
- (id)_maxSumQuantityStatistics;
- (id)_minSumQuantityStatistics;
- (id)_mostRecentQuantityDateInterval;
- (id)_mostRecentQuantityStatistics;
- (id)_statisticsDateIntervalAndIndex:(int64_t *)index forDate:(id)date;
- (id)_statisticsDateIntervalAtIndex:(int64_t)index;
- (id)_statisticsForIndex:(int64_t)index;
- (id)_statisticsForLastIndex;
- (id)asJSONObject;
- (unint64_t)statisticsCount;
- (void)_clearSourcesCache;
- (void)_enumerateStatisticsIndexesFromDate:(id)date toDate:(id)toDate withBlock:(id)block;
- (void)_enumerateTimePeriodsFromDate:(id)date toDate:(id)toDate withBlock:(id)block;
- (void)_resetStatistics:(id)statistics;
- (void)_timePeriodForStatisticsAtIndex:(int64_t)index startDate:(id *)date endDate:(id *)endDate;
- (void)enumeratePopulatedStatisticsWithBlock:(id)block;
- (void)enumerateStatisticsFromDate:(NSDate *)startDate toDate:(NSDate *)endDate withBlock:(void *)block;
@end

@implementation HKStatisticsCollection

- (id)asJSONObject
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v3 setObject:v4 forKeyedSubscript:@"sources"];
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  sources = [(HKStatisticsCollection *)self sources];
  v6 = [sources countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v25;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v25 != v8)
        {
          objc_enumerationMutation(sources);
        }

        asJSONObject = [*(*(&v24 + 1) + 8 * i) asJSONObject];
        [v4 addObject:asJSONObject];
      }

      v7 = [sources countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v7);
  }

  v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v3 setObject:v11 forKeyedSubscript:@"statistics"];
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  statistics = [(HKStatisticsCollection *)self statistics];
  v13 = [statistics countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v21;
    do
    {
      for (j = 0; j != v14; ++j)
      {
        if (*v21 != v15)
        {
          objc_enumerationMutation(statistics);
        }

        asJSONObject2 = [*(*(&v20 + 1) + 8 * j) asJSONObject];
        [v11 addObject:asJSONObject2];
      }

      v14 = [statistics countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (v14);
  }

  v18 = *MEMORY[0x1E69E9840];

  return v3;
}

- (HKStatisticsCollection)init
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D940];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HKStatisticsCollection)initWithAnchorDate:(id)date statisticsInterval:(id)interval emptyStatisticsConstructor:(id)constructor
{
  dateCopy = date;
  intervalCopy = interval;
  constructorCopy = constructor;
  v12 = MEMORY[0x1E695D940];
  if (constructorCopy)
  {
    if (dateCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%@ must be given a statistics constructor", objc_opt_class()}];
    if (dateCopy)
    {
      goto LABEL_3;
    }
  }

  [MEMORY[0x1E695DF30] raise:*v12 format:{@"%@ must have an anchor date", objc_opt_class()}];
LABEL_3:
  [intervalCopy hk_approximateDuration];
  v14 = v13;
  if (v13 == 0.0)
  {
    [MEMORY[0x1E695DF30] raise:*v12 format:{@"%@ statistics interval must be non zero: %@", objc_opt_class(), intervalCopy}];
  }

  v27.receiver = self;
  v27.super_class = HKStatisticsCollection;
  v15 = [(HKStatisticsCollection *)&v27 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_anchorDate, date);
    v17 = [intervalCopy copy];
    statisticsInterval = v16->_statisticsInterval;
    v16->_statisticsInterval = v17;

    calendar = [(NSDateComponents *)v16->_statisticsInterval calendar];

    if (!calendar)
    {
      v20 = v16->_statisticsInterval;
      currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
      [(NSDateComponents *)v20 setCalendar:currentCalendar];
    }

    v22 = [constructorCopy copy];
    emptyStatisticsConstructor = v16->_emptyStatisticsConstructor;
    v16->_emptyStatisticsConstructor = v22;

    v16->_approximateStatisticsInterval = v14;
    v16->_lock._os_unfair_lock_opaque = 0;
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    statisticsByIndex = v16->_statisticsByIndex;
    v16->_statisticsByIndex = dictionary;
  }

  return v16;
}

- (HKStatistics)statisticsForDate:(NSDate *)date
{
  v14 = 0;
  v4 = [(HKStatisticsCollection *)self _statisticsDateIntervalAndIndex:&v14 forDate:date];
  if (v4)
  {
    os_unfair_lock_lock(&self->_lock);
    statisticsByIndex = self->_statisticsByIndex;
    v6 = [MEMORY[0x1E696AD98] numberWithInteger:v14];
    v7 = [(NSMutableDictionary *)statisticsByIndex objectForKey:v6];
    v8 = v7;
    if (v7)
    {
      v9 = v7;
    }

    else
    {
      emptyStatisticsConstructor = self->_emptyStatisticsConstructor;
      startDate = [v4 startDate];
      endDate = [v4 endDate];
      v9 = emptyStatisticsConstructor[2](emptyStatisticsConstructor, startDate, endDate);
    }

    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)enumerateStatisticsFromDate:(NSDate *)startDate toDate:(NSDate *)endDate withBlock:(void *)block
{
  v8 = startDate;
  v9 = endDate;
  v10 = block;
  if (v8)
  {
    if (v9)
    {
      goto LABEL_3;
    }

LABEL_7:
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"End date cannot be nil"];
    if (!v10)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"Start date cannot be nil"];
  if (!v9)
  {
    goto LABEL_7;
  }

LABEL_3:
  if (v10)
  {
LABEL_4:
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __71__HKStatisticsCollection_enumerateStatisticsFromDate_toDate_withBlock___block_invoke;
    v11[3] = &unk_1E7383B30;
    v11[4] = self;
    v12 = v10;
    [(HKStatisticsCollection *)self _enumerateStatisticsIndexesFromDate:v8 toDate:v9 withBlock:v11];
  }

LABEL_5:
}

uint64_t __71__HKStatisticsCollection_enumerateStatisticsFromDate_toDate_withBlock___block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v5 = [*(a1 + 32) _statisticsForIndex:a2];
  v6 = v5;
  if (v5)
  {
    v8 = v5;
    v5 = (*(*(a1 + 40) + 16))();
    v6 = v8;
  }

  else
  {
    *a3 = 1;
  }

  return MEMORY[0x1EEE66BB8](v5, v6);
}

- (NSArray)statistics
{
  v22 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSMutableDictionary *)self->_statisticsByIndex copy];
  os_unfair_lock_unlock(&self->_lock);
  allKeys = [v3 allKeys];
  v5 = [allKeys sortedArrayUsingSelector:sel_compare_];

  array = [MEMORY[0x1E695DF70] array];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [v3 objectForKeyedSubscript:{*(*(&v17 + 1) + 8 * i), v17}];
        v13 = v12;
        if (v12)
        {
          v14 = [v12 copy];
          [array addObject:v14];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }

  v15 = *MEMORY[0x1E69E9840];

  return array;
}

- (NSSet)sources
{
  v22 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_lock);
  if (!self->_cachedSources)
  {
    v3 = [MEMORY[0x1E695DFA8] set];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    allValues = [(NSMutableDictionary *)self->_statisticsByIndex allValues];
    v5 = [allValues countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v18;
      do
      {
        v8 = 0;
        do
        {
          if (*v18 != v7)
          {
            objc_enumerationMutation(allValues);
          }

          v9 = MEMORY[0x1E695DFD8];
          sources = [*(*(&v17 + 1) + 8 * v8) sources];
          v11 = [v9 setWithArray:sources];
          [v3 unionSet:v11];

          ++v8;
        }

        while (v6 != v8);
        v6 = [allValues countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v6);
    }

    v12 = [MEMORY[0x1E695DFD8] setWithSet:v3];
    cachedSources = self->_cachedSources;
    self->_cachedSources = v12;
  }

  os_unfair_lock_unlock(&self->_lock);
  v14 = self->_cachedSources;
  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

- (unint64_t)statisticsCount
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSMutableDictionary *)self->_statisticsByIndex count];
  os_unfair_lock_unlock(&self->_lock);
  return v3;
}

- (id)_maxSumQuantityStatistics
{
  v22 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_lock);
  allValues = [(NSMutableDictionary *)self->_statisticsByIndex allValues];
  os_unfair_lock_unlock(&self->_lock);
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = allValues;
  v5 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v18;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        sumQuantity = [v10 sumQuantity];
        v12 = [v7 compare:sumQuantity];

        if (v12 == -1 || v7 == 0)
        {
          sumQuantity2 = [v10 sumQuantity];

          v7 = sumQuantity2;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  v15 = *MEMORY[0x1E69E9840];

  return v7;
}

- (id)_minSumQuantityStatistics
{
  v22 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_lock);
  allValues = [(NSMutableDictionary *)self->_statisticsByIndex allValues];
  os_unfair_lock_unlock(&self->_lock);
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = allValues;
  v5 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v18;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        sumQuantity = [v10 sumQuantity];
        v12 = [v7 compare:sumQuantity];

        if (v12 == 1 || v7 == 0)
        {
          sumQuantity2 = [v10 sumQuantity];

          v7 = sumQuantity2;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  v15 = *MEMORY[0x1E69E9840];

  return v7;
}

- (id)_mostRecentQuantityStatistics
{
  _statisticsForLastIndex = [(HKStatisticsCollection *)self _statisticsForLastIndex];
  mostRecentQuantity = [_statisticsForLastIndex mostRecentQuantity];

  return mostRecentQuantity;
}

- (id)_mostRecentQuantityDateInterval
{
  _statisticsForLastIndex = [(HKStatisticsCollection *)self _statisticsForLastIndex];
  mostRecentQuantityDateInterval = [_statisticsForLastIndex mostRecentQuantityDateInterval];

  return mostRecentQuantityDateInterval;
}

- (void)_clearSourcesCache
{
  os_unfair_lock_lock(&self->_lock);
  cachedSources = self->_cachedSources;
  self->_cachedSources = 0;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)_insertStatistics:(id)statistics
{
  statisticsCopy = statistics;
  [(HKStatisticsCollection *)self _clearSourcesCache];
  v5 = [HKDateInterval alloc];
  startDate = [statisticsCopy startDate];
  endDate = [statisticsCopy endDate];
  v8 = [(HKDateInterval *)v5 initWithStartDate:startDate endDate:endDate];

  v16 = 0;
  startDate2 = [(HKDateInterval *)v8 startDate];
  v10 = [(HKStatisticsCollection *)self _statisticsDateIntervalAndIndex:&v16 forDate:startDate2];
  v11 = [v10 isEqual:v8];

  if (v11)
  {
    os_unfair_lock_lock(&self->_lock);
    dataCount = [statisticsCopy dataCount];
    statisticsByIndex = self->_statisticsByIndex;
    v14 = [MEMORY[0x1E696AD98] numberWithInteger:v16];
    if (dataCount)
    {
      [(NSMutableDictionary *)statisticsByIndex setObject:statisticsCopy forKey:v14];
    }

    else
    {
      [(NSMutableDictionary *)statisticsByIndex removeObjectForKey:v14];
    }

    os_unfair_lock_unlock(&self->_lock);
  }

  return v11;
}

- (void)_resetStatistics:(id)statistics
{
  v19 = *MEMORY[0x1E69E9840];
  statisticsCopy = statistics;
  os_unfair_lock_lock(&self->_lock);
  cachedSources = self->_cachedSources;
  self->_cachedSources = 0;

  dictionary = [MEMORY[0x1E695DF90] dictionary];
  statisticsByIndex = self->_statisticsByIndex;
  self->_statisticsByIndex = dictionary;

  os_unfair_lock_unlock(&self->_lock);
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v8 = statisticsCopy;
  v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [(HKStatisticsCollection *)self _insertStatistics:*(*(&v14 + 1) + 8 * v12++), v14];
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)_enumerateTimePeriodsFromDate:(id)date toDate:(id)toDate withBlock:(id)block
{
  dateCopy = date;
  toDateCopy = toDate;
  blockCopy = block;
  v23[0] = 0;
  v23[1] = v23;
  v23[2] = 0x3032000000;
  v23[3] = __Block_byref_object_copy__47;
  v23[4] = __Block_byref_object_dispose__47;
  v24 = 0;
  v21[0] = 0;
  v21[1] = v21;
  v21[2] = 0x3032000000;
  v21[3] = __Block_byref_object_copy__47;
  v21[4] = __Block_byref_object_dispose__47;
  v22 = 0;
  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x2020000000;
  v20[3] = 1;
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x3032000000;
  v18[3] = __Block_byref_object_copy__47;
  v18[4] = __Block_byref_object_dispose__47;
  v19 = 0;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __73__HKStatisticsCollection__enumerateTimePeriodsFromDate_toDate_withBlock___block_invoke;
  v12[3] = &unk_1E7383B58;
  v14 = v23;
  v15 = v21;
  v12[4] = self;
  v16 = v18;
  v17 = v20;
  v11 = blockCopy;
  v13 = v11;
  [(HKStatisticsCollection *)self _enumerateStatisticsIndexesFromDate:dateCopy toDate:toDateCopy withBlock:v12];

  _Block_object_dispose(v18, 8);
  _Block_object_dispose(v20, 8);
  _Block_object_dispose(v21, 8);

  _Block_object_dispose(v23, 8);
}

uint64_t __73__HKStatisticsCollection__enumerateTimePeriodsFromDate_toDate_withBlock___block_invoke(void *a1, uint64_t a2)
{
  v3 = *(a1[6] + 8);
  v6 = *(v3 + 40);
  v5 = (v3 + 40);
  v4 = v6;
  v7 = *(a1[7] + 8);
  v10 = *(v7 + 40);
  v9 = (v7 + 40);
  v8 = v10;
  if (v4 && v8)
  {
    objc_storeStrong(v5, v8);
    v11 = *(a1[4] + 56);
    ++*(*(a1[9] + 8) + 24);
    v12 = *(*(a1[8] + 8) + 40);
    v13 = [v11 hk_dateByAddingInterval:? toDate:?];
    v14 = *(a1[7] + 8);
    v15 = *(v14 + 40);
    *(v14 + 40) = v13;
  }

  else
  {
    v16 = a1[4];
    v20 = v8;
    obj = v4;
    [v16 _timePeriodForStatisticsAtIndex:a2 startDate:&obj endDate:&v20];
    objc_storeStrong(v5, obj);
    objc_storeStrong(v9, v20);
    objc_storeStrong((*(a1[8] + 8) + 40), *(*(a1[6] + 8) + 40));
  }

  v17 = *(*(a1[6] + 8) + 40);
  v18 = *(*(a1[7] + 8) + 40);
  return (*(a1[5] + 16))();
}

- (void)enumeratePopulatedStatisticsWithBlock:(id)block
{
  v20 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(NSMutableDictionary *)self->_statisticsByIndex copy];
  os_unfair_lock_unlock(&self->_lock);
  v18 = 0;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  allKeys = [v5 allKeys];
  v7 = [allKeys sortedArrayUsingSelector:sel_compare_];

  v8 = [v7 countByEnumeratingWithState:&v14 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [v5 objectForKeyedSubscript:*(*(&v14 + 1) + 8 * i)];
        if (v12)
        {
          blockCopy[2](blockCopy, v12, &v18);
          if (v18 == 1)
          {

            goto LABEL_12;
          }
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v14 objects:v19 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  v13 = *MEMORY[0x1E69E9840];
}

- (id)_statisticsForLastIndex
{
  v26 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSMutableDictionary *)self->_statisticsByIndex copy];
  os_unfair_lock_unlock(&self->_lock);
  allKeys = [v3 allKeys];
  firstObject = [allKeys firstObject];
  integerValue = [firstObject integerValue];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = allKeys;
  v8 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v22;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v22 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v21 + 1) + 8 * i);
        if ([v12 integerValue] > integerValue)
        {
          integerValue = [v12 integerValue];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v9);
  }

  v13 = [MEMORY[0x1E696AD98] numberWithInteger:integerValue];
  v14 = [v3 objectForKey:v13];

  if (!v14)
  {
    v19 = 0;
    v20 = 0;
    [(HKStatisticsCollection *)self _timePeriodForStatisticsAtIndex:integerValue startDate:&v20 endDate:&v19];
    v15 = v20;
    v16 = v19;
    v14 = (*(self->_emptyStatisticsConstructor + 2))();
  }

  v17 = *MEMORY[0x1E69E9840];

  return v14;
}

- (id)_statisticsForIndex:(int64_t)index
{
  os_unfair_lock_lock(&self->_lock);
  statisticsByIndex = self->_statisticsByIndex;
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:index];
  v7 = [(NSMutableDictionary *)statisticsByIndex objectForKey:v6];

  os_unfair_lock_unlock(&self->_lock);
  if (!v7)
  {
    v11 = 0;
    v12 = 0;
    [(HKStatisticsCollection *)self _timePeriodForStatisticsAtIndex:index startDate:&v12 endDate:&v11];
    v8 = v12;
    v9 = v11;
    v7 = (*(self->_emptyStatisticsConstructor + 2))();
  }

  return v7;
}

- (void)_timePeriodForStatisticsAtIndex:(int64_t)index startDate:(id *)date endDate:(id *)endDate
{
  v9 = [(NSDateComponents *)self->_statisticsInterval hk_dateByAddingInterval:index toDate:self->_anchorDate];
  if (date)
  {
    v9 = v9;
    *date = v9;
  }

  if (endDate)
  {
    v10 = v9;
    *endDate = [(NSDateComponents *)self->_statisticsInterval hk_dateByAddingInterval:index + 1 toDate:self->_anchorDate];
    v9 = v10;
  }
}

- (void)_enumerateStatisticsIndexesFromDate:(id)date toDate:(id)toDate withBlock:(id)block
{
  dateCopy = date;
  toDateCopy = toDate;
  blockCopy = block;
  if (dateCopy)
  {
    if (toDateCopy)
    {
      v16 = 0;
      v11 = [(HKStatisticsCollection *)self _statisticsDateIntervalAndIndex:&v16 forDate:dateCopy];

      if (v11)
      {
        v15 = 0;
        v12 = [(HKStatisticsCollection *)self _statisticsDateIntervalAndIndex:&v15 forDate:toDateCopy];

        if (v12)
        {
          v14 = 0;
          do
          {
            v13 = objc_autoreleasePoolPush();
            blockCopy[2](blockCopy, v16++, &v14);
            objc_autoreleasePoolPop(v13);
          }

          while (v16 <= v15 && (v14 & 1) == 0);
        }
      }
    }
  }
}

- (id)_statisticsDateIntervalAndIndex:(int64_t *)index forDate:(id)date
{
  if (date)
  {
    v4 = [(NSDateComponents *)self->_statisticsInterval hk_dateIntervalForDate:date anchorDate:self->_anchorDate outIndex:index];
  }

  else
  {
    _HKInitializeLogging();
    v5 = HKLogQuery;
    if (os_log_type_enabled(HKLogQuery, OS_LOG_TYPE_ERROR))
    {
      [HKStatisticsCollection _statisticsDateIntervalAndIndex:v5 forDate:?];
    }

    v4 = 0;
  }

  return v4;
}

- (id)_statisticsDateIntervalAtIndex:(int64_t)index
{
  v5 = [HKDateInterval alloc];
  v6 = [(NSDateComponents *)self->_statisticsInterval hk_dateByAddingInterval:index toDate:self->_anchorDate];
  v7 = [(NSDateComponents *)self->_statisticsInterval hk_dateByAddingInterval:index + 1 toDate:self->_anchorDate];
  v8 = [(HKDateInterval *)v5 initWithStartDate:v6 endDate:v7];

  return v8;
}

@end