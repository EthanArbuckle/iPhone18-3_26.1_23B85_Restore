@interface VOTUserEventManager
+ (id)sharedInstance;
- (VOTUserEventManager)init;
- (void)userEventOccurred;
@end

@implementation VOTUserEventManager

+ (id)sharedInstance
{
  if (qword_1001FED80 != -1)
  {
    sub_10012E104();
  }

  v3 = qword_1001FED78;

  return v3;
}

- (VOTUserEventManager)init
{
  v3.receiver = self;
  v3.super_class = VOTUserEventManager;
  return [(VOTUserEventManager *)&v3 init];
}

- (void)userEventOccurred
{
  v3 = +[AXUserEventTimer sharedInstance];
  [v3 userEventOccurred];

  self->_lastEventOccurred = CFAbsoluteTimeGetCurrent();
}

@end