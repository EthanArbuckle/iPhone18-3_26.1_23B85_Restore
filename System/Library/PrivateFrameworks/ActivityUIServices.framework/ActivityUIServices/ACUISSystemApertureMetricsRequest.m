@interface ACUISSystemApertureMetricsRequest
- (ACUISActivityItemMetricsRequest)compactLeadingMetricsRequest;
- (ACUISActivityItemMetricsRequest)compactMetricsRequest;
- (ACUISActivityItemMetricsRequest)compactTrailingMetricsRequest;
- (ACUISActivityItemMetricsRequest)expandedMetricsRequest;
- (ACUISActivityItemMetricsRequest)minimalMetricsRequest;
- (ACUISSystemApertureMetricsRequest)initWithCoder:(id)a3;
- (ACUISSystemApertureMetricsRequest)initWithObstructionSize:(CGSize)a3 expandedMetricsRequest:(id)a4 compactLeadingMetricsRequest:(id)a5 compactTrailingMetricsRequest:(id)a6 minimalMetricsRequest:(id)a7;
- (ACUISSystemApertureMetricsRequest)initWithObstructionSize:(CGSize)a3 expandedMetricsRequest:(id)a4 compactMetricsRequest:(id)a5 minimalMetricsRequest:(id)a6;
- (ACUISSystemApertureMetricsRequest)initWithObstructionSize:(CGSize)a3 obstructionTopMargin:(double)a4 expandedMetricsRequest:(id)a5 compactLeadingMetricsRequest:(id)a6 compactTrailingMetricsRequest:(id)a7 minimalMetricsRequest:(id)a8;
- (BOOL)isEqual:(id)a3;
- (CGSize)obstructionSize;
- (id)_initWithMetricsRequest:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)setCompactLeadingMetricsRequest:(id)a3;
- (void)setCompactMetricsRequest:(id)a3;
- (void)setCompactTrailingMetricsRequest:(id)a3;
- (void)setExpandedMetricsRequest:(id)a3;
- (void)setMinimalMetricsRequest:(id)a3;
@end

@implementation ACUISSystemApertureMetricsRequest

- (ACUISSystemApertureMetricsRequest)initWithObstructionSize:(CGSize)a3 obstructionTopMargin:(double)a4 expandedMetricsRequest:(id)a5 compactLeadingMetricsRequest:(id)a6 compactTrailingMetricsRequest:(id)a7 minimalMetricsRequest:(id)a8
{
  height = a3.height;
  width = a3.width;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v28.receiver = self;
  v28.super_class = ACUISSystemApertureMetricsRequest;
  v19 = [(ACUISSystemApertureMetricsRequest *)&v28 init];
  if (v19)
  {
    v20 = [_TtC18ActivityUIServices28SystemApertureMetricsRequest alloc];
    v21 = [v15 _activityItemMetricsRequest];
    v22 = [v16 _activityItemMetricsRequest];
    v23 = [v17 _activityItemMetricsRequest];
    v24 = [v18 _activityItemMetricsRequest];
    v25 = [(SystemApertureMetricsRequest *)v20 initWithObstructionSize:v21 obstructionTopMargin:v22 expandedMetricsRequest:v23 compactLeadingMetricsRequest:v24 compactTrailingMetricsRequest:width minimalMetricsRequest:height, a4];
    metricsRequest = v19->_metricsRequest;
    v19->_metricsRequest = v25;
  }

  return v19;
}

- (ACUISSystemApertureMetricsRequest)initWithObstructionSize:(CGSize)a3 expandedMetricsRequest:(id)a4 compactLeadingMetricsRequest:(id)a5 compactTrailingMetricsRequest:(id)a6 minimalMetricsRequest:(id)a7
{
  height = a3.height;
  width = a3.width;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v26.receiver = self;
  v26.super_class = ACUISSystemApertureMetricsRequest;
  v17 = [(ACUISSystemApertureMetricsRequest *)&v26 init];
  if (v17)
  {
    v18 = [_TtC18ActivityUIServices28SystemApertureMetricsRequest alloc];
    v19 = [v13 _activityItemMetricsRequest];
    v20 = [v14 _activityItemMetricsRequest];
    v21 = [v15 _activityItemMetricsRequest];
    v22 = [v16 _activityItemMetricsRequest];
    v23 = [(SystemApertureMetricsRequest *)v18 initWithObstructionSize:v19 obstructionTopMargin:v20 expandedMetricsRequest:v21 compactLeadingMetricsRequest:v22 compactTrailingMetricsRequest:width minimalMetricsRequest:height, 0.0];
    metricsRequest = v17->_metricsRequest;
    v17->_metricsRequest = v23;
  }

  return v17;
}

