@interface CLKComplicationTemplateModularSmallColumnsText
+ (CLKComplicationTemplateModularSmallColumnsText)templateWithRow1Column1TextProvider:(CLKTextProvider *)row1Column1TextProvider row1Column2TextProvider:(CLKTextProvider *)row1Column2TextProvider row2Column1TextProvider:(CLKTextProvider *)row2Column1TextProvider row2Column2TextProvider:(CLKTextProvider *)row2Column2TextProvider;
- (CLKComplicationTemplateModularSmallColumnsText)initWithRow1Column1TextProvider:(CLKTextProvider *)row1Column1TextProvider row1Column2TextProvider:(CLKTextProvider *)row1Column2TextProvider row2Column1TextProvider:(CLKTextProvider *)row2Column1TextProvider row2Column2TextProvider:(CLKTextProvider *)row2Column2TextProvider;
- (void)_enumerateTextProviderKeysWithBlock:(id)block;
@end

@implementation CLKComplicationTemplateModularSmallColumnsText

- (CLKComplicationTemplateModularSmallColumnsText)initWithRow1Column1TextProvider:(CLKTextProvider *)row1Column1TextProvider row1Column2TextProvider:(CLKTextProvider *)row1Column2TextProvider row2Column1TextProvider:(CLKTextProvider *)row2Column1TextProvider row2Column2TextProvider:(CLKTextProvider *)row2Column2TextProvider
{
  v10 = row1Column1TextProvider;
  v11 = row1Column2TextProvider;
  v12 = row2Column1TextProvider;
  v13 = row2Column2TextProvider;
  v17.receiver = self;
  v17.super_class = CLKComplicationTemplateModularSmallColumnsText;
  initPrivate = [(CLKComplicationTemplate *)&v17 initPrivate];
  v15 = initPrivate;
  if (initPrivate)
  {
    [(CLKComplicationTemplateModularSmallColumnsText *)initPrivate setRow1Column1TextProvider:v10];
    [(CLKComplicationTemplateModularSmallColumnsText *)v15 setRow1Column2TextProvider:v11];
    [(CLKComplicationTemplateModularSmallColumnsText *)v15 setRow2Column1TextProvider:v12];
    [(CLKComplicationTemplateModularSmallColumnsText *)v15 setRow2Column2TextProvider:v13];
  }

  return v15;
}

+ (CLKComplicationTemplateModularSmallColumnsText)templateWithRow1Column1TextProvider:(CLKTextProvider *)row1Column1TextProvider row1Column2TextProvider:(CLKTextProvider *)row1Column2TextProvider row2Column1TextProvider:(CLKTextProvider *)row2Column1TextProvider row2Column2TextProvider:(CLKTextProvider *)row2Column2TextProvider
{
  v10 = row2Column2TextProvider;
  v11 = row2Column1TextProvider;
  v12 = row1Column2TextProvider;
  v13 = row1Column1TextProvider;
  v14 = [[self alloc] initWithRow1Column1TextProvider:v13 row1Column2TextProvider:v12 row2Column1TextProvider:v11 row2Column2TextProvider:v10];

  return v14;
}

- (void)_enumerateTextProviderKeysWithBlock:(id)block
{
  blockCopy = block;
  v4 = 0;
  blockCopy[2](blockCopy, @"row1Column1TextProvider", 0, 1, &v4);
  if ((v4 & 1) == 0)
  {
    blockCopy[2](blockCopy, @"row1Column2TextProvider", 0, 1, &v4);
    if ((v4 & 1) == 0)
    {
      blockCopy[2](blockCopy, @"row2Column1TextProvider", 0, 1, &v4);
      if ((v4 & 1) == 0)
      {
        blockCopy[2](blockCopy, @"row2Column2TextProvider", 0, 1, &v4);
      }
    }
  }
}

@end