@interface CLKComplicationTemplateGraphicRectangularTextMeteredGauge
+ (id)templateWithHeaderImageProvider:(id)a3 headerTextProvider:(id)a4 body1TextProvider:(id)a5 gaugeProvider:(id)a6;
+ (id)templateWithHeaderTextProvider:(id)a3 body1TextProvider:(id)a4 gaugeProvider:(id)a5;
- (CLKComplicationTemplateGraphicRectangularTextMeteredGauge)initWithHeaderImageProvider:(id)a3 headerTextProvider:(id)a4 body1TextProvider:(id)a5 gaugeProvider:(id)a6;
- (void)_enumerateFullColorImageProviderKeysWithBlock:(id)a3;
- (void)_enumerateTextProviderKeysWithBlock:(id)a3;
@end

@implementation CLKComplicationTemplateGraphicRectangularTextMeteredGauge

- (CLKComplicationTemplateGraphicRectangularTextMeteredGauge)initWithHeaderImageProvider:(id)a3 headerTextProvider:(id)a4 body1TextProvider:(id)a5 gaugeProvider:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v17.receiver = self;
  v17.super_class = CLKComplicationTemplateGraphicRectangularTextMeteredGauge;
  v14 = [(CLKComplicationTemplate *)&v17 initPrivate];
  v15 = v14;
  if (v14)
  {
    [(CLKComplicationTemplateGraphicRectangularTextMeteredGauge *)v14 setHeaderImageProvider:v10];
    [(CLKComplicationTemplateGraphicRectangularTextMeteredGauge *)v15 setHeaderTextProvider:v11];
    [(CLKComplicationTemplateGraphicRectangularTextMeteredGauge *)v15 setBody1TextProvider:v12];
    [(CLKComplicationTemplateGraphicRectangularTextMeteredGauge *)v15 setGaugeProvider:v13];
  }

  return v15;
}

+ (id)templateWithHeaderTextProvider:(id)a3 body1TextProvider:(id)a4 gaugeProvider:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[a1 alloc] initWithHeaderTextProvider:v10 body1TextProvider:v9 gaugeProvider:v8];

  return v11;
}

+ (id)templateWithHeaderImageProvider:(id)a3 headerTextProvider:(id)a4 body1TextProvider:(id)a5 gaugeProvider:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [[a1 alloc] initWithHeaderImageProvider:v13 headerTextProvider:v12 body1TextProvider:v11 gaugeProvider:v10];

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
  }
}

- (void)_enumerateFullColorImageProviderKeysWithBlock:(id)a3
{
  v4 = a3;
  v5 = +[CLKRenderingContext sharedRenderingContext];
  v6 = [v5 device];

  __107__CLKComplicationTemplateGraphicRectangularTextMeteredGauge__enumerateFullColorImageProviderKeysWithBlock___block_invoke(v7, v6);
  v8 = *&qword_27DE91D50;
  v9 = *&_enumerateFullColorImageProviderKeysWithBlock___imageDiameter_1594[[(CLKComplicationTemplate *)self sdkVersion]];
  v11 = 0;
  v10 = [MEMORY[0x277CCABB0] numberWithDouble:*&_enumerateFullColorImageProviderKeysWithBlock___pointSize_1595];
  v4[2](v4, @"headerImageProvider", 1, 1, v10, 6, &v11, v9, v9, v8, v8, 0.0);
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