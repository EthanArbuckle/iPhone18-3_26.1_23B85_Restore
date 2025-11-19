@interface DataScannerViewController
- (void)dealloc;
- (void)didEnterBackground;
- (void)loadView;
- (void)onPinch:(id)a3;
- (void)onTap:(id)a3;
- (void)removeFromParentViewController;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)willEnterForeground;
@end

@implementation DataScannerViewController

- (void)dealloc
{
  v3 = objc_opt_self();
  v4 = self;
  v5 = [v3 defaultCenter];
  [v5 removeObserver_];

  v6.receiver = v4;
  v6.super_class = type metadata accessor for DataScannerViewController();
  [(DataScannerViewController *)&v6 dealloc];
}

- (void)didEnterBackground
{
  v3 = OBJC_IVAR____TtC9VisionKit25DataScannerViewController_frameProvider;
  v4 = *(&self->super.super.super.isa + OBJC_IVAR____TtC9VisionKit25DataScannerViewController_frameProvider);
  v6 = self;
  v5 = [v4 isProcessing];
  *(&v6->super.super.super.isa + OBJC_IVAR____TtC9VisionKit25DataScannerViewController_shouldResumeProcessingOnEnterForeground) = v5;
  [*(&self->super.super.super.isa + v3) stopRunning];
}

- (void)willEnterForeground
{
  v3 = OBJC_IVAR____TtC9VisionKit25DataScannerViewController_frameProvider;
  v4 = *(&self->super.super.super.isa + OBJC_IVAR____TtC9VisionKit25DataScannerViewController_frameProvider);
  v5 = self;
  [v4 startRunning];
  if (*(&v5->super.super.super.isa + OBJC_IVAR____TtC9VisionKit25DataScannerViewController_shouldResumeProcessingOnEnterForeground) == 1)
  {
    [*(&self->super.super.super.isa + v3) startProcessing];
  }
}

- (void)loadView
{
  v2 = self;
  sub_23B2E4E74();
}

- (void)viewDidLoad
{
  v2 = self;
  sub_23B2E5254();
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_23B2E5554(a3);
}

- (void)removeFromParentViewController
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for DataScannerViewController();
  v2 = v3.receiver;
  [(DataScannerViewController *)&v3 removeFromParentViewController];
  sub_23B2E6E38();
  [*&v2[OBJC_IVAR____TtC9VisionKit25DataScannerViewController_frameProvider] stopRunning];
}

- (void)onTap:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_23B2E5F90(v4);
}

- (void)onPinch:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_23B2E6560(v4);
}

@end