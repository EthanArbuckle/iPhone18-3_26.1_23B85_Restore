@interface EKStaticAuthStatusChecker
- (EKStaticAuthStatusChecker)initWithEventAccessLevel:(int)a3 hasAccessToReminders:(BOOL)a4;
@end

@implementation EKStaticAuthStatusChecker

- (EKStaticAuthStatusChecker)initWithEventAccessLevel:(int)a3 hasAccessToReminders:(BOOL)a4
{
  v7.receiver = self;
  v7.super_class = EKStaticAuthStatusChecker;
  result = [(EKStaticAuthStatusChecker *)&v7 init];
  if (result)
  {
    result->_eventAccessLevel = a3;
    result->_hasAccessToReminders = a4;
  }

  return result;
}

@end