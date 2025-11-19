@interface RCWaveformSegment
+ (id)_discontinuityRepairedSegmentsByGrowingToFillGapsInSegments:(id)a3;
+ (id)_mergedSegmentByResamplingWithMergeableSegments:(id)a3 mergedLevelsDuration:(double)a4;
+ (id)_segmentByMergingMergableSegments:(id)a3;
+ (id)_segmentsByJoiningSegment:(id)a3 toSegmentIfNecessaryWithGreaterSegment:(id)a4 averagePowerLevelJoinLimit:(unint64_t)a5;
+ (id)emptySegmentWithTimeRange:(id)a3;
+ (id)segmentsByMergingSegments:(id)a3 preferredSegmentDuration:(double)a4;
+ (id)segmentsByMergingSegments:(id)a3 preferredSegmentDuration:(double)a4 beforeTime:(double)a5 andThenUsePreferredSegmentDuration:(double)a6;
+ (id)segmentsByReparingDiscontinuitiesInSegments:(id)a3;
+ (id)segmentsByShiftingSegments:(id)a3 byTimeOffset:(double)a4;
+ (void)initialize;
- ($F24F406B2B787EFB06265DBA3D28CBD5)timeRange;
- (BOOL)hasUniformPowerLevel:(float)a3;
- (BOOL)isWaveformDataAlmostEqualToDataInSegment:(id)a3;
- (BOOL)isWaveformDataEqualToDataInSegment:(id)a3;
- (RCWaveformSegment)initWithCoder:(id)a3;
- (RCWaveformSegment)initWithTimeRange:(id)a3 averagePowerLevelVector:(void *)a4;
- (id)_initWithTimeRange:(id)a3 averagePowerLevelData:(id)a4;
- (id)_segmentWithValuesInContainedTimeRange:(id)a3;
- (id)_segmentsByJoiningIfNecessaryGreaterSegment:(id)a3 averagePowerLevelJoinLimit:(unint64_t)a4;
- (id)copyWithAdjustedTimeRange:(id)a3;
- (id)copyWithTimeRangeOffsetByTimeOffset:(double)a3;
- (id)segmentByClippingToTimeRange:(id)a3;
- (id)segmentsByJoiningIfSmallSegment:(id)a3;
- (id)segmentsByJoiningIfSmallSegment:(id)a3 averagePowerLevelJoinLimit:(unint64_t)a4;
- (id)simpleDescription;
- (id)verboseDescription;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RCWaveformSegment

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {

    [RCWaveformSegment setVersion:1];
  }
}

+ (id)emptySegmentWithTimeRange:(id)a3
{
  var1 = a3.var1;
  var0 = a3.var0;
  v5 = [a1 alloc];
  v6 = +[NSData data];
  v7 = [v5 _initWithTimeRange:v6 averagePowerLevelData:{var0, var1}];

  return v7;
}

- (id)_initWithTimeRange:(id)a3 averagePowerLevelData:(id)a4
{
  var1 = a3.var1;
  var0 = a3.var0;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = RCWaveformSegment;
  v9 = [(RCWaveformSegment *)&v12 init];
  v10 = v9;
  if (v9)
  {
    v9->_timeRange.beginTime = var0;
    v9->_timeRange.endTime = var1;
    objc_storeStrong(&v9->_averagePowerLevelData, a4);
    v10->_isRendered = 0;
  }

  return v10;
}

- (RCWaveformSegment)initWithTimeRange:(id)a3 averagePowerLevelVector:(void *)a4
{
  var1 = a3.var1;
  var0 = a3.var0;
  if (*(a4 + 1) == *a4)
  {
    v8 = 0;
  }

  else
  {
    v8 = [[NSMutableData alloc] initWithBytes:*a4 length:*(a4 + 1) - *a4];
    memcpy([v8 mutableBytes], *a4, *(a4 + 1) - *a4);
  }

  v9 = [(RCWaveformSegment *)self initWithTimeRange:v8 averagePowerLevelData:var0, var1];
  v10 = v9;
  if (v9)
  {
    v9->_timeRange.beginTime = var0;
    v9->_timeRange.endTime = var1;
  }

  return v10;
}

