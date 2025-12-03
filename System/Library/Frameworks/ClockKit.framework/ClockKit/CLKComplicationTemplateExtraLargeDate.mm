@interface CLKComplicationTemplateExtraLargeDate
+ (id)templateWithWeekdayTextProvider:(id)provider dayTextProvider:(id)textProvider;
- (CLKComplicationTemplateExtraLargeDate)initWithWeekdayTextProvider:(id)provider dayTextProvider:(id)textProvider;
- (void)_enumerateTextProviderKeysWithBlock:(id)block;
@end

@implementation CLKComplicationTemplateExtraLargeDate

- (CLKComplicationTemplateExtraLargeDate)initWithWeekdayTextProvider:(id)provider dayTextProvider:(id)textProvider
{
  providerCopy = provider;
  textProviderCopy = textProvider;
  v11.receiver = self;
  v11.super_class = CLKComplicationTemplateExtraLargeDate;
  initPrivate = [(CLKComplicationTemplate *)&v11 initPrivate];
  v9 = initPrivate;
  if (initPrivate)
  {
    [(CLKComplicationTemplateExtraLargeDate *)initPrivate setWeekdayTextProvider:providerCopy];
    [(CLKComplicationTemplateExtraLargeDate *)v9 setDayTextProvider:textProviderCopy];
  }

  return v9;
}

+ (id)templateWithWeekdayTextProvider:(id)provider dayTextProvider:(id)textProvider
{
  textProviderCopy = textProvider;
  providerCopy = provider;
  v8 = [[self alloc] initWithWeekdayTextProvider:providerCopy dayTextProvider:textProviderCopy];

  return v8;
}

- (void)_enumerateTextProviderKeysWithBlock:(id)block
{
  blockCopy = block;
  v4 = 0;
  (*(blockCopy + 2))(blockCopy, @"weekdayTextProvider", 0, 0, &v4);
  if ((v4 & 1) == 0)
  {
    (*(blockCopy + 2))(blockCopy, @"dayTextProvider", 0, 0, &v4);
  }
}

@end