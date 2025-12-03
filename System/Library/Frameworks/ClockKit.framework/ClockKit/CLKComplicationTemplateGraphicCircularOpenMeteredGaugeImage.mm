@interface CLKComplicationTemplateGraphicCircularOpenMeteredGaugeImage
- (void)_enumerateFullColorImageProviderKeysWithBlock:(id)block;
@end

@implementation CLKComplicationTemplateGraphicCircularOpenMeteredGaugeImage

- (void)_enumerateFullColorImageProviderKeysWithBlock:(id)block
{
  blockCopy = block;
  v5 = +[CLKRenderingContext sharedRenderingContext];
  device = [v5 device];

  __109__CLKComplicationTemplateGraphicCircularOpenMeteredGaugeImage__enumerateFullColorImageProviderKeysWithBlock___block_invoke(v7, device);
  v8 = *&qword_27DE91BA8;
  v9 = *&_enumerateFullColorImageProviderKeysWithBlock___imageDiameter_1413[[(CLKComplicationTemplate *)self sdkVersion]];
  v11 = 0;
  v10 = [MEMORY[0x277CCABB0] numberWithDouble:*&_enumerateFullColorImageProviderKeysWithBlock___pointSize_1414];
  blockCopy[2](blockCopy, @"imageProvider", 1, 1, v10, 4, &v11, v9, v9, v8, v8, v8 * 0.5);
}

uint64_t __109__CLKComplicationTemplateGraphicCircularOpenMeteredGaugeImage__enumerateFullColorImageProviderKeysWithBlock___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&NTKRichComplicationViewUsePlatterKey_block_invoke_15_lock);
  if (NTKRichComplicationViewUsePlatterKey_block_invoke_15___cachedDevice)
  {
    v3 = NTKRichComplicationViewUsePlatterKey_block_invoke_15___cachedDevice == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == NTKRichComplicationViewUsePlatterKey_block_invoke_15___previousCLKDeviceVersion))
  {
    v5 = NTKRichComplicationViewUsePlatterKey_block_invoke_15_value;
  }

  else
  {
    NTKRichComplicationViewUsePlatterKey_block_invoke_15___cachedDevice = v2;
    NTKRichComplicationViewUsePlatterKey_block_invoke_15___previousCLKDeviceVersion = [v2 version];
    __109__CLKComplicationTemplateGraphicCircularOpenMeteredGaugeImage__enumerateFullColorImageProviderKeysWithBlock___block_invoke_3(NTKRichComplicationViewUsePlatterKey_block_invoke_15___previousCLKDeviceVersion, v2);
    v5 = 1;
    NTKRichComplicationViewUsePlatterKey_block_invoke_15_value = 1;
  }

  os_unfair_lock_unlock(&NTKRichComplicationViewUsePlatterKey_block_invoke_15_lock);

  return v5;
}

void __109__CLKComplicationTemplateGraphicCircularOpenMeteredGaugeImage__enumerateFullColorImageProviderKeysWithBlock___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v5 = [CLKDeviceMetrics metricsWithDevice:a2 identitySizeClass:2];
  [v5 scaledValue:19.0];
  _enumerateFullColorImageProviderKeysWithBlock___pointSize_1414 = v2;
  [v5 scaledValue:3 withOverride:27.0 forSizeClass:31.0];
  qword_27DE91BA8 = v3;
  [v5 setNewestAllowedSizeClass:&unk_284A34128];
  [v5 scaledValue:3 withOverride:27.0 forSizeClass:31.0];
  _enumerateFullColorImageProviderKeysWithBlock___imageDiameter_1413 = v4;
}

@end