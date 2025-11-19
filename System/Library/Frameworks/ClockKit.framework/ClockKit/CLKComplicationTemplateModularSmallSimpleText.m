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
  v5 = [(CLKComplicationTemplate *)&v8 initPrivate];
  v6 = v5;
  if (v5)
  {
    [(CLKComplicationTemplateModularSmallSimpleText *)v5 setTextProvider:v4];
    v6->_maxDynamicFontSize = 4;
  }

  return v6;
}

+ (CLKComplicationTemplateModularSmallSimpleText)templateWithTextProvider:(CLKTextProvider *)textProvider
{
  v4 = textProvider;
  v5 = [[a1 alloc] initWithTextProvider:v4];

  return v5;
}

@end