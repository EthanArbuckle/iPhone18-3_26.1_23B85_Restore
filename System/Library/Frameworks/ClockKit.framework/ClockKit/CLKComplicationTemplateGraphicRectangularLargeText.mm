@interface CLKComplicationTemplateGraphicRectangularLargeText
+ (id)templateWithHeaderImageProvider:(id)provider headerTextProvider:(id)textProvider bodyTextProvider:(id)bodyTextProvider;
+ (id)templateWithHeaderTextProvider:(id)provider bodyTextProvider:(id)textProvider;
- (CLKComplicationTemplateGraphicRectangularLargeText)initWithHeaderImageProvider:(id)provider headerTextProvider:(id)textProvider bodyTextProvider:(id)bodyTextProvider;
- (void)_enumerateFullColorImageProviderKeysWithBlock:(id)block;
- (void)_enumerateTextProviderKeysWithBlock:(id)block;
@end

@implementation CLKComplicationTemplateGraphicRectangularLargeText

- (CLKComplicationTemplateGraphicRectangularLargeText)initWithHeaderImageProvider:(id)provider headerTextProvider:(id)textProvider bodyTextProvider:(id)bodyTextProvider
{
  providerCopy = provider;
  textProviderCopy = textProvider;
  bodyTextProviderCopy = bodyTextProvider;
  v14.receiver = self;
  v14.super_class = CLKComplicationTemplateGraphicRectangularLargeText;
  initPrivate = [(CLKComplicationTemplate *)&v14 initPrivate];
  v12 = initPrivate;
  if (initPrivate)
  {
    [(CLKComplicationTemplateGraphicRectangularLargeText *)initPrivate setHeaderImageProvider:providerCopy];
    [(CLKComplicationTemplateGraphicRectangularLargeText *)v12 setHeaderTextProvider:textProviderCopy];
    [(CLKComplicationTemplateGraphicRectangularLargeText *)v12 setBodyTextProvider:bodyTextProviderCopy];
  }

  return v12;
}

+ (id)templateWithHeaderTextProvider:(id)provider bodyTextProvider:(id)textProvider
{
  textProviderCopy = textProvider;
  providerCopy = provider;
  v8 = [[self alloc] initWithHeaderTextProvider:providerCopy bodyTextProvider:textProviderCopy];

  return v8;
}

+ (id)templateWithHeaderImageProvider:(id)provider headerTextProvider:(id)textProvider bodyTextProvider:(id)bodyTextProvider
{
  bodyTextProviderCopy = bodyTextProvider;
  textProviderCopy = textProvider;
  providerCopy = provider;
  v11 = [[self alloc] initWithHeaderImageProvider:providerCopy headerTextProvider:textProviderCopy bodyTextProvider:bodyTextProviderCopy];

  return v11;
}

- (void)_enumerateTextProviderKeysWithBlock:(id)block
{
  blockCopy = block;
  v4 = 0;
  blockCopy[2](blockCopy, @"headerTextProvider", 0, 1, &v4);
  if ((v4 & 1) == 0)
  {
    blockCopy[2](blockCopy, @"bodyTextProvider", 0, 1, &v4);
  }
}

- (void)_enumerateFullColorImageProviderKeysWithBlock:(id)block
{
  blockCopy = block;
  v5 = +[CLKRenderingContext sharedRenderingContext];
  device = [v5 device];

  __100__CLKComplicationTemplateGraphicRectangularLargeText__enumerateFullColorImageProviderKeysWithBlock___block_invoke(v7, device);
  v8 = *&qword_27DE91CE8;
  v9 = *&_enumerateFullColorImageProviderKeysWithBlock___imageDiameter_1558[[(CLKComplicationTemplate *)self sdkVersion]];
  v11 = 0;
  v10 = [MEMORY[0x277CCABB0] numberWithDouble:*&_enumerateFullColorImageProviderKeysWithBlock___pointSize_1559];
  blockCopy[2](blockCopy, @"headerImageProvider", 1, 1, v10, 6, &v11, v9, v9, v8, v8, 0.0);
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