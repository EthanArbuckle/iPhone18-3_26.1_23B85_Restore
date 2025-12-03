@interface AESnapshotViewController
- (AESnapshotViewController)initWithViewController:(id)controller;
- (void)loadView;
@end

@implementation AESnapshotViewController

- (void)loadView
{
  _snapshotView = [(AESnapshotViewController *)self _snapshotView];
  [(AESnapshotViewController *)self setView:_snapshotView];
}

- (AESnapshotViewController)initWithViewController:(id)controller
{
  controllerCopy = controller;
  v11.receiver = self;
  v11.super_class = AESnapshotViewController;
  v5 = [(AESnapshotViewController *)&v11 initWithNibName:0 bundle:0];
  if (v5)
  {
    view = [controllerCopy view];
    v7 = [view snapshotViewAfterScreenUpdates:0];
    snapshotView = v5->__snapshotView;
    v5->__snapshotView = v7;

    v9 = v5;
  }

  return v5;
}

@end