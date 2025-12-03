@interface CLKComplicationTemplateModularLargeTallBody
+ (CLKComplicationTemplateModularLargeTallBody)templateWithHeaderTextProvider:(CLKTextProvider *)headerTextProvider bodyTextProvider:(CLKTextProvider *)bodyTextProvider;
+ (id)templateWithHeaderImageProvider:(id)provider headerTextProvider:(id)textProvider bodyTextProvider:(id)bodyTextProvider;
- (CLKComplicationTemplateModularLargeTallBody)initWithHeaderImageProvider:(id)provider headerTextProvider:(id)textProvider bodyTextProvider:(id)bodyTextProvider;
- (CLKComplicationTemplateModularLargeTallBody)initWithHeaderTextProvider:(CLKTextProvider *)headerTextProvider bodyTextProvider:(CLKTextProvider *)bodyTextProvider;
- (NSDate)contentDate;
- (void)_enumerateImageProviderKeysWithBlock:(id)block;
- (void)_enumerateTextProviderKeysWithBlock:(id)block;
- (void)setContentDate:(id)date;
@end

@implementation CLKComplicationTemplateModularLargeTallBody

- (CLKComplicationTemplateModularLargeTallBody)initWithHeaderTextProvider:(CLKTextProvider *)headerTextProvider bodyTextProvider:(CLKTextProvider *)bodyTextProvider
{
  v6 = headerTextProvider;
  v7 = bodyTextProvider;
  v11.receiver = self;
  v11.super_class = CLKComplicationTemplateModularLargeTallBody;
  initPrivate = [(CLKComplicationTemplate *)&v11 initPrivate];
  v9 = initPrivate;
  if (initPrivate)
  {
    [(CLKComplicationTemplateModularLargeTallBody *)initPrivate setHeaderTextProvider:v6];
    [(CLKComplicationTemplateModularLargeTallBody *)v9 setBodyTextProvider:v7];
  }

  return v9;
}

- (CLKComplicationTemplateModularLargeTallBody)initWithHeaderImageProvider:(id)provider headerTextProvider:(id)textProvider bodyTextProvider:(id)bodyTextProvider
{
  providerCopy = provider;
  textProviderCopy = textProvider;
  bodyTextProviderCopy = bodyTextProvider;
  v14.receiver = self;
  v14.super_class = CLKComplicationTemplateModularLargeTallBody;
  initPrivate = [(CLKComplicationTemplate *)&v14 initPrivate];
  v12 = initPrivate;
  if (initPrivate)
  {
    [(CLKComplicationTemplateModularLargeTallBody *)initPrivate setHeaderImageProvider:providerCopy];
    [(CLKComplicationTemplateModularLargeTallBody *)v12 setHeaderTextProvider:textProviderCopy];
    [(CLKComplicationTemplateModularLargeTallBody *)v12 setBodyTextProvider:bodyTextProviderCopy];
  }

  return v12;
}

+ (CLKComplicationTemplateModularLargeTallBody)templateWithHeaderTextProvider:(CLKTextProvider *)headerTextProvider bodyTextProvider:(CLKTextProvider *)bodyTextProvider
{
  v6 = bodyTextProvider;
  v7 = headerTextProvider;
  v8 = [[self alloc] initWithHeaderTextProvider:v7 bodyTextProvider:v6];

  return v8;
}

+ (id)templateWithHeaderImageProvider:(id)provider headerTextProvider:(id)textProvider bodyTextProvider:(id)bodyTextProvider
{
  bodyTextProviderCopy = bodyTextProvider;
  textProviderCopy = textProvider;
  providerCopy = provider;
  v11 = [[self alloc] initWithHeaderImageProvider:providerCopy headerTextProvider:textProviderCopy bodyTextProvider:bodyTextProviderCopy];

  return v11;
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
      blockCopy[2](blockCopy, @"bodyTextProvider", 0, 1, &v4);
    }
  }
}

- (void)_enumerateImageProviderKeysWithBlock:(id)block
{
  v9 = 0;
  v7 = 0.0;
  v8 = 0.0;
  v5 = 0.0;
  v6 = 0.0;
  blockCopy = block;
  _ModularLargeImageSize([(CLKComplicationTemplate *)self sdkVersion], &v7, &v5);
  (*(blockCopy + 2))(blockCopy, @"headerImageProvider", 1, 1, 0, 4, 0, &v9, v7, v8, v5, v6);
}

- (NSDate)contentDate
{
  additionalContentAttributes = [(CLKComplicationTemplateModularLargeTallBody *)self additionalContentAttributes];
  v3 = [additionalContentAttributes objectForKeyedSubscript:@"NTKUpNextEventBeginDateKey"];

  return v3;
}

- (void)setContentDate:(id)date
{
  dateCopy = date;
  additionalContentAttributes = [(CLKComplicationTemplateModularLargeTallBody *)self additionalContentAttributes];
  v6 = additionalContentAttributes;
  v7 = MEMORY[0x277CBEC10];
  if (additionalContentAttributes)
  {
    v7 = additionalContentAttributes;
  }

  v8 = v7;

  v11 = [v8 mutableCopy];
  v9 = [dateCopy copy];

  [v11 setObject:v9 forKeyedSubscript:@"NTKUpNextEventBeginDateKey"];
  v10 = [v11 copy];
  [(CLKComplicationTemplateModularLargeTallBody *)self setAdditionalContentAttributes:v10];
}

@end