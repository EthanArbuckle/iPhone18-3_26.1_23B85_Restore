@interface CLKComplicationTemplateGraphicCircularImage
+ (CLKComplicationTemplateGraphicCircularImage)templateWithImageProvider:(CLKFullColorImageProvider *)imageProvider;
- (CLKComplicationTemplateGraphicCircularImage)initWithImageProvider:(CLKFullColorImageProvider *)imageProvider;
- (void)_enumerateFullColorImageProviderKeysWithBlock:(id)block;
@end

@implementation CLKComplicationTemplateGraphicCircularImage

- (CLKComplicationTemplateGraphicCircularImage)initWithImageProvider:(CLKFullColorImageProvider *)imageProvider
{
  v4 = imageProvider;
  v8.receiver = self;
  v8.super_class = CLKComplicationTemplateGraphicCircularImage;
  initPrivate = [(CLKComplicationTemplate *)&v8 initPrivate];
  v6 = initPrivate;
  if (initPrivate)
  {
    [(CLKComplicationTemplateGraphicCircularImage *)initPrivate setImageProvider:v4];
  }

  return v6;
}

+ (CLKComplicationTemplateGraphicCircularImage)templateWithImageProvider:(CLKFullColorImageProvider *)imageProvider
{
  v4 = imageProvider;
  v5 = [[self alloc] initWithImageProvider:v4];

  return v5;
}

- (void)_enumerateFullColorImageProviderKeysWithBlock:(id)block
{
  blockCopy = block;
  v5 = +[CLKRenderingContext sharedRenderingContext];
  device = [v5 device];

  __93__CLKComplicationTemplateGraphicCircularImage__enumerateFullColorImageProviderKeysWithBlock___block_invoke(v7, device);
  v8 = *&qword_27DE91AE0;
  v9 = *&_enumerateFullColorImageProviderKeysWithBlock___imageDiameter_1289[[(CLKComplicationTemplate *)self sdkVersion]];
  v11 = 0;
  v10 = [MEMORY[0x277CCABB0] numberWithDouble:*&_enumerateFullColorImageProviderKeysWithBlock___pointSize_1290];
  blockCopy[2](blockCopy, @"imageProvider", 0, 1, v10, 4, &v11, v9, v9, v8, v8, v8 * 0.5);
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