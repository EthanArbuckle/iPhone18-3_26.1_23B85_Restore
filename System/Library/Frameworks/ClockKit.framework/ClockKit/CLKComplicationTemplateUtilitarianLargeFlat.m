@interface CLKComplicationTemplateUtilitarianLargeFlat
+ (CLKComplicationTemplateUtilitarianLargeFlat)templateWithTextProvider:(CLKTextProvider *)textProvider;
+ (CLKComplicationTemplateUtilitarianLargeFlat)templateWithTextProvider:(CLKTextProvider *)textProvider imageProvider:(CLKImageProvider *)imageProvider;
- (CLKComplicationTemplateUtilitarianLargeFlat)initWithTextProvider:(CLKTextProvider *)textProvider imageProvider:(CLKImageProvider *)imageProvider;
- (void)_enumerateImageProviderKeysWithBlock:(id)a3;
@end

@implementation CLKComplicationTemplateUtilitarianLargeFlat

- (CLKComplicationTemplateUtilitarianLargeFlat)initWithTextProvider:(CLKTextProvider *)textProvider imageProvider:(CLKImageProvider *)imageProvider
{
  v6 = textProvider;
  v7 = imageProvider;
  v8 = [(CLKComplicationTemplate *)self initPrivate];
  v9 = v8;
  if (v8)
  {
    [(CLKComplicationTemplateUtilitarianLargeFlat *)v8 setTextProvider:v6];
    [(CLKComplicationTemplateUtilitarianLargeFlat *)v9 setImageProvider:v7];
  }

  return v9;
}

+ (CLKComplicationTemplateUtilitarianLargeFlat)templateWithTextProvider:(CLKTextProvider *)textProvider
{
  v4 = textProvider;
  v5 = [[a1 alloc] initWithTextProvider:v4];

  return v5;
}

+ (CLKComplicationTemplateUtilitarianLargeFlat)templateWithTextProvider:(CLKTextProvider *)textProvider imageProvider:(CLKImageProvider *)imageProvider
{
  v6 = imageProvider;
  v7 = textProvider;
  v8 = [[a1 alloc] initWithTextProvider:v7 imageProvider:v6];

  return v8;
}

- (void)_enumerateImageProviderKeysWithBlock:(id)a3
{
  v12 = 0;
  v4 = a3;
  v5 = +[CLKRenderingContext sharedRenderingContext];
  v6 = [v5 device];
  v7 = [(CLKComplicationTemplate *)self sdkVersion];
  ___UtilitarianFlatImageSizeForDevice_block_invoke(v7, v6);
  v8 = xmmword_27DE91920;
  v9 = &_UtilitarianFlatImageSizeForDevice__imageSize[2 * v7];
  v10 = *v9;
  v11 = *(v9 + 1);

  (*(v4 + 2))(v4, @"imageProvider", 1, 1, 0, 5, 0, &v12, v10, v11, *&v8, *(&v8 + 1));
}

@end