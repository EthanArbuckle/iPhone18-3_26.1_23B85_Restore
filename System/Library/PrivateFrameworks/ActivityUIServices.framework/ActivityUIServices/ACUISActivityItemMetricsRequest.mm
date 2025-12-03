@interface ACUISActivityItemMetricsRequest
- (ACUISActivityItemMetricsRequest)initWithCoder:(id)coder;
- (ACUISActivityItemMetricsRequest)initWithWidth:(id)width height:(id)height cornerRadius:(double)radius edgeInsets:(id)insets clipMargin:(double)margin;
- (ACUISActivityItemMetricsRequest)initWithWidth:(id)width height:(id)height cornerRadius:(double)radius edgeInsets:(id)insets clipMargin:(double)margin scaleFactor:(double)factor;
- (ACUISEdgeInsets)edgeInsets;
- (ACUISSizeDimensionRequest)heightRequest;
- (ACUISSizeDimensionRequest)widthRequest;
- (BOOL)isEqual:(id)equal;
- (CGSize)initialSize;
- (id)_initWithItemMetrics:(id)metrics;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)setEdgeInsets:(id)insets;
- (void)setHeightRequest:(id)request;
- (void)setWidthRequest:(id)request;
@end

@implementation ACUISActivityItemMetricsRequest

- (ACUISActivityItemMetricsRequest)initWithWidth:(id)width height:(id)height cornerRadius:(double)radius edgeInsets:(id)insets clipMargin:(double)margin
{
  insetsCopy = insets;
  heightCopy = height;
  widthCopy = width;
  v15 = [_TtC18ActivityUIServices26ActivityItemMetricsRequest alloc];
  _sizeDimensionRequest = [widthCopy _sizeDimensionRequest];

  _sizeDimensionRequest2 = [heightCopy _sizeDimensionRequest];

  _edgeInsets = [insetsCopy _edgeInsets];

  v19 = [(ActivityItemMetricsRequest *)v15 initWithWidth:_sizeDimensionRequest height:_sizeDimensionRequest2 cornerRadius:_edgeInsets edgeInsets:radius clipMargin:margin scaleFactor:1.0];
  v20 = [(ACUISActivityItemMetricsRequest *)self _initWithItemMetrics:v19];

  return v20;
}

- (ACUISActivityItemMetricsRequest)initWithWidth:(id)width height:(id)height cornerRadius:(double)radius edgeInsets:(id)insets clipMargin:(double)margin scaleFactor:(double)factor
{
  insetsCopy = insets;
  heightCopy = height;
  widthCopy = width;
  v17 = [_TtC18ActivityUIServices26ActivityItemMetricsRequest alloc];
  _sizeDimensionRequest = [widthCopy _sizeDimensionRequest];

  _sizeDimensionRequest2 = [heightCopy _sizeDimensionRequest];

  _edgeInsets = [insetsCopy _edgeInsets];

  v21 = [(ActivityItemMetricsRequest *)v17 initWithWidth:_sizeDimensionRequest height:_sizeDimensionRequest2 cornerRadius:_edgeInsets edgeInsets:radius clipMargin:margin scaleFactor:factor];
  v22 = [(ACUISActivityItemMetricsRequest *)self _initWithItemMetrics:v21];

  return v22;
}

- (id)_initWithItemMetrics:(id)metrics
{
  metricsCopy = metrics;
  v9.receiver = self;
  v9.super_class = ACUISActivityItemMetricsRequest;
  v5 = [(ACUISActivityItemMetricsRequest *)&v9 init];
  if (v5)
  {
    v6 = [metricsCopy copy];
    itemMetricsRequest = v5->_itemMetricsRequest;
    v5->_itemMetricsRequest = v6;
  }

  return v5;
}

- (void)setWidthRequest:(id)request
{
  itemMetricsRequest = self->_itemMetricsRequest;
  _sizeDimensionRequest = [request _sizeDimensionRequest];
  [(ActivityItemMetricsRequest *)itemMetricsRequest setWidthRequest:_sizeDimensionRequest];
}

- (ACUISSizeDimensionRequest)widthRequest
{
  v3 = [ACUISSizeDimensionRequest alloc];
  widthRequest = [(ActivityItemMetricsRequest *)self->_itemMetricsRequest widthRequest];
  v5 = [(ACUISSizeDimensionRequest *)v3 initWithDimensionRequest:widthRequest];

  return v5;
}

- (void)setHeightRequest:(id)request
{
  itemMetricsRequest = self->_itemMetricsRequest;
  _sizeDimensionRequest = [request _sizeDimensionRequest];
  [(ActivityItemMetricsRequest *)itemMetricsRequest setHeightRequest:_sizeDimensionRequest];
}

- (ACUISSizeDimensionRequest)heightRequest
{
  v3 = [ACUISSizeDimensionRequest alloc];
  heightRequest = [(ActivityItemMetricsRequest *)self->_itemMetricsRequest heightRequest];
  v5 = [(ACUISSizeDimensionRequest *)v3 initWithDimensionRequest:heightRequest];

  return v5;
}

- (ACUISEdgeInsets)edgeInsets
{
  v3 = [ACUISEdgeInsets alloc];
  edgeInsets = [(ActivityItemMetricsRequest *)self->_itemMetricsRequest edgeInsets];
  v5 = [(ACUISEdgeInsets *)v3 _initWithEdgeInsets:edgeInsets];

  return v5;
}

- (void)setEdgeInsets:(id)insets
{
  itemMetricsRequest = self->_itemMetricsRequest;
  _edgeInsets = [insets _edgeInsets];
  [(ActivityItemMetricsRequest *)itemMetricsRequest setEdgeInsets:_edgeInsets];
}

- (CGSize)initialSize
{
  [(ActivityItemMetricsRequest *)self->_itemMetricsRequest initialSize];
  result.height = v3;
  result.width = v2;
  return result;
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
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(ActivityItemMetricsRequest *)self->_itemMetricsRequest isEqual:equalCopy->_itemMetricsRequest];
  }

  return v5;
}

- (id)description
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  v4 = [v3 appendObject:self->_itemMetricsRequest withName:@"metrics"];
  build = [v3 build];

  return build;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [ACUISActivityItemMetricsRequest allocWithZone:zone];
  v5 = [(ActivityItemMetricsRequest *)self->_itemMetricsRequest copy];
  v6 = [(ACUISActivityItemMetricsRequest *)v4 _initWithItemMetrics:v5];

  return v6;
}

- (ACUISActivityItemMetricsRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"itemMetricsRequest"];

  v6 = [(ACUISActivityItemMetricsRequest *)self _initWithItemMetrics:v5];
  return v6;
}

@end