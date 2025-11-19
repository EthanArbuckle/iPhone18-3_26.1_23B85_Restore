@interface CLKComplicationTemplateModularSmallRingImage
+ (CLKComplicationTemplateModularSmallRingImage)templateWithImageProvider:(CLKImageProvider *)imageProvider fillFraction:(float)fillFraction ringStyle:(CLKComplicationRingStyle)ringStyle;
- (CLKComplicationTemplateModularSmallRingImage)initWithImageProvider:(CLKImageProvider *)imageProvider fillFraction:(float)fillFraction ringStyle:(CLKComplicationRingStyle)ringStyle;
- (void)_enumerateImageProviderKeysWithBlock:(id)a3;
@end

@implementation CLKComplicationTemplateModularSmallRingImage

- (CLKComplicationTemplateModularSmallRingImage)initWithImageProvider:(CLKImageProvider *)imageProvider fillFraction:(float)fillFraction ringStyle:(CLKComplicationRingStyle)ringStyle
{
  v8 = imageProvider;
  v13.receiver = self;
  v13.super_class = CLKComplicationTemplateModularSmallRingImage;
  v9 = [(CLKComplicationTemplate *)&v13 initPrivate];
  v10 = v9;
  if (v9)
  {
    [(CLKComplicationTemplateModularSmallRingImage *)v9 setImageProvider:v8];
    *&v11 = fillFraction;
    [(CLKComplicationTemplateModularSmallRingImage *)v10 setFillFraction:v11];
    [(CLKComplicationTemplateModularSmallRingImage *)v10 setRingStyle:ringStyle];
  }

  return v10;
}

+ (CLKComplicationTemplateModularSmallRingImage)templateWithImageProvider:(CLKImageProvider *)imageProvider fillFraction:(float)fillFraction ringStyle:(CLKComplicationRingStyle)ringStyle
{
  v8 = imageProvider;
  v9 = [a1 alloc];
  *&v10 = fillFraction;
  v11 = [v9 initWithImageProvider:v8 fillFraction:ringStyle ringStyle:v10];

  return v11;
}

- (void)_enumerateImageProviderKeysWithBlock:(id)a3
{
  v13[1] = *MEMORY[0x277D85DE8];
  v11 = 0;
  v12 = &unk_284A34110;
  v13[0] = &unk_284A34D68;
  v4 = MEMORY[0x277CBEAC0];
  v5 = a3;
  v6 = [v4 dictionaryWithObjects:v13 forKeys:&v12 count:1];
  v9 = 0.0;
  v10 = 0.0;
  v7 = 0.0;
  v8 = 0.0;
  _SquareImageSizeScaled(v6, 1, [(CLKComplicationTemplate *)self sdkVersion], &v9, &v7, 19.0);
  (*(v5 + 2))(v5, @"imageProvider", 0, 1, 0, 4, 1, &v11, v9, v10, v7, v8);
}

@end