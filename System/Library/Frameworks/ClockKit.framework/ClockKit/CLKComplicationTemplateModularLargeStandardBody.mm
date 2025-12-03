@interface CLKComplicationTemplateModularLargeStandardBody
+ (CLKComplicationTemplateModularLargeStandardBody)templateWithHeaderImageProvider:(CLKImageProvider *)headerImageProvider headerTextProvider:(CLKTextProvider *)headerTextProvider body1TextProvider:(CLKTextProvider *)body1TextProvider;
+ (CLKComplicationTemplateModularLargeStandardBody)templateWithHeaderImageProvider:(CLKImageProvider *)headerImageProvider headerTextProvider:(CLKTextProvider *)headerTextProvider body1TextProvider:(CLKTextProvider *)body1TextProvider body2TextProvider:(CLKTextProvider *)body2TextProvider;
+ (CLKComplicationTemplateModularLargeStandardBody)templateWithHeaderTextProvider:(CLKTextProvider *)headerTextProvider body1TextProvider:(CLKTextProvider *)body1TextProvider;
+ (CLKComplicationTemplateModularLargeStandardBody)templateWithHeaderTextProvider:(CLKTextProvider *)headerTextProvider body1TextProvider:(CLKTextProvider *)body1TextProvider body2TextProvider:(CLKTextProvider *)body2TextProvider;
- (CLKComplicationTemplateModularLargeStandardBody)initWithHeaderImageProvider:(CLKImageProvider *)headerImageProvider headerTextProvider:(CLKTextProvider *)headerTextProvider body1TextProvider:(CLKTextProvider *)body1TextProvider body2TextProvider:(CLKTextProvider *)body2TextProvider;
- (void)_enumerateImageProviderKeysWithBlock:(id)block;
- (void)_enumerateTextProviderKeysWithBlock:(id)block;
@end

@implementation CLKComplicationTemplateModularLargeStandardBody

- (CLKComplicationTemplateModularLargeStandardBody)initWithHeaderImageProvider:(CLKImageProvider *)headerImageProvider headerTextProvider:(CLKTextProvider *)headerTextProvider body1TextProvider:(CLKTextProvider *)body1TextProvider body2TextProvider:(CLKTextProvider *)body2TextProvider
{
  v10 = headerImageProvider;
  v11 = headerTextProvider;
  v12 = body1TextProvider;
  v13 = body2TextProvider;
  v17.receiver = self;
  v17.super_class = CLKComplicationTemplateModularLargeStandardBody;
  initPrivate = [(CLKComplicationTemplate *)&v17 initPrivate];
  v15 = initPrivate;
  if (initPrivate)
  {
    [(CLKComplicationTemplateModularLargeStandardBody *)initPrivate setHeaderImageProvider:v10];
    [(CLKComplicationTemplateModularLargeStandardBody *)v15 setHeaderTextProvider:v11];
    [(CLKComplicationTemplateModularLargeStandardBody *)v15 setBody1TextProvider:v12];
    [(CLKComplicationTemplateModularLargeStandardBody *)v15 setBody2TextProvider:v13];
  }

  return v15;
}

+ (CLKComplicationTemplateModularLargeStandardBody)templateWithHeaderTextProvider:(CLKTextProvider *)headerTextProvider body1TextProvider:(CLKTextProvider *)body1TextProvider
{
  v6 = body1TextProvider;
  v7 = headerTextProvider;
  v8 = [[self alloc] initWithHeaderTextProvider:v7 body1TextProvider:v6];

  return v8;
}

+ (CLKComplicationTemplateModularLargeStandardBody)templateWithHeaderImageProvider:(CLKImageProvider *)headerImageProvider headerTextProvider:(CLKTextProvider *)headerTextProvider body1TextProvider:(CLKTextProvider *)body1TextProvider
{
  v8 = body1TextProvider;
  v9 = headerTextProvider;
  v10 = headerImageProvider;
  v11 = [[self alloc] initWithHeaderImageProvider:v10 headerTextProvider:v9 body1TextProvider:v8];

  return v11;
}

+ (CLKComplicationTemplateModularLargeStandardBody)templateWithHeaderTextProvider:(CLKTextProvider *)headerTextProvider body1TextProvider:(CLKTextProvider *)body1TextProvider body2TextProvider:(CLKTextProvider *)body2TextProvider
{
  v8 = body2TextProvider;
  v9 = body1TextProvider;
  v10 = headerTextProvider;
  v11 = [[self alloc] initWithHeaderTextProvider:v10 body1TextProvider:v9 body2TextProvider:v8];

  return v11;
}

+ (CLKComplicationTemplateModularLargeStandardBody)templateWithHeaderImageProvider:(CLKImageProvider *)headerImageProvider headerTextProvider:(CLKTextProvider *)headerTextProvider body1TextProvider:(CLKTextProvider *)body1TextProvider body2TextProvider:(CLKTextProvider *)body2TextProvider
{
  v10 = body2TextProvider;
  v11 = body1TextProvider;
  v12 = headerTextProvider;
  v13 = headerImageProvider;
  v14 = [[self alloc] initWithHeaderImageProvider:v13 headerTextProvider:v12 body1TextProvider:v11 body2TextProvider:v10];

  return v14;
}

- (void)_enumerateTextProviderKeysWithBlock:(id)block
{
  blockCopy = block;
  v4 = 0;
  blockCopy[2](blockCopy, @"headerTextProvider", 0, 1, &v4);
  if ((v4 & 1) == 0)
  {
    blockCopy[2](blockCopy, @"headerTrailingTextProvider", 1, 1, &v4);
    if ((v4 & 1) == 0)
    {
      blockCopy[2](blockCopy, @"body1TextProvider", 0, 1, &v4);
      if ((v4 & 1) == 0)
      {
        blockCopy[2](blockCopy, @"body2TextProvider", 1, 1, &v4);
      }
    }
  }
}

- (void)_enumerateImageProviderKeysWithBlock:(id)block
{
  blockCopy = block;
  v9 = 0;
  v7 = 0.0;
  v8 = 0.0;
  v5 = 0.0;
  v6 = 0.0;
  _ModularLargeImageSize([(CLKComplicationTemplate *)self sdkVersion], &v7, &v5);
  (*(blockCopy + 2))(blockCopy, @"headerImageProvider", 1, 1, 0, 4, 0, &v9, v7, v8, v5, v6);
  if ((v9 & 1) == 0)
  {
    (*(blockCopy + 2))(blockCopy, @"body1ImageProvider", 1, 1, 0, 4, 0, &v9, v7, v8, v5, v6);
  }
}

@end