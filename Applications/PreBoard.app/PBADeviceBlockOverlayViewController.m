@interface PBADeviceBlockOverlayViewController
- (PBADeviceBlockOverlayViewController)initWithBlockStatusProvider:(id)a3;
- (PBADeviceBlockOverlayViewControllerDelegate)delegate;
- (void)dealloc;
- (void)loadView;
@end

@implementation PBADeviceBlockOverlayViewController

- (PBADeviceBlockOverlayViewController)initWithBlockStatusProvider:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = PBADeviceBlockOverlayViewController;
  v5 = [(PBADeviceBlockOverlayViewController *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(PBADeviceBlockOverlayViewController *)v5 setBlockStatusProvider:v4];
  }

  return v6;
}

- (void)dealloc
{
  [(SBFDeviceBlockTimer *)self->_blockTimer invalidate];
  v3.receiver = self;
  v3.super_class = PBADeviceBlockOverlayViewController;
  [(PBADeviceBlockOverlayViewController *)&v3 dealloc];
}

- (void)loadView
{
  v3 = [[SBFDeviceBlockTimer alloc] initWithDeviceBlockStatusProvider:self->_blockStatusProvider];
  blockTimer = self->_blockTimer;
  self->_blockTimer = v3;

  objc_initWeak(&location, self);
  v5 = self->_blockTimer;
  v12 = _NSConcreteStackBlock;
  v13 = 3221225472;
  v14 = sub_1000086B0;
  v15 = &unk_10001C978;
  objc_copyWeak(&v16, &location);
  [(SBFDeviceBlockTimer *)v5 setHandler:&v12];
  v6 = [SBUILockOverlayView alloc];
  v7 = [UIScreen mainScreen:v12];
  [v7 _referenceBounds];
  v8 = [v6 initWithFrame:4 style:?];

  v9 = [v8 titleLabel];
  v10 = [(SBFDeviceBlockTimer *)self->_blockTimer titleText];
  [v9 setText:v10];

  v11 = +[UIColor blackColor];
  [v8 setBackgroundColor:v11];

  [(PBADeviceBlockOverlayViewController *)self setView:v8];
  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

- (PBADeviceBlockOverlayViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end