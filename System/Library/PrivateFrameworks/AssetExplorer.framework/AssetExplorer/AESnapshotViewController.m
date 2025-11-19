@interface AESnapshotViewController
- (AESnapshotViewController)initWithViewController:(id)a3;
- (void)loadView;
@end

@implementation AESnapshotViewController

- (void)loadView
{
  v3 = [(AESnapshotViewController *)self _snapshotView];
  [(AESnapshotViewController *)self setView:v3];
}

- (AESnapshotViewController)initWithViewController:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = AESnapshotViewController;
  v5 = [(AESnapshotViewController *)&v11 initWithNibName:0 bundle:0];
  if (v5)
  {
    v6 = [v4 view];
    v7 = [v6 snapshotViewAfterScreenUpdates:0];
    snapshotView = v5->__snapshotView;
    v5->__snapshotView = v7;

    v9 = v5;
  }

  return v5;
}

@end