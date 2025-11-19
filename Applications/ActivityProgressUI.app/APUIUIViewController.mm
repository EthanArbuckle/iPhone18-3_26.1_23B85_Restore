@interface APUIUIViewController
- (_TtC18ActivityProgressUI20APUIUIViewController)initWithCoder:(id)a3;
- (_TtC18ActivityProgressUI20APUIUIViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)dealloc;
- (void)homeScreenService:(id)a3 homeScreenIconStyleConfigurationDidChange:(id)a4;
@end

@implementation APUIUIViewController

- (void)homeScreenService:(id)a3 homeScreenIconStyleConfigurationDidChange:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_10002C5A0(v7);
}

- (_TtC18ActivityProgressUI20APUIUIViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a4;
  return APUIUIViewController.init(nibName:bundle:)(v5, v7, a4);
}

- (_TtC18ActivityProgressUI20APUIUIViewController)initWithCoder:(id)a3
{
  v4 = OBJC_IVAR____TtC18ActivityProgressUI20APUIUIViewController_homeScreenService;
  *(&self->super.super.super.isa + v4) = [objc_allocWithZone(SBSHomeScreenService) init];
  *(&self->super.super.super.isa + OBJC_IVAR____TtC18ActivityProgressUI20APUIUIViewController_homeStyleObserver) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)dealloc
{
  v3 = *(&self->super.super.super.isa + OBJC_IVAR____TtC18ActivityProgressUI20APUIUIViewController_homeStyleObserver);
  v4 = self;
  if (v3)
  {
    [v3 invalidate];
  }

  v5.receiver = self;
  v5.super_class = type metadata accessor for APUIUIViewController();
  [(APUIUIViewController *)&v5 dealloc];
}

@end