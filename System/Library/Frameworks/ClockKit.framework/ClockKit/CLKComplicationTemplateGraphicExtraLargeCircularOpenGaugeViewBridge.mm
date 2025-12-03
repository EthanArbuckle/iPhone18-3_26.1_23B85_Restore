@interface CLKComplicationTemplateGraphicExtraLargeCircularOpenGaugeViewBridge
- (id)serializableCopyWithImageProviders:(id)providers;
- (id)viewDataKeyForSwiftUIViewKey:(id)key;
@end

@implementation CLKComplicationTemplateGraphicExtraLargeCircularOpenGaugeViewBridge

- (id)viewDataKeyForSwiftUIViewKey:(id)key
{
  if ([key isEqualToString:@"bottomLabel"])
  {
    return @"bottomLabelData";
  }

  else
  {
    return 0;
  }
}

- (id)serializableCopyWithImageProviders:(id)providers
{
  providersCopy = providers;
  v5 = [CLKComplicationTemplateGraphicExtraLargeCircularOpenGaugeImage alloc];
  gaugeProvider = [(CLKComplicationTemplateGraphicExtraLargeCircularOpenGaugeViewBridge *)self gaugeProvider];
  v7 = [providersCopy objectForKeyedSubscript:@"bottomLabelData"];

  centerTextProvider = [(CLKComplicationTemplateGraphicExtraLargeCircularOpenGaugeViewBridge *)self centerTextProvider];
  v9 = [(CLKComplicationTemplateGraphicExtraLargeCircularOpenGaugeImage *)v5 initWithGaugeProvider:gaugeProvider bottomImageProvider:v7 centerTextProvider:centerTextProvider];

  [(CLKComplicationTemplate *)v9 setSdkVersion:[(CLKComplicationTemplate *)self sdkVersion]];

  return v9;
}

@end