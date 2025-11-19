@interface CLKComplicationTemplateGraphicRectangularTextGaugeViewBridge
- (id)serializableCopyWithImageProviders:(id)a3;
- (id)viewDataKeyForSwiftUIViewKey:(id)a3;
- (void)_enumerateTextProviderKeysWithBlock:(id)a3;
@end

@implementation CLKComplicationTemplateGraphicRectangularTextGaugeViewBridge

- (void)_enumerateTextProviderKeysWithBlock:(id)a3
{
  v3 = a3;
  v4 = 0;
  v3[2](v3, @"headerTextProvider", 0, 1, &v4);
  if ((v4 & 1) == 0)
  {
    v3[2](v3, @"bodyTextProvider", 0, 1, &v4);
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
  v5 = [CLKComplicationTemplateGraphicRectangularTextGauge alloc];
  v6 = [v4 objectForKeyedSubscript:@"headerLabelData"];

  v7 = [(CLKComplicationTemplateGraphicRectangularTextGaugeViewBridge *)self headerTextProvider];
  v8 = [(CLKComplicationTemplateGraphicRectangularTextGaugeViewBridge *)self bodyTextProvider];
  v9 = [(CLKComplicationTemplateGraphicRectangularTextGaugeViewBridge *)self gaugeProvider];
  v10 = [(CLKComplicationTemplateGraphicRectangularTextGauge *)v5 initWithHeaderImageProvider:v6 headerTextProvider:v7 body1TextProvider:v8 gaugeProvider:v9];

  [(CLKComplicationTemplate *)v10 setSdkVersion:[(CLKComplicationTemplate *)self sdkVersion]];

  return v10;
}

@end