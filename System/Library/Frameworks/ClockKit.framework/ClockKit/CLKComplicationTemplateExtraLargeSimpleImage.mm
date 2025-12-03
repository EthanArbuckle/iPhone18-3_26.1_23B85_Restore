@interface CLKComplicationTemplateExtraLargeSimpleImage
+ (CLKComplicationTemplateExtraLargeSimpleImage)templateWithImageProvider:(CLKImageProvider *)imageProvider;
- (CLKComplicationTemplateExtraLargeSimpleImage)initWithImageProvider:(CLKImageProvider *)imageProvider;
- (void)_enumerateImageProviderKeysWithBlock:(id)block;
@end

@implementation CLKComplicationTemplateExtraLargeSimpleImage

- (CLKComplicationTemplateExtraLargeSimpleImage)initWithImageProvider:(CLKImageProvider *)imageProvider
{
  v4 = imageProvider;
  v8.receiver = self;
  v8.super_class = CLKComplicationTemplateExtraLargeSimpleImage;
  initPrivate = [(CLKComplicationTemplate *)&v8 initPrivate];
  v6 = initPrivate;
  if (initPrivate)
  {
    [(CLKComplicationTemplateExtraLargeSimpleImage *)initPrivate setImageProvider:v4];
  }

  return v6;
}

+ (CLKComplicationTemplateExtraLargeSimpleImage)templateWithImageProvider:(CLKImageProvider *)imageProvider
{
  v4 = imageProvider;
  v5 = [[self alloc] initWithImageProvider:v4];

  return v5;
}

- (void)_enumerateImageProviderKeysWithBlock:(id)block
{
  v13[2] = *MEMORY[0x277D85DE8];
  v11 = 0;
  v12[0] = &unk_284A34110;
  v12[1] = &unk_284A34128;
  v13[0] = &unk_284A34E48;
  v13[1] = &unk_284A34E58;
  v4 = MEMORY[0x277CBEAC0];
  blockCopy = block;
  v6 = [v4 dictionaryWithObjects:v13 forKeys:v12 count:2];
  v9 = 0.0;
  v10 = 0.0;
  v7 = 0.0;
  v8 = 0.0;
  _SquareImageSizeScaled(v6, 3, [(CLKComplicationTemplate *)self sdkVersion], &v9, &v7, 103.25);
  (*(blockCopy + 2))(blockCopy, @"imageProvider", 0, 1, 0, 4, 0, &v11, v9, v10, v7, v8);
}

@end