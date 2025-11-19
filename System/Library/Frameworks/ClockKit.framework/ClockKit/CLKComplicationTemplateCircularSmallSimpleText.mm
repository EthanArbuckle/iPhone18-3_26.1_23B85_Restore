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
  v5 = [(CLKComplicationTemplate *)&v8 initPrivate];
  v6 = v5;
  if (v5)
  {
    v5->_maxDynamicFontSize = 4;
    [(CLKComplicationTemplateCircularSmallSimpleText *)v5 setTextProvider:v4];
  }

  return v6;
}

+ (CLKComplicationTemplateCircularSmallSimpleText)templateWithTextProvider:(CLKTextProvider *)textProvider
{
  v4 = textProvider;
  v5 = [[a1 alloc] initWithTextProvider:v4];

  return v5;
}

@end