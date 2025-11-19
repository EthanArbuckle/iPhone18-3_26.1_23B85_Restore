@interface D2DSetupBasePasscodeViewController
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation D2DSetupBasePasscodeViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_100012A88(v2, type metadata accessor for D2DSetupBasePasscodeViewController, &OBJC_IVAR____TtC18SharingViewService34D2DSetupBasePasscodeViewController_viewModel);
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_1000127D8(a3, v4, type metadata accessor for D2DSetupBasePasscodeViewController, &selRef_viewWillAppear_, "D2D Setup %@ viewWillAppear");
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4 = self;
  sub_1000127D8(a3, v4, type metadata accessor for D2DSetupBasePasscodeViewController, &selRef_viewDidDisappear_, "D2D Setup %@ viewDidDisappear");
}

@end