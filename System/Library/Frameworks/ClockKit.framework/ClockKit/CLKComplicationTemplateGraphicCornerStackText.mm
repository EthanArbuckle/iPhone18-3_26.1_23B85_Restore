@interface CLKComplicationTemplateGraphicCornerStackText
+ (CLKComplicationTemplateGraphicCornerStackText)templateWithInnerTextProvider:(CLKTextProvider *)innerTextProvider outerTextProvider:(CLKTextProvider *)outerTextProvider;
- (CLKComplicationTemplateGraphicCornerStackText)initWithInnerTextProvider:(CLKTextProvider *)innerTextProvider outerTextProvider:(CLKTextProvider *)outerTextProvider;
- (void)_enumerateTextProviderKeysWithBlock:(id)a3;
@end

@implementation CLKComplicationTemplateGraphicCornerStackText

- (CLKComplicationTemplateGraphicCornerStackText)initWithInnerTextProvider:(CLKTextProvider *)innerTextProvider outerTextProvider:(CLKTextProvider *)outerTextProvider
{
  v6 = innerTextProvider;
  v7 = outerTextProvider;
  v11.receiver = self;
  v11.super_class = CLKComplicationTemplateGraphicCornerStackText;
  v8 = [(CLKComplicationTemplate *)&v11 initPrivate];
  v9 = v8;
  if (v8)
  {
    [(CLKComplicationTemplateGraphicCornerStackText *)v8 setInnerTextProvider:v6];
    [(CLKComplicationTemplateGraphicCornerStackText *)v9 setOuterTextProvider:v7];
  }

  return v9;
}

+ (CLKComplicationTemplateGraphicCornerStackText)templateWithInnerTextProvider:(CLKTextProvider *)innerTextProvider outerTextProvider:(CLKTextProvider *)outerTextProvider
{
  v6 = outerTextProvider;
  v7 = innerTextProvider;
  v8 = [[a1 alloc] initWithInnerTextProvider:v7 outerTextProvider:v6];

  return v8;
}

- (void)_enumerateTextProviderKeysWithBlock:(id)a3
{
  v3 = a3;
  v4 = 0;
  v3[2](v3, @"innerTextProvider", 0, 1, &v4);
  if ((v4 & 1) == 0)
  {
    v3[2](v3, @"outerTextProvider", 0, 1, &v4);
  }
}

@end