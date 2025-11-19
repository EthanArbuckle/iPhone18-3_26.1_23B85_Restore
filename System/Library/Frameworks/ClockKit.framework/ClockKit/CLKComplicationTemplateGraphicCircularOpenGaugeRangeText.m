@interface CLKComplicationTemplateGraphicCircularOpenGaugeRangeText
+ (CLKComplicationTemplateGraphicCircularOpenGaugeRangeText)templateWithGaugeProvider:(CLKGaugeProvider *)gaugeProvider leadingTextProvider:(CLKTextProvider *)leadingTextProvider trailingTextProvider:(CLKTextProvider *)trailingTextProvider centerTextProvider:(CLKTextProvider *)centerTextProvider;
- (CLKComplicationTemplateGraphicCircularOpenGaugeRangeText)initWithGaugeProvider:(CLKGaugeProvider *)gaugeProvider leadingTextProvider:(CLKTextProvider *)leadingTextProvider trailingTextProvider:(CLKTextProvider *)trailingTextProvider centerTextProvider:(CLKTextProvider *)centerTextProvider;
- (void)_enumerateTextProviderKeysWithBlock:(id)a3;
@end

@implementation CLKComplicationTemplateGraphicCircularOpenGaugeRangeText

- (CLKComplicationTemplateGraphicCircularOpenGaugeRangeText)initWithGaugeProvider:(CLKGaugeProvider *)gaugeProvider leadingTextProvider:(CLKTextProvider *)leadingTextProvider trailingTextProvider:(CLKTextProvider *)trailingTextProvider centerTextProvider:(CLKTextProvider *)centerTextProvider
{
  v10 = gaugeProvider;
  v11 = leadingTextProvider;
  v12 = trailingTextProvider;
  v13 = centerTextProvider;
  v17.receiver = self;
  v17.super_class = CLKComplicationTemplateGraphicCircularOpenGaugeRangeText;
  v14 = [(CLKComplicationTemplate *)&v17 initPrivate];
  v15 = v14;
  if (v14)
  {
    [(CLKComplicationTemplateGraphicCircularOpenGaugeRangeText *)v14 setGaugeProvider:v10];
    [(CLKComplicationTemplateGraphicCircularOpenGaugeRangeText *)v15 setLeadingTextProvider:v11];
    [(CLKComplicationTemplateGraphicCircularOpenGaugeRangeText *)v15 setTrailingTextProvider:v12];
    [(CLKComplicationTemplateGraphicCircularOpenGaugeRangeText *)v15 setCenterTextProvider:v13];
  }

  return v15;
}

+ (CLKComplicationTemplateGraphicCircularOpenGaugeRangeText)templateWithGaugeProvider:(CLKGaugeProvider *)gaugeProvider leadingTextProvider:(CLKTextProvider *)leadingTextProvider trailingTextProvider:(CLKTextProvider *)trailingTextProvider centerTextProvider:(CLKTextProvider *)centerTextProvider
{
  v10 = centerTextProvider;
  v11 = trailingTextProvider;
  v12 = leadingTextProvider;
  v13 = gaugeProvider;
  v14 = [[a1 alloc] initWithGaugeProvider:v13 leadingTextProvider:v12 trailingTextProvider:v11 centerTextProvider:v10];

  return v14;
}

- (void)_enumerateTextProviderKeysWithBlock:(id)a3
{
  v3 = a3;
  v4 = 0;
  v3[2](v3, @"leadingTextProvider", 0, 1, &v4);
  if ((v4 & 1) == 0)
  {
    v3[2](v3, @"trailingTextProvider", 0, 1, &v4);
    if ((v4 & 1) == 0)
    {
      v3[2](v3, @"centerTextProvider", 0, 1, &v4);
    }
  }
}

@end