- (id)verboseDescription
{
  v3 = [(RCWaveformSegment *)self simpleDescription];
  v4 = RCTimeRangeDeltaWithExactPrecision(self->_timeRange.beginTime, self->_timeRange.endTime);
  v5 = [(RCWaveformSegment *)self averagePowerLevelsCount];
  v6 = +[NSMutableArray array];
  v7 = 0;
  v8 = v4 / v5;
  while (v7 < [(RCWaveformSegment *)self averagePowerLevelsCount])
  {
    v9 = [NSString stringWithFormat:@"[%.3fs] %.2f", v8 * v7, *([(RCWaveformSegment *)self averagePowerLevels]+ v7)];
    [v6 addObject:v9];

    ++v7;
  }

  v10 = [v6 componentsJoinedByString:{@", "}];
  v11 = [NSString stringWithFormat:@"%@ %@", v3, v10];

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

- (RCWaveformSegment)initWithCoder:(id)a3
{
  v4 = a3;
  self->_timeRange.beginTime = RCTimeRangeDecodeWithKey(v4, @"RCTimeRange");
  self->_timeRange.endTime = v5;
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"RCAveragePowerLevelVectorData"];
  averagePowerLevelData = self->_averagePowerLevelData;
  self->_averagePowerLevelData = v6;

  return self;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  RCTimeRangeEncodeWithKey(v4, @"RCTimeRange", self->_timeRange.beginTime, self->_timeRange.endTime);
  [v4 encodeObject:self->_averagePowerLevelData forKey:@"RCAveragePowerLevelVectorData"];
}

- (BOOL)hasUniformPowerLevel:(float)a3
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
    v7 = v6 == a3;
    if (v6 != a3)
    {
      break;
    }

    ++v5;
  }

  while (v5 < [(RCWaveformSegment *)self averagePowerLevelsCount]);
  return v7;
}

- (BOOL)isWaveformDataEqualToDataInSegment:(id)a3
{
  if (a3 == self)
  {
    return 1;
  }

  else
  {
    return [(NSData *)self->_averagePowerLevelData isEqual:*(a3 + 1)];
  }
}

- (BOOL)isWaveformDataAlmostEqualToDataInSegment:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    goto LABEL_10;
  }

  v6 = [(RCWaveformSegment *)v4 averagePowerLevelsCount];
  if (v6 != [(RCWaveformSegment *)self averagePowerLevelsCount])
  {
    v11 = 0;
    goto LABEL_12;
  }

  v7 = [(RCWaveformSegment *)self averagePowerLevelsCount];
  if (!v7)
  {
LABEL_10:
    v11 = 1;
  }

  else
  {
    v8 = 0;
    v9 = v7 - 1;
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

- (id)copyWithTimeRangeOffsetByTimeOffset:(double)a3
{
  v4 = self->_timeRange.beginTime + a3;
  v5 = self->_timeRange.endTime + a3;
  v6 = objc_alloc(objc_opt_class());
  averagePowerLevelData = self->_averagePowerLevelData;

  return [v6 initWithTimeRange:averagePowerLevelData averagePowerLevelData:{v4, v5}];
}

- (id)copyWithAdjustedTimeRange:(id)a3
{
  var1 = a3.var1;
  var0 = a3.var0;
  v6 = objc_alloc(objc_opt_class());
  averagePowerLevelData = self->_averagePowerLevelData;

  return [v6 initWithTimeRange:averagePowerLevelData averagePowerLevelData:{var0, var1}];
}

+ (id)segmentsByReparingDiscontinuitiesInSegments:(id)a3
{
  v3 = [a1 _discontinuityRepairedSegmentsByGrowingToFillGapsInSegments:a3];

  return v3;
}

+ (id)segmentsByShiftingSegments:(id)a3 byTimeOffset:(double)a4
{
  v5 = a3;
  if ([v5 count])
  {
    v6 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v5 count]);
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v7 = v5;
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

          v11 = [*(*(&v13 + 1) + 8 * i) copyWithTimeRangeOffsetByTimeOffset:{a4, v13}];
          [v6 addObject:v11];
        }

        v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v8);
    }
  }

  else
  {
    v6 = [v5 mutableCopy];
  }

  return v6;
}

