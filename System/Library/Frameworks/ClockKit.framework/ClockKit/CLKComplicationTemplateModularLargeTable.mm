@interface CLKComplicationTemplateModularLargeTable
+ (CLKComplicationTemplateModularLargeTable)templateWithHeaderImageProvider:(CLKImageProvider *)headerImageProvider headerTextProvider:(CLKTextProvider *)headerTextProvider row1Column1TextProvider:(CLKTextProvider *)row1Column1TextProvider row1Column2TextProvider:(CLKTextProvider *)row1Column2TextProvider row2Column1TextProvider:(CLKTextProvider *)row2Column1TextProvider row2Column2TextProvider:(CLKTextProvider *)row2Column2TextProvider;
+ (CLKComplicationTemplateModularLargeTable)templateWithHeaderTextProvider:(CLKTextProvider *)headerTextProvider row1Column1TextProvider:(CLKTextProvider *)row1Column1TextProvider row1Column2TextProvider:(CLKTextProvider *)row1Column2TextProvider row2Column1TextProvider:(CLKTextProvider *)row2Column1TextProvider row2Column2TextProvider:(CLKTextProvider *)row2Column2TextProvider;
- (CLKComplicationTemplateModularLargeTable)initWithHeaderImageProvider:(CLKImageProvider *)headerImageProvider headerTextProvider:(CLKTextProvider *)headerTextProvider row1Column1TextProvider:(CLKTextProvider *)row1Column1TextProvider row1Column2TextProvider:(CLKTextProvider *)row1Column2TextProvider row2Column1TextProvider:(CLKTextProvider *)row2Column1TextProvider row2Column2TextProvider:(CLKTextProvider *)row2Column2TextProvider;
- (void)_enumerateImageProviderKeysWithBlock:(id)a3;
- (void)_enumerateTextProviderKeysWithBlock:(id)a3;
@end

@implementation CLKComplicationTemplateModularLargeTable

- (CLKComplicationTemplateModularLargeTable)initWithHeaderImageProvider:(CLKImageProvider *)headerImageProvider headerTextProvider:(CLKTextProvider *)headerTextProvider row1Column1TextProvider:(CLKTextProvider *)row1Column1TextProvider row1Column2TextProvider:(CLKTextProvider *)row1Column2TextProvider row2Column1TextProvider:(CLKTextProvider *)row2Column1TextProvider row2Column2TextProvider:(CLKTextProvider *)row2Column2TextProvider
{
  v14 = headerImageProvider;
  v15 = headerTextProvider;
  v16 = row1Column1TextProvider;
  v17 = row1Column2TextProvider;
  v18 = row2Column1TextProvider;
  v19 = row2Column2TextProvider;
  v23.receiver = self;
  v23.super_class = CLKComplicationTemplateModularLargeTable;
  v20 = [(CLKComplicationTemplate *)&v23 initPrivate];
  v21 = v20;
  if (v20)
  {
    [(CLKComplicationTemplateModularLargeTable *)v20 setHeaderImageProvider:v14];
    [(CLKComplicationTemplateModularLargeTable *)v21 setHeaderTextProvider:v15];
    [(CLKComplicationTemplateModularLargeTable *)v21 setRow1Column1TextProvider:v16];
    [(CLKComplicationTemplateModularLargeTable *)v21 setRow1Column2TextProvider:v17];
    [(CLKComplicationTemplateModularLargeTable *)v21 setRow2Column1TextProvider:v18];
    [(CLKComplicationTemplateModularLargeTable *)v21 setRow2Column2TextProvider:v19];
  }

  return v21;
}

+ (CLKComplicationTemplateModularLargeTable)templateWithHeaderTextProvider:(CLKTextProvider *)headerTextProvider row1Column1TextProvider:(CLKTextProvider *)row1Column1TextProvider row1Column2TextProvider:(CLKTextProvider *)row1Column2TextProvider row2Column1TextProvider:(CLKTextProvider *)row2Column1TextProvider row2Column2TextProvider:(CLKTextProvider *)row2Column2TextProvider
{
  v12 = row2Column2TextProvider;
  v13 = row2Column1TextProvider;
  v14 = row1Column2TextProvider;
  v15 = row1Column1TextProvider;
  v16 = headerTextProvider;
  v17 = [[a1 alloc] initWithHeaderTextProvider:v16 row1Column1TextProvider:v15 row1Column2TextProvider:v14 row2Column1TextProvider:v13 row2Column2TextProvider:v12];

  return v17;
}

+ (CLKComplicationTemplateModularLargeTable)templateWithHeaderImageProvider:(CLKImageProvider *)headerImageProvider headerTextProvider:(CLKTextProvider *)headerTextProvider row1Column1TextProvider:(CLKTextProvider *)row1Column1TextProvider row1Column2TextProvider:(CLKTextProvider *)row1Column2TextProvider row2Column1TextProvider:(CLKTextProvider *)row2Column1TextProvider row2Column2TextProvider:(CLKTextProvider *)row2Column2TextProvider
{
  v14 = row2Column2TextProvider;
  v15 = row2Column1TextProvider;
  v16 = row1Column2TextProvider;
  v17 = row1Column1TextProvider;
  v18 = headerTextProvider;
  v19 = headerImageProvider;
  v20 = [[a1 alloc] initWithHeaderImageProvider:v19 headerTextProvider:v18 row1Column1TextProvider:v17 row1Column2TextProvider:v16 row2Column1TextProvider:v15 row2Column2TextProvider:v14];

  return v20;
}

- (void)_enumerateTextProviderKeysWithBlock:(id)a3
{
  v3 = a3;
  v4 = 0;
  v3[2](v3, @"headerTextProvider", 0, 1, &v4);
  if ((v4 & 1) == 0)
  {
    v3[2](v3, @"row1Column1TextProvider", 0, 1, &v4);
    if ((v4 & 1) == 0)
    {
      v3[2](v3, @"row1Column2TextProvider", 0, 1, &v4);
      if ((v4 & 1) == 0)
      {
        v3[2](v3, @"row2Column1TextProvider", 0, 1, &v4);
        if ((v4 & 1) == 0)
        {
          v3[2](v3, @"row2Column2TextProvider", 0, 1, &v4);
        }
      }
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

@end