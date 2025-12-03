@interface ProxCardKitTestScannerViewController
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation ProxCardKitTestScannerViewController

- (void)viewDidAppear:(BOOL)appear
{
  v3.receiver = self;
  v3.super_class = ProxCardKitTestScannerViewController;
  [(ProxCardKitTestScannerViewController *)&v3 viewDidAppear:appear];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = ProxCardKitTestScannerViewController;
  [(ProxCardKitTestScannerViewController *)&v5 viewDidDisappear:disappear];
  scannerEngine = [(ProxCardKitTestScannerViewController *)self scannerEngine];
  [scannerEngine stop];
}

- (void)viewWillAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = ProxCardKitTestScannerViewController;
  [(ProxCardKitTestScannerViewController *)&v5 viewWillAppear:appear];
  scannerEngine = [(ProxCardKitTestScannerViewController *)self scannerEngine];
  [scannerEngine start];
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = ProxCardKitTestScannerViewController;
  [(ProxCardKitTestScannerViewController *)&v6 viewDidLoad];
  [(ProxCardKitTestScannerViewController *)self setTitle:@"Wait a Few Seconds"];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100119AF0;
  v5[3] = &unk_1001952B0;
  v5[4] = self;
  v3 = [PRXAction actionWithTitle:@"Next" style:1 handler:v5];
  v4 = [(ProxCardKitTestScannerViewController *)self addAction:v3];
}

@end