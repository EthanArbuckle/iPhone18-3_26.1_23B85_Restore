@interface CLKComplicationTemplateModularSmallProgressRingImage
+ (id)templateWithImageProvider:(id)provider progressProvider:(id)progressProvider ringStyle:(int64_t)style;
+ (void)imageSDKSize:(CGSize *)size deviceSize:(CGSize *)deviceSize forSDKVersion:(int64_t)version;
- (CLKComplicationTemplateModularSmallProgressRingImage)initWithImageProvider:(id)provider progressProvider:(id)progressProvider ringStyle:(int64_t)style;
- (void)_enumerateImageProviderKeysWithBlock:(id)block;
@end

@implementation CLKComplicationTemplateModularSmallProgressRingImage

- (CLKComplicationTemplateModularSmallProgressRingImage)initWithImageProvider:(id)provider progressProvider:(id)progressProvider ringStyle:(int64_t)style
{
  providerCopy = provider;
  progressProviderCopy = progressProvider;
  v13.receiver = self;
  v13.super_class = CLKComplicationTemplateModularSmallProgressRingImage;
  initPrivate = [(CLKComplicationTemplate *)&v13 initPrivate];
  v11 = initPrivate;
  if (initPrivate)
  {
    [(CLKComplicationTemplateModularSmallProgressRingImage *)initPrivate setImageProvider:providerCopy];
    [(CLKComplicationTemplateModularSmallProgressRingImage *)v11 setProgressProvider:progressProviderCopy];
    [(CLKComplicationTemplateModularSmallProgressRingImage *)v11 setRingStyle:style];
  }

  return v11;
}

+ (id)templateWithImageProvider:(id)provider progressProvider:(id)progressProvider ringStyle:(int64_t)style
{
  progressProviderCopy = progressProvider;
  providerCopy = provider;
  v10 = [[self alloc] initWithImageProvider:providerCopy progressProvider:progressProviderCopy ringStyle:style];

  return v10;
}

- (void)_enumerateImageProviderKeysWithBlock:(id)block
{
  v9 = 0;
  v7 = 0.0;
  v8 = 0.0;
  v5 = 0.0;
  v6 = 0.0;
  blockCopy = block;
  [objc_opt_class() imageSDKSize:&v7 deviceSize:&v5 forSDKVersion:{-[CLKComplicationTemplate sdkVersion](self, "sdkVersion")}];
  (*(blockCopy + 2))(blockCopy, @"imageProvider", 0, 1, 0, 4, 1, &v9, v7, v8, v5, v6);
}

+ (void)imageSDKSize:(CGSize *)size deviceSize:(CGSize *)deviceSize forSDKVersion:(int64_t)version
{
  v10[1] = *MEMORY[0x277D85DE8];
  v9 = &unk_284A34110;
  v10[0] = &unk_284A34D68;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  _SquareImageSizeScaled(v8, 1, version, size, deviceSize, 19.0);
}

@end