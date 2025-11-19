@interface CLKComplicationTemplateGraphicCornerCircularImage
+ (CLKComplicationTemplateGraphicCornerCircularImage)templateWithImageProvider:(CLKFullColorImageProvider *)imageProvider;
- (CLKComplicationTemplateGraphicCornerCircularImage)initWithImageProvider:(CLKFullColorImageProvider *)imageProvider;
- (void)_enumerateFullColorImageProviderKeysWithBlock:(id)a3;
@end

@implementation CLKComplicationTemplateGraphicCornerCircularImage

- (CLKComplicationTemplateGraphicCornerCircularImage)initWithImageProvider:(CLKFullColorImageProvider *)imageProvider
{
  v4 = imageProvider;
  v8.receiver = self;
  v8.super_class = CLKComplicationTemplateGraphicCornerCircularImage;
  v5 = [(CLKComplicationTemplate *)&v8 initPrivate];
  v6 = v5;
  if (v5)
  {
    [(CLKComplicationTemplateGraphicCornerCircularImage *)v5 setImageProvider:v4];
  }

  return v6;
}

+ (CLKComplicationTemplateGraphicCornerCircularImage)templateWithImageProvider:(CLKFullColorImageProvider *)imageProvider
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

  __99__CLKComplicationTemplateGraphicCornerCircularImage__enumerateFullColorImageProviderKeysWithBlock___block_invoke(v7, v6);
  v8 = *&qword_27DE91A20;
  v9 = *&_enumerateFullColorImageProviderKeysWithBlock___imageDiameter_1199[[(CLKComplicationTemplate *)self sdkVersion]];
  v11 = 0;
  v10 = [MEMORY[0x277CCABB0] numberWithDouble:*&_enumerateFullColorImageProviderKeysWithBlock___pointSize_1200];
  v4[2](v4, @"imageProvider", 0, 1, v10, 4, &v11, v9, v9, v8, v8, v8 * 0.5);
}

uint64_t __99__CLKComplicationTemplateGraphicCornerCircularImage__enumerateFullColorImageProviderKeysWithBlock___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&NTKRichComplicationViewUsePlatterKey_block_invoke_7_lock);
  if (NTKRichComplicationViewUsePlatterKey_block_invoke_7___cachedDevice)
  {
    v3 = NTKRichComplicationViewUsePlatterKey_block_invoke_7___cachedDevice == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == NTKRichComplicationViewUsePlatterKey_block_invoke_7___previousCLKDeviceVersion))
  {
    v5 = NTKRichComplicationViewUsePlatterKey_block_invoke_7_value;
  }

  else
  {
    NTKRichComplicationViewUsePlatterKey_block_invoke_7___cachedDevice = v2;
    NTKRichComplicationViewUsePlatterKey_block_invoke_7___previousCLKDeviceVersion = [v2 version];
    __99__CLKComplicationTemplateGraphicCornerCircularImage__enumerateFullColorImageProviderKeysWithBlock___block_invoke_3(NTKRichComplicationViewUsePlatterKey_block_invoke_7___previousCLKDeviceVersion, v2);
    v5 = 1;
    NTKRichComplicationViewUsePlatterKey_block_invoke_7_value = 1;
  }

  os_unfair_lock_unlock(&NTKRichComplicationViewUsePlatterKey_block_invoke_7_lock);

  return v5;
}

void __99__CLKComplicationTemplateGraphicCornerCircularImage__enumerateFullColorImageProviderKeysWithBlock___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [CLKDeviceMetrics metricsWithDevice:v2 identitySizeClass:3];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __99__CLKComplicationTemplateGraphicCornerCircularImage__enumerateFullColorImageProviderKeysWithBlock___block_invoke_4;
  v7[3] = &unk_278A1EF10;
  v8 = v2;
  v4 = v2;
  v5 = MEMORY[0x2383C4AF0](v7);
  [v3 scaledValue:19.0];
  _enumerateFullColorImageProviderKeysWithBlock___pointSize_1200 = v6;
  qword_27DE91A20 = (v5)[2](v5, v3);
  [v3 setNewestAllowedSizeClass:&unk_284A34128];
  _enumerateFullColorImageProviderKeysWithBlock___imageDiameter_1199 = (v5)[2](v5, v3);
}

double __99__CLKComplicationTemplateGraphicCornerCircularImage__enumerateFullColorImageProviderKeysWithBlock___block_invoke_4(uint64_t a1, void *a2)
{
  v15[4] = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (CLKDeviceCategoryForSizeClass([*(a1 + 32) sizeClass]) < 5)
  {
    v14[0] = &unk_284A34140;
    v14[1] = &unk_284A34158;
    v15[0] = &unk_284A34E28;
    v15[1] = &unk_284A34EA8;
    v14[2] = &unk_284A34170;
    v14[3] = &unk_284A34188;
    v15[2] = &unk_284A34EB8;
    v15[3] = &unk_284A34EA8;
    v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:4];
    [v3 scaledValue:v4 withOverrides:36.0];
  }

  else
  {
    v4 = *(a1 + 32);
    v10 = 0;
    v11 = &v10;
    v12 = 0x2020000000;
    v5 = getCDCircularSmallComplicationDiameterSymbolLoc_ptr;
    v13 = getCDCircularSmallComplicationDiameterSymbolLoc_ptr;
    if (!getCDCircularSmallComplicationDiameterSymbolLoc_ptr)
    {
      v6 = ComplicationDisplayLibrary();
      v11[3] = dlsym(v6, "CDCircularSmallComplicationDiameter");
      getCDCircularSmallComplicationDiameterSymbolLoc_ptr = v11[3];
      v5 = v11[3];
    }

    _Block_object_dispose(&v10, 8);
    if (!v5)
    {
      [CLKComplicationIntentWidgetMigrationConfiguration encodeWithCoder:];
      __break(1u);
    }

    v5(v4);
  }

  v8 = v7;

  return v8;
}

@end