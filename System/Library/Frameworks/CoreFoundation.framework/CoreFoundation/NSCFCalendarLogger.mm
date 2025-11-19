@interface NSCFCalendarLogger
@end

@implementation NSCFCalendarLogger

os_log_t ___NSCFCalendarLogger_block_invoke()
{
  result = os_log_create("com.apple.NSCFCalendar", "general");
  _NSCFCalendarLogger__logger = result;
  return result;
}

@end