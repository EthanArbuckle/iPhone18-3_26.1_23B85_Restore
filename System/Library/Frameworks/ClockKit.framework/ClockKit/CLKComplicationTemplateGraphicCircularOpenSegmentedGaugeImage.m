@interface CLKComplicationTemplateGraphicCircularOpenSegmentedGaugeImage
- (CLKComplicationTemplateGraphicCircularOpenSegmentedGaugeImage)initWithImageProvider:(id)a3 gaugeProvider:(id)a4 textProvider:(id)a5;
- (void)_enumerateFullColorImageProviderKeysWithBlock:(id)a3;
@end

@implementation CLKComplicationTemplateGraphicCircularOpenSegmentedGaugeImage

- (CLKComplicationTemplateGraphicCircularOpenSegmentedGaugeImage)initWithImageProvider:(id)a3 gaugeProvider:(id)a4 textProvider:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = CLKComplicationTemplateGraphicCircularOpenSegmentedGaugeImage;
  v12 = [(CLKComplicationTemplate *)&v15 initPrivate];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(v12 + 9, a4);
    objc_storeStrong(&v13->_textProvider, a5);
    objc_storeStrong(&v13->_imageProvider, a3);
  }

  return v13;
}

- (void)_enumerateFullColorImageProviderKeysWithBlock:(id)a3
{
  v4 = a3;
  v5 = +[CLKRenderingContext sharedRenderingContext];
  v6 = [v5 device];

  __111__CLKComplicationTemplateGraphicCircularOpenSegmentedGaugeImage__enumerateFullColorImageProviderKeysWithBlock___block_invoke(v7, v6);
  v8 = *&qword_27DE91BD8;
  v9 = *&_enumerateFullColorImageProviderKeysWithBlock___imageDiameter_1429[[(CLKComplicationTemplate *)self sdkVersion]];
  v11 = 0;
  v10 = [MEMORY[0x277CCABB0] numberWithDouble:*&_enumerateFullColorImageProviderKeysWithBlock___pointSize_1430];
  v4[2](v4, @"imageProvider", 1, 1, v10, 4, &v11, v9, v9, v8, v8, v8 * 0.5);
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