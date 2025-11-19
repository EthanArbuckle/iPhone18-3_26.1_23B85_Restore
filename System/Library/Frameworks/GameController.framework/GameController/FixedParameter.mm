@interface FixedParameter
- (FixedParameter)initWithIdentifier:(int)a3 value:(float)a4;
@end

@implementation FixedParameter

- (FixedParameter)initWithIdentifier:(int)a3 value:(float)a4
{
  v7.receiver = self;
  v7.super_class = FixedParameter;
  result = [(FixedParameter *)&v7 init];
  if (result)
  {
    result->_identifier = a3;
    result->_value = a4;
  }

  return result;
}

@end