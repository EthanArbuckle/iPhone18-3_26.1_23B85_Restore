@interface CLKComplicationTemplateGraphicRectangularLargeText
+ (id)templateWithHeaderImageProvider:(id)a3 headerTextProvider:(id)a4 bodyTextProvider:(id)a5;
+ (id)templateWithHeaderTextProvider:(id)a3 bodyTextProvider:(id)a4;
- (CLKComplicationTemplateGraphicRectangularLargeText)initWithHeaderImageProvider:(id)a3 headerTextProvider:(id)a4 bodyTextProvider:(id)a5;
- (void)_enumerateFullColorImageProviderKeysWithBlock:(id)a3;
- (void)_enumerateTextProviderKeysWithBlock:(id)a3;
@end

@implementation CLKComplicationTemplateGraphicRectangularLargeText

- (CLKComplicationTemplateGraphicRectangularLargeText)initWithHeaderImageProvider:(id)a3 headerTextProvider:(id)a4 bodyTextProvider:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = CLKComplicationTemplateGraphicRectangularLargeText;
  v11 = [(CLKComplicationTemplate *)&v14 initPrivate];
  v12 = v11;
  if (v11)
  {
    [(CLKComplicationTemplateGraphicRectangularLargeText *)v11 setHeaderImageProvider:v8];
    [(CLKComplicationTemplateGraphicRectangularLargeText *)v12 setHeaderTextProvider:v9];
    [(CLKComplicationTemplateGraphicRectangularLargeText *)v12 setBodyTextProvider:v10];
  }

  return v12;
}

+ (id)templateWithHeaderTextProvider:(id)a3 bodyTextProvider:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithHeaderTextProvider:v7 bodyTextProvider:v6];

  return v8;
}

+ (id)templateWithHeaderImageProvider:(id)a3 headerTextProvider:(id)a4 bodyTextProvider:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[a1 alloc] initWithHeaderImageProvider:v10 headerTextProvider:v9 bodyTextProvider:v8];

  return v11;
}

- (void)_enumerateTextProviderKeysWithBlock:(id)a3
{
  v3 = a3;
  v4 = 0;
  v3[2](v3, @"headerTextProvider", 0, 1, &v4);
  if ((v4 & 1) == 0)
  {
    v3[2](v3, @"bodyTextProvider", 0, 1, &v4);
  }
}

- (void)_enumerateFullColorImageProviderKeysWithBlock:(id)a3
{
  v4 = a3;
  v5 = +[CLKRenderingContext sharedRenderingContext];
  v6 = [v5 device];

  __100__CLKComplicationTemplateGraphicRectangularLargeText__enumerateFullColorImageProviderKeysWithBlock___block_invoke(v7, v6);
  v8 = *&qword_27DE91CE8;
  v9 = *&_enumerateFullColorImageProviderKeysWithBlock___imageDiameter_1558[[(CLKComplicationTemplate *)self sdkVersion]];
  v11 = 0;
  v10 = [MEMORY[0x277CCABB0] numberWithDouble:*&_enumerateFullColorImageProviderKeysWithBlock___pointSize_1559];
  v4[2](v4, @"headerImageProvider", 1, 1, v10, 6, &v11, v9, v9, v8, v8, 0.0);
}

uint64_t __100__CLKComplicationTemplateGraphicRectangularLargeText__enumerateFullColorImageProviderKeysWithBlock___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&NTKRichComplicationViewUsePlatterKey_block_invoke_21_lock);
  if (NTKRichComplicationViewUsePlatterKey_block_invoke_21___cachedDevice)
  {
    v3 = NTKRichComplicationViewUsePlatterKey_block_invoke_21___cachedDevice == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == NTKRichComplicationViewUsePlatterKey_block_invoke_21___previousCLKDeviceVersion))
  {
    v5 = NTKRichComplicationViewUsePlatterKey_block_invoke_21_value;
  }

  else
  {
    NTKRichComplicationViewUsePlatterKey_block_invoke_21___cachedDevice = v2;
    NTKRichComplicationViewUsePlatterKey_block_invoke_21___previousCLKDeviceVersion = [v2 version];
    __100__CLKComplicationTemplateGraphicRectangularLargeText__enumerateFullColorImageProviderKeysWithBlock___block_invoke_3(NTKRichComplicationViewUsePlatterKey_block_invoke_21___previousCLKDeviceVersion, v2);
    v5 = 1;
    NTKRichComplicationViewUsePlatterKey_block_invoke_21_value = 1;
  }

  os_unfair_lock_unlock(&NTKRichComplicationViewUsePlatterKey_block_invoke_21_lock);

  return v5;
}

void __100__CLKComplicationTemplateGraphicRectangularLargeText__enumerateFullColorImageProviderKeysWithBlock___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v5 = [CLKDeviceMetrics metricsWithDevice:a2 identitySizeClass:2];
  [v5 scaledValue:12.0];
  _enumerateFullColorImageProviderKeysWithBlock___pointSize_1559 = v2;
  [v5 scaledValue:3 withOverride:12.0 forSizeClass:13.5];
  qword_27DE91CE8 = v3;
  [v5 setNewestAllowedSizeClass:&unk_284A34128];
  [v5 scaledValue:3 withOverride:12.0 forSizeClass:13.5];
  _enumerateFullColorImageProviderKeysWithBlock___imageDiameter_1558 = v4;
}

@end