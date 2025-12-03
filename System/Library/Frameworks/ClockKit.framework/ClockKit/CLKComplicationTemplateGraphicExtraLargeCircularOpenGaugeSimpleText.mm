@interface CLKComplicationTemplateGraphicExtraLargeCircularOpenGaugeSimpleText
+ (CLKComplicationTemplateGraphicExtraLargeCircularOpenGaugeSimpleText)templateWithGaugeProvider:(CLKGaugeProvider *)gaugeProvider bottomTextProvider:(CLKTextProvider *)bottomTextProvider centerTextProvider:(CLKTextProvider *)centerTextProvider;
- (CLKComplicationTemplateGraphicExtraLargeCircularOpenGaugeSimpleText)initWithGaugeProvider:(CLKGaugeProvider *)gaugeProvider bottomTextProvider:(CLKTextProvider *)bottomTextProvider centerTextProvider:(CLKTextProvider *)centerTextProvider;
- (void)_enumerateTextProviderKeysWithBlock:(id)block;
@end

@implementation CLKComplicationTemplateGraphicExtraLargeCircularOpenGaugeSimpleText

- (CLKComplicationTemplateGraphicExtraLargeCircularOpenGaugeSimpleText)initWithGaugeProvider:(CLKGaugeProvider *)gaugeProvider bottomTextProvider:(CLKTextProvider *)bottomTextProvider centerTextProvider:(CLKTextProvider *)centerTextProvider
{
  v8 = gaugeProvider;
  v9 = bottomTextProvider;
  v10 = centerTextProvider;
  v14.receiver = self;
  v14.super_class = CLKComplicationTemplateGraphicExtraLargeCircularOpenGaugeSimpleText;
  initPrivate = [(CLKComplicationTemplate *)&v14 initPrivate];
  v12 = initPrivate;
  if (initPrivate)
  {
    [(CLKComplicationTemplateGraphicExtraLargeCircularOpenGaugeSimpleText *)initPrivate setGaugeProvider:v8];
    [(CLKComplicationTemplateGraphicExtraLargeCircularOpenGaugeSimpleText *)v12 setBottomTextProvider:v9];
    [(CLKComplicationTemplateGraphicExtraLargeCircularOpenGaugeSimpleText *)v12 setCenterTextProvider:v10];
  }

  return v12;
}

+ (CLKComplicationTemplateGraphicExtraLargeCircularOpenGaugeSimpleText)templateWithGaugeProvider:(CLKGaugeProvider *)gaugeProvider bottomTextProvider:(CLKTextProvider *)bottomTextProvider centerTextProvider:(CLKTextProvider *)centerTextProvider
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