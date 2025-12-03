@interface CLKComplicationTemplateCircularSmallProgressRingImage
+ (id)templateWithImageProvider:(id)provider progressProvider:(id)progressProvider ringStyle:(int64_t)style;
- (CLKComplicationTemplateCircularSmallProgressRingImage)initWithImageProvider:(id)provider progressProvider:(id)progressProvider ringStyle:(int64_t)style;
- (void)_enumerateImageProviderKeysWithBlock:(id)block;
@end

@implementation CLKComplicationTemplateCircularSmallProgressRingImage

- (CLKComplicationTemplateCircularSmallProgressRingImage)initWithImageProvider:(id)provider progressProvider:(id)progressProvider ringStyle:(int64_t)style
{
  providerCopy = provider;
  progressProviderCopy = progressProvider;
  v13.receiver = self;
  v13.super_class = CLKComplicationTemplateCircularSmallProgressRingImage;
  initPrivate = [(CLKComplicationTemplate *)&v13 initPrivate];
  v11 = initPrivate;
  if (initPrivate)
  {
    [(CLKComplicationTemplateCircularSmallProgressRingImage *)initPrivate setImageProvider:providerCopy];
    [(CLKComplicationTemplateCircularSmallProgressRingImage *)v11 setProgressProvider:progressProviderCopy];
    [(CLKComplicationTemplateCircularSmallProgressRingImage *)v11 setRingStyle:style];
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
  [objc_opt_class() _imageSDKSize:&v7 deviceSize:&v5 forSDKVersion:{-[CLKComplicationTemplate sdkVersion](self, "sdkVersion")}];
  (*(blockCopy + 2))(blockCopy, @"imageProvider", 0, 1, 0, 4, 1, &v9, v7, v8, v5, v6);
}

@end