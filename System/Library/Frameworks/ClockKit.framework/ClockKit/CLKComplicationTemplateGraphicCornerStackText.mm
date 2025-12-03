@interface CLKComplicationTemplateGraphicCornerStackText
+ (CLKComplicationTemplateGraphicCornerStackText)templateWithInnerTextProvider:(CLKTextProvider *)innerTextProvider outerTextProvider:(CLKTextProvider *)outerTextProvider;
- (CLKComplicationTemplateGraphicCornerStackText)initWithInnerTextProvider:(CLKTextProvider *)innerTextProvider outerTextProvider:(CLKTextProvider *)outerTextProvider;
- (void)_enumerateTextProviderKeysWithBlock:(id)block;
@end

@implementation CLKComplicationTemplateGraphicCornerStackText

- (CLKComplicationTemplateGraphicCornerStackText)initWithInnerTextProvider:(CLKTextProvider *)innerTextProvider outerTextProvider:(CLKTextProvider *)outerTextProvider
{
  v6 = innerTextProvider;
  v7 = outerTextProvider;
  v11.receiver = self;
  v11.super_class = CLKComplicationTemplateGraphicCornerStackText;
  initPrivate = [(CLKComplicationTemplate *)&v11 initPrivate];
  v9 = initPrivate;
  if (initPrivate)
  {
    [(CLKComplicationTemplateGraphicCornerStackText *)initPrivate setInnerTextProvider:v6];
    [(CLKComplicationTemplateGraphicCornerStackText *)v9 setOuterTextProvider:v7];
  }

  return v9;
}

+ (CLKComplicationTemplateGraphicCornerStackText)templateWithInnerTextProvider:(CLKTextProvider *)innerTextProvider outerTextProvider:(CLKTextProvider *)outerTextProvider
{
  v6 = outerTextProvider;
  v7 = innerTextProvider;
  v8 = [[self alloc] initWithInnerTextProvider:v7 outerTextProvider:v6];

  return v8;
}

- (void)_enumerateTextProviderKeysWithBlock:(id)block
{
  blockCopy = block;
  v4 = 0;
  blockCopy[2](blockCopy, @"innerTextProvider", 0, 1, &v4);
  if ((v4 & 1) == 0)
  {
    blockCopy[2](blockCopy, @"outerTextProvider", 0, 1, &v4);
  }
}

@end