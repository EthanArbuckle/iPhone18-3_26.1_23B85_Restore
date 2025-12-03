@interface CLKComplicationTemplateUtilitarianLargeFlat
+ (CLKComplicationTemplateUtilitarianLargeFlat)templateWithTextProvider:(CLKTextProvider *)textProvider;
+ (CLKComplicationTemplateUtilitarianLargeFlat)templateWithTextProvider:(CLKTextProvider *)textProvider imageProvider:(CLKImageProvider *)imageProvider;
- (CLKComplicationTemplateUtilitarianLargeFlat)initWithTextProvider:(CLKTextProvider *)textProvider imageProvider:(CLKImageProvider *)imageProvider;
- (void)_enumerateImageProviderKeysWithBlock:(id)block;
@end

@implementation CLKComplicationTemplateUtilitarianLargeFlat

- (CLKComplicationTemplateUtilitarianLargeFlat)initWithTextProvider:(CLKTextProvider *)textProvider imageProvider:(CLKImageProvider *)imageProvider
{
  v6 = textProvider;
  v7 = imageProvider;
  initPrivate = [(CLKComplicationTemplate *)self initPrivate];
  v9 = initPrivate;
  if (initPrivate)
  {
    [(CLKComplicationTemplateUtilitarianLargeFlat *)initPrivate setTextProvider:v6];
    [(CLKComplicationTemplateUtilitarianLargeFlat *)v9 setImageProvider:v7];
  }

  return v9;
}

+ (CLKComplicationTemplateUtilitarianLargeFlat)templateWithTextProvider:(CLKTextProvider *)textProvider
{
  v4 = textProvider;
  v5 = [[self alloc] initWithTextProvider:v4];

  return v5;
}

+ (CLKComplicationTemplateUtilitarianLargeFlat)templateWithTextProvider:(CLKTextProvider *)textProvider imageProvider:(CLKImageProvider *)imageProvider
{
  v6 = imageProvider;
  v7 = textProvider;
  v8 = [[self alloc] initWithTextProvider:v7 imageProvider:v6];

  return v8;
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

  (*(blockCopy + 2))(blockCopy, @"imageProvider", 1, 1, 0, 5, 0, &v12, v10, v11, *&v8, *(&v8 + 1));
}

@end