@interface ScrollTimerHandler
- (_TtC22AccessibilityReadingUI18ScrollTimerHandler)init;
- (void)resetScrollingState;
@end

@implementation ScrollTimerHandler

- (void)resetScrollingState
{
  v2 = [objc_opt_self() defaultCenter];
  v3 = v2;
  if (qword_27E2ECEA8 != -1)
  {
    swift_once();
    v2 = v3;
  }

  [v2 postNotificationName:qword_27E2F3C60 object:0];
}

- (_TtC22AccessibilityReadingUI18ScrollTimerHandler)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for ScrollTimerHandler();
  return [(ScrollTimerHandler *)&v3 init];
}

@end