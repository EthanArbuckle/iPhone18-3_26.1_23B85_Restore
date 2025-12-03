@interface ACUISSizeDimensionRequest
+ (id)fixed:(double)fixed;
- (ACUISSizeDimensionRequest)initWithCoder:(id)coder;
- (ACUISSizeDimensionRequest)initWithDimensionRequest:(id)request;
- (ACUISSizeDimensionRequest)initWithMinimum:(double)minimum maximum:(double)maximum type:(int64_t)type;
- (BOOL)isEqual:(id)equal;
- (id)_sizeDimensionRequest;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ACUISSizeDimensionRequest

- (ACUISSizeDimensionRequest)initWithMinimum:(double)minimum maximum:(double)maximum type:(int64_t)type
{
  v9.receiver = self;
  v9.super_class = ACUISSizeDimensionRequest;
  result = [(ACUISSizeDimensionRequest *)&v9 init];
  if (result)
  {
    result->_minimum = minimum;
    result->_maximum = maximum;
    result->_type = type;
  }

  return result;
}

- (ACUISSizeDimensionRequest)initWithDimensionRequest:(id)request
{
  requestCopy = request;
  [requestCopy minimum];
  v6 = v5;
  [requestCopy maximum];
  v8 = v7;
  type = [requestCopy type];

  v10 = [(ACUISSizeDimensionRequest *)self objcTypeFromSwift:type];

  return [(ACUISSizeDimensionRequest *)self initWithMinimum:v10 maximum:v6 type:v8];
}

+ (id)fixed:(double)fixed
{
  v3 = [[self alloc] initWithMinimum:0 maximum:fixed type:fixed];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      v6 = self->_minimum == v5->_minimum && self->_maximum == v5->_maximum && self->_type == v5->_type;
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (unint64_t)hash
{
  if (self->_minimum)
  {
    v2 = self->_maximum == 0;
  }

  else
  {
    v2 = 1;
  }

  if (v2 || self->_type == 0)
  {
    return 0;
  }

  else
  {
    return 3;
  }
}

- (id)description
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  v4 = v3;
  if (self->_type)
  {
    v5 = @"dynamic";
  }

  else
  {
    v5 = @"fixed";
  }

  [v3 appendString:v5 withName:@"type"];
  v6 = [v4 appendDouble:@"minimum" withName:2 decimalPrecision:self->_minimum];
  v7 = [v4 appendDouble:@"maximum" withName:2 decimalPrecision:self->_maximum];
  build = [v4 build];

  return build;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [ACUISSizeDimensionRequest alloc];
  [(ACUISSizeDimensionRequest *)self minimum];
  v6 = v5;
  [(ACUISSizeDimensionRequest *)self maximum];
  v8 = v7;
  type = [(ACUISSizeDimensionRequest *)self type];

  return [(ACUISSizeDimensionRequest *)v4 initWithMinimum:type maximum:v6 type:v8];
}

- (ACUISSizeDimensionRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy decodeDoubleForKey:@"min"];
  v6 = v5;
  [coderCopy decodeDoubleForKey:@"max"];
  v8 = v7;
  v9 = [coderCopy decodeIntegerForKey:@"type"];

  return [(ACUISSizeDimensionRequest *)self initWithMinimum:v9 maximum:v6 type:v8];
}

- (void)encodeWithCoder:(id)coder
{
  minimum = self->_minimum;
  coderCopy = coder;
  [coderCopy encodeDouble:@"min" forKey:minimum];
  [coderCopy encodeDouble:@"max" forKey:self->_maximum];
  [coderCopy encodeInteger:self->_type forKey:@"type"];
}

- (id)_sizeDimensionRequest
{
  v3 = [_TtC18ActivityUIServices20SizeDimensionRequest alloc];
  [(ACUISSizeDimensionRequest *)self minimum];
  v5 = v4;
  [(ACUISSizeDimensionRequest *)self maximum];
  v7 = [(SizeDimensionRequest *)v3 initWithMinimum:[(ACUISSizeDimensionRequest *)self swiftTypeFromObjc:[(ACUISSizeDimensionRequest *)self type]] maximum:v5 type:v6];

  return v7;
}

@end