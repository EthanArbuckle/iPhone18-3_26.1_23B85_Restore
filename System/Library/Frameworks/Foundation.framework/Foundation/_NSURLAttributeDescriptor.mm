@interface _NSURLAttributeDescriptor
- (id)attributeValueFromValue:(id)value;
@end

@implementation _NSURLAttributeDescriptor

- (id)attributeValueFromValue:(id)value
{
  if (!_NSIsNSString())
  {
    return 0;
  }

  v4 = MEMORY[0x1E695DFF8];

  return [v4 URLWithString:value];
}

@end