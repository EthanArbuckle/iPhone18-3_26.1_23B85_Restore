@interface D2DSetupBaseViewController
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation D2DSetupBaseViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_100012A88(v2, type metadata accessor for D2DSetupBaseViewController, &OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel);
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_1000127D8(a3, v4, type metadata accessor for D2DSetupBaseViewController, &selRef_viewWillAppear_, "D2D Setup %@ viewWillAppear");
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4 = self;
  sub_1000127D8(a3, v4, type metadata accessor for D2DSetupBaseViewController, &selRef_viewDidDisappear_, "D2D Setup %@ viewDidDisappear");
}

@end