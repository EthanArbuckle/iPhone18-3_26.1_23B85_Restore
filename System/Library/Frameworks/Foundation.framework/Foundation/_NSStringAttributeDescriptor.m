@interface _NSStringAttributeDescriptor
- (id)attributeValueFromValue:(id)a3;
@end

@implementation _NSStringAttributeDescriptor

- (id)attributeValueFromValue:(id)a3
{
  if (_NSIsNSString())
  {
    return a3;
  }

  else
  {
    return 0;
  }
}

@end