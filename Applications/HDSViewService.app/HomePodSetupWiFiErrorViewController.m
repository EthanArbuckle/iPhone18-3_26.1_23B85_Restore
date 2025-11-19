@interface HomePodSetupWiFiErrorViewController
- (_TtC14HDSViewService35HomePodSetupWiFiErrorViewController)initWithContentView:(id)a3;
- (void)viewDidLoad;
@end

@implementation HomePodSetupWiFiErrorViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_1000498BC();
}

- (_TtC14HDSViewService35HomePodSetupWiFiErrorViewController)initWithContentView:(id)a3
{
  *&self->super.PRXCardContentViewController_opaque[OBJC_IVAR____TtC14HDSViewService35HomePodSetupWiFiErrorViewController____lazy_storage___infoTableView] = 0;
  self->super.PRXCardContentViewController_opaque[OBJC_IVAR____TtC14HDSViewService35HomePodSetupWiFiErrorViewController_showInfo] = 0;
  v5.receiver = self;
  v5.super_class = type metadata accessor for HomePodSetupWiFiErrorViewController();
  return [(HomePodSetupIconContentViewController *)&v5 initWithContentView:a3];
}

@end