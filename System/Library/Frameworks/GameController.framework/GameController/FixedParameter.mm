@interface FixedParameter
- (FixedParameter)initWithIdentifier:(int)identifier value:(float)value;
@end

@implementation FixedParameter

- (FixedParameter)initWithIdentifier:(int)identifier value:(float)value
{
  v7.receiver = self;
  v7.super_class = FixedParameter;
  result = [(FixedParameter *)&v7 init];
  if (result)
  {
    result->_identifier = identifier;
    result->_value = value;
  }

  return result;
}

@end