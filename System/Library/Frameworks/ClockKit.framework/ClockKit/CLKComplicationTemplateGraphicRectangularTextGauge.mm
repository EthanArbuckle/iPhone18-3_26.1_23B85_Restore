@interface CLKComplicationTemplateGraphicRectangularTextGauge
+ (CLKComplicationTemplateGraphicRectangularTextGauge)templateWithHeaderImageProvider:(CLKFullColorImageProvider *)headerImageProvider headerTextProvider:(CLKTextProvider *)headerTextProvider body1TextProvider:(CLKTextProvider *)body1TextProvider gaugeProvider:(CLKGaugeProvider *)gaugeProvider;
+ (CLKComplicationTemplateGraphicRectangularTextGauge)templateWithHeaderTextProvider:(CLKTextProvider *)headerTextProvider body1TextProvider:(CLKTextProvider *)body1TextProvider gaugeProvider:(CLKGaugeProvider *)gaugeProvider;
- (CLKComplicationTemplateGraphicRectangularTextGauge)initWithHeaderImageProvider:(CLKFullColorImageProvider *)headerImageProvider headerTextProvider:(CLKTextProvider *)headerTextProvider body1TextProvider:(CLKTextProvider *)body1TextProvider gaugeProvider:(CLKGaugeProvider *)gaugeProvider;
- (void)_enumerateFullColorImageProviderKeysWithBlock:(id)block;
- (void)_enumerateTextProviderKeysWithBlock:(id)block;
@end

@implementation CLKComplicationTemplateGraphicRectangularTextGauge

- (CLKComplicationTemplateGraphicRectangularTextGauge)initWithHeaderImageProvider:(CLKFullColorImageProvider *)headerImageProvider headerTextProvider:(CLKTextProvider *)headerTextProvider body1TextProvider:(CLKTextProvider *)body1TextProvider gaugeProvider:(CLKGaugeProvider *)gaugeProvider
{
  v10 = headerImageProvider;
  v11 = headerTextProvider;
  v12 = body1TextProvider;
  v13 = gaugeProvider;
  v17.receiver = self;
  v17.super_class = CLKComplicationTemplateGraphicRectangularTextGauge;
  initPrivate = [(CLKComplicationTemplate *)&v17 initPrivate];
  v15 = initPrivate;
  if (initPrivate)
  {
    [(CLKComplicationTemplateGraphicRectangularTextGauge *)initPrivate setHeaderImageProvider:v10];
    [(CLKComplicationTemplateGraphicRectangularTextGauge *)v15 setHeaderTextProvider:v11];
    [(CLKComplicationTemplateGraphicRectangularTextGauge *)v15 setBody1TextProvider:v12];
    [(CLKComplicationTemplateGraphicRectangularTextGauge *)v15 setGaugeProvider:v13];
  }

  return v15;
}

+ (CLKComplicationTemplateGraphicRectangularTextGauge)templateWithHeaderTextProvider:(CLKTextProvider *)headerTextProvider body1TextProvider:(CLKTextProvider *)body1TextProvider gaugeProvider:(CLKGaugeProvider *)gaugeProvider
{
  v8 = gaugeProvider;
  v9 = body1TextProvider;
  v10 = headerTextProvider;
  v11 = [[self alloc] initWithHeaderTextProvider:v10 body1TextProvider:v9 gaugeProvider:v8];

  return v11;
}

+ (CLKComplicationTemplateGraphicRectangularTextGauge)templateWithHeaderImageProvider:(CLKFullColorImageProvider *)headerImageProvider headerTextProvider:(CLKTextProvider *)headerTextProvider body1TextProvider:(CLKTextProvider *)body1TextProvider gaugeProvider:(CLKGaugeProvider *)gaugeProvider
{
  v10 = gaugeProvider;
  v11 = body1TextProvider;
  v12 = headerTextProvider;
  v13 = headerImageProvider;
  v14 = [[self alloc] initWithHeaderImageProvider:v13 headerTextProvider:v12 body1TextProvider:v11 gaugeProvider:v10];

  return v14;
}

- (void)_enumerateTextProviderKeysWithBlock:(id)block
{
  blockCopy = block;
  v4 = 0;
  blockCopy[2](blockCopy, @"headerTextProvider", 0, 1, &v4);
  if ((v4 & 1) == 0)
  {
    blockCopy[2](blockCopy, @"body1TextProvider", 0, 1, &v4);
  }
}

- (void)_enumerateFullColorImageProviderKeysWithBlock:(id)block
{
  blockCopy = block;
  v5 = +[CLKRenderingContext sharedRenderingContext];
  device = [v5 device];

  __100__CLKComplicationTemplateGraphicRectangularTextGauge__enumerateFullColorImageProviderKeysWithBlock___block_invoke(v7, device);
  v8 = *&qword_27DE91CB8;
  v9 = *&_enumerateFullColorImageProviderKeysWithBlock___imageDiameter_1538[[(CLKComplicationTemplate *)self sdkVersion]];
  v11 = 0;
  v10 = [MEMORY[0x277CCABB0] numberWithDouble:*&_enumerateFullColorImageProviderKeysWithBlock___pointSize_1539];
  blockCopy[2](blockCopy, @"headerImageProvider", 1, 1, v10, 6, &v11, v9, v9, v8, v8, 0.0);
}

uint64_t __100__CLKComplicationTemplateGraphicRectangularTextGauge__enumerateFullColorImageProviderKeysWithBlock___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&NTKRichComplicationViewUsePlatterKey_block_invoke_20_lock);
  if (NTKRichComplicationViewUsePlatterKey_block_invoke_20___cachedDevice)
  {
    v3 = NTKRichComplicationViewUsePlatterKey_block_invoke_20___cachedDevice == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == NTKRichComplicationViewUsePlatterKey_block_invoke_20___previousCLKDeviceVersion))
  {
    v5 = NTKRichComplicationViewUsePlatterKey_block_invoke_20_value;
  }

  else
  {
    NTKRichComplicationViewUsePlatterKey_block_invoke_20___cachedDevice = v2;
    NTKRichComplicationViewUsePlatterKey_block_invoke_20___previousCLKDeviceVersion = [v2 version];
    __100__CLKComplicationTemplateGraphicRectangularTextGauge__enumerateFullColorImageProviderKeysWithBlock___block_invoke_3(NTKRichComplicationViewUsePlatterKey_block_invoke_20___previousCLKDeviceVersion, v2);
    v5 = 1;
    NTKRichComplicationViewUsePlatterKey_block_invoke_20_value = 1;
  }

  os_unfair_lock_unlock(&NTKRichComplicationViewUsePlatterKey_block_invoke_20_lock);

  return v5;
}

void __100__CLKComplicationTemplateGraphicRectangularTextGauge__enumerateFullColorImageProviderKeysWithBlock___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v5 = [CLKDeviceMetrics metricsWithDevice:a2 identitySizeClass:2];
  [v5 scaledValue:12.0];
  _enumerateFullColorImageProviderKeysWithBlock___pointSize_1539 = v2;
  [v5 scaledValue:3 withOverride:12.0 forSizeClass:13.5];
  qword_27DE91CB8 = v3;
  [v5 setNewestAllowedSizeClass:&unk_284A34128];
  [v5 scaledValue:3 withOverride:12.0 forSizeClass:13.5];
  _enumerateFullColorImageProviderKeysWithBlock___imageDiameter_1538 = v4;
}

@end