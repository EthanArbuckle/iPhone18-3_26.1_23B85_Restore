@interface ACUISActivityItemMetricsRequest
- (ACUISActivityItemMetricsRequest)initWithCoder:(id)a3;
- (ACUISActivityItemMetricsRequest)initWithWidth:(id)a3 height:(id)a4 cornerRadius:(double)a5 edgeInsets:(id)a6 clipMargin:(double)a7;
- (ACUISActivityItemMetricsRequest)initWithWidth:(id)a3 height:(id)a4 cornerRadius:(double)a5 edgeInsets:(id)a6 clipMargin:(double)a7 scaleFactor:(double)a8;
- (ACUISEdgeInsets)edgeInsets;
- (ACUISSizeDimensionRequest)heightRequest;
- (ACUISSizeDimensionRequest)widthRequest;
- (BOOL)isEqual:(id)a3;
- (CGSize)initialSize;
- (id)_initWithItemMetrics:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)setEdgeInsets:(id)a3;
- (void)setHeightRequest:(id)a3;
- (void)setWidthRequest:(id)a3;
@end

@implementation ACUISActivityItemMetricsRequest

- (ACUISActivityItemMetricsRequest)initWithWidth:(id)a3 height:(id)a4 cornerRadius:(double)a5 edgeInsets:(id)a6 clipMargin:(double)a7
{
  v12 = a6;
  v13 = a4;
  v14 = a3;
  v15 = [_TtC18ActivityUIServices26ActivityItemMetricsRequest alloc];
  v16 = [v14 _sizeDimensionRequest];

  v17 = [v13 _sizeDimensionRequest];

  v18 = [v12 _edgeInsets];

  v19 = [(ActivityItemMetricsRequest *)v15 initWithWidth:v16 height:v17 cornerRadius:v18 edgeInsets:a5 clipMargin:a7 scaleFactor:1.0];
  v20 = [(ACUISActivityItemMetricsRequest *)self _initWithItemMetrics:v19];

  return v20;
}

- (ACUISActivityItemMetricsRequest)initWithWidth:(id)a3 height:(id)a4 cornerRadius:(double)a5 edgeInsets:(id)a6 clipMargin:(double)a7 scaleFactor:(double)a8
{
  v14 = a6;
  v15 = a4;
  v16 = a3;
  v17 = [_TtC18ActivityUIServices26ActivityItemMetricsRequest alloc];
  v18 = [v16 _sizeDimensionRequest];

  v19 = [v15 _sizeDimensionRequest];

  v20 = [v14 _edgeInsets];

  v21 = [(ActivityItemMetricsRequest *)v17 initWithWidth:v18 height:v19 cornerRadius:v20 edgeInsets:a5 clipMargin:a7 scaleFactor:a8];
  v22 = [(ACUISActivityItemMetricsRequest *)self _initWithItemMetrics:v21];

  return v22;
}

- (id)_initWithItemMetrics:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = ACUISActivityItemMetricsRequest;
  v5 = [(ACUISActivityItemMetricsRequest *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    itemMetricsRequest = v5->_itemMetricsRequest;
    v5->_itemMetricsRequest = v6;
  }

  return v5;
}

- (void)setWidthRequest:(id)a3
{
  itemMetricsRequest = self->_itemMetricsRequest;
  v4 = [a3 _sizeDimensionRequest];
  [(ActivityItemMetricsRequest *)itemMetricsRequest setWidthRequest:v4];
}

- (ACUISSizeDimensionRequest)widthRequest
{
  v3 = [ACUISSizeDimensionRequest alloc];
  v4 = [(ActivityItemMetricsRequest *)self->_itemMetricsRequest widthRequest];
  v5 = [(ACUISSizeDimensionRequest *)v3 initWithDimensionRequest:v4];

  return v5;
}

- (void)setHeightRequest:(id)a3
{
  itemMetricsRequest = self->_itemMetricsRequest;
  v4 = [a3 _sizeDimensionRequest];
  [(ActivityItemMetricsRequest *)itemMetricsRequest setHeightRequest:v4];
}

- (ACUISSizeDimensionRequest)heightRequest
{
  v3 = [ACUISSizeDimensionRequest alloc];
  v4 = [(ActivityItemMetricsRequest *)self->_itemMetricsRequest heightRequest];
  v5 = [(ACUISSizeDimensionRequest *)v3 initWithDimensionRequest:v4];

  return v5;
}

- (ACUISEdgeInsets)edgeInsets
{
  v3 = [ACUISEdgeInsets alloc];
  v4 = [(ActivityItemMetricsRequest *)self->_itemMetricsRequest edgeInsets];
  v5 = [(ACUISEdgeInsets *)v3 _initWithEdgeInsets:v4];

  return v5;
}

- (void)setEdgeInsets:(id)a3
{
  itemMetricsRequest = self->_itemMetricsRequest;
  v4 = [a3 _edgeInsets];
  [(ActivityItemMetricsRequest *)itemMetricsRequest setEdgeInsets:v4];
}

- (CGSize)initialSize
{
  [(ActivityItemMetricsRequest *)self->_itemMetricsRequest initialSize];
  result.height = v3;
  result.width = v2;
  return result;
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
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(ActivityItemMetricsRequest *)self->_itemMetricsRequest isEqual:v4->_itemMetricsRequest];
  }

  return v5;
}

- (id)description
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  v4 = [v3 appendObject:self->_itemMetricsRequest withName:@"metrics"];
  v5 = [v3 build];

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [ACUISActivityItemMetricsRequest allocWithZone:a3];
  v5 = [(ActivityItemMetricsRequest *)self->_itemMetricsRequest copy];
  v6 = [(ACUISActivityItemMetricsRequest *)v4 _initWithItemMetrics:v5];

  return v6;
}

- (ACUISActivityItemMetricsRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"itemMetricsRequest"];

  v6 = [(ACUISActivityItemMetricsRequest *)self _initWithItemMetrics:v5];
  return v6;
}

@end