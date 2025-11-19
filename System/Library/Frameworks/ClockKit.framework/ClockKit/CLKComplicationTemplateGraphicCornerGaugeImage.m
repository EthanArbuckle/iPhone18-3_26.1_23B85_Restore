@interface CLKComplicationTemplateGraphicCornerGaugeImage
+ (CLKComplicationTemplateGraphicCornerGaugeImage)templateWithGaugeProvider:(CLKGaugeProvider *)gaugeProvider imageProvider:(CLKFullColorImageProvider *)imageProvider;
+ (CLKComplicationTemplateGraphicCornerGaugeImage)templateWithGaugeProvider:(CLKGaugeProvider *)gaugeProvider leadingTextProvider:(CLKTextProvider *)leadingTextProvider trailingTextProvider:(CLKTextProvider *)trailingTextProvider imageProvider:(CLKFullColorImageProvider *)imageProvider;
- (CLKComplicationTemplateGraphicCornerGaugeImage)initWithGaugeProvider:(CLKGaugeProvider *)gaugeProvider leadingTextProvider:(CLKTextProvider *)leadingTextProvider trailingTextProvider:(CLKTextProvider *)trailingTextProvider imageProvider:(CLKFullColorImageProvider *)imageProvider;
- (void)_enumerateFullColorImageProviderKeysWithBlock:(id)a3;
- (void)_enumerateTextProviderKeysWithBlock:(id)a3;
@end

@implementation CLKComplicationTemplateGraphicCornerGaugeImage

- (CLKComplicationTemplateGraphicCornerGaugeImage)initWithGaugeProvider:(CLKGaugeProvider *)gaugeProvider leadingTextProvider:(CLKTextProvider *)leadingTextProvider trailingTextProvider:(CLKTextProvider *)trailingTextProvider imageProvider:(CLKFullColorImageProvider *)imageProvider
{
  v10 = gaugeProvider;
  v11 = leadingTextProvider;
  v12 = trailingTextProvider;
  v13 = imageProvider;
  v17.receiver = self;
  v17.super_class = CLKComplicationTemplateGraphicCornerGaugeImage;
  v14 = [(CLKComplicationTemplate *)&v17 initPrivate];
  v15 = v14;
  if (v14)
  {
    [(CLKComplicationTemplateGraphicCornerGaugeImage *)v14 setGaugeProvider:v10];
    [(CLKComplicationTemplateGraphicCornerGaugeImage *)v15 setLeadingTextProvider:v11];
    [(CLKComplicationTemplateGraphicCornerGaugeImage *)v15 setTrailingTextProvider:v12];
    [(CLKComplicationTemplateGraphicCornerGaugeImage *)v15 setImageProvider:v13];
  }

  return v15;
}

+ (CLKComplicationTemplateGraphicCornerGaugeImage)templateWithGaugeProvider:(CLKGaugeProvider *)gaugeProvider imageProvider:(CLKFullColorImageProvider *)imageProvider
{
  v6 = imageProvider;
  v7 = gaugeProvider;
  v8 = [[a1 alloc] initWithGaugeProvider:v7 imageProvider:v6];

  return v8;
}

+ (CLKComplicationTemplateGraphicCornerGaugeImage)templateWithGaugeProvider:(CLKGaugeProvider *)gaugeProvider leadingTextProvider:(CLKTextProvider *)leadingTextProvider trailingTextProvider:(CLKTextProvider *)trailingTextProvider imageProvider:(CLKFullColorImageProvider *)imageProvider
{
  v10 = imageProvider;
  v11 = trailingTextProvider;
  v12 = leadingTextProvider;
  v13 = gaugeProvider;
  v14 = [[a1 alloc] initWithGaugeProvider:v13 leadingTextProvider:v12 trailingTextProvider:v11 imageProvider:v10];

  return v14;
}

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

- (void)_enumerateFullColorImageProviderKeysWithBlock:(id)a3
{
  v4 = a3;
  v5 = +[CLKRenderingContext sharedRenderingContext];
  v6 = [v5 device];

  __96__CLKComplicationTemplateGraphicCornerGaugeImage__enumerateFullColorImageProviderKeysWithBlock___block_invoke(v7, v6);
  v8 = *&qword_27DE919C0;
  v9 = *&_enumerateFullColorImageProviderKeysWithBlock___imageDiameter[[(CLKComplicationTemplate *)self sdkVersion]];
  v11 = 0;
  v10 = [MEMORY[0x277CCABB0] numberWithDouble:*&_enumerateFullColorImageProviderKeysWithBlock___pointSize];
  v4[2](v4, @"imageProvider", 0, 1, v10, 4, &v11, v9, v9, v8, v8, v8 * 0.5);
}

uint64_t __96__CLKComplicationTemplateGraphicCornerGaugeImage__enumerateFullColorImageProviderKeysWithBlock___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&NTKRichComplicationViewUsePlatterKey_block_invoke_5_lock);
  if (NTKRichComplicationViewUsePlatterKey_block_invoke_5___cachedDevice)
  {
    v3 = NTKRichComplicationViewUsePlatterKey_block_invoke_5___cachedDevice == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == NTKRichComplicationViewUsePlatterKey_block_invoke_5___previousCLKDeviceVersion))
  {
    v5 = NTKRichComplicationViewUsePlatterKey_block_invoke_5_value;
  }

  else
  {
    NTKRichComplicationViewUsePlatterKey_block_invoke_5___cachedDevice = v2;
    NTKRichComplicationViewUsePlatterKey_block_invoke_5___previousCLKDeviceVersion = [v2 version];
    __96__CLKComplicationTemplateGraphicCornerGaugeImage__enumerateFullColorImageProviderKeysWithBlock___block_invoke_3(NTKRichComplicationViewUsePlatterKey_block_invoke_5___previousCLKDeviceVersion, v2);
    v5 = 1;
    NTKRichComplicationViewUsePlatterKey_block_invoke_5_value = 1;
  }

  os_unfair_lock_unlock(&NTKRichComplicationViewUsePlatterKey_block_invoke_5_lock);

  return v5;
}

void __96__CLKComplicationTemplateGraphicCornerGaugeImage__enumerateFullColorImageProviderKeysWithBlock___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v5 = [CLKDeviceMetrics metricsWithDevice:a2 identitySizeClass:2];
  [v5 scaledValue:16.0];
  _enumerateFullColorImageProviderKeysWithBlock___pointSize = v2;
  [v5 scaledValue:20.0];
  qword_27DE919C0 = v3;
  [v5 setNewestAllowedSizeClass:&unk_284A34128];
  [v5 scaledValue:20.0];
  _enumerateFullColorImageProviderKeysWithBlock___imageDiameter = v4;
}

@end