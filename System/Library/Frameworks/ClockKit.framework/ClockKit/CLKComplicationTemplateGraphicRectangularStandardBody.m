@interface CLKComplicationTemplateGraphicRectangularStandardBody
+ (CLKComplicationTemplateGraphicRectangularStandardBody)templateWithHeaderImageProvider:(CLKFullColorImageProvider *)headerImageProvider headerTextProvider:(CLKTextProvider *)headerTextProvider body1TextProvider:(CLKTextProvider *)body1TextProvider;
+ (CLKComplicationTemplateGraphicRectangularStandardBody)templateWithHeaderImageProvider:(CLKFullColorImageProvider *)headerImageProvider headerTextProvider:(CLKTextProvider *)headerTextProvider body1TextProvider:(CLKTextProvider *)body1TextProvider body2TextProvider:(CLKTextProvider *)body2TextProvider;
+ (CLKComplicationTemplateGraphicRectangularStandardBody)templateWithHeaderTextProvider:(CLKTextProvider *)headerTextProvider body1TextProvider:(CLKTextProvider *)body1TextProvider;
+ (CLKComplicationTemplateGraphicRectangularStandardBody)templateWithHeaderTextProvider:(CLKTextProvider *)headerTextProvider body1TextProvider:(CLKTextProvider *)body1TextProvider body2TextProvider:(CLKTextProvider *)body2TextProvider;
- (CLKComplicationTemplateGraphicRectangularStandardBody)initWithHeaderImageProvider:(CLKFullColorImageProvider *)headerImageProvider headerTextProvider:(CLKTextProvider *)headerTextProvider body1TextProvider:(CLKTextProvider *)body1TextProvider body2TextProvider:(CLKTextProvider *)body2TextProvider;
- (void)_enumerateFullColorImageProviderKeysWithBlock:(id)a3;
- (void)_enumerateTextProviderKeysWithBlock:(id)a3;
@end

@implementation CLKComplicationTemplateGraphicRectangularStandardBody

- (CLKComplicationTemplateGraphicRectangularStandardBody)initWithHeaderImageProvider:(CLKFullColorImageProvider *)headerImageProvider headerTextProvider:(CLKTextProvider *)headerTextProvider body1TextProvider:(CLKTextProvider *)body1TextProvider body2TextProvider:(CLKTextProvider *)body2TextProvider
{
  v10 = headerImageProvider;
  v11 = headerTextProvider;
  v12 = body1TextProvider;
  v13 = body2TextProvider;
  v17.receiver = self;
  v17.super_class = CLKComplicationTemplateGraphicRectangularStandardBody;
  v14 = [(CLKComplicationTemplate *)&v17 initPrivate];
  v15 = v14;
  if (v14)
  {
    [(CLKComplicationTemplateGraphicRectangularStandardBody *)v14 setHeaderImageProvider:v10];
    [(CLKComplicationTemplateGraphicRectangularStandardBody *)v15 setHeaderTextProvider:v11];
    [(CLKComplicationTemplateGraphicRectangularStandardBody *)v15 setBody1TextProvider:v12];
    [(CLKComplicationTemplateGraphicRectangularStandardBody *)v15 setBody2TextProvider:v13];
  }

  return v15;
}

+ (CLKComplicationTemplateGraphicRectangularStandardBody)templateWithHeaderTextProvider:(CLKTextProvider *)headerTextProvider body1TextProvider:(CLKTextProvider *)body1TextProvider
{
  v6 = body1TextProvider;
  v7 = headerTextProvider;
  v8 = [[a1 alloc] initWithHeaderTextProvider:v7 body1TextProvider:v6];

  return v8;
}

+ (CLKComplicationTemplateGraphicRectangularStandardBody)templateWithHeaderTextProvider:(CLKTextProvider *)headerTextProvider body1TextProvider:(CLKTextProvider *)body1TextProvider body2TextProvider:(CLKTextProvider *)body2TextProvider
{
  v8 = body2TextProvider;
  v9 = body1TextProvider;
  v10 = headerTextProvider;
  v11 = [[a1 alloc] initWithHeaderTextProvider:v10 body1TextProvider:v9 body2TextProvider:v8];

  return v11;
}

+ (CLKComplicationTemplateGraphicRectangularStandardBody)templateWithHeaderImageProvider:(CLKFullColorImageProvider *)headerImageProvider headerTextProvider:(CLKTextProvider *)headerTextProvider body1TextProvider:(CLKTextProvider *)body1TextProvider
{
  v8 = body1TextProvider;
  v9 = headerTextProvider;
  v10 = headerImageProvider;
  v11 = [[a1 alloc] initWithHeaderImageProvider:v10 headerTextProvider:v9 body1TextProvider:v8];

  return v11;
}