+ (id)segmentsByMergingSegments:(id)a3 preferredSegmentDuration:(double)a4 beforeTime:(double)a5 andThenUsePreferredSegmentDuration:(double)a6
{
  v10 = a3;
  if ([v10 count] <= 1)
  {
    v11 = v10;
    goto LABEL_42;
  }

  v43 = v10;
  v44 = [v10 mutableCopy];
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
      v18 = a4;
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
          if (v21 >= a5 && v18 == a4)
          {
            v26 = +[NSMutableArray array];
            [v13 addObject:v26];

            v18 = a6;
          }

          v27 = [v13 lastObject];
          if (![v27 count])
          {
            v17 = v22;
          }

          [v27 addObject:v20];
          if (v24 - v17 >= v18)
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
            v34 = [v33 objectAtIndexedSubscript:0];
            [v11 addObject:v34];
          }

          else
          {
            if ([v33 count] < 2)
            {
              continue;
            }

            v34 = [v33 firstObject];
            v35 = [v33 lastObject];
            [v34 timeRange];
            v37 = v36;
            [v35 timeRange];
            v39 = v38 - v37;
            if (v37 >= a5)
            {
              v40 = a6;
            }

            else
            {
              v40 = a4;
            }

            if (v39 >= v40)
            {
              v41 = [a1 _segmentByMergingMergableSegments:v33];
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
    v11 = v10;
  }

  v10 = v43;
LABEL_42:

  return v11;
}

+ (id)segmentsByMergingSegments:(id)a3 preferredSegmentDuration:(double)a4
{
  v4 = [a1 segmentsByMergingSegments:a3 preferredSegmentDuration:a4 beforeTime:1.79769313e308 andThenUsePreferredSegmentDuration:1.0];

  return v4;
}

- (id)segmentsByJoiningIfSmallSegment:(id)a3
{
  v3 = [(RCWaveformSegment *)self _segmentsByJoiningIfNecessaryGreaterSegment:a3 averagePowerLevelJoinLimit:8];

  return v3;
}

- (id)segmentsByJoiningIfSmallSegment:(id)a3 averagePowerLevelJoinLimit:(unint64_t)a4
{
  v6 = a3;
  if (!v6)
  {
    v20 = self;
    v11 = &v20;
    v12 = 1;
LABEL_5:
    v10 = [NSArray arrayWithObjects:v11 count:v12, v18, v19, v20];
    goto LABEL_8;
  }

  [(RCWaveformSegment *)self timeRange];
  v8 = v7;
  [v6 timeRange];
  if (v8 == v9)
  {
    v10 = [(RCWaveformSegment *)self _segmentsByJoiningIfNecessaryGreaterSegment:v6 averagePowerLevelJoinLimit:a4];
    goto LABEL_8;
  }

  [v6 timeRange];
  v14 = v13;
  [(RCWaveformSegment *)self timeRange];
  if (v14 != v15)
  {
    v18 = self;
    v19 = v6;
    v11 = &v18;
    v12 = 2;
    goto LABEL_5;
  }

  v10 = [v6 _segmentsByJoiningIfNecessaryGreaterSegment:self averagePowerLevelJoinLimit:a4];
LABEL_8:
  v16 = v10;

  return v16;
}

- (id)segmentByClippingToTimeRange:(id)a3
{
  var1 = a3.var1;
  var0 = a3.var0;
  [(RCWaveformSegment *)self timeRange];
  if (RCTimeRangeEqualToTimeRange(var0, var1, v6, v7) || ([(RCWaveformSegment *)self timeRange], RCTimeRangeContainsRange(var0, var1, v8, v9)) || ([(RCWaveformSegment *)self timeRange], RCTimeRangeContainsRange(var0, var1, v10, v11)))
  {
    v12 = self;
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
      v12 = 0;
    }

    else
    {
      v12 = [(RCWaveformSegment *)self _segmentWithValuesInContainedTimeRange:RCTimeRangeMake(var0, v17)];
    }
  }

  return v12;
}

