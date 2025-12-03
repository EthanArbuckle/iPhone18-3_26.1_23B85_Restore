@interface CLKComplicationTemplateGraphicCircularOpenGaugeImage
+ (CLKComplicationTemplateGraphicCircularOpenGaugeImage)templateWithGaugeProvider:(CLKGaugeProvider *)gaugeProvider bottomImageProvider:(CLKFullColorImageProvider *)bottomImageProvider centerTextProvider:(CLKTextProvider *)centerTextProvider;
- (CLKComplicationTemplateGraphicCircularOpenGaugeImage)initWithGaugeProvider:(CLKGaugeProvider *)gaugeProvider bottomImageProvider:(CLKFullColorImageProvider *)bottomImageProvider centerTextProvider:(CLKTextProvider *)centerTextProvider;
- (void)_enumerateFullColorImageProviderKeysWithBlock:(id)block;
@end

@implementation CLKComplicationTemplateGraphicCircularOpenGaugeImage

- (CLKComplicationTemplateGraphicCircularOpenGaugeImage)initWithGaugeProvider:(CLKGaugeProvider *)gaugeProvider bottomImageProvider:(CLKFullColorImageProvider *)bottomImageProvider centerTextProvider:(CLKTextProvider *)centerTextProvider
{
  v8 = gaugeProvider;
  v9 = bottomImageProvider;
  v10 = centerTextProvider;
  v14.receiver = self;
  v14.super_class = CLKComplicationTemplateGraphicCircularOpenGaugeImage;
  initPrivate = [(CLKComplicationTemplate *)&v14 initPrivate];
  v12 = initPrivate;
  if (initPrivate)
  {
    [(CLKComplicationTemplateGraphicCircularOpenGaugeImage *)initPrivate setGaugeProvider:v8];
    [(CLKComplicationTemplateGraphicCircularOpenGaugeImage *)v12 setBottomImageProvider:v9];
    [(CLKComplicationTemplateGraphicCircularOpenGaugeImage *)v12 setCenterTextProvider:v10];
  }

  return v12;
}

+ (CLKComplicationTemplateGraphicCircularOpenGaugeImage)templateWithGaugeProvider:(CLKGaugeProvider *)gaugeProvider bottomImageProvider:(CLKFullColorImageProvider *)bottomImageProvider centerTextProvider:(CLKTextProvider *)centerTextProvider
{
  v8 = centerTextProvider;
  v9 = bottomImageProvider;
  v10 = gaugeProvider;
  v11 = [[self alloc] initWithGaugeProvider:v10 bottomImageProvider:v9 centerTextProvider:v8];

  return v11;
}

- (void)_enumerateFullColorImageProviderKeysWithBlock:(id)block
{
  blockCopy = block;
  v5 = +[CLKRenderingContext sharedRenderingContext];
  device = [v5 device];

  __102__CLKComplicationTemplateGraphicCircularOpenGaugeImage__enumerateFullColorImageProviderKeysWithBlock___block_invoke(v7, device);
  v8 = *&qword_27DE91B10;
  v9 = *&_enumerateFullColorImageProviderKeysWithBlock___imageDiameter_1336[[(CLKComplicationTemplate *)self sdkVersion]];
  v11 = 0;
  v10 = [MEMORY[0x277CCABB0] numberWithDouble:*&_enumerateFullColorImageProviderKeysWithBlock___pointSize_1337];
  blockCopy[2](blockCopy, @"bottomImageProvider", 0, 1, v10, 4, &v11, v9, v9, v8, v8, v8 * 0.5);
}

uint64_t __102__CLKComplicationTemplateGraphicCircularOpenGaugeImage__enumerateFullColorImageProviderKeysWithBlock___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&NTKRichComplicationViewUsePlatterKey_block_invoke_12_lock);
  if (NTKRichComplicationViewUsePlatterKey_block_invoke_12___cachedDevice)
  {
    v3 = NTKRichComplicationViewUsePlatterKey_block_invoke_12___cachedDevice == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == NTKRichComplicationViewUsePlatterKey_block_invoke_12___previousCLKDeviceVersion))
  {
    v5 = NTKRichComplicationViewUsePlatterKey_block_invoke_12_value;
  }

  else
  {
    NTKRichComplicationViewUsePlatterKey_block_invoke_12___cachedDevice = v2;
    NTKRichComplicationViewUsePlatterKey_block_invoke_12___previousCLKDeviceVersion = [v2 version];
    __102__CLKComplicationTemplateGraphicCircularOpenGaugeImage__enumerateFullColorImageProviderKeysWithBlock___block_invoke_3(NTKRichComplicationViewUsePlatterKey_block_invoke_12___previousCLKDeviceVersion, v2);
    v5 = 1;
    NTKRichComplicationViewUsePlatterKey_block_invoke_12_value = 1;
  }

  os_unfair_lock_unlock(&NTKRichComplicationViewUsePlatterKey_block_invoke_12_lock);

  return v5;
}

void __102__CLKComplicationTemplateGraphicCircularOpenGaugeImage__enumerateFullColorImageProviderKeysWithBlock___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v5 = [CLKDeviceMetrics metricsWithDevice:a2 identitySizeClass:2];
  [v5 scaledValue:11.0];
  _enumerateFullColorImageProviderKeysWithBlock___pointSize_1337 = v2;
  [v5 scaledValue:11.0];
  qword_27DE91B10 = v3;
  [v5 setNewestAllowedSizeClass:&unk_284A34128];
  [v5 scaledValue:11.0];
  _enumerateFullColorImageProviderKeysWithBlock___imageDiameter_1336 = v4;
}

@end