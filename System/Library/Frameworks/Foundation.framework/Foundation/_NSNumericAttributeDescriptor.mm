@interface _NSNumericAttributeDescriptor
- (id)attributeValueFromValue:(id)value;
@end

@implementation _NSNumericAttributeDescriptor

- (id)attributeValueFromValue:(id)value
{
  if (_NSIsNSNumber())
  {
    return value;
  }

  else
  {
    return 0;
  }
}

@end