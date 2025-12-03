@interface SAIntentGroupLabelTemplateComponent
- (unint64_t)style;
- (void)setStyle:(unint64_t)style;
@end

@implementation SAIntentGroupLabelTemplateComponent

- (unint64_t)style
{
  labelTemplateComponentStyle = [(SAIntentGroupLabelTemplateComponent *)self labelTemplateComponentStyle];
  v3 = [SiriIntentsTemplateModelEnumMapper componentLabelStyleFromString:labelTemplateComponentStyle];

  return v3;
}

- (void)setStyle:(unint64_t)style
{
  v4 = [SiriIntentsTemplateModelEnumMapper stringFromComponentLabelStyle:style];
  [(SAIntentGroupLabelTemplateComponent *)self setLabelTemplateComponentStyle:v4];
}

@end