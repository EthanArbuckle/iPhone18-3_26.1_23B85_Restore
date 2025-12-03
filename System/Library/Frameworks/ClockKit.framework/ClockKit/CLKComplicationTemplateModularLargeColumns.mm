@interface CLKComplicationTemplateModularLargeColumns
+ (CLKComplicationTemplateModularLargeColumns)templateWithRow1Column1TextProvider:(CLKTextProvider *)row1Column1TextProvider row1Column2TextProvider:(CLKTextProvider *)row1Column2TextProvider row2Column1TextProvider:(CLKTextProvider *)row2Column1TextProvider row2Column2TextProvider:(CLKTextProvider *)row2Column2TextProvider row3Column1TextProvider:(CLKTextProvider *)row3Column1TextProvider row3Column2TextProvider:(CLKTextProvider *)row3Column2TextProvider;
+ (CLKComplicationTemplateModularLargeColumns)templateWithRow1ImageProvider:(CLKImageProvider *)row1ImageProvider row1Column1TextProvider:(CLKTextProvider *)row1Column1TextProvider row1Column2TextProvider:(CLKTextProvider *)row1Column2TextProvider row2ImageProvider:(CLKImageProvider *)row2ImageProvider row2Column1TextProvider:(CLKTextProvider *)row2Column1TextProvider row2Column2TextProvider:(CLKTextProvider *)row2Column2TextProvider row3ImageProvider:(CLKImageProvider *)row3ImageProvider row3Column1TextProvider:(CLKTextProvider *)row3Column1TextProvider row3Column2TextProvider:(CLKTextProvider *)row3Column2TextProvider;
- (CLKComplicationTemplateModularLargeColumns)initWithRow1ImageProvider:(CLKImageProvider *)row1ImageProvider row1Column1TextProvider:(CLKTextProvider *)row1Column1TextProvider row1Column2TextProvider:(CLKTextProvider *)row1Column2TextProvider row2ImageProvider:(CLKImageProvider *)row2ImageProvider row2Column1TextProvider:(CLKTextProvider *)row2Column1TextProvider row2Column2TextProvider:(CLKTextProvider *)row2Column2TextProvider row3ImageProvider:(CLKImageProvider *)row3ImageProvider row3Column1TextProvider:(CLKTextProvider *)row3Column1TextProvider row3Column2TextProvider:(CLKTextProvider *)row3Column2TextProvider;
- (void)_enumerateImageProviderKeysWithBlock:(id)block;
- (void)_enumerateTextProviderKeysWithBlock:(id)block;
@end

@implementation CLKComplicationTemplateModularLargeColumns

- (CLKComplicationTemplateModularLargeColumns)initWithRow1ImageProvider:(CLKImageProvider *)row1ImageProvider row1Column1TextProvider:(CLKTextProvider *)row1Column1TextProvider row1Column2TextProvider:(CLKTextProvider *)row1Column2TextProvider row2ImageProvider:(CLKImageProvider *)row2ImageProvider row2Column1TextProvider:(CLKTextProvider *)row2Column1TextProvider row2Column2TextProvider:(CLKTextProvider *)row2Column2TextProvider row3ImageProvider:(CLKImageProvider *)row3ImageProvider row3Column1TextProvider:(CLKTextProvider *)row3Column1TextProvider row3Column2TextProvider:(CLKTextProvider *)row3Column2TextProvider
{
  v17 = row1ImageProvider;
  v18 = row1Column1TextProvider;
  v19 = row1Column2TextProvider;
  v20 = row2ImageProvider;
  v21 = row2Column1TextProvider;
  v22 = row2Column2TextProvider;
  v23 = row3ImageProvider;
  v24 = row3Column1TextProvider;
  v25 = row3Column2TextProvider;
  v29.receiver = self;
  v29.super_class = CLKComplicationTemplateModularLargeColumns;
  initPrivate = [(CLKComplicationTemplate *)&v29 initPrivate];
  v27 = initPrivate;
  if (initPrivate)
  {
    [(CLKComplicationTemplateModularLargeColumns *)initPrivate setRow1ImageProvider:v17];
    [(CLKComplicationTemplateModularLargeColumns *)v27 setRow1Column1TextProvider:v18];
    [(CLKComplicationTemplateModularLargeColumns *)v27 setRow1Column2TextProvider:v19];
    [(CLKComplicationTemplateModularLargeColumns *)v27 setRow2ImageProvider:v20];
    [(CLKComplicationTemplateModularLargeColumns *)v27 setRow2Column1TextProvider:v21];
    [(CLKComplicationTemplateModularLargeColumns *)v27 setRow2Column2TextProvider:v22];
    [(CLKComplicationTemplateModularLargeColumns *)v27 setRow3ImageProvider:v23];
    [(CLKComplicationTemplateModularLargeColumns *)v27 setRow3Column1TextProvider:v24];
    [(CLKComplicationTemplateModularLargeColumns *)v27 setRow3Column2TextProvider:v25];
  }

  return v27;
}

