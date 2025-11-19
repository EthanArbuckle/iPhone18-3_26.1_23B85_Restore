@interface BannerBaseViewController
- (NSString)requestIdentifier;
- (NSString)requesterIdentifier;
- (_TtC13MediaRemoteUI24BannerBaseViewController)initWithCoder:(id)a3;
- (_TtC13MediaRemoteUI24BannerBaseViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)presentableDidAppearAsBanner:(id)a3;
- (void)viewDidLoad;
@end

@implementation BannerBaseViewController

- (NSString)requesterIdentifier
{

  v2 = String._bridgeToObjectiveC()();

  return v2;
}

- (NSString)requestIdentifier
{
  v2 = *(self + OBJC_IVAR____TtC13MediaRemoteUI24BannerBaseViewController_configuration);
  v3 = self;
  v4 = [v2 requestIdentifier];
  if (!v4)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v4 = String._bridgeToObjectiveC()();
  }

  return v4;
}

- (_TtC13MediaRemoteUI24BannerBaseViewController)initWithCoder:(id)a3
{
  *(self + OBJC_IVAR____TtC13MediaRemoteUI24BannerBaseViewController_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v4 = (self + OBJC_IVAR____TtC13MediaRemoteUI24BannerBaseViewController_requesterIdentifier);
  *v4 = 0xD000000000000017;
  v4[1] = 0x800000010004B7A0;
  *(self + OBJC_IVAR____TtC13MediaRemoteUI24BannerBaseViewController_sendTapEventForAnyTapInsideView) = 1;
  v5 = self + OBJC_IVAR____TtC13MediaRemoteUI24BannerBaseViewController_idleTimerDuration;
  *v5 = 0;
  v5[8] = 1;
  *(self + OBJC_IVAR____TtC13MediaRemoteUI24BannerBaseViewController_idleTimer) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_1000297F0();
}

- (void)presentableDidAppearAsBanner:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  sub_100029C84();
  swift_unknownObjectRelease();
}

- (_TtC13MediaRemoteUI24BannerBaseViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end