@interface CLKComplicationTemplateSimpleText
+ (id)templateWithTextProvider:(id)provider;
- (CLKComplicationTemplateSimpleText)initWithTextProvider:(id)provider;
@end

@implementation CLKComplicationTemplateSimpleText

- (CLKComplicationTemplateSimpleText)initWithTextProvider:(id)provider
{
  providerCopy = provider;
  v8.receiver = self;
  v8.super_class = CLKComplicationTemplateSimpleText;
  initPrivate = [(CLKComplicationTemplate *)&v8 initPrivate];
  v6 = initPrivate;
  if (initPrivate)
  {
    [(CLKComplicationTemplateSimpleText *)initPrivate setTextProvider:providerCopy];
  }

  return v6;
}

+ (id)templateWithTextProvider:(id)provider
{
  providerCopy = provider;
  v5 = [[self alloc] initWithTextProvider:providerCopy];

  return v5;
}

@end