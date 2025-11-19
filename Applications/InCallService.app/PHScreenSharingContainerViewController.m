@interface PHScreenSharingContainerViewController
- (PHPIPController)pipController;
- (PHScreenSharingContainerViewController)initWithCallDisplayStyleManager:(id)a3;
- (id)makeScreenShareViewController;
- (void)handlePIPViewControllerRestoredAfterPIPStopped:(id)a3;
- (void)overlayViewTapped:(id)a3;
- (void)pipStateDidChangeNotification:(id)a3;
- (void)setShowingOverlay:(BOOL)a3 animated:(BOOL)a4;
- (void)setupOverlayDismissTimerIfNeeded;
- (void)updatePresenterNameAndAvatar;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation PHScreenSharingContainerViewController

- (PHScreenSharingContainerViewController)initWithCallDisplayStyleManager:(id)a3
{
  v5 = a3;
  v15.receiver = self;
  v15.super_class = PHScreenSharingContainerViewController;
  v6 = [(PHScreenSharingContainerViewController *)&v15 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_callDisplayStyleManager, a3);
    v8 = objc_opt_new();
    [(PHScreenSharingContainerViewController *)v7 setInfoViewFactory:v8];

    v9 = [(PHScreenSharingContainerViewController *)v7 makeScreenShareViewController];
    [(PHScreenSharingContainerViewController *)v7 setSharedContentViewController:v9];

    [(PHScreenSharingContainerViewController *)v7 setShowingOverlay:1];
    v10 = +[UIColor blackColor];
    v11 = [(PHScreenSharingContainerViewController *)v7 view];
    [v11 setBackgroundColor:v10];

    v12 = +[NSNotificationCenter defaultCenter];
    [v12 addObserver:v7 selector:"pipStateDidChangeNotification:" name:@"PHPIPControllerStateDidChangeNotification" object:0];

    v13 = v7;
  }

  return v7;
}

