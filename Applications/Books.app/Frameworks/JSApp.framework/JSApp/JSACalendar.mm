@interface JSACalendar
+ (unint64_t)firstDayOfWeek;
@end

@implementation JSACalendar

+ (unint64_t)firstDayOfWeek
{
  v2 = +[NSCalendar currentCalendar];
  v3 = [v2 firstWeekday];

  return v3;
}

@end