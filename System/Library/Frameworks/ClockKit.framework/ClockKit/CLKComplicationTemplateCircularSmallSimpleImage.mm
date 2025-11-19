@interface CLKComplicationTemplateCircularSmallSimpleImage
+ (CLKComplicationTemplateCircularSmallSimpleImage)templateWithImageProvider:(CLKImageProvider *)imageProvider;
+ (void)_imageSDKSize:(CGSize *)a3 deviceSize:(CGSize *)a4 forSDKVersion:(int64_t)a5;
- (CLKComplicationTemplateCircularSmallSimpleImage)initWithImageProvider:(CLKImageProvider *)imageProvider;
- (void)_enumerateImageProviderKeysWithBlock:(id)a3;
@end

@implementation CLKComplicationTemplateCircularSmallSimpleImage

- (CLKComplicationTemplateCircularSmallSimpleImage)initWithImageProvider:(CLKImageProvider *)imageProvider
{
  v4 = imageProvider;
  v8.receiver = self;
  v8.super_class = CLKComplicationTemplateCircularSmallSimpleImage;
  v5 = [(CLKComplicationTemplate *)&v8 initPrivate];
  v6 = v5;
  if (v5)
  {
    [(CLKComplicationTemplateCircularSmallSimpleImage *)v5 setImageProvider:v4];
  }

  return v6;
}

+ (CLKComplicationTemplateCircularSmallSimpleImage)templateWithImageProvider:(CLKImageProvider *)imageProvider
{
  v4 = imageProvider;
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
  (*(v4 + 2))(v4, @"imageProvider", 0, 1, 0, 4, 0, &v9, v7, v8, v5, v6);
}

+ (void)_imageSDKSize:(CGSize *)a3 deviceSize:(CGSize *)a4 forSDKVersion:(int64_t)a5
{
  v10[1] = *MEMORY[0x277D85DE8];
  v9 = &unk_284A34110;
  v10[0] = &unk_284A34DB8;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  _SquareImageSizeScaled(v8, 1, a5, a3, a4, 18.0);
}

@end