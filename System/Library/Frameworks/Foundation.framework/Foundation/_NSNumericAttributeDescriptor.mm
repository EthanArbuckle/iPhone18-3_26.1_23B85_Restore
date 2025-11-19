@interface _NSNumericAttributeDescriptor
- (id)attributeValueFromValue:(id)a3;
@end

@implementation _NSNumericAttributeDescriptor

- (id)attributeValueFromValue:(id)a3
{
  if (_NSIsNSNumber())
  {
    return a3;
  }

  else
  {
    return 0;
  }
}

@end