@interface CLKComplicationTemplateUtilitarianSmallProgressRingImage
+ (id)templateWithImageProvider:(id)a3 progressProvider:(id)a4 ringStyle:(int64_t)a5;
- (CLKComplicationTemplateUtilitarianSmallProgressRingImage)initWithImageProvider:(id)a3 progressProvider:(id)a4 ringStyle:(int64_t)a5;
- (void)_enumerateImageProviderKeysWithBlock:(id)a3;
@end

@implementation CLKComplicationTemplateUtilitarianSmallProgressRingImage

- (CLKComplicationTemplateUtilitarianSmallProgressRingImage)initWithImageProvider:(id)a3 progressProvider:(id)a4 ringStyle:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  v13.receiver = self;
  v13.super_class = CLKComplicationTemplateUtilitarianSmallProgressRingImage;
  v10 = [(CLKComplicationTemplate *)&v13 initPrivate];
  v11 = v10;
  if (v10)
  {
    [(CLKComplicationTemplateUtilitarianSmallProgressRingImage *)v10 setImageProvider:v8];
    [(CLKComplicationTemplateUtilitarianSmallProgressRingImage *)v11 setProgressProvider:v9];
    [(CLKComplicationTemplateUtilitarianSmallProgressRingImage *)v11 setRingStyle:a5];
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
  v5 = a3;
  v6 = [v4 dictionaryWithObjects:v13 forKeys:v12 count:2];
  _SquareImageSizeScaled(v6, 1, [(CLKComplicationTemplate *)self sdkVersion], &v9, &v7, 14.0);

  (*(v5 + 2))(v5, @"imageProvider", 0, 1, 0, 4, 1, &v11, v9, v10, v7, v8);
}

@end