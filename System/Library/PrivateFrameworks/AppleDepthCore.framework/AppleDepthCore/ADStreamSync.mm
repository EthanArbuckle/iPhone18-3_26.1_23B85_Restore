@interface ADStreamSync
+ (unint64_t)expectedNumberOfFramesForObject:(id)object;
- (ADStreamSync)initWithStreamCount:(unint64_t)count allowedMatchTimeInterval:(double)interval;
- (BOOL)areOldestMatchingObjectsInAllowedInterval:(unint64_t)interval;
- (BOOL)checkOnceForMatch:(id *)match;
- (BOOL)dropOldFramesFromStream:(unint64_t)stream belowTimestampThreshold:(double)threshold;
- (BOOL)streamContainsMinimalFrameCount:(unint64_t)count;
- (double)oldestAverageTimestampForStream:(unint64_t)stream;
- (id)checkForMatch;
- (id)createAndPopulateMatch;
- (id)pushData:(__n128)data streamIndex:(__n128)index timestamp:(__n128)timestamp pose:(__n128)pose calibration:(uint64_t)calibration meta:(void *)meta;
- (id)pushData:(void *)data streamIndex:(uint64_t)index timestamp:(uint64_t)timestamp pose:(uint64_t)pose;
- (id)pushData:(void *)data streamIndex:(uint64_t)index timestamp:(uint64_t)timestamp pose:(uint64_t)pose calibration:(uint64_t)calibration;
- (id)pushData:(void *)data streamIndex:(uint64_t)index timestamp:(uint64_t)timestamp pose:(uint64_t)pose meta:(uint64_t)meta;
- (int64_t)reset;
- (int64_t)setStream:(unint64_t)stream queueSize:(unint64_t)size aggregationCount:(unint64_t)count allowedAggregationInterval:(double)interval;
- (void)dealloc;
@end

@implementation ADStreamSync

- (BOOL)checkOnceForMatch:(id *)match
{
  if ([(NSMutableArray *)self->_streamsHistory count])
  {
    v5 = 0;
    while ([(ADStreamSync *)self streamContainsMinimalFrameCount:v5])
    {
      if (++v5 >= [(NSMutableArray *)self->_streamsHistory count])
      {
        goto LABEL_5;
      }
    }

    return 0;
  }

  else
  {
LABEL_5:
    if ([(NSMutableArray *)self->_streamsHistory count])
    {
      v6 = 0;
      while ([(ADStreamSync *)self areOldestMatchingObjectsInAllowedInterval:v6])
      {
        [(ADStreamSync *)self oldestAverageTimestampForStream:v6];
        self->_matchedTimestampsArray[v6++] = v7;
        if (v6 >= [(NSMutableArray *)self->_streamsHistory count])
        {
          goto LABEL_9;
        }
      }

      v21 = [(NSMutableArray *)self->_streamsHistory objectAtIndexedSubscript:v6];
      [v21 removeObjectAtIndex:0];

      return 1;
    }

    else
    {
LABEL_9:
      matchedTimestampsArray = self->_matchedTimestampsArray;
      v9 = [(NSMutableArray *)self->_streamsHistory count];
      if (v9 >= 2)
      {
        v11 = matchedTimestampsArray + 1;
        v13 = matchedTimestampsArray[1];
        if (v13 >= *matchedTimestampsArray)
        {
          v10 = matchedTimestampsArray;
        }

        else
        {
          v10 = matchedTimestampsArray + 1;
        }

        if (v13 < *matchedTimestampsArray)
        {
          v11 = matchedTimestampsArray;
        }

        if (v9 != 2)
        {
          v14 = matchedTimestampsArray + 2;
          if (v13 >= *matchedTimestampsArray)
          {
            v13 = *matchedTimestampsArray;
          }

          v15 = matchedTimestampsArray + 3;
          v16 = 8 * v9 - 24;
          while (1)
          {
            v17 = v14;
            v18 = v15 - 1;
            if (!v16)
            {
              break;
            }

            v20 = *(v15 - 1);
            v19 = *v15;
            if (*v15 >= v20)
            {
              if (v20 < v13)
              {
                v13 = *(v15 - 1);
                v10 = v15 - 1;
              }

              if (v19 >= *v11)
              {
                v11 = matchedTimestampsArray + 3;
              }
            }

            else
            {
              v13 = *v10;
              if (v19 < *v10)
              {
                v13 = *v15;
                v10 = v15;
              }

              if (v20 >= *v11)
              {
                v11 = v15 - 1;
              }
            }

            v14 = v17 + 2;
            v15 += 2;
            v16 -= 16;
            matchedTimestampsArray = v17;
            if (v16 == -8)
            {
              goto LABEL_39;
            }
          }

          if (*v18 >= *v10)
          {
            if (*v18 >= *v11)
            {
              v11 = v15 - 1;
            }
          }

          else
          {
            v10 = v15 - 1;
          }
        }
      }

      else
      {
        v10 = matchedTimestampsArray;
        v11 = matchedTimestampsArray;
      }

LABEL_39:
      allowedMatchTimeInterval = self->_allowedMatchTimeInterval;
      if (*v11 - *v10 >= allowedMatchTimeInterval)
      {
        v25 = *v11 - allowedMatchTimeInterval;
        v26 = ((v10 - self->_matchedTimestampsArray) >> 3);

        return [(ADStreamSync *)self dropOldFramesFromStream:v26 belowTimestampThreshold:v25];
      }

      else
      {
        createAndPopulateMatch = [(ADStreamSync *)self createAndPopulateMatch];
        v24 = createAndPopulateMatch;
        result = 0;
        *match = createAndPopulateMatch;
      }
    }
  }

  return result;
}

