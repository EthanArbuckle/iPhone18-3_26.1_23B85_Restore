@interface ACUISSystemApertureMetricsRequest
- (ACUISActivityItemMetricsRequest)compactLeadingMetricsRequest;
- (ACUISActivityItemMetricsRequest)compactMetricsRequest;
- (ACUISActivityItemMetricsRequest)compactTrailingMetricsRequest;
- (ACUISActivityItemMetricsRequest)expandedMetricsRequest;
- (ACUISActivityItemMetricsRequest)minimalMetricsRequest;
- (ACUISSystemApertureMetricsRequest)initWithCoder:(id)coder;
- (ACUISSystemApertureMetricsRequest)initWithObstructionSize:(CGSize)size expandedMetricsRequest:(id)request compactLeadingMetricsRequest:(id)metricsRequest compactTrailingMetricsRequest:(id)trailingMetricsRequest minimalMetricsRequest:(id)minimalMetricsRequest;
- (ACUISSystemApertureMetricsRequest)initWithObstructionSize:(CGSize)size expandedMetricsRequest:(id)request compactMetricsRequest:(id)metricsRequest minimalMetricsRequest:(id)minimalMetricsRequest;
- (ACUISSystemApertureMetricsRequest)initWithObstructionSize:(CGSize)size obstructionTopMargin:(double)margin expandedMetricsRequest:(id)request compactLeadingMetricsRequest:(id)metricsRequest compactTrailingMetricsRequest:(id)trailingMetricsRequest minimalMetricsRequest:(id)minimalMetricsRequest;
- (BOOL)isEqual:(id)equal;
- (CGSize)obstructionSize;
- (id)_initWithMetricsRequest:(id)request;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)setCompactLeadingMetricsRequest:(id)request;
- (void)setCompactMetricsRequest:(id)request;
- (void)setCompactTrailingMetricsRequest:(id)request;
- (void)setExpandedMetricsRequest:(id)request;
- (void)setMinimalMetricsRequest:(id)request;
@end

@implementation ACUISSystemApertureMetricsRequest

- (ACUISSystemApertureMetricsRequest)initWithObstructionSize:(CGSize)size obstructionTopMargin:(double)margin expandedMetricsRequest:(id)request compactLeadingMetricsRequest:(id)metricsRequest compactTrailingMetricsRequest:(id)trailingMetricsRequest minimalMetricsRequest:(id)minimalMetricsRequest
{
  height = size.height;
  width = size.width;
  requestCopy = request;
  metricsRequestCopy = metricsRequest;
  trailingMetricsRequestCopy = trailingMetricsRequest;
  minimalMetricsRequestCopy = minimalMetricsRequest;
  v28.receiver = self;
  v28.super_class = ACUISSystemApertureMetricsRequest;
  v19 = [(ACUISSystemApertureMetricsRequest *)&v28 init];
  if (v19)
  {
    v20 = [_TtC18ActivityUIServices28SystemApertureMetricsRequest alloc];
    _activityItemMetricsRequest = [requestCopy _activityItemMetricsRequest];
    _activityItemMetricsRequest2 = [metricsRequestCopy _activityItemMetricsRequest];
    _activityItemMetricsRequest3 = [trailingMetricsRequestCopy _activityItemMetricsRequest];
    _activityItemMetricsRequest4 = [minimalMetricsRequestCopy _activityItemMetricsRequest];
    margin = [(SystemApertureMetricsRequest *)v20 initWithObstructionSize:_activityItemMetricsRequest obstructionTopMargin:_activityItemMetricsRequest2 expandedMetricsRequest:_activityItemMetricsRequest3 compactLeadingMetricsRequest:_activityItemMetricsRequest4 compactTrailingMetricsRequest:width minimalMetricsRequest:height, margin];
    metricsRequest = v19->_metricsRequest;
    v19->_metricsRequest = margin;
  }

  return v19;
}

