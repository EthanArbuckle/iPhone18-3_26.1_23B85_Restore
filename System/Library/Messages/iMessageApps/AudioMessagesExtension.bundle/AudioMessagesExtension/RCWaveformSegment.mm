@interface RCWaveformSegment
+ (id)_discontinuityRepairedSegmentsByGrowingToFillGapsInSegments:(id)segments;
+ (id)_mergedSegmentByResamplingWithMergeableSegments:(id)segments mergedLevelsDuration:(double)duration;
+ (id)_segmentByMergingMergableSegments:(id)segments;
+ (id)_segmentsByJoiningSegment:(id)segment toSegmentIfNecessaryWithGreaterSegment:(id)greaterSegment averagePowerLevelJoinLimit:(unint64_t)limit;
+ (id)emptySegmentWithTimeRange:(id)range;
+ (id)segmentsByMergingSegments:(id)segments preferredSegmentDuration:(double)duration;
+ (id)segmentsByMergingSegments:(id)segments preferredSegmentDuration:(double)duration beforeTime:(double)time andThenUsePreferredSegmentDuration:(double)segmentDuration;
+ (id)segmentsByReparingDiscontinuitiesInSegments:(id)segments;
+ (id)segmentsByShiftingSegments:(id)segments byTimeOffset:(double)offset;
+ (void)initialize;
- ($F24F406B2B787EFB06265DBA3D28CBD5)timeRange;
- (BOOL)hasUniformPowerLevel:(float)level;
- (BOOL)isWaveformDataAlmostEqualToDataInSegment:(id)segment;
- (BOOL)isWaveformDataEqualToDataInSegment:(id)segment;
- (RCWaveformSegment)initWithCoder:(id)coder;
- (RCWaveformSegment)initWithTimeRange:(id)range averagePowerLevelVector:(void *)vector;
- (id)_initWithTimeRange:(id)range averagePowerLevelData:(id)data;
- (id)_segmentWithValuesInContainedTimeRange:(id)range;
- (id)_segmentsByJoiningIfNecessaryGreaterSegment:(id)segment averagePowerLevelJoinLimit:(unint64_t)limit;
- (id)copyWithAdjustedTimeRange:(id)range;
- (id)copyWithTimeRangeOffsetByTimeOffset:(double)offset;
- (id)segmentByClippingToTimeRange:(id)range;
- (id)segmentsByJoiningIfSmallSegment:(id)segment;
- (id)segmentsByJoiningIfSmallSegment:(id)segment averagePowerLevelJoinLimit:(unint64_t)limit;
- (id)simpleDescription;
- (id)verboseDescription;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RCWaveformSegment

+ (void)initialize
{
  if (objc_opt_class() == self)
  {

    [RCWaveformSegment setVersion:1];
  }
}

+ (id)emptySegmentWithTimeRange:(id)range
{
  var1 = range.var1;
  var0 = range.var0;
  v5 = [self alloc];
  v6 = +[NSData data];
  v7 = [v5 _initWithTimeRange:v6 averagePowerLevelData:{var0, var1}];

  return v7;
}

- (id)_initWithTimeRange:(id)range averagePowerLevelData:(id)data
{
  var1 = range.var1;
  var0 = range.var0;
  dataCopy = data;
  v12.receiver = self;
  v12.super_class = RCWaveformSegment;
  v9 = [(RCWaveformSegment *)&v12 init];
  v10 = v9;
  if (v9)
  {
    v9->_timeRange.beginTime = var0;
    v9->_timeRange.endTime = var1;
    objc_storeStrong(&v9->_averagePowerLevelData, data);
    v10->_isRendered = 0;
  }

  return v10;
}

- (RCWaveformSegment)initWithTimeRange:(id)range averagePowerLevelVector:(void *)vector
{
  var1 = range.var1;
  var0 = range.var0;
  if (*(vector + 1) == *vector)
  {
    v8 = 0;
  }

  else
  {
    v8 = [[NSMutableData alloc] initWithBytes:*vector length:*(vector + 1) - *vector];
    memcpy([v8 mutableBytes], *vector, *(vector + 1) - *vector);
  }

  var1 = [(RCWaveformSegment *)self initWithTimeRange:v8 averagePowerLevelData:var0, var1];
  v10 = var1;
  if (var1)
  {
    var1->_timeRange.beginTime = var0;
    var1->_timeRange.endTime = var1;
  }

  return v10;
}

