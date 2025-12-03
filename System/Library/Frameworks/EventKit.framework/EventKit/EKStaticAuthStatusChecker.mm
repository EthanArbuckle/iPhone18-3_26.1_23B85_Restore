@interface EKStaticAuthStatusChecker
- (EKStaticAuthStatusChecker)initWithEventAccessLevel:(int)level hasAccessToReminders:(BOOL)reminders;
@end

@implementation EKStaticAuthStatusChecker

- (EKStaticAuthStatusChecker)initWithEventAccessLevel:(int)level hasAccessToReminders:(BOOL)reminders
{
  v7.receiver = self;
  v7.super_class = EKStaticAuthStatusChecker;
  result = [(EKStaticAuthStatusChecker *)&v7 init];
  if (result)
  {
    result->_eventAccessLevel = level;
    result->_hasAccessToReminders = reminders;
  }

  return result;
}

@end