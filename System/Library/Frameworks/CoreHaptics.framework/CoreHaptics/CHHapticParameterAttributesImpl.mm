@interface CHHapticParameterAttributesImpl
- (CHHapticParameterAttributesImpl)initWithMinValue:(float)value maxValue:(float)maxValue defaultValue:(float)defaultValue;
@end

@implementation CHHapticParameterAttributesImpl

- (CHHapticParameterAttributesImpl)initWithMinValue:(float)value maxValue:(float)maxValue defaultValue:(float)defaultValue
{
  v9.receiver = self;
  v9.super_class = CHHapticParameterAttributesImpl;
  result = [(CHHapticParameterAttributesImpl *)&v9 init];
  if (result)
  {
    result->_minValue = value;
    result->_maxValue = maxValue;
    result->_defaultValue = defaultValue;
  }

  return result;
}

@end