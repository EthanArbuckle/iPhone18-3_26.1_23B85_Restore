@interface ActivityDataProvider
- (_TtC10FitnessApp20ActivityDataProvider)init;
- (void)dealloc;
- (void)setHealthStore:(id)store;
- (void)setWorkoutDataProvider:(id)provider;
- (void)updateWidgets;
- (void)wheelchairUseCharacteristicCache:(id)cache wheelchairUsageDidChange:(BOOL)change;
@end

@implementation ActivityDataProvider

- (void)setHealthStore:(id)store
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC10FitnessApp20ActivityDataProvider_healthStore);
  *(&self->super.isa + OBJC_IVAR____TtC10FitnessApp20ActivityDataProvider_healthStore) = store;
  storeCopy = store;
}

- (void)setWorkoutDataProvider:(id)provider
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC10FitnessApp20ActivityDataProvider_workoutDataProvider);
  *(&self->super.isa + OBJC_IVAR____TtC10FitnessApp20ActivityDataProvider_workoutDataProvider) = provider;
  providerCopy = provider;
}

- (void)dealloc
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC10FitnessApp20ActivityDataProvider_wheelchairCache);
  selfCopy = self;
  [v2 removeObserver:selfCopy];
  v4.receiver = selfCopy;
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

- (void)wheelchairUseCharacteristicCache:(id)cache wheelchairUsageDidChange:(BOOL)change
{
  cacheCopy = cache;
  selfCopy = self;
  sub_1001FBAF8(change);
}

@end