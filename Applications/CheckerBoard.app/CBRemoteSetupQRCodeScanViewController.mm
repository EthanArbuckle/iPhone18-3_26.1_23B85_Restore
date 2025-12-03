@interface CBRemoteSetupQRCodeScanViewController
- (CBRemoteSetupQRCodeScanViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon remoteSetupManager:(id)manager captureSession:(id)session;
- (void)setupView;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
@end

@implementation CBRemoteSetupQRCodeScanViewController

- (CBRemoteSetupQRCodeScanViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon remoteSetupManager:(id)manager captureSession:(id)session
{
  managerCopy = manager;
  sessionCopy = session;
  v18.receiver = self;
  v18.super_class = CBRemoteSetupQRCodeScanViewController;
  v15 = [(CBRemoteSetupQRCodeScanViewController *)&v18 initWithTitle:title detailText:text icon:icon];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_remoteSetupManager, manager);
    objc_storeStrong(&v16->_captureSession, session);
  }

  return v16;
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = CBRemoteSetupQRCodeScanViewController;
  [(CBRemoteSetupQRCodeScanViewController *)&v3 viewDidLoad];
  [(CBRemoteSetupQRCodeScanViewController *)self setupView];
}

- (void)viewDidAppear:(BOOL)appear
{
  v14.receiver = self;
  v14.super_class = CBRemoteSetupQRCodeScanViewController;
  [(CBRemoteSetupQRCodeScanViewController *)&v14 viewDidAppear:appear];
  previewView = [(CBRemoteSetupQRCodeScanViewController *)self previewView];
  [previewView frame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  capturePreviewLayer = [(CBRemoteSetupQRCodeScanViewController *)self capturePreviewLayer];
  [capturePreviewLayer setFrame:{v6, v8, v10, v12}];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v7.receiver = self;
  v7.super_class = CBRemoteSetupQRCodeScanViewController;
  [(CBRemoteSetupQRCodeScanViewController *)&v7 viewDidDisappear:disappear];
  remoteSetupManager = [(CBRemoteSetupQRCodeScanViewController *)self remoteSetupManager];
  setupState = [remoteSetupManager setupState];

  if (setupState == 3)
  {
    remoteSetupManager2 = [(CBRemoteSetupQRCodeScanViewController *)self remoteSetupManager];
    [remoteSetupManager2 restartRemoteSetupBroadcast];
  }
}

- (void)setupView
{
  view = [(CBRemoteSetupQRCodeScanViewController *)self view];
  [view setTranslatesAutoresizingMaskIntoConstraints:0];

  headerView = [(CBRemoteSetupQRCodeScanViewController *)self headerView];
  [headerView setTitleHyphenationFactor:0.0];

  v5 = objc_alloc_init(UIView);
  [(CBRemoteSetupQRCodeScanViewController *)self setContainerView:v5];

  containerView = [(CBRemoteSetupQRCodeScanViewController *)self containerView];
  [containerView setTranslatesAutoresizingMaskIntoConstraints:0];

  objc_initWeak(&location, self);
  containerView2 = [(CBRemoteSetupQRCodeScanViewController *)self containerView];
  v62[0] = _NSConcreteStackBlock;
  v62[1] = 3221225472;
  v62[2] = sub_10001C198;
  v62[3] = &unk_10007DDC8;
  objc_copyWeak(&v63, &location);
  [(CBRemoteSetupQRCodeScanViewController *)self addContentSubView:containerView2 heightConstraintForLayout:v62];

  v8 = [UIView alloc];
  containerView3 = [(CBRemoteSetupQRCodeScanViewController *)self containerView];
  [containerView3 frame];
  v10 = [v8 initWithFrame:?];
  [(CBRemoteSetupQRCodeScanViewController *)self setPreviewView:v10];

  previewView = [(CBRemoteSetupQRCodeScanViewController *)self previewView];
  [previewView setTranslatesAutoresizingMaskIntoConstraints:0];

  containerView4 = [(CBRemoteSetupQRCodeScanViewController *)self containerView];
  previewView2 = [(CBRemoteSetupQRCodeScanViewController *)self previewView];
  [containerView4 addSubview:previewView2];

  previewView3 = [(CBRemoteSetupQRCodeScanViewController *)self previewView];
  leadingAnchor = [previewView3 leadingAnchor];
  containerView5 = [(CBRemoteSetupQRCodeScanViewController *)self containerView];
  leadingAnchor2 = [containerView5 leadingAnchor];
  v57 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v65[0] = v57;
  previewView4 = [(CBRemoteSetupQRCodeScanViewController *)self previewView];
  trailingAnchor = [previewView4 trailingAnchor];
  containerView6 = [(CBRemoteSetupQRCodeScanViewController *)self containerView];
  trailingAnchor2 = [containerView6 trailingAnchor];
  v52 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v65[1] = v52;
  previewView5 = [(CBRemoteSetupQRCodeScanViewController *)self previewView];
  topAnchor = [previewView5 topAnchor];
  containerView7 = [(CBRemoteSetupQRCodeScanViewController *)self containerView];
  topAnchor2 = [containerView7 topAnchor];
  v47 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v65[2] = v47;
  previewView6 = [(CBRemoteSetupQRCodeScanViewController *)self previewView];
  bottomAnchor = [previewView6 bottomAnchor];
  view2 = [(CBRemoteSetupQRCodeScanViewController *)self view];
  bottomAnchor2 = [view2 bottomAnchor];
  v42 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:0.0];
  v65[3] = v42;
  previewView7 = [(CBRemoteSetupQRCodeScanViewController *)self previewView];
  centerXAnchor = [previewView7 centerXAnchor];
  containerView8 = [(CBRemoteSetupQRCodeScanViewController *)self containerView];
  centerXAnchor2 = [containerView8 centerXAnchor];
  v37 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v65[4] = v37;
  previewView8 = [(CBRemoteSetupQRCodeScanViewController *)self previewView];
  centerYAnchor = [previewView8 centerYAnchor];
  containerView9 = [(CBRemoteSetupQRCodeScanViewController *)self containerView];
  centerYAnchor2 = [containerView9 centerYAnchor];
  v32 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v65[5] = v32;
  previewView9 = [(CBRemoteSetupQRCodeScanViewController *)self previewView];
  widthAnchor = [previewView9 widthAnchor];
  view3 = [(CBRemoteSetupQRCodeScanViewController *)self view];
  widthAnchor2 = [view3 widthAnchor];
  v16 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
  v65[6] = v16;
  previewView10 = [(CBRemoteSetupQRCodeScanViewController *)self previewView];
  heightAnchor = [previewView10 heightAnchor];
  containerView10 = [(CBRemoteSetupQRCodeScanViewController *)self containerView];
  heightAnchor2 = [containerView10 heightAnchor];
  v21 = [heightAnchor constraintLessThanOrEqualToAnchor:heightAnchor2];
  v65[7] = v21;
  v22 = [NSArray arrayWithObjects:v65 count:8];
  [NSLayoutConstraint activateConstraints:v22];

  view4 = [(CBRemoteSetupQRCodeScanViewController *)self view];
  [view4 setNeedsLayout];

  v24 = [AVCaptureVideoPreviewLayer alloc];
  captureSession = [(CBRemoteSetupQRCodeScanViewController *)self captureSession];
  v26 = [v24 initWithSession:captureSession];

  [v26 setVideoGravity:kCAGravityResizeAspectFill];
  previewView11 = [(CBRemoteSetupQRCodeScanViewController *)self previewView];
  [previewView11 frame];
  [v26 setFrame:?];

  previewView12 = [(CBRemoteSetupQRCodeScanViewController *)self previewView];
  layer = [previewView12 layer];
  [layer addSublayer:v26];

  [(CBRemoteSetupQRCodeScanViewController *)self setCapturePreviewLayer:v26];
  objc_destroyWeak(&v63);
  objc_destroyWeak(&location);
}

@end