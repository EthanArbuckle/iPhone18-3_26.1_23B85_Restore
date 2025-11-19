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
  v8 = [(CLKComplicationTemplate *)&v11 initPrivate];
  v9 = v8;
  if (v8)
  {
    [(CLKComplicationTemplateGraphicCircularClosedGaugeText *)v8 setGaugeProvider:v6];
    [(CLKComplicationTemplateGraphicCircularClosedGaugeText *)v9 setCenterTextProvider:v7];
  }

  return v9;
}

+ (CLKComplicationTemplateGraphicCircularClosedGaugeText)templateWithGaugeProvider:(CLKGaugeProvider *)gaugeProvider centerTextProvider:(CLKTextProvider *)centerTextProvider
{
  v6 = centerTextProvider;
  v7 = gaugeProvider;
  v8 = [[a1 alloc] initWithGaugeProvider:v7 centerTextProvider:v6];

  return v8;
}

@end