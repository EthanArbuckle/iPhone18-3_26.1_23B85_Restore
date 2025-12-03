@interface SAIntentGroupTextSnippetTemplate
- (unint64_t)alignmentValue;
- (void)setAlignmentValue:(unint64_t)value;
@end

@implementation SAIntentGroupTextSnippetTemplate

- (unint64_t)alignmentValue
{
  alignment = [(SAIntentGroupTextSnippetTemplate *)self alignment];
  v3 = [SiriIntentsTemplateModelEnumMapper templateAlignmentFromString:alignment];

  return v3;
}

- (void)setAlignmentValue:(unint64_t)value
{
  v4 = [SiriIntentsTemplateModelEnumMapper stringFromTemplateAlignment:value];
  [(SAIntentGroupTextSnippetTemplate *)self setAlignment:v4];
}

@end