- (ACUISSystemApertureMetricsRequest)initWithObstructionSize:(CGSize)size expandedMetricsRequest:(id)request compactLeadingMetricsRequest:(id)metricsRequest compactTrailingMetricsRequest:(id)trailingMetricsRequest minimalMetricsRequest:(id)minimalMetricsRequest
{
  height = size.height;
  width = size.width;
  requestCopy = request;
  metricsRequestCopy = metricsRequest;
  trailingMetricsRequestCopy = trailingMetricsRequest;
  minimalMetricsRequestCopy = minimalMetricsRequest;
  v26.receiver = self;
  v26.super_class = ACUISSystemApertureMetricsRequest;
  v17 = [(ACUISSystemApertureMetricsRequest *)&v26 init];
  if (v17)
  {
    v18 = [_TtC18ActivityUIServices28SystemApertureMetricsRequest alloc];
    _activityItemMetricsRequest = [requestCopy _activityItemMetricsRequest];
    _activityItemMetricsRequest2 = [metricsRequestCopy _activityItemMetricsRequest];
    _activityItemMetricsRequest3 = [trailingMetricsRequestCopy _activityItemMetricsRequest];
    _activityItemMetricsRequest4 = [minimalMetricsRequestCopy _activityItemMetricsRequest];
    v23 = [(SystemApertureMetricsRequest *)v18 initWithObstructionSize:_activityItemMetricsRequest obstructionTopMargin:_activityItemMetricsRequest2 expandedMetricsRequest:_activityItemMetricsRequest3 compactLeadingMetricsRequest:_activityItemMetricsRequest4 compactTrailingMetricsRequest:width minimalMetricsRequest:height, 0.0];
    metricsRequest = v17->_metricsRequest;
    v17->_metricsRequest = v23;
  }

  return v17;
}

- (ACUISSystemApertureMetricsRequest)initWithObstructionSize:(CGSize)size expandedMetricsRequest:(id)request compactMetricsRequest:(id)metricsRequest minimalMetricsRequest:(id)minimalMetricsRequest
{
  height = size.height;
  width = size.width;
  minimalMetricsRequestCopy = minimalMetricsRequest;
  metricsRequestCopy = metricsRequest;
  requestCopy = request;
  v14 = [metricsRequestCopy copy];
  edgeInsets = [v14 edgeInsets];
  [edgeInsets setTrailing:0.0];
  [v14 setEdgeInsets:edgeInsets];
  v16 = [metricsRequestCopy copy];

  edgeInsets2 = [v16 edgeInsets];
  [edgeInsets2 setLeading:0.0];
  [v16 setEdgeInsets:edgeInsets2];
  height = [(ACUISSystemApertureMetricsRequest *)self initWithObstructionSize:requestCopy expandedMetricsRequest:v14 compactLeadingMetricsRequest:v16 compactTrailingMetricsRequest:minimalMetricsRequestCopy minimalMetricsRequest:width, height];

  return height;
}

- (id)_initWithMetricsRequest:(id)request
{
  requestCopy = request;
  v9.receiver = self;
  v9.super_class = ACUISSystemApertureMetricsRequest;
  v6 = [(ACUISSystemApertureMetricsRequest *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_metricsRequest, request);
  }

  return v7;
}

- (CGSize)obstructionSize
{
  [(SystemApertureMetricsRequest *)self->_metricsRequest obstructionSize];
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)setExpandedMetricsRequest:(id)request
{
  _activityItemMetricsRequest = [request _activityItemMetricsRequest];
  [(SystemApertureMetricsRequest *)self->_metricsRequest setExpandedMetricsRequest:_activityItemMetricsRequest];
}

- (ACUISActivityItemMetricsRequest)expandedMetricsRequest
{
  v3 = [ACUISActivityItemMetricsRequest alloc];
  expandedMetricsRequest = [(SystemApertureMetricsRequest *)self->_metricsRequest expandedMetricsRequest];
  v5 = [(ACUISActivityItemMetricsRequest *)v3 _initWithItemMetrics:expandedMetricsRequest];

  return v5;
}

