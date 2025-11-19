@interface SAIntentGroupTextSnippetTemplate
- (unint64_t)alignmentValue;
- (void)setAlignmentValue:(unint64_t)a3;
@end

@implementation SAIntentGroupTextSnippetTemplate

- (unint64_t)alignmentValue
{
  v2 = [(SAIntentGroupTextSnippetTemplate *)self alignment];
  v3 = [SiriIntentsTemplateModelEnumMapper templateAlignmentFromString:v2];

  return v3;
}

- (void)setAlignmentValue:(unint64_t)a3
{
  v4 = [SiriIntentsTemplateModelEnumMapper stringFromTemplateAlignment:a3];
  [(SAIntentGroupTextSnippetTemplate *)self setAlignment:v4];
}

@end