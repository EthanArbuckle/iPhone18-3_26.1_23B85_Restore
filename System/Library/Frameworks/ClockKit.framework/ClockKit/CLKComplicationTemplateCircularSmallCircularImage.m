@interface CLKComplicationTemplateCircularSmallCircularImage
+ (id)templateWithImageProvider:(id)a3;
+ (void)_imageSDKSize:(CGSize *)a3 deviceSize:(CGSize *)a4 forSDKVersion:(int64_t)a5;
- (CLKComplicationTemplateCircularSmallCircularImage)initWithImageProvider:(id)a3;
- (void)_enumerateImageProviderKeysWithBlock:(id)a3;
@end

@implementation CLKComplicationTemplateCircularSmallCircularImage

- (CLKComplicationTemplateCircularSmallCircularImage)initWithImageProvider:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = CLKComplicationTemplateCircularSmallCircularImage;
  v5 = [(CLKComplicationTemplate *)&v8 initPrivate];
  v6 = v5;
  if (v5)
  {
    [(CLKComplicationTemplateCircularSmallCircularImage *)v5 setImageProvider:v4];
  }

  return v6;
}

+ (id)templateWithImageProvider:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithImageProvider:v4];

  return v5;
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

+ (void)_imageSDKSize:(CGSize *)a3 deviceSize:(CGSize *)a4 forSDKVersion:(int64_t)a5
{
  v10[2] = *MEMORY[0x277D85DE8];
  v9[0] = &unk_284A34110;
  v9[1] = &unk_284A34128;
  v10[0] = &unk_284A34DC8;
  v10[1] = &unk_284A34DD8;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:2];
  _SquareImageSizeScaled(v8, 1, a5, a3, a4, 32.0);
}

@end