+ (id)_discontinuityRepairedSegmentsByGrowingToFillGapsInSegments:(id)a3
{
  v3 = a3;
  if ([v3 count] > 1)
  {
    v4 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v3 count]);
    for (i = 1; i < [v3 count]; i = v8 + 1)
    {
      v6 = i - 1;
      v7 = [v3 objectAtIndexedSubscript:i - 1];
      v8 = v6 + 1;
      v9 = [v3 objectAtIndexedSubscript:v6 + 1];
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

    v14 = [v3 lastObject];
    [v4 addObject:v14];
  }

  else
  {
    v4 = v3;
  }

  return v4;
}

- (id)_segmentWithValuesInContainedTimeRange:(id)a3
{
  var1 = a3.var1;
  var0 = a3.var0;
  v6 = [(RCWaveformSegment *)self averagePowerLevelsCount];
  if (v6)
  {
    v7 = v6;
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

- (id)_segmentsByJoiningIfNecessaryGreaterSegment:(id)a3 averagePowerLevelJoinLimit:(unint64_t)a4
{
  v6 = a3;
  if (v6)
  {
    v7 = objc_opt_class();
    v14[0] = self;
    v14[1] = v6;
    v8 = [NSArray arrayWithObjects:v14 count:2];
    v9 = [v7 _discontinuityRepairedSegmentsByGrowingToFillGapsInSegments:v8];

    v10 = [v9 objectAtIndexedSubscript:0];
    v11 = [v9 objectAtIndexedSubscript:1];
    v12 = [RCWaveformSegment _segmentsByJoiningSegment:v10 toSegmentIfNecessaryWithGreaterSegment:v11 averagePowerLevelJoinLimit:a4];
  }

  else
  {
    v15 = self;
    v12 = [NSArray arrayWithObjects:&v15 count:1];
  }

  return v12;
}

+ (id)_segmentsByJoiningSegment:(id)a3 toSegmentIfNecessaryWithGreaterSegment:(id)a4 averagePowerLevelJoinLimit:(unint64_t)a5
{
  v7 = a3;
  v8 = a4;
  [v7 timeRange];
  v11 = RCTimeRangeDeltaWithExactPrecision(v9, v10);
  [v8 timeRange];
  v14 = RCTimeRangeDeltaWithExactPrecision(v12, v13);
  if ([v7 averagePowerLevelsCount] <= 1)
  {
    [v7 timeRange];
    v16 = v15;
    [v8 timeRange];
    v18 = [v8 copyWithAdjustedTimeRange:{RCTimeRangeMake(v16, v17)}];
    v59 = v18;
    v19 = [NSArray arrayWithObjects:&v59 count:1];
LABEL_5:
    v23 = v19;
LABEL_6:

    goto LABEL_7;
  }

  if ([v8 averagePowerLevelsCount] <= 1)
  {
    [v7 timeRange];
    v21 = v20;
    [v8 timeRange];
    v18 = [v7 copyWithAdjustedTimeRange:{RCTimeRangeMake(v21, v22)}];
    v58 = v18;
    v19 = [NSArray arrayWithObjects:&v58 count:1];
    goto LABEL_5;
  }

  v25 = [v7 averagePowerLevelsCount];
  if (&v25[[v8 averagePowerLevelsCount]] < a5)
  {
    v26 = v11;
    v27 = v14;
    if ((v26 + v27) > 0.0)
    {
      [v7 timeRange];
      v29 = v28;
      [v8 timeRange];
      v31 = RCTimeRangeMake(v29, v30);
      v33 = v32;
      [v7 timeRange];
      v36 = RCTimeRangeDeltaWithExactPrecision(v34, v35);
      v37 = [v7 averagePowerLevelsCount];
      [v8 timeRange];
      v40 = RCTimeRangeDeltaWithExactPrecision(v38, v39);
      v41 = [v8 averagePowerLevelsCount];
      v42 = v36;
      v43 = v42 / v37;
      v44 = v40;
      v45 = v44 / v41;
      if (v43 > 0.0)
      {
        if (v45 <= 0.0)
        {
          v45 = v42 / v37;
        }

        else if (v43 < v45)
        {
          v45 = v42 / v37;
        }
      }

      v46 = (RCTimeRangeDeltaWithExactPrecision(v31, v33) / v45);
      v18 = [NSMutableData dataWithLength:4 * v46];
      v47 = [v18 mutableBytes];
      if (v46)
      {
        v48 = v47;
        for (i = 0; i != v46; ++i)
        {
          [v7 timeRange];
          v50 = v45 * i;
          if (v51 <= v50)
          {
            v52 = [v8 averagePowerLevels];
            v53 = (v50 - v42);
            v54 = v44;
          }

          else
          {
            v52 = [v7 averagePowerLevels];
            v53 = v50;
            v54 = v42;
          }

          v48[i] = v52[(v53 / v54)];
        }
      }

      v55 = [[RCWaveformSegment alloc] initWithTimeRange:v18 averagePowerLevelData:v31, v33];
      v57 = v55;
      v23 = [NSArray arrayWithObjects:&v57 count:1];

      goto LABEL_6;
    }
  }

  v56[0] = v7;
  v56[1] = v8;
  v23 = [NSArray arrayWithObjects:v56 count:2];
LABEL_7:

  return v23;
}

+ (id)_segmentByMergingMergableSegments:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    v6 = [0 objectAtIndexedSubscript:0];
    goto LABEL_16;
  }

  if ([v4 count] == &dword_0 + 1)
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
  v17 = [a1 _mergedSegmentByFastMergingWithMergeableSegments:v7 mergedLevelsDuration:v16];
  if (!v17)
  {
    v6 = [a1 _mergedSegmentByResamplingWithMergeableSegments:v7 mergedLevelsDuration:v16];
    goto LABEL_16;
  }

LABEL_17:

  return v17;
}

