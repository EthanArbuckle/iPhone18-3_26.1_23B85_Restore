@interface ACUISActivityMetricsRequest
- (ACUISActivityItemMetricsRequest)ambientMetrics;
- (ACUISActivityItemMetricsRequest)lockScreenMetrics;
- (ACUISActivityMetricsRequest)initWithCoder:(id)a3;
- (ACUISActivityMetricsRequest)initWithLockScreenMetrics:(id)a3;
- (ACUISSystemApertureMetricsRequest)systemApertureMetrics;
- (BOOL)isEqual:(id)a3;
- (id)_ACUISItemMetricsRequestFromRequest:(id)a3;
- (id)_initWithMetricsRequest:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)setAmbientMetrics:(id)a3;
- (void)setLockScreenMetrics:(id)a3;
- (void)setSystemApertureMetrics:(id)a3;
@end

@implementation ACUISActivityMetricsRequest

- (id)_initWithMetricsRequest:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = ACUISActivityMetricsRequest;
  v5 = [(ACUISActivityMetricsRequest *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    metricsRequest = v5->_metricsRequest;
    v5->_metricsRequest = v6;
  }

  return v5;
}

- (ACUISActivityMetricsRequest)initWithLockScreenMetrics:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = ACUISActivityMetricsRequest;
  v5 = [(ACUISActivityMetricsRequest *)&v11 init];
  if (v5)
  {
    v6 = [_TtC18ActivityUIServices22ActivityMetricsRequest alloc];
    v7 = [v4 _activityItemMetricsRequest];
    v8 = [(ActivityMetricsRequest *)v6 initWithLockScreenMetrics:v7 systemApertureMetrics:0 ambientMetrics:0];
    metricsRequest = v5->_metricsRequest;
    v5->_metricsRequest = v8;
  }

  return v5;
}

- (void)setAmbientMetrics:(id)a3
{
  v4 = [a3 _activityItemMetricsRequest];
  [(ActivityMetricsRequest *)self->_metricsRequest setAmbientMetrics:v4];
}

- (ACUISActivityItemMetricsRequest)ambientMetrics
{
  v3 = [ACUISActivityItemMetricsRequest alloc];
  v4 = [(ActivityMetricsRequest *)self->_metricsRequest ambientMetrics];
  v5 = [(ACUISActivityItemMetricsRequest *)v3 _initWithItemMetrics:v4];

  return v5;
}

- (void)setLockScreenMetrics:(id)a3
{
  v4 = [a3 _activityItemMetricsRequest];
  [(ActivityMetricsRequest *)self->_metricsRequest setLockScreenMetrics:v4];
}

- (ACUISActivityItemMetricsRequest)lockScreenMetrics
{
  v3 = [ACUISActivityItemMetricsRequest alloc];
  v4 = [(ActivityMetricsRequest *)self->_metricsRequest lockScreenMetrics];
  v5 = [(ACUISActivityItemMetricsRequest *)v3 _initWithItemMetrics:v4];

  return v5;
}

- (void)setSystemApertureMetrics:(id)a3
{
  v4 = [a3 _systemApertureMetricsRequest];
  [(ActivityMetricsRequest *)self->_metricsRequest setSystemApertureMetrics:v4];
}

- (ACUISSystemApertureMetricsRequest)systemApertureMetrics
{
  v3 = [(ActivityMetricsRequest *)self->_metricsRequest systemApertureMetrics];

  if (v3)
  {
    v4 = [ACUISSystemApertureMetricsRequest alloc];
    v5 = [(ActivityMetricsRequest *)self->_metricsRequest systemApertureMetrics];
    v6 = [(ACUISSystemApertureMetricsRequest *)v4 _initWithMetricsRequest:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(ActivityMetricsRequest *)self->_metricsRequest isEqual:v4->_metricsRequest];
  }

  return v5;
}

- (id)description
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  v4 = [v3 appendObject:self->_metricsRequest withName:@"metrics"];
  v5 = [v3 build];

  return v5;
}

- (id)_ACUISItemMetricsRequestFromRequest:(id)a3
{
  v3 = a3;
  v4 = [[ACUISActivityItemMetricsRequest alloc] _initWithItemMetrics:v3];

  return v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [ACUISActivityMetricsRequest alloc];
  v5 = [(ActivityMetricsRequest *)self->_metricsRequest copy];
  v6 = [(ACUISActivityMetricsRequest *)v4 _initWithMetricsRequest:v5];

  return v6;
}

- (ACUISActivityMetricsRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"metrics"];

  v6 = [[ACUISActivityMetricsRequest alloc] _initWithMetricsRequest:v5];
  return v6;
}

@end