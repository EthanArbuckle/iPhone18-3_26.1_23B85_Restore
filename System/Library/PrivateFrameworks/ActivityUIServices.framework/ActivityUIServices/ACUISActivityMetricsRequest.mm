@interface ACUISActivityMetricsRequest
- (ACUISActivityItemMetricsRequest)ambientMetrics;
- (ACUISActivityItemMetricsRequest)lockScreenMetrics;
- (ACUISActivityMetricsRequest)initWithCoder:(id)coder;
- (ACUISActivityMetricsRequest)initWithLockScreenMetrics:(id)metrics;
- (ACUISSystemApertureMetricsRequest)systemApertureMetrics;
- (BOOL)isEqual:(id)equal;
- (id)_ACUISItemMetricsRequestFromRequest:(id)request;
- (id)_initWithMetricsRequest:(id)request;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)setAmbientMetrics:(id)metrics;
- (void)setLockScreenMetrics:(id)metrics;
- (void)setSystemApertureMetrics:(id)metrics;
@end

@implementation ACUISActivityMetricsRequest

- (id)_initWithMetricsRequest:(id)request
{
  requestCopy = request;
  v9.receiver = self;
  v9.super_class = ACUISActivityMetricsRequest;
  v5 = [(ACUISActivityMetricsRequest *)&v9 init];
  if (v5)
  {
    v6 = [requestCopy copy];
    metricsRequest = v5->_metricsRequest;
    v5->_metricsRequest = v6;
  }

  return v5;
}

- (ACUISActivityMetricsRequest)initWithLockScreenMetrics:(id)metrics
{
  metricsCopy = metrics;
  v11.receiver = self;
  v11.super_class = ACUISActivityMetricsRequest;
  v5 = [(ACUISActivityMetricsRequest *)&v11 init];
  if (v5)
  {
    v6 = [_TtC18ActivityUIServices22ActivityMetricsRequest alloc];
    _activityItemMetricsRequest = [metricsCopy _activityItemMetricsRequest];
    v8 = [(ActivityMetricsRequest *)v6 initWithLockScreenMetrics:_activityItemMetricsRequest systemApertureMetrics:0 ambientMetrics:0];
    metricsRequest = v5->_metricsRequest;
    v5->_metricsRequest = v8;
  }

  return v5;
}

- (void)setAmbientMetrics:(id)metrics
{
  _activityItemMetricsRequest = [metrics _activityItemMetricsRequest];
  [(ActivityMetricsRequest *)self->_metricsRequest setAmbientMetrics:_activityItemMetricsRequest];
}

- (ACUISActivityItemMetricsRequest)ambientMetrics
{
  v3 = [ACUISActivityItemMetricsRequest alloc];
  ambientMetrics = [(ActivityMetricsRequest *)self->_metricsRequest ambientMetrics];
  v5 = [(ACUISActivityItemMetricsRequest *)v3 _initWithItemMetrics:ambientMetrics];

  return v5;
}

- (void)setLockScreenMetrics:(id)metrics
{
  _activityItemMetricsRequest = [metrics _activityItemMetricsRequest];
  [(ActivityMetricsRequest *)self->_metricsRequest setLockScreenMetrics:_activityItemMetricsRequest];
}

- (ACUISActivityItemMetricsRequest)lockScreenMetrics
{
  v3 = [ACUISActivityItemMetricsRequest alloc];
  lockScreenMetrics = [(ActivityMetricsRequest *)self->_metricsRequest lockScreenMetrics];
  v5 = [(ACUISActivityItemMetricsRequest *)v3 _initWithItemMetrics:lockScreenMetrics];

  return v5;
}

- (void)setSystemApertureMetrics:(id)metrics
{
  _systemApertureMetricsRequest = [metrics _systemApertureMetricsRequest];
  [(ActivityMetricsRequest *)self->_metricsRequest setSystemApertureMetrics:_systemApertureMetricsRequest];
}

- (ACUISSystemApertureMetricsRequest)systemApertureMetrics
{
  systemApertureMetrics = [(ActivityMetricsRequest *)self->_metricsRequest systemApertureMetrics];

  if (systemApertureMetrics)
  {
    v4 = [ACUISSystemApertureMetricsRequest alloc];
    systemApertureMetrics2 = [(ActivityMetricsRequest *)self->_metricsRequest systemApertureMetrics];
    v6 = [(ACUISSystemApertureMetricsRequest *)v4 _initWithMetricsRequest:systemApertureMetrics2];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(ActivityMetricsRequest *)self->_metricsRequest isEqual:equalCopy->_metricsRequest];
  }

  return v5;
}

- (id)description
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  v4 = [v3 appendObject:self->_metricsRequest withName:@"metrics"];
  build = [v3 build];

  return build;
}

- (id)_ACUISItemMetricsRequestFromRequest:(id)request
{
  requestCopy = request;
  v4 = [[ACUISActivityItemMetricsRequest alloc] _initWithItemMetrics:requestCopy];

  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [ACUISActivityMetricsRequest alloc];
  v5 = [(ActivityMetricsRequest *)self->_metricsRequest copy];
  v6 = [(ACUISActivityMetricsRequest *)v4 _initWithMetricsRequest:v5];

  return v6;
}

- (ACUISActivityMetricsRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"metrics"];

  v6 = [[ACUISActivityMetricsRequest alloc] _initWithMetricsRequest:v5];
  return v6;
}

@end