- (id)checkForMatch
{
  v3 = 0;
  do
  {
    v7 = v3;
    v4 = [(ADStreamSync *)self checkOnceForMatch:&v7];
    v5 = v7;

    v3 = v5;
  }

  while (v4);

  return v5;
}

- (id)createAndPopulateMatch
{
  v3 = objc_opt_new();
  v4 = objc_opt_new();
  [v3 setMatchedStreams:v4];

  for (i = 0; i < [(NSMutableArray *)self->_streamsHistory count]; ++i)
  {
    v6 = [(NSMutableArray *)self->_streamsHistory objectAtIndexedSubscript:i];
    v7 = self->_aggregationCounts[i];
    v8 = [MEMORY[0x277CBEB18] arrayWithCapacity:v7];
    if (v7)
    {
      v9 = 1;
      do
      {
        v10 = [v6 objectAtIndexedSubscript:0];
        [v8 addObject:v10];

        [v6 removeObjectAtIndex:0];
      }

      while (v7 > v9++);
    }

    matchedStreams = [v3 matchedStreams];
    [matchedStreams addObject:v8];
  }

  return v3;
}

- (BOOL)dropOldFramesFromStream:(unint64_t)stream belowTimestampThreshold:(double)threshold
{
  for (i = 0; ; i = 1)
  {
    v8 = [(NSMutableArray *)self->_streamsHistory objectAtIndexedSubscript:stream];
    if (![v8 count])
    {
      break;
    }

    [(ADStreamSync *)self oldestAverageTimestampForStream:stream];
    v10 = v9;

    if (v10 > threshold)
    {
      return i;
    }

    v11 = [(NSMutableArray *)self->_streamsHistory objectAtIndexedSubscript:stream];
    [v11 removeObjectAtIndex:0];
  }

  return i;
}

- (BOOL)streamContainsMinimalFrameCount:(unint64_t)count
{
  v5 = [(NSMutableArray *)self->_streamsHistory objectAtIndexedSubscript:?];
  LOBYTE(count) = [v5 count] >= self->_aggregationCounts[count];

  return count;
}

