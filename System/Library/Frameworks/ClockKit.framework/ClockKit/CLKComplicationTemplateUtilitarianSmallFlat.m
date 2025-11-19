@interface CLKComplicationTemplateUtilitarianSmallFlat
+ (CLKComplicationTemplateUtilitarianSmallFlat)templateWithTextProvider:(CLKTextProvider *)textProvider;
+ (CLKComplicationTemplateUtilitarianSmallFlat)templateWithTextProvider:(CLKTextProvider *)textProvider imageProvider:(CLKImageProvider *)imageProvider;
- (BOOL)isCompatibleWithFamily:(int64_t)a3;
- (CLKComplicationTemplateUtilitarianSmallFlat)initWithTextProvider:(CLKTextProvider *)textProvider imageProvider:(CLKImageProvider *)imageProvider;
- (void)_enumerateImageProviderKeysWithBlock:(id)a3;
@end

@implementation CLKComplicationTemplateUtilitarianSmallFlat

- (CLKComplicationTemplateUtilitarianSmallFlat)initWithTextProvider:(CLKTextProvider *)textProvider imageProvider:(CLKImageProvider *)imageProvider
{
  v6 = textProvider;
  v7 = imageProvider;
  v11.receiver = self;
  v11.super_class = CLKComplicationTemplateUtilitarianSmallFlat;
  v8 = [(CLKComplicationTemplate *)&v11 initPrivate];
  v9 = v8;
  if (v8)
  {
    [(CLKComplicationTemplateUtilitarianSmallFlat *)v8 setTextProvider:v6];
    [(CLKComplicationTemplateUtilitarianSmallFlat *)v9 setImageProvider:v7];
  }

  return v9;
}

+ (CLKComplicationTemplateUtilitarianSmallFlat)templateWithTextProvider:(CLKTextProvider *)textProvider
{
  v4 = textProvider;
  v5 = [[a1 alloc] initWithTextProvider:v4];

  return v5;
}

+ (CLKComplicationTemplateUtilitarianSmallFlat)templateWithTextProvider:(CLKTextProvider *)textProvider imageProvider:(CLKImageProvider *)imageProvider
{
  v6 = imageProvider;
  v7 = textProvider;
  v8 = [[a1 alloc] initWithTextProvider:v7 imageProvider:v6];

  return v8;
}

- (BOOL)isCompatibleWithFamily:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = CLKComplicationTemplateUtilitarianSmallFlat;
  result = [(CLKComplicationTemplate *)&v5 isCompatibleWithFamily:?];
  if (a3 == 6)
  {
    return 1;
  }

  return result;
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

  (*(v4 + 2))(v4, @"imageProvider", 1, 1, 0, 4, 0, &v12, v10, v11, *&v8, *(&v8 + 1));
}

@end