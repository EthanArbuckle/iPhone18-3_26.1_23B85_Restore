@interface CLKComplicationTemplateExtraLargeRingImage
+ (CLKComplicationTemplateExtraLargeRingImage)templateWithImageProvider:(CLKImageProvider *)imageProvider fillFraction:(float)fillFraction ringStyle:(CLKComplicationRingStyle)ringStyle;
- (CLKComplicationTemplateExtraLargeRingImage)initWithImageProvider:(CLKImageProvider *)imageProvider fillFraction:(float)fillFraction ringStyle:(CLKComplicationRingStyle)ringStyle;
- (void)_enumerateImageProviderKeysWithBlock:(id)a3;
@end

@implementation CLKComplicationTemplateExtraLargeRingImage

- (CLKComplicationTemplateExtraLargeRingImage)initWithImageProvider:(CLKImageProvider *)imageProvider fillFraction:(float)fillFraction ringStyle:(CLKComplicationRingStyle)ringStyle
{
  v8 = imageProvider;
  v13.receiver = self;
  v13.super_class = CLKComplicationTemplateExtraLargeRingImage;
  v9 = [(CLKComplicationTemplate *)&v13 initPrivate];
  v10 = v9;
  if (v9)
  {
    [(CLKComplicationTemplateExtraLargeRingImage *)v9 setImageProvider:v8];
    *&v11 = fillFraction;
    [(CLKComplicationTemplateExtraLargeRingImage *)v10 setFillFraction:v11];
    [(CLKComplicationTemplateExtraLargeRingImage *)v10 setRingStyle:ringStyle];
  }

  return v10;
}

+ (CLKComplicationTemplateExtraLargeRingImage)templateWithImageProvider:(CLKImageProvider *)imageProvider fillFraction:(float)fillFraction ringStyle:(CLKComplicationRingStyle)ringStyle
{
  v8 = imageProvider;
  v9 = [a1 alloc];
  *&v10 = fillFraction;
  v11 = [v9 initWithImageProvider:v8 fillFraction:ringStyle ringStyle:v10];

  return v11;
}

- (void)_enumerateImageProviderKeysWithBlock:(id)a3
{
  v13[2] = *MEMORY[0x277D85DE8];
  v11 = 0;
  v12[0] = &unk_284A34110;
  v12[1] = &unk_284A34128;
  v13[0] = &unk_284A34E68;
  v13[1] = &unk_284A34E78;
  v4 = MEMORY[0x277CBEAC0];
  v5 = a3;
  v6 = [v4 dictionaryWithObjects:v13 forKeys:v12 count:2];
  v9 = 0.0;
  v10 = 0.0;
  v7 = 0.0;
  v8 = 0.0;
  _SquareImageSizeScaled(v6, 1, [(CLKComplicationTemplate *)self sdkVersion], &v9, &v7, 66.5);
  (*(v5 + 2))(v5, @"imageProvider", 0, 1, 0, 4, 1, &v11, v9, v10, v7, v8);
}

@end