@interface _NSMarkdownStringAttributeDescriptor
- (id)attributeValueFromValue:(id)value;
@end

@implementation _NSMarkdownStringAttributeDescriptor

- (id)attributeValueFromValue:(id)value
{
  if (!_NSIsNSString())
  {
    return 0;
  }

  v4 = objc_alloc_init(NSAttributedStringMarkdownParsingOptions);
  [(NSAttributedStringMarkdownParsingOptions *)v4 setInterpretedSyntax:2];
  v5 = [[NSAttributedString alloc] initWithMarkdownString:value options:v4 baseURL:0 error:0];

  return v5;
}

@end