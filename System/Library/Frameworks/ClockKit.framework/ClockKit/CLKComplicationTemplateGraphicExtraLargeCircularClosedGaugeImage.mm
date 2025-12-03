@interface CLKComplicationTemplateGraphicExtraLargeCircularClosedGaugeImage
+ (CLKComplicationTemplateGraphicExtraLargeCircularClosedGaugeImage)templateWithGaugeProvider:(CLKGaugeProvider *)gaugeProvider imageProvider:(CLKFullColorImageProvider *)imageProvider;
- (CLKComplicationTemplateGraphicExtraLargeCircularClosedGaugeImage)initWithGaugeProvider:(CLKGaugeProvider *)gaugeProvider imageProvider:(CLKFullColorImageProvider *)imageProvider;
- (void)_enumerateFullColorImageProviderKeysWithBlock:(id)block;
@end

@implementation CLKComplicationTemplateGraphicExtraLargeCircularClosedGaugeImage

- (CLKComplicationTemplateGraphicExtraLargeCircularClosedGaugeImage)initWithGaugeProvider:(CLKGaugeProvider *)gaugeProvider imageProvider:(CLKFullColorImageProvider *)imageProvider
{
  v6 = gaugeProvider;
  v7 = imageProvider;
  v11.receiver = self;
  v11.super_class = CLKComplicationTemplateGraphicExtraLargeCircularClosedGaugeImage;
  initPrivate = [(CLKComplicationTemplate *)&v11 initPrivate];
  v9 = initPrivate;
  if (initPrivate)
  {
    [(CLKComplicationTemplateGraphicExtraLargeCircularClosedGaugeImage *)initPrivate setGaugeProvider:v6];
    [(CLKComplicationTemplateGraphicExtraLargeCircularClosedGaugeImage *)v9 setImageProvider:v7];
  }

  return v9;
}

+ (CLKComplicationTemplateGraphicExtraLargeCircularClosedGaugeImage)templateWithGaugeProvider:(CLKGaugeProvider *)gaugeProvider imageProvider:(CLKFullColorImageProvider *)imageProvider
{
  v6 = imageProvider;
  v7 = gaugeProvider;
  v8 = [[self alloc] initWithGaugeProvider:v7 imageProvider:v6];

  return v8;
}

- (void)_enumerateFullColorImageProviderKeysWithBlock:(id)block
{
  blockCopy = block;
  v5 = +[CLKRenderingContext sharedRenderingContext];
  device = [v5 device];

  __114__CLKComplicationTemplateGraphicExtraLargeCircularClosedGaugeImage__enumerateFullColorImageProviderKeysWithBlock___block_invoke(v7, device);
  v8 = *&qword_27DE91E00;
  v9 = *&_enumerateFullColorImageProviderKeysWithBlock___imageDiameter_1670[[(CLKComplicationTemplate *)self sdkVersion]];
  v11 = 0;
  v10 = [MEMORY[0x277CCABB0] numberWithDouble:*&_enumerateFullColorImageProviderKeysWithBlock___pointSize_1671];
  blockCopy[2](blockCopy, @"imageProvider", 0, 1, v10, 4, &v11, v9, v9, v8, v8, v8 * 0.5);
}

uint64_t __114__CLKComplicationTemplateGraphicExtraLargeCircularClosedGaugeImage__enumerateFullColorImageProviderKeysWithBlock___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&NTKRichComplicationViewUsePlatterKey_block_invoke_27_lock);
  if (NTKRichComplicationViewUsePlatterKey_block_invoke_27___cachedDevice)
  {
    v3 = NTKRichComplicationViewUsePlatterKey_block_invoke_27___cachedDevice == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == NTKRichComplicationViewUsePlatterKey_block_invoke_27___previousCLKDeviceVersion))
  {
    v5 = NTKRichComplicationViewUsePlatterKey_block_invoke_27_value;
  }

  else
  {
    NTKRichComplicationViewUsePlatterKey_block_invoke_27___cachedDevice = v2;
    NTKRichComplicationViewUsePlatterKey_block_invoke_27___previousCLKDeviceVersion = [v2 version];
    __114__CLKComplicationTemplateGraphicExtraLargeCircularClosedGaugeImage__enumerateFullColorImageProviderKeysWithBlock___block_invoke_3(NTKRichComplicationViewUsePlatterKey_block_invoke_27___previousCLKDeviceVersion, v2);
    v5 = 1;
    NTKRichComplicationViewUsePlatterKey_block_invoke_27_value = 1;
  }

  os_unfair_lock_unlock(&NTKRichComplicationViewUsePlatterKey_block_invoke_27_lock);

  return v5;
}

void __114__CLKComplicationTemplateGraphicExtraLargeCircularClosedGaugeImage__enumerateFullColorImageProviderKeysWithBlock___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [CLKDeviceMetrics metricsWithDevice:v2 identitySizeClass:3];
  v4 = CLKComplicationGraphicExtraLargeCircularScalingFactor();

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __114__CLKComplicationTemplateGraphicExtraLargeCircularClosedGaugeImage__enumerateFullColorImageProviderKeysWithBlock___block_invoke_4;
  v7[3] = &__block_descriptor_40_e26_d16__0__CLKDeviceMetrics_8l;
  *&v7[4] = v4;
  v5 = MEMORY[0x2383C4AF0](v7);
  [v3 scaledValue:v4 * 19.0];
  _enumerateFullColorImageProviderKeysWithBlock___pointSize_1671 = v6;
  qword_27DE91E00 = (v5)[2](v5, v3);
  [v3 setNewestAllowedSizeClass:&unk_284A34128];
  _enumerateFullColorImageProviderKeysWithBlock___imageDiameter_1670 = (v5)[2](v5, v3);
}

@end