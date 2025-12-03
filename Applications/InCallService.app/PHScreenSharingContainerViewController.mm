@interface PHScreenSharingContainerViewController
- (PHPIPController)pipController;
- (PHScreenSharingContainerViewController)initWithCallDisplayStyleManager:(id)manager;
- (id)makeScreenShareViewController;
- (void)handlePIPViewControllerRestoredAfterPIPStopped:(id)stopped;
- (void)overlayViewTapped:(id)tapped;
- (void)pipStateDidChangeNotification:(id)notification;
- (void)setShowingOverlay:(BOOL)overlay animated:(BOOL)animated;
- (void)setupOverlayDismissTimerIfNeeded;
- (void)updatePresenterNameAndAvatar;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation PHScreenSharingContainerViewController

- (PHScreenSharingContainerViewController)initWithCallDisplayStyleManager:(id)manager
{
  managerCopy = manager;
  v15.receiver = self;
  v15.super_class = PHScreenSharingContainerViewController;
  v6 = [(PHScreenSharingContainerViewController *)&v15 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_callDisplayStyleManager, manager);
    v8 = objc_opt_new();
    [(PHScreenSharingContainerViewController *)v7 setInfoViewFactory:v8];

    makeScreenShareViewController = [(PHScreenSharingContainerViewController *)v7 makeScreenShareViewController];
    [(PHScreenSharingContainerViewController *)v7 setSharedContentViewController:makeScreenShareViewController];

    [(PHScreenSharingContainerViewController *)v7 setShowingOverlay:1];
    v10 = +[UIColor blackColor];
    view = [(PHScreenSharingContainerViewController *)v7 view];
    [view setBackgroundColor:v10];

    v12 = +[NSNotificationCenter defaultCenter];
    [v12 addObserver:v7 selector:"pipStateDidChangeNotification:" name:@"PHPIPControllerStateDidChangeNotification" object:0];

    v13 = v7;
  }

  return v7;
}

