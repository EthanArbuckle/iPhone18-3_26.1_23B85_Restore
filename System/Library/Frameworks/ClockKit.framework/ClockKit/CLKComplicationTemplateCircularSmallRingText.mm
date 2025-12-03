@interface CLKComplicationTemplateCircularSmallRingText
+ (CLKComplicationTemplateCircularSmallRingText)templateWithTextProvider:(CLKTextProvider *)textProvider fillFraction:(float)fillFraction ringStyle:(CLKComplicationRingStyle)ringStyle;
- (CLKComplicationTemplateCircularSmallRingText)initWithTextProvider:(CLKTextProvider *)textProvider fillFraction:(float)fillFraction ringStyle:(CLKComplicationRingStyle)ringStyle;
@end

@implementation CLKComplicationTemplateCircularSmallRingText

- (CLKComplicationTemplateCircularSmallRingText)initWithTextProvider:(CLKTextProvider *)textProvider fillFraction:(float)fillFraction ringStyle:(CLKComplicationRingStyle)ringStyle
{
  v8 = textProvider;
  v13.receiver = self;
  v13.super_class = CLKComplicationTemplateCircularSmallRingText;
  initPrivate = [(CLKComplicationTemplate *)&v13 initPrivate];
  v10 = initPrivate;
  if (initPrivate)
  {
    [(CLKComplicationTemplateCircularSmallRingText *)initPrivate setTextProvider:v8];
    *&v11 = fillFraction;
    [(CLKComplicationTemplateCircularSmallRingText *)v10 setFillFraction:v11];
    [(CLKComplicationTemplateCircularSmallRingText *)v10 setRingStyle:ringStyle];
  }

  return v10;
}

+ (CLKComplicationTemplateCircularSmallRingText)templateWithTextProvider:(CLKTextProvider *)textProvider fillFraction:(float)fillFraction ringStyle:(CLKComplicationRingStyle)ringStyle
{
  v8 = textProvider;
  v9 = [self alloc];
  *&v10 = fillFraction;
  v11 = [v9 initWithTextProvider:v8 fillFraction:ringStyle ringStyle:v10];

  return v11;
}

@end