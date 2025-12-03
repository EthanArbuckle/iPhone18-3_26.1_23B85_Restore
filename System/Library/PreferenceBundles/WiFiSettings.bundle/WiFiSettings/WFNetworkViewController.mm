@interface WFNetworkViewController
- (WFNetworkListRecord)currentNetwork;
- (_TtC12WiFiSettingsP33_511C3BED488214802509FE4ACFB1080023WFNetworkViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)setCurrentNetwork:(id)network;
@end

@implementation WFNetworkViewController

- (WFNetworkListRecord)currentNetwork
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtC12WiFiSettingsP33_511C3BED488214802509FE4ACFB1080023WFNetworkViewController_currentNetwork);
  v3 = swift_unknownObjectRetain();

  return v3;
}

- (void)setCurrentNetwork:(id)network
{
  v3 = *(&self->super.super.super.isa + OBJC_IVAR____TtC12WiFiSettingsP33_511C3BED488214802509FE4ACFB1080023WFNetworkViewController_currentNetwork);
  *(&self->super.super.super.isa + OBJC_IVAR____TtC12WiFiSettingsP33_511C3BED488214802509FE4ACFB1080023WFNetworkViewController_currentNetwork) = network;
  swift_unknownObjectRetain();

  _swift_unknownObjectRelease(v3, v4);
}

- (_TtC12WiFiSettingsP33_511C3BED488214802509FE4ACFB1080023WFNetworkViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v5 = sub_7B90();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  bundleCopy = bundle;
  return sub_75F0(v5, v7, bundle);
}

@end