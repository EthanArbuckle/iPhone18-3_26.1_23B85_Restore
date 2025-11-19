@interface WFSettingsKitViewController
- (WFSettingsKitViewController)init;
- (WFSettingsKitViewController)initWithCoder:(id)a3;
- (WFSettingsKitViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)handleURL:(id)a3;
- (void)loadView;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation WFSettingsKitViewController

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  WFSettingsKitViewController.viewWillAppear(_:)(a3);
}

- (void)loadView
{
  v2 = self;
  WFSettingsKitViewController.loadView()();
}

- (WFSettingsKitViewController)init
{
  *&self->PSViewController_opaque[OBJC_IVAR___WFSettingsKitViewController_hostingController] = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for WFSettingsKitViewController();
  return [(WFSettingsKitViewController *)&v3 initWithNibName:0 bundle:0];
}

- (WFSettingsKitViewController)initWithCoder:(id)a3
{
  *&self->PSViewController_opaque[OBJC_IVAR___WFSettingsKitViewController_hostingController] = 0;
  result = sub_7CE0();
  __break(1u);
  return result;
}

- (void)handleURL:(id)a3
{
  v4 = sub_7B60();
  v5 = self;
  WFSettingsKitViewController.handleURLDict(_:)(v4);
}

- (WFSettingsKitViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end