@interface INHomeAttributeRange
- (BOOL)isEqual:(id)equal;
- (INHomeAttributeRange)initWithCoder:(id)coder;
- (INHomeAttributeRange)initWithRange:(double)range upperValue:(double)value;
- (void)encodeWithCoder:(id)coder;
@end

@implementation INHomeAttributeRange

- (void)encodeWithCoder:(id)coder
{
  lowerValue = self->_lowerValue;
  coderCopy = coder;
  [coderCopy encodeDouble:@"lowerValue" forKey:lowerValue];
  [coderCopy encodeDouble:@"upperValue" forKey:self->_upperValue];
}

- (INHomeAttributeRange)initWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy decodeDoubleForKey:@"lowerValue"];
  v6 = v5;
  [coderCopy decodeDoubleForKey:@"upperValue"];
  v8 = v7;

  return [(INHomeAttributeRange *)self initWithRange:v6 upperValue:v8];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && self->_lowerValue == equalCopy[1] && self->_upperValue == equalCopy[2];

  return v5;
}

- (INHomeAttributeRange)initWithRange:(double)range upperValue:(double)value
{
  v7.receiver = self;
  v7.super_class = INHomeAttributeRange;
  result = [(INHomeAttributeRange *)&v7 init];
  if (result)
  {
    result->_lowerValue = range;
    result->_upperValue = value;
  }

  return result;
}

@end