+ (CLKComplicationTemplateGraphicRectangularStandardBody)templateWithHeaderImageProvider:(CLKFullColorImageProvider *)headerImageProvider headerTextProvider:(CLKTextProvider *)headerTextProvider body1TextProvider:(CLKTextProvider *)body1TextProvider body2TextProvider:(CLKTextProvider *)body2TextProvider
{
  v10 = body2TextProvider;
  v11 = body1TextProvider;
  v12 = headerTextProvider;
  v13 = headerImageProvider;
  v14 = [[a1 alloc] initWithHeaderImageProvider:v13 headerTextProvider:v12 body1TextProvider:v11 body2TextProvider:v10];

  return v14;
}

- (void)_enumerateTextProviderKeysWithBlock:(id)a3
{
  v3 = a3;
  v4 = 0;
  v3[2](v3, @"headerTextProvider", 0, 1, &v4);
  if ((v4 & 1) == 0)
  {
    v3[2](v3, @"body1TextProvider", 0, 1, &v4);
    if ((v4 & 1) == 0)
    {
      v3[2](v3, @"body2TextProvider", 1, 1, &v4);
    }
  }
}

- (void)_enumerateFullColorImageProviderKeysWithBlock:(id)a3
{
  v4 = a3;
  v5 = +[CLKRenderingContext sharedRenderingContext];
  v6 = [v5 device];

  __103__CLKComplicationTemplateGraphicRectangularStandardBody__enumerateFullColorImageProviderKeysWithBlock___block_invoke(v7, v6);
  v8 = *&qword_27DE91C88;
  v9 = *&_enumerateFullColorImageProviderKeysWithBlock___imageDiameter_1521[[(CLKComplicationTemplate *)self sdkVersion]];
  v11 = 0;
  v10 = [MEMORY[0x277CCABB0] numberWithDouble:*&_enumerateFullColorImageProviderKeysWithBlock___pointSize_1522];
  v4[2](v4, @"headerImageProvider", 1, 1, v10, 6, &v11, v9, v9, v8, v8, 0.0);
}

uint64_t __103__CLKComplicationTemplateGraphicRectangularStandardBody__enumerateFullColorImageProviderKeysWithBlock___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&NTKRichComplicationViewUsePlatterKey_block_invoke_19_lock);
  if (NTKRichComplicationViewUsePlatterKey_block_invoke_19___cachedDevice)
  {
    v3 = NTKRichComplicationViewUsePlatterKey_block_invoke_19___cachedDevice == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == NTKRichComplicationViewUsePlatterKey_block_invoke_19___previousCLKDeviceVersion))
  {
    v5 = NTKRichComplicationViewUsePlatterKey_block_invoke_19_value;
  }

  else
  {
    NTKRichComplicationViewUsePlatterKey_block_invoke_19___cachedDevice = v2;
    NTKRichComplicationViewUsePlatterKey_block_invoke_19___previousCLKDeviceVersion = [v2 version];
    __103__CLKComplicationTemplateGraphicRectangularStandardBody__enumerateFullColorImageProviderKeysWithBlock___block_invoke_3(NTKRichComplicationViewUsePlatterKey_block_invoke_19___previousCLKDeviceVersion, v2);
    v5 = 1;
    NTKRichComplicationViewUsePlatterKey_block_invoke_19_value = 1;
  }

  os_unfair_lock_unlock(&NTKRichComplicationViewUsePlatterKey_block_invoke_19_lock);

  return v5;
}

void __103__CLKComplicationTemplateGraphicRectangularStandardBody__enumerateFullColorImageProviderKeysWithBlock___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v5 = [CLKDeviceMetrics metricsWithDevice:a2 identitySizeClass:2];
  [v5 scaledValue:12.0];
  _enumerateFullColorImageProviderKeysWithBlock___pointSize_1522 = v2;
  [v5 scaledValue:3 withOverride:12.0 forSizeClass:13.5];
  qword_27DE91C88 = v3;
  [v5 setNewestAllowedSizeClass:&unk_284A34128];
  [v5 scaledValue:3 withOverride:12.0 forSizeClass:13.5];
  _enumerateFullColorImageProviderKeysWithBlock___imageDiameter_1521 = v4;
}

@end