- (ACUISSystemApertureMetricsRequest)initWithObstructionSize:(CGSize)a3 expandedMetricsRequest:(id)a4 compactMetricsRequest:(id)a5 minimalMetricsRequest:(id)a6
{
  height = a3.height;
  width = a3.width;
  v11 = a6;
  v12 = a5;
  v13 = a4;
  v14 = [v12 copy];
  v15 = [v14 edgeInsets];
  [v15 setTrailing:0.0];
  [v14 setEdgeInsets:v15];
  v16 = [v12 copy];

  v17 = [v16 edgeInsets];
  [v17 setLeading:0.0];
  [v16 setEdgeInsets:v17];
  v18 = [(ACUISSystemApertureMetricsRequest *)self initWithObstructionSize:v13 expandedMetricsRequest:v14 compactLeadingMetricsRequest:v16 compactTrailingMetricsRequest:v11 minimalMetricsRequest:width, height];

  return v18;
}

- (id)_initWithMetricsRequest:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ACUISSystemApertureMetricsRequest;
  v6 = [(ACUISSystemApertureMetricsRequest *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_metricsRequest, a3);
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

- (void)setExpandedMetricsRequest:(id)a3
{
  v4 = [a3 _activityItemMetricsRequest];
  [(SystemApertureMetricsRequest *)self->_metricsRequest setExpandedMetricsRequest:v4];
}

- (ACUISActivityItemMetricsRequest)expandedMetricsRequest
{
  v3 = [ACUISActivityItemMetricsRequest alloc];
  v4 = [(SystemApertureMetricsRequest *)self->_metricsRequest expandedMetricsRequest];
  v5 = [(ACUISActivityItemMetricsRequest *)v3 _initWithItemMetrics:v4];

  return v5;
}

- (void)setCompactLeadingMetricsRequest:(id)a3
{
  v4 = [a3 _activityItemMetricsRequest];
  [(SystemApertureMetricsRequest *)self->_metricsRequest setCompactLeadingMetricsRequest:v4];
}

- (ACUISActivityItemMetricsRequest)compactLeadingMetricsRequest
{
  v3 = [ACUISActivityItemMetricsRequest alloc];
  v4 = [(SystemApertureMetricsRequest *)self->_metricsRequest compactLeadingMetricsRequest];
  v5 = [(ACUISActivityItemMetricsRequest *)v3 _initWithItemMetrics:v4];

  return v5;
}

- (void)setCompactTrailingMetricsRequest:(id)a3
{
  v4 = [a3 _activityItemMetricsRequest];
  [(SystemApertureMetricsRequest *)self->_metricsRequest setCompactTrailingMetricsRequest:v4];
}

- (ACUISActivityItemMetricsRequest)compactTrailingMetricsRequest
{
  v3 = [ACUISActivityItemMetricsRequest alloc];
  v4 = [(SystemApertureMetricsRequest *)self->_metricsRequest compactTrailingMetricsRequest];
  v5 = [(ACUISActivityItemMetricsRequest *)v3 _initWithItemMetrics:v4];

  return v5;
}

- (void)setCompactMetricsRequest:(id)a3
{
  v4 = a3;
  v8 = [v4 copy];
  v5 = [v8 edgeInsets];
  [v5 setTrailing:0.0];
  [v8 setEdgeInsets:v5];
  [(ACUISSystemApertureMetricsRequest *)self setCompactLeadingMetricsRequest:v8];
  v6 = [v4 copy];

  v7 = [v6 edgeInsets];
  [v7 setLeading:0.0];
  [v6 setEdgeInsets:v7];
  [(ACUISSystemApertureMetricsRequest *)self setCompactLeadingMetricsRequest:v6];
}

- (ACUISActivityItemMetricsRequest)compactMetricsRequest
{
  v3 = [ACUISActivityItemMetricsRequest alloc];
  v4 = [(SystemApertureMetricsRequest *)self->_metricsRequest compactLeadingMetricsRequest];
  v5 = [(ACUISActivityItemMetricsRequest *)v3 _initWithItemMetrics:v4];

  return v5;
}

- (void)setMinimalMetricsRequest:(id)a3
{
  v4 = [a3 _activityItemMetricsRequest];
  [(SystemApertureMetricsRequest *)self->_metricsRequest setMinimalMetricsRequest:v4];
}

- (ACUISActivityItemMetricsRequest)minimalMetricsRequest
{
  v3 = [ACUISActivityItemMetricsRequest alloc];
  v4 = [(SystemApertureMetricsRequest *)self->_metricsRequest minimalMetricsRequest];
  v5 = [(ACUISActivityItemMetricsRequest *)v3 _initWithItemMetrics:v4];

  return v5;
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
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(SystemApertureMetricsRequest *)self->_metricsRequest isEqual:v4->_metricsRequest];
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [ACUISSystemApertureMetricsRequest allocWithZone:a3];
  v5 = [(SystemApertureMetricsRequest *)self->_metricsRequest copy];
  v6 = [(ACUISSystemApertureMetricsRequest *)v4 _initWithMetricsRequest:v5];

  return v6;
}

- (ACUISSystemApertureMetricsRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"metricsRequest"];

  v6 = [(ACUISSystemApertureMetricsRequest *)self _initWithMetricsRequest:v5];
  return v6;
}

@end