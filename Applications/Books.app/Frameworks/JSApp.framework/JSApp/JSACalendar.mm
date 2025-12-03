@interface JSACalendar
+ (unint64_t)firstDayOfWeek;
@end

@implementation JSACalendar

+ (unint64_t)firstDayOfWeek
{
  v2 = +[NSCalendar currentCalendar];
  firstWeekday = [v2 firstWeekday];

  return firstWeekday;
}

@end