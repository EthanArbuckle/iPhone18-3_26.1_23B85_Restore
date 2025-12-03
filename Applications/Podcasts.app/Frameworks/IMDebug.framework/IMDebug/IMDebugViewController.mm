@interface IMDebugViewController
- (void)dismiss;
- (void)gatherData;
- (void)setScreenShotImage:(id)image;
- (void)shareData;
- (void)viewDidLoad;
@end

@implementation IMDebugViewController

- (void)viewDidLoad
{
  v65.receiver = self;
  v65.super_class = IMDebugViewController;
  [(IMDebugViewController *)&v65 viewDidLoad];
  navigationItem = [(IMDebugViewController *)self navigationItem];
  [navigationItem setTitle:@"Debug"];

  v4 = +[UIColor systemBackgroundColor];
  view = [(IMDebugViewController *)self view];
  [view setBackgroundColor:v4];

  v56 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:0 target:self action:"dismiss"];
  navigationItem2 = [(IMDebugViewController *)self navigationItem];
  [navigationItem2 setLeftBarButtonItem:v56];

  v61 = objc_alloc_init(UIStackView);
  [v61 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v61 setAxis:1];
  [v61 setSpacing:8.0];
  v7 = +[UIColor clearColor];
  [v61 setBackgroundColor:v7];

  view2 = [(IMDebugViewController *)self view];
  [view2 addSubview:v61];

  [(IMDebugViewController *)self setStackView:v61];
  v9 = [UIImageView alloc];
  screenShotPreviewImage = [(IMDebugViewController *)self screenShotPreviewImage];
  v57 = [v9 initWithImage:screenShotPreviewImage];

  [v57 setContentMode:1];
  LODWORD(v11) = 1132068864;
  [v57 setContentCompressionResistancePriority:1 forAxis:v11];
  [v57 setTranslatesAutoresizingMaskIntoConstraints:0];
  stackView = [(IMDebugViewController *)self stackView];
  [stackView addArrangedSubview:v57];

  [(IMDebugViewController *)self setScreenShotImageView:v57];
  v60 = objc_alloc_init(UIView);
  LODWORD(v13) = 1148846080;
  [v60 setContentCompressionResistancePriority:1 forAxis:v13];
  [v60 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v60 setHidden:1];
  v58 = [[UIProgressView alloc] initWithProgressViewStyle:0];
  LODWORD(v14) = 1148846080;
  [v58 setContentCompressionResistancePriority:1 forAxis:v14];
  [v58 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v60 addSubview:v58];
  stackView2 = [(IMDebugViewController *)self stackView];
  [stackView2 addArrangedSubview:v60];

  [(IMDebugViewController *)self setProgressView:v58];
  [(IMDebugViewController *)self setProgressViewContainer:v60];
  objc_initWeak(&location, self);
  v62[0] = _NSConcreteStackBlock;
  v62[1] = 3221225472;
  v62[2] = __36__IMDebugViewController_viewDidLoad__block_invoke;
  v62[3] = &unk_105A8;
  objc_copyWeak(&v63, &location);
  v55 = [UIAction actionWithHandler:v62];
  v16 = +[UIButtonConfiguration filledButtonConfiguration];
  v59 = [UIButton buttonWithConfiguration:v16 primaryAction:v55];

  [v59 setTranslatesAutoresizingMaskIntoConstraints:0];
  LODWORD(v17) = 1148846080;
  [v59 setContentCompressionResistancePriority:1 forAxis:v17];
  LODWORD(v18) = 1148846080;
  [v59 setContentHuggingPriority:1 forAxis:v18];
  [v59 setTitle:@"Share Debug Data" forState:0];
  stackView3 = [(IMDebugViewController *)self stackView];
  [stackView3 addArrangedSubview:v59];

  [(IMDebugViewController *)self setActionButton:v59];
  topAnchor = [v61 topAnchor];
  view3 = [(IMDebugViewController *)self view];
  safeAreaLayoutGuide = [view3 safeAreaLayoutGuide];
  topAnchor2 = [safeAreaLayoutGuide topAnchor];
  v50 = [topAnchor constraintEqualToSystemSpacingBelowAnchor:topAnchor2 multiplier:1.0];
  v66[0] = v50;
  view4 = [(IMDebugViewController *)self view];
  safeAreaLayoutGuide2 = [view4 safeAreaLayoutGuide];
  bottomAnchor = [safeAreaLayoutGuide2 bottomAnchor];
  bottomAnchor2 = [v61 bottomAnchor];
  v45 = [bottomAnchor constraintEqualToSystemSpacingBelowAnchor:bottomAnchor2 multiplier:1.0];
  v66[1] = v45;
  leadingAnchor = [v61 leadingAnchor];
  view5 = [(IMDebugViewController *)self view];
  safeAreaLayoutGuide3 = [view5 safeAreaLayoutGuide];
  leadingAnchor2 = [safeAreaLayoutGuide3 leadingAnchor];
  v40 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:16.0];
  v66[2] = v40;
  trailingAnchor = [v61 trailingAnchor];
  view6 = [(IMDebugViewController *)self view];
  safeAreaLayoutGuide4 = [view6 safeAreaLayoutGuide];
  trailingAnchor2 = [safeAreaLayoutGuide4 trailingAnchor];
  v35 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-16.0];
  v66[3] = v35;
  heightAnchor = [v59 heightAnchor];
  v33 = [heightAnchor constraintGreaterThanOrEqualToConstant:44.0];
  v66[4] = v33;
  heightAnchor2 = [v60 heightAnchor];
  heightAnchor3 = [v59 heightAnchor];
  v30 = [heightAnchor2 constraintEqualToAnchor:heightAnchor3];
  v66[5] = v30;
  leadingAnchor3 = [v58 leadingAnchor];
  leadingAnchor4 = [v60 leadingAnchor];
  v22 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  v66[6] = v22;
  trailingAnchor3 = [v58 trailingAnchor];
  trailingAnchor4 = [v60 trailingAnchor];
  v25 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  v66[7] = v25;
  centerYAnchor = [v58 centerYAnchor];
  centerYAnchor2 = [v60 centerYAnchor];
  v28 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v66[8] = v28;
  v29 = [NSArray arrayWithObjects:v66 count:9];
  [NSLayoutConstraint activateConstraints:v29];

  objc_destroyWeak(&v63);
  objc_destroyWeak(&location);
}

void __36__IMDebugViewController_viewDidLoad__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained gatherData];
}

- (void)gatherData
{
  progressViewContainer = [(IMDebugViewController *)self progressViewContainer];
  progressView = [(IMDebugViewController *)self progressView];
  actionButton = [(IMDebugViewController *)self actionButton];
  [progressView setProgress:0.0];
  [progressViewContainer setHidden:0];
  [actionButton setHidden:1];
  objc_initWeak(&location, self);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = __35__IMDebugViewController_gatherData__block_invoke;
  v13[3] = &unk_105D0;
  v6 = progressView;
  v14 = v6;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = __35__IMDebugViewController_gatherData__block_invoke_2;
  v9[3] = &unk_105F8;
  objc_copyWeak(&v12, &location);
  v7 = progressViewContainer;
  v10 = v7;
  v8 = actionButton;
  v11 = v8;
  [IMDebugDataManager writeDebugData:v13 completion:v9];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void __35__IMDebugViewController_gatherData__block_invoke_2(id *a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  [WeakRetained setDataUrl:v3];

  [a1[4] setHidden:1];
  [a1[5] setHidden:0];
  v5 = objc_loadWeakRetained(a1 + 6);
  [v5 shareData];
}

- (void)shareData
{
  dataUrl = [(IMDebugViewController *)self dataUrl];

  if (dataUrl)
  {
    v4 = [UIActivityViewController alloc];
    dataUrl2 = [(IMDebugViewController *)self dataUrl];
    v10 = dataUrl2;
    v6 = [NSArray arrayWithObjects:&v10 count:1];
    v7 = [v4 initWithActivityItems:v6 applicationActivities:0];

    actionButton = [(IMDebugViewController *)self actionButton];
    popoverPresentationController = [v7 popoverPresentationController];
    [popoverPresentationController setSourceView:actionButton];

    [(IMDebugViewController *)self presentViewController:v7 animated:1 completion:0];
  }
}

- (void)dismiss
{
  presentingViewController = [(IMDebugViewController *)self presentingViewController];
  [presentingViewController dismissViewControllerAnimated:1 completion:0];
}

- (void)setScreenShotImage:(id)image
{
  objc_storeStrong(&self->_screenShotImage, image);
  imageCopy = image;
  [imageCopy size];
  v7 = v6 * 0.5;
  [imageCopy size];
  v9 = v8 * 0.5;
  v10 = +[UIScreen mainScreen];
  [v10 scale];
  v12 = v11;
  v18.width = v7;
  v18.height = v9;
  UIGraphicsBeginImageContextWithOptions(v18, 0, v12);

  [imageCopy drawInRect:{0.0, 0.0, v7, v9}];
  v13 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();
  screenShotPreviewImage = self->_screenShotPreviewImage;
  self->_screenShotPreviewImage = v13;

  screenShotImageView = [(IMDebugViewController *)self screenShotImageView];
  screenShotPreviewImage = [(IMDebugViewController *)self screenShotPreviewImage];
  [screenShotImageView setImage:screenShotPreviewImage];
}

@end