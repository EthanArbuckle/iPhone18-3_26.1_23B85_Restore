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
  v5 = [(CLKComplicationTemplate *)&v8 initPrivate];
  v6 = v5;
  if (v5)
  {
    v5->_maxDynamicFontSize = 4;
    [(CLKComplicationTemplateExtraLargeSimpleText *)v5 setTextProvider:v4];
  }

  return v6;
}

+ (CLKComplicationTemplateExtraLargeSimpleText)templateWithTextProvider:(CLKTextProvider *)textProvider
{
  v4 = textProvider;
  v5 = [[a1 alloc] initWithTextProvider:v4];

  return v5;
}

@end