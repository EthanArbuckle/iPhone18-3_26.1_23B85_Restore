@interface AXMTVelocityBasedPointMapper
- (AXMTVelocityBasedPointMapper)initWithBounds:(CGRect)bounds sensitivity:(double)sensitivity;
- (AXMTVelocityBasedPointMapperDelegate)delegate;
- (CGPoint)_normalizedPointForLocalCoordinate:(CGPoint)coordinate inBounds:(CGRect)bounds;
- (CGPoint)processPoint:(CGPoint)point;
- (CGRect)bounds;
- (double)_computeDistanceForTimeDifference:(double)difference currentAngle:(double)angle lastAngle:(double)lastAngle sensitivityFactor:(double)factor;
- (double)_computeDistanceForTimeDifference:(double)difference currentNormalizedPoint:(double)point lastNormalizedPoint:(double)normalizedPoint sensitivityFactor:(double)factor;
- (double)_dampenMovementForNormalizedValue:(double)result normalizedLastValue:(double)value startingCutoff:(double)cutoff factorNumerator:(double)numerator;
- (id)_movingWindowAverageForNewDelta:(double)delta;
- (void)dealloc;
- (void)reset;
- (void)resetToPoint:(CGPoint)point;
@end

@implementation AXMTVelocityBasedPointMapper

- (AXMTVelocityBasedPointMapper)initWithBounds:(CGRect)bounds sensitivity:(double)sensitivity
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
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
    v9->_sensitivity = sensitivity;
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

- (void)resetToPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
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

