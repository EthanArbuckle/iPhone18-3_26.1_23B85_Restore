@interface CLKComplicationTemplateUtilitarianSmallRingImage
+ (CLKComplicationTemplateUtilitarianSmallRingImage)templateWithImageProvider:(CLKImageProvider *)imageProvider fillFraction:(float)fillFraction ringStyle:(CLKComplicationRingStyle)ringStyle;
- (CLKComplicationTemplateUtilitarianSmallRingImage)initWithImageProvider:(CLKImageProvider *)imageProvider fillFraction:(float)fillFraction ringStyle:(CLKComplicationRingStyle)ringStyle;
- (void)_enumerateImageProviderKeysWithBlock:(id)block;
@end

@implementation CLKComplicationTemplateUtilitarianSmallRingImage

- (CLKComplicationTemplateUtilitarianSmallRingImage)initWithImageProvider:(CLKImageProvider *)imageProvider fillFraction:(float)fillFraction ringStyle:(CLKComplicationRingStyle)ringStyle
{
  v8 = imageProvider;
  v13.receiver = self;
  v13.super_class = CLKComplicationTemplateUtilitarianSmallRingImage;
  initPrivate = [(CLKComplicationTemplate *)&v13 initPrivate];
  v10 = initPrivate;
  if (initPrivate)
  {
    [(CLKComplicationTemplateUtilitarianSmallRingImage *)initPrivate setImageProvider:v8];
    *&v11 = fillFraction;
    [(CLKComplicationTemplateUtilitarianSmallRingImage *)v10 setFillFraction:v11];
    [(CLKComplicationTemplateUtilitarianSmallRingImage *)v10 setRingStyle:ringStyle];
  }

  return v10;
}

+ (CLKComplicationTemplateUtilitarianSmallRingImage)templateWithImageProvider:(CLKImageProvider *)imageProvider fillFraction:(float)fillFraction ringStyle:(CLKComplicationRingStyle)ringStyle
{
  v8 = imageProvider;
  v9 = [self alloc];
  *&v10 = fillFraction;
  v11 = [v9 initWithImageProvider:v8 fillFraction:ringStyle ringStyle:v10];

  return v11;
}

- (void)_enumerateImageProviderKeysWithBlock:(id)block
{
  v13[2] = *MEMORY[0x277D85DE8];
  v11 = 0;
  v9 = 0.0;
  v10 = 0.0;
  v7 = 0.0;
  v8 = 0.0;
  v12[0] = &unk_284A34110;
  v12[1] = &unk_284A34128;
  v13[0] = &unk_284A34DA8;
  v13[1] = &unk_284A34DB8;
  v4 = MEMORY[0x277CBEAC0];
  blockCopy = block;
  v6 = [v4 dictionaryWithObjects:v13 forKeys:v12 count:2];
  _SquareImageSizeScaled(v6, 1, [(CLKComplicationTemplate *)self sdkVersion], &v9, &v7, 14.0);

  (*(blockCopy + 2))(blockCopy, @"imageProvider", 0, 1, 0, 4, 1, &v11, v9, v10, v7, v8);
}

@end