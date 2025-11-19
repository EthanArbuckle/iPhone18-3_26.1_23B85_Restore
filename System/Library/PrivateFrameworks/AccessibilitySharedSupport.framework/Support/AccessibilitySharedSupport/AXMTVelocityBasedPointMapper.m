@interface AXMTVelocityBasedPointMapper
- (AXMTVelocityBasedPointMapper)initWithBounds:(CGRect)a3 sensitivity:(double)a4;
- (AXMTVelocityBasedPointMapperDelegate)delegate;
- (CGPoint)_normalizedPointForLocalCoordinate:(CGPoint)a3 inBounds:(CGRect)a4;
- (CGPoint)processPoint:(CGPoint)a3;
- (CGRect)bounds;
- (double)_computeDistanceForTimeDifference:(double)a3 currentAngle:(double)a4 lastAngle:(double)a5 sensitivityFactor:(double)a6;
- (double)_computeDistanceForTimeDifference:(double)a3 currentNormalizedPoint:(double)a4 lastNormalizedPoint:(double)a5 sensitivityFactor:(double)a6;
- (double)_dampenMovementForNormalizedValue:(double)result normalizedLastValue:(double)a4 startingCutoff:(double)a5 factorNumerator:(double)a6;
- (id)_movingWindowAverageForNewDelta:(double)a3;
- (void)dealloc;
- (void)reset;
- (void)resetToPoint:(CGPoint)a3;
@end

@implementation AXMTVelocityBasedPointMapper

- (AXMTVelocityBasedPointMapper)initWithBounds:(CGRect)a3 sensitivity:(double)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v14.receiver = self;
  v14.super_class = AXMTVelocityBasedPointMapper;
  v9 = [(AXMTVelocityBasedPointMapper *)&v14 init];
  v10 = v9;
  if (v9)
  {
    v9->_bounds.origin.x = x;
    v9->_bounds.origin.y = y;
    v9->_bounds.size.width = width;
    v9->_bounds.size.height = height;
    v9->_sensitivity = a4;
    v11 = +[NSMutableArray array];
    deltaTimesWindow = v10->__deltaTimesWindow;
    v10->__deltaTimesWindow = v11;
  }

  return v10;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = AXMTVelocityBasedPointMapper;
  [(AXMTVelocityBasedPointMapper *)&v2 dealloc];
}

- (void)resetToPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  [(AXMTVelocityBasedPointMapper *)self reset];
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_10001E5F8(x, y);
  }

  *v7 = x;
  *&v7[1] = y;
  v6 = [NSValue valueWithBytes:v7 objCType:"{CGPoint=dd}"];
  [(AXMTVelocityBasedPointMapper *)self set_nextInitialPoint:v6];
}

- (void)reset
{
  [(AXMTVelocityBasedPointMapper *)self setLastReportedPoint:0];
  [(AXMTVelocityBasedPointMapper *)self set_lastProcessedPoint:0];
  [(AXMTVelocityBasedPointMapper *)self set_lastReportedYaw:0];
  [(AXMTVelocityBasedPointMapper *)self set_lastReportedPitch:0];
  [(AXMTVelocityBasedPointMapper *)self set_lastReportedTimestamp:0];
  [(AXMTVelocityBasedPointMapper *)self set_lastVelocitySize:0];
  [(AXMTVelocityBasedPointMapper *)self set_lastReportedPointFromProcessing:0];

  [(AXMTVelocityBasedPointMapper *)self set_nextInitialPoint:0];
}