- (void)handlePIPViewControllerRestoredAfterPIPStopped:(id)stopped
{
  stoppedCopy = stopped;
  view = [(PHScreenSharingContainerViewController *)self view];
  [view bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  view2 = [stoppedCopy view];
  [view2 setFrame:{v7, v9, v11, v13}];

  view3 = [stoppedCopy view];
  [view3 setAutoresizingMask:18];

  view4 = [(PHScreenSharingContainerViewController *)self view];
  view5 = [stoppedCopy view];

  [view4 sendSubviewToBack:view5];
}

- (void)setShowingOverlay:(BOOL)overlay animated:(BOOL)animated
{
  if (self->_showingOverlay != overlay)
  {
    v22 = v7;
    v23 = v6;
    v24 = v4;
    v25 = v5;
    self->_showingOverlay = overlay;
    [(PHScreenSharingContainerViewController *)self overlayView];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_10010B30C;
    v11 = v18[3] = &unk_1003583B0;
    overlayCopy = overlay;
    v19 = v11;
    selfCopy = self;
    v12 = objc_retainBlock(v18);
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_10010B378;
    v17[3] = &unk_100356988;
    v17[4] = self;
    v13 = objc_retainBlock(v17);
    v14 = v13;
    if (animated)
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
  sharedContentViewController = [(PHScreenSharingContainerViewController *)self sharedContentViewController];
  view = [(PHScreenSharingContainerViewController *)self view];
  [view bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  view2 = [sharedContentViewController view];
  [view2 setFrame:{v6, v8, v10, v12}];

  v14 = sharedContentViewController;
  v98 = sharedContentViewController;
  view3 = [sharedContentViewController view];
  [view3 setAutoresizingMask:18];

  [sharedContentViewController willMoveToParentViewController:self];
  view4 = [(PHScreenSharingContainerViewController *)self view];
  view5 = [v14 view];
  [view4 addSubview:view5];

  [(PHScreenSharingContainerViewController *)self addChildViewController:v14];
  [v14 didMoveToParentViewController:self];
  [view4 setAutoresizingMask:18];
  v97 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"overlayViewTapped:"];
  [view4 addGestureRecognizer:v97];
  v18 = objc_alloc_init(UIView);
  [(PHScreenSharingContainerViewController *)self setOverlayView:v18];
  v19 = +[UIColor clearColor];
  [v18 setBackgroundColor:v19];

  [v18 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v18 setUserInteractionEnabled:0];
  [v18 setHidden:{-[PHScreenSharingContainerViewController showingOverlay](self, "showingOverlay") ^ 1}];
  [view4 addSubview:v18];
  v96 = [UIBlurEffect effectWithStyle:17];
  v20 = [[UIVisualEffectView alloc] initWithEffect:v96];
  [v20 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v18 addSubview:v20];
  v21 = [[UIVisualEffectView alloc] initWithEffect:v96];
  [v21 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v18 addSubview:v21];
  [v20 _setGroupName:@"PHScreenSharingContainerViewController.blurGroupName"];
  [v21 _setGroupName:@"PHScreenSharingContainerViewController.blurGroupName"];
  selfCopy = self;
  makeParticipantView = [(CNKParticipantScreenShareInfoViewFactory *)self->_infoViewFactory makeParticipantView];
  [makeParticipantView setTranslatesAutoresizingMaskIntoConstraints:0];
  [makeParticipantView preferredHeight];
  [makeParticipantView setCustomCornerRadius:v23 * 0.5];
  [(PHScreenSharingContainerViewController *)self setInfoView:makeParticipantView];
  [v18 addSubview:makeParticipantView];
  [(PHScreenSharingContainerViewController *)self updatePresenterNameAndAvatar];
  leadingAnchor = [v18 leadingAnchor];
  leadingAnchor2 = [view4 leadingAnchor];
  v92 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v100[0] = v92;
  trailingAnchor = [v18 trailingAnchor];
  trailingAnchor2 = [view4 trailingAnchor];
  v88 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v100[1] = v88;
  topAnchor = [v18 topAnchor];
  topAnchor2 = [view4 topAnchor];
  v85 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v100[2] = v85;
  bottomAnchor = [v18 bottomAnchor];
  bottomAnchor2 = [view4 bottomAnchor];
  v82 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v100[3] = v82;
  v91 = v18;
  widthAnchor = [v18 widthAnchor];
  widthAnchor2 = [view4 widthAnchor];
  v79 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
  v100[4] = v79;
  heightAnchor = [v18 heightAnchor];
  heightAnchor2 = [view4 heightAnchor];
  v76 = [heightAnchor constraintEqualToAnchor:heightAnchor2];
  v100[5] = v76;
  leadingAnchor3 = [makeParticipantView leadingAnchor];
  safeAreaLayoutGuide = [view4 safeAreaLayoutGuide];
  leadingAnchor4 = [safeAreaLayoutGuide leadingAnchor];
  v71 = [leadingAnchor3 constraintGreaterThanOrEqualToSystemSpacingAfterAnchor:leadingAnchor4 multiplier:1.0];
  v100[6] = v71;
  v73 = makeParticipantView;
  trailingAnchor3 = [makeParticipantView trailingAnchor];
  safeAreaLayoutGuide2 = [view4 safeAreaLayoutGuide];
  trailingAnchor4 = [safeAreaLayoutGuide2 trailingAnchor];
  v67 = [trailingAnchor3 constraintLessThanOrEqualToSystemSpacingAfterAnchor:trailingAnchor4 multiplier:1.0];
  v100[7] = v67;
  topAnchor3 = [makeParticipantView topAnchor];
  safeAreaLayoutGuide3 = [view4 safeAreaLayoutGuide];
  topAnchor4 = [safeAreaLayoutGuide3 topAnchor];
  v62 = [topAnchor3 constraintGreaterThanOrEqualToAnchor:topAnchor4];
  v100[8] = v62;
  topAnchor5 = [makeParticipantView topAnchor];
  bottomAnchor3 = [v21 bottomAnchor];
  v59 = [topAnchor5 constraintGreaterThanOrEqualToSystemSpacingBelowAnchor:bottomAnchor3 multiplier:1.0];
  v100[9] = v59;
  widthAnchor3 = [makeParticipantView widthAnchor];
  widthAnchor4 = [view4 widthAnchor];
  v55 = [widthAnchor3 constraintLessThanOrEqualToAnchor:widthAnchor4];
  v100[10] = v55;
  heightAnchor3 = [makeParticipantView heightAnchor];
  [makeParticipantView preferredHeight];
  v53 = [heightAnchor3 constraintGreaterThanOrEqualToConstant:?];
  v100[11] = v53;
  leadingAnchor5 = [makeParticipantView leadingAnchor];
  safeAreaLayoutGuide4 = [view4 safeAreaLayoutGuide];
  leadingAnchor6 = [safeAreaLayoutGuide4 leadingAnchor];
  v27 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];

  LODWORD(v28) = 1144750080;
  v52 = v27;
  [v27 setPriority:v28];
  v100[12] = v27;
  bottomAnchor4 = [v20 bottomAnchor];
  bottomAnchor5 = [view4 bottomAnchor];
  v49 = [bottomAnchor4 constraintEqualToAnchor:bottomAnchor5];
  v100[13] = v49;
  v66 = v20;
  widthAnchor5 = [v20 widthAnchor];
  widthAnchor6 = [view4 widthAnchor];
  v46 = [widthAnchor5 constraintEqualToAnchor:widthAnchor6];
  v100[14] = v46;
  topAnchor6 = [v20 topAnchor];
  safeAreaLayoutGuide5 = [view4 safeAreaLayoutGuide];
  bottomAnchor6 = [safeAreaLayoutGuide5 bottomAnchor];
  v42 = [topAnchor6 constraintEqualToAnchor:bottomAnchor6];
  v100[15] = v42;
  topAnchor7 = [v21 topAnchor];
  topAnchor8 = [view4 topAnchor];
  v29 = [topAnchor7 constraintEqualToAnchor:topAnchor8];
  v100[16] = v29;
  v58 = v21;
  widthAnchor7 = [v21 widthAnchor];
  widthAnchor8 = [view4 widthAnchor];
  v32 = [widthAnchor7 constraintEqualToAnchor:widthAnchor8];
  v100[17] = v32;
  bottomAnchor7 = [v21 bottomAnchor];
  safeAreaLayoutGuide6 = [view4 safeAreaLayoutGuide];
  topAnchor9 = [safeAreaLayoutGuide6 topAnchor];
  v36 = [bottomAnchor7 constraintGreaterThanOrEqualToAnchor:topAnchor9];
  v100[18] = v36;
  v37 = [NSArray arrayWithObjects:v100 count:19];
  [NSLayoutConstraint activateConstraints:v37];

  pipController = [(PHScreenSharingContainerViewController *)selfCopy pipController];
  [pipController updatePIPSize];

  pipController2 = [(PHScreenSharingContainerViewController *)selfCopy pipController];
  [pipController2 updatePIPFrame];
}

- (void)viewDidAppear:(BOOL)appear
{
  v6.receiver = self;
  v6.super_class = PHScreenSharingContainerViewController;
  [(PHScreenSharingContainerViewController *)&v6 viewDidAppear:appear];
  pipController = [(PHScreenSharingContainerViewController *)self pipController];
  [pipController updatePIPSize];

  pipController2 = [(PHScreenSharingContainerViewController *)self pipController];
  [pipController2 updatePIPFrame];
}

- (void)viewDidLayoutSubviews
{
  v6.receiver = self;
  v6.super_class = PHScreenSharingContainerViewController;
  [(PHScreenSharingContainerViewController *)&v6 viewDidLayoutSubviews];
  infoView = [(PHScreenSharingContainerViewController *)self infoView];
  [infoView frame];
  Height = CGRectGetHeight(v7);

  infoView2 = [(PHScreenSharingContainerViewController *)self infoView];
  [infoView2 setCustomCornerRadius:Height * 0.5];
}

- (void)pipStateDidChangeNotification:(id)notification
{
  object = [notification object];
  pipController = [(PHScreenSharingContainerViewController *)self pipController];

  if (object == pipController)
  {
    pipController2 = [(PHScreenSharingContainerViewController *)self pipController];
    isPipped = [pipController2 isPipped];

    sharedContentViewController = [(PHScreenSharingContainerViewController *)self sharedContentViewController];
    [sharedContentViewController setIsPipped:isPipped];

    if (isPipped)
    {
      overlayDismissTimer = [(PHScreenSharingContainerViewController *)self overlayDismissTimer];
      [overlayDismissTimer invalidate];
    }

    else
    {

      [(PHScreenSharingContainerViewController *)self setupOverlayDismissTimerIfNeeded];
    }
  }
}

- (void)overlayViewTapped:(id)tapped
{
  v4 = [(PHScreenSharingContainerViewController *)self showingOverlay]^ 1;

  [(PHScreenSharingContainerViewController *)self setShowingOverlay:v4 animated:1];
}

- (void)updatePresenterNameAndAvatar
{
  objc_initWeak(&location, self);
  sharedContentViewController = [(PHScreenSharingContainerViewController *)self sharedContentViewController];
  sharedContentSourceName = [sharedContentViewController sharedContentSourceName];

  infoView = [(PHScreenSharingContainerViewController *)self infoView];
  [infoView configureWith:sharedContentSourceName isFullScreenMode:0];

  pipController = [(PHScreenSharingContainerViewController *)self pipController];
  [pipController setScreenSharingTitle:sharedContentSourceName andAvatarIfNeeded:0];

  sharedContentViewController2 = [(PHScreenSharingContainerViewController *)self sharedContentViewController];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10010C1C4;
  v9[3] = &unk_100359A48;
  objc_copyWeak(&v11, &location);
  v8 = sharedContentSourceName;
  v10 = v8;
  [sharedContentViewController2 getSharedContentSourceAvatarWithImageHandler:v9];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

- (void)setupOverlayDismissTimerIfNeeded
{
  overlayDismissTimer = [(PHScreenSharingContainerViewController *)self overlayDismissTimer];
  [overlayDismissTimer invalidate];

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
  selfCopy = self;
  v3 = PHScreenSharingContainerViewController.makeScreenShareViewController()();

  return v3;
}

@end