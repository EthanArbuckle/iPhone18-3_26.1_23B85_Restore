@interface CLKComplicationTemplateExtraLargeSimpleText
+ (CLKComplicationTemplateExtraLargeSimpleText)templateWithTextProvider:(CLKTextProvider *)textProvider;
- (CLKComplicationTemplateExtraLargeSimpleText)initWithTextProvider:(CLKTextProvider *)textProvider;
@end

@implementation CLKComplicationTemplateExtraLargeSimpleText

- (CLKComplicationTemplateExtraLargeSimpleText)initWithTextProvider:(CLKTextProvider *)textProvider
{
  v4 = textProvider;
  v8.receiver = self;
  v8.super_class = CLKComplicationTemplateExtraLargeSimpleText;
  initPrivate = [(CLKComplicationTemplate *)&v8 initPrivate];
  v6 = initPrivate;
  if (initPrivate)
  {
    initPrivate->_maxDynamicFontSize = 4;
    [(CLKComplicationTemplateExtraLargeSimpleText *)initPrivate setTextProvider:v4];
  }

  return v6;
}

+ (CLKComplicationTemplateExtraLargeSimpleText)templateWithTextProvider:(CLKTextProvider *)textProvider
{
  v4 = textProvider;
  v5 = [[self alloc] initWithTextProvider:v4];

  return v5;
}

@end