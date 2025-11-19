@interface CLKComplicationTemplateCircularMediumStackImage
+ (void)_imageSDKSize:(CGSize *)a3 deviceSize:(CGSize *)a4 forSDKVersion:(int64_t)a5;
@end

@implementation CLKComplicationTemplateCircularMediumStackImage

+ (void)_imageSDKSize:(CGSize *)a3 deviceSize:(CGSize *)a4 forSDKVersion:(int64_t)a5
{
  v8 = +[CLKRenderingContext sharedRenderingContext];
  v10 = [v8 device];

  __90__CLKComplicationTemplateCircularMediumStackImage__imageSDKSize_deviceSize_forSDKVersion___block_invoke(v9, v10);
  if (a4)
  {
    *a4 = xmmword_27DE91990;
  }

  if (a3)
  {
    *a3 = *&_imageSDKSize_deviceSize_forSDKVersion___imageSize_918[2 * a5];
  }
}

uint64_t __90__CLKComplicationTemplateCircularMediumStackImage__imageSDKSize_deviceSize_forSDKVersion___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&NTKRichComplicationViewUsePlatterKey_block_invoke_4_lock);
  if (NTKRichComplicationViewUsePlatterKey_block_invoke_4___cachedDevice)
  {
    v3 = NTKRichComplicationViewUsePlatterKey_block_invoke_4___cachedDevice == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == NTKRichComplicationViewUsePlatterKey_block_invoke_4___previousCLKDeviceVersion))
  {
    v5 = NTKRichComplicationViewUsePlatterKey_block_invoke_4_value;
  }

  else
  {
    NTKRichComplicationViewUsePlatterKey_block_invoke_4___cachedDevice = v2;
    NTKRichComplicationViewUsePlatterKey_block_invoke_4___previousCLKDeviceVersion = [v2 version];
    __90__CLKComplicationTemplateCircularMediumStackImage__imageSDKSize_deviceSize_forSDKVersion___block_invoke_3(NTKRichComplicationViewUsePlatterKey_block_invoke_4___previousCLKDeviceVersion, v2);
    v5 = 1;
    NTKRichComplicationViewUsePlatterKey_block_invoke_4_value = 1;
  }

  os_unfair_lock_unlock(&NTKRichComplicationViewUsePlatterKey_block_invoke_4_lock);

  return v5;
}

void __90__CLKComplicationTemplateCircularMediumStackImage__imageSDKSize_deviceSize_forSDKVersion___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v4 = [CLKDeviceMetrics metricsWithDevice:a2 identitySizeClass:2];
  *&xmmword_27DE91990 = __90__CLKComplicationTemplateCircularMediumStackImage__imageSDKSize_deviceSize_forSDKVersion___block_invoke_4(v4, v4);
  *(&xmmword_27DE91990 + 1) = v2;
  _imageSDKSize_deviceSize_forSDKVersion___imageSize_918 = __90__CLKComplicationTemplateCircularMediumStackImage__imageSDKSize_deviceSize_forSDKVersion___block_invoke_4([v4 setNewestAllowedSizeClass:&unk_284A34128], v4);
  *algn_27DE91988 = v3;
}

double __90__CLKComplicationTemplateCircularMediumStackImage__imageSDKSize_deviceSize_forSDKVersion___block_invoke_4(uint64_t a1, void *a2)
{
  v8[2] = *MEMORY[0x277D85DE8];
  v2 = a2;
  [v2 scaledValue:0 withOverride:28.0 forSizeClass:24.0];
  v4 = v3;
  v7[0] = &unk_284A34110;
  v7[1] = &unk_284A34128;
  v8[0] = &unk_284A34E38;
  v8[1] = &unk_284A34DB8;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];
  [v2 scaledValue:v5 withOverrides:14.0];

  return v4;
}

@end