@interface CLKComplicationTemplateGraphicRectangularLargeImage
+ (CLKComplicationTemplateGraphicRectangularLargeImage)templateWithTextProvider:(CLKTextProvider *)textProvider imageProvider:(CLKFullColorImageProvider *)imageProvider;
- (CLKComplicationTemplateGraphicRectangularLargeImage)initWithTextProvider:(CLKTextProvider *)textProvider imageProvider:(CLKFullColorImageProvider *)imageProvider;
- (void)_enumerateFullColorImageProviderKeysWithBlock:(id)a3;
@end

@implementation CLKComplicationTemplateGraphicRectangularLargeImage

- (CLKComplicationTemplateGraphicRectangularLargeImage)initWithTextProvider:(CLKTextProvider *)textProvider imageProvider:(CLKFullColorImageProvider *)imageProvider
{
  v6 = textProvider;
  v7 = imageProvider;
  v11.receiver = self;
  v11.super_class = CLKComplicationTemplateGraphicRectangularLargeImage;
  v8 = [(CLKComplicationTemplate *)&v11 initPrivate];
  v9 = v8;
  if (v8)
  {
    [(CLKComplicationTemplateGraphicRectangularLargeImage *)v8 setTextProvider:v6];
    [(CLKComplicationTemplateGraphicRectangularLargeImage *)v9 setImageProvider:v7];
  }

  return v9;
}

+ (CLKComplicationTemplateGraphicRectangularLargeImage)templateWithTextProvider:(CLKTextProvider *)textProvider imageProvider:(CLKFullColorImageProvider *)imageProvider
{
  v6 = imageProvider;
  v7 = textProvider;
  v8 = [[a1 alloc] initWithTextProvider:v7 imageProvider:v6];

  return v8;
}

- (void)_enumerateFullColorImageProviderKeysWithBlock:(id)a3
{
  v4 = a3;
  v5 = +[CLKRenderingContext sharedRenderingContext];
  v6 = [v5 device];

  __101__CLKComplicationTemplateGraphicRectangularLargeImage__enumerateFullColorImageProviderKeysWithBlock___block_invoke(v7, v6);
  v8 = *&qword_27DE91C58;
  v9 = unk_27DE91C60;
  v10 = &_enumerateFullColorImageProviderKeysWithBlock___imageSize_1505[2 * [(CLKComplicationTemplate *)self sdkVersion]];
  v11 = *v10;
  v12 = *(v10 + 1);
  v13 = 0;
  (*(v4 + 2))(v4, @"imageProvider", 0, 1, 0, 4, &v13, v11, v12, v8, v9, 4.0);
}

uint64_t __101__CLKComplicationTemplateGraphicRectangularLargeImage__enumerateFullColorImageProviderKeysWithBlock___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&NTKRichComplicationViewUsePlatterKey_block_invoke_18_lock);
  if (NTKRichComplicationViewUsePlatterKey_block_invoke_18___cachedDevice)
  {
    v3 = NTKRichComplicationViewUsePlatterKey_block_invoke_18___cachedDevice == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == NTKRichComplicationViewUsePlatterKey_block_invoke_18___previousCLKDeviceVersion))
  {
    v5 = NTKRichComplicationViewUsePlatterKey_block_invoke_18_value;
  }

  else
  {
    NTKRichComplicationViewUsePlatterKey_block_invoke_18___cachedDevice = v2;
    NTKRichComplicationViewUsePlatterKey_block_invoke_18___previousCLKDeviceVersion = [v2 version];
    __101__CLKComplicationTemplateGraphicRectangularLargeImage__enumerateFullColorImageProviderKeysWithBlock___block_invoke_3(NTKRichComplicationViewUsePlatterKey_block_invoke_18___previousCLKDeviceVersion, v2);
    v5 = 1;
    NTKRichComplicationViewUsePlatterKey_block_invoke_18_value = 1;
  }

  os_unfair_lock_unlock(&NTKRichComplicationViewUsePlatterKey_block_invoke_18_lock);

  return v5;
}

void __101__CLKComplicationTemplateGraphicRectangularLargeImage__enumerateFullColorImageProviderKeysWithBlock___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v7 = [CLKDeviceMetrics metricsWithDevice:v2 identitySizeClass:2];
  qword_27DE91C58 = __101__CLKComplicationTemplateGraphicRectangularLargeImage__enumerateFullColorImageProviderKeysWithBlock___block_invoke_4(v7, v2);
  unk_27DE91C60 = v3;
  v4 = __101__CLKComplicationTemplateGraphicRectangularLargeImage__enumerateFullColorImageProviderKeysWithBlock___block_invoke_4([v7 setNewestAllowedSizeClass:&unk_284A34128], v2);
  v6 = v5;

  _enumerateFullColorImageProviderKeysWithBlock___imageSize_1505 = *&v4;
  unk_27DE91C50 = v6;
}

double __101__CLKComplicationTemplateGraphicRectangularLargeImage__enumerateFullColorImageProviderKeysWithBlock___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v3 = getCDGraphicLargeRectangularComplicationSizeSymbolLoc_ptr;
  v18 = getCDGraphicLargeRectangularComplicationSizeSymbolLoc_ptr;
  if (!getCDGraphicLargeRectangularComplicationSizeSymbolLoc_ptr)
  {
    v4 = ComplicationDisplayLibrary();
    v16[3] = dlsym(v4, "CDGraphicLargeRectangularComplicationSize");
    getCDGraphicLargeRectangularComplicationSizeSymbolLoc_ptr = v16[3];
    v3 = v16[3];
  }

  _Block_object_dispose(&v15, 8);
  if (!v3)
  {
    [CLKComplicationIntentWidgetMigrationConfiguration encodeWithCoder:];
LABEL_12:
    [CLKComplicationIntentWidgetMigrationConfiguration encodeWithCoder:];
    goto LABEL_13;
  }

  v5 = v3(v2);

  v6 = v2;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v7 = getCDGraphicLargeRectangularComplicationInsetSymbolLoc_ptr;
  v18 = getCDGraphicLargeRectangularComplicationInsetSymbolLoc_ptr;
  if (!getCDGraphicLargeRectangularComplicationInsetSymbolLoc_ptr)
  {
    v8 = ComplicationDisplayLibrary();
    v16[3] = dlsym(v8, "CDGraphicLargeRectangularComplicationInset");
    getCDGraphicLargeRectangularComplicationInsetSymbolLoc_ptr = v16[3];
    v7 = v16[3];
  }

  _Block_object_dispose(&v15, 8);
  if (!v7)
  {
    goto LABEL_12;
  }

  v9 = v7(v6);

  v10 = v6;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v11 = getCDGraphicLargeRectangularComplicationLargeImageHeightSymbolLoc_ptr;
  v18 = getCDGraphicLargeRectangularComplicationLargeImageHeightSymbolLoc_ptr;
  if (!getCDGraphicLargeRectangularComplicationLargeImageHeightSymbolLoc_ptr)
  {
    v12 = ComplicationDisplayLibrary();
    v16[3] = dlsym(v12, "CDGraphicLargeRectangularComplicationLargeImageHeight");
    getCDGraphicLargeRectangularComplicationLargeImageHeightSymbolLoc_ptr = v16[3];
    v11 = v16[3];
  }

  _Block_object_dispose(&v15, 8);
  if (!v11)
  {
LABEL_13:
    v14 = [CLKComplicationIntentWidgetMigrationConfiguration encodeWithCoder:];
    _Block_object_dispose(&v15, 8);
    _Unwind_Resume(v14);
  }

  v11(v10);

  return v5 + v9 * -2.0;
}

@end