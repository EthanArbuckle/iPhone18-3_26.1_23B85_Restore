@interface CLKComplicationTemplateCircularSmallProgressRingImage
+ (id)templateWithImageProvider:(id)a3 progressProvider:(id)a4 ringStyle:(int64_t)a5;
- (CLKComplicationTemplateCircularSmallProgressRingImage)initWithImageProvider:(id)a3 progressProvider:(id)a4 ringStyle:(int64_t)a5;
- (void)_enumerateImageProviderKeysWithBlock:(id)a3;
@end

@implementation CLKComplicationTemplateCircularSmallProgressRingImage

- (CLKComplicationTemplateCircularSmallProgressRingImage)initWithImageProvider:(id)a3 progressProvider:(id)a4 ringStyle:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  v13.receiver = self;
  v13.super_class = CLKComplicationTemplateCircularSmallProgressRingImage;
  v10 = [(CLKComplicationTemplate *)&v13 initPrivate];
  v11 = v10;
  if (v10)
  {
    [(CLKComplicationTemplateCircularSmallProgressRingImage *)v10 setImageProvider:v8];
    [(CLKComplicationTemplateCircularSmallProgressRingImage *)v11 setProgressProvider:v9];
    [(CLKComplicationTemplateCircularSmallProgressRingImage *)v11 setRingStyle:a5];
  }

  return v11;
}

+ (id)templateWithImageProvider:(id)a3 progressProvider:(id)a4 ringStyle:(int64_t)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [[a1 alloc] initWithImageProvider:v9 progressProvider:v8 ringStyle:a5];

  return v10;
}

- (void)_enumerateImageProviderKeysWithBlock:(id)a3
{
  v9 = 0;
  v7 = 0.0;
  v8 = 0.0;
  v5 = 0.0;
  v6 = 0.0;
  v4 = a3;
  [objc_opt_class() _imageSDKSize:&v7 deviceSize:&v5 forSDKVersion:{-[CLKComplicationTemplate sdkVersion](self, "sdkVersion")}];
  (*(v4 + 2))(v4, @"imageProvider", 0, 1, 0, 4, 1, &v9, v7, v8, v5, v6);
}

@end