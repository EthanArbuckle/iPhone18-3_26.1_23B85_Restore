@interface CLKComplicationTemplateModularSmallProgressRingImage
+ (id)templateWithImageProvider:(id)a3 progressProvider:(id)a4 ringStyle:(int64_t)a5;
+ (void)imageSDKSize:(CGSize *)a3 deviceSize:(CGSize *)a4 forSDKVersion:(int64_t)a5;
- (CLKComplicationTemplateModularSmallProgressRingImage)initWithImageProvider:(id)a3 progressProvider:(id)a4 ringStyle:(int64_t)a5;
- (void)_enumerateImageProviderKeysWithBlock:(id)a3;
@end

@implementation CLKComplicationTemplateModularSmallProgressRingImage

- (CLKComplicationTemplateModularSmallProgressRingImage)initWithImageProvider:(id)a3 progressProvider:(id)a4 ringStyle:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  v13.receiver = self;
  v13.super_class = CLKComplicationTemplateModularSmallProgressRingImage;
  v10 = [(CLKComplicationTemplate *)&v13 initPrivate];
  v11 = v10;
  if (v10)
  {
    [(CLKComplicationTemplateModularSmallProgressRingImage *)v10 setImageProvider:v8];
    [(CLKComplicationTemplateModularSmallProgressRingImage *)v11 setProgressProvider:v9];
    [(CLKComplicationTemplateModularSmallProgressRingImage *)v11 setRingStyle:a5];
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
  [objc_opt_class() imageSDKSize:&v7 deviceSize:&v5 forSDKVersion:{-[CLKComplicationTemplate sdkVersion](self, "sdkVersion")}];
  (*(v4 + 2))(v4, @"imageProvider", 0, 1, 0, 4, 1, &v9, v7, v8, v5, v6);
}

+ (void)imageSDKSize:(CGSize *)a3 deviceSize:(CGSize *)a4 forSDKVersion:(int64_t)a5
{
  v10[1] = *MEMORY[0x277D85DE8];
  v9 = &unk_284A34110;
  v10[0] = &unk_284A34D68;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  _SquareImageSizeScaled(v8, 1, a5, a3, a4, 19.0);
}

@end