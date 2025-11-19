@interface CLKComplicationTemplateGraphicExtraLargeCircularClosedGaugeText
+ (CLKComplicationTemplateGraphicExtraLargeCircularClosedGaugeText)templateWithGaugeProvider:(CLKGaugeProvider *)gaugeProvider centerTextProvider:(CLKTextProvider *)centerTextProvider;
- (CLKComplicationTemplateGraphicExtraLargeCircularClosedGaugeText)initWithGaugeProvider:(CLKGaugeProvider *)gaugeProvider centerTextProvider:(CLKTextProvider *)centerTextProvider;
@end

@implementation CLKComplicationTemplateGraphicExtraLargeCircularClosedGaugeText

- (CLKComplicationTemplateGraphicExtraLargeCircularClosedGaugeText)initWithGaugeProvider:(CLKGaugeProvider *)gaugeProvider centerTextProvider:(CLKTextProvider *)centerTextProvider
{
  v6 = gaugeProvider;
  v7 = centerTextProvider;
  v11.receiver = self;
  v11.super_class = CLKComplicationTemplateGraphicExtraLargeCircularClosedGaugeText;
  v8 = [(CLKComplicationTemplate *)&v11 initPrivate];
  v9 = v8;
  if (v8)
  {
    [(CLKComplicationTemplateGraphicExtraLargeCircularClosedGaugeText *)v8 setGaugeProvider:v6];
    [(CLKComplicationTemplateGraphicExtraLargeCircularClosedGaugeText *)v9 setCenterTextProvider:v7];
  }

  return v9;
}

+ (CLKComplicationTemplateGraphicExtraLargeCircularClosedGaugeText)templateWithGaugeProvider:(CLKGaugeProvider *)gaugeProvider centerTextProvider:(CLKTextProvider *)centerTextProvider
{
  v6 = centerTextProvider;
  v7 = gaugeProvider;
  v8 = [[a1 alloc] initWithGaugeProvider:v7 centerTextProvider:v6];

  return v8;
}

@end