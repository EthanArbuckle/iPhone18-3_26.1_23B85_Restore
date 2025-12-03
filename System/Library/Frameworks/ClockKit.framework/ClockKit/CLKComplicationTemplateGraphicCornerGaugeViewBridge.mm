@interface CLKComplicationTemplateGraphicCornerGaugeViewBridge
- (id)serializableCopyWithImageProviders:(id)providers;
- (id)viewDataKeyForSwiftUIViewKey:(id)key;
- (void)_enumerateTextProviderKeysWithBlock:(id)block;
@end

@implementation CLKComplicationTemplateGraphicCornerGaugeViewBridge

- (void)_enumerateTextProviderKeysWithBlock:(id)block
{
  blockCopy = block;
  v4 = 0;
  blockCopy[2](blockCopy, @"leadingTextProvider", 1, 1, &v4);
  if ((v4 & 1) == 0)
  {
    blockCopy[2](blockCopy, @"trailingTextProvider", 1, 1, &v4);
  }
}

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
  v5 = [CLKComplicationTemplateGraphicCornerGaugeImage alloc];
  gaugeProvider = [(CLKComplicationTemplateGraphicCornerGaugeViewBridge *)self gaugeProvider];
  leadingTextProvider = [(CLKComplicationTemplateGraphicCornerGaugeViewBridge *)self leadingTextProvider];
  trailingTextProvider = [(CLKComplicationTemplateGraphicCornerGaugeViewBridge *)self trailingTextProvider];
  v9 = [providersCopy objectForKeyedSubscript:@"labelData"];

  v10 = [(CLKComplicationTemplateGraphicCornerGaugeImage *)v5 initWithGaugeProvider:gaugeProvider leadingTextProvider:leadingTextProvider trailingTextProvider:trailingTextProvider imageProvider:v9];
  [(CLKComplicationTemplate *)v10 setSdkVersion:[(CLKComplicationTemplate *)self sdkVersion]];

  return v10;
}

@end