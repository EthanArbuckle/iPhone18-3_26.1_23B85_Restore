@interface SleepRoomDataProvider
- (_TtC20SleepHealthAppPlugin21SleepRoomDataProvider)init;
- (void)dealloc;
- (void)featureAvailabilityProvidingDidUpdateOnboardingCompletion:(id)completion;
- (void)sleepStore:(id)store sleepFocusConfigurationDidUpdate:(id)update;
@end

@implementation SleepRoomDataProvider

- (void)dealloc
{
  v3 = *(&self->super.isa + OBJC_IVAR____TtC20SleepHealthAppPlugin21SleepRoomDataProvider_featureAvailability);
  if (v3)
  {
    [v3 unregisterObserver_];
  }

  else
  {
    selfCopy = self;
  }

  v5 = *(&self->super.isa + OBJC_IVAR____TtC20SleepHealthAppPlugin21SleepRoomDataProvider_sleepStore);
  if (v5)
  {
    [v5 removeObserver_];
  }

  v6.receiver = self;
  v6.super_class = type metadata accessor for SleepRoomDataProvider();
  [(SleepRoomDataProvider *)&v6 dealloc];
}

- (_TtC20SleepHealthAppPlugin21SleepRoomDataProvider)init
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)featureAvailabilityProvidingDidUpdateOnboardingCompletion:(id)completion
{
  ObjectType = swift_getObjectType();
  sub_29E7544C8();
  v6[2] = self;
  v6[3] = ObjectType;
  selfCopy = self;
  sub_29E607C50(sub_29E6CB724, v6);
}

- (void)sleepStore:(id)store sleepFocusConfigurationDidUpdate:(id)update
{
  ObjectType = swift_getObjectType();
  sub_29E7544C8();
  v7[2] = self;
  v7[3] = ObjectType;
  selfCopy = self;
  sub_29E607C50(sub_29E6CB6FC, v7);
}

@end