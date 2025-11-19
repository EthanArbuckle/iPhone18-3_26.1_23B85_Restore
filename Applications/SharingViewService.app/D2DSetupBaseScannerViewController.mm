@interface D2DSetupBaseScannerViewController
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation D2DSetupBaseScannerViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_100012A88(0, type metadata accessor for D2DSetupBaseScannerViewController, &OBJC_IVAR____TtC18SharingViewService33D2DSetupBaseScannerViewController_viewModel);
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_1000127D8(a3, 0, type metadata accessor for D2DSetupBaseScannerViewController, &selRef_viewWillAppear_, "D2D Setup %@ viewWillAppear");
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4 = self;
  sub_1000127D8(a3, 0, type metadata accessor for D2DSetupBaseScannerViewController, &selRef_viewDidDisappear_, "D2D Setup %@ viewDidDisappear");
}

@end