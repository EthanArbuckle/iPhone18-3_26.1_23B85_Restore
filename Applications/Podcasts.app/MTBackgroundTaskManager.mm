@interface MTBackgroundTaskManager
- (MTBackgroundTaskManager)init;
- (void)beginBackgroundTask:(id)a3;
- (void)endBackgroundTask;
@end

@implementation MTBackgroundTaskManager

- (MTBackgroundTaskManager)init
{
  *(&self->super.isa + OBJC_IVAR___MTBackgroundTaskManager_task) = UIBackgroundTaskInvalid;
  v3.receiver = self;
  v3.super_class = type metadata accessor for BackgroundTaskManager();
  return [(MTBackgroundTaskManager *)&v3 init];
}

- (void)beginBackgroundTask:(id)a3
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  v7 = self;
  sub_10001B3CC(v4, v6);
}

- (void)endBackgroundTask
{
  v2 = self;
  sub_1000442BC();
}

@end