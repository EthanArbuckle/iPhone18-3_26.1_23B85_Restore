@interface CLKComplicationTemplateGraphicExtraLargeCircularStackImage
+ (CLKComplicationTemplateGraphicExtraLargeCircularStackImage)templateWithLine1ImageProvider:(CLKFullColorImageProvider *)line1ImageProvider line2TextProvider:(CLKTextProvider *)line2TextProvider;
- (CLKComplicationTemplateGraphicExtraLargeCircularStackImage)initWithLine1ImageProvider:(CLKFullColorImageProvider *)line1ImageProvider line2TextProvider:(CLKTextProvider *)line2TextProvider;
- (void)_enumerateFullColorImageProviderKeysWithBlock:(id)a3;
@end

@implementation CLKComplicationTemplateGraphicExtraLargeCircularStackImage

- (CLKComplicationTemplateGraphicExtraLargeCircularStackImage)initWithLine1ImageProvider:(CLKFullColorImageProvider *)line1ImageProvider line2TextProvider:(CLKTextProvider *)line2TextProvider
{
  v6 = line1ImageProvider;
  v7 = line2TextProvider;
  v11.receiver = self;
  v11.super_class = CLKComplicationTemplateGraphicExtraLargeCircularStackImage;
  v8 = [(CLKComplicationTemplate *)&v11 initPrivate];
  v9 = v8;
  if (v8)
  {
    [(CLKComplicationTemplateGraphicExtraLargeCircularStackImage *)v8 setLine1ImageProvider:v6];
    [(CLKComplicationTemplateGraphicExtraLargeCircularStackImage *)v9 setLine2TextProvider:v7];
  }

  return v9;
}

+ (CLKComplicationTemplateGraphicExtraLargeCircularStackImage)templateWithLine1ImageProvider:(CLKFullColorImageProvider *)line1ImageProvider line2TextProvider:(CLKTextProvider *)line2TextProvider
{
  v6 = line2TextProvider;
  v7 = line1ImageProvider;
  v8 = [[a1 alloc] initWithLine1ImageProvider:v7 line2TextProvider:v6];

  return v8;
}

- (void)_enumerateFullColorImageProviderKeysWithBlock:(id)a3
{
  v4 = a3;
  v5 = +[CLKRenderingContext sharedRenderingContext];
  v6 = [v5 device];

  __108__CLKComplicationTemplateGraphicExtraLargeCircularStackImage__enumerateFullColorImageProviderKeysWithBlock___block_invoke(v7, v6);
  v8 = *&qword_27DE91E38;
  v9 = unk_27DE91E40;
  v10 = &_enumerateFullColorImageProviderKeysWithBlock___maxImageSize[2 * [(CLKComplicationTemplate *)self sdkVersion]];
  v11 = *v10;
  v12 = *(v10 + 1);
  v15 = 0;
  *&v13 = v9;
  v14 = [MEMORY[0x277CCABB0] numberWithFloat:v13];
  v4[2](v4, @"line1ImageProvider", 0, 1, v14, 4, &v15, v11, v12, v8, v9, 0.0);
}

uint64_t __108__CLKComplicationTemplateGraphicExtraLargeCircularStackImage__enumerateFullColorImageProviderKeysWithBlock___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&NTKRichComplicationViewUsePlatterKey_block_invoke_28_lock);
  if (NTKRichComplicationViewUsePlatterKey_block_invoke_28___cachedDevice)
  {
    v3 = NTKRichComplicationViewUsePlatterKey_block_invoke_28___cachedDevice == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == NTKRichComplicationViewUsePlatterKey_block_invoke_28___previousCLKDeviceVersion))
  {
    v5 = NTKRichComplicationViewUsePlatterKey_block_invoke_28_value;
  }

  else
  {
    NTKRichComplicationViewUsePlatterKey_block_invoke_28___cachedDevice = v2;
    NTKRichComplicationViewUsePlatterKey_block_invoke_28___previousCLKDeviceVersion = [v2 version];
    __108__CLKComplicationTemplateGraphicExtraLargeCircularStackImage__enumerateFullColorImageProviderKeysWithBlock___block_invoke_3(NTKRichComplicationViewUsePlatterKey_block_invoke_28___previousCLKDeviceVersion, v2);
    v5 = 1;
    NTKRichComplicationViewUsePlatterKey_block_invoke_28_value = 1;
  }

  os_unfair_lock_unlock(&NTKRichComplicationViewUsePlatterKey_block_invoke_28_lock);

  return v5;
}

void __108__CLKComplicationTemplateGraphicExtraLargeCircularStackImage__enumerateFullColorImageProviderKeysWithBlock___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[CLKRenderingContext sharedRenderingContext];
  v4 = [v3 device];
  v5 = [CLKDeviceMetrics metricsWithDevice:v4 identitySizeClass:2];

  v6 = CLKComplicationGraphicExtraLargeCircularScalingFactor();
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __108__CLKComplicationTemplateGraphicExtraLargeCircularStackImage__enumerateFullColorImageProviderKeysWithBlock___block_invoke_4;
  v10[3] = &__block_descriptor_40_e36__CGSize_dd_16__0__CLKDeviceMetrics_8l;
  *&v10[4] = v6;
  v7 = MEMORY[0x2383C4AF0](v10);
  qword_27DE91E38 = (v7)[2](v7, v5);
  unk_27DE91E40 = v8;
  [v5 setNewestAllowedSizeClass:&unk_284A34128];
  _enumerateFullColorImageProviderKeysWithBlock___maxImageSize = (v7)[2](v7, v5);
  unk_27DE91E30 = v9;
}

@end