@interface AXMTTrackingAreaPointMapper
+ (CGRect)trackingAreaForFaceBounds:(CGRect)bounds noseCenter:(CGPoint)center;
- (AXMTTrackingAreaPointMapper)initWithTrackingAreaBounds:(CGRect)bounds lockTrackingAreaPosition:(BOOL)position;
- (AXMTTrackingAreaPointMapper)initWithTrackingAreaBounds:(CGRect)bounds lockTrackingAreaPosition:(BOOL)position center:(CGPoint)center;
- (BOOL)updateTrackedPoint:(CGPoint)point;
- (CGPoint)normalizedTrackedPoint;
- (CGPoint)trackingAreaCenter;
- (CGRect)trackingAreaBounds;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)resetTrackingAreaBounds:(CGRect)bounds lockTrackingAreaPosition:(BOOL)position;
@end

@implementation AXMTTrackingAreaPointMapper

- (AXMTTrackingAreaPointMapper)initWithTrackingAreaBounds:(CGRect)bounds lockTrackingAreaPosition:(BOOL)position
{
  positionCopy = position;
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v12.receiver = self;
  v12.super_class = AXMTTrackingAreaPointMapper;
  v9 = [(AXMTTrackingAreaPointMapper *)&v12 init];
  if (v9)
  {
    v10 = NSStringFromSelector("trackingAreaBounds");
    [(AXMTTrackingAreaPointMapper *)v9 addObserver:v9 forKeyPath:v10 options:1 context:off_1000540D0];

    [(AXMTTrackingAreaPointMapper *)v9 resetTrackingAreaBounds:positionCopy lockTrackingAreaPosition:x, y, width, height];
    v9->__useCustomCenter = 0;
  }

  return v9;
}

- (AXMTTrackingAreaPointMapper)initWithTrackingAreaBounds:(CGRect)bounds lockTrackingAreaPosition:(BOOL)position center:(CGPoint)center
{
  y = center.y;
  x = center.x;
  result = [(AXMTTrackingAreaPointMapper *)self initWithTrackingAreaBounds:position lockTrackingAreaPosition:bounds.origin.x, bounds.origin.y, bounds.size.width, bounds.size.height];
  if (result)
  {
    result->_trackingAreaCenter.x = x;
    result->_trackingAreaCenter.y = y;
    result->__useCustomCenter = 1;
  }

  return result;
}

- (void)dealloc
{
  v3 = NSStringFromSelector("trackingAreaBounds");
  [(AXMTTrackingAreaPointMapper *)self removeObserver:self forKeyPath:v3 context:off_1000540D0];

  v4.receiver = self;
  v4.super_class = AXMTTrackingAreaPointMapper;
  [(AXMTTrackingAreaPointMapper *)&v4 dealloc];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if (off_1000540D0 == context)
  {
    v7 = [change objectForKeyedSubscript:{NSKeyValueChangeNewKey, object}];
    [v7 rectValue];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;

    [(AXMTTrackingAreaPointMapper *)self set_horizontalNormalizationFactor:2.0 / v13];
    [(AXMTTrackingAreaPointMapper *)self set_verticalNormalizationFactor:2.0 / v15];
    if (![(AXMTTrackingAreaPointMapper *)self _useCustomCenter])
    {

      [(AXMTTrackingAreaPointMapper *)self setTrackingAreaCenter:v9 + v13 * 0.5, v11 + v15 * 0.5];
    }
  }

  else
  {
    v16.receiver = self;
    v16.super_class = AXMTTrackingAreaPointMapper;
    [(AXMTTrackingAreaPointMapper *)&v16 observeValueForKeyPath:path ofObject:object change:change context:?];
  }
}

- (void)resetTrackingAreaBounds:(CGRect)bounds lockTrackingAreaPosition:(BOOL)position
{
  positionCopy = position;
  [(AXMTTrackingAreaPointMapper *)self setTrackingAreaBounds:bounds.origin.x, bounds.origin.y, bounds.size.width, bounds.size.height];

  [(AXMTTrackingAreaPointMapper *)self set_trackingAreaPositionLocked:positionCopy];
}

- (BOOL)updateTrackedPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  [(AXMTTrackingAreaPointMapper *)self trackingAreaCenter];
  v7 = x - v6;
  [(AXMTTrackingAreaPointMapper *)self _horizontalNormalizationFactor];
  v9 = v8 * v7;
  [(AXMTTrackingAreaPointMapper *)self trackingAreaCenter];
  v11 = y - v10;
  [(AXMTTrackingAreaPointMapper *)self _verticalNormalizationFactor];
  v13 = v12 * v11;
  if ([(AXMTTrackingAreaPointMapper *)self useAccelerationCurve])
  {
    v9 = v9 * fmin(exp2(fabs(v9)) * 0.5, 1.0);
    v13 = v13 * fmin(pow(7.0, fabs(v13)) * 0.75, 1.0);
  }

  [(AXMTTrackingAreaPointMapper *)self setNormalizedTrackedPoint:v9, v13];
  return 0;
}

+ (CGRect)trackingAreaForFaceBounds:(CGRect)bounds noseCenter:(CGPoint)center
{
  v4 = bounds.origin.x + bounds.size.width * 0.2;
  v5 = bounds.size.width * 0.6;
  v6 = bounds.size.height * 0.5;
  v7 = center.y + v6 * -0.5;
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v7;
  result.origin.x = v4;
  return result;
}

- (CGRect)trackingAreaBounds
{
  x = self->_trackingAreaBounds.origin.x;
  y = self->_trackingAreaBounds.origin.y;
  width = self->_trackingAreaBounds.size.width;
  height = self->_trackingAreaBounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGPoint)normalizedTrackedPoint
{
  objc_copyStruct(v4, &self->_normalizedTrackedPoint, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.y = v3;
  result.x = v2;
  return result;
}

- (CGPoint)trackingAreaCenter
{
  x = self->_trackingAreaCenter.x;
  y = self->_trackingAreaCenter.y;
  result.y = y;
  result.x = x;
  return result;
}

@end