@interface NSDate(NSCalendarDateStuff)
- (NSCalendarDate)dateWithCalendarFormat:()NSCalendarDateStuff timeZone:;
- (uint64_t)descriptionWithCalendarFormat:()NSCalendarDateStuff timeZone:locale:;
@end

@implementation NSDate(NSCalendarDateStuff)

- (NSCalendarDate)dateWithCalendarFormat:()NSCalendarDateStuff timeZone:
{
  [a1 timeIntervalSinceReferenceDate];
  v6 = [NSCalendarDate dateWithTimeIntervalSinceReferenceDate:?];
  [(NSCalendarDate *)v6 setTimeZone:a4];
  [(NSCalendarDate *)v6 setCalendarFormat:a3];
  return v6;
}

- (uint64_t)descriptionWithCalendarFormat:()NSCalendarDateStuff timeZone:locale:
{
  v9 = objc_allocWithZone(NSCalendarDate);
  [a1 timeIntervalSinceReferenceDate];
  v10 = [v9 initWithTimeIntervalSinceReferenceDate:?];
  [v10 setTimeZone:a4];
  [v10 setCalendarFormat:a3];
  v11 = [v10 descriptionWithLocale:a5];

  return v11;
}

@end