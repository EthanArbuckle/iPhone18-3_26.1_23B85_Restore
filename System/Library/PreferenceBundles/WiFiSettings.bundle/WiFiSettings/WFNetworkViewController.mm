@interface WFNetworkViewController
- (WFNetworkListRecord)currentNetwork;
- (_TtC12WiFiSettingsP33_511C3BED488214802509FE4ACFB1080023WFNetworkViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)setCurrentNetwork:(id)a3;
@end

@implementation WFNetworkViewController

- (WFNetworkListRecord)currentNetwork
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtC12WiFiSettingsP33_511C3BED488214802509FE4ACFB1080023WFNetworkViewController_currentNetwork);
  v3 = swift_unknownObjectRetain();

  return v3;
}

- (void)setCurrentNetwork:(id)a3
{
  v3 = *(&self->super.super.super.isa + OBJC_IVAR____TtC12WiFiSettingsP33_511C3BED488214802509FE4ACFB1080023WFNetworkViewController_currentNetwork);
  *(&self->super.super.super.isa + OBJC_IVAR____TtC12WiFiSettingsP33_511C3BED488214802509FE4ACFB1080023WFNetworkViewController_currentNetwork) = a3;
  swift_unknownObjectRetain();

  _swift_unknownObjectRelease(v3, v4);
}

- (_TtC12WiFiSettingsP33_511C3BED488214802509FE4ACFB1080023WFNetworkViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    v5 = sub_7B90();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a4;
  return sub_75F0(v5, v7, a4);
}

@end