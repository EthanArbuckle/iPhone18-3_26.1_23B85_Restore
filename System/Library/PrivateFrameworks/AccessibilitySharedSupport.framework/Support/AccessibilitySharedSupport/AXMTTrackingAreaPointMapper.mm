@interface AXMTTrackingAreaPointMapper
+ (CGRect)trackingAreaForFaceBounds:(CGRect)a3 noseCenter:(CGPoint)a4;
- (AXMTTrackingAreaPointMapper)initWithTrackingAreaBounds:(CGRect)a3 lockTrackingAreaPosition:(BOOL)a4;
- (AXMTTrackingAreaPointMapper)initWithTrackingAreaBounds:(CGRect)a3 lockTrackingAreaPosition:(BOOL)a4 center:(CGPoint)a5;
- (BOOL)updateTrackedPoint:(CGPoint)a3;
- (CGPoint)normalizedTrackedPoint;
- (CGPoint)trackingAreaCenter;
- (CGRect)trackingAreaBounds;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)resetTrackingAreaBounds:(CGRect)a3 lockTrackingAreaPosition:(BOOL)a4;
@end

@implementation AXMTTrackingAreaPointMapper

- (AXMTTrackingAreaPointMapper)initWithTrackingAreaBounds:(CGRect)a3 lockTrackingAreaPosition:(BOOL)a4
{
  v4 = a4;
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v12.receiver = self;
  v12.super_class = AXMTTrackingAreaPointMapper;
  v9 = [(AXMTTrackingAreaPointMapper *)&v12 init];
  if (v9)
  {
    v10 = NSStringFromSelector("trackingAreaBounds");
    [(AXMTTrackingAreaPointMapper *)v9 addObserver:v9 forKeyPath:v10 options:1 context:off_1000540D0];

    [(AXMTTrackingAreaPointMapper *)v9 resetTrackingAreaBounds:v4 lockTrackingAreaPosition:x, y, width, height];
    v9->__useCustomCenter = 0;
  }

  return v9;
}

- (AXMTTrackingAreaPointMapper)initWithTrackingAreaBounds:(CGRect)a3 lockTrackingAreaPosition:(BOOL)a4 center:(CGPoint)a5
{
  y = a5.y;
  x = a5.x;
  result = [(AXMTTrackingAreaPointMapper *)self initWithTrackingAreaBounds:a4 lockTrackingAreaPosition:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  if (off_1000540D0 == a6)
  {
    v7 = [a5 objectForKeyedSubscript:{NSKeyValueChangeNewKey, a4}];
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
    [(AXMTTrackingAreaPointMapper *)&v16 observeValueForKeyPath:a3 ofObject:a4 change:a5 context:?];
  }
}

- (void)resetTrackingAreaBounds:(CGRect)a3 lockTrackingAreaPosition:(BOOL)a4
{
  v4 = a4;
  [(AXMTTrackingAreaPointMapper *)self setTrackingAreaBounds:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];

  [(AXMTTrackingAreaPointMapper *)self set_trackingAreaPositionLocked:v4];
}

- (BOOL)updateTrackedPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
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

+ (CGRect)trackingAreaForFaceBounds:(CGRect)a3 noseCenter:(CGPoint)a4
{
  v4 = a3.origin.x + a3.size.width * 0.2;
  v5 = a3.size.width * 0.6;
  v6 = a3.size.height * 0.5;
  v7 = a4.y + v6 * -0.5;
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