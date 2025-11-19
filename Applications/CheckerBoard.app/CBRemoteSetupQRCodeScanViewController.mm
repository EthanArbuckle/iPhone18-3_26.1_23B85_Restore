@interface CBRemoteSetupQRCodeScanViewController
- (CBRemoteSetupQRCodeScanViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 remoteSetupManager:(id)a6 captureSession:(id)a7;
- (void)setupView;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation CBRemoteSetupQRCodeScanViewController

- (CBRemoteSetupQRCodeScanViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 remoteSetupManager:(id)a6 captureSession:(id)a7
{
  v13 = a6;
  v14 = a7;
  v18.receiver = self;
  v18.super_class = CBRemoteSetupQRCodeScanViewController;
  v15 = [(CBRemoteSetupQRCodeScanViewController *)&v18 initWithTitle:a3 detailText:a4 icon:a5];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_remoteSetupManager, a6);
    objc_storeStrong(&v16->_captureSession, a7);
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

- (void)viewDidAppear:(BOOL)a3
{
  v14.receiver = self;
  v14.super_class = CBRemoteSetupQRCodeScanViewController;
  [(CBRemoteSetupQRCodeScanViewController *)&v14 viewDidAppear:a3];
  v4 = [(CBRemoteSetupQRCodeScanViewController *)self previewView];
  [v4 frame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = [(CBRemoteSetupQRCodeScanViewController *)self capturePreviewLayer];
  [v13 setFrame:{v6, v8, v10, v12}];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v7.receiver = self;
  v7.super_class = CBRemoteSetupQRCodeScanViewController;
  [(CBRemoteSetupQRCodeScanViewController *)&v7 viewDidDisappear:a3];
  v4 = [(CBRemoteSetupQRCodeScanViewController *)self remoteSetupManager];
  v5 = [v4 setupState];

  if (v5 == 3)
  {
    v6 = [(CBRemoteSetupQRCodeScanViewController *)self remoteSetupManager];
    [v6 restartRemoteSetupBroadcast];
  }
}

- (void)setupView
{
  v3 = [(CBRemoteSetupQRCodeScanViewController *)self view];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];

  v4 = [(CBRemoteSetupQRCodeScanViewController *)self headerView];
  [v4 setTitleHyphenationFactor:0.0];

  v5 = objc_alloc_init(UIView);
  [(CBRemoteSetupQRCodeScanViewController *)self setContainerView:v5];

  v6 = [(CBRemoteSetupQRCodeScanViewController *)self containerView];
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];

  objc_initWeak(&location, self);
  v7 = [(CBRemoteSetupQRCodeScanViewController *)self containerView];
  v62[0] = _NSConcreteStackBlock;
  v62[1] = 3221225472;
  v62[2] = sub_10001C198;
  v62[3] = &unk_10007DDC8;
  objc_copyWeak(&v63, &location);
  [(CBRemoteSetupQRCodeScanViewController *)self addContentSubView:v7 heightConstraintForLayout:v62];

  v8 = [UIView alloc];
  v9 = [(CBRemoteSetupQRCodeScanViewController *)self containerView];
  [v9 frame];
  v10 = [v8 initWithFrame:?];
  [(CBRemoteSetupQRCodeScanViewController *)self setPreviewView:v10];

  v11 = [(CBRemoteSetupQRCodeScanViewController *)self previewView];
  [v11 setTranslatesAutoresizingMaskIntoConstraints:0];

  v12 = [(CBRemoteSetupQRCodeScanViewController *)self containerView];
  v13 = [(CBRemoteSetupQRCodeScanViewController *)self previewView];
  [v12 addSubview:v13];

  v61 = [(CBRemoteSetupQRCodeScanViewController *)self previewView];
  v59 = [v61 leadingAnchor];
  v60 = [(CBRemoteSetupQRCodeScanViewController *)self containerView];
  v58 = [v60 leadingAnchor];
  v57 = [v59 constraintEqualToAnchor:v58];
  v65[0] = v57;
  v56 = [(CBRemoteSetupQRCodeScanViewController *)self previewView];
  v54 = [v56 trailingAnchor];
  v55 = [(CBRemoteSetupQRCodeScanViewController *)self containerView];
  v53 = [v55 trailingAnchor];
  v52 = [v54 constraintEqualToAnchor:v53];
  v65[1] = v52;
  v51 = [(CBRemoteSetupQRCodeScanViewController *)self previewView];
  v49 = [v51 topAnchor];
  v50 = [(CBRemoteSetupQRCodeScanViewController *)self containerView];
  v48 = [v50 topAnchor];
  v47 = [v49 constraintEqualToAnchor:v48];
  v65[2] = v47;
  v46 = [(CBRemoteSetupQRCodeScanViewController *)self previewView];
  v44 = [v46 bottomAnchor];
  v45 = [(CBRemoteSetupQRCodeScanViewController *)self view];
  v43 = [v45 bottomAnchor];
  v42 = [v44 constraintEqualToAnchor:v43 constant:0.0];
  v65[3] = v42;
  v41 = [(CBRemoteSetupQRCodeScanViewController *)self previewView];
  v39 = [v41 centerXAnchor];
  v40 = [(CBRemoteSetupQRCodeScanViewController *)self containerView];
  v38 = [v40 centerXAnchor];
  v37 = [v39 constraintEqualToAnchor:v38];
  v65[4] = v37;
  v36 = [(CBRemoteSetupQRCodeScanViewController *)self previewView];
  v34 = [v36 centerYAnchor];
  v35 = [(CBRemoteSetupQRCodeScanViewController *)self containerView];
  v33 = [v35 centerYAnchor];
  v32 = [v34 constraintEqualToAnchor:v33];
  v65[5] = v32;
  v31 = [(CBRemoteSetupQRCodeScanViewController *)self previewView];
  v30 = [v31 widthAnchor];
  v14 = [(CBRemoteSetupQRCodeScanViewController *)self view];
  v15 = [v14 widthAnchor];
  v16 = [v30 constraintEqualToAnchor:v15];
  v65[6] = v16;
  v17 = [(CBRemoteSetupQRCodeScanViewController *)self previewView];
  v18 = [v17 heightAnchor];
  v19 = [(CBRemoteSetupQRCodeScanViewController *)self containerView];
  v20 = [v19 heightAnchor];
  v21 = [v18 constraintLessThanOrEqualToAnchor:v20];
  v65[7] = v21;
  v22 = [NSArray arrayWithObjects:v65 count:8];
  [NSLayoutConstraint activateConstraints:v22];

  v23 = [(CBRemoteSetupQRCodeScanViewController *)self view];
  [v23 setNeedsLayout];

  v24 = [AVCaptureVideoPreviewLayer alloc];
  v25 = [(CBRemoteSetupQRCodeScanViewController *)self captureSession];
  v26 = [v24 initWithSession:v25];

  [v26 setVideoGravity:kCAGravityResizeAspectFill];
  v27 = [(CBRemoteSetupQRCodeScanViewController *)self previewView];
  [v27 frame];
  [v26 setFrame:?];

  v28 = [(CBRemoteSetupQRCodeScanViewController *)self previewView];
  v29 = [v28 layer];
  [v29 addSublayer:v26];

  [(CBRemoteSetupQRCodeScanViewController *)self setCapturePreviewLayer:v26];
  objc_destroyWeak(&v63);
  objc_destroyWeak(&location);
}

@end