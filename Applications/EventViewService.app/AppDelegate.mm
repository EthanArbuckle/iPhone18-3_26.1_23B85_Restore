@interface AppDelegate
- (BOOL)application:(id)application continueUserActivity:(id)activity restorationHandler:(id)handler;
- (_TtC16EventViewService11AppDelegate)init;
@end

@implementation AppDelegate

- (BOOL)application:(id)application continueUserActivity:(id)activity restorationHandler:(id)handler
{
  v8 = _Block_copy(handler);
  applicationCopy = application;
  activityCopy = activity;
  selfCopy = self;
  LOBYTE(self) = sub_1001AA914(activityCopy);
  _Block_release(v8);

  return self & 1;
}

- (_TtC16EventViewService11AppDelegate)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for AppDelegate();
  return [(AppDelegate *)&v3 init];
}

@end