- (CGPoint)processPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  [(AXMTVelocityBasedPointMapper *)self bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = +[NSDate date];
  v15 = [(AXMTVelocityBasedPointMapper *)self _lastProcessedPoint];

  if (v15)
  {
    v16 = [(AXMTVelocityBasedPointMapper *)self _lastProcessedPoint];
    [v16 pointValue];
    v18 = v17;
    v20 = v19;

    [(AXMTVelocityBasedPointMapper *)self _normalizedPointForLocalCoordinate:v18 inBounds:v20, v7, v9, v11, v13];
    v21 = v9;
    v23 = v22;
    v73 = v24;
    v25 = [(AXMTVelocityBasedPointMapper *)self _lastReportedTimestamp];
    v26 = [(AXMTVelocityBasedPointMapper *)self _lastReportedPointFromProcessing];
    [v26 pointValue];
    v70 = v27;
    v72 = v28;

    v77 = x;
    v78 = y;
    v74 = v21;
    v75 = v7;
    v76 = v11;
    [(AXMTVelocityBasedPointMapper *)self _normalizedPointForLocalCoordinate:x inBounds:y, v7, v21, v11, v13];
    v30 = v29;
    v32 = v31;
    [v14 timeIntervalSinceDate:v25];
    v34 = v33;
    v35 = [(AXMTVelocityBasedPointMapper *)self _movingWindowAverageForNewDelta:?];
    if (!v35)
    {
      v35 = [NSNumber numberWithDouble:v34];
    }

    [v35 doubleValue];
    v37 = v36;
    [(AXMTVelocityBasedPointMapper *)self sensitivity];
    v39 = v13 * 2.128 + 93.62 + v38 * (v13 * 6.383 + 2080.85);
    [(AXMTVelocityBasedPointMapper *)self _dampenMovementForNormalizedValue:v30 normalizedLastValue:v23 startingCutoff:2.0 factorNumerator:4.0];
    v41 = v40;
    [(AXMTVelocityBasedPointMapper *)self _dampenMovementForNormalizedValue:v32 normalizedLastValue:v73 startingCutoff:1.5 factorNumerator:1.0];
    v43 = v42;
    [(AXMTVelocityBasedPointMapper *)self _computeDistanceForTimeDifference:v37 currentNormalizedPoint:v41 lastNormalizedPoint:v23 sensitivityFactor:v39 * 0.525];
    v45 = v44;
    v46 = v71 + v44;
    [(AXMTVelocityBasedPointMapper *)self _computeDistanceForTimeDifference:v37 currentNormalizedPoint:v43 lastNormalizedPoint:v73 sensitivityFactor:v39];
    v48 = v72 + v47;
    v49 = v45 / v37;
    v50 = v47 / v37;
    v51 = [(AXMTVelocityBasedPointMapper *)self _lastVelocitySize];

    if (v51)
    {
      v52 = [(AXMTVelocityBasedPointMapper *)self _lastVelocitySize];
      [v52 sizeValue];
      v54 = v53;
      v56 = v55;

      v49 = v49 + v54 * 0.0;
      v50 = v50 + v56 * 0.0;
    }

    v57 = [NSValue valueWithSize:v49, v50];
    [(AXMTVelocityBasedPointMapper *)self set_lastVelocitySize:v57];

    v58 = AXMTConstrainPointWithinBounds(v46, v48, v75, v74, v76);
    v60 = v59;
    v61 = [NSValue valueWithPoint:?];
    [(AXMTVelocityBasedPointMapper *)self set_lastReportedPointFromProcessing:v61];

    x = v77;
    y = v78;
  }

  else
  {
    v25 = [NSValue valueWithPoint:v11 * 0.5, v13 * 0.5];
    v62 = [(AXMTVelocityBasedPointMapper *)self _nextInitialPoint];

    if (v62)
    {
      v63 = [(AXMTVelocityBasedPointMapper *)self _nextInitialPoint];

      [(AXMTVelocityBasedPointMapper *)self set_nextInitialPoint:0];
      v25 = v63;
    }

    v58 = NSZeroPoint.x;
    v60 = NSZeroPoint.y;
    [(AXMTVelocityBasedPointMapper *)self set_lastReportedPointFromProcessing:v25];
  }

  *v79 = x;
  *&v79[1] = y;
  v64 = [NSValue valueWithBytes:v79 objCType:"{CGPoint=dd}"];
  [(AXMTVelocityBasedPointMapper *)self set_lastProcessedPoint:v64];

  [(AXMTVelocityBasedPointMapper *)self set_lastReportedTimestamp:v14];
  v65 = [(AXMTVelocityBasedPointMapper *)self _lastReportedPointFromProcessing];
  [(AXMTVelocityBasedPointMapper *)self setLastReportedPoint:v65];

  v66 = [(AXMTVelocityBasedPointMapper *)self delegate];
  v67 = [(AXMTVelocityBasedPointMapper *)self lastReportedPoint];
  [v67 pointValue];
  [v66 velocityBasedPointMapper:self updatedPoint:?];

  v68 = v58;
  v69 = v60;
  result.y = v69;
  result.x = v68;
  return result;
}