- (BOOL)areOldestMatchingObjectsInAllowedInterval:(unint64_t)interval
{
  v5 = [(NSMutableArray *)self->_streamsHistory objectAtIndexedSubscript:?];
  v6 = [v5 objectAtIndexedSubscript:self->_aggregationCounts[interval] - 1];
  v7 = [v5 objectAtIndexedSubscript:0];
  [v6 midExposureTimestamp];
  v9 = v8;
  [v7 midExposureTimestamp];
  LOBYTE(interval) = v9 - v10 <= self->_allowedAggregationIntervals[interval];

  return interval;
}

- (double)oldestAverageTimestampForStream:(unint64_t)stream
{
  v5 = [(NSMutableArray *)self->_streamsHistory objectAtIndexedSubscript:?];
  v6 = self->_aggregationCounts[stream];
  v7 = [v5 count];
  if (v6 >= v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = v6;
  }

  if (v8)
  {
    v9 = 0;
    v10 = 0.0;
    v11 = 1;
    do
    {
      v12 = [v5 objectAtIndex:v9];
      [v12 midExposureTimestamp];
      v10 = v10 + v13;

      v9 = v11;
    }

    while (v8 > v11++);
  }

  else
  {
    v10 = 0.0;
  }

  return v10 / v8;
}

- (int64_t)reset
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = self->_streamsHistory;
  v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    do
    {
      v5 = 0;
      do
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v5++) removeAllObjects];
      }

      while (v3 != v5);
      v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v3);
  }

  return 0;
}

- (id)pushData:(__n128)data streamIndex:(__n128)index timestamp:(__n128)timestamp pose:(__n128)pose calibration:(uint64_t)calibration meta:(void *)meta
{
  timestampCopy = timestamp;
  poseCopy = pose;
  dataCopy = data;
  indexCopy = index;
  v35 = *MEMORY[0x277D85DE8];
  metaCopy = meta;
  v17 = a10;
  v18 = a11;
  v19 = objc_opt_new();
  [v19 setData:metaCopy];
  [v19 setTimestamp:a2];
  [v19 setPose:{dataCopy.n128_f64[0], indexCopy.n128_f64[0], timestampCopy.n128_f64[0], poseCopy.n128_f64[0]}];
  [v19 setMidExposureTimestamp:a2];
  [v19 setCalibration:v17];
  [v19 setMetadata:v18];
  if ([self[1] count] <= a9 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v26 = [self[1] count];
    *buf = 134218240;
    v32 = a9;
    v33 = 2048;
    v34 = v26;
    _os_log_error_impl(&dword_240463000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "ADStreamSync error: cannot push to index %lu when number of synced streams is %lu", buf, 0x16u);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  v21 = [self[1] objectAtIndexedSubscript:a9];
  if (*(selfCopy[6] + a9) == 1)
  {
    v22 = [ADStreamSync expectedNumberOfFramesForObject:metaCopy];
    if (v22 != *(selfCopy[3] + a9))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v32 = v22;
        _os_log_impl(&dword_240463000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Stream sync auto aggregation count set to %zu", buf, 0xCu);
      }

      [v21 removeAllObjects];
      *(selfCopy[3] + a9) = v22;
    }
  }

  v23 = *(selfCopy[2] + a9);
  if ([v21 count] >= v23)
  {
    [v21 removeObjectAtIndex:0];
  }

  [v21 addObject:v19];
  checkForMatch = [selfCopy checkForMatch];

  objc_sync_exit(selfCopy);

  return checkForMatch;
}

- (id)pushData:(void *)data streamIndex:(uint64_t)index timestamp:(uint64_t)timestamp pose:(uint64_t)pose
{
  v4 = [data pushData:timestamp streamIndex:pose timestamp:0 pose:0 calibration:? meta:?];

  return v4;
}

- (id)pushData:(void *)data streamIndex:(uint64_t)index timestamp:(uint64_t)timestamp pose:(uint64_t)pose meta:(uint64_t)meta
{
  v5 = [data pushData:timestamp streamIndex:pose timestamp:0 pose:meta calibration:? meta:?];

  return v5;
}

- (id)pushData:(void *)data streamIndex:(uint64_t)index timestamp:(uint64_t)timestamp pose:(uint64_t)pose calibration:(uint64_t)calibration
{
  v5 = [data pushData:timestamp streamIndex:pose timestamp:calibration pose:0 calibration:? meta:?];

  return v5;
}

- (void)dealloc
{
  matchedTimestampsArray = self->_matchedTimestampsArray;
  if (matchedTimestampsArray)
  {
    MEMORY[0x245CC10C0](matchedTimestampsArray, 0x1000C8000313F17);
  }

  allowedAggregationIntervals = self->_allowedAggregationIntervals;
  if (allowedAggregationIntervals)
  {
    MEMORY[0x245CC10C0](allowedAggregationIntervals, 0x1000C8000313F17);
  }

  historySizes = self->_historySizes;
  if (historySizes)
  {
    MEMORY[0x245CC10C0](historySizes, 0x1000C8000313F17);
  }

  aggregationCounts = self->_aggregationCounts;
  if (aggregationCounts)
  {
    MEMORY[0x245CC10C0](aggregationCounts, 0x1000C8000313F17);
  }

  autoAggregation = self->_autoAggregation;
  if (autoAggregation)
  {
    MEMORY[0x245CC10C0](autoAggregation, 0x1000C8077774924);
  }

  v8.receiver = self;
  v8.super_class = ADStreamSync;
  [(ADStreamSync *)&v8 dealloc];
}

- (int64_t)setStream:(unint64_t)stream queueSize:(unint64_t)size aggregationCount:(unint64_t)count allowedAggregationInterval:(double)interval
{
  v22 = *MEMORY[0x277D85DE8];
  if ([(NSMutableArray *)self->_streamsHistory count]<= stream)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v17 = [(NSMutableArray *)self->_streamsHistory count];
      v18 = 134218240;
      streamCopy = stream;
      v20 = 2048;
      v21 = v17;
      _os_log_error_impl(&dword_240463000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "ADStreamSync cannot set stream %lu. only %lu streams supported", &v18, 0x16u);
    }

    return -22953;
  }

  else
  {
    self->_allowedAggregationIntervals[stream] = interval;
    aggregationCounts = self->_aggregationCounts;
    self->_historySizes[stream] = size;
    aggregationCounts[stream] = count;
    self->_autoAggregation[stream] = count == -1;
    v12 = [(NSMutableArray *)self->_streamsHistory objectAtIndexedSubscript:stream];
    v13 = [v12 count];

    if (v13 >= size)
    {
      v14 = [(NSMutableArray *)self->_streamsHistory objectAtIndexedSubscript:stream];
      v15 = [(NSMutableArray *)self->_streamsHistory objectAtIndexedSubscript:stream];
      [v14 removeObjectsInRange:{0, objc_msgSend(v15, "count") - size}];
    }

    return 0;
  }
}

- (ADStreamSync)initWithStreamCount:(unint64_t)count allowedMatchTimeInterval:(double)interval
{
  self->_allowedMatchTimeInterval = interval;
  v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:?];
  streamsHistory = self->_streamsHistory;
  self->_streamsHistory = v5;

  operator new[]();
}

+ (unint64_t)expectedNumberOfFramesForObject:(id)object
{
  v9 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_12;
  }

  v4 = [objectCopy length];
  v5 = v4;
  v6 = 4;
  if (v4 <= 287)
  {
    if (v4 != 84)
    {
      if (v4 != 168)
      {
        goto LABEL_10;
      }

      v6 = 2;
    }
  }

  else if (v4 != 288)
  {
    if (v4 != 336 && v4 != 1154)
    {
LABEL_10:
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        v8[0] = 67109120;
        v8[1] = v5;
        _os_log_error_impl(&dword_240463000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "ADStreamSync: stream was initialized with auto aggregation size, but got a non-standard point cloud (%d points)", v8, 8u);
      }
    }

LABEL_12:
    v6 = 1;
  }

  return v6;
}

@end