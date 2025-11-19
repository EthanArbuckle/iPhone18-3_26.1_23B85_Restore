@interface CLKComplicationTemplateModularLargeTallBody
+ (CLKComplicationTemplateModularLargeTallBody)templateWithHeaderTextProvider:(CLKTextProvider *)headerTextProvider bodyTextProvider:(CLKTextProvider *)bodyTextProvider;
+ (id)templateWithHeaderImageProvider:(id)a3 headerTextProvider:(id)a4 bodyTextProvider:(id)a5;
- (CLKComplicationTemplateModularLargeTallBody)initWithHeaderImageProvider:(id)a3 headerTextProvider:(id)a4 bodyTextProvider:(id)a5;
- (CLKComplicationTemplateModularLargeTallBody)initWithHeaderTextProvider:(CLKTextProvider *)headerTextProvider bodyTextProvider:(CLKTextProvider *)bodyTextProvider;
- (NSDate)contentDate;
- (void)_enumerateImageProviderKeysWithBlock:(id)a3;
- (void)_enumerateTextProviderKeysWithBlock:(id)a3;
- (void)setContentDate:(id)a3;
@end

@implementation CLKComplicationTemplateModularLargeTallBody

- (CLKComplicationTemplateModularLargeTallBody)initWithHeaderTextProvider:(CLKTextProvider *)headerTextProvider bodyTextProvider:(CLKTextProvider *)bodyTextProvider
{
  v6 = headerTextProvider;
  v7 = bodyTextProvider;
  v11.receiver = self;
  v11.super_class = CLKComplicationTemplateModularLargeTallBody;
  v8 = [(CLKComplicationTemplate *)&v11 initPrivate];
  v9 = v8;
  if (v8)
  {
    [(CLKComplicationTemplateModularLargeTallBody *)v8 setHeaderTextProvider:v6];
    [(CLKComplicationTemplateModularLargeTallBody *)v9 setBodyTextProvider:v7];
  }

  return v9;
}

- (CLKComplicationTemplateModularLargeTallBody)initWithHeaderImageProvider:(id)a3 headerTextProvider:(id)a4 bodyTextProvider:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = CLKComplicationTemplateModularLargeTallBody;
  v11 = [(CLKComplicationTemplate *)&v14 initPrivate];
  v12 = v11;
  if (v11)
  {
    [(CLKComplicationTemplateModularLargeTallBody *)v11 setHeaderImageProvider:v8];
    [(CLKComplicationTemplateModularLargeTallBody *)v12 setHeaderTextProvider:v9];
    [(CLKComplicationTemplateModularLargeTallBody *)v12 setBodyTextProvider:v10];
  }

  return v12;
}

+ (CLKComplicationTemplateModularLargeTallBody)templateWithHeaderTextProvider:(CLKTextProvider *)headerTextProvider bodyTextProvider:(CLKTextProvider *)bodyTextProvider
{
  v6 = bodyTextProvider;
  v7 = headerTextProvider;
  v8 = [[a1 alloc] initWithHeaderTextProvider:v7 bodyTextProvider:v6];

  return v8;
}

+ (id)templateWithHeaderImageProvider:(id)a3 headerTextProvider:(id)a4 bodyTextProvider:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[a1 alloc] initWithHeaderImageProvider:v10 headerTextProvider:v9 bodyTextProvider:v8];

  return v11;
}

- (void)_enumerateTextProviderKeysWithBlock:(id)a3
{
  v3 = a3;
  v4 = 0;
  v3[2](v3, @"headerTextProvider", 0, 1, &v4);
  if ((v4 & 1) == 0)
  {
    v3[2](v3, @"headerTrailingTextProvider", 1, 1, &v4);
    if ((v4 & 1) == 0)
    {
      v3[2](v3, @"bodyTextProvider", 0, 1, &v4);
    }
  }
}

- (void)_enumerateImageProviderKeysWithBlock:(id)a3
{
  v9 = 0;
  v7 = 0.0;
  v8 = 0.0;
  v5 = 0.0;
  v6 = 0.0;
  v4 = a3;
  _ModularLargeImageSize([(CLKComplicationTemplate *)self sdkVersion], &v7, &v5);
  (*(v4 + 2))(v4, @"headerImageProvider", 1, 1, 0, 4, 0, &v9, v7, v8, v5, v6);
}

- (NSDate)contentDate
{
  v2 = [(CLKComplicationTemplateModularLargeTallBody *)self additionalContentAttributes];
  v3 = [v2 objectForKeyedSubscript:@"NTKUpNextEventBeginDateKey"];

  return v3;
}

- (void)setContentDate:(id)a3
{
  v4 = a3;
  v5 = [(CLKComplicationTemplateModularLargeTallBody *)self additionalContentAttributes];
  v6 = v5;
  v7 = MEMORY[0x277CBEC10];
  if (v5)
  {
    v7 = v5;
  }

  v8 = v7;

  v11 = [v8 mutableCopy];
  v9 = [v4 copy];

  [v11 setObject:v9 forKeyedSubscript:@"NTKUpNextEventBeginDateKey"];
  v10 = [v11 copy];
  [(CLKComplicationTemplateModularLargeTallBody *)self setAdditionalContentAttributes:v10];
}

@end