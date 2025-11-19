@interface CosmeticAssessmentWatermarkScanViewController
- (_TtC11Diagnostics45CosmeticAssessmentWatermarkScanViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)loadView;
- (void)updateWatermarkPayload;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation CosmeticAssessmentWatermarkScanViewController

- (void)loadView
{
  v2 = self;
  sub_1000E39C4();
}

- (void)viewDidLoad
{
  v2 = self;
  sub_1000E3B04();
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  sub_1000E4064(a3);
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4 = self;
  sub_1000E42B4(a3);
}

- (void)updateWatermarkPayload
{
  v2 = self;
  sub_1000E48C4();
  v3 = *(&v2->super.super.super.isa + OBJC_IVAR____TtC11Diagnostics45CosmeticAssessmentWatermarkScanViewController_watermarkPresenterView);
  v4 = String._bridgeToObjectiveC()();

  [v3 setVerificationCode:v4];
}

- (_TtC11Diagnostics45CosmeticAssessmentWatermarkScanViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end