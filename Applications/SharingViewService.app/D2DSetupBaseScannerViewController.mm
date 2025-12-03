@interface D2DSetupBaseScannerViewController
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation D2DSetupBaseScannerViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_100012A88(0, type metadata accessor for D2DSetupBaseScannerViewController, &OBJC_IVAR____TtC18SharingViewService33D2DSetupBaseScannerViewController_viewModel);
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_1000127D8(appear, 0, type metadata accessor for D2DSetupBaseScannerViewController, &selRef_viewWillAppear_, "D2D Setup %@ viewWillAppear");
}

- (void)viewDidDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_1000127D8(disappear, 0, type metadata accessor for D2DSetupBaseScannerViewController, &selRef_viewDidDisappear_, "D2D Setup %@ viewDidDisappear");
}

@end