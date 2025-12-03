@interface CLKComplicationTemplateModularSmallSimpleText
+ (CLKComplicationTemplateModularSmallSimpleText)templateWithTextProvider:(CLKTextProvider *)textProvider;
- (CLKComplicationTemplateModularSmallSimpleText)initWithTextProvider:(CLKTextProvider *)textProvider;
@end

@implementation CLKComplicationTemplateModularSmallSimpleText

- (CLKComplicationTemplateModularSmallSimpleText)initWithTextProvider:(CLKTextProvider *)textProvider
{
  v4 = textProvider;
  v8.receiver = self;
  v8.super_class = CLKComplicationTemplateModularSmallSimpleText;
  initPrivate = [(CLKComplicationTemplate *)&v8 initPrivate];
  v6 = initPrivate;
  if (initPrivate)
  {
    [(CLKComplicationTemplateModularSmallSimpleText *)initPrivate setTextProvider:v4];
    v6->_maxDynamicFontSize = 4;
  }

  return v6;
}

+ (CLKComplicationTemplateModularSmallSimpleText)templateWithTextProvider:(CLKTextProvider *)textProvider
{
  v4 = textProvider;
  v5 = [[self alloc] initWithTextProvider:v4];

  return v5;
}

@end