@interface CLKComplicationTemplateCircularSmallSimpleImage
+ (CLKComplicationTemplateCircularSmallSimpleImage)templateWithImageProvider:(CLKImageProvider *)imageProvider;
+ (void)_imageSDKSize:(CGSize *)size deviceSize:(CGSize *)deviceSize forSDKVersion:(int64_t)version;
- (CLKComplicationTemplateCircularSmallSimpleImage)initWithImageProvider:(CLKImageProvider *)imageProvider;
- (void)_enumerateImageProviderKeysWithBlock:(id)block;
@end

@implementation CLKComplicationTemplateCircularSmallSimpleImage

- (CLKComplicationTemplateCircularSmallSimpleImage)initWithImageProvider:(CLKImageProvider *)imageProvider
{
  v4 = imageProvider;
  v8.receiver = self;
  v8.super_class = CLKComplicationTemplateCircularSmallSimpleImage;
  initPrivate = [(CLKComplicationTemplate *)&v8 initPrivate];
  v6 = initPrivate;
  if (initPrivate)
  {
    [(CLKComplicationTemplateCircularSmallSimpleImage *)initPrivate setImageProvider:v4];
  }

  return v6;
}

+ (CLKComplicationTemplateCircularSmallSimpleImage)templateWithImageProvider:(CLKImageProvider *)imageProvider
{
  v4 = imageProvider;
  v5 = [[self alloc] initWithImageProvider:v4];

  return v5;
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
  (*(blockCopy + 2))(blockCopy, @"imageProvider", 0, 1, 0, 4, 0, &v9, v7, v8, v5, v6);
}

+ (void)_imageSDKSize:(CGSize *)size deviceSize:(CGSize *)deviceSize forSDKVersion:(int64_t)version
{
  v10[1] = *MEMORY[0x277D85DE8];
  v9 = &unk_284A34110;
  v10[0] = &unk_284A34DB8;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  _SquareImageSizeScaled(v8, 1, version, size, deviceSize, 18.0);
}

@end