@interface CLKComplicationTemplateGraphicCircularClosedGaugeViewBridge
- (id)serializableCopyWithImageProviders:(id)providers;
- (id)viewDataKeyForSwiftUIViewKey:(id)key;
@end

@implementation CLKComplicationTemplateGraphicCircularClosedGaugeViewBridge

- (id)viewDataKeyForSwiftUIViewKey:(id)key
{
  if ([key isEqualToString:@"label"])
  {
    return @"labelData";
  }

  else
  {
    return 0;
  }
}

- (id)serializableCopyWithImageProviders:(id)providers
{
  providersCopy = providers;
  v5 = [CLKComplicationTemplateGraphicCircularClosedGaugeImage alloc];
  gaugeProvider = [(CLKComplicationTemplateGraphicCircularClosedGaugeViewBridge *)self gaugeProvider];
  v7 = [providersCopy objectForKeyedSubscript:@"labelData"];

  v8 = [(CLKComplicationTemplateGraphicCircularClosedGaugeImage *)v5 initWithGaugeProvider:gaugeProvider imageProvider:v7];
  [(CLKComplicationTemplate *)v8 setSdkVersion:[(CLKComplicationTemplate *)self sdkVersion]];

  return v8;
}

@end