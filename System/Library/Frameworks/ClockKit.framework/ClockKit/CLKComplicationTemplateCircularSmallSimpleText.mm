@interface CLKComplicationTemplateCircularSmallSimpleText
+ (CLKComplicationTemplateCircularSmallSimpleText)templateWithTextProvider:(CLKTextProvider *)textProvider;
- (CLKComplicationTemplateCircularSmallSimpleText)initWithTextProvider:(CLKTextProvider *)textProvider;
@end

@implementation CLKComplicationTemplateCircularSmallSimpleText

- (CLKComplicationTemplateCircularSmallSimpleText)initWithTextProvider:(CLKTextProvider *)textProvider
{
  v4 = textProvider;
  v8.receiver = self;
  v8.super_class = CLKComplicationTemplateCircularSmallSimpleText;
  initPrivate = [(CLKComplicationTemplate *)&v8 initPrivate];
  v6 = initPrivate;
  if (initPrivate)
  {
    initPrivate->_maxDynamicFontSize = 4;
    [(CLKComplicationTemplateCircularSmallSimpleText *)initPrivate setTextProvider:v4];
  }

  return v6;
}

+ (CLKComplicationTemplateCircularSmallSimpleText)templateWithTextProvider:(CLKTextProvider *)textProvider
{
  v4 = textProvider;
  v5 = [[self alloc] initWithTextProvider:v4];

  return v5;
}

@end