@interface _NSNumberFormattingAttributeDescriptor
- (id)attributeValueFromValue:(id)value;
@end

@implementation _NSNumberFormattingAttributeDescriptor

- (id)attributeValueFromValue:(id)value
{
  if (!_NSIsNSNumber() || ![value BOOLValue])
  {
    return 0;
  }

  return +[NSLocalizedNumberFormatRule automatic];
}

@end