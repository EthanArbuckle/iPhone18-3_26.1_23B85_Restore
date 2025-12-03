@interface CosmeticAssessmentWatermarkScanViewController
- (_TtC11Diagnostics45CosmeticAssessmentWatermarkScanViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)loadView;
- (void)updateWatermarkPayload;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation CosmeticAssessmentWatermarkScanViewController

- (void)loadView
{
  selfCopy = self;
  sub_1000E39C4();
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1000E3B04();
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_1000E4064(appear);
}

- (void)viewWillDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_1000E42B4(disappear);
}

- (void)updateWatermarkPayload
{
  selfCopy = self;
  sub_1000E48C4();
  v3 = *(&selfCopy->super.super.super.isa + OBJC_IVAR____TtC11Diagnostics45CosmeticAssessmentWatermarkScanViewController_watermarkPresenterView);
  v4 = String._bridgeToObjectiveC()();

  [v3 setVerificationCode:v4];
}

- (_TtC11Diagnostics45CosmeticAssessmentWatermarkScanViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end