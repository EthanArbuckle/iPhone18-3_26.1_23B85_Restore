@interface CLKComplicationTemplateGraphicCornerGaugeViewBridge
- (id)serializableCopyWithImageProviders:(id)a3;
- (id)viewDataKeyForSwiftUIViewKey:(id)a3;
- (void)_enumerateTextProviderKeysWithBlock:(id)a3;
@end

@implementation CLKComplicationTemplateGraphicCornerGaugeViewBridge

- (void)_enumerateTextProviderKeysWithBlock:(id)a3
{
  v3 = a3;
  v4 = 0;
  v3[2](v3, @"leadingTextProvider", 1, 1, &v4);
  if ((v4 & 1) == 0)
  {
    v3[2](v3, @"trailingTextProvider", 1, 1, &v4);
  }
}

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
  v5 = [CLKComplicationTemplateGraphicCornerGaugeImage alloc];
  v6 = [(CLKComplicationTemplateGraphicCornerGaugeViewBridge *)self gaugeProvider];
  v7 = [(CLKComplicationTemplateGraphicCornerGaugeViewBridge *)self leadingTextProvider];
  v8 = [(CLKComplicationTemplateGraphicCornerGaugeViewBridge *)self trailingTextProvider];
  v9 = [v4 objectForKeyedSubscript:@"labelData"];

  v10 = [(CLKComplicationTemplateGraphicCornerGaugeImage *)v5 initWithGaugeProvider:v6 leadingTextProvider:v7 trailingTextProvider:v8 imageProvider:v9];
  [(CLKComplicationTemplate *)v10 setSdkVersion:[(CLKComplicationTemplate *)self sdkVersion]];

  return v10;
}

@end