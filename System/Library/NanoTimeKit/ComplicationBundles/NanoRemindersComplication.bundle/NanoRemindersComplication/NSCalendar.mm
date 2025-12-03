@interface NSCalendar
- (BOOL)ttr_isDateAtARoundHour:(id)hour;
@end

@implementation NSCalendar

- (BOOL)ttr_isDateAtARoundHour:(id)hour
{
  v3 = [(NSCalendar *)self components:32960 fromDate:hour];
  v4 = ![v3 minute] && !objc_msgSend(v3, "second") && objc_msgSend(v3, "nanosecond") == 0;

  return v4;
}

@end