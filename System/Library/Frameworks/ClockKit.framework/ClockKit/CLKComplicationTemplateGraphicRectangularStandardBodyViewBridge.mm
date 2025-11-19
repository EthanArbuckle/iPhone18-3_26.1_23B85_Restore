@interface CLKComplicationTemplateGraphicRectangularStandardBodyViewBridge
- (id)serializableCopyWithImageProviders:(id)a3;
- (id)viewDataKeyForSwiftUIViewKey:(id)a3;
- (void)_enumerateTextProviderKeysWithBlock:(id)a3;
@end

@implementation CLKComplicationTemplateGraphicRectangularStandardBodyViewBridge

- (void)_enumerateTextProviderKeysWithBlock:(id)a3
{
  v3 = a3;
  v4 = 0;
  v3[2](v3, @"headerTextProvider", 0, 1, &v4);
  if ((v4 & 1) == 0)
  {
    v3[2](v3, @"body1TextProvider", 0, 1, &v4);
    if ((v4 & 1) == 0)
    {
      v3[2](v3, @"body2TextProvider", 1, 1, &v4);
    }
  }
}

- (id)viewDataKeyForSwiftUIViewKey:(id)a3
{
  if ([a3 isEqualToString:@"headerLabel"])
  {
    return @"headerLabelData";
  }

  else
  {
    return 0;
  }
}

- (id)serializableCopyWithImageProviders:(id)a3
{
  v4 = a3;
  v5 = [CLKComplicationTemplateGraphicRectangularStandardBody alloc];
  v6 = [v4 objectForKeyedSubscript:@"headerLabelData"];

  v7 = [(CLKComplicationTemplateGraphicRectangularStandardBodyViewBridge *)self headerTextProvider];
  v8 = [(CLKComplicationTemplateGraphicRectangularStandardBodyViewBridge *)self body1TextProvider];
  v9 = [(CLKComplicationTemplateGraphicRectangularStandardBodyViewBridge *)self body2TextProvider];
  v10 = [(CLKComplicationTemplateGraphicRectangularStandardBody *)v5 initWithHeaderImageProvider:v6 headerTextProvider:v7 body1TextProvider:v8 body2TextProvider:v9];

  [(CLKComplicationTemplate *)v10 setSdkVersion:[(CLKComplicationTemplate *)self sdkVersion]];

  return v10;
}

@end