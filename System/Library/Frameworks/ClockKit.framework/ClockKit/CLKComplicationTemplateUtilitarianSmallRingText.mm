@interface CLKComplicationTemplateUtilitarianSmallRingText
+ (CLKComplicationTemplateUtilitarianSmallRingText)templateWithTextProvider:(CLKTextProvider *)textProvider fillFraction:(float)fillFraction ringStyle:(CLKComplicationRingStyle)ringStyle;
- (CLKComplicationTemplateUtilitarianSmallRingText)initWithTextProvider:(CLKTextProvider *)textProvider fillFraction:(float)fillFraction ringStyle:(CLKComplicationRingStyle)ringStyle;
@end

@implementation CLKComplicationTemplateUtilitarianSmallRingText

- (CLKComplicationTemplateUtilitarianSmallRingText)initWithTextProvider:(CLKTextProvider *)textProvider fillFraction:(float)fillFraction ringStyle:(CLKComplicationRingStyle)ringStyle
{
  v8 = textProvider;
  v13.receiver = self;
  v13.super_class = CLKComplicationTemplateUtilitarianSmallRingText;
  initPrivate = [(CLKComplicationTemplate *)&v13 initPrivate];
  v10 = initPrivate;
  if (initPrivate)
  {
    [(CLKComplicationTemplateUtilitarianSmallRingText *)initPrivate setTextProvider:v8];
    *&v11 = fillFraction;
    [(CLKComplicationTemplateUtilitarianSmallRingText *)v10 setFillFraction:v11];
    [(CLKComplicationTemplateUtilitarianSmallRingText *)v10 setRingStyle:ringStyle];
  }

  return v10;
}

+ (CLKComplicationTemplateUtilitarianSmallRingText)templateWithTextProvider:(CLKTextProvider *)textProvider fillFraction:(float)fillFraction ringStyle:(CLKComplicationRingStyle)ringStyle
{
  v8 = textProvider;
  v9 = [self alloc];
  *&v10 = fillFraction;
  v11 = [v9 initWithTextProvider:v8 fillFraction:ringStyle ringStyle:v10];

  return v11;
}

@end