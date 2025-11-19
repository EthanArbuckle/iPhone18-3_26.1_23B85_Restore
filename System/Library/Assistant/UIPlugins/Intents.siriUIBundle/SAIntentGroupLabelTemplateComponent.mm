@interface SAIntentGroupLabelTemplateComponent
- (unint64_t)style;
- (void)setStyle:(unint64_t)a3;
@end

@implementation SAIntentGroupLabelTemplateComponent

- (unint64_t)style
{
  v2 = [(SAIntentGroupLabelTemplateComponent *)self labelTemplateComponentStyle];
  v3 = [SiriIntentsTemplateModelEnumMapper componentLabelStyleFromString:v2];

  return v3;
}

- (void)setStyle:(unint64_t)a3
{
  v4 = [SiriIntentsTemplateModelEnumMapper stringFromComponentLabelStyle:a3];
  [(SAIntentGroupLabelTemplateComponent *)self setLabelTemplateComponentStyle:v4];
}

@end