- (CGPoint)processPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  [(AXMTVelocityBasedPointMapper *)self bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = +[NSDate date];
  _lastProcessedPoint = [(AXMTVelocityBasedPointMapper *)self _lastProcessedPoint];

  if (_lastProcessedPoint)
  {
    _lastProcessedPoint2 = [(AXMTVelocityBasedPointMapper *)self _lastProcessedPoint];
    [_lastProcessedPoint2 pointValue];
    v18 = v17;
    v20 = v19;

    [(AXMTVelocityBasedPointMapper *)self _normalizedPointForLocalCoordinate:v18 inBounds:v20, v7, v9, v11, v13];
    v21 = v9;
    v23 = v22;
    v73 = v24;
    _lastReportedTimestamp = [(AXMTVelocityBasedPointMapper *)self _lastReportedTimestamp];
    _lastReportedPointFromProcessing = [(AXMTVelocityBasedPointMapper *)self _lastReportedPointFromProcessing];
    [_lastReportedPointFromProcessing pointValue];
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
    [v14 timeIntervalSinceDate:_lastReportedTimestamp];
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
    _lastVelocitySize = [(AXMTVelocityBasedPointMapper *)self _lastVelocitySize];

    if (_lastVelocitySize)
    {
      _lastVelocitySize2 = [(AXMTVelocityBasedPointMapper *)self _lastVelocitySize];
      [_lastVelocitySize2 sizeValue];
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
    _lastReportedTimestamp = [NSValue valueWithPoint:v11 * 0.5, v13 * 0.5];
    _nextInitialPoint = [(AXMTVelocityBasedPointMapper *)self _nextInitialPoint];

    if (_nextInitialPoint)
    {
      _nextInitialPoint2 = [(AXMTVelocityBasedPointMapper *)self _nextInitialPoint];

      [(AXMTVelocityBasedPointMapper *)self set_nextInitialPoint:0];
      _lastReportedTimestamp = _nextInitialPoint2;
    }

    v58 = NSZeroPoint.x;
    v60 = NSZeroPoint.y;
    [(AXMTVelocityBasedPointMapper *)self set_lastReportedPointFromProcessing:_lastReportedTimestamp];
  }

  *v79 = x;
  *&v79[1] = y;
  v64 = [NSValue valueWithBytes:v79 objCType:"{CGPoint=dd}"];
  [(AXMTVelocityBasedPointMapper *)self set_lastProcessedPoint:v64];

  [(AXMTVelocityBasedPointMapper *)self set_lastReportedTimestamp:v14];
  _lastReportedPointFromProcessing2 = [(AXMTVelocityBasedPointMapper *)self _lastReportedPointFromProcessing];
  [(AXMTVelocityBasedPointMapper *)self setLastReportedPoint:_lastReportedPointFromProcessing2];

  delegate = [(AXMTVelocityBasedPointMapper *)self delegate];
  lastReportedPoint = [(AXMTVelocityBasedPointMapper *)self lastReportedPoint];
  [lastReportedPoint pointValue];
  [delegate velocityBasedPointMapper:self updatedPoint:?];

  v68 = v58;
  v69 = v60;
  result.y = v69;
  result.x = v68;
  return result;
}

- (id)_movingWindowAverageForNewDelta:(double)delta
{
  _deltaTimesWindow = [(AXMTVelocityBasedPointMapper *)self _deltaTimesWindow];
  v6 = [_deltaTimesWindow count];

  _deltaTimesWindow2 = [(AXMTVelocityBasedPointMapper *)self _deltaTimesWindow];
  v8 = _deltaTimesWindow2;
  if (v6 == 30)
  {
    [_deltaTimesWindow2 removeObjectAtIndex:0];

    _deltaTimesWindow3 = [(AXMTVelocityBasedPointMapper *)self _deltaTimesWindow];
    v10 = [NSNumber numberWithDouble:delta];
    [_deltaTimesWindow3 addObject:v10];

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    _deltaTimesWindow4 = [(AXMTVelocityBasedPointMapper *)self _deltaTimesWindow];
    v12 = [_deltaTimesWindow4 countByEnumeratingWithState:&v22 objects:v26 count:16];
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
            objc_enumerationMutation(_deltaTimesWindow4);
          }

          [*(*(&v22 + 1) + 8 * i) doubleValue];
          v15 = v15 + v17;
        }

        v13 = [_deltaTimesWindow4 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v13);
    }

    else
    {
      v15 = 0.0;
    }

    _deltaTimesWindow5 = [(AXMTVelocityBasedPointMapper *)self _deltaTimesWindow];
    v19 = +[NSNumber numberWithDouble:](NSNumber, "numberWithDouble:", v15 / [_deltaTimesWindow5 count]);
  }

  else
  {
    v18 = [NSNumber numberWithDouble:delta];
    [v8 addObject:v18];

    v19 = 0;
  }

  return v19;
}

- (CGPoint)_normalizedPointForLocalCoordinate:(CGPoint)coordinate inBounds:(CGRect)bounds
{
  v4 = coordinate.x / bounds.size.width;
  v5 = coordinate.y / bounds.size.height;
  result.y = v5;
  result.x = v4;
  return result;
}

- (double)_computeDistanceForTimeDifference:(double)difference currentAngle:(double)angle lastAngle:(double)lastAngle sensitivityFactor:(double)factor
{
  v6 = (angle - lastAngle) / (difference * 1000.0) * factor;
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

- (double)_computeDistanceForTimeDifference:(double)difference currentNormalizedPoint:(double)point lastNormalizedPoint:(double)normalizedPoint sensitivityFactor:(double)factor
{
  v6 = (point - normalizedPoint) / (difference * 1000.0) * factor;
  v7 = v6 * v6;
  v8 = v6 * v6 > 0.0 && v6 < 0.0;
  result = -(v6 * v6);
  if (!v8)
  {
    return v7;
  }

  return result;
}

- (double)_dampenMovementForNormalizedValue:(double)result normalizedLastValue:(double)value startingCutoff:(double)cutoff factorNumerator:(double)numerator
{
  v6 = fabs(value);
  if (fabs(result) > cutoff && v6 > cutoff)
  {
    return value + numerator / (result * result) * (result - value);
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