@interface CLKComplicationTemplateGraphicRectangularTextGaugeViewBridge
- (id)serializableCopyWithImageProviders:(id)providers;
- (id)viewDataKeyForSwiftUIViewKey:(id)key;
- (void)_enumerateTextProviderKeysWithBlock:(id)block;
@end

@implementation CLKComplicationTemplateGraphicRectangularTextGaugeViewBridge

- (void)_enumerateTextProviderKeysWithBlock:(id)block
{
  blockCopy = block;
  v4 = 0;
  blockCopy[2](blockCopy, @"headerTextProvider", 0, 1, &v4);
  if ((v4 & 1) == 0)
  {
    blockCopy[2](blockCopy, @"bodyTextProvider", 0, 1, &v4);
  }
}

- (id)viewDataKeyForSwiftUIViewKey:(id)key
{
  if ([key isEqualToString:@"headerLabel"])
  {
    return @"headerLabelData";
  }

  else
  {
    return 0;
  }
}

- (id)serializableCopyWithImageProviders:(id)providers
{
  providersCopy = providers;
  v5 = [CLKComplicationTemplateGraphicRectangularTextGauge alloc];
  v6 = [providersCopy objectForKeyedSubscript:@"headerLabelData"];

  headerTextProvider = [(CLKComplicationTemplateGraphicRectangularTextGaugeViewBridge *)self headerTextProvider];
  bodyTextProvider = [(CLKComplicationTemplateGraphicRectangularTextGaugeViewBridge *)self bodyTextProvider];
  gaugeProvider = [(CLKComplicationTemplateGraphicRectangularTextGaugeViewBridge *)self gaugeProvider];
  v10 = [(CLKComplicationTemplateGraphicRectangularTextGauge *)v5 initWithHeaderImageProvider:v6 headerTextProvider:headerTextProvider body1TextProvider:bodyTextProvider gaugeProvider:gaugeProvider];

  [(CLKComplicationTemplate *)v10 setSdkVersion:[(CLKComplicationTemplate *)self sdkVersion]];

  return v10;
}

@end