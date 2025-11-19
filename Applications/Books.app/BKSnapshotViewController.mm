@interface BKSnapshotViewController
- (BKSnapshotViewController)initWithViewController:(id)a3;
- (void)didReceiveMemoryWarning;
- (void)viewDidLoad;
@end

@implementation BKSnapshotViewController

- (BKSnapshotViewController)initWithViewController:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = BKSnapshotViewController;
  v5 = [(BKSnapshotViewController *)&v10 init];
  if (v5)
  {
    v6 = [v4 viewIfLoaded];
    v7 = [v6 snapshotViewAfterScreenUpdates:0];
    snapshotView = v5->_snapshotView;
    v5->_snapshotView = v7;

    v5->_statusBarStyle = [v4 preferredStatusBarStyle];
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