+ (id)_mergedSegmentByResamplingWithMergeableSegments:(id)a3 mergedLevelsDuration:(double)a4
{
  v5 = a3;
  v43 = [v5 firstObject];
  v42 = [v5 lastObject];
  [v43 timeRange];
  v7 = v6;
  [v42 timeRange];
  v9 = RCTimeRangeMake(v7, v8);
  v11 = v10;
  v12 = (RCTimeRangeDeltaWithExactPrecision(v9, v10) / a4);
  v41 = [NSMutableData dataWithLength:4 * v12];
  v13 = [v41 mutableBytes];
  if (v12)
  {
    v14 = v13;
    v15 = 0;
    for (i = 0; i != v12; ++i)
    {
      [v43 timeRange];
      v18 = v17 + i * a4;
      v19 = v15;
      do
      {
        v15 = v19;
        if (v19 >= [v5 count])
        {
          break;
        }

        v20 = [v5 objectAtIndexedSubscript:v19];
        [v20 timeRange];
        v23 = RCTimeRangeContainsTime(v21, v22, v18);
        ++v19;
      }

      while (!v23);
      if ([v5 count] == v15)
      {
        break;
      }

      v24 = [v5 objectAtIndexedSubscript:v15];
      [v24 timeRange];
      v27 = RCTimeRangeDeltaWithExactPrecision(v25, v26);
      v28 = [v24 averagePowerLevelsCount];
      [v24 timeRange];
      v30 = v29;
      v31 = [v24 averagePowerLevelsCount];
      v32 = (v18 - v30) / (v27 / v28);
      if (v31 - 1 >= v32)
      {
        v33 = v32;
      }

      else
      {
        v33 = v31 - 1;
      }

      v34 = [v5 objectAtIndexedSubscript:v15];
      v35 = v33 + 1;
      if ((v33 + 1) >= [v24 averagePowerLevelsCount] - 1)
      {
        if (v15 + 1 >= [v5 count])
        {
          v35 = v33;
        }

        else
        {
          v36 = [v5 objectAtIndexedSubscript:?];

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