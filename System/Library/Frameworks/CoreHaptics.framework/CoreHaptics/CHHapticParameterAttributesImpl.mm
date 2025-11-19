@interface CHHapticParameterAttributesImpl
- (CHHapticParameterAttributesImpl)initWithMinValue:(float)a3 maxValue:(float)a4 defaultValue:(float)a5;
@end

@implementation CHHapticParameterAttributesImpl

- (CHHapticParameterAttributesImpl)initWithMinValue:(float)a3 maxValue:(float)a4 defaultValue:(float)a5
{
  v9.receiver = self;
  v9.super_class = CHHapticParameterAttributesImpl;
  result = [(CHHapticParameterAttributesImpl *)&v9 init];
  if (result)
  {
    result->_minValue = a3;
    result->_maxValue = a4;
    result->_defaultValue = a5;
  }

  return result;
}

@end