- (id)verboseDescription
{
  simpleDescription = [(RCWaveformSegment *)self simpleDescription];
  v4 = RCTimeRangeDeltaWithExactPrecision(self->_timeRange.beginTime, self->_timeRange.endTime);
  averagePowerLevelsCount = [(RCWaveformSegment *)self averagePowerLevelsCount];
  v6 = +[NSMutableArray array];
  v7 = 0;
  v8 = v4 / averagePowerLevelsCount;
  while (v7 < [(RCWaveformSegment *)self averagePowerLevelsCount])
  {
    v9 = [NSString stringWithFormat:@"[%.3fs] %.2f", v8 * v7, *([(RCWaveformSegment *)self averagePowerLevels]+ v7)];
    [v6 addObject:v9];

    ++v7;
  }

  v10 = [v6 componentsJoinedByString:{@", "}];
  v11 = [NSString stringWithFormat:@"%@ %@", simpleDescription, v10];

  return v11;
}

- (id)simpleDescription
{
  v7.receiver = self;
  v7.super_class = RCWaveformSegment;
  v3 = [(RCWaveformSegment *)&v7 description];
  v4 = NSStringFromRCTimeRange(self->_timeRange.beginTime, self->_timeRange.endTime);
  v5 = [NSString stringWithFormat:@"%@: timeRange=%@, levelCount=%d", v3, v4, [(RCWaveformSegment *)self averagePowerLevelsCount]];

  return v5;
}

- (RCWaveformSegment)initWithCoder:(id)coder
{
  coderCopy = coder;
  self->_timeRange.beginTime = RCTimeRangeDecodeWithKey(coderCopy, @"RCTimeRange");
  self->_timeRange.endTime = v5;
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"RCAveragePowerLevelVectorData"];
  averagePowerLevelData = self->_averagePowerLevelData;
  self->_averagePowerLevelData = v6;

  return self;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  RCTimeRangeEncodeWithKey(coderCopy, @"RCTimeRange", self->_timeRange.beginTime, self->_timeRange.endTime);
  [coderCopy encodeObject:self->_averagePowerLevelData forKey:@"RCAveragePowerLevelVectorData"];
}

- (BOOL)hasUniformPowerLevel:(float)level
{
  if (![(RCWaveformSegment *)self averagePowerLevelsCount])
  {
    return 0;
  }

  if (![(RCWaveformSegment *)self averagePowerLevelsCount])
  {
    return 1;
  }

  v5 = 0;
  do
  {
    v6 = *([(RCWaveformSegment *)self averagePowerLevels]+ v5);
    v7 = v6 == level;
    if (v6 != level)
    {
      break;
    }

    ++v5;
  }

  while (v5 < [(RCWaveformSegment *)self averagePowerLevelsCount]);
  return v7;
}

- (BOOL)isWaveformDataEqualToDataInSegment:(id)segment
{
  if (segment == self)
  {
    return 1;
  }

  else
  {
    return [(NSData *)self->_averagePowerLevelData isEqual:*(segment + 1)];
  }
}

- (BOOL)isWaveformDataAlmostEqualToDataInSegment:(id)segment
{
  segmentCopy = segment;
  v5 = segmentCopy;
  if (segmentCopy == self)
  {
    goto LABEL_10;
  }

  averagePowerLevelsCount = [(RCWaveformSegment *)segmentCopy averagePowerLevelsCount];
  if (averagePowerLevelsCount != [(RCWaveformSegment *)self averagePowerLevelsCount])
  {
    v11 = 0;
    goto LABEL_12;
  }

  averagePowerLevelsCount2 = [(RCWaveformSegment *)self averagePowerLevelsCount];
  if (!averagePowerLevelsCount2)
  {
LABEL_10:
    v11 = 1;
  }

  else
  {
    v8 = 0;
    v9 = averagePowerLevelsCount2 - 1;
    do
    {
      v10 = RCEqualFloatsWithTolerance(*([(RCWaveformSegment *)self averagePowerLevels]+ v8), *([(RCWaveformSegment *)v5 averagePowerLevels]+ v8), 0.1);
      v11 = v10;
    }

    while (v9 != v8++ && v10);
  }

LABEL_12:

  return v11;
}

