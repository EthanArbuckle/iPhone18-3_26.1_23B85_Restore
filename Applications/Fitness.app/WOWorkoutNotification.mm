@interface WOWorkoutNotification
- (WOWorkoutNotification)init;
- (id)init:(id)init;
@end

@implementation WOWorkoutNotification

- (id)init:(id)init
{
  *(&self->super.isa + OBJC_IVAR___WOWorkoutNotification_bridgedNotification) = init;
  v6.receiver = self;
  v6.super_class = type metadata accessor for WorkoutNotificationBridge();
  initCopy = init;
  return [(WOWorkoutNotification *)&v6 init];
}

- (WOWorkoutNotification)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end