@interface INHomeAttributeRange
- (BOOL)isEqual:(id)a3;
- (INHomeAttributeRange)initWithCoder:(id)a3;
- (INHomeAttributeRange)initWithRange:(double)a3 upperValue:(double)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation INHomeAttributeRange

- (void)encodeWithCoder:(id)a3
{
  lowerValue = self->_lowerValue;
  v5 = a3;
  [v5 encodeDouble:@"lowerValue" forKey:lowerValue];
  [v5 encodeDouble:@"upperValue" forKey:self->_upperValue];
}

- (INHomeAttributeRange)initWithCoder:(id)a3
{
  v4 = a3;
  [v4 decodeDoubleForKey:@"lowerValue"];
  v6 = v5;
  [v4 decodeDoubleForKey:@"upperValue"];
  v8 = v7;

  return [(INHomeAttributeRange *)self initWithRange:v6 upperValue:v8];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && self->_lowerValue == v4[1] && self->_upperValue == v4[2];

  return v5;
}

- (INHomeAttributeRange)initWithRange:(double)a3 upperValue:(double)a4
{
  v7.receiver = self;
  v7.super_class = INHomeAttributeRange;
  result = [(INHomeAttributeRange *)&v7 init];
  if (result)
  {
    result->_lowerValue = a3;
    result->_upperValue = a4;
  }

  return result;
}

@end