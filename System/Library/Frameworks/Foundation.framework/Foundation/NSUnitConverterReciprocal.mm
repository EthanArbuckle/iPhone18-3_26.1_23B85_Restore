@interface NSUnitConverterReciprocal
- (BOOL)isEqual:(id)a3;
- (NSUnitConverterReciprocal)initWithCoder:(id)a3;
- (NSUnitConverterReciprocal)initWithReciprocalValue:(double)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NSUnitConverterReciprocal

- (NSUnitConverterReciprocal)initWithReciprocalValue:(double)a3
{
  v6 = *MEMORY[0x1E69E9840];
  v5.receiver = self;
  v5.super_class = NSUnitConverterReciprocal;
  result = [(NSUnitConverterReciprocal *)&v5 init];
  if (result)
  {
    result->_reciprocalValue = a3;
  }

  return result;
}

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    return 1;
  }

  reciprocalValue = self->_reciprocalValue;
  [a3 reciprocalValue];
  return reciprocalValue == v4;
}

- (unint64_t)hash
{
  [(NSUnitConverterReciprocal *)self reciprocalValue];
  if (v2 < 0.0)
  {
    v2 = -v2;
  }

  *v3.i64 = floor(v2 + 0.5);
  v5 = (v2 - *v3.i64) * 1.84467441e19;
  *v4.i64 = *v3.i64 - trunc(*v3.i64 * 5.42101086e-20) * 1.84467441e19;
  v6.f64[0] = NAN;
  v6.f64[1] = NAN;
  v3.i64[0] = vbslq_s8(vnegq_f64(v6), v4, v3).i64[0];
  v7 = 2654435761u * *v3.i64;
  v8 = v7 + v5;
  if (v5 <= 0.0)
  {
    v8 = 2654435761u * *v3.i64;
  }

  v9 = v7 - fabs(v5);
  if (v5 < 0.0)
  {
    return v9;
  }

  else
  {
    return v8;
  }
}

- (id)description
{
  v4 = *MEMORY[0x1E69E9840];
  v3.receiver = self;
  v3.super_class = NSUnitConverterReciprocal;
  return [-[NSUnitConverterReciprocal description](&v3 description)];
}

- (NSUnitConverterReciprocal)initWithCoder:(id)a3
{
  if (([a3 allowsKeyedCoding] & 1) == 0)
  {

    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"NSUnitConverterReciprocal cannot be decoded by non-keyed archivers" userInfo:0]);
  }

  [a3 decodeDoubleForKey:@"NS.reciprocalValue"];

  return [(NSUnitConverterReciprocal *)self initWithReciprocalValue:?];
}

- (void)encodeWithCoder:(id)a3
{
  if (![a3 allowsKeyedCoding])
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"NSUnitConverterReciprocal encoder does not allow non-keyed coding!" userInfo:0]);
  }

  reciprocalValue = self->_reciprocalValue;

  [a3 encodeDouble:@"NS.reciprocalValue" forKey:reciprocalValue];
}

@end