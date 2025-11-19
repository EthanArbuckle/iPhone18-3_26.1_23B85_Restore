@interface BuddyFinishedControllerPresenter
- (_TtC5Setup32BuddyFinishedControllerPresenter)init;
- (_TtC5Setup32BuddyFinishedControllerPresenter)initWithDeviceProvider:(id)a3 animationData:(id)a4;
- (void)animateToWelcomeScreen;
- (void)animationSnapshotResultReceived;
- (void)continueAnimation;
- (void)pauseAnimation;
@end

@implementation BuddyFinishedControllerPresenter

- (_TtC5Setup32BuddyFinishedControllerPresenter)initWithDeviceProvider:(id)a3 animationData:(id)a4
{
  swift_unknownObjectRetain();
  v6 = a4;
  v7 = sub_100021878(a3, v6);
  swift_unknownObjectRelease();

  return v7;
}

- (void)animateToWelcomeScreen
{
  v2 = self;
  sub_10001CD64();
}

- (void)animationSnapshotResultReceived
{
  v3 = OBJC_IVAR____TtC5Setup32BuddyFinishedControllerPresenter_fallbackWorkItem;
  if (*(&self->super.isa + OBJC_IVAR____TtC5Setup32BuddyFinishedControllerPresenter_fallbackWorkItem))
  {
    v4 = self;

    dispatch thunk of DispatchWorkItem.cancel()();
  }

  else
  {
    v5 = self;
  }

  *(&self->super.isa + v3) = 0;
}

- (void)continueAnimation
{
  v2 = self;
  sub_10001D59C();
}

- (void)pauseAnimation
{
  v2 = self;
  sub_10001D894();
}

- (_TtC5Setup32BuddyFinishedControllerPresenter)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end