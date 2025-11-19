@interface CLKComplicationTemplateGraphicExtraLargeCircularOpenGaugeViewBridge
- (id)serializableCopyWithImageProviders:(id)a3;
- (id)viewDataKeyForSwiftUIViewKey:(id)a3;
@end

@implementation CLKComplicationTemplateGraphicExtraLargeCircularOpenGaugeViewBridge

- (id)viewDataKeyForSwiftUIViewKey:(id)a3
{
  if ([a3 isEqualToString:@"bottomLabel"])
  {
    return @"bottomLabelData";
  }

  else
  {
    return 0;
  }
}

- (id)serializableCopyWithImageProviders:(id)a3
{
  v4 = a3;
  v5 = [CLKComplicationTemplateGraphicExtraLargeCircularOpenGaugeImage alloc];
  v6 = [(CLKComplicationTemplateGraphicExtraLargeCircularOpenGaugeViewBridge *)self gaugeProvider];
  v7 = [v4 objectForKeyedSubscript:@"bottomLabelData"];

  v8 = [(CLKComplicationTemplateGraphicExtraLargeCircularOpenGaugeViewBridge *)self centerTextProvider];
  v9 = [(CLKComplicationTemplateGraphicExtraLargeCircularOpenGaugeImage *)v5 initWithGaugeProvider:v6 bottomImageProvider:v7 centerTextProvider:v8];

  [(CLKComplicationTemplate *)v9 setSdkVersion:[(CLKComplicationTemplate *)self sdkVersion]];

  return v9;
}

@end