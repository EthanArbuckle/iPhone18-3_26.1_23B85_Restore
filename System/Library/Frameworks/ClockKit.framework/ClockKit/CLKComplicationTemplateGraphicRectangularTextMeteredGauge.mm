@interface CLKComplicationTemplateGraphicRectangularTextMeteredGauge
+ (id)templateWithHeaderImageProvider:(id)provider headerTextProvider:(id)textProvider body1TextProvider:(id)body1TextProvider gaugeProvider:(id)gaugeProvider;
+ (id)templateWithHeaderTextProvider:(id)provider body1TextProvider:(id)textProvider gaugeProvider:(id)gaugeProvider;
- (CLKComplicationTemplateGraphicRectangularTextMeteredGauge)initWithHeaderImageProvider:(id)provider headerTextProvider:(id)textProvider body1TextProvider:(id)body1TextProvider gaugeProvider:(id)gaugeProvider;
- (void)_enumerateFullColorImageProviderKeysWithBlock:(id)block;
- (void)_enumerateTextProviderKeysWithBlock:(id)block;
@end

@implementation CLKComplicationTemplateGraphicRectangularTextMeteredGauge

- (CLKComplicationTemplateGraphicRectangularTextMeteredGauge)initWithHeaderImageProvider:(id)provider headerTextProvider:(id)textProvider body1TextProvider:(id)body1TextProvider gaugeProvider:(id)gaugeProvider
{
  providerCopy = provider;
  textProviderCopy = textProvider;
  body1TextProviderCopy = body1TextProvider;
  gaugeProviderCopy = gaugeProvider;
  v17.receiver = self;
  v17.super_class = CLKComplicationTemplateGraphicRectangularTextMeteredGauge;
  initPrivate = [(CLKComplicationTemplate *)&v17 initPrivate];
  v15 = initPrivate;
  if (initPrivate)
  {
    [(CLKComplicationTemplateGraphicRectangularTextMeteredGauge *)initPrivate setHeaderImageProvider:providerCopy];
    [(CLKComplicationTemplateGraphicRectangularTextMeteredGauge *)v15 setHeaderTextProvider:textProviderCopy];
    [(CLKComplicationTemplateGraphicRectangularTextMeteredGauge *)v15 setBody1TextProvider:body1TextProviderCopy];
    [(CLKComplicationTemplateGraphicRectangularTextMeteredGauge *)v15 setGaugeProvider:gaugeProviderCopy];
  }

  return v15;
}

+ (id)templateWithHeaderTextProvider:(id)provider body1TextProvider:(id)textProvider gaugeProvider:(id)gaugeProvider
{
  gaugeProviderCopy = gaugeProvider;
  textProviderCopy = textProvider;
  providerCopy = provider;
  v11 = [[self alloc] initWithHeaderTextProvider:providerCopy body1TextProvider:textProviderCopy gaugeProvider:gaugeProviderCopy];

  return v11;
}

+ (id)templateWithHeaderImageProvider:(id)provider headerTextProvider:(id)textProvider body1TextProvider:(id)body1TextProvider gaugeProvider:(id)gaugeProvider
{
  gaugeProviderCopy = gaugeProvider;
  body1TextProviderCopy = body1TextProvider;
  textProviderCopy = textProvider;
  providerCopy = provider;
  v14 = [[self alloc] initWithHeaderImageProvider:providerCopy headerTextProvider:textProviderCopy body1TextProvider:body1TextProviderCopy gaugeProvider:gaugeProviderCopy];

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

  __107__CLKComplicationTemplateGraphicRectangularTextMeteredGauge__enumerateFullColorImageProviderKeysWithBlock___block_invoke(v7, device);
  v8 = *&qword_27DE91D50;
  v9 = *&_enumerateFullColorImageProviderKeysWithBlock___imageDiameter_1594[[(CLKComplicationTemplate *)self sdkVersion]];
  v11 = 0;
  v10 = [MEMORY[0x277CCABB0] numberWithDouble:*&_enumerateFullColorImageProviderKeysWithBlock___pointSize_1595];
  blockCopy[2](blockCopy, @"headerImageProvider", 1, 1, v10, 6, &v11, v9, v9, v8, v8, 0.0);
}

uint64_t __107__CLKComplicationTemplateGraphicRectangularTextMeteredGauge__enumerateFullColorImageProviderKeysWithBlock___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&NTKRichComplicationViewUsePlatterKey_block_invoke_23_lock);
  if (NTKRichComplicationViewUsePlatterKey_block_invoke_23___cachedDevice)
  {
    v3 = NTKRichComplicationViewUsePlatterKey_block_invoke_23___cachedDevice == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == NTKRichComplicationViewUsePlatterKey_block_invoke_23___previousCLKDeviceVersion))
  {
    v5 = NTKRichComplicationViewUsePlatterKey_block_invoke_23_value;
  }

  else
  {
    NTKRichComplicationViewUsePlatterKey_block_invoke_23___cachedDevice = v2;
    NTKRichComplicationViewUsePlatterKey_block_invoke_23___previousCLKDeviceVersion = [v2 version];
    __107__CLKComplicationTemplateGraphicRectangularTextMeteredGauge__enumerateFullColorImageProviderKeysWithBlock___block_invoke_3(NTKRichComplicationViewUsePlatterKey_block_invoke_23___previousCLKDeviceVersion, v2);
    v5 = 1;
    NTKRichComplicationViewUsePlatterKey_block_invoke_23_value = 1;
  }

  os_unfair_lock_unlock(&NTKRichComplicationViewUsePlatterKey_block_invoke_23_lock);

  return v5;
}

void __107__CLKComplicationTemplateGraphicRectangularTextMeteredGauge__enumerateFullColorImageProviderKeysWithBlock___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v5 = [CLKDeviceMetrics metricsWithDevice:a2 identitySizeClass:2];
  [v5 scaledValue:19.0];
  _enumerateFullColorImageProviderKeysWithBlock___pointSize_1595 = v2;
  [v5 scaledValue:14.0];
  qword_27DE91D50 = v3;
  [v5 setNewestAllowedSizeClass:&unk_284A34128];
  [v5 scaledValue:14.0];
  _enumerateFullColorImageProviderKeysWithBlock___imageDiameter_1594 = v4;
}

@end