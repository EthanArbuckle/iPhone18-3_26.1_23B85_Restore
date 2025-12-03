@interface CLKComplicationTemplateGraphicCornerSegmentedGaugeImage
- (CLKComplicationTemplateGraphicCornerSegmentedGaugeImage)initWithImageProvider:(id)provider gaugeProvider:(id)gaugeProvider textProvider:(id)textProvider;
- (void)_enumerateFullColorImageProviderKeysWithBlock:(id)block;
@end

@implementation CLKComplicationTemplateGraphicCornerSegmentedGaugeImage

- (CLKComplicationTemplateGraphicCornerSegmentedGaugeImage)initWithImageProvider:(id)provider gaugeProvider:(id)gaugeProvider textProvider:(id)textProvider
{
  providerCopy = provider;
  gaugeProviderCopy = gaugeProvider;
  textProviderCopy = textProvider;
  v15.receiver = self;
  v15.super_class = CLKComplicationTemplateGraphicCornerSegmentedGaugeImage;
  initPrivate = [(CLKComplicationTemplate *)&v15 initPrivate];
  v13 = initPrivate;
  if (initPrivate)
  {
    objc_storeStrong(initPrivate + 9, gaugeProvider);
    objc_storeStrong(&v13->_leadingTextProvider, textProvider);
    objc_storeStrong(&v13->_imageProvider, provider);
  }

  return v13;
}

- (void)_enumerateFullColorImageProviderKeysWithBlock:(id)block
{
  blockCopy = block;
  v5 = +[CLKRenderingContext sharedRenderingContext];
  device = [v5 device];

  __105__CLKComplicationTemplateGraphicCornerSegmentedGaugeImage__enumerateFullColorImageProviderKeysWithBlock___block_invoke(v7, device);
  v8 = *&qword_27DE91AB0;
  v9 = *&_enumerateFullColorImageProviderKeysWithBlock___imageDiameter_1268[[(CLKComplicationTemplate *)self sdkVersion]];
  v11 = 0;
  v10 = [MEMORY[0x277CCABB0] numberWithDouble:*&_enumerateFullColorImageProviderKeysWithBlock___pointSize_1269];
  blockCopy[2](blockCopy, @"imageProvider", 0, 1, v10, 4, &v11, v9, v9, v8, v8, v8 * 0.5);
}

uint64_t __105__CLKComplicationTemplateGraphicCornerSegmentedGaugeImage__enumerateFullColorImageProviderKeysWithBlock___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&NTKRichComplicationViewUsePlatterKey_block_invoke_10_lock);
  if (NTKRichComplicationViewUsePlatterKey_block_invoke_10___cachedDevice)
  {
    v3 = NTKRichComplicationViewUsePlatterKey_block_invoke_10___cachedDevice == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == NTKRichComplicationViewUsePlatterKey_block_invoke_10___previousCLKDeviceVersion))
  {
    v5 = NTKRichComplicationViewUsePlatterKey_block_invoke_10_value;
  }

  else
  {
    NTKRichComplicationViewUsePlatterKey_block_invoke_10___cachedDevice = v2;
    NTKRichComplicationViewUsePlatterKey_block_invoke_10___previousCLKDeviceVersion = [v2 version];
    __105__CLKComplicationTemplateGraphicCornerSegmentedGaugeImage__enumerateFullColorImageProviderKeysWithBlock___block_invoke_3(NTKRichComplicationViewUsePlatterKey_block_invoke_10___previousCLKDeviceVersion, v2);
    v5 = 1;
    NTKRichComplicationViewUsePlatterKey_block_invoke_10_value = 1;
  }

  os_unfair_lock_unlock(&NTKRichComplicationViewUsePlatterKey_block_invoke_10_lock);

  return v5;
}

void __105__CLKComplicationTemplateGraphicCornerSegmentedGaugeImage__enumerateFullColorImageProviderKeysWithBlock___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v5 = [CLKDeviceMetrics metricsWithDevice:a2 identitySizeClass:2];
  [v5 scaledValue:16.0];
  _enumerateFullColorImageProviderKeysWithBlock___pointSize_1269 = v2;
  [v5 scaledValue:20.0];
  qword_27DE91AB0 = v3;
  [v5 setNewestAllowedSizeClass:&unk_284A34128];
  [v5 scaledValue:20.0];
  _enumerateFullColorImageProviderKeysWithBlock___imageDiameter_1268 = v4;
}

@end