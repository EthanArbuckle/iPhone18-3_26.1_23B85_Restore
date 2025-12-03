@interface CLKComplicationTemplateGraphicCircularOpenGaugeSimpleText
+ (CLKComplicationTemplateGraphicCircularOpenGaugeSimpleText)templateWithGaugeProvider:(CLKGaugeProvider *)gaugeProvider bottomTextProvider:(CLKTextProvider *)bottomTextProvider centerTextProvider:(CLKTextProvider *)centerTextProvider;
- (CLKComplicationTemplateGraphicCircularOpenGaugeSimpleText)initWithGaugeProvider:(CLKGaugeProvider *)gaugeProvider bottomTextProvider:(CLKTextProvider *)bottomTextProvider centerTextProvider:(CLKTextProvider *)centerTextProvider;
- (void)_enumerateTextProviderKeysWithBlock:(id)block;
@end

@implementation CLKComplicationTemplateGraphicCircularOpenGaugeSimpleText

- (CLKComplicationTemplateGraphicCircularOpenGaugeSimpleText)initWithGaugeProvider:(CLKGaugeProvider *)gaugeProvider bottomTextProvider:(CLKTextProvider *)bottomTextProvider centerTextProvider:(CLKTextProvider *)centerTextProvider
{
  v8 = gaugeProvider;
  v9 = bottomTextProvider;
  v10 = centerTextProvider;
  v14.receiver = self;
  v14.super_class = CLKComplicationTemplateGraphicCircularOpenGaugeSimpleText;
  initPrivate = [(CLKComplicationTemplate *)&v14 initPrivate];
  v12 = initPrivate;
  if (initPrivate)
  {
    [(CLKComplicationTemplateGraphicCircularOpenGaugeSimpleText *)initPrivate setGaugeProvider:v8];
    [(CLKComplicationTemplateGraphicCircularOpenGaugeSimpleText *)v12 setBottomTextProvider:v9];
    [(CLKComplicationTemplateGraphicCircularOpenGaugeSimpleText *)v12 setCenterTextProvider:v10];
  }

  return v12;
}

+ (CLKComplicationTemplateGraphicCircularOpenGaugeSimpleText)templateWithGaugeProvider:(CLKGaugeProvider *)gaugeProvider bottomTextProvider:(CLKTextProvider *)bottomTextProvider centerTextProvider:(CLKTextProvider *)centerTextProvider
{
  v8 = centerTextProvider;
  v9 = bottomTextProvider;
  v10 = gaugeProvider;
  v11 = [[self alloc] initWithGaugeProvider:v10 bottomTextProvider:v9 centerTextProvider:v8];

  return v11;
}

- (void)_enumerateTextProviderKeysWithBlock:(id)block
{
  blockCopy = block;
  v4 = 0;
  blockCopy[2](blockCopy, @"bottomTextProvider", 0, 1, &v4);
  if ((v4 & 1) == 0)
  {
    blockCopy[2](blockCopy, @"centerTextProvider", 0, 1, &v4);
  }
}

@end