- (void)setCompactLeadingMetricsRequest:(id)request
{
  _activityItemMetricsRequest = [request _activityItemMetricsRequest];
  [(SystemApertureMetricsRequest *)self->_metricsRequest setCompactLeadingMetricsRequest:_activityItemMetricsRequest];
}

- (ACUISActivityItemMetricsRequest)compactLeadingMetricsRequest
{
  v3 = [ACUISActivityItemMetricsRequest alloc];
  compactLeadingMetricsRequest = [(SystemApertureMetricsRequest *)self->_metricsRequest compactLeadingMetricsRequest];
  v5 = [(ACUISActivityItemMetricsRequest *)v3 _initWithItemMetrics:compactLeadingMetricsRequest];

  return v5;
}

- (void)setCompactTrailingMetricsRequest:(id)request
{
  _activityItemMetricsRequest = [request _activityItemMetricsRequest];
  [(SystemApertureMetricsRequest *)self->_metricsRequest setCompactTrailingMetricsRequest:_activityItemMetricsRequest];
}

- (ACUISActivityItemMetricsRequest)compactTrailingMetricsRequest
{
  v3 = [ACUISActivityItemMetricsRequest alloc];
  compactTrailingMetricsRequest = [(SystemApertureMetricsRequest *)self->_metricsRequest compactTrailingMetricsRequest];
  v5 = [(ACUISActivityItemMetricsRequest *)v3 _initWithItemMetrics:compactTrailingMetricsRequest];

  return v5;
}

- (void)setCompactMetricsRequest:(id)request
{
  requestCopy = request;
  v8 = [requestCopy copy];
  edgeInsets = [v8 edgeInsets];
  [edgeInsets setTrailing:0.0];
  [v8 setEdgeInsets:edgeInsets];
  [(ACUISSystemApertureMetricsRequest *)self setCompactLeadingMetricsRequest:v8];
  v6 = [requestCopy copy];

  edgeInsets2 = [v6 edgeInsets];
  [edgeInsets2 setLeading:0.0];
  [v6 setEdgeInsets:edgeInsets2];
  [(ACUISSystemApertureMetricsRequest *)self setCompactLeadingMetricsRequest:v6];
}

- (ACUISActivityItemMetricsRequest)compactMetricsRequest
{
  v3 = [ACUISActivityItemMetricsRequest alloc];
  compactLeadingMetricsRequest = [(SystemApertureMetricsRequest *)self->_metricsRequest compactLeadingMetricsRequest];
  v5 = [(ACUISActivityItemMetricsRequest *)v3 _initWithItemMetrics:compactLeadingMetricsRequest];

  return v5;
}

- (void)setMinimalMetricsRequest:(id)request
{
  _activityItemMetricsRequest = [request _activityItemMetricsRequest];
  [(SystemApertureMetricsRequest *)self->_metricsRequest setMinimalMetricsRequest:_activityItemMetricsRequest];
}

- (ACUISActivityItemMetricsRequest)minimalMetricsRequest
{
  v3 = [ACUISActivityItemMetricsRequest alloc];
  minimalMetricsRequest = [(SystemApertureMetricsRequest *)self->_metricsRequest minimalMetricsRequest];
  v5 = [(ACUISActivityItemMetricsRequest *)v3 _initWithItemMetrics:minimalMetricsRequest];

  return v5;
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
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(SystemApertureMetricsRequest *)self->_metricsRequest isEqual:equalCopy->_metricsRequest];
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [ACUISSystemApertureMetricsRequest allocWithZone:zone];
  v5 = [(SystemApertureMetricsRequest *)self->_metricsRequest copy];
  v6 = [(ACUISSystemApertureMetricsRequest *)v4 _initWithMetricsRequest:v5];

  return v6;
}

- (ACUISSystemApertureMetricsRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"metricsRequest"];

  v6 = [(ACUISSystemApertureMetricsRequest *)self _initWithMetricsRequest:v5];
  return v6;
}

@end