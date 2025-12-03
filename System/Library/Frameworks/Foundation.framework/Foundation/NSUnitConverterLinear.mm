@interface NSUnitConverterLinear
- (BOOL)isEqual:(id)equal;
- (NSUnitConverterLinear)initWithCoder:(id)coder;
- (NSUnitConverterLinear)initWithCoefficient:(double)coefficient constant:(double)constant;
- (double)baseUnitValueFromValue:(double)value;
- (double)valueFromBaseUnitValue:(double)value;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NSUnitConverterLinear

- (unint64_t)hash
{
  [(NSUnitConverterLinear *)self coefficient];
  if (v3 < 0.0)
  {
    v3 = -v3;
  }

  *v4.i64 = floor(v3 + 0.5);
  v6 = (v3 - *v4.i64) * 1.84467441e19;
  *v5.i64 = *v4.i64 - trunc(*v4.i64 * 5.42101086e-20) * 1.84467441e19;
  v7.f64[0] = NAN;
  v7.f64[1] = NAN;
  v20 = vnegq_f64(v7);
  v4.i64[0] = vbslq_s8(v20, v5, v4).i64[0];
  v8 = 2654435761u * *v4.i64;
  v9 = v8 + v6;
  if (v6 <= 0.0)
  {
    v9 = 2654435761u * *v4.i64;
  }

  v10 = v8 - fabs(v6);
  if (v6 < 0.0)
  {
    v11 = v10;
  }

  else
  {
    v11 = v9;
  }

  [(NSUnitConverterLinear *)self constant];
  if (v12 < 0.0)
  {
    v12 = -v12;
  }

  *v13.i64 = floor(v12 + 0.5);
  v15 = (v12 - *v13.i64) * 1.84467441e19;
  *v14.i64 = *v13.i64 - trunc(*v13.i64 * 5.42101086e-20) * 1.84467441e19;
  v13.i64[0] = vbslq_s8(v21, v14, v13).i64[0];
  v16 = 2654435761u * *v13.i64;
  v17 = v16 + v15;
  if (v15 <= 0.0)
  {
    v17 = 2654435761u * *v13.i64;
  }

  v18 = v16 - fabs(v15);
  if (v15 >= 0.0)
  {
    v18 = v17;
  }

  return v18 ^ v11;
}

- (NSUnitConverterLinear)initWithCoefficient:(double)coefficient constant:(double)constant
{
  v8 = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = NSUnitConverterLinear;
  result = [(NSUnitConverterLinear *)&v7 init];
  if (result)
  {
    result->_coefficient = coefficient;
    result->_constant = constant;
  }

  return result;
}

- (double)baseUnitValueFromValue:(double)value
{
  [(NSUnitConverterLinear *)self coefficient];
  v6 = v5;
  [(NSUnitConverterLinear *)self constant];
  return v7 + value * v6;
}

- (double)valueFromBaseUnitValue:(double)value
{
  [(NSUnitConverterLinear *)self constant];
  v6 = value - v5;
  [(NSUnitConverterLinear *)self coefficient];
  return v6 / v7;
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    return 1;
  }

  [(NSUnitConverterLinear *)self coefficient];
  v6 = v5;
  [equal coefficient];
  if (v6 != v7)
  {
    return 0;
  }

  [(NSUnitConverterLinear *)self constant];
  v10 = v9;
  [equal constant];
  return v10 == v11;
}

- (id)description
{
  v9 = *MEMORY[0x1E69E9840];
  v8.receiver = self;
  v8.super_class = NSUnitConverterLinear;
  v3 = [(NSUnitConverterLinear *)&v8 description];
  [(NSUnitConverterLinear *)self coefficient];
  v5 = v4;
  [(NSUnitConverterLinear *)self constant];
  return [v3 stringByAppendingString:{+[NSString stringWithFormat:](NSString, "stringWithFormat:", @" coefficient = %f, constant = %f", v5, v6)}];
}

- (NSUnitConverterLinear)initWithCoder:(id)coder
{
  if (([coder allowsKeyedCoding] & 1) == 0)
  {

    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"NSUnitConverterLinear cannot be decoded by non-keyed archivers" userInfo:0]);
  }

  [coder decodeDoubleForKey:@"NS.coefficient"];
  v6 = v5;
  [coder decodeDoubleForKey:@"NS.constant"];

  return [(NSUnitConverterLinear *)self initWithCoefficient:v6 constant:v7];
}

- (void)encodeWithCoder:(id)coder
{
  if (![coder allowsKeyedCoding])
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"NSUnitConverterLinear encoder does not allow non-keyed coding!" userInfo:0]);
  }

  [(NSUnitConverterLinear *)self coefficient];
  [coder encodeDouble:@"NS.coefficient" forKey:?];
  [(NSUnitConverterLinear *)self constant];

  [coder encodeDouble:@"NS.constant" forKey:?];
}

@end