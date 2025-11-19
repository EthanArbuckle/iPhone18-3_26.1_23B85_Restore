@interface _NSURLAttributeDescriptor
- (id)attributeValueFromValue:(id)a3;
@end

@implementation _NSURLAttributeDescriptor

- (id)attributeValueFromValue:(id)a3
{
  if (!_NSIsNSString())
  {
    return 0;
  }

  v4 = MEMORY[0x1E695DFF8];

  return [v4 URLWithString:a3];
}

@end