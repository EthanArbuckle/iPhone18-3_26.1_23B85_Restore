@interface CLKComplicationTemplateCircularSmallRingImage
+ (CLKComplicationTemplateCircularSmallRingImage)templateWithImageProvider:(CLKImageProvider *)imageProvider fillFraction:(float)fillFraction ringStyle:(CLKComplicationRingStyle)ringStyle;
- (CLKComplicationTemplateCircularSmallRingImage)initWithImageProvider:(CLKImageProvider *)imageProvider fillFraction:(float)fillFraction ringStyle:(CLKComplicationRingStyle)ringStyle;
- (void)_enumerateImageProviderKeysWithBlock:(id)block;
@end

@implementation CLKComplicationTemplateCircularSmallRingImage

- (CLKComplicationTemplateCircularSmallRingImage)initWithImageProvider:(CLKImageProvider *)imageProvider fillFraction:(float)fillFraction ringStyle:(CLKComplicationRingStyle)ringStyle
{
  v8 = imageProvider;
  v13.receiver = self;
  v13.super_class = CLKComplicationTemplateCircularSmallRingImage;
  initPrivate = [(CLKComplicationTemplate *)&v13 initPrivate];
  v10 = initPrivate;
  if (initPrivate)
  {
    [(CLKComplicationTemplateCircularSmallRingImage *)initPrivate setImageProvider:v8];
    *&v11 = fillFraction;
    [(CLKComplicationTemplateCircularSmallRingImage *)v10 setFillFraction:v11];
    [(CLKComplicationTemplateCircularSmallRingImage *)v10 setRingStyle:ringStyle];
  }

  return v10;
}

+ (CLKComplicationTemplateCircularSmallRingImage)templateWithImageProvider:(CLKImageProvider *)imageProvider fillFraction:(float)fillFraction ringStyle:(CLKComplicationRingStyle)ringStyle
{
  v8 = imageProvider;
  v9 = [self alloc];
  *&v10 = fillFraction;
  v11 = [v9 initWithImageProvider:v8 fillFraction:ringStyle ringStyle:v10];

  return v11;
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