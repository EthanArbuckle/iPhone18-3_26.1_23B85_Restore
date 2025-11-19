@interface ACUISSizeDimensionRequest
+ (id)fixed:(double)a3;
- (ACUISSizeDimensionRequest)initWithCoder:(id)a3;
- (ACUISSizeDimensionRequest)initWithDimensionRequest:(id)a3;
- (ACUISSizeDimensionRequest)initWithMinimum:(double)a3 maximum:(double)a4 type:(int64_t)a5;
- (BOOL)isEqual:(id)a3;
- (id)_sizeDimensionRequest;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ACUISSizeDimensionRequest

- (ACUISSizeDimensionRequest)initWithMinimum:(double)a3 maximum:(double)a4 type:(int64_t)a5
{
  v9.receiver = self;
  v9.super_class = ACUISSizeDimensionRequest;
  result = [(ACUISSizeDimensionRequest *)&v9 init];
  if (result)
  {
    result->_minimum = a3;
    result->_maximum = a4;
    result->_type = a5;
  }

  return result;
}

- (ACUISSizeDimensionRequest)initWithDimensionRequest:(id)a3
{
  v4 = a3;
  [v4 minimum];
  v6 = v5;
  [v4 maximum];
  v8 = v7;
  v9 = [v4 type];

  v10 = [(ACUISSizeDimensionRequest *)self objcTypeFromSwift:v9];

  return [(ACUISSizeDimensionRequest *)self initWithMinimum:v10 maximum:v6 type:v8];
}

+ (id)fixed:(double)a3
{
  v3 = [[a1 alloc] initWithMinimum:0 maximum:a3 type:a3];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
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
  v8 = [v4 build];

  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [ACUISSizeDimensionRequest alloc];
  [(ACUISSizeDimensionRequest *)self minimum];
  v6 = v5;
  [(ACUISSizeDimensionRequest *)self maximum];
  v8 = v7;
  v9 = [(ACUISSizeDimensionRequest *)self type];

  return [(ACUISSizeDimensionRequest *)v4 initWithMinimum:v9 maximum:v6 type:v8];
}

- (ACUISSizeDimensionRequest)initWithCoder:(id)a3
{
  v4 = a3;
  [v4 decodeDoubleForKey:@"min"];
  v6 = v5;
  [v4 decodeDoubleForKey:@"max"];
  v8 = v7;
  v9 = [v4 decodeIntegerForKey:@"type"];

  return [(ACUISSizeDimensionRequest *)self initWithMinimum:v9 maximum:v6 type:v8];
}

- (void)encodeWithCoder:(id)a3
{
  minimum = self->_minimum;
  v5 = a3;
  [v5 encodeDouble:@"min" forKey:minimum];
  [v5 encodeDouble:@"max" forKey:self->_maximum];
  [v5 encodeInteger:self->_type forKey:@"type"];
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