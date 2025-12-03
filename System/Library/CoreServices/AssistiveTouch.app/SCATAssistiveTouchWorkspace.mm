@interface SCATAssistiveTouchWorkspace
+ (id)sharedWorkspace;
- (SCATAssistiveTouchWorkspace)init;
- (void)accessibilityManager:(id)manager didReceiveEvent:(int64_t)event data:(id)data;
- (void)dealloc;
- (void)pointerController:(id)controller didReceivePointerEvent:(id)event;
@end

@implementation SCATAssistiveTouchWorkspace

+ (id)sharedWorkspace
{
  if (qword_100218C08 != -1)
  {
    sub_10012B174();
  }

  v3 = qword_100218C00;

  return v3;
}

- (SCATAssistiveTouchWorkspace)init
{
  v6.receiver = self;
  v6.super_class = SCATAssistiveTouchWorkspace;
  v2 = [(SCATAssistiveTouchWorkspace *)&v6 init];
  if (v2)
  {
    v3 = +[HNDAccessibilityManager sharedManager];
    [v3 addObserver:v2];

    v4 = v2;
  }

  return v2;
}

- (void)dealloc
{
  v3 = +[HNDAccessibilityManager sharedManager];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = SCATAssistiveTouchWorkspace;
  [(SCATAssistiveTouchWorkspace *)&v4 dealloc];
}

- (void)accessibilityManager:(id)manager didReceiveEvent:(int64_t)event data:(id)data
{
  managerCopy = manager;
  dataCopy = data;
  if (event == 1)
  {
    if (!_AXSAutomationEnabled())
    {
      goto LABEL_8;
    }

    v8 = @"AssistiveTouchDidReceiveScreenChange";
    goto LABEL_7;
  }

  if (event == 3 && _AXSAutomationEnabled())
  {
    v8 = @"AssistiveTouchDidReceiveLayoutChange";
LABEL_7:
    v9 = +[NSDistributedNotificationCenter defaultCenter];
    [v9 postNotificationName:@"AssistiveTouchEventOccurred" object:v8];
  }

LABEL_8:
}

- (void)pointerController:(id)controller didReceivePointerEvent:(id)event
{
  if ([event type] == 3 && _AXSAutomationEnabled())
  {
    v4 = +[NSDistributedNotificationCenter defaultCenter];
    [v4 postNotificationName:@"AssistiveTouchEventOccurred" object:@"AssistiveTouchDidReceivePointerMoved"];
  }
}

@end