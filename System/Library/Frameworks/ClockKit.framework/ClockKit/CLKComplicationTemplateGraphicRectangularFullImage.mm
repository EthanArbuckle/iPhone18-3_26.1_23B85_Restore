@interface CLKComplicationTemplateGraphicRectangularFullImage
+ (CLKComplicationTemplateGraphicRectangularFullImage)templateWithImageProvider:(CLKFullColorImageProvider *)imageProvider;
- (CLKComplicationTemplateGraphicRectangularFullImage)initWithImageProvider:(CLKFullColorImageProvider *)imageProvider;
- (void)_enumerateFullColorImageProviderKeysWithBlock:(id)a3;
@end

@implementation CLKComplicationTemplateGraphicRectangularFullImage

- (CLKComplicationTemplateGraphicRectangularFullImage)initWithImageProvider:(CLKFullColorImageProvider *)imageProvider
{
  v4 = imageProvider;
  v8.receiver = self;
  v8.super_class = CLKComplicationTemplateGraphicRectangularFullImage;
  v5 = [(CLKComplicationTemplate *)&v8 initPrivate];
  v6 = v5;
  if (v5)
  {
    [(CLKComplicationTemplateGraphicRectangularFullImage *)v5 setImageProvider:v4];
  }

  return v6;
}

+ (CLKComplicationTemplateGraphicRectangularFullImage)templateWithImageProvider:(CLKFullColorImageProvider *)imageProvider
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

  __100__CLKComplicationTemplateGraphicRectangularFullImage__enumerateFullColorImageProviderKeysWithBlock___block_invoke(v7, v6);
  v8 = *&qword_27DE91C20;
  v9 = unk_27DE91C28;
  v10 = &_enumerateFullColorImageProviderKeysWithBlock___imageSize_1490[2 * [(CLKComplicationTemplate *)self sdkVersion]];
  v11 = *v10;
  v12 = *(v10 + 1);
  v13 = 0;
  (*(v4 + 2))(v4, @"imageProvider", 0, 1, 0, 4, &v13, v11, v12, v8, v9, 4.0);
}

uint64_t __100__CLKComplicationTemplateGraphicRectangularFullImage__enumerateFullColorImageProviderKeysWithBlock___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&NTKRichComplicationViewUsePlatterKey_block_invoke_17_lock);
  if (NTKRichComplicationViewUsePlatterKey_block_invoke_17___cachedDevice)
  {
    v3 = NTKRichComplicationViewUsePlatterKey_block_invoke_17___cachedDevice == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == NTKRichComplicationViewUsePlatterKey_block_invoke_17___previousCLKDeviceVersion))
  {
    v5 = NTKRichComplicationViewUsePlatterKey_block_invoke_17_value;
  }

  else
  {
    NTKRichComplicationViewUsePlatterKey_block_invoke_17___cachedDevice = v2;
    NTKRichComplicationViewUsePlatterKey_block_invoke_17___previousCLKDeviceVersion = [v2 version];
    __100__CLKComplicationTemplateGraphicRectangularFullImage__enumerateFullColorImageProviderKeysWithBlock___block_invoke_3(NTKRichComplicationViewUsePlatterKey_block_invoke_17___previousCLKDeviceVersion, v2);
    v5 = 1;
    NTKRichComplicationViewUsePlatterKey_block_invoke_17_value = 1;
  }

  os_unfair_lock_unlock(&NTKRichComplicationViewUsePlatterKey_block_invoke_17_lock);

  return v5;
}

void __100__CLKComplicationTemplateGraphicRectangularFullImage__enumerateFullColorImageProviderKeysWithBlock___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v4 = [CLKDeviceMetrics metricsWithDevice:a2 identitySizeClass:2];
  qword_27DE91C20 = __100__CLKComplicationTemplateGraphicRectangularFullImage__enumerateFullColorImageProviderKeysWithBlock___block_invoke_4(v4, v4);
  unk_27DE91C28 = v2;
  _enumerateFullColorImageProviderKeysWithBlock___imageSize_1490 = __100__CLKComplicationTemplateGraphicRectangularFullImage__enumerateFullColorImageProviderKeysWithBlock___block_invoke_4([v4 setNewestAllowedSizeClass:&unk_284A34128], v4);
  *algn_27DE91C18 = v3;
}

double __100__CLKComplicationTemplateGraphicRectangularFullImage__enumerateFullColorImageProviderKeysWithBlock___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 scaledValue:3 withOverride:162.0 forSizeClass:184.0];
  v4 = v3;
  [v2 scaledValue:3 withOverride:69.0 forSizeClass:78.0];

  return v4;
}

@end