- (void)handlePIPViewControllerRestoredAfterPIPStopped:(id)a3
{
  v4 = a3;
  v5 = [(PHScreenSharingContainerViewController *)self view];
  [v5 bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = [v4 view];
  [v14 setFrame:{v7, v9, v11, v13}];

  v15 = [v4 view];
  [v15 setAutoresizingMask:18];

  v17 = [(PHScreenSharingContainerViewController *)self view];
  v16 = [v4 view];

  [v17 sendSubviewToBack:v16];
}

- (void)setShowingOverlay:(BOOL)a3 animated:(BOOL)a4
{
  if (self->_showingOverlay != a3)
  {
    v22 = v7;
    v23 = v6;
    v24 = v4;
    v25 = v5;
    self->_showingOverlay = a3;
    [(PHScreenSharingContainerViewController *)self overlayView];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_10010B30C;
    v11 = v18[3] = &unk_1003583B0;
    v21 = a3;
    v19 = v11;
    v20 = self;
    v12 = objc_retainBlock(v18);
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_10010B378;
    v17[3] = &unk_100356988;
    v17[4] = self;
    v13 = objc_retainBlock(v17);
    v14 = v13;
    if (a4)
    {
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_10010B380;
      v15[3] = &unk_100357CA0;
      v16 = v13;
      [UIView transitionWithView:v11 duration:5242880 options:v12 animations:v15 completion:0.2];
    }

    else
    {
      (v12[2])(v12);
      v14[2](v14);
    }
  }
}

- (void)viewDidLoad
{
  v99.receiver = self;
  v99.super_class = PHScreenSharingContainerViewController;
  [(PHScreenSharingContainerViewController *)&v99 viewDidLoad];
  v3 = [(PHScreenSharingContainerViewController *)self sharedContentViewController];
  v4 = [(PHScreenSharingContainerViewController *)self view];
  [v4 bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = [v3 view];
  [v13 setFrame:{v6, v8, v10, v12}];

  v14 = v3;
  v98 = v3;
  v15 = [v3 view];
  [v15 setAutoresizingMask:18];

  [v3 willMoveToParentViewController:self];
  v16 = [(PHScreenSharingContainerViewController *)self view];
  v17 = [v14 view];
  [v16 addSubview:v17];

  [(PHScreenSharingContainerViewController *)self addChildViewController:v14];
  [v14 didMoveToParentViewController:self];
  [v16 setAutoresizingMask:18];
  v97 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"overlayViewTapped:"];
  [v16 addGestureRecognizer:v97];
  v18 = objc_alloc_init(UIView);
  [(PHScreenSharingContainerViewController *)self setOverlayView:v18];
  v19 = +[UIColor clearColor];
  [v18 setBackgroundColor:v19];

  [v18 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v18 setUserInteractionEnabled:0];
  [v18 setHidden:{-[PHScreenSharingContainerViewController showingOverlay](self, "showingOverlay") ^ 1}];
  [v16 addSubview:v18];
  v96 = [UIBlurEffect effectWithStyle:17];
  v20 = [[UIVisualEffectView alloc] initWithEffect:v96];
  [v20 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v18 addSubview:v20];
  v21 = [[UIVisualEffectView alloc] initWithEffect:v96];
  [v21 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v18 addSubview:v21];
  [v20 _setGroupName:@"PHScreenSharingContainerViewController.blurGroupName"];
  [v21 _setGroupName:@"PHScreenSharingContainerViewController.blurGroupName"];
  v95 = self;
  v22 = [(CNKParticipantScreenShareInfoViewFactory *)self->_infoViewFactory makeParticipantView];
  [v22 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v22 preferredHeight];
  [v22 setCustomCornerRadius:v23 * 0.5];
  [(PHScreenSharingContainerViewController *)self setInfoView:v22];
  [v18 addSubview:v22];
  [(PHScreenSharingContainerViewController *)self updatePresenterNameAndAvatar];
  v94 = [v18 leadingAnchor];
  v93 = [v16 leadingAnchor];
  v92 = [v94 constraintEqualToAnchor:v93];
  v100[0] = v92;
  v90 = [v18 trailingAnchor];
  v89 = [v16 trailingAnchor];
  v88 = [v90 constraintEqualToAnchor:v89];
  v100[1] = v88;
  v87 = [v18 topAnchor];
  v86 = [v16 topAnchor];
  v85 = [v87 constraintEqualToAnchor:v86];
  v100[2] = v85;
  v84 = [v18 bottomAnchor];
  v83 = [v16 bottomAnchor];
  v82 = [v84 constraintEqualToAnchor:v83];
  v100[3] = v82;
  v91 = v18;
  v81 = [v18 widthAnchor];
  v80 = [v16 widthAnchor];
  v79 = [v81 constraintEqualToAnchor:v80];
  v100[4] = v79;
  v78 = [v18 heightAnchor];
  v77 = [v16 heightAnchor];
  v76 = [v78 constraintEqualToAnchor:v77];
  v100[5] = v76;
  v74 = [v22 leadingAnchor];
  v75 = [v16 safeAreaLayoutGuide];
  v72 = [v75 leadingAnchor];
  v71 = [v74 constraintGreaterThanOrEqualToSystemSpacingAfterAnchor:v72 multiplier:1.0];
  v100[6] = v71;
  v73 = v22;
  v69 = [v22 trailingAnchor];
  v70 = [v16 safeAreaLayoutGuide];
  v68 = [v70 trailingAnchor];
  v67 = [v69 constraintLessThanOrEqualToSystemSpacingAfterAnchor:v68 multiplier:1.0];
  v100[7] = v67;
  v64 = [v22 topAnchor];
  v65 = [v16 safeAreaLayoutGuide];
  v63 = [v65 topAnchor];
  v62 = [v64 constraintGreaterThanOrEqualToAnchor:v63];
  v100[8] = v62;
  v61 = [v22 topAnchor];
  v60 = [v21 bottomAnchor];
  v59 = [v61 constraintGreaterThanOrEqualToSystemSpacingBelowAnchor:v60 multiplier:1.0];
  v100[9] = v59;
  v57 = [v22 widthAnchor];
  v56 = [v16 widthAnchor];
  v55 = [v57 constraintLessThanOrEqualToAnchor:v56];
  v100[10] = v55;
  v54 = [v22 heightAnchor];
  [v22 preferredHeight];
  v53 = [v54 constraintGreaterThanOrEqualToConstant:?];
  v100[11] = v53;
  v24 = [v22 leadingAnchor];
  v25 = [v16 safeAreaLayoutGuide];
  v26 = [v25 leadingAnchor];
  v27 = [v24 constraintEqualToAnchor:v26];

  LODWORD(v28) = 1144750080;
  v52 = v27;
  [v27 setPriority:v28];
  v100[12] = v27;
  v51 = [v20 bottomAnchor];
  v50 = [v16 bottomAnchor];
  v49 = [v51 constraintEqualToAnchor:v50];
  v100[13] = v49;
  v66 = v20;
  v48 = [v20 widthAnchor];
  v47 = [v16 widthAnchor];
  v46 = [v48 constraintEqualToAnchor:v47];
  v100[14] = v46;
  v44 = [v20 topAnchor];
  v45 = [v16 safeAreaLayoutGuide];
  v43 = [v45 bottomAnchor];
  v42 = [v44 constraintEqualToAnchor:v43];
  v100[15] = v42;
  v41 = [v21 topAnchor];
  v40 = [v16 topAnchor];
  v29 = [v41 constraintEqualToAnchor:v40];
  v100[16] = v29;
  v58 = v21;
  v30 = [v21 widthAnchor];
  v31 = [v16 widthAnchor];
  v32 = [v30 constraintEqualToAnchor:v31];
  v100[17] = v32;
  v33 = [v21 bottomAnchor];
  v34 = [v16 safeAreaLayoutGuide];
  v35 = [v34 topAnchor];
  v36 = [v33 constraintGreaterThanOrEqualToAnchor:v35];
  v100[18] = v36;
  v37 = [NSArray arrayWithObjects:v100 count:19];
  [NSLayoutConstraint activateConstraints:v37];

  v38 = [(PHScreenSharingContainerViewController *)v95 pipController];
  [v38 updatePIPSize];

  v39 = [(PHScreenSharingContainerViewController *)v95 pipController];
  [v39 updatePIPFrame];
}

- (void)viewDidAppear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = PHScreenSharingContainerViewController;
  [(PHScreenSharingContainerViewController *)&v6 viewDidAppear:a3];
  v4 = [(PHScreenSharingContainerViewController *)self pipController];
  [v4 updatePIPSize];

  v5 = [(PHScreenSharingContainerViewController *)self pipController];
  [v5 updatePIPFrame];
}

