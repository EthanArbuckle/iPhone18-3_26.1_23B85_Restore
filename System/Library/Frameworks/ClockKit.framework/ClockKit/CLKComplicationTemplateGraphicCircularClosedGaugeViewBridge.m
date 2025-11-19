@interface CLKComplicationTemplateGraphicCircularClosedGaugeViewBridge
- (id)serializableCopyWithImageProviders:(id)a3;
- (id)viewDataKeyForSwiftUIViewKey:(id)a3;
@end

@implementation CLKComplicationTemplateGraphicCircularClosedGaugeViewBridge

- (id)viewDataKeyForSwiftUIViewKey:(id)a3
{
  if ([a3 isEqualToString:@"label"])
  {
    return @"labelData";
  }

  else
  {
    return 0;
  }
}

- (id)serializableCopyWithImageProviders:(id)a3
{
  v4 = a3;
  v5 = [CLKComplicationTemplateGraphicCircularClosedGaugeImage alloc];
  v6 = [(CLKComplicationTemplateGraphicCircularClosedGaugeViewBridge *)self gaugeProvider];
  v7 = [v4 objectForKeyedSubscript:@"labelData"];

  v8 = [(CLKComplicationTemplateGraphicCircularClosedGaugeImage *)v5 initWithGaugeProvider:v6 imageProvider:v7];
  [(CLKComplicationTemplate *)v8 setSdkVersion:[(CLKComplicationTemplate *)self sdkVersion]];

  return v8;
}

@end