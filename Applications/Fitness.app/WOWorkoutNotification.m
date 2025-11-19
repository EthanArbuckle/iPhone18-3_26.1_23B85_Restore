@interface WOWorkoutNotification
- (WOWorkoutNotification)init;
- (id)init:(id)a3;
@end

@implementation WOWorkoutNotification

- (id)init:(id)a3
{
  *(&self->super.isa + OBJC_IVAR___WOWorkoutNotification_bridgedNotification) = a3;
  v6.receiver = self;
  v6.super_class = type metadata accessor for WorkoutNotificationBridge();
  v4 = a3;
  return [(WOWorkoutNotification *)&v6 init];
}

- (WOWorkoutNotification)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end