+ (CLKComplicationTemplateModularLargeColumns)templateWithRow1Column1TextProvider:(CLKTextProvider *)row1Column1TextProvider row1Column2TextProvider:(CLKTextProvider *)row1Column2TextProvider row2Column1TextProvider:(CLKTextProvider *)row2Column1TextProvider row2Column2TextProvider:(CLKTextProvider *)row2Column2TextProvider row3Column1TextProvider:(CLKTextProvider *)row3Column1TextProvider row3Column2TextProvider:(CLKTextProvider *)row3Column2TextProvider
{
  v14 = row3Column2TextProvider;
  v15 = row3Column1TextProvider;
  v16 = row2Column2TextProvider;
  v17 = row2Column1TextProvider;
  v18 = row1Column2TextProvider;
  v19 = row1Column1TextProvider;
  v20 = [[self alloc] initWithRow1Column1TextProvider:v19 row1Column2TextProvider:v18 row2Column1TextProvider:v17 row2Column2TextProvider:v16 row3Column1TextProvider:v15 row3Column2TextProvider:v14];

  return v20;
}

+ (CLKComplicationTemplateModularLargeColumns)templateWithRow1ImageProvider:(CLKImageProvider *)row1ImageProvider row1Column1TextProvider:(CLKTextProvider *)row1Column1TextProvider row1Column2TextProvider:(CLKTextProvider *)row1Column2TextProvider row2ImageProvider:(CLKImageProvider *)row2ImageProvider row2Column1TextProvider:(CLKTextProvider *)row2Column1TextProvider row2Column2TextProvider:(CLKTextProvider *)row2Column2TextProvider row3ImageProvider:(CLKImageProvider *)row3ImageProvider row3Column1TextProvider:(CLKTextProvider *)row3Column1TextProvider row3Column2TextProvider:(CLKTextProvider *)row3Column2TextProvider
{
  v18 = row3Column2TextProvider;
  v19 = row3Column1TextProvider;
  v20 = row3ImageProvider;
  v21 = row2Column2TextProvider;
  v22 = row2Column1TextProvider;
  v23 = row2ImageProvider;
  v24 = row1Column2TextProvider;
  v25 = row1Column1TextProvider;
  v26 = row1ImageProvider;
  v27 = [[self alloc] initWithRow1ImageProvider:v26 row1Column1TextProvider:v25 row1Column2TextProvider:v24 row2ImageProvider:v23 row2Column1TextProvider:v22 row2Column2TextProvider:v21 row3ImageProvider:v20 row3Column1TextProvider:v19 row3Column2TextProvider:v18];

  return v27;
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
        if ((v4 & 1) == 0)
        {
          blockCopy[2](blockCopy, @"row3Column1TextProvider", 0, 1, &v4);
          if ((v4 & 1) == 0)
          {
            blockCopy[2](blockCopy, @"row3Column2TextProvider", 0, 1, &v4);
          }
        }
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
  (*(blockCopy + 2))(blockCopy, @"row1ImageProvider", 1, 1, 0, 4, 0, &v9, v7, v8, v5, v6);
  if ((v9 & 1) == 0)
  {
    (*(blockCopy + 2))(blockCopy, @"row2ImageProvider", 1, 1, 0, 4, 0, &v9, v7, v8, v5, v6);
    if ((v9 & 1) == 0)
    {
      (*(blockCopy + 2))(blockCopy, @"row3ImageProvider", 1, 1, 0, 4, 0, &v9, v7, v8, v5, v6);
    }
  }
}

@end