- (void)viewDidLayoutSubviews
{
  v6.receiver = self;
  v6.super_class = PHScreenSharingContainerViewController;
  [(PHScreenSharingContainerViewController *)&v6 viewDidLayoutSubviews];
  v3 = [(PHScreenSharingContainerViewController *)self infoView];
  [v3 frame];
  Height = CGRectGetHeight(v7);

  v5 = [(PHScreenSharingContainerViewController *)self infoView];
  [v5 setCustomCornerRadius:Height * 0.5];
}

- (void)pipStateDidChangeNotification:(id)a3
{
  v4 = [a3 object];
  v5 = [(PHScreenSharingContainerViewController *)self pipController];

  if (v4 == v5)
  {
    v6 = [(PHScreenSharingContainerViewController *)self pipController];
    v7 = [v6 isPipped];

    v8 = [(PHScreenSharingContainerViewController *)self sharedContentViewController];
    [v8 setIsPipped:v7];

    if (v7)
    {
      v9 = [(PHScreenSharingContainerViewController *)self overlayDismissTimer];
      [v9 invalidate];
    }

    else
    {

      [(PHScreenSharingContainerViewController *)self setupOverlayDismissTimerIfNeeded];
    }
  }
}

- (void)overlayViewTapped:(id)a3
{
  v4 = [(PHScreenSharingContainerViewController *)self showingOverlay]^ 1;

  [(PHScreenSharingContainerViewController *)self setShowingOverlay:v4 animated:1];
}

- (void)updatePresenterNameAndAvatar
{
  objc_initWeak(&location, self);
  v3 = [(PHScreenSharingContainerViewController *)self sharedContentViewController];
  v4 = [v3 sharedContentSourceName];

  v5 = [(PHScreenSharingContainerViewController *)self infoView];
  [v5 configureWith:v4 isFullScreenMode:0];

  v6 = [(PHScreenSharingContainerViewController *)self pipController];
  [v6 setScreenSharingTitle:v4 andAvatarIfNeeded:0];

  v7 = [(PHScreenSharingContainerViewController *)self sharedContentViewController];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10010C1C4;
  v9[3] = &unk_100359A48;
  objc_copyWeak(&v11, &location);
  v8 = v4;
  v10 = v8;
  [v7 getSharedContentSourceAvatarWithImageHandler:v9];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

- (void)setupOverlayDismissTimerIfNeeded
{
  v3 = [(PHScreenSharingContainerViewController *)self overlayDismissTimer];
  [v3 invalidate];

  if ([(PHScreenSharingContainerViewController *)self showingOverlay])
  {
    objc_initWeak(&location, self);
    v5 = _NSConcreteStackBlock;
    v6 = 3221225472;
    v7 = sub_10010C450;
    v8 = &unk_100356CE8;
    objc_copyWeak(&v9, &location);
    v4 = [NSTimer scheduledTimerWithTimeInterval:0 repeats:&v5 block:3.0];
    [(PHScreenSharingContainerViewController *)self setOverlayDismissTimer:v4, v5, v6, v7, v8];

    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }
}

- (PHPIPController)pipController
{
  WeakRetained = objc_loadWeakRetained(&self->_pipController);

  return WeakRetained;
}

- (id)makeScreenShareViewController
{
  v2 = self;
  v3 = PHScreenSharingContainerViewController.makeScreenShareViewController()();

  return v3;
}

@end