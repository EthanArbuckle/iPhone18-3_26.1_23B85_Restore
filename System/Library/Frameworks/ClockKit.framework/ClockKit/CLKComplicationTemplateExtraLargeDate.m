@interface CLKComplicationTemplateExtraLargeDate
+ (id)templateWithWeekdayTextProvider:(id)a3 dayTextProvider:(id)a4;
- (CLKComplicationTemplateExtraLargeDate)initWithWeekdayTextProvider:(id)a3 dayTextProvider:(id)a4;
- (void)_enumerateTextProviderKeysWithBlock:(id)a3;
@end

@implementation CLKComplicationTemplateExtraLargeDate

- (CLKComplicationTemplateExtraLargeDate)initWithWeekdayTextProvider:(id)a3 dayTextProvider:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = CLKComplicationTemplateExtraLargeDate;
  v8 = [(CLKComplicationTemplate *)&v11 initPrivate];
  v9 = v8;
  if (v8)
  {
    [(CLKComplicationTemplateExtraLargeDate *)v8 setWeekdayTextProvider:v6];
    [(CLKComplicationTemplateExtraLargeDate *)v9 setDayTextProvider:v7];
  }

  return v9;
}

+ (id)templateWithWeekdayTextProvider:(id)a3 dayTextProvider:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithWeekdayTextProvider:v7 dayTextProvider:v6];

  return v8;
}

- (void)_enumerateTextProviderKeysWithBlock:(id)a3
{
  v3 = a3;
  v4 = 0;
  (*(v3 + 2))(v3, @"weekdayTextProvider", 0, 0, &v4);
  if ((v4 & 1) == 0)
  {
    (*(v3 + 2))(v3, @"dayTextProvider", 0, 0, &v4);
  }
}

@end