- (id)_movingWindowAverageForNewDelta:(double)a3
{
  v5 = [(AXMTVelocityBasedPointMapper *)self _deltaTimesWindow];
  v6 = [v5 count];

  v7 = [(AXMTVelocityBasedPointMapper *)self _deltaTimesWindow];
  v8 = v7;
  if (v6 == 30)
  {
    [v7 removeObjectAtIndex:0];

    v9 = [(AXMTVelocityBasedPointMapper *)self _deltaTimesWindow];
    v10 = [NSNumber numberWithDouble:a3];
    [v9 addObject:v10];

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v11 = [(AXMTVelocityBasedPointMapper *)self _deltaTimesWindow];
    v12 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v23;
      v15 = 0.0;
      do
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v23 != v14)
          {
            objc_enumerationMutation(v11);
          }

          [*(*(&v22 + 1) + 8 * i) doubleValue];
          v15 = v15 + v17;
        }

        v13 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v13);
    }

    else
    {
      v15 = 0.0;
    }

    v20 = [(AXMTVelocityBasedPointMapper *)self _deltaTimesWindow];
    v19 = +[NSNumber numberWithDouble:](NSNumber, "numberWithDouble:", v15 / [v20 count]);
  }

  else
  {
    v18 = [NSNumber numberWithDouble:a3];
    [v8 addObject:v18];

    v19 = 0;
  }

  return v19;
}

- (CGPoint)_normalizedPointForLocalCoordinate:(CGPoint)a3 inBounds:(CGRect)a4
{
  v4 = a3.x / a4.size.width;
  v5 = a3.y / a4.size.height;
  result.y = v5;
  result.x = v4;
  return result;
}

- (double)_computeDistanceForTimeDifference:(double)a3 currentAngle:(double)a4 lastAngle:(double)a5 sensitivityFactor:(double)a6
{
  v6 = (a4 - a5) / (a3 * 1000.0) * a6;
  v7 = fabs(v6);
  result = pow(v7, 1.7);
  if (v7 < 1.0)
  {
    result = v7;
  }

  if (result > 0.0 && v6 < 0.0)
  {
    return -result;
  }

  return result;
}

- (double)_computeDistanceForTimeDifference:(double)a3 currentNormalizedPoint:(double)a4 lastNormalizedPoint:(double)a5 sensitivityFactor:(double)a6
{
  v6 = (a4 - a5) / (a3 * 1000.0) * a6;
  v7 = v6 * v6;
  v8 = v6 * v6 > 0.0 && v6 < 0.0;
  result = -(v6 * v6);
  if (!v8)
  {
    return v7;
  }

  return result;
}

- (double)_dampenMovementForNormalizedValue:(double)result normalizedLastValue:(double)a4 startingCutoff:(double)a5 factorNumerator:(double)a6
{
  v6 = fabs(a4);
  if (fabs(result) > a5 && v6 > a5)
  {
    return a4 + a6 / (result * result) * (result - a4);
  }

  return result;
}

- (CGRect)bounds
{
  x = self->_bounds.origin.x;
  y = self->_bounds.origin.y;
  width = self->_bounds.size.width;
  height = self->_bounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (AXMTVelocityBasedPointMapperDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end