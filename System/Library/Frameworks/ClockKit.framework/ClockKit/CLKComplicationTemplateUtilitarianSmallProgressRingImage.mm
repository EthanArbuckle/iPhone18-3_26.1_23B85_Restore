@interface CLKComplicationTemplateUtilitarianSmallProgressRingImage
+ (id)templateWithImageProvider:(id)provider progressProvider:(id)progressProvider ringStyle:(int64_t)style;
- (CLKComplicationTemplateUtilitarianSmallProgressRingImage)initWithImageProvider:(id)provider progressProvider:(id)progressProvider ringStyle:(int64_t)style;
- (void)_enumerateImageProviderKeysWithBlock:(id)block;
@end

@implementation CLKComplicationTemplateUtilitarianSmallProgressRingImage

- (CLKComplicationTemplateUtilitarianSmallProgressRingImage)initWithImageProvider:(id)provider progressProvider:(id)progressProvider ringStyle:(int64_t)style
{
  providerCopy = provider;
  progressProviderCopy = progressProvider;
  v13.receiver = self;
  v13.super_class = CLKComplicationTemplateUtilitarianSmallProgressRingImage;
  initPrivate = [(CLKComplicationTemplate *)&v13 initPrivate];
  v11 = initPrivate;
  if (initPrivate)
  {
    [(CLKComplicationTemplateUtilitarianSmallProgressRingImage *)initPrivate setImageProvider:providerCopy];
    [(CLKComplicationTemplateUtilitarianSmallProgressRingImage *)v11 setProgressProvider:progressProviderCopy];
    [(CLKComplicationTemplateUtilitarianSmallProgressRingImage *)v11 setRingStyle:style];
  }

  return v11;
}

+ (id)templateWithImageProvider:(id)provider progressProvider:(id)progressProvider ringStyle:(int64_t)style
{
  progressProviderCopy = progressProvider;
  providerCopy = provider;
  v10 = [[self alloc] initWithImageProvider:providerCopy progressProvider:progressProviderCopy ringStyle:style];

  return v10;
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