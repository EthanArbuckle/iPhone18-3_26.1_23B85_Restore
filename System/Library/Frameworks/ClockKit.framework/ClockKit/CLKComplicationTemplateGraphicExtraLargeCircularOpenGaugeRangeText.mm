@interface CLKComplicationTemplateGraphicExtraLargeCircularOpenGaugeRangeText
+ (CLKComplicationTemplateGraphicExtraLargeCircularOpenGaugeRangeText)templateWithGaugeProvider:(CLKGaugeProvider *)gaugeProvider leadingTextProvider:(CLKTextProvider *)leadingTextProvider trailingTextProvider:(CLKTextProvider *)trailingTextProvider centerTextProvider:(CLKTextProvider *)centerTextProvider;
- (CLKComplicationTemplateGraphicExtraLargeCircularOpenGaugeRangeText)initWithGaugeProvider:(CLKGaugeProvider *)gaugeProvider leadingTextProvider:(CLKTextProvider *)leadingTextProvider trailingTextProvider:(CLKTextProvider *)trailingTextProvider centerTextProvider:(CLKTextProvider *)centerTextProvider;
- (void)_enumerateTextProviderKeysWithBlock:(id)block;
@end

@implementation CLKComplicationTemplateGraphicExtraLargeCircularOpenGaugeRangeText

- (CLKComplicationTemplateGraphicExtraLargeCircularOpenGaugeRangeText)initWithGaugeProvider:(CLKGaugeProvider *)gaugeProvider leadingTextProvider:(CLKTextProvider *)leadingTextProvider trailingTextProvider:(CLKTextProvider *)trailingTextProvider centerTextProvider:(CLKTextProvider *)centerTextProvider
{
  v10 = gaugeProvider;
  v11 = leadingTextProvider;
  v12 = trailingTextProvider;
  v13 = centerTextProvider;
  v17.receiver = self;
  v17.super_class = CLKComplicationTemplateGraphicExtraLargeCircularOpenGaugeRangeText;
  initPrivate = [(CLKComplicationTemplate *)&v17 initPrivate];
  v15 = initPrivate;
  if (initPrivate)
  {
    [(CLKComplicationTemplateGraphicExtraLargeCircularOpenGaugeRangeText *)initPrivate setGaugeProvider:v10];
    [(CLKComplicationTemplateGraphicExtraLargeCircularOpenGaugeRangeText *)v15 setLeadingTextProvider:v11];
    [(CLKComplicationTemplateGraphicExtraLargeCircularOpenGaugeRangeText *)v15 setTrailingTextProvider:v12];
    [(CLKComplicationTemplateGraphicExtraLargeCircularOpenGaugeRangeText *)v15 setCenterTextProvider:v13];
  }

  return v15;
}

+ (CLKComplicationTemplateGraphicExtraLargeCircularOpenGaugeRangeText)templateWithGaugeProvider:(CLKGaugeProvider *)gaugeProvider leadingTextProvider:(CLKTextProvider *)leadingTextProvider trailingTextProvider:(CLKTextProvider *)trailingTextProvider centerTextProvider:(CLKTextProvider *)centerTextProvider
{
  v10 = centerTextProvider;
  v11 = trailingTextProvider;
  v12 = leadingTextProvider;
  v13 = gaugeProvider;
  v14 = [[self alloc] initWithGaugeProvider:v13 leadingTextProvider:v12 trailingTextProvider:v11 centerTextProvider:v10];

  return v14;
}

- (void)_enumerateTextProviderKeysWithBlock:(id)block
{
  blockCopy = block;
  v4 = 0;
  blockCopy[2](blockCopy, @"leadingTextProvider", 0, 1, &v4);
  if ((v4 & 1) == 0)
  {
    blockCopy[2](blockCopy, @"trailingTextProvider", 0, 1, &v4);
    if ((v4 & 1) == 0)
    {
      blockCopy[2](blockCopy, @"centerTextProvider", 0, 1, &v4);
    }
  }
}

@end