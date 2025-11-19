@interface NSCalendar
- (BOOL)ttr_isDateAtARoundHour:(id)a3;
@end

@implementation NSCalendar

- (BOOL)ttr_isDateAtARoundHour:(id)a3
{
  v3 = [(NSCalendar *)self components:32960 fromDate:a3];
  v4 = ![v3 minute] && !objc_msgSend(v3, "second") && objc_msgSend(v3, "nanosecond") == 0;

  return v4;
}

@end