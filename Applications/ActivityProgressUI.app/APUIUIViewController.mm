@interface APUIUIViewController
- (_TtC18ActivityProgressUI20APUIUIViewController)initWithCoder:(id)coder;
- (_TtC18ActivityProgressUI20APUIUIViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)dealloc;
- (void)homeScreenService:(id)service homeScreenIconStyleConfigurationDidChange:(id)change;
@end

@implementation APUIUIViewController

- (void)homeScreenService:(id)service homeScreenIconStyleConfigurationDidChange:(id)change
{
  serviceCopy = service;
  changeCopy = change;
  selfCopy = self;
  sub_10002C5A0(changeCopy);
}

- (_TtC18ActivityProgressUI20APUIUIViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  bundleCopy = bundle;
  return APUIUIViewController.init(nibName:bundle:)(v5, v7, bundle);
}

- (_TtC18ActivityProgressUI20APUIUIViewController)initWithCoder:(id)coder
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
  selfCopy = self;
  if (v3)
  {
    [v3 invalidate];
  }

  v5.receiver = self;
  v5.super_class = type metadata accessor for APUIUIViewController();
  [(APUIUIViewController *)&v5 dealloc];
}

@end