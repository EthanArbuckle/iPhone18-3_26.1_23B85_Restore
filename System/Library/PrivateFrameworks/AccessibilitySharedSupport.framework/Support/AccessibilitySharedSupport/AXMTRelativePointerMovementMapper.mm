@interface AXMTRelativePointerMovementMapper
- (AXMTRelativePointerMovementMapper)initWithScreenBounds:(CGRect)bounds;
- (double)accelerationFactor;
- (id)_processPointInNormalizedTrackingSpace:(CGPoint)space withTimestamp:(double)timestamp;
- (id)processPointInNormalizedTrackingSpace:(CGPoint)space;
- (void)_updateAccelerationCurve;
- (void)reset;
- (void)setAccelerationFactor:(double)factor;
- (void)setNormalizedMovementThreshold:(double)threshold;
- (void)setScreenBounds:(CGRect)bounds;
@end

@implementation AXMTRelativePointerMovementMapper

- (AXMTRelativePointerMovementMapper)initWithScreenBounds:(CGRect)bounds
{
  v6.receiver = self;
  v6.super_class = AXMTRelativePointerMovementMapper;
  v3 = [(AXMTPointerMovementMapper *)&v6 initWithScreenBounds:bounds.origin.x, bounds.origin.y, bounds.size.width, bounds.size.height];
  v4 = v3;
  if (v3)
  {
    [(AXMTRelativePointerMovementMapper *)v3 _updateAccelerationCurve];
  }

  return v4;
}

- (void)setAccelerationFactor:(double)factor
{
  _accelerationCurve = [(AXMTRelativePointerMovementMapper *)self _accelerationCurve];
  [_accelerationCurve setAccelerationFactor:factor];
}

- (double)accelerationFactor
{
  _accelerationCurve = [(AXMTRelativePointerMovementMapper *)self _accelerationCurve];
  [_accelerationCurve accelerationFactor];
  v4 = v3;

  return v4;
}

- (void)reset
{
  v3.receiver = self;
  v3.super_class = AXMTRelativePointerMovementMapper;
  [(AXMTPointerMovementMapper *)&v3 reset];
  [(AXMTRelativePointerMovementMapper *)self set_lastTrackingPointTimestamp:-1.0];
}

- (id)processPointInNormalizedTrackingSpace:(CGPoint)space
{
  y = space.y;
  x = space.x;
  Current = CFAbsoluteTimeGetCurrent();

  return [(AXMTRelativePointerMovementMapper *)self _processPointInNormalizedTrackingSpace:x withTimestamp:y, Current];
}

- (void)setNormalizedMovementThreshold:(double)threshold
{
  self->_normalizedMovementThreshold = threshold;
  [(AXMTRelativePointerMovementMapper *)self set_trueMovementThresholdX:threshold * 0.4 + 0.05];

  [(AXMTRelativePointerMovementMapper *)self set_trueMovementThresholdY:threshold * 0.26 + 0.01];
}

- (void)setScreenBounds:(CGRect)bounds
{
  v4.receiver = self;
  v4.super_class = AXMTRelativePointerMovementMapper;
  [(AXMTPointerMovementMapper *)&v4 setScreenBounds:bounds.origin.x, bounds.origin.y, bounds.size.width, bounds.size.height];
  [(AXMTRelativePointerMovementMapper *)self _updateAccelerationCurve];
}

- (void)_updateAccelerationCurve
{
  [(AXMTPointerMovementMapper *)self screenBounds];
  v4 = v3;
  [(AXMTPointerMovementMapper *)self screenBounds];
  v6 = v5;
  [(AXMTPointerMovementMapper *)self screenBounds];
  v8 = v7;
  [(AXMTPointerMovementMapper *)self screenBounds];
  v10 = sqrt(v8 * v9 + v4 * v6) * 0.5 * 0.02;
  _accelerationCurve = [(AXMTRelativePointerMovementMapper *)self _accelerationCurve];

  if (_accelerationCurve)
  {
    _accelerationCurve2 = [(AXMTRelativePointerMovementMapper *)self _accelerationCurve];
    [(AXMTAccelerationCurve *)_accelerationCurve2 setInflectionPoint:v10];
  }

  else
  {
    _accelerationCurve2 = [[AXMTAccelerationCurve alloc] initWithAccelerationFactor:1.5 inflectionPoint:v10];
    [(AXMTRelativePointerMovementMapper *)self set_accelerationCurve:?];
  }
}

- (id)_processPointInNormalizedTrackingSpace:(CGPoint)space withTimestamp:(double)timestamp
{
  y = space.y;
  x = space.x;
  [(AXMTRelativePointerMovementMapper *)self _lastTrackingPointTimestamp];
  if (v8 >= 0.0)
  {
    [(AXMTRelativePointerMovementMapper *)self _trueMovementThresholdX];
    v13 = fmax(fabs(x * 1.5) - v12, 0.0);
    [(AXMTRelativePointerMovementMapper *)self _trueMovementThresholdX];
    v15 = v13 / (1.0 - v14);
    if (x >= 0.0)
    {
      v16 = v15;
    }

    else
    {
      v16 = -v15;
    }

    [(AXMTRelativePointerMovementMapper *)self _trueMovementThresholdY];
    v18 = v17;
    [(AXMTRelativePointerMovementMapper *)self _trueMovementThresholdY];
    v20 = 4.7;
    if (y < 0.0)
    {
      v20 = 2.5;
    }

    v21 = fmax(fabs(y * v20) - v18, 0.0) / (1.0 - v19);
    if (y >= 0.0)
    {
      v22 = v21;
    }

    else
    {
      v22 = -v21;
    }

    [(AXMTPointerMovementMapper *)self screenBounds];
    v24 = v16 * v23;
    [(AXMTPointerMovementMapper *)self screenBounds];
    v26 = v22 * v25;
    _accelerationCurve = [(AXMTRelativePointerMovementMapper *)self _accelerationCurve];
    [_accelerationCurve mapVector:{v24, v26}];
    v29 = v28;
    v31 = v30;

    [(AXMTRelativePointerMovementMapper *)self _lastTrackingPointTimestamp];
    v33 = timestamp - v32;
    [(AXMTRelativePointerMovementMapper *)self set_lastTrackingPointTimestamp:timestamp];
    v9 = [AXMTPointerMovement alloc];
    v10 = -(v29 * v33);
    v11 = v31 * v33;
  }

  else
  {
    [(AXMTRelativePointerMovementMapper *)self set_lastTrackingPointTimestamp:timestamp];
    v9 = [AXMTPointerMovement alloc];
    v10 = NSZeroPoint.x;
    v11 = NSZeroPoint.y;
  }

  v34 = [(AXMTPointerMovement *)v9 initWithMovementDelta:v10, v11];

  return v34;
}

@end