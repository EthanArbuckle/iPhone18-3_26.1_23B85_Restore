@interface CLKComplicationTemplateCircularSmallStackImage
+ (CLKComplicationTemplateCircularSmallStackImage)templateWithLine1ImageProvider:(CLKImageProvider *)line1ImageProvider line2TextProvider:(CLKTextProvider *)line2TextProvider;
+ (void)_imageSDKSize:(CGSize *)size deviceSize:(CGSize *)deviceSize forSDKVersion:(int64_t)version;
- (CLKComplicationTemplateCircularSmallStackImage)initWithLine1ImageProvider:(CLKImageProvider *)line1ImageProvider line2TextProvider:(CLKTextProvider *)line2TextProvider;
- (void)_enumerateImageProviderKeysWithBlock:(id)block;
@end

@implementation CLKComplicationTemplateCircularSmallStackImage

- (CLKComplicationTemplateCircularSmallStackImage)initWithLine1ImageProvider:(CLKImageProvider *)line1ImageProvider line2TextProvider:(CLKTextProvider *)line2TextProvider
{
  v6 = line1ImageProvider;
  v7 = line2TextProvider;
  v11.receiver = self;
  v11.super_class = CLKComplicationTemplateCircularSmallStackImage;
  initPrivate = [(CLKComplicationTemplate *)&v11 initPrivate];
  v9 = initPrivate;
  if (initPrivate)
  {
    [(CLKComplicationTemplateCircularSmallStackImage *)initPrivate setLine1ImageProvider:v6];
    [(CLKComplicationTemplateCircularSmallStackImage *)v9 setLine2TextProvider:v7];
  }

  return v9;
}

+ (CLKComplicationTemplateCircularSmallStackImage)templateWithLine1ImageProvider:(CLKImageProvider *)line1ImageProvider line2TextProvider:(CLKTextProvider *)line2TextProvider
{
  v6 = line2TextProvider;
  v7 = line1ImageProvider;
  v8 = [[self alloc] initWithLine1ImageProvider:v7 line2TextProvider:v6];

  return v8;
}

- (void)_enumerateImageProviderKeysWithBlock:(id)block
{
  v9 = 0;
  v7 = 0.0;
  v8 = 0.0;
  v5 = 0.0;
  v6 = 0.0;
  blockCopy = block;
  [objc_opt_class() _imageSDKSize:&v7 deviceSize:&v5 forSDKVersion:{-[CLKComplicationTemplate sdkVersion](self, "sdkVersion")}];
  (*(blockCopy + 2))(blockCopy, @"line1ImageProvider", 0, 1, 0, 4, 0, &v9, v7, v8, v5, v6);
}

+ (void)_imageSDKSize:(CGSize *)size deviceSize:(CGSize *)deviceSize forSDKVersion:(int64_t)version
{
  v8 = +[CLKRenderingContext sharedRenderingContext];
  device = [v8 device];

  __89__CLKComplicationTemplateCircularSmallStackImage__imageSDKSize_deviceSize_forSDKVersion___block_invoke(v9, device);
  if (deviceSize)
  {
    *deviceSize = xmmword_27DE91958;
  }

  if (size)
  {
    *size = *&_imageSDKSize_deviceSize_forSDKVersion___imageSize[2 * version];
  }
}

uint64_t __89__CLKComplicationTemplateCircularSmallStackImage__imageSDKSize_deviceSize_forSDKVersion___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&NTKRichComplicationViewUsePlatterKey_block_invoke_3_lock);
  if (NTKRichComplicationViewUsePlatterKey_block_invoke_3___cachedDevice)
  {
    v3 = NTKRichComplicationViewUsePlatterKey_block_invoke_3___cachedDevice == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == NTKRichComplicationViewUsePlatterKey_block_invoke_3___previousCLKDeviceVersion))
  {
    v5 = NTKRichComplicationViewUsePlatterKey_block_invoke_3_value;
  }

  else
  {
    NTKRichComplicationViewUsePlatterKey_block_invoke_3___cachedDevice = v2;
    NTKRichComplicationViewUsePlatterKey_block_invoke_3___previousCLKDeviceVersion = [v2 version];
    __89__CLKComplicationTemplateCircularSmallStackImage__imageSDKSize_deviceSize_forSDKVersion___block_invoke_3(NTKRichComplicationViewUsePlatterKey_block_invoke_3___previousCLKDeviceVersion, v2);
    v5 = 1;
    NTKRichComplicationViewUsePlatterKey_block_invoke_3_value = 1;
  }

  os_unfair_lock_unlock(&NTKRichComplicationViewUsePlatterKey_block_invoke_3_lock);

  return v5;
}

void __89__CLKComplicationTemplateCircularSmallStackImage__imageSDKSize_deviceSize_forSDKVersion___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v4 = [CLKDeviceMetrics metricsWithDevice:a2 identitySizeClass:2];
  *&xmmword_27DE91958 = __89__CLKComplicationTemplateCircularSmallStackImage__imageSDKSize_deviceSize_forSDKVersion___block_invoke_4(v4, v4);
  *(&xmmword_27DE91958 + 1) = v2;
  _imageSDKSize_deviceSize_forSDKVersion___imageSize = __89__CLKComplicationTemplateCircularSmallStackImage__imageSDKSize_deviceSize_forSDKVersion___block_invoke_4([v4 setNewestAllowedSizeClass:&unk_284A34128], v4);
  unk_27DE91950 = v3;
}

double __89__CLKComplicationTemplateCircularSmallStackImage__imageSDKSize_deviceSize_forSDKVersion___block_invoke_4(uint64_t a1, void *a2)
{
  v9[2] = *MEMORY[0x277D85DE8];
  v8[0] = &unk_284A34110;
  v8[1] = &unk_284A34128;
  v9[0] = &unk_284A34DB8;
  v9[1] = &unk_284A34DE8;
  v2 = MEMORY[0x277CBEAC0];
  v3 = a2;
  v4 = [v2 dictionaryWithObjects:v9 forKeys:v8 count:2];
  [v3 scaledValue:v4 withOverrides:17.0];
  v6 = v5;

  [v3 scaledValue:0 withOverride:8.0 forSizeClass:7.0];
  return v6;
}

@end