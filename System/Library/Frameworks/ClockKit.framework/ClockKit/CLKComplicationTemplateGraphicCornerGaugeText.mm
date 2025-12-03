@interface CLKComplicationTemplateGraphicCornerGaugeText
+ (CLKComplicationTemplateGraphicCornerGaugeText)templateWithGaugeProvider:(CLKGaugeProvider *)gaugeProvider leadingTextProvider:(CLKTextProvider *)leadingTextProvider trailingTextProvider:(CLKTextProvider *)trailingTextProvider outerTextProvider:(CLKTextProvider *)outerTextProvider;
+ (CLKComplicationTemplateGraphicCornerGaugeText)templateWithGaugeProvider:(CLKGaugeProvider *)gaugeProvider outerTextProvider:(CLKTextProvider *)outerTextProvider;
- (CLKComplicationTemplateGraphicCornerGaugeText)initWithGaugeProvider:(CLKGaugeProvider *)gaugeProvider leadingTextProvider:(CLKTextProvider *)leadingTextProvider trailingTextProvider:(CLKTextProvider *)trailingTextProvider outerTextProvider:(CLKTextProvider *)outerTextProvider;
- (void)_enumerateTextProviderKeysWithBlock:(id)block;
@end

@implementation CLKComplicationTemplateGraphicCornerGaugeText

- (CLKComplicationTemplateGraphicCornerGaugeText)initWithGaugeProvider:(CLKGaugeProvider *)gaugeProvider leadingTextProvider:(CLKTextProvider *)leadingTextProvider trailingTextProvider:(CLKTextProvider *)trailingTextProvider outerTextProvider:(CLKTextProvider *)outerTextProvider
{
  v10 = gaugeProvider;
  v11 = leadingTextProvider;
  v12 = trailingTextProvider;
  v13 = outerTextProvider;
  v17.receiver = self;
  v17.super_class = CLKComplicationTemplateGraphicCornerGaugeText;
  initPrivate = [(CLKComplicationTemplate *)&v17 initPrivate];
  v15 = initPrivate;
  if (initPrivate)
  {
    [(CLKComplicationTemplateGraphicCornerGaugeText *)initPrivate setGaugeProvider:v10];
    [(CLKComplicationTemplateGraphicCornerGaugeText *)v15 setLeadingTextProvider:v11];
    [(CLKComplicationTemplateGraphicCornerGaugeText *)v15 setTrailingTextProvider:v12];
    [(CLKComplicationTemplateGraphicCornerGaugeText *)v15 setOuterTextProvider:v13];
  }

  return v15;
}

+ (CLKComplicationTemplateGraphicCornerGaugeText)templateWithGaugeProvider:(CLKGaugeProvider *)gaugeProvider outerTextProvider:(CLKTextProvider *)outerTextProvider
{
  v6 = outerTextProvider;
  v7 = gaugeProvider;
  v8 = [[self alloc] initWithGaugeProvider:v7 outerTextProvider:v6];

  return v8;
}

+ (CLKComplicationTemplateGraphicCornerGaugeText)templateWithGaugeProvider:(CLKGaugeProvider *)gaugeProvider leadingTextProvider:(CLKTextProvider *)leadingTextProvider trailingTextProvider:(CLKTextProvider *)trailingTextProvider outerTextProvider:(CLKTextProvider *)outerTextProvider
{
  v10 = outerTextProvider;
  v11 = trailingTextProvider;
  v12 = leadingTextProvider;
  v13 = gaugeProvider;
  v14 = [[self alloc] initWithGaugeProvider:v13 leadingTextProvider:v12 trailingTextProvider:v11 outerTextProvider:v10];

  return v14;
}

- (void)_enumerateTextProviderKeysWithBlock:(id)block
{
  blockCopy = block;
  v4 = 0;
  blockCopy[2](blockCopy, @"leadingTextProvider", 1, 1, &v4);
  if ((v4 & 1) == 0)
  {
    blockCopy[2](blockCopy, @"trailingTextProvider", 1, 1, &v4);
    if ((v4 & 1) == 0)
    {
      blockCopy[2](blockCopy, @"outerTextProvider", 0, 1, &v4);
    }
  }
}

@end