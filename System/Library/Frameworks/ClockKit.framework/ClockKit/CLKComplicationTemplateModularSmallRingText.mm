@interface CLKComplicationTemplateModularSmallRingText
+ (CLKComplicationTemplateModularSmallRingText)templateWithTextProvider:(CLKTextProvider *)textProvider fillFraction:(float)fillFraction ringStyle:(CLKComplicationRingStyle)ringStyle;
- (CLKComplicationTemplateModularSmallRingText)initWithTextProvider:(CLKTextProvider *)textProvider fillFraction:(float)fillFraction ringStyle:(CLKComplicationRingStyle)ringStyle;
@end

@implementation CLKComplicationTemplateModularSmallRingText

- (CLKComplicationTemplateModularSmallRingText)initWithTextProvider:(CLKTextProvider *)textProvider fillFraction:(float)fillFraction ringStyle:(CLKComplicationRingStyle)ringStyle
{
  v8 = textProvider;
  v13.receiver = self;
  v13.super_class = CLKComplicationTemplateModularSmallRingText;
  initPrivate = [(CLKComplicationTemplate *)&v13 initPrivate];
  v10 = initPrivate;
  if (initPrivate)
  {
    [(CLKComplicationTemplateModularSmallRingText *)initPrivate setTextProvider:v8];
    *&v11 = fillFraction;
    [(CLKComplicationTemplateModularSmallRingText *)v10 setFillFraction:v11];
    [(CLKComplicationTemplateModularSmallRingText *)v10 setRingStyle:ringStyle];
  }

  return v10;
}

+ (CLKComplicationTemplateModularSmallRingText)templateWithTextProvider:(CLKTextProvider *)textProvider fillFraction:(float)fillFraction ringStyle:(CLKComplicationRingStyle)ringStyle
{
  v8 = textProvider;
  v9 = [self alloc];
  *&v10 = fillFraction;
  v11 = [v9 initWithTextProvider:v8 fillFraction:ringStyle ringStyle:v10];

  return v11;
}

@end