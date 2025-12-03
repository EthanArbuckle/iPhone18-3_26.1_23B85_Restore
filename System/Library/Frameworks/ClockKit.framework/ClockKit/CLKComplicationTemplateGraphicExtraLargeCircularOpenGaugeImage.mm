@interface CLKComplicationTemplateGraphicExtraLargeCircularOpenGaugeImage
+ (CLKComplicationTemplateGraphicExtraLargeCircularOpenGaugeImage)templateWithGaugeProvider:(CLKGaugeProvider *)gaugeProvider bottomImageProvider:(CLKFullColorImageProvider *)bottomImageProvider centerTextProvider:(CLKTextProvider *)centerTextProvider;
- (CLKComplicationTemplateGraphicExtraLargeCircularOpenGaugeImage)initWithGaugeProvider:(CLKGaugeProvider *)gaugeProvider bottomImageProvider:(CLKFullColorImageProvider *)bottomImageProvider centerTextProvider:(CLKTextProvider *)centerTextProvider;
- (void)_enumerateFullColorImageProviderKeysWithBlock:(id)block;
@end

@implementation CLKComplicationTemplateGraphicExtraLargeCircularOpenGaugeImage

- (CLKComplicationTemplateGraphicExtraLargeCircularOpenGaugeImage)initWithGaugeProvider:(CLKGaugeProvider *)gaugeProvider bottomImageProvider:(CLKFullColorImageProvider *)bottomImageProvider centerTextProvider:(CLKTextProvider *)centerTextProvider
{
  v8 = gaugeProvider;
  v9 = bottomImageProvider;
  v10 = centerTextProvider;
  v14.receiver = self;
  v14.super_class = CLKComplicationTemplateGraphicExtraLargeCircularOpenGaugeImage;
  initPrivate = [(CLKComplicationTemplate *)&v14 initPrivate];
  v12 = initPrivate;
  if (initPrivate)
  {
    [(CLKComplicationTemplateGraphicExtraLargeCircularOpenGaugeImage *)initPrivate setGaugeProvider:v8];
    [(CLKComplicationTemplateGraphicExtraLargeCircularOpenGaugeImage *)v12 setBottomImageProvider:v9];
    [(CLKComplicationTemplateGraphicExtraLargeCircularOpenGaugeImage *)v12 setCenterTextProvider:v10];
  }

  return v12;
}

+ (CLKComplicationTemplateGraphicExtraLargeCircularOpenGaugeImage)templateWithGaugeProvider:(CLKGaugeProvider *)gaugeProvider bottomImageProvider:(CLKFullColorImageProvider *)bottomImageProvider centerTextProvider:(CLKTextProvider *)centerTextProvider
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

  __112__CLKComplicationTemplateGraphicExtraLargeCircularOpenGaugeImage__enumerateFullColorImageProviderKeysWithBlock___block_invoke(v7, device);
  v8 = *&qword_27DE91DD0;
  v9 = *&_enumerateFullColorImageProviderKeysWithBlock___imageDiameter_1649[[(CLKComplicationTemplate *)self sdkVersion]];
  v11 = 0;
  v10 = [MEMORY[0x277CCABB0] numberWithDouble:*&_enumerateFullColorImageProviderKeysWithBlock___pointSize_1650];
  blockCopy[2](blockCopy, @"bottomImageProvider", 0, 1, v10, 4, &v11, v9, v9, v8, v8, v8 * 0.5);
}

uint64_t __112__CLKComplicationTemplateGraphicExtraLargeCircularOpenGaugeImage__enumerateFullColorImageProviderKeysWithBlock___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&NTKRichComplicationViewUsePlatterKey_block_invoke_26_lock);
  if (NTKRichComplicationViewUsePlatterKey_block_invoke_26___cachedDevice)
  {
    v3 = NTKRichComplicationViewUsePlatterKey_block_invoke_26___cachedDevice == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == NTKRichComplicationViewUsePlatterKey_block_invoke_26___previousCLKDeviceVersion))
  {
    v5 = NTKRichComplicationViewUsePlatterKey_block_invoke_26_value;
  }

  else
  {
    NTKRichComplicationViewUsePlatterKey_block_invoke_26___cachedDevice = v2;
    NTKRichComplicationViewUsePlatterKey_block_invoke_26___previousCLKDeviceVersion = [v2 version];
    __112__CLKComplicationTemplateGraphicExtraLargeCircularOpenGaugeImage__enumerateFullColorImageProviderKeysWithBlock___block_invoke_3(NTKRichComplicationViewUsePlatterKey_block_invoke_26___previousCLKDeviceVersion, v2);
    v5 = 1;
    NTKRichComplicationViewUsePlatterKey_block_invoke_26_value = 1;
  }

  os_unfair_lock_unlock(&NTKRichComplicationViewUsePlatterKey_block_invoke_26_lock);

  return v5;
}

void __112__CLKComplicationTemplateGraphicExtraLargeCircularOpenGaugeImage__enumerateFullColorImageProviderKeysWithBlock___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [CLKDeviceMetrics metricsWithDevice:v2 identitySizeClass:3];
  v4 = CLKComplicationGraphicExtraLargeCircularScalingFactor();

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __112__CLKComplicationTemplateGraphicExtraLargeCircularOpenGaugeImage__enumerateFullColorImageProviderKeysWithBlock___block_invoke_4;
  v7[3] = &__block_descriptor_40_e26_d16__0__CLKDeviceMetrics_8l;
  *&v7[4] = v4;
  v5 = MEMORY[0x2383C4AF0](v7);
  [v3 scaledValue:v4 * 11.0];
  _enumerateFullColorImageProviderKeysWithBlock___pointSize_1650 = v6;
  qword_27DE91DD0 = (v5)[2](v5, v3);
  [v3 setNewestAllowedSizeClass:&unk_284A34128];
  _enumerateFullColorImageProviderKeysWithBlock___imageDiameter_1649 = (v5)[2](v5, v3);
}

@end