@interface CLKComplicationTemplateGraphicCircularOpenSegmentedGaugeImage
- (CLKComplicationTemplateGraphicCircularOpenSegmentedGaugeImage)initWithImageProvider:(id)provider gaugeProvider:(id)gaugeProvider textProvider:(id)textProvider;
- (void)_enumerateFullColorImageProviderKeysWithBlock:(id)block;
@end

@implementation CLKComplicationTemplateGraphicCircularOpenSegmentedGaugeImage

- (CLKComplicationTemplateGraphicCircularOpenSegmentedGaugeImage)initWithImageProvider:(id)provider gaugeProvider:(id)gaugeProvider textProvider:(id)textProvider
{
  providerCopy = provider;
  gaugeProviderCopy = gaugeProvider;
  textProviderCopy = textProvider;
  v15.receiver = self;
  v15.super_class = CLKComplicationTemplateGraphicCircularOpenSegmentedGaugeImage;
  initPrivate = [(CLKComplicationTemplate *)&v15 initPrivate];
  v13 = initPrivate;
  if (initPrivate)
  {
    objc_storeStrong(initPrivate + 9, gaugeProvider);
    objc_storeStrong(&v13->_textProvider, textProvider);
    objc_storeStrong(&v13->_imageProvider, provider);
  }

  return v13;
}

- (void)_enumerateFullColorImageProviderKeysWithBlock:(id)block
{
  blockCopy = block;
  v5 = +[CLKRenderingContext sharedRenderingContext];
  device = [v5 device];

  __111__CLKComplicationTemplateGraphicCircularOpenSegmentedGaugeImage__enumerateFullColorImageProviderKeysWithBlock___block_invoke(v7, device);
  v8 = *&qword_27DE91BD8;
  v9 = *&_enumerateFullColorImageProviderKeysWithBlock___imageDiameter_1429[[(CLKComplicationTemplate *)self sdkVersion]];
  v11 = 0;
  v10 = [MEMORY[0x277CCABB0] numberWithDouble:*&_enumerateFullColorImageProviderKeysWithBlock___pointSize_1430];
  blockCopy[2](blockCopy, @"imageProvider", 1, 1, v10, 4, &v11, v9, v9, v8, v8, v8 * 0.5);
}

uint64_t __111__CLKComplicationTemplateGraphicCircularOpenSegmentedGaugeImage__enumerateFullColorImageProviderKeysWithBlock___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&NTKRichComplicationViewUsePlatterKey_block_invoke_16_lock);
  if (NTKRichComplicationViewUsePlatterKey_block_invoke_16___cachedDevice)
  {
    v3 = NTKRichComplicationViewUsePlatterKey_block_invoke_16___cachedDevice == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == NTKRichComplicationViewUsePlatterKey_block_invoke_16___previousCLKDeviceVersion))
  {
    v5 = NTKRichComplicationViewUsePlatterKey_block_invoke_16_value;
  }

  else
  {
    NTKRichComplicationViewUsePlatterKey_block_invoke_16___cachedDevice = v2;
    NTKRichComplicationViewUsePlatterKey_block_invoke_16___previousCLKDeviceVersion = [v2 version];
    __111__CLKComplicationTemplateGraphicCircularOpenSegmentedGaugeImage__enumerateFullColorImageProviderKeysWithBlock___block_invoke_3(NTKRichComplicationViewUsePlatterKey_block_invoke_16___previousCLKDeviceVersion, v2);
    v5 = 1;
    NTKRichComplicationViewUsePlatterKey_block_invoke_16_value = 1;
  }

  os_unfair_lock_unlock(&NTKRichComplicationViewUsePlatterKey_block_invoke_16_lock);

  return v5;
}

void __111__CLKComplicationTemplateGraphicCircularOpenSegmentedGaugeImage__enumerateFullColorImageProviderKeysWithBlock___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v5 = [CLKDeviceMetrics metricsWithDevice:a2 identitySizeClass:2];
  [v5 scaledValue:19.0];
  _enumerateFullColorImageProviderKeysWithBlock___pointSize_1430 = v2;
  [v5 scaledValue:3 withOverride:34.0 forSizeClass:38.0];
  qword_27DE91BD8 = v3;
  [v5 setNewestAllowedSizeClass:&unk_284A34128];
  [v5 scaledValue:3 withOverride:34.0 forSizeClass:38.0];
  _enumerateFullColorImageProviderKeysWithBlock___imageDiameter_1429 = v4;
}

@end