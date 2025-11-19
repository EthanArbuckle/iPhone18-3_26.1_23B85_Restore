@interface CLKComplicationTemplateExtraLargeColumnsText
+ (CLKComplicationTemplateExtraLargeColumnsText)templateWithRow1Column1TextProvider:(CLKTextProvider *)row1Column1TextProvider row1Column2TextProvider:(CLKTextProvider *)row1Column2TextProvider row2Column1TextProvider:(CLKTextProvider *)row2Column1TextProvider row2Column2TextProvider:(CLKTextProvider *)row2Column2TextProvider;
- (CLKComplicationTemplateExtraLargeColumnsText)initWithRow1Column1TextProvider:(CLKTextProvider *)row1Column1TextProvider row1Column2TextProvider:(CLKTextProvider *)row1Column2TextProvider row2Column1TextProvider:(CLKTextProvider *)row2Column1TextProvider row2Column2TextProvider:(CLKTextProvider *)row2Column2TextProvider;
- (void)_enumerateTextProviderKeysWithBlock:(id)a3;
@end

@implementation CLKComplicationTemplateExtraLargeColumnsText

- (CLKComplicationTemplateExtraLargeColumnsText)initWithRow1Column1TextProvider:(CLKTextProvider *)row1Column1TextProvider row1Column2TextProvider:(CLKTextProvider *)row1Column2TextProvider row2Column1TextProvider:(CLKTextProvider *)row2Column1TextProvider row2Column2TextProvider:(CLKTextProvider *)row2Column2TextProvider
{
  v10 = row1Column1TextProvider;
  v11 = row1Column2TextProvider;
  v12 = row2Column1TextProvider;
  v13 = row2Column2TextProvider;
  v17.receiver = self;
  v17.super_class = CLKComplicationTemplateExtraLargeColumnsText;
  v14 = [(CLKComplicationTemplate *)&v17 initPrivate];
  v15 = v14;
  if (v14)
  {
    [(CLKComplicationTemplateExtraLargeColumnsText *)v14 setRow1Column1TextProvider:v10];
    [(CLKComplicationTemplateExtraLargeColumnsText *)v15 setRow1Column2TextProvider:v11];
    [(CLKComplicationTemplateExtraLargeColumnsText *)v15 setRow2Column1TextProvider:v12];
    [(CLKComplicationTemplateExtraLargeColumnsText *)v15 setRow2Column2TextProvider:v13];
  }

  return v15;
}

+ (CLKComplicationTemplateExtraLargeColumnsText)templateWithRow1Column1TextProvider:(CLKTextProvider *)row1Column1TextProvider row1Column2TextProvider:(CLKTextProvider *)row1Column2TextProvider row2Column1TextProvider:(CLKTextProvider *)row2Column1TextProvider row2Column2TextProvider:(CLKTextProvider *)row2Column2TextProvider
{
  v10 = row2Column2TextProvider;
  v11 = row2Column1TextProvider;
  v12 = row1Column2TextProvider;
  v13 = row1Column1TextProvider;
  v14 = [[a1 alloc] initWithRow1Column1TextProvider:v13 row1Column2TextProvider:v12 row2Column1TextProvider:v11 row2Column2TextProvider:v10];

  return v14;
}

- (void)_enumerateTextProviderKeysWithBlock:(id)a3
{
  v3 = a3;
  v4 = 0;
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

@end