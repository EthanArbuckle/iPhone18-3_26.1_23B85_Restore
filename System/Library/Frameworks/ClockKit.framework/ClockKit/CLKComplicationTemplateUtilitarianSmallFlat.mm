@interface CLKComplicationTemplateUtilitarianSmallFlat
+ (CLKComplicationTemplateUtilitarianSmallFlat)templateWithTextProvider:(CLKTextProvider *)textProvider;
+ (CLKComplicationTemplateUtilitarianSmallFlat)templateWithTextProvider:(CLKTextProvider *)textProvider imageProvider:(CLKImageProvider *)imageProvider;
- (BOOL)isCompatibleWithFamily:(int64_t)family;
- (CLKComplicationTemplateUtilitarianSmallFlat)initWithTextProvider:(CLKTextProvider *)textProvider imageProvider:(CLKImageProvider *)imageProvider;
- (void)_enumerateImageProviderKeysWithBlock:(id)block;
@end

@implementation CLKComplicationTemplateUtilitarianSmallFlat

- (CLKComplicationTemplateUtilitarianSmallFlat)initWithTextProvider:(CLKTextProvider *)textProvider imageProvider:(CLKImageProvider *)imageProvider
{
  v6 = textProvider;
  v7 = imageProvider;
  v11.receiver = self;
  v11.super_class = CLKComplicationTemplateUtilitarianSmallFlat;
  initPrivate = [(CLKComplicationTemplate *)&v11 initPrivate];
  v9 = initPrivate;
  if (initPrivate)
  {
    [(CLKComplicationTemplateUtilitarianSmallFlat *)initPrivate setTextProvider:v6];
    [(CLKComplicationTemplateUtilitarianSmallFlat *)v9 setImageProvider:v7];
  }

  return v9;
}

+ (CLKComplicationTemplateUtilitarianSmallFlat)templateWithTextProvider:(CLKTextProvider *)textProvider
{
  v4 = textProvider;
  v5 = [[self alloc] initWithTextProvider:v4];

  return v5;
}

+ (CLKComplicationTemplateUtilitarianSmallFlat)templateWithTextProvider:(CLKTextProvider *)textProvider imageProvider:(CLKImageProvider *)imageProvider
{
  v6 = imageProvider;
  v7 = textProvider;
  v8 = [[self alloc] initWithTextProvider:v7 imageProvider:v6];

  return v8;
}

- (BOOL)isCompatibleWithFamily:(int64_t)family
{
  v5.receiver = self;
  v5.super_class = CLKComplicationTemplateUtilitarianSmallFlat;
  result = [(CLKComplicationTemplate *)&v5 isCompatibleWithFamily:?];
  if (family == 6)
  {
    return 1;
  }

  return result;
}

- (void)_enumerateImageProviderKeysWithBlock:(id)block
{
  v12 = 0;
  blockCopy = block;
  v5 = +[CLKRenderingContext sharedRenderingContext];
  device = [v5 device];
  sdkVersion = [(CLKComplicationTemplate *)self sdkVersion];
  ___UtilitarianFlatImageSizeForDevice_block_invoke(sdkVersion, device);
  v8 = xmmword_27DE91920;
  v9 = &_UtilitarianFlatImageSizeForDevice__imageSize[2 * sdkVersion];
  v10 = *v9;
  v11 = *(v9 + 1);

  (*(blockCopy + 2))(blockCopy, @"imageProvider", 1, 1, 0, 4, 0, &v12, v10, v11, *&v8, *(&v8 + 1));
}

@end