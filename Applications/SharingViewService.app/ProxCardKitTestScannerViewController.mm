@interface ProxCardKitTestScannerViewController
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation ProxCardKitTestScannerViewController

- (void)viewDidAppear:(BOOL)a3
{
  v3.receiver = self;
  v3.super_class = ProxCardKitTestScannerViewController;
  [(ProxCardKitTestScannerViewController *)&v3 viewDidAppear:a3];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = ProxCardKitTestScannerViewController;
  [(ProxCardKitTestScannerViewController *)&v5 viewDidDisappear:a3];
  v4 = [(ProxCardKitTestScannerViewController *)self scannerEngine];
  [v4 stop];
}

- (void)viewWillAppear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = ProxCardKitTestScannerViewController;
  [(ProxCardKitTestScannerViewController *)&v5 viewWillAppear:a3];
  v4 = [(ProxCardKitTestScannerViewController *)self scannerEngine];
  [v4 start];
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