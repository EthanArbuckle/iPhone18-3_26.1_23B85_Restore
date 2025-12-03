@interface CLKComplicationTemplateCircularSmallCircularImage
+ (id)templateWithImageProvider:(id)provider;
+ (void)_imageSDKSize:(CGSize *)size deviceSize:(CGSize *)deviceSize forSDKVersion:(int64_t)version;
- (CLKComplicationTemplateCircularSmallCircularImage)initWithImageProvider:(id)provider;
- (void)_enumerateImageProviderKeysWithBlock:(id)block;
@end

@implementation CLKComplicationTemplateCircularSmallCircularImage

- (CLKComplicationTemplateCircularSmallCircularImage)initWithImageProvider:(id)provider
{
  providerCopy = provider;
  v8.receiver = self;
  v8.super_class = CLKComplicationTemplateCircularSmallCircularImage;
  initPrivate = [(CLKComplicationTemplate *)&v8 initPrivate];
  v6 = initPrivate;
  if (initPrivate)
  {
    [(CLKComplicationTemplateCircularSmallCircularImage *)initPrivate setImageProvider:providerCopy];
  }

  return v6;
}

+ (id)templateWithImageProvider:(id)provider
{
  providerCopy = provider;
  v5 = [[self alloc] initWithImageProvider:providerCopy];

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
  (*(blockCopy + 2))(blockCopy, @"imageProvider", 0, 1, 0, 4, 1, &v9, v7, v8, v5, v6);
}

+ (void)_imageSDKSize:(CGSize *)size deviceSize:(CGSize *)deviceSize forSDKVersion:(int64_t)version
{
  v10[2] = *MEMORY[0x277D85DE8];
  v9[0] = &unk_284A34110;
  v9[1] = &unk_284A34128;
  v10[0] = &unk_284A34DC8;
  v10[1] = &unk_284A34DD8;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:2];
  _SquareImageSizeScaled(v8, 1, version, size, deviceSize, 32.0);
}

@end