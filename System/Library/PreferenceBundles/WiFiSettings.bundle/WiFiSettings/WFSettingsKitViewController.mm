@interface WFSettingsKitViewController
- (WFSettingsKitViewController)init;
- (WFSettingsKitViewController)initWithCoder:(id)coder;
- (WFSettingsKitViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)handleURL:(id)l;
- (void)loadView;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation WFSettingsKitViewController

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  WFSettingsKitViewController.viewWillAppear(_:)(appear);
}

- (void)loadView
{
  selfCopy = self;
  WFSettingsKitViewController.loadView()();
}

- (WFSettingsKitViewController)init
{
  *&self->PSViewController_opaque[OBJC_IVAR___WFSettingsKitViewController_hostingController] = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for WFSettingsKitViewController();
  return [(WFSettingsKitViewController *)&v3 initWithNibName:0 bundle:0];
}

- (WFSettingsKitViewController)initWithCoder:(id)coder
{
  *&self->PSViewController_opaque[OBJC_IVAR___WFSettingsKitViewController_hostingController] = 0;
  result = sub_7CE0();
  __break(1u);
  return result;
}

- (void)handleURL:(id)l
{
  v4 = sub_7B60();
  selfCopy = self;
  WFSettingsKitViewController.handleURLDict(_:)(v4);
}

- (WFSettingsKitViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end