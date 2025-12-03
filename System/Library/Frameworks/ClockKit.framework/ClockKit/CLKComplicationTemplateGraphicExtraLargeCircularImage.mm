@interface CLKComplicationTemplateGraphicExtraLargeCircularImage
+ (CLKComplicationTemplateGraphicExtraLargeCircularImage)templateWithImageProvider:(CLKFullColorImageProvider *)imageProvider;
- (CLKComplicationTemplateGraphicExtraLargeCircularImage)initWithImageProvider:(CLKFullColorImageProvider *)imageProvider;
- (void)_enumerateFullColorImageProviderKeysWithBlock:(id)block;
@end

@implementation CLKComplicationTemplateGraphicExtraLargeCircularImage

- (CLKComplicationTemplateGraphicExtraLargeCircularImage)initWithImageProvider:(CLKFullColorImageProvider *)imageProvider
{
  v4 = imageProvider;
  v8.receiver = self;
  v8.super_class = CLKComplicationTemplateGraphicExtraLargeCircularImage;
  initPrivate = [(CLKComplicationTemplate *)&v8 initPrivate];
  v6 = initPrivate;
  if (initPrivate)
  {
    [(CLKComplicationTemplateGraphicExtraLargeCircularImage *)initPrivate setImageProvider:v4];
  }

  return v6;
}

+ (CLKComplicationTemplateGraphicExtraLargeCircularImage)templateWithImageProvider:(CLKFullColorImageProvider *)imageProvider
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

  __103__CLKComplicationTemplateGraphicExtraLargeCircularImage__enumerateFullColorImageProviderKeysWithBlock___block_invoke(v7, device);
  v8 = *&qword_27DE91DA0;
  v9 = *&_enumerateFullColorImageProviderKeysWithBlock___imageDiameter_1624[[(CLKComplicationTemplate *)self sdkVersion]];
  v11 = 0;
  v10 = [MEMORY[0x277CCABB0] numberWithDouble:*&_enumerateFullColorImageProviderKeysWithBlock___pointSize_1625];
  blockCopy[2](blockCopy, @"imageProvider", 0, 1, v10, 4, &v11, v9, v9, v8, v8, v8 * 0.5);
}

uint64_t __103__CLKComplicationTemplateGraphicExtraLargeCircularImage__enumerateFullColorImageProviderKeysWithBlock___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&NTKRichComplicationViewUsePlatterKey_block_invoke_25_lock);
  if (NTKRichComplicationViewUsePlatterKey_block_invoke_25___cachedDevice)
  {
    v3 = NTKRichComplicationViewUsePlatterKey_block_invoke_25___cachedDevice == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == NTKRichComplicationViewUsePlatterKey_block_invoke_25___previousCLKDeviceVersion))
  {
    v5 = NTKRichComplicationViewUsePlatterKey_block_invoke_25_value;
  }

  else
  {
    NTKRichComplicationViewUsePlatterKey_block_invoke_25___cachedDevice = v2;
    NTKRichComplicationViewUsePlatterKey_block_invoke_25___previousCLKDeviceVersion = [v2 version];
    __103__CLKComplicationTemplateGraphicExtraLargeCircularImage__enumerateFullColorImageProviderKeysWithBlock___block_invoke_3(NTKRichComplicationViewUsePlatterKey_block_invoke_25___previousCLKDeviceVersion, v2);
    v5 = 1;
    NTKRichComplicationViewUsePlatterKey_block_invoke_25_value = 1;
  }

  os_unfair_lock_unlock(&NTKRichComplicationViewUsePlatterKey_block_invoke_25_lock);

  return v5;
}

void __103__CLKComplicationTemplateGraphicExtraLargeCircularImage__enumerateFullColorImageProviderKeysWithBlock___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [CLKDeviceMetrics metricsWithDevice:v2 identitySizeClass:2];
  v4 = CLKComplicationGraphicExtraLargeCircularScalingFactor();
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __103__CLKComplicationTemplateGraphicExtraLargeCircularImage__enumerateFullColorImageProviderKeysWithBlock___block_invoke_4;
  v12 = &unk_278A1EF60;
  v13 = v2;
  v14 = v4;
  v5 = v2;
  v6 = MEMORY[0x2383C4AF0](&v9);
  [v3 scaledValue:{24.0, v9, v10, v11, v12}];
  CLKRoundForDevice(v5, v4 * v7);
  _enumerateFullColorImageProviderKeysWithBlock___pointSize_1625 = v8;
  qword_27DE91DA0 = (v6)[2](v6, v3);
  [v3 setNewestAllowedSizeClass:&unk_284A34128];
  _enumerateFullColorImageProviderKeysWithBlock___imageDiameter_1624 = (v6)[2](v6, v3);
}

double __103__CLKComplicationTemplateGraphicExtraLargeCircularImage__enumerateFullColorImageProviderKeysWithBlock___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v5 = getCDCircularMediumComplicationDiameterSymbolLoc_ptr;
  v15 = getCDCircularMediumComplicationDiameterSymbolLoc_ptr;
  if (!getCDCircularMediumComplicationDiameterSymbolLoc_ptr)
  {
    v6 = ComplicationDisplayLibrary();
    v13[3] = dlsym(v6, "CDCircularMediumComplicationDiameter");
    getCDCircularMediumComplicationDiameterSymbolLoc_ptr = v13[3];
    v5 = v13[3];
  }

  _Block_object_dispose(&v12, 8);
  if (!v5)
  {
    v11 = [CLKComplicationIntentWidgetMigrationConfiguration encodeWithCoder:];
    _Block_object_dispose(&v12, 8);
    _Unwind_Resume(v11);
  }

  v7 = v5(v4);

  CLKRoundForDevice(*(a1 + 32), v7 * *(a1 + 40));
  v9 = v8;

  return v9;
}

@end