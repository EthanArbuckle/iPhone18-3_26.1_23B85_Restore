@interface BKSnapshotViewController
- (BKSnapshotViewController)initWithViewController:(id)controller;
- (void)didReceiveMemoryWarning;
- (void)viewDidLoad;
@end

@implementation BKSnapshotViewController

- (BKSnapshotViewController)initWithViewController:(id)controller
{
  controllerCopy = controller;
  v10.receiver = self;
  v10.super_class = BKSnapshotViewController;
  v5 = [(BKSnapshotViewController *)&v10 init];
  if (v5)
  {
    viewIfLoaded = [controllerCopy viewIfLoaded];
    v7 = [viewIfLoaded snapshotViewAfterScreenUpdates:0];
    snapshotView = v5->_snapshotView;
    v5->_snapshotView = v7;

    v5->_statusBarStyle = [controllerCopy preferredStatusBarStyle];
  }

  return v5;
}

- (void)viewDidLoad
{
  v2.receiver = self;
  v2.super_class = BKSnapshotViewController;
  [(BKSnapshotViewController *)&v2 viewDidLoad];
}

- (void)didReceiveMemoryWarning
{
  v2.receiver = self;
  v2.super_class = BKSnapshotViewController;
  [(BKSnapshotViewController *)&v2 didReceiveMemoryWarning];
}

@end