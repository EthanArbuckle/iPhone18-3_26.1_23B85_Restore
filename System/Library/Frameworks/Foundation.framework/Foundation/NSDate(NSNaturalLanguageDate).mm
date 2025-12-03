@interface NSDate(NSNaturalLanguageDate)
+ (uint64_t)dateWithNaturalLanguageString:()NSNaturalLanguageDate date:locale:;
@end

@implementation NSDate(NSNaturalLanguageDate)

+ (uint64_t)dateWithNaturalLanguageString:()NSNaturalLanguageDate date:locale:
{
  v2 = [NSCalendarDate dateWithNaturalLanguageString:"dateWithNaturalLanguageString:date:locale:" date:? locale:?];
  if (!v2 || objc_opt_self() == self)
  {
    return v2;
  }

  [(NSCalendarDate *)v2 timeIntervalSinceReferenceDate];

  return [self dateWithTimeIntervalSinceReferenceDate:?];
}

@end