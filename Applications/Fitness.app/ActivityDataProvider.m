@interface ActivityDataProvider
- (_TtC10FitnessApp20ActivityDataProvider)init;
- (void)dealloc;
- (void)setHealthStore:(id)a3;
- (void)setWorkoutDataProvider:(id)a3;
- (void)updateWidgets;
- (void)wheelchairUseCharacteristicCache:(id)a3 wheelchairUsageDidChange:(BOOL)a4;
@end

@implementation ActivityDataProvider

- (void)setHealthStore:(id)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC10FitnessApp20ActivityDataProvider_healthStore);
  *(&self->super.isa + OBJC_IVAR____TtC10FitnessApp20ActivityDataProvider_healthStore) = a3;
  v3 = a3;
}

- (void)setWorkoutDataProvider:(id)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC10FitnessApp20ActivityDataProvider_workoutDataProvider);
  *(&self->super.isa + OBJC_IVAR____TtC10FitnessApp20ActivityDataProvider_workoutDataProvider) = a3;
  v3 = a3;
}

- (void)dealloc
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC10FitnessApp20ActivityDataProvider_wheelchairCache);
  v3 = self;
  [v2 removeObserver:v3];
  v4.receiver = v3;
  v4.super_class = type metadata accessor for ActivityDataProvider();
  [(ActivityDataProvider *)&v4 dealloc];
}

- (void)updateWidgets
{
  type metadata accessor for WidgetCenter();
  static WidgetCenter.shared.getter();
  dispatch thunk of WidgetCenter.reloadAllTimelines()();
}

- (_TtC10FitnessApp20ActivityDataProvider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)wheelchairUseCharacteristicCache:(id)a3 wheelchairUsageDidChange:(BOOL)a4
{
  v6 = a3;
  v7 = self;
  sub_1001FBAF8(a4);
}

@end