@interface CLKComplicationTemplateGraphicCircularStackImage
+ (CLKComplicationTemplateGraphicCircularStackImage)templateWithLine1ImageProvider:(CLKFullColorImageProvider *)line1ImageProvider line2TextProvider:(CLKTextProvider *)line2TextProvider;
- (CLKComplicationTemplateGraphicCircularStackImage)initWithLine1ImageProvider:(CLKFullColorImageProvider *)line1ImageProvider line2TextProvider:(CLKTextProvider *)line2TextProvider;
- (void)_enumerateFullColorImageProviderKeysWithBlock:(id)block;
@end

@implementation CLKComplicationTemplateGraphicCircularStackImage

- (CLKComplicationTemplateGraphicCircularStackImage)initWithLine1ImageProvider:(CLKFullColorImageProvider *)line1ImageProvider line2TextProvider:(CLKTextProvider *)line2TextProvider
{
  v6 = line1ImageProvider;
  v7 = line2TextProvider;
  v11.receiver = self;
  v11.super_class = CLKComplicationTemplateGraphicCircularStackImage;
  initPrivate = [(CLKComplicationTemplate *)&v11 initPrivate];
  v9 = initPrivate;
  if (initPrivate)
  {
    [(CLKComplicationTemplateGraphicCircularStackImage *)initPrivate setLine1ImageProvider:v6];
    [(CLKComplicationTemplateGraphicCircularStackImage *)v9 setLine2TextProvider:v7];
  }

  return v9;
}

+ (CLKComplicationTemplateGraphicCircularStackImage)templateWithLine1ImageProvider:(CLKFullColorImageProvider *)line1ImageProvider line2TextProvider:(CLKTextProvider *)line2TextProvider
{
  v6 = line2TextProvider;
  v7 = line1ImageProvider;
  v8 = [[self alloc] initWithLine1ImageProvider:v7 line2TextProvider:v6];

  return v8;
}

- (void)_enumerateFullColorImageProviderKeysWithBlock:(id)block
{
  blockCopy = block;
  v5 = +[CLKRenderingContext sharedRenderingContext];
  device = [v5 device];

  __98__CLKComplicationTemplateGraphicCircularStackImage__enumerateFullColorImageProviderKeysWithBlock___block_invoke(v7, device);
  v8 = *&qword_27DE91B78;
  v9 = unk_27DE91B80;
  v10 = &_enumerateFullColorImageProviderKeysWithBlock___imageSize[2 * [(CLKComplicationTemplate *)self sdkVersion]];
  v11 = *v10;
  v12 = *(v10 + 1);
  v13 = 0;
  (*(blockCopy + 2))(blockCopy, @"line1ImageProvider", 0, 1, 0, 4, &v13, v11, v12, v8, v9, 0.0);
}

uint64_t __98__CLKComplicationTemplateGraphicCircularStackImage__enumerateFullColorImageProviderKeysWithBlock___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&NTKRichComplicationViewUsePlatterKey_block_invoke_14_lock);
  if (NTKRichComplicationViewUsePlatterKey_block_invoke_14___cachedDevice)
  {
    v3 = NTKRichComplicationViewUsePlatterKey_block_invoke_14___cachedDevice == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == NTKRichComplicationViewUsePlatterKey_block_invoke_14___previousCLKDeviceVersion))
  {
    v5 = NTKRichComplicationViewUsePlatterKey_block_invoke_14_value;
  }

  else
  {
    NTKRichComplicationViewUsePlatterKey_block_invoke_14___cachedDevice = v2;
    NTKRichComplicationViewUsePlatterKey_block_invoke_14___previousCLKDeviceVersion = [v2 version];
    __98__CLKComplicationTemplateGraphicCircularStackImage__enumerateFullColorImageProviderKeysWithBlock___block_invoke_3(NTKRichComplicationViewUsePlatterKey_block_invoke_14___previousCLKDeviceVersion, v2);
    v5 = 1;
    NTKRichComplicationViewUsePlatterKey_block_invoke_14_value = 1;
  }

  os_unfair_lock_unlock(&NTKRichComplicationViewUsePlatterKey_block_invoke_14_lock);

  return v5;
}

void __98__CLKComplicationTemplateGraphicCircularStackImage__enumerateFullColorImageProviderKeysWithBlock___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v4 = [CLKDeviceMetrics metricsWithDevice:a2 identitySizeClass:2];
  qword_27DE91B78 = __98__CLKComplicationTemplateGraphicCircularStackImage__enumerateFullColorImageProviderKeysWithBlock___block_invoke_4(v4, v4);
  unk_27DE91B80 = v2;
  _enumerateFullColorImageProviderKeysWithBlock___imageSize = __98__CLKComplicationTemplateGraphicCircularStackImage__enumerateFullColorImageProviderKeysWithBlock___block_invoke_4([v4 setNewestAllowedSizeClass:&unk_284A34128], v4);
  unk_27DE91B70 = v3;
}

double __98__CLKComplicationTemplateGraphicCircularStackImage__enumerateFullColorImageProviderKeysWithBlock___block_invoke_4(uint64_t a1, void *a2)
{
  v8[1] = *MEMORY[0x277D85DE8];
  v2 = a2;
  [v2 scaledValue:28.0];
  v4 = v3;
  v7 = &unk_284A34128;
  v8[0] = &unk_284A34DB8;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  [v2 scaledValue:v5 withOverrides:14.0];

  return v4;
}

@end