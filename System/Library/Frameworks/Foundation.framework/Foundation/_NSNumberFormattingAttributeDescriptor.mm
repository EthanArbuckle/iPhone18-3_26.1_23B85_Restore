@interface _NSNumberFormattingAttributeDescriptor
- (id)attributeValueFromValue:(id)a3;
@end

@implementation _NSNumberFormattingAttributeDescriptor

- (id)attributeValueFromValue:(id)a3
{
  if (!_NSIsNSNumber() || ![a3 BOOLValue])
  {
    return 0;
  }

  return +[NSLocalizedNumberFormatRule automatic];
}

@end