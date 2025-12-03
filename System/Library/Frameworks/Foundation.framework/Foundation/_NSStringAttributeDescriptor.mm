@interface _NSStringAttributeDescriptor
- (id)attributeValueFromValue:(id)value;
@end

@implementation _NSStringAttributeDescriptor

- (id)attributeValueFromValue:(id)value
{
  if (_NSIsNSString())
  {
    return value;
  }

  else
  {
    return 0;
  }
}

@end