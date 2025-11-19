@interface CLKComplicationTemplateExtraLargeRingText
+ (CLKComplicationTemplateExtraLargeRingText)templateWithTextProvider:(CLKTextProvider *)textProvider fillFraction:(float)fillFraction ringStyle:(CLKComplicationRingStyle)ringStyle;
- (CLKComplicationTemplateExtraLargeRingText)initWithTextProvider:(CLKTextProvider *)textProvider fillFraction:(float)fillFraction ringStyle:(CLKComplicationRingStyle)ringStyle;
@end

@implementation CLKComplicationTemplateExtraLargeRingText

- (CLKComplicationTemplateExtraLargeRingText)initWithTextProvider:(CLKTextProvider *)textProvider fillFraction:(float)fillFraction ringStyle:(CLKComplicationRingStyle)ringStyle
{
  v8 = textProvider;
  v13.receiver = self;
  v13.super_class = CLKComplicationTemplateExtraLargeRingText;
  v9 = [(CLKComplicationTemplate *)&v13 initPrivate];
  v10 = v9;
  if (v9)
  {
    [(CLKComplicationTemplateExtraLargeRingText *)v9 setTextProvider:v8];
    *&v11 = fillFraction;
    [(CLKComplicationTemplateExtraLargeRingText *)v10 setFillFraction:v11];
    [(CLKComplicationTemplateExtraLargeRingText *)v10 setRingStyle:ringStyle];
  }

  return v10;
}

+ (CLKComplicationTemplateExtraLargeRingText)templateWithTextProvider:(CLKTextProvider *)textProvider fillFraction:(float)fillFraction ringStyle:(CLKComplicationRingStyle)ringStyle
{
  v8 = textProvider;
  v9 = [a1 alloc];
  *&v10 = fillFraction;
  v11 = [v9 initWithTextProvider:v8 fillFraction:ringStyle ringStyle:v10];

  return v11;
}

@end