- (id)copyWithTimeRangeOffsetByTimeOffset:(double)offset
{
  v4 = self->_timeRange.beginTime + offset;
  v5 = self->_timeRange.endTime + offset;
  v6 = objc_alloc(objc_opt_class());
  averagePowerLevelData = self->_averagePowerLevelData;

  return [v6 initWithTimeRange:averagePowerLevelData averagePowerLevelData:{v4, v5}];
}

- (id)copyWithAdjustedTimeRange:(id)range
{
  var1 = range.var1;
  var0 = range.var0;
  v6 = objc_alloc(objc_opt_class());
  averagePowerLevelData = self->_averagePowerLevelData;

  return [v6 initWithTimeRange:averagePowerLevelData averagePowerLevelData:{var0, var1}];
}

+ (id)segmentsByReparingDiscontinuitiesInSegments:(id)segments
{
  v3 = [self _discontinuityRepairedSegmentsByGrowingToFillGapsInSegments:segments];

  return v3;
}

+ (id)segmentsByShiftingSegments:(id)segments byTimeOffset:(double)offset
{
  segmentsCopy = segments;
  if ([segmentsCopy count])
  {
    v6 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [segmentsCopy count]);
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v7 = segmentsCopy;
    v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v8)
    {
      v9 = *v14;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = [*(*(&v13 + 1) + 8 * i) copyWithTimeRangeOffsetByTimeOffset:{offset, v13}];
          [v6 addObject:v11];
        }

        v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v8);
    }
  }

  else
  {
    v6 = [segmentsCopy mutableCopy];
  }

  return v6;
}

+ (id)segmentsByMergingSegments:(id)segments preferredSegmentDuration:(double)duration beforeTime:(double)time andThenUsePreferredSegmentDuration:(double)segmentDuration
{
  segmentsCopy = segments;
  if ([segmentsCopy count] <= 1)
  {
    v11 = segmentsCopy;
    goto LABEL_42;
  }

  v43 = segmentsCopy;
  v44 = [segmentsCopy mutableCopy];
  if (v44)
  {
    v12 = +[NSMutableArray array];
    v13 = [NSMutableArray arrayWithObject:v12];

    v11 = +[NSMutableArray array];
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v14 = v44;
    v15 = [v14 countByEnumeratingWithState:&v49 objects:v54 count:16];
    if (v15)
    {
      v16 = *v50;
      v17 = 0.0;
      segmentDurationCopy = duration;
      do
      {
        for (i = 0; i != v15; i = i + 1)
        {
          if (*v50 != v16)
          {
            objc_enumerationMutation(v14);
          }

          v20 = *(*(&v49 + 1) + 8 * i);
          [v20 timeRange];
          v22 = v21;
          v24 = v23;
          if (v21 >= time && segmentDurationCopy == duration)
          {
            v26 = +[NSMutableArray array];
            [v13 addObject:v26];

            segmentDurationCopy = segmentDuration;
          }

          lastObject = [v13 lastObject];
          if (![lastObject count])
          {
            v17 = v22;
          }

          [lastObject addObject:v20];
          if (v24 - v17 >= segmentDurationCopy)
          {
            v28 = +[NSMutableArray array];
            [v13 addObject:v28];
          }
        }

        v15 = [v14 countByEnumeratingWithState:&v49 objects:v54 count:16];
      }

      while (v15);
    }

    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v29 = v13;
    v30 = [v29 countByEnumeratingWithState:&v45 objects:v53 count:16];
    if (v30)
    {
      v31 = *v46;
      do
      {
        for (j = 0; j != v30; j = j + 1)
        {
          if (*v46 != v31)
          {
            objc_enumerationMutation(v29);
          }

          v33 = *(*(&v45 + 1) + 8 * j);
          if ([v33 count] == &dword_0 + 1)
          {
            firstObject = [v33 objectAtIndexedSubscript:0];
            [v11 addObject:firstObject];
          }

          else
          {
            if ([v33 count] < 2)
            {
              continue;
            }

            firstObject = [v33 firstObject];
            lastObject2 = [v33 lastObject];
            [firstObject timeRange];
            v37 = v36;
            [lastObject2 timeRange];
            v39 = v38 - v37;
            if (v37 >= time)
            {
              durationCopy2 = segmentDuration;
            }

            else
            {
              durationCopy2 = duration;
            }

            if (v39 >= durationCopy2)
            {
              v41 = [self _segmentByMergingMergableSegments:v33];
              [v11 addObject:v41];
            }

            else
            {
              [v11 addObjectsFromArray:v33];
            }
          }
        }

        v30 = [v29 countByEnumeratingWithState:&v45 objects:v53 count:16];
      }

      while (v30);
    }
  }

  else
  {
    v11 = segmentsCopy;
  }

  segmentsCopy = v43;
LABEL_42:

  return v11;
}

+ (id)segmentsByMergingSegments:(id)segments preferredSegmentDuration:(double)duration
{
  v4 = [self segmentsByMergingSegments:segments preferredSegmentDuration:duration beforeTime:1.79769313e308 andThenUsePreferredSegmentDuration:1.0];

  return v4;
}

- (id)segmentsByJoiningIfSmallSegment:(id)segment
{
  v3 = [(RCWaveformSegment *)self _segmentsByJoiningIfNecessaryGreaterSegment:segment averagePowerLevelJoinLimit:8];

  return v3;
}

- (id)segmentsByJoiningIfSmallSegment:(id)segment averagePowerLevelJoinLimit:(unint64_t)limit
{
  segmentCopy = segment;
  if (!segmentCopy)
  {
    selfCopy = self;
    v11 = &selfCopy;
    v12 = 1;
LABEL_5:
    selfCopy = [NSArray arrayWithObjects:v11 count:v12, selfCopy2, v19, selfCopy];
    goto LABEL_8;
  }

  [(RCWaveformSegment *)self timeRange];
  v8 = v7;
  [segmentCopy timeRange];
  if (v8 == v9)
  {
    selfCopy = [(RCWaveformSegment *)self _segmentsByJoiningIfNecessaryGreaterSegment:segmentCopy averagePowerLevelJoinLimit:limit];
    goto LABEL_8;
  }

  [segmentCopy timeRange];
  v14 = v13;
  [(RCWaveformSegment *)self timeRange];
  if (v14 != v15)
  {
    selfCopy2 = self;
    v19 = segmentCopy;
    v11 = &selfCopy2;
    v12 = 2;
    goto LABEL_5;
  }

  selfCopy = [segmentCopy _segmentsByJoiningIfNecessaryGreaterSegment:self averagePowerLevelJoinLimit:limit];
LABEL_8:
  v16 = selfCopy;

  return v16;
}

- (id)segmentByClippingToTimeRange:(id)range
{
  var1 = range.var1;
  var0 = range.var0;
  [(RCWaveformSegment *)self timeRange];
  if (RCTimeRangeEqualToTimeRange(var0, var1, v6, v7) || ([(RCWaveformSegment *)self timeRange], RCTimeRangeContainsRange(var0, var1, v8, v9)) || ([(RCWaveformSegment *)self timeRange], RCTimeRangeContainsRange(var0, var1, v10, v11)))
  {
    selfCopy = self;
  }

  else
  {
    [(RCWaveformSegment *)self timeRange];
    if (v14 > var1)
    {
      [(RCWaveformSegment *)self timeRange];
      if (v15 <= var1)
      {
        goto LABEL_16;
      }
    }

    [(RCWaveformSegment *)self timeRange];
    if (var0 < v16)
    {
      var0 = v16;
    }

    [(RCWaveformSegment *)self timeRange];
    if (var1 < v17)
    {
      v17 = var1;
    }

    if (var0 >= v17)
    {
LABEL_16:
      selfCopy = 0;
    }

    else
    {
      selfCopy = [(RCWaveformSegment *)self _segmentWithValuesInContainedTimeRange:RCTimeRangeMake(var0, v17)];
    }
  }

  return selfCopy;
}

+ (id)_discontinuityRepairedSegmentsByGrowingToFillGapsInSegments:(id)segments
{
  segmentsCopy = segments;
  if ([segmentsCopy count] > 1)
  {
    v4 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [segmentsCopy count]);
    for (i = 1; i < [segmentsCopy count]; i = v8 + 1)
    {
      v6 = i - 1;
      v7 = [segmentsCopy objectAtIndexedSubscript:i - 1];
      v8 = v6 + 1;
      v9 = [segmentsCopy objectAtIndexedSubscript:v6 + 1];
      [v9 timeRange];
      v11 = v10;
      [v7 timeRange];
      if (vabdd_f64(v11, v12) > 0.01)
      {
        [v7 timeRange];
        v13 = [v7 copyWithAdjustedTimeRange:?];

        v7 = v13;
      }

      [v4 addObject:v7];
    }

    lastObject = [segmentsCopy lastObject];
    [v4 addObject:lastObject];
  }

  else
  {
    v4 = segmentsCopy;
  }

  return v4;
}

- (id)_segmentWithValuesInContainedTimeRange:(id)range
{
  var1 = range.var1;
  var0 = range.var0;
  averagePowerLevelsCount = [(RCWaveformSegment *)self averagePowerLevelsCount];
  if (averagePowerLevelsCount)
  {
    v7 = averagePowerLevelsCount;
    v8 = RCTimeRangeDeltaWithExactPrecision(self->_timeRange.beginTime, self->_timeRange.endTime);
    v9 = v8 / [(RCWaveformSegment *)self averagePowerLevelsCount];
    [(RCWaveformSegment *)self timeRange];
    v11 = (var0 - v10) / v9;
    if (v7 - 1 >= v11)
    {
      v12 = v11;
    }

    else
    {
      v12 = v7 - 1;
    }

    [(RCWaveformSegment *)self timeRange];
    v14 = v13 + (v9 * v12);
    v15 = RCTimeRangeDeltaWithExactPrecision(v14, var1);
    if (v7 == v12)
    {
      v16 = 0;
    }

    else
    {
      v17 = vcvtpd_u64_f64(v15 / v9);
      if (v17 <= 1)
      {
        v17 = 1;
      }

      if (v7 - v12 >= v17)
      {
        v18 = v17;
      }

      else
      {
        v18 = v7 - v12;
      }

      v19 = [NSMutableData dataWithLength:4 * v18];
      memmove([v19 mutableBytes], -[RCWaveformSegment averagePowerLevels](self, "averagePowerLevels") + 4 * v12, 4 * v18);
      v16 = [[RCWaveformSegment alloc] initWithTimeRange:v19 averagePowerLevelData:v14, v14 + (v9 * v18)];
    }
  }

  else
  {
    v16 = [objc_opt_class() emptySegmentWithTimeRange:{var0, var1}];
  }

  return v16;
}

- (id)_segmentsByJoiningIfNecessaryGreaterSegment:(id)segment averagePowerLevelJoinLimit:(unint64_t)limit
{
  segmentCopy = segment;
  if (segmentCopy)
  {
    v7 = objc_opt_class();
    v14[0] = self;
    v14[1] = segmentCopy;
    v8 = [NSArray arrayWithObjects:v14 count:2];
    v9 = [v7 _discontinuityRepairedSegmentsByGrowingToFillGapsInSegments:v8];

    v10 = [v9 objectAtIndexedSubscript:0];
    v11 = [v9 objectAtIndexedSubscript:1];
    v12 = [RCWaveformSegment _segmentsByJoiningSegment:v10 toSegmentIfNecessaryWithGreaterSegment:v11 averagePowerLevelJoinLimit:limit];
  }

  else
  {
    selfCopy = self;
    v12 = [NSArray arrayWithObjects:&selfCopy count:1];
  }

  return v12;
}

+ (id)_segmentsByJoiningSegment:(id)segment toSegmentIfNecessaryWithGreaterSegment:(id)greaterSegment averagePowerLevelJoinLimit:(unint64_t)limit
{
  segmentCopy = segment;
  greaterSegmentCopy = greaterSegment;
  [segmentCopy timeRange];
  v11 = RCTimeRangeDeltaWithExactPrecision(v9, v10);
  [greaterSegmentCopy timeRange];
  v14 = RCTimeRangeDeltaWithExactPrecision(v12, v13);
  if ([segmentCopy averagePowerLevelsCount] <= 1)
  {
    [segmentCopy timeRange];
    v16 = v15;
    [greaterSegmentCopy timeRange];
    v18 = [greaterSegmentCopy copyWithAdjustedTimeRange:{RCTimeRangeMake(v16, v17)}];
    v59 = v18;
    v19 = [NSArray arrayWithObjects:&v59 count:1];
LABEL_5:
    v23 = v19;
LABEL_6:

    goto LABEL_7;
  }

  if ([greaterSegmentCopy averagePowerLevelsCount] <= 1)
  {
    [segmentCopy timeRange];
    v21 = v20;
    [greaterSegmentCopy timeRange];
    v18 = [segmentCopy copyWithAdjustedTimeRange:{RCTimeRangeMake(v21, v22)}];
    v58 = v18;
    v19 = [NSArray arrayWithObjects:&v58 count:1];
    goto LABEL_5;
  }

  averagePowerLevelsCount = [segmentCopy averagePowerLevelsCount];
  if (&averagePowerLevelsCount[[greaterSegmentCopy averagePowerLevelsCount]] < limit)
  {
    v26 = v11;
    v27 = v14;
    if ((v26 + v27) > 0.0)
    {
      [segmentCopy timeRange];
      v29 = v28;
      [greaterSegmentCopy timeRange];
      v31 = RCTimeRangeMake(v29, v30);
      v33 = v32;
      [segmentCopy timeRange];
      v36 = RCTimeRangeDeltaWithExactPrecision(v34, v35);
      averagePowerLevelsCount2 = [segmentCopy averagePowerLevelsCount];
      [greaterSegmentCopy timeRange];
      v40 = RCTimeRangeDeltaWithExactPrecision(v38, v39);
      averagePowerLevelsCount3 = [greaterSegmentCopy averagePowerLevelsCount];
      v42 = v36;
      v43 = v42 / averagePowerLevelsCount2;
      v44 = v40;
      v45 = v44 / averagePowerLevelsCount3;
      if (v43 > 0.0)
      {
        if (v45 <= 0.0)
        {
          v45 = v42 / averagePowerLevelsCount2;
        }

        else if (v43 < v45)
        {
          v45 = v42 / averagePowerLevelsCount2;
        }
      }

      v46 = (RCTimeRangeDeltaWithExactPrecision(v31, v33) / v45);
      v18 = [NSMutableData dataWithLength:4 * v46];
      mutableBytes = [v18 mutableBytes];
      if (v46)
      {
        v48 = mutableBytes;
        for (i = 0; i != v46; ++i)
        {
          [segmentCopy timeRange];
          v50 = v45 * i;
          if (v51 <= v50)
          {
            averagePowerLevels = [greaterSegmentCopy averagePowerLevels];
            v53 = (v50 - v42);
            v54 = v44;
          }

          else
          {
            averagePowerLevels = [segmentCopy averagePowerLevels];
            v53 = v50;
            v54 = v42;
          }

          v48[i] = averagePowerLevels[(v53 / v54)];
        }
      }

      v55 = [[RCWaveformSegment alloc] initWithTimeRange:v18 averagePowerLevelData:v31, v33];
      v57 = v55;
      v23 = [NSArray arrayWithObjects:&v57 count:1];

      goto LABEL_6;
    }
  }

  v56[0] = segmentCopy;
  v56[1] = greaterSegmentCopy;
  v23 = [NSArray arrayWithObjects:v56 count:2];
LABEL_7:

  return v23;
}

+ (id)_segmentByMergingMergableSegments:(id)segments
{
  segmentsCopy = segments;
  v5 = segmentsCopy;
  if (!segmentsCopy)
  {
    v6 = [0 objectAtIndexedSubscript:0];
    goto LABEL_16;
  }

  if ([segmentsCopy count] == &dword_0 + 1)
  {
    v6 = [v5 objectAtIndexedSubscript:0];
LABEL_16:
    v17 = v6;
    goto LABEL_17;
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v8)
  {
    v9 = *v20;
    v10 = 0.0;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v19 + 1) + 8 * i);
        [v12 timeRange];
        v15 = RCTimeRangeDeltaWithExactPrecision(v13, v14);
        v10 = v10 + v15 / [v12 averagePowerLevelsCount];
      }

      v8 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v8);
  }

  else
  {
    v10 = 0.0;
  }

  v16 = v10 / [v7 count];
  v17 = [self _mergedSegmentByFastMergingWithMergeableSegments:v7 mergedLevelsDuration:v16];
  if (!v17)
  {
    v6 = [self _mergedSegmentByResamplingWithMergeableSegments:v7 mergedLevelsDuration:v16];
    goto LABEL_16;
  }

LABEL_17:

  return v17;
}

+ (id)_mergedSegmentByResamplingWithMergeableSegments:(id)segments mergedLevelsDuration:(double)duration
{
  segmentsCopy = segments;
  firstObject = [segmentsCopy firstObject];
  lastObject = [segmentsCopy lastObject];
  [firstObject timeRange];
  v7 = v6;
  [lastObject timeRange];
  v9 = RCTimeRangeMake(v7, v8);
  v11 = v10;
  v12 = (RCTimeRangeDeltaWithExactPrecision(v9, v10) / duration);
  v41 = [NSMutableData dataWithLength:4 * v12];
  mutableBytes = [v41 mutableBytes];
  if (v12)
  {
    v14 = mutableBytes;
    v15 = 0;
    for (i = 0; i != v12; ++i)
    {
      [firstObject timeRange];
      v18 = v17 + i * duration;
      v19 = v15;
      do
      {
        v15 = v19;
        if (v19 >= [segmentsCopy count])
        {
          break;
        }

        v20 = [segmentsCopy objectAtIndexedSubscript:v19];
        [v20 timeRange];
        v23 = RCTimeRangeContainsTime(v21, v22, v18);
        ++v19;
      }

      while (!v23);
      if ([segmentsCopy count] == v15)
      {
        break;
      }

      v24 = [segmentsCopy objectAtIndexedSubscript:v15];
      [v24 timeRange];
      v27 = RCTimeRangeDeltaWithExactPrecision(v25, v26);
      averagePowerLevelsCount = [v24 averagePowerLevelsCount];
      [v24 timeRange];
      v30 = v29;
      averagePowerLevelsCount2 = [v24 averagePowerLevelsCount];
      v32 = (v18 - v30) / (v27 / averagePowerLevelsCount);
      if (averagePowerLevelsCount2 - 1 >= v32)
      {
        v33 = v32;
      }

      else
      {
        v33 = averagePowerLevelsCount2 - 1;
      }

      v34 = [segmentsCopy objectAtIndexedSubscript:v15];
      v35 = v33 + 1;
      if ((v33 + 1) >= [v24 averagePowerLevelsCount] - 1)
      {
        if (v15 + 1 >= [segmentsCopy count])
        {
          v35 = v33;
        }

        else
        {
          v36 = [segmentsCopy objectAtIndexedSubscript:?];

          v35 = 0;
          v34 = v36;
        }
      }

      v37 = *([v24 averagePowerLevels] + v33);
      v38 = *([v34 averagePowerLevels] + v35);
      if (v37 >= v38)
      {
        v38 = v37;
      }

      v14[i] = v38;
    }
  }

  v39 = [[RCWaveformSegment alloc] initWithTimeRange:v41 averagePowerLevelData:v9, v11];

  return v39;
}

- ($F24F406B2B787EFB06265DBA3D28CBD5)timeRange
{
  beginTime = self->_timeRange.beginTime;
  endTime = self->_timeRange.endTime;
  result.var1 = endTime;
  result.var0 = beginTime;
  return result;
}

@end