@interface CLKComplicationTemplateGraphicCircularClosedGaugeText
+ (CLKComplicationTemplateGraphicCircularClosedGaugeText)templateWithGaugeProvider:(CLKGaugeProvider *)gaugeProvider centerTextProvider:(CLKTextProvider *)centerTextProvider;
- (CLKComplicationTemplateGraphicCircularClosedGaugeText)initWithGaugeProvider:(CLKGaugeProvider *)gaugeProvider centerTextProvider:(CLKTextProvider *)centerTextProvider;
@end

@implementation CLKComplicationTemplateGraphicCircularClosedGaugeText

- (CLKComplicationTemplateGraphicCircularClosedGaugeText)initWithGaugeProvider:(CLKGaugeProvider *)gaugeProvider centerTextProvider:(CLKTextProvider *)centerTextProvider
{
  v6 = gaugeProvider;
  v7 = centerTextProvider;
  v11.receiver = self;
  v11.super_class = CLKComplicationTemplateGraphicCircularClosedGaugeText;
  initPrivate = [(CLKComplicationTemplate *)&v11 initPrivate];
  v9 = initPrivate;
  if (initPrivate)
  {
    [(CLKComplicationTemplateGraphicCircularClosedGaugeText *)initPrivate setGaugeProvider:v6];
    [(CLKComplicationTemplateGraphicCircularClosedGaugeText *)v9 setCenterTextProvider:v7];
  }

  return v9;
}

+ (CLKComplicationTemplateGraphicCircularClosedGaugeText)templateWithGaugeProvider:(CLKGaugeProvider *)gaugeProvider centerTextProvider:(CLKTextProvider *)centerTextProvider
{
  v6 = centerTextProvider;
  v7 = gaugeProvider;
  v8 = [[self alloc] initWithGaugeProvider:v7 centerTextProvider:v6];

  return v8;
}

@end