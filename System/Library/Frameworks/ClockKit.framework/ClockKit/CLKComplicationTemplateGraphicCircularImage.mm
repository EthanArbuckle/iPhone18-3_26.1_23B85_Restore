@interface CLKComplicationTemplateGraphicCircularImage
+ (CLKComplicationTemplateGraphicCircularImage)templateWithImageProvider:(CLKFullColorImageProvider *)imageProvider;
- (CLKComplicationTemplateGraphicCircularImage)initWithImageProvider:(CLKFullColorImageProvider *)imageProvider;
- (void)_enumerateFullColorImageProviderKeysWithBlock:(id)a3;
@end

@implementation CLKComplicationTemplateGraphicCircularImage

- (CLKComplicationTemplateGraphicCircularImage)initWithImageProvider:(CLKFullColorImageProvider *)imageProvider
{
  v4 = imageProvider;
  v8.receiver = self;
  v8.super_class = CLKComplicationTemplateGraphicCircularImage;
  v5 = [(CLKComplicationTemplate *)&v8 initPrivate];
  v6 = v5;
  if (v5)
  {
    [(CLKComplicationTemplateGraphicCircularImage *)v5 setImageProvider:v4];
  }

  return v6;
}

+ (CLKComplicationTemplateGraphicCircularImage)templateWithImageProvider:(CLKFullColorImageProvider *)imageProvider
{
  v4 = imageProvider;
  v5 = [[a1 alloc] initWithImageProvider:v4];

  return v5;
}

- (void)_enumerateFullColorImageProviderKeysWithBlock:(id)a3
{
  v4 = a3;
  v5 = +[CLKRenderingContext sharedRenderingContext];
  v6 = [v5 device];

  __93__CLKComplicationTemplateGraphicCircularImage__enumerateFullColorImageProviderKeysWithBlock___block_invoke(v7, v6);
  v8 = *&qword_27DE91AE0;
  v9 = *&_enumerateFullColorImageProviderKeysWithBlock___imageDiameter_1289[[(CLKComplicationTemplate *)self sdkVersion]];
  v11 = 0;
  v10 = [MEMORY[0x277CCABB0] numberWithDouble:*&_enumerateFullColorImageProviderKeysWithBlock___pointSize_1290];
  v4[2](v4, @"imageProvider", 0, 1, v10, 4, &v11, v9, v9, v8, v8, v8 * 0.5);
}

uint64_t __93__CLKComplicationTemplateGraphicCircularImage__enumerateFullColorImageProviderKeysWithBlock___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&NTKRichComplicationViewUsePlatterKey_block_invoke_11_lock);
  if (NTKRichComplicationViewUsePlatterKey_block_invoke_11___cachedDevice)
  {
    v3 = NTKRichComplicationViewUsePlatterKey_block_invoke_11___cachedDevice == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == NTKRichComplicationViewUsePlatterKey_block_invoke_11___previousCLKDeviceVersion))
  {
    v5 = NTKRichComplicationViewUsePlatterKey_block_invoke_11_value;
  }

  else
  {
    NTKRichComplicationViewUsePlatterKey_block_invoke_11___cachedDevice = v2;
    NTKRichComplicationViewUsePlatterKey_block_invoke_11___previousCLKDeviceVersion = [v2 version];
    __93__CLKComplicationTemplateGraphicCircularImage__enumerateFullColorImageProviderKeysWithBlock___block_invoke_3(NTKRichComplicationViewUsePlatterKey_block_invoke_11___previousCLKDeviceVersion, v2);
    v5 = 1;
    NTKRichComplicationViewUsePlatterKey_block_invoke_11_value = 1;
  }

  os_unfair_lock_unlock(&NTKRichComplicationViewUsePlatterKey_block_invoke_11_lock);

  return v5;
}

void __93__CLKComplicationTemplateGraphicCircularImage__enumerateFullColorImageProviderKeysWithBlock___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v5 = [CLKDeviceMetrics metricsWithDevice:a2 identitySizeClass:2];
  [v5 scaledValue:24.0];
  _enumerateFullColorImageProviderKeysWithBlock___pointSize_1290 = v2;
  [v5 scaledValue:3 withOverride:42.0 forSizeClass:47.0];
  qword_27DE91AE0 = v3;
  [v5 setNewestAllowedSizeClass:&unk_284A34128];
  [v5 scaledValue:3 withOverride:42.0 forSizeClass:47.0];
  _enumerateFullColorImageProviderKeysWithBlock___imageDiameter_1289 = v4;
}

@end