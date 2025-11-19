@interface CLKComplicationTemplateUtilitarianSmallSquare
+ (CLKComplicationTemplateUtilitarianSmallSquare)templateWithImageProvider:(CLKImageProvider *)imageProvider;
- (CLKComplicationTemplateUtilitarianSmallSquare)initWithImageProvider:(CLKImageProvider *)imageProvider;
- (void)_enumerateImageProviderKeysWithBlock:(id)a3;
@end

@implementation CLKComplicationTemplateUtilitarianSmallSquare

- (CLKComplicationTemplateUtilitarianSmallSquare)initWithImageProvider:(CLKImageProvider *)imageProvider
{
  v4 = imageProvider;
  v8.receiver = self;
  v8.super_class = CLKComplicationTemplateUtilitarianSmallSquare;
  v5 = [(CLKComplicationTemplate *)&v8 initPrivate];
  v6 = v5;
  if (v5)
  {
    [(CLKComplicationTemplateUtilitarianSmallSquare *)v5 setImageProvider:v4];
  }

  return v6;
}

+ (CLKComplicationTemplateUtilitarianSmallSquare)templateWithImageProvider:(CLKImageProvider *)imageProvider
{
  v4 = imageProvider;
  v5 = [[a1 alloc] initWithImageProvider:v4];

  return v5;
}

- (void)_enumerateImageProviderKeysWithBlock:(id)a3
{
  v13[1] = *MEMORY[0x277D85DE8];
  v11 = 0;
  v9 = 0.0;
  v10 = 0.0;
  v7 = 0.0;
  v8 = 0.0;
  v12 = &unk_284A34128;
  v13[0] = &unk_284A34D98;
  v4 = MEMORY[0x277CBEAC0];
  v5 = a3;
  v6 = [v4 dictionaryWithObjects:v13 forKeys:&v12 count:1];
  _SquareImageSizeScaled(v6, 1, [(CLKComplicationTemplate *)self sdkVersion], &v9, &v7, 22.0);

  (*(v5 + 2))(v5, @"imageProvider", 0, 1, 0, 4, 0, &v11, v9, v10, v7, v8);
}

@end