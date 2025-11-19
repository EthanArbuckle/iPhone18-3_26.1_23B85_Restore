@interface CLKComplicationTemplateGraphicCornerSegmentedGaugeImage
- (CLKComplicationTemplateGraphicCornerSegmentedGaugeImage)initWithImageProvider:(id)a3 gaugeProvider:(id)a4 textProvider:(id)a5;
- (void)_enumerateFullColorImageProviderKeysWithBlock:(id)a3;
@end

@implementation CLKComplicationTemplateGraphicCornerSegmentedGaugeImage

- (CLKComplicationTemplateGraphicCornerSegmentedGaugeImage)initWithImageProvider:(id)a3 gaugeProvider:(id)a4 textProvider:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = CLKComplicationTemplateGraphicCornerSegmentedGaugeImage;
  v12 = [(CLKComplicationTemplate *)&v15 initPrivate];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(v12 + 9, a4);
    objc_storeStrong(&v13->_leadingTextProvider, a5);
    objc_storeStrong(&v13->_imageProvider, a3);
  }

  return v13;
}

- (void)_enumerateFullColorImageProviderKeysWithBlock:(id)a3
{
  v4 = a3;
  v5 = +[CLKRenderingContext sharedRenderingContext];
  v6 = [v5 device];

  __105__CLKComplicationTemplateGraphicCornerSegmentedGaugeImage__enumerateFullColorImageProviderKeysWithBlock___block_invoke(v7, v6);
  v8 = *&qword_27DE91AB0;
  v9 = *&_enumerateFullColorImageProviderKeysWithBlock___imageDiameter_1268[[(CLKComplicationTemplate *)self sdkVersion]];
  v11 = 0;
  v10 = [MEMORY[0x277CCABB0] numberWithDouble:*&_enumerateFullColorImageProviderKeysWithBlock___pointSize_1269];
  v4[2](v4, @"imageProvider", 0, 1, v10, 4, &v11, v9, v9, v8, v8, v8 * 0.5);
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