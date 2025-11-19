@interface CLKComplicationTemplateGraphicCircularOpenGaugeViewBridge
- (id)serializableCopyWithImageProviders:(id)a3;
- (id)viewDataKeyForSwiftUIViewKey:(id)a3;
@end

@implementation CLKComplicationTemplateGraphicCircularOpenGaugeViewBridge

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
  v5 = [CLKComplicationTemplateGraphicCircularOpenGaugeImage alloc];
  v6 = [(CLKComplicationTemplateGraphicCircularOpenGaugeViewBridge *)self gaugeProvider];
  v7 = [v4 objectForKeyedSubscript:@"bottomLabelData"];

  v8 = [(CLKComplicationTemplateGraphicCircularOpenGaugeViewBridge *)self centerTextProvider];
  v9 = [(CLKComplicationTemplateGraphicCircularOpenGaugeImage *)v5 initWithGaugeProvider:v6 bottomImageProvider:v7 centerTextProvider:v8];

  [(CLKComplicationTemplate *)v9 setSdkVersion:[(CLKComplicationTemplate *)self sdkVersion]];

  return v9;
}

@end