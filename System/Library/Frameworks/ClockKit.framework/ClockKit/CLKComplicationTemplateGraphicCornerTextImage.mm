@interface CLKComplicationTemplateGraphicCornerTextImage
+ (CLKComplicationTemplateGraphicCornerTextImage)templateWithTextProvider:(CLKTextProvider *)textProvider imageProvider:(CLKFullColorImageProvider *)imageProvider;
- (CLKComplicationTemplateGraphicCornerTextImage)initWithTextProvider:(CLKTextProvider *)textProvider imageProvider:(CLKFullColorImageProvider *)imageProvider;
- (void)_enumerateFullColorImageProviderKeysWithBlock:(id)block;
@end

@implementation CLKComplicationTemplateGraphicCornerTextImage

- (CLKComplicationTemplateGraphicCornerTextImage)initWithTextProvider:(CLKTextProvider *)textProvider imageProvider:(CLKFullColorImageProvider *)imageProvider
{
  v6 = textProvider;
  v7 = imageProvider;
  v11.receiver = self;
  v11.super_class = CLKComplicationTemplateGraphicCornerTextImage;
  initPrivate = [(CLKComplicationTemplate *)&v11 initPrivate];
  v9 = initPrivate;
  if (initPrivate)
  {
    [(CLKComplicationTemplateGraphicCornerTextImage *)initPrivate setTextProvider:v6];
    [(CLKComplicationTemplateGraphicCornerTextImage *)v9 setImageProvider:v7];
  }

  return v9;
}

+ (CLKComplicationTemplateGraphicCornerTextImage)templateWithTextProvider:(CLKTextProvider *)textProvider imageProvider:(CLKFullColorImageProvider *)imageProvider
{
  v6 = imageProvider;
  v7 = textProvider;
  v8 = [[self alloc] initWithTextProvider:v7 imageProvider:v6];

  return v8;
}

- (void)_enumerateFullColorImageProviderKeysWithBlock:(id)block
{
  blockCopy = block;
  v5 = +[CLKRenderingContext sharedRenderingContext];
  device = [v5 device];

  __95__CLKComplicationTemplateGraphicCornerTextImage__enumerateFullColorImageProviderKeysWithBlock___block_invoke(v7, device);
  v8 = *&qword_27DE919F0;
  v9 = *&_enumerateFullColorImageProviderKeysWithBlock___imageDiameter_1167[[(CLKComplicationTemplate *)self sdkVersion]];
  v11 = 0;
  v10 = [MEMORY[0x277CCABB0] numberWithDouble:*&_enumerateFullColorImageProviderKeysWithBlock___pointSize_1168];
  blockCopy[2](blockCopy, @"imageProvider", 0, 1, v10, 4, &v11, v9, v9, v8, v8, v8 * 0.5);
}

uint64_t __95__CLKComplicationTemplateGraphicCornerTextImage__enumerateFullColorImageProviderKeysWithBlock___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&NTKRichComplicationViewUsePlatterKey_block_invoke_6_lock);
  if (NTKRichComplicationViewUsePlatterKey_block_invoke_6___cachedDevice)
  {
    v3 = NTKRichComplicationViewUsePlatterKey_block_invoke_6___cachedDevice == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == NTKRichComplicationViewUsePlatterKey_block_invoke_6___previousCLKDeviceVersion))
  {
    v5 = NTKRichComplicationViewUsePlatterKey_block_invoke_6_value;
  }

  else
  {
    NTKRichComplicationViewUsePlatterKey_block_invoke_6___cachedDevice = v2;
    NTKRichComplicationViewUsePlatterKey_block_invoke_6___previousCLKDeviceVersion = [v2 version];
    __95__CLKComplicationTemplateGraphicCornerTextImage__enumerateFullColorImageProviderKeysWithBlock___block_invoke_3(NTKRichComplicationViewUsePlatterKey_block_invoke_6___previousCLKDeviceVersion, v2);
    v5 = 1;
    NTKRichComplicationViewUsePlatterKey_block_invoke_6_value = 1;
  }

  os_unfair_lock_unlock(&NTKRichComplicationViewUsePlatterKey_block_invoke_6_lock);

  return v5;
}

void __95__CLKComplicationTemplateGraphicCornerTextImage__enumerateFullColorImageProviderKeysWithBlock___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v5 = [CLKDeviceMetrics metricsWithDevice:a2 identitySizeClass:2];
  [v5 scaledValue:13.0];
  _enumerateFullColorImageProviderKeysWithBlock___pointSize_1168 = v2;
  [v5 scaledValue:20.0];
  qword_27DE919F0 = v3;
  [v5 setNewestAllowedSizeClass:&unk_284A34128];
  [v5 scaledValue:20.0];
  _enumerateFullColorImageProviderKeysWithBlock___imageDiameter_1167 = v4;
}

@end