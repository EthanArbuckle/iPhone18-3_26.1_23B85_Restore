@interface IMDebugViewController
- (void)dismiss;
- (void)gatherData;
- (void)setScreenShotImage:(id)a3;
- (void)shareData;
- (void)viewDidLoad;
@end

@implementation IMDebugViewController

- (void)viewDidLoad
{
  v65.receiver = self;
  v65.super_class = IMDebugViewController;
  [(IMDebugViewController *)&v65 viewDidLoad];
  v3 = [(IMDebugViewController *)self navigationItem];
  [v3 setTitle:@"Debug"];

  v4 = +[UIColor systemBackgroundColor];
  v5 = [(IMDebugViewController *)self view];
  [v5 setBackgroundColor:v4];

  v56 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:0 target:self action:"dismiss"];
  v6 = [(IMDebugViewController *)self navigationItem];
  [v6 setLeftBarButtonItem:v56];

  v61 = objc_alloc_init(UIStackView);
  [v61 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v61 setAxis:1];
  [v61 setSpacing:8.0];
  v7 = +[UIColor clearColor];
  [v61 setBackgroundColor:v7];

  v8 = [(IMDebugViewController *)self view];
  [v8 addSubview:v61];

  [(IMDebugViewController *)self setStackView:v61];
  v9 = [UIImageView alloc];
  v10 = [(IMDebugViewController *)self screenShotPreviewImage];
  v57 = [v9 initWithImage:v10];

  [v57 setContentMode:1];
  LODWORD(v11) = 1132068864;
  [v57 setContentCompressionResistancePriority:1 forAxis:v11];
  [v57 setTranslatesAutoresizingMaskIntoConstraints:0];
  v12 = [(IMDebugViewController *)self stackView];
  [v12 addArrangedSubview:v57];

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
  v15 = [(IMDebugViewController *)self stackView];
  [v15 addArrangedSubview:v60];

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
  v19 = [(IMDebugViewController *)self stackView];
  [v19 addArrangedSubview:v59];

  [(IMDebugViewController *)self setActionButton:v59];
  v52 = [v61 topAnchor];
  v54 = [(IMDebugViewController *)self view];
  v53 = [v54 safeAreaLayoutGuide];
  v51 = [v53 topAnchor];
  v50 = [v52 constraintEqualToSystemSpacingBelowAnchor:v51 multiplier:1.0];
  v66[0] = v50;
  v49 = [(IMDebugViewController *)self view];
  v48 = [v49 safeAreaLayoutGuide];
  v47 = [v48 bottomAnchor];
  v46 = [v61 bottomAnchor];
  v45 = [v47 constraintEqualToSystemSpacingBelowAnchor:v46 multiplier:1.0];
  v66[1] = v45;
  v42 = [v61 leadingAnchor];
  v44 = [(IMDebugViewController *)self view];
  v43 = [v44 safeAreaLayoutGuide];
  v41 = [v43 leadingAnchor];
  v40 = [v42 constraintEqualToAnchor:v41 constant:16.0];
  v66[2] = v40;
  v37 = [v61 trailingAnchor];
  v39 = [(IMDebugViewController *)self view];
  v38 = [v39 safeAreaLayoutGuide];
  v36 = [v38 trailingAnchor];
  v35 = [v37 constraintEqualToAnchor:v36 constant:-16.0];
  v66[3] = v35;
  v34 = [v59 heightAnchor];
  v33 = [v34 constraintGreaterThanOrEqualToConstant:44.0];
  v66[4] = v33;
  v32 = [v60 heightAnchor];
  v31 = [v59 heightAnchor];
  v30 = [v32 constraintEqualToAnchor:v31];
  v66[5] = v30;
  v20 = [v58 leadingAnchor];
  v21 = [v60 leadingAnchor];
  v22 = [v20 constraintEqualToAnchor:v21];
  v66[6] = v22;
  v23 = [v58 trailingAnchor];
  v24 = [v60 trailingAnchor];
  v25 = [v23 constraintEqualToAnchor:v24];
  v66[7] = v25;
  v26 = [v58 centerYAnchor];
  v27 = [v60 centerYAnchor];
  v28 = [v26 constraintEqualToAnchor:v27];
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
  v3 = [(IMDebugViewController *)self progressViewContainer];
  v4 = [(IMDebugViewController *)self progressView];
  v5 = [(IMDebugViewController *)self actionButton];
  [v4 setProgress:0.0];
  [v3 setHidden:0];
  [v5 setHidden:1];
  objc_initWeak(&location, self);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = __35__IMDebugViewController_gatherData__block_invoke;
  v13[3] = &unk_105D0;
  v6 = v4;
  v14 = v6;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = __35__IMDebugViewController_gatherData__block_invoke_2;
  v9[3] = &unk_105F8;
  objc_copyWeak(&v12, &location);
  v7 = v3;
  v10 = v7;
  v8 = v5;
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
  v3 = [(IMDebugViewController *)self dataUrl];

  if (v3)
  {
    v4 = [UIActivityViewController alloc];
    v5 = [(IMDebugViewController *)self dataUrl];
    v10 = v5;
    v6 = [NSArray arrayWithObjects:&v10 count:1];
    v7 = [v4 initWithActivityItems:v6 applicationActivities:0];

    v8 = [(IMDebugViewController *)self actionButton];
    v9 = [v7 popoverPresentationController];
    [v9 setSourceView:v8];

    [(IMDebugViewController *)self presentViewController:v7 animated:1 completion:0];
  }
}

- (void)dismiss
{
  v2 = [(IMDebugViewController *)self presentingViewController];
  [v2 dismissViewControllerAnimated:1 completion:0];
}

- (void)setScreenShotImage:(id)a3
{
  objc_storeStrong(&self->_screenShotImage, a3);
  v5 = a3;
  [v5 size];
  v7 = v6 * 0.5;
  [v5 size];
  v9 = v8 * 0.5;
  v10 = +[UIScreen mainScreen];
  [v10 scale];
  v12 = v11;
  v18.width = v7;
  v18.height = v9;
  UIGraphicsBeginImageContextWithOptions(v18, 0, v12);

  [v5 drawInRect:{0.0, 0.0, v7, v9}];
  v13 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();
  screenShotPreviewImage = self->_screenShotPreviewImage;
  self->_screenShotPreviewImage = v13;

  v16 = [(IMDebugViewController *)self screenShotImageView];
  v15 = [(IMDebugViewController *)self screenShotPreviewImage];
  [v16 setImage:v15];
}

@end