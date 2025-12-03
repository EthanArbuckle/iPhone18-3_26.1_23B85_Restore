@interface ScrollTimerHandler
- (_TtC22AccessibilityReadingUI18ScrollTimerHandler)init;
- (void)resetScrollingState;
@end

@implementation ScrollTimerHandler

- (void)resetScrollingState
{
  defaultCenter = [objc_opt_self() defaultCenter];
  v3 = defaultCenter;
  if (qword_27E2ECEA8 != -1)
  {
    swift_once();
    defaultCenter = v3;
  }

  [defaultCenter postNotificationName:qword_27E2F3C60 object:0];
}

- (_TtC22AccessibilityReadingUI18ScrollTimerHandler)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for ScrollTimerHandler();
  return [(ScrollTimerHandler *)&v3 init];
}

@end