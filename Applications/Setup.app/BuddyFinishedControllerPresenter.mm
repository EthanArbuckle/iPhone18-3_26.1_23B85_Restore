@interface BuddyFinishedControllerPresenter
- (_TtC5Setup32BuddyFinishedControllerPresenter)init;
- (_TtC5Setup32BuddyFinishedControllerPresenter)initWithDeviceProvider:(id)provider animationData:(id)data;
- (void)animateToWelcomeScreen;
- (void)animationSnapshotResultReceived;
- (void)continueAnimation;
- (void)pauseAnimation;
@end

@implementation BuddyFinishedControllerPresenter

- (_TtC5Setup32BuddyFinishedControllerPresenter)initWithDeviceProvider:(id)provider animationData:(id)data
{
  swift_unknownObjectRetain();
  dataCopy = data;
  v7 = sub_100021878(provider, dataCopy);
  swift_unknownObjectRelease();

  return v7;
}

- (void)animateToWelcomeScreen
{
  selfCopy = self;
  sub_10001CD64();
}

- (void)animationSnapshotResultReceived
{
  v3 = OBJC_IVAR____TtC5Setup32BuddyFinishedControllerPresenter_fallbackWorkItem;
  if (*(&self->super.isa + OBJC_IVAR____TtC5Setup32BuddyFinishedControllerPresenter_fallbackWorkItem))
  {
    selfCopy = self;

    dispatch thunk of DispatchWorkItem.cancel()();
  }

  else
  {
    selfCopy2 = self;
  }

  *(&self->super.isa + v3) = 0;
}

- (void)continueAnimation
{
  selfCopy = self;
  sub_10001D59C();
}

- (void)pauseAnimation
{
  selfCopy = self;
  sub_10001D894();
}

- (_TtC5Setup32BuddyFinishedControllerPresenter)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end