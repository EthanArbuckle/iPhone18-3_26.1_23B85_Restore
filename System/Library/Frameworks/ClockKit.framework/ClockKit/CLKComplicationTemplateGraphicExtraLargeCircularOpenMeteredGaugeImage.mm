@interface CLKComplicationTemplateGraphicExtraLargeCircularOpenMeteredGaugeImage
- (void)_enumerateFullColorImageProviderKeysWithBlock:(id)a3;
@end

@implementation CLKComplicationTemplateGraphicExtraLargeCircularOpenMeteredGaugeImage

- (void)_enumerateFullColorImageProviderKeysWithBlock:(id)a3
{
  v4 = a3;
  v5 = +[CLKRenderingContext sharedRenderingContext];
  v6 = [v5 device];

  __119__CLKComplicationTemplateGraphicExtraLargeCircularOpenMeteredGaugeImage__enumerateFullColorImageProviderKeysWithBlock___block_invoke(v7, v6);
  v8 = *&qword_27DE91E68;
  v9 = *&_enumerateFullColorImageProviderKeysWithBlock___imageDiameter_1709[[(CLKComplicationTemplate *)self sdkVersion]];
  v11 = 0;
  v10 = [MEMORY[0x277CCABB0] numberWithDouble:*&_enumerateFullColorImageProviderKeysWithBlock___pointSize_1710];
  v4[2](v4, @"imageProvider", 1, 1, v10, 4, &v11, v9, v9, v8, v8, v8 * 0.5);
}

uint64_t __119__CLKComplicationTemplateGraphicExtraLargeCircularOpenMeteredGaugeImage__enumerateFullColorImageProviderKeysWithBlock___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&NTKRichComplicationViewUsePlatterKey_block_invoke_29_lock);
  if (NTKRichComplicationViewUsePlatterKey_block_invoke_29___cachedDevice)
  {
    v3 = NTKRichComplicationViewUsePlatterKey_block_invoke_29___cachedDevice == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == NTKRichComplicationViewUsePlatterKey_block_invoke_29___previousCLKDeviceVersion))
  {
    v5 = NTKRichComplicationViewUsePlatterKey_block_invoke_29_value;
  }

  else
  {
    NTKRichComplicationViewUsePlatterKey_block_invoke_29___cachedDevice = v2;
    NTKRichComplicationViewUsePlatterKey_block_invoke_29___previousCLKDeviceVersion = [v2 version];
    __119__CLKComplicationTemplateGraphicExtraLargeCircularOpenMeteredGaugeImage__enumerateFullColorImageProviderKeysWithBlock___block_invoke_3(NTKRichComplicationViewUsePlatterKey_block_invoke_29___previousCLKDeviceVersion, v2);
    v5 = 1;
    NTKRichComplicationViewUsePlatterKey_block_invoke_29_value = 1;
  }

  os_unfair_lock_unlock(&NTKRichComplicationViewUsePlatterKey_block_invoke_29_lock);

  return v5;
}

void __119__CLKComplicationTemplateGraphicExtraLargeCircularOpenMeteredGaugeImage__enumerateFullColorImageProviderKeysWithBlock___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [CLKDeviceMetrics metricsWithDevice:v2 identitySizeClass:3];
  v4 = CLKComplicationGraphicExtraLargeCircularScalingFactor();

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __119__CLKComplicationTemplateGraphicExtraLargeCircularOpenMeteredGaugeImage__enumerateFullColorImageProviderKeysWithBlock___block_invoke_4;
  v7[3] = &__block_descriptor_40_e26_d16__0__CLKDeviceMetrics_8l;
  *&v7[4] = v4;
  v5 = MEMORY[0x2383C4AF0](v7);
  [v3 scaledValue:v4 * 19.0];
  _enumerateFullColorImageProviderKeysWithBlock___pointSize_1710 = v6;
  qword_27DE91E68 = (v5)[2](v5, v3);
  [v3 setNewestAllowedSizeClass:&unk_284A34128];
  _enumerateFullColorImageProviderKeysWithBlock___imageDiameter_1709 = (v5)[2](v5, v3);
}

@end