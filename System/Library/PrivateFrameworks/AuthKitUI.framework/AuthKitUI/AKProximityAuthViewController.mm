@interface AKProximityAuthViewController
- (AKProximityAuthViewController)initWithViewModel:(id)model;
- (AKProximityViewDelegate)delegate;
- (BOOL)_doesUserInterfaceStyleMatchMovieURL;
- (BOOL)_isDarkMode;
- (BOOL)_shouldShowVisualPairing;
- (id)_currentPairingMovieURL;
- (id)_pairingMovieName;
- (id)_pairingMoviePlayerItem;
- (id)_pairingMovieURLAsset;
- (void)_addCancelBarButton;
- (void)_addChildSetupImageView;
- (void)_addContentView;
- (void)_addHeaderView;
- (void)_addPlayer;
- (void)_addPrimaryButton;
- (void)_addPrivacyLinkController;
- (void)_addSecondaryButton;
- (void)_addSecondaryView;
- (void)_cancelBarButtonItemPressed:(id)pressed;
- (void)_cleanupOldViews;
- (void)_configureViews;
- (void)_createPlayer;
- (void)_primaryFallbackButtonSelected:(id)selected;
- (void)_secondaryFallbackButtonSelected:(id)selected;
- (void)_showBroadcastingContent;
- (void)_showPinCode;
- (void)_showVisualPairingContent;
- (void)_start;
- (void)_stopPairingInterface;
- (void)_updatePlayerIfNeeded;
- (void)_videoReachedEnd:(id)end;
- (void)dealloc;
- (void)didBecomeActive:(id)active;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)traitCollectionDidChange:(id)change;
- (void)updateViewWithViewModel:(id)model;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)willResignActive:(id)active;
@end

@implementation AKProximityAuthViewController

- (AKProximityAuthViewController)initWithViewModel:(id)model
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, model);
  if ([location[0] type] == 5)
  {
    v11 = selfCopy;
    titleText = [location[0] titleText];
    detailedText = [location[0] detailedText];
    selfCopy = 0;
    v16.receiver = v11;
    v16.super_class = AKProximityAuthViewController;
    v14 = [AKProximityAuthViewController initWithTitle:sel_initWithTitle_detailText_icon_contentLayout_ detailText:titleText icon:? contentLayout:?];
    selfCopy = v14;
    objc_storeStrong(&selfCopy, v14);
    MEMORY[0x277D82BD8](detailedText);
    *&v3 = MEMORY[0x277D82BD8](titleText).n128_u64[0];
    if (v14)
    {
      [(AKProximityAuthViewController *)selfCopy setViewModel:location[0], v3];
    }
  }

  else
  {
    v7 = selfCopy;
    titleText2 = [location[0] titleText];
    detailedText2 = [location[0] detailedText];
    selfCopy = 0;
    v15.receiver = v7;
    v15.super_class = AKProximityAuthViewController;
    v10 = [AKProximityAuthViewController initWithTitle:sel_initWithTitle_detailText_icon_ detailText:titleText2 icon:?];
    selfCopy = v10;
    objc_storeStrong(&selfCopy, v10);
    MEMORY[0x277D82BD8](detailedText2);
    *&v4 = MEMORY[0x277D82BD8](titleText2).n128_u64[0];
    if (v10)
    {
      [(AKProximityAuthViewController *)selfCopy setViewModel:location[0], v4];
    }
  }

  v6 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v6;
}

- (void)updateViewWithViewModel:(id)model
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, model);
  if (selfCopy->_proximityMicaView)
  {
    [(AKBringDeviceCloseMicaView *)selfCopy->_proximityMicaView setShouldshowDotCloud:1];
  }

  [(AKProximityAuthViewController *)selfCopy setViewModel:location[0]];
  detailedText = [location[0] detailedText];
  headerView = [(AKProximityAuthViewController *)selfCopy headerView];
  [headerView setDetailText:detailedText];
  MEMORY[0x277D82BD8](headerView);
  *&v3 = MEMORY[0x277D82BD8](detailedText).n128_u64[0];
  titleText = [location[0] titleText];
  headerView2 = [(AKProximityAuthViewController *)selfCopy headerView];
  [headerView2 setTitle:titleText];
  MEMORY[0x277D82BD8](headerView2);
  *&v4 = MEMORY[0x277D82BD8](titleText).n128_u64[0];
  buttonTray = [(AKProximityAuthViewController *)selfCopy buttonTray];
  [buttonTray removeAllButtons];
  *&v5 = MEMORY[0x277D82BD8](buttonTray).n128_u64[0];
  [(AKProximityAuthViewController *)selfCopy _configureViews];
  if ([location[0] type] == 1)
  {
    [(AKProximityAuthViewController *)selfCopy _start];
    objc_storeStrong(&selfCopy->_proximityMicaView, 0);
  }

  else
  {
    [(AKProximityAuthViewController *)selfCopy _stop];
  }

  view = [(AKProximityAuthViewController *)selfCopy view];
  [view layoutIfNeeded];
  MEMORY[0x277D82BD8](view);
  objc_storeStrong(location, 0);
}

- (void)dealloc
{
  selfCopy = self;
  location[1] = a2;
  location[0] = _AKLogSystem();
  v13 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
  {
    log = location[0];
    type = v13;
    __os_log_helper_16_0_0(v12);
    _os_log_impl(&dword_222379000, log, type, "AKProximityAuthViewController deallocated", v12, 2u);
  }

  objc_storeStrong(location, 0);
  videoPlayer = [(AKProximityAuthViewController *)selfCopy videoPlayer];
  [(AVPlayer *)videoPlayer removeObserver:selfCopy forKeyPath:@"status"];
  *&v2 = MEMORY[0x277D82BD8](videoPlayer).n128_u64[0];
  if (selfCopy->_deallocAction)
  {
    v11 = _AKLogSystem();
    v10 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v3 = v11;
      v4 = v10;
      __os_log_helper_16_0_0(v9);
      _os_log_impl(&dword_222379000, v3, v4, "AKProximityAuthViewController calling dealloc action", v9, 2u);
    }

    objc_storeStrong(&v11, 0);
    (*(selfCopy->_deallocAction + 2))();
  }

  v8.receiver = selfCopy;
  v8.super_class = AKProximityAuthViewController;
  [(AKProximityAuthViewController *)&v8 dealloc:v2];
}

- (void)viewDidLoad
{
  selfCopy = self;
  v9 = a2;
  v8.receiver = self;
  v8.super_class = AKProximityAuthViewController;
  [(OBBaseWelcomeController *)&v8 viewDidLoad];
  [(AKProximityAuthViewController *)selfCopy _configureViews];
  systemBackgroundColor = [MEMORY[0x277D75348] systemBackgroundColor];
  view = [(AKProximityAuthViewController *)selfCopy view];
  [view setBackgroundColor:systemBackgroundColor];
  MEMORY[0x277D82BD8](view);
  *&v2 = MEMORY[0x277D82BD8](systemBackgroundColor).n128_u64[0];
  if ([(AKProximityMessageViewModel *)selfCopy->_viewModel type]!= 5)
  {
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];
    *&v3 = MEMORY[0x277D82BD8](currentDevice).n128_u64[0];
    if (userInterfaceIdiom == 1)
    {
      [(AKProximityAuthViewController *)selfCopy setEdgesForExtendedLayout:15, v3];
    }

    else
    {
      [(AKProximityAuthViewController *)selfCopy setEdgesForExtendedLayout:0, v3];
    }
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  v11 = a2;
  appearCopy = appear;
  v9.receiver = self;
  v9.super_class = AKProximityAuthViewController;
  [(OBBaseWelcomeController *)&v9 viewDidAppear:appear];
  v7 = 0;
  LOBYTE(v6) = 0;
  if ([(AKProximityMessageViewModel *)selfCopy->_viewModel type]== 5)
  {
    mEMORY[0x277CF0228] = [MEMORY[0x277CF0228] sharedManager];
    v7 = 1;
    v6 = [mEMORY[0x277CF0228] isAuthKitSolariumFeatureEnabled] ^ 1;
  }

  if (v7)
  {
    MEMORY[0x277D82BD8](mEMORY[0x277CF0228]);
  }

  if (v6)
  {
    systemGray6Color = [MEMORY[0x277D75348] systemGray6Color];
    navigationController = [(AKProximityAuthViewController *)selfCopy navigationController];
    navigationBar = [navigationController navigationBar];
    [navigationBar setBackgroundColor:systemGray6Color];
    MEMORY[0x277D82BD8](navigationBar);
    MEMORY[0x277D82BD8](navigationController);
    MEMORY[0x277D82BD8](systemGray6Color);
  }

  if ([(AKProximityAuthViewController *)selfCopy _shouldShowVisualPairing])
  {
    [(AKProximityAuthViewController *)selfCopy _start];
  }
}

- (void)viewWillDisappear:(BOOL)disappear
{
  selfCopy = self;
  v11 = a2;
  disappearCopy = disappear;
  v9.receiver = self;
  v9.super_class = AKProximityAuthViewController;
  [(OBBaseWelcomeController *)&v9 viewWillDisappear:disappear];
  mEMORY[0x277CF0228] = [MEMORY[0x277CF0228] sharedManager];
  isAuthKitSolariumFeatureEnabled = [mEMORY[0x277CF0228] isAuthKitSolariumFeatureEnabled];
  *&v3 = MEMORY[0x277D82BD8](mEMORY[0x277CF0228]).n128_u64[0];
  if ((isAuthKitSolariumFeatureEnabled & 1) == 0)
  {
    systemBackgroundColor = [MEMORY[0x277D75348] systemBackgroundColor];
    navigationController = [(AKProximityAuthViewController *)selfCopy navigationController];
    navigationBar = [navigationController navigationBar];
    [navigationBar setBackgroundColor:systemBackgroundColor];
    MEMORY[0x277D82BD8](navigationBar);
    MEMORY[0x277D82BD8](navigationController);
    MEMORY[0x277D82BD8](systemBackgroundColor);
  }
}

- (void)viewDidLayoutSubviews
{
  if ([(AKProximityAuthViewController *)self _started])
  {
    [(AKProximityAuthViewController *)self _stop];
    [(AKProximityAuthViewController *)self _start];
  }
}

- (void)traitCollectionDidChange:(id)change
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, change);
  v3.receiver = selfCopy;
  v3.super_class = AKProximityAuthViewController;
  [(AKProximityAuthViewController *)&v3 traitCollectionDidChange:location[0]];
  [(AKProximityAuthViewController *)selfCopy _updatePlayerIfNeeded];
  objc_storeStrong(location, 0);
}

- (BOOL)_doesUserInterfaceStyleMatchMovieURL
{
  selfCopy = self;
  v9[1] = a2;
  _currentPairingMovieURL = [(AKProximityAuthViewController *)self _currentPairingMovieURL];
  uRLByDeletingPathExtension = [_currentPairingMovieURL URLByDeletingPathExtension];
  v9[0] = [uRLByDeletingPathExtension lastPathComponent];
  MEMORY[0x277D82BD8](uRLByDeletingPathExtension);
  *&v2 = MEMORY[0x277D82BD8](_currentPairingMovieURL).n128_u64[0];
  v6 = v9[0];
  _pairingMovieName = [(AKProximityAuthViewController *)selfCopy _pairingMovieName];
  v8 = [v6 isEqualToString:?];
  MEMORY[0x277D82BD8](_pairingMovieName);
  objc_storeStrong(v9, 0);
  return v8;
}

- (BOOL)_shouldShowVisualPairing
{
  viewModel = [(AKProximityAuthViewController *)self viewModel];
  v4 = [(AKProximityMessageViewModel *)viewModel type]== 1;
  MEMORY[0x277D82BD8](viewModel);
  return v4;
}

- (void)didBecomeActive:(id)active
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, active);
  if ([(AKProximityAuthViewController *)selfCopy _started])
  {
    [(AKProximityAuthViewController *)selfCopy _start];
  }

  objc_storeStrong(location, 0);
}

- (void)willResignActive:(id)active
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, active);
  [(AKProximityAuthViewController *)selfCopy _stopPairingInterface];
  objc_storeStrong(location, 0);
}

- (void)_createPlayer
{
  selfCopy = self;
  v41 = a2;
  v23 = objc_alloc(MEMORY[0x277CE6598]);
  _pairingMoviePlayerItem = [(AKProximityAuthViewController *)selfCopy _pairingMoviePlayerItem];
  v24 = [v23 initWithPlayerItem:?];
  [(AKProximityAuthViewController *)selfCopy setVideoPlayer:?];
  MEMORY[0x277D82BD8](v24);
  videoPlayer = [(AKProximityAuthViewController *)selfCopy videoPlayer];
  [(AVPlayer *)videoPlayer setMuted:1];
  videoPlayer2 = [(AKProximityAuthViewController *)selfCopy videoPlayer];
  [(AVPlayer *)videoPlayer2 addObserver:selfCopy forKeyPath:@"status" options:0 context:?];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  v28 = *MEMORY[0x277CE60C0];
  videoPlayer3 = [(AKProximityAuthViewController *)selfCopy videoPlayer];
  currentItem = [(AVPlayer *)videoPlayer3 currentItem];
  [defaultCenter addObserver:selfCopy selector:sel__videoReachedEnd_ name:v28 object:?];
  MEMORY[0x277D82BD8](currentItem);
  MEMORY[0x277D82BD8](videoPlayer3);
  MEMORY[0x277D82BD8](defaultCenter);
  if (AVKitLibraryCore(0))
  {
    v2 = objc_alloc_init(getAVPlayerViewControllerClass());
  }

  else
  {
    v2 = objc_alloc_init(0);
  }

  v11 = v2;
  [(AKProximityAuthViewController *)selfCopy setVideoViewController:?];
  MEMORY[0x277D82BD8](v11);
  CGRectMake_9();
  *&v39 = v3;
  *(&v39 + 1) = v4;
  *&v40 = v5;
  *(&v40 + 1) = v6;
  videoViewController = [(AKProximityAuthViewController *)selfCopy videoViewController];
  view = [(AVPlayerViewController *)videoViewController view];
  v37 = v39;
  v38 = v40;
  [view setFrame:{v39, v40}];
  MEMORY[0x277D82BD8](view);
  videoViewController2 = [(AKProximityAuthViewController *)selfCopy videoViewController];
  [(AVPlayerViewController *)videoViewController2 setUpdatesNowPlayingInfoCenter:0];
  videoPlayer4 = [(AKProximityAuthViewController *)selfCopy videoPlayer];
  videoViewController3 = [(AKProximityAuthViewController *)selfCopy videoViewController];
  [(AVPlayerViewController *)videoViewController3 setPlayer:videoPlayer4];
  MEMORY[0x277D82BD8](videoViewController3);
  videoViewController4 = [(AKProximityAuthViewController *)selfCopy videoViewController];
  [(AVPlayerViewController *)videoViewController4 setShowsPlaybackControls:0];
  videoViewController5 = [(AKProximityAuthViewController *)selfCopy videoViewController];
  [(AVPlayerViewController *)videoViewController5 setAllowsPictureInPicturePlayback:0];
  videoViewController6 = [(AKProximityAuthViewController *)selfCopy videoViewController];
  view2 = [(AVPlayerViewController *)videoViewController6 view];
  [view2 setContentMode:1];
  MEMORY[0x277D82BD8](view2);
  videoViewController7 = [(AKProximityAuthViewController *)selfCopy videoViewController];
  view3 = [(AVPlayerViewController *)videoViewController7 view];
  [view3 setTranslatesAutoresizingMaskIntoConstraints:0];
  MEMORY[0x277D82BD8](view3);
  v34 = 0;
  v32 = 0;
  if ([(AKProximityAuthViewController *)selfCopy _isDarkMode])
  {
    _pairingBackgroundColor = [(AKProximityAuthViewController *)selfCopy _pairingBackgroundColor];
    v34 = 1;
    v7 = MEMORY[0x277D82BE0](_pairingBackgroundColor);
  }

  else
  {
    clearColor = [MEMORY[0x277D75348] clearColor];
    v32 = 1;
    v7 = MEMORY[0x277D82BE0](clearColor);
  }

  v36 = v7;
  if (v32)
  {
    MEMORY[0x277D82BD8](clearColor);
  }

  if (v34)
  {
    MEMORY[0x277D82BD8](_pairingBackgroundColor);
  }

  v8 = v36;
  videoViewController8 = [(AKProximityAuthViewController *)selfCopy videoViewController];
  view4 = [(AVPlayerViewController *)videoViewController8 view];
  [view4 setBackgroundColor:v8];
  MEMORY[0x277D82BD8](view4);
  MEMORY[0x277D82BD8](videoViewController8);
  objc_storeStrong(&v36, 0);
}

- (id)_pairingMoviePlayerItem
{
  v3 = MEMORY[0x277CE65B0];
  _pairingMovieURLAsset = [(AKProximityAuthViewController *)self _pairingMovieURLAsset];
  v5 = [v3 playerItemWithAsset:?];
  MEMORY[0x277D82BD8](_pairingMovieURLAsset);

  return v5;
}

- (id)_pairingMovieURLAsset
{
  selfCopy = self;
  v10[1] = a2;
  v10[0] = [MEMORY[0x277CCA8D8] bundleWithPath:@"/System/Library/PrivateFrameworks/AuthKitUI.framework"];
  v5 = objc_alloc(MEMORY[0x277CE6650]);
  v4 = MEMORY[0x277CBEBC0];
  v3 = v10[0];
  _pairingMovieName = [(AKProximityAuthViewController *)selfCopy _pairingMovieName];
  v7 = [v3 pathForResource:? ofType:?];
  v6 = [v4 fileURLWithPath:?];
  v9 = [v5 initWithURL:? options:?];
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BD8](v7);
  MEMORY[0x277D82BD8](_pairingMovieName);
  objc_storeStrong(v10, 0);

  return v9;
}

- (id)_pairingMovieName
{
  if ([(AKProximityAuthViewController *)self _isDarkMode:a2])
  {
    v2 = @"ProximityPairingLoopDark";
  }

  else
  {
    v2 = @"ProximityPairingLoop";
  }

  return v2;
}

- (void)_addPlayer
{
  visualPairingView = [(AKProximityAuthViewController *)self visualPairingView];
  videoViewController = [(AKProximityAuthViewController *)self videoViewController];
  view = [(AVPlayerViewController *)videoViewController view];
  [(VPPresenterView *)visualPairingView addSubview:?];
  MEMORY[0x277D82BD8](view);
  MEMORY[0x277D82BD8](videoViewController);
  MEMORY[0x277D82BD8](visualPairingView);
}

- (void)_updatePlayerIfNeeded
{
  if ([(AKProximityMessageViewModel *)self->_viewModel type]== 1 && ![(AKProximityAuthViewController *)self _doesUserInterfaceStyleMatchMovieURL])
  {
    videoPlayer = [(AKProximityAuthViewController *)self videoPlayer];
    _pairingMoviePlayerItem = [(AKProximityAuthViewController *)self _pairingMoviePlayerItem];
    [(AVPlayer *)videoPlayer replaceCurrentItemWithPlayerItem:?];
    MEMORY[0x277D82BD8](_pairingMoviePlayerItem);
    MEMORY[0x277D82BD8](videoPlayer);
  }
}

- (id)_currentPairingMovieURL
{
  v11[2] = self;
  v11[1] = a2;
  videoPlayer = [(AKProximityAuthViewController *)self videoPlayer];
  currentItem = [(AVPlayer *)videoPlayer currentItem];
  v11[0] = [(AVPlayerItem *)currentItem asset];
  MEMORY[0x277D82BD8](currentItem);
  MEMORY[0x277D82BD8](videoPlayer);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = [v11[0] URL];
  }

  else
  {
    location = _AKLogSystem();
    v9 = 16;
    if (os_log_type_enabled(location, OS_LOG_TYPE_ERROR))
    {
      log = location;
      type = v9;
      __os_log_helper_16_0_0(v8);
      _os_log_error_impl(&dword_222379000, log, type, "Pairing movie player does not contain a URL asset.", v8, 2u);
    }

    objc_storeStrong(&location, 0);
    v12 = 0;
  }

  objc_storeStrong(v11, 0);
  v2 = v12;

  return v2;
}

- (void)_start
{
  if ([(AKProximityAuthViewController *)self _shouldShowVisualPairing])
  {
    [(AKProximityAuthViewController *)self set_started:1];
    visualPairingView = [(AKProximityAuthViewController *)self visualPairingView];
    [(VPPresenterView *)visualPairingView start];
    videoPlayer = [(AKProximityAuthViewController *)self videoPlayer];
    [(AVPlayer *)videoPlayer play];
    MEMORY[0x277D82BD8](videoPlayer);
  }
}

- (void)_videoReachedEnd:(id)end
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, end);
  videoPlayer = [(AKProximityAuthViewController *)selfCopy videoPlayer];
  v6 = *MEMORY[0x277CC08F0];
  v7 = *(MEMORY[0x277CC08F0] + 16);
  [(AVPlayer *)videoPlayer seekToTime:&v6];
  *&v3 = MEMORY[0x277D82BD8](videoPlayer).n128_u64[0];
  videoPlayer2 = [(AKProximityAuthViewController *)selfCopy videoPlayer];
  [(AVPlayer *)videoPlayer2 play];
  MEMORY[0x277D82BD8](videoPlayer2);
  objc_storeStrong(location, 0);
}

- (void)_stopPairingInterface
{
  visualPairingView = [(AKProximityAuthViewController *)self visualPairingView];
  [(VPPresenterView *)visualPairingView stop];
  videoPlayer = [(AKProximityAuthViewController *)self videoPlayer];
  [(AVPlayer *)videoPlayer pause];
  mEMORY[0x277CB83F8] = [MEMORY[0x277CB83F8] sharedInstance];
  [mEMORY[0x277CB83F8] setCategory:*MEMORY[0x277CB8020] error:0];
  MEMORY[0x277D82BD8](mEMORY[0x277CB83F8]);
}

- (BOOL)_isDarkMode
{
  currentTraitCollection = [MEMORY[0x277D75C80] currentTraitCollection];
  v4 = [currentTraitCollection userInterfaceStyle] == 2;
  MEMORY[0x277D82BD8](currentTraitCollection);
  return v4;
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, path);
  v25 = 0;
  objc_storeStrong(&v25, object);
  v24 = 0;
  objc_storeStrong(&v24, change);
  v23[1] = context;
  v15 = v25;
  videoPlayer = [(AKProximityAuthViewController *)selfCopy videoPlayer];
  LOBYTE(v17) = 0;
  if (v15 == videoPlayer)
  {
    LOBYTE(v17) = 0;
    if ([location[0] isEqualToString:@"status"])
    {
      v17 = ![(AKProximityAuthViewController *)selfCopy _started];
    }
  }

  *&v6 = MEMORY[0x277D82BD8](videoPlayer).n128_u64[0];
  if (v17)
  {
    videoPlayer2 = [(AKProximityAuthViewController *)selfCopy videoPlayer];
    v11 = 0;
    if ([(AVPlayer *)videoPlayer2 status]== AVPlayerStatusFailed)
    {
      v11 = [(AKProximityAuthViewController *)selfCopy retryAttempts]< 3;
    }

    MEMORY[0x277D82BD8](videoPlayer2);
    if (v11)
    {
      v8 = MEMORY[0x277D85CD0];
      v7 = MEMORY[0x277D85CD0];
      queue = v8;
      v18 = MEMORY[0x277D85DD0];
      v19 = -1073741824;
      v20 = 0;
      v21 = __80__AKProximityAuthViewController_observeValueForKeyPath_ofObject_change_context___block_invoke;
      v22 = &unk_2784A5C90;
      v23[0] = MEMORY[0x277D82BE0](selfCopy);
      dispatch_async(queue, &v18);
      MEMORY[0x277D82BD8](queue);
      objc_storeStrong(v23, 0);
    }
  }

  objc_storeStrong(&v24, 0);
  objc_storeStrong(&v25, 0);
  objc_storeStrong(location, 0);
}

- (void)_cancelBarButtonItemPressed:(id)pressed
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, pressed);
  if (selfCopy->_cancelAction)
  {
    (*(selfCopy->_cancelAction + 2))();
  }

  objc_storeStrong(location, 0);
}

- (void)_primaryFallbackButtonSelected:(id)selected
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, selected);
  v7 = _AKLogSystem();
  v6 = 2;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    log = v7;
    type = v6;
    __os_log_helper_16_0_0(v5);
    _os_log_debug_impl(&dword_222379000, log, type, "User selected the primary fallback for prox auth...", v5, 2u);
  }

  objc_storeStrong(&v7, 0);
  if (selfCopy->_primaryButtonAction)
  {
    (*(selfCopy->_primaryButtonAction + 2))();
  }

  objc_storeStrong(location, 0);
}

- (void)_secondaryFallbackButtonSelected:(id)selected
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, selected);
  v7 = _AKLogSystem();
  v6 = 2;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    log = v7;
    type = v6;
    __os_log_helper_16_0_0(v5);
    _os_log_debug_impl(&dword_222379000, log, type, "User selected the secondary fallback for prox auth...", v5, 2u);
  }

  objc_storeStrong(&v7, 0);
  if (selfCopy->_alternateButtonAction)
  {
    (*(selfCopy->_alternateButtonAction + 2))();
  }

  objc_storeStrong(location, 0);
}

- (void)_configureViews
{
  [(AKProximityAuthViewController *)self _cleanupOldViews];
  [(AKProximityAuthViewController *)self _addHeaderView];
  [(AKProximityAuthViewController *)self _addContentView];
  [(AKProximityAuthViewController *)self _addSecondaryView];
  [(AKProximityAuthViewController *)self _addPrivacyLinkController];
  [(AKProximityAuthViewController *)self _addPrimaryButton];
  [(AKProximityAuthViewController *)self _addSecondaryButton];
  if ([(AKProximityAuthViewController *)self _shouldShowCancelBarButton])
  {
    [(AKProximityAuthViewController *)self _addCancelBarButton];
  }
}

- (void)_addCancelBarButton
{
  selfCopy = self;
  v3[1] = a2;
  v3[0] = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:24 target:self action:sel__cancelBarButtonItemPressed_];
  navigationItem = [(OBBaseWelcomeController *)selfCopy navigationItem];
  [navigationItem setRightBarButtonItem:v3[0]];
  MEMORY[0x277D82BD8](navigationItem);
  objc_storeStrong(v3, 0);
}

- (void)_cleanupOldViews
{
  v17 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v14 = a2;
  if (self->_primaryButton)
  {
    buttonTray = [(AKProximityAuthViewController *)selfCopy buttonTray];
    [buttonTray removeButton:selfCopy->_primaryButton];
    MEMORY[0x277D82BD8](buttonTray);
    objc_storeStrong(&selfCopy->_primaryButton, 0);
  }

  if (selfCopy->_secondaryButton)
  {
    buttonTray2 = [(AKProximityAuthViewController *)selfCopy buttonTray];
    [buttonTray2 removeButton:selfCopy->_secondaryButton];
    MEMORY[0x277D82BD8](buttonTray2);
    objc_storeStrong(&selfCopy->_secondaryButton, 0);
  }

  contentView = [(AKProximityAuthViewController *)selfCopy contentView];
  MEMORY[0x277D82BD8](contentView);
  if (contentView)
  {
    memset(__b, 0, sizeof(__b));
    contentView2 = [(AKProximityAuthViewController *)selfCopy contentView];
    obj = [contentView2 subviews];
    v8 = [obj countByEnumeratingWithState:__b objects:v16 count:{16, MEMORY[0x277D82BD8](contentView2).n128_f64[0]}];
    if (v8)
    {
      v3 = *__b[2];
      v4 = 0;
      v5 = v8;
      while (1)
      {
        v2 = v4;
        if (*__b[2] != v3)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(__b[1] + 8 * v4);
        [v13 removeFromSuperview];
        ++v4;
        if (v2 + 1 >= v5)
        {
          v4 = 0;
          v5 = [obj countByEnumeratingWithState:__b objects:v16 count:16];
          if (!v5)
          {
            break;
          }
        }
      }
    }

    MEMORY[0x277D82BD8](obj);
  }

  *MEMORY[0x277D85DE8];
}

- (void)_addPrimaryButton
{
  viewModel = [(AKProximityAuthViewController *)self viewModel];
  primaryButtonTitle = [(AKProximityMessageViewModel *)viewModel primaryButtonTitle];
  MEMORY[0x277D82BD8](primaryButtonTitle);
  *&v2 = MEMORY[0x277D82BD8](viewModel).n128_u64[0];
  if (primaryButtonTitle)
  {
    boldButton = [MEMORY[0x277D37618] boldButton];
    primaryButton = self->_primaryButton;
    self->_primaryButton = boldButton;
    *&v5 = MEMORY[0x277D82BD8](primaryButton).n128_u64[0];
    v6 = self->_primaryButton;
    viewModel2 = [(AKProximityAuthViewController *)self viewModel];
    primaryButtonTitle2 = [(AKProximityMessageViewModel *)viewModel2 primaryButtonTitle];
    [OBTrayButton setTitle:v6 forState:"setTitle:forState:"];
    MEMORY[0x277D82BD8](primaryButtonTitle2);
    plainButtonConfiguration = [MEMORY[0x277D75230] plainButtonConfiguration];
    [(OBTrayButton *)self->_primaryButton setConfiguration:?];
    [(OBTrayButton *)self->_primaryButton addTarget:self action:sel__primaryFallbackButtonSelected_ forControlEvents:64, MEMORY[0x277D82BD8](plainButtonConfiguration).n128_f64[0]];
    buttonTray = [(AKProximityAuthViewController *)self buttonTray];
    [buttonTray addButton:self->_primaryButton];
    MEMORY[0x277D82BD8](buttonTray);
  }
}

- (void)_addSecondaryButton
{
  viewModel = [(AKProximityAuthViewController *)self viewModel];
  secondaryButtonTitle = [(AKProximityMessageViewModel *)viewModel secondaryButtonTitle];
  MEMORY[0x277D82BD8](secondaryButtonTitle);
  *&v2 = MEMORY[0x277D82BD8](viewModel).n128_u64[0];
  if (secondaryButtonTitle)
  {
    linkButton = [MEMORY[0x277D37650] linkButton];
    secondaryButton = self->_secondaryButton;
    self->_secondaryButton = linkButton;
    *&v5 = MEMORY[0x277D82BD8](secondaryButton).n128_u64[0];
    v10 = self->_secondaryButton;
    viewModel2 = [(AKProximityAuthViewController *)self viewModel];
    secondaryButtonTitle2 = [(AKProximityMessageViewModel *)viewModel2 secondaryButtonTitle];
    [OBTrayButton setTitle:v10 forState:"setTitle:forState:"];
    MEMORY[0x277D82BD8](secondaryButtonTitle2);
    [(OBTrayButton *)self->_secondaryButton addTarget:self action:sel__secondaryFallbackButtonSelected_ forControlEvents:64, MEMORY[0x277D82BD8](viewModel2).n128_f64[0]];
    mEMORY[0x277CF0228] = [MEMORY[0x277CF0228] sharedManager];
    isAuthKitSolariumFeatureEnabled = [mEMORY[0x277CF0228] isAuthKitSolariumFeatureEnabled];
    v6 = MEMORY[0x277D82BD8](mEMORY[0x277CF0228]).n128_u64[0];
    if (isAuthKitSolariumFeatureEnabled)
    {
      systemGray6Color = [MEMORY[0x277D75348] systemGray6Color];
      [(OBTrayButton *)self->_secondaryButton setTintColor:?];
      v6 = MEMORY[0x277D82BD8](systemGray6Color).n128_u64[0];
    }

    buttonTray = [(AKProximityAuthViewController *)self buttonTray];
    [buttonTray addButton:self->_secondaryButton];
    MEMORY[0x277D82BD8](buttonTray);
  }

  else
  {
    objc_storeStrong(&self->_secondaryButton, 0);
    buttonTray2 = [(AKProximityAuthViewController *)self buttonTray];
    [buttonTray2 removeButton:self->_secondaryButton];
    MEMORY[0x277D82BD8](buttonTray2);
  }
}

- (void)_addHeaderView
{
  v52[8] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  if ([(AKProximityMessageViewModel *)self->_viewModel showHeaderView])
  {
    if ([(AKProximityMessageViewModel *)selfCopy->_viewModel type]== 5)
    {
      [(AKProximityAuthViewController *)selfCopy _addChildSetupImageView];
    }

    else
    {
      headerView = [(AKProximityAuthViewController *)selfCopy headerView];
      [headerView layoutIfNeeded];
      MEMORY[0x277D82BD8](headerView);
      v2 = objc_alloc_init(MEMORY[0x277D75D18]);
      logoContainerView = selfCopy->_logoContainerView;
      selfCopy->_logoContainerView = v2;
      MEMORY[0x277D82BD8](logoContainerView);
      CGRectMake_9();
      [(UIView *)selfCopy->_logoContainerView setFrame:v4, v5, v6, v7];
      [(UIView *)selfCopy->_logoContainerView setTranslatesAutoresizingMaskIntoConstraints:0];
      v8 = objc_alloc_init(AKAppleLogoMicaView);
      appleLogoMicaView = selfCopy->_appleLogoMicaView;
      selfCopy->_appleLogoMicaView = v8;
      [(AKAppleLogoMicaView *)selfCopy->_appleLogoMicaView setTranslatesAutoresizingMaskIntoConstraints:0, MEMORY[0x277D82BD8](appleLogoMicaView).n128_f64[0]];
      [(UIView *)selfCopy->_logoContainerView addSubview:selfCopy->_appleLogoMicaView];
      headerView2 = [(AKProximityAuthViewController *)selfCopy headerView];
      animationView = [headerView2 animationView];
      [animationView addSubview:selfCopy->_logoContainerView];
      MEMORY[0x277D82BD8](animationView);
      headerView3 = [(AKProximityAuthViewController *)selfCopy headerView];
      animationView2 = [headerView3 animationView];
      [animationView2 setTranslatesAutoresizingMaskIntoConstraints:0];
      MEMORY[0x277D82BD8](animationView2);
      headerView4 = [(AKProximityAuthViewController *)selfCopy headerView];
      animationView3 = [headerView4 animationView];
      [animationView3 setClipsToBounds:1];
      MEMORY[0x277D82BD8](animationView3);
      *&v10 = MEMORY[0x277D82BD8](headerView4).n128_u64[0];
      v18 = MEMORY[0x277CCAAD0];
      centerXAnchor = [(UIView *)selfCopy->_logoContainerView centerXAnchor];
      headerView5 = [(AKProximityAuthViewController *)selfCopy headerView];
      animationView4 = [headerView5 animationView];
      centerXAnchor2 = [animationView4 centerXAnchor];
      v41 = [(NSLayoutXAxisAnchor *)centerXAnchor constraintEqualToAnchor:?];
      v52[0] = v41;
      centerYAnchor = [(UIView *)selfCopy->_logoContainerView centerYAnchor];
      headerView6 = [(AKProximityAuthViewController *)selfCopy headerView];
      animationView5 = [headerView6 animationView];
      centerYAnchor2 = [animationView5 centerYAnchor];
      v36 = [(NSLayoutYAxisAnchor *)centerYAnchor constraintEqualToAnchor:?];
      v52[1] = v36;
      heightAnchor = [(UIView *)selfCopy->_logoContainerView heightAnchor];
      v34 = [(NSLayoutDimension *)heightAnchor constraintEqualToConstant:373.0];
      v52[2] = v34;
      widthAnchor = [(UIView *)selfCopy->_logoContainerView widthAnchor];
      v32 = [(NSLayoutDimension *)widthAnchor constraintEqualToConstant:373.0];
      v52[3] = v32;
      topAnchor = [(AKAppleLogoMicaView *)selfCopy->_appleLogoMicaView topAnchor];
      topAnchor2 = [(UIView *)selfCopy->_logoContainerView topAnchor];
      v29 = [topAnchor constraintEqualToAnchor:?];
      v52[4] = v29;
      bottomAnchor = [(AKAppleLogoMicaView *)selfCopy->_appleLogoMicaView bottomAnchor];
      bottomAnchor2 = [(UIView *)selfCopy->_logoContainerView bottomAnchor];
      v26 = [bottomAnchor constraintEqualToAnchor:?];
      v52[5] = v26;
      leadingAnchor = [(AKAppleLogoMicaView *)selfCopy->_appleLogoMicaView leadingAnchor];
      leadingAnchor2 = [(UIView *)selfCopy->_logoContainerView leadingAnchor];
      v23 = [leadingAnchor constraintEqualToAnchor:?];
      v52[6] = v23;
      trailingAnchor = [(AKAppleLogoMicaView *)selfCopy->_appleLogoMicaView trailingAnchor];
      trailingAnchor2 = [(UIView *)selfCopy->_logoContainerView trailingAnchor];
      v20 = [trailingAnchor constraintEqualToAnchor:?];
      v52[7] = v20;
      v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v52 count:8];
      [v18 activateConstraints:?];
      MEMORY[0x277D82BD8](v19);
      MEMORY[0x277D82BD8](v20);
      MEMORY[0x277D82BD8](trailingAnchor2);
      MEMORY[0x277D82BD8](trailingAnchor);
      MEMORY[0x277D82BD8](v23);
      MEMORY[0x277D82BD8](leadingAnchor2);
      MEMORY[0x277D82BD8](leadingAnchor);
      MEMORY[0x277D82BD8](v26);
      MEMORY[0x277D82BD8](bottomAnchor2);
      MEMORY[0x277D82BD8](bottomAnchor);
      MEMORY[0x277D82BD8](v29);
      MEMORY[0x277D82BD8](topAnchor2);
      MEMORY[0x277D82BD8](topAnchor);
      MEMORY[0x277D82BD8](v32);
      MEMORY[0x277D82BD8](widthAnchor);
      MEMORY[0x277D82BD8](v34);
      MEMORY[0x277D82BD8](heightAnchor);
      MEMORY[0x277D82BD8](v36);
      MEMORY[0x277D82BD8](centerYAnchor2);
      MEMORY[0x277D82BD8](animationView5);
      MEMORY[0x277D82BD8](headerView6);
      MEMORY[0x277D82BD8](centerYAnchor);
      MEMORY[0x277D82BD8](v41);
      MEMORY[0x277D82BD8](centerXAnchor2);
      MEMORY[0x277D82BD8](animationView4);
      MEMORY[0x277D82BD8](headerView5);
      MEMORY[0x277D82BD8](centerXAnchor);
    }
  }

  else
  {
    location[0] = _AKLogSystem();
    v49 = 2;
    if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEBUG))
    {
      v46 = location[0];
      v47 = v49;
      __os_log_helper_16_0_0(v48);
      _os_log_debug_impl(&dword_222379000, v46, v47, "View model specifies that header view should not be shown.", v48, 2u);
    }

    objc_storeStrong(location, 0);
  }

  *MEMORY[0x277D85DE8];
}

- (void)_addChildSetupImageView
{
  v28[4] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v26[1] = a2;
  v2 = [AKChildSetupTwoDeviceProxView alloc];
  v26[0] = [(AKChildSetupTwoDeviceProxView *)v2 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  [v26[0] setTranslatesAutoresizingMaskIntoConstraints:0];
  contentView = [(AKProximityAuthViewController *)selfCopy contentView];
  [contentView addSubview:v26[0]];
  *&v3 = MEMORY[0x277D82BD8](contentView).n128_u64[0];
  backgroundColor = [v26[0] backgroundColor];
  contentView2 = [(AKProximityAuthViewController *)selfCopy contentView];
  [contentView2 setBackgroundColor:backgroundColor];
  MEMORY[0x277D82BD8](contentView2);
  *&v4 = MEMORY[0x277D82BD8](backgroundColor).n128_u64[0];
  v8 = MEMORY[0x277CCAAD0];
  contentView3 = [(AKProximityAuthViewController *)selfCopy contentView];
  leftAnchor = [contentView3 leftAnchor];
  leftAnchor2 = [v26[0] leftAnchor];
  v22 = [leftAnchor constraintEqualToAnchor:?];
  v28[0] = v22;
  contentView4 = [(AKProximityAuthViewController *)selfCopy contentView];
  topAnchor = [contentView4 topAnchor];
  topAnchor2 = [v26[0] topAnchor];
  v18 = [topAnchor constraintEqualToAnchor:?];
  v28[1] = v18;
  contentView5 = [(AKProximityAuthViewController *)selfCopy contentView];
  rightAnchor = [contentView5 rightAnchor];
  rightAnchor2 = [v26[0] rightAnchor];
  v14 = [rightAnchor constraintEqualToAnchor:?];
  v28[2] = v14;
  contentView6 = [(AKProximityAuthViewController *)selfCopy contentView];
  bottomAnchor = [contentView6 bottomAnchor];
  bottomAnchor2 = [v26[0] bottomAnchor];
  v10 = [bottomAnchor constraintEqualToAnchor:?];
  v28[3] = v10;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:4];
  [v8 activateConstraints:?];
  MEMORY[0x277D82BD8](v9);
  MEMORY[0x277D82BD8](v10);
  MEMORY[0x277D82BD8](bottomAnchor2);
  MEMORY[0x277D82BD8](bottomAnchor);
  MEMORY[0x277D82BD8](contentView6);
  MEMORY[0x277D82BD8](v14);
  MEMORY[0x277D82BD8](rightAnchor2);
  MEMORY[0x277D82BD8](rightAnchor);
  MEMORY[0x277D82BD8](contentView5);
  MEMORY[0x277D82BD8](v18);
  MEMORY[0x277D82BD8](topAnchor2);
  MEMORY[0x277D82BD8](topAnchor);
  MEMORY[0x277D82BD8](contentView4);
  MEMORY[0x277D82BD8](v22);
  MEMORY[0x277D82BD8](leftAnchor2);
  MEMORY[0x277D82BD8](leftAnchor);
  MEMORY[0x277D82BD8](contentView3);
  objc_storeStrong(v26, 0);
  *MEMORY[0x277D85DE8];
}

- (void)_addContentView
{
  selfCopy = self;
  v12[1] = a2;
  type = [(AKProximityMessageViewModel *)self->_viewModel type];
  if (type)
  {
    if (type == 1)
    {
      [(AKProximityAuthViewController *)selfCopy _showVisualPairingContent];
    }

    else if (type == 2)
    {
      [(AKProximityAuthViewController *)selfCopy _showPinCode];
    }
  }

  else
  {
    [(AKProximityAuthViewController *)selfCopy _showBroadcastingContent];
  }

  if ([(AKProximityAuthViewController *)selfCopy _shouldShowVisualPairing])
  {
    v4 = MEMORY[0x277D85CD0];
    v2 = MEMORY[0x277D85CD0];
    queue = v4;
    v7 = MEMORY[0x277D85DD0];
    v8 = -1073741824;
    v9 = 0;
    v10 = __48__AKProximityAuthViewController__addContentView__block_invoke;
    v11 = &unk_2784A5C90;
    v12[0] = MEMORY[0x277D82BE0](selfCopy);
    dispatch_async(queue, &v7);
    MEMORY[0x277D82BD8](queue);
    objc_storeStrong(v12, 0);
  }

  else
  {
    contentView = [(AKProximityAuthViewController *)selfCopy contentView];
    [contentView layoutIfNeeded];
    MEMORY[0x277D82BD8](contentView);
  }
}

void __48__AKProximityAuthViewController__addContentView__block_invoke(void *a1)
{
  v7[2] = a1;
  v7[1] = a1;
  v1 = MEMORY[0x277D75D18];
  v2 = MEMORY[0x277D85DD0];
  v3 = -1073741824;
  v4 = 0;
  v5 = __48__AKProximityAuthViewController__addContentView__block_invoke_2;
  v6 = &unk_2784A5C90;
  v7[0] = MEMORY[0x277D82BE0](a1[4]);
  [v1 animateWithDuration:0.2 animations:?];
  objc_storeStrong(v7, 0);
}

double __48__AKProximityAuthViewController__addContentView__block_invoke_2(uint64_t a1)
{
  v4 = [*(a1 + 32) visualPairingView];
  v3 = [v4 layer];
  LODWORD(v1) = 1.0;
  [v3 setOpacity:v1];
  MEMORY[0x277D82BD8](v3);
  *&result = MEMORY[0x277D82BD8](v4).n128_u64[0];
  return result;
}

- (void)_showBroadcastingContent
{
  v25[5] = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(AKBringDeviceCloseMicaView);
  proximityMicaView = self->_proximityMicaView;
  self->_proximityMicaView = v2;
  [(AKBringDeviceCloseMicaView *)self->_proximityMicaView setTranslatesAutoresizingMaskIntoConstraints:0, MEMORY[0x277D82BD8](proximityMicaView).n128_f64[0]];
  contentView = [(AKProximityAuthViewController *)self contentView];
  [contentView addSubview:self->_proximityMicaView];
  *&v4 = MEMORY[0x277D82BD8](contentView).n128_u64[0];
  v6 = MEMORY[0x277CCAAD0];
  heightAnchor = [(AKBringDeviceCloseMicaView *)self->_proximityMicaView heightAnchor];
  v22 = [heightAnchor constraintEqualToConstant:250.0];
  v25[0] = v22;
  widthAnchor = [(AKBringDeviceCloseMicaView *)self->_proximityMicaView widthAnchor];
  v20 = [widthAnchor constraintEqualToConstant:300.0];
  v25[1] = v20;
  centerXAnchor = [(AKBringDeviceCloseMicaView *)self->_proximityMicaView centerXAnchor];
  contentView2 = [(AKProximityAuthViewController *)self contentView];
  centerXAnchor2 = [contentView2 centerXAnchor];
  v16 = [centerXAnchor constraintEqualToAnchor:?];
  v25[2] = v16;
  topAnchor = [(AKBringDeviceCloseMicaView *)self->_proximityMicaView topAnchor];
  contentView3 = [(AKProximityAuthViewController *)self contentView];
  topAnchor2 = [contentView3 topAnchor];
  v12 = [topAnchor constraintEqualToAnchor:?];
  v25[3] = v12;
  bottomAnchor = [(AKBringDeviceCloseMicaView *)self->_proximityMicaView bottomAnchor];
  contentView4 = [(AKProximityAuthViewController *)self contentView];
  bottomAnchor2 = [contentView4 bottomAnchor];
  v8 = [bottomAnchor constraintEqualToAnchor:-30.0 constant:?];
  v25[4] = v8;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:5];
  [v6 activateConstraints:?];
  MEMORY[0x277D82BD8](v7);
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](bottomAnchor2);
  MEMORY[0x277D82BD8](contentView4);
  MEMORY[0x277D82BD8](bottomAnchor);
  MEMORY[0x277D82BD8](v12);
  MEMORY[0x277D82BD8](topAnchor2);
  MEMORY[0x277D82BD8](contentView3);
  MEMORY[0x277D82BD8](topAnchor);
  MEMORY[0x277D82BD8](v16);
  MEMORY[0x277D82BD8](centerXAnchor2);
  MEMORY[0x277D82BD8](contentView2);
  MEMORY[0x277D82BD8](centerXAnchor);
  MEMORY[0x277D82BD8](v20);
  MEMORY[0x277D82BD8](widthAnchor);
  MEMORY[0x277D82BD8](v22);
  MEMORY[0x277D82BD8](heightAnchor);
  *MEMORY[0x277D85DE8];
}

- (void)_showVisualPairingContent
{
  v66[5] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v64[5] = a2;
  if (VisualPairingLibraryCore(0))
  {
    v2 = objc_alloc(getVPPresenterViewClass());
  }

  else
  {
    v2 = [0 alloc];
  }

  v14 = v2;
  CGRectMake_9();
  v64[1] = v3;
  v64[2] = v4;
  v64[3] = v5;
  v64[4] = v6;
  v15 = [v14 initWithFrame:{*&v3, *&v4, *&v5, *&v6}];
  [(AKProximityAuthViewController *)selfCopy setVisualPairingView:?];
  *&v7 = MEMORY[0x277D82BD8](v15).n128_u64[0];
  verificationCode = selfCopy->_verificationCode;
  visualPairingView = [(AKProximityAuthViewController *)selfCopy visualPairingView];
  [(VPPresenterView *)visualPairingView setVerificationCode:verificationCode];
  visualPairingView2 = [(AKProximityAuthViewController *)selfCopy visualPairingView];
  [(VPPresenterView *)visualPairingView2 setTranslatesAutoresizingMaskIntoConstraints:0];
  _pairingBackgroundColor = [(AKProximityAuthViewController *)selfCopy _pairingBackgroundColor];
  v8 = _pairingBackgroundColor;
  cGColor = [_pairingBackgroundColor CGColor];
  visualPairingView3 = [(AKProximityAuthViewController *)selfCopy visualPairingView];
  layer = [(VPPresenterView *)visualPairingView3 layer];
  [layer setBackgroundColor:cGColor];
  MEMORY[0x277D82BD8](layer);
  MEMORY[0x277D82BD8](visualPairingView3);
  _pairingFlags = [(AKProximityAuthViewController *)selfCopy _pairingFlags];
  visualPairingView4 = [(AKProximityAuthViewController *)selfCopy visualPairingView];
  [(VPPresenterView *)visualPairingView4 setFlags:_pairingFlags];
  v64[0] = [MEMORY[0x277CCA8D8] bundleWithPath:{@"/System/Library/PrivateFrameworks/AuthKitUI.framework", MEMORY[0x277D82BD8](visualPairingView4).n128_f64[0]}];
  v25 = MEMORY[0x277D755B8];
  v26 = [v64[0] pathForResource:@"ProximityPairingMask" ofType:@".png"];
  v63 = [v25 imageWithContentsOfFile:?];
  MEMORY[0x277D82BD8](v26);
  v62 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v63];
  [v62 setContentMode:1];
  [v62 setTranslatesAutoresizingMaskIntoConstraints:0];
  clearColor = [MEMORY[0x277D75348] clearColor];
  v9 = clearColor;
  cGColor2 = [clearColor CGColor];
  contentView = [(AKProximityAuthViewController *)selfCopy contentView];
  layer2 = [contentView layer];
  [layer2 setBackgroundColor:cGColor2];
  MEMORY[0x277D82BD8](layer2);
  MEMORY[0x277D82BD8](contentView);
  visualPairingView5 = [(AKProximityAuthViewController *)selfCopy visualPairingView];
  [(VPPresenterView *)visualPairingView5 setMaskView:v62];
  [(AKProximityAuthViewController *)selfCopy _createPlayer];
  [(AKProximityAuthViewController *)selfCopy setRetryAttempts:0];
  [(AKProximityAuthViewController *)selfCopy _addPlayer];
  visualPairingView6 = [(AKProximityAuthViewController *)selfCopy visualPairingView];
  layer3 = [(VPPresenterView *)visualPairingView6 layer];
  LODWORD(v10) = 1008981770;
  [layer3 setOpacity:v10];
  MEMORY[0x277D82BD8](layer3);
  contentView2 = [(AKProximityAuthViewController *)selfCopy contentView];
  visualPairingView7 = [(AKProximityAuthViewController *)selfCopy visualPairingView];
  [contentView2 addSubview:?];
  MEMORY[0x277D82BD8](visualPairingView7);
  *&v11 = MEMORY[0x277D82BD8](contentView2).n128_u64[0];
  v36 = MEMORY[0x277CCAAD0];
  visualPairingView8 = [(AKProximityAuthViewController *)selfCopy visualPairingView];
  topAnchor = [(VPPresenterView *)visualPairingView8 topAnchor];
  contentView3 = [(AKProximityAuthViewController *)selfCopy contentView];
  topAnchor2 = [contentView3 topAnchor];
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];
  v13 = -20.0;
  if (userInterfaceIdiom != 1)
  {
    v13 = 20.0;
  }

  v54 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:{v13, v14}];
  v66[0] = v54;
  visualPairingView9 = [(AKProximityAuthViewController *)selfCopy visualPairingView];
  bottomAnchor = [(VPPresenterView *)visualPairingView9 bottomAnchor];
  contentView4 = [(AKProximityAuthViewController *)selfCopy contentView];
  bottomAnchor2 = [contentView4 bottomAnchor];
  v49 = [bottomAnchor constraintEqualToAnchor:-30.0 constant:?];
  v66[1] = v49;
  visualPairingView10 = [(AKProximityAuthViewController *)selfCopy visualPairingView];
  heightAnchor = [(VPPresenterView *)visualPairingView10 heightAnchor];
  v46 = [heightAnchor constraintEqualToConstant:300.0];
  v66[2] = v46;
  visualPairingView11 = [(AKProximityAuthViewController *)selfCopy visualPairingView];
  widthAnchor = [(VPPresenterView *)visualPairingView11 widthAnchor];
  v43 = [widthAnchor constraintEqualToConstant:300.0];
  v66[3] = v43;
  visualPairingView12 = [(AKProximityAuthViewController *)selfCopy visualPairingView];
  centerXAnchor = [(VPPresenterView *)visualPairingView12 centerXAnchor];
  contentView5 = [(AKProximityAuthViewController *)selfCopy contentView];
  centerXAnchor2 = [contentView5 centerXAnchor];
  v38 = [centerXAnchor constraintEqualToAnchor:?];
  v66[4] = v38;
  v37 = [MEMORY[0x277CBEA60] arrayWithObjects:v66 count:5];
  [v36 activateConstraints:?];
  MEMORY[0x277D82BD8](v37);
  MEMORY[0x277D82BD8](v38);
  MEMORY[0x277D82BD8](centerXAnchor2);
  MEMORY[0x277D82BD8](contentView5);
  MEMORY[0x277D82BD8](centerXAnchor);
  MEMORY[0x277D82BD8](visualPairingView12);
  MEMORY[0x277D82BD8](v43);
  MEMORY[0x277D82BD8](widthAnchor);
  MEMORY[0x277D82BD8](visualPairingView11);
  MEMORY[0x277D82BD8](v46);
  MEMORY[0x277D82BD8](heightAnchor);
  MEMORY[0x277D82BD8](visualPairingView10);
  MEMORY[0x277D82BD8](v49);
  MEMORY[0x277D82BD8](bottomAnchor2);
  MEMORY[0x277D82BD8](contentView4);
  MEMORY[0x277D82BD8](bottomAnchor);
  MEMORY[0x277D82BD8](visualPairingView9);
  MEMORY[0x277D82BD8](v54);
  MEMORY[0x277D82BD8](currentDevice);
  MEMORY[0x277D82BD8](topAnchor2);
  MEMORY[0x277D82BD8](contentView3);
  MEMORY[0x277D82BD8](topAnchor);
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:selfCopy selector:sel_didBecomeActive_ name:*MEMORY[0x277D76648] object:?];
  defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter2 addObserver:selfCopy selector:sel_willResignActive_ name:*MEMORY[0x277D76768] object:0];
  MEMORY[0x277D82BD8](defaultCenter2);
  objc_storeStrong(&v62, 0);
  objc_storeStrong(&v63, 0);
  objc_storeStrong(v64, 0);
  *MEMORY[0x277D85DE8];
}

- (void)_showPinCode
{
  v45[5] = *MEMORY[0x277D85DE8];
  v2 = objc_alloc(MEMORY[0x277D756B8]);
  v6 = [v2 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [(AKProximityAuthViewController *)self setPinCodeLabel:?];
  pinCodeLabel = [(AKProximityAuthViewController *)self pinCodeLabel];
  [(UILabel *)pinCodeLabel setNumberOfLines:0];
  labelColor = [MEMORY[0x277D75348] labelColor];
  pinCodeLabel2 = [(AKProximityAuthViewController *)self pinCodeLabel];
  [(UILabel *)pinCodeLabel2 setTextColor:labelColor];
  MEMORY[0x277D82BD8](pinCodeLabel2);
  systemBackgroundColor = [MEMORY[0x277D75348] systemBackgroundColor];
  pinCodeLabel3 = [(AKProximityAuthViewController *)self pinCodeLabel];
  [(UILabel *)pinCodeLabel3 setBackgroundColor:systemBackgroundColor];
  MEMORY[0x277D82BD8](pinCodeLabel3);
  v13 = [MEMORY[0x277D74300] preferredFontForTextStyle:{*MEMORY[0x277D76A00], MEMORY[0x277D82BD8](systemBackgroundColor).n128_f64[0]}];
  pinCodeLabel4 = [(AKProximityAuthViewController *)self pinCodeLabel];
  [(UILabel *)pinCodeLabel4 setFont:v13];
  MEMORY[0x277D82BD8](pinCodeLabel4);
  pinCodeLabel5 = [(AKProximityAuthViewController *)self pinCodeLabel];
  [(UILabel *)pinCodeLabel5 setTextAlignment:?];
  pinCodeLabel6 = [(AKProximityAuthViewController *)self pinCodeLabel];
  [(UILabel *)pinCodeLabel6 setTranslatesAutoresizingMaskIntoConstraints:0];
  *&v3 = MEMORY[0x277D82BD8](pinCodeLabel6).n128_u64[0];
  verificationCode = self->_verificationCode;
  pinCodeLabel7 = [(AKProximityAuthViewController *)self pinCodeLabel];
  [(UILabel *)pinCodeLabel7 setText:verificationCode];
  pinCodeLabel8 = [(AKProximityAuthViewController *)self pinCodeLabel];
  LODWORD(v4) = 1148846080;
  [(UILabel *)pinCodeLabel8 setContentHuggingPriority:1 forAxis:v4];
  contentView = [(AKProximityAuthViewController *)self contentView];
  pinCodeLabel9 = [(AKProximityAuthViewController *)self pinCodeLabel];
  [contentView addSubview:?];
  MEMORY[0x277D82BD8](pinCodeLabel9);
  *&v5 = MEMORY[0x277D82BD8](contentView).n128_u64[0];
  v21 = MEMORY[0x277CCAAD0];
  pinCodeLabel10 = [(AKProximityAuthViewController *)self pinCodeLabel];
  heightAnchor = [(UILabel *)pinCodeLabel10 heightAnchor];
  v41 = [heightAnchor constraintEqualToConstant:250.0];
  v45[0] = v41;
  pinCodeLabel11 = [(AKProximityAuthViewController *)self pinCodeLabel];
  widthAnchor = [(UILabel *)pinCodeLabel11 widthAnchor];
  v38 = [widthAnchor constraintEqualToConstant:300.0];
  v45[1] = v38;
  pinCodeLabel12 = [(AKProximityAuthViewController *)self pinCodeLabel];
  centerXAnchor = [(UILabel *)pinCodeLabel12 centerXAnchor];
  contentView2 = [(AKProximityAuthViewController *)self contentView];
  centerXAnchor2 = [contentView2 centerXAnchor];
  v33 = [centerXAnchor constraintEqualToAnchor:?];
  v45[2] = v33;
  pinCodeLabel13 = [(AKProximityAuthViewController *)self pinCodeLabel];
  topAnchor = [(UILabel *)pinCodeLabel13 topAnchor];
  contentView3 = [(AKProximityAuthViewController *)self contentView];
  topAnchor2 = [contentView3 topAnchor];
  v28 = [topAnchor constraintEqualToAnchor:?];
  v45[3] = v28;
  pinCodeLabel14 = [(AKProximityAuthViewController *)self pinCodeLabel];
  bottomAnchor = [(UILabel *)pinCodeLabel14 bottomAnchor];
  contentView4 = [(AKProximityAuthViewController *)self contentView];
  bottomAnchor2 = [contentView4 bottomAnchor];
  v23 = [bottomAnchor constraintEqualToAnchor:-30.0 constant:?];
  v45[4] = v23;
  v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v45 count:5];
  [v21 activateConstraints:?];
  MEMORY[0x277D82BD8](v22);
  MEMORY[0x277D82BD8](v23);
  MEMORY[0x277D82BD8](bottomAnchor2);
  MEMORY[0x277D82BD8](contentView4);
  MEMORY[0x277D82BD8](bottomAnchor);
  MEMORY[0x277D82BD8](pinCodeLabel14);
  MEMORY[0x277D82BD8](v28);
  MEMORY[0x277D82BD8](topAnchor2);
  MEMORY[0x277D82BD8](contentView3);
  MEMORY[0x277D82BD8](topAnchor);
  MEMORY[0x277D82BD8](pinCodeLabel13);
  MEMORY[0x277D82BD8](v33);
  MEMORY[0x277D82BD8](centerXAnchor2);
  MEMORY[0x277D82BD8](contentView2);
  MEMORY[0x277D82BD8](centerXAnchor);
  MEMORY[0x277D82BD8](pinCodeLabel12);
  MEMORY[0x277D82BD8](v38);
  MEMORY[0x277D82BD8](widthAnchor);
  MEMORY[0x277D82BD8](pinCodeLabel11);
  MEMORY[0x277D82BD8](v41);
  MEMORY[0x277D82BD8](heightAnchor);
  MEMORY[0x277D82BD8](pinCodeLabel10);
  *MEMORY[0x277D85DE8];
}

- (void)_addSecondaryView
{
  v61[4] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v58[1] = a2;
  if ([(AKProximityMessageViewModel *)self->_viewModel type]== 5)
  {
    v2 = objc_alloc(MEMORY[0x277D75D18]);
    v55 = MEMORY[0x277CBF3A0];
    v58[0] = [v2 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    v3 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{*v55, v55[1], v55[2], v55[3]}];
    secondaryContentLabel = selfCopy->_secondaryContentLabel;
    selfCopy->_secondaryContentLabel = v3;
    [(UILabel *)selfCopy->_secondaryContentLabel setTranslatesAutoresizingMaskIntoConstraints:0, MEMORY[0x277D82BD8](secondaryContentLabel).n128_f64[0]];
    mEMORY[0x277CF0228] = [MEMORY[0x277CF0228] sharedManager];
    isAuthKitSolariumFeatureEnabled = [mEMORY[0x277CF0228] isAuthKitSolariumFeatureEnabled];
    *&v5 = MEMORY[0x277D82BD8](mEMORY[0x277CF0228]).n128_u64[0];
    if (isAuthKitSolariumFeatureEnabled)
    {
      [(UILabel *)selfCopy->_secondaryContentLabel setTextAlignment:4, v5];
      secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
      [(UILabel *)selfCopy->_secondaryContentLabel setTextColor:?];
      v54 = [MEMORY[0x277D74300] preferredFontForTextStyle:{*MEMORY[0x277D76A20], MEMORY[0x277D82BD8](secondaryLabelColor).n128_f64[0]}];
      [(UILabel *)selfCopy->_secondaryContentLabel setFont:?];
      v6 = MEMORY[0x277D82BD8](v54).n128_u64[0];
    }

    else
    {
      [(UILabel *)selfCopy->_secondaryContentLabel setTextAlignment:1, v5];
      labelColor = [MEMORY[0x277D75348] labelColor];
      [(UILabel *)selfCopy->_secondaryContentLabel setTextColor:?];
      *&v7 = MEMORY[0x277D82BD8](labelColor).n128_u64[0];
      v49 = MEMORY[0x277D74300];
      v48 = MEMORY[0x277D74310];
      v47 = *MEMORY[0x277D76920];
      traitCollection = [(AKProximityAuthViewController *)selfCopy traitCollection];
      v51 = [v48 preferredFontDescriptorWithTextStyle:v47 compatibleWithTraitCollection:?];
      v50 = [v49 fontWithDescriptor:0.0 size:?];
      [(UILabel *)selfCopy->_secondaryContentLabel setFont:?];
      MEMORY[0x277D82BD8](v50);
      MEMORY[0x277D82BD8](v51);
      v6 = MEMORY[0x277D82BD8](traitCollection).n128_u64[0];
    }

    clearColor = [MEMORY[0x277D75348] clearColor];
    [(UILabel *)selfCopy->_secondaryContentLabel setBackgroundColor:?];
    [(UILabel *)selfCopy->_secondaryContentLabel setNumberOfLines:0, MEMORY[0x277D82BD8](clearColor).n128_f64[0]];
    [v58[0] addSubview:selfCopy->_secondaryContentLabel];
    v12 = MEMORY[0x277CCAAD0];
    topAnchor = [(UILabel *)selfCopy->_secondaryContentLabel topAnchor];
    topAnchor2 = [v58[0] topAnchor];
    mEMORY[0x277CF0228]2 = [MEMORY[0x277CF0228] sharedManager];
    if ([mEMORY[0x277CF0228]2 isAuthKitSolariumFeatureEnabled])
    {
      v8 = 0;
    }

    else
    {
      v8 = 15;
    }

    v23 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:v8];
    v61[0] = v23;
    leadingAnchor = [(UILabel *)selfCopy->_secondaryContentLabel leadingAnchor];
    leadingAnchor2 = [v58[0] leadingAnchor];
    v20 = [leadingAnchor constraintEqualToAnchor:?];
    v61[1] = v20;
    trailingAnchor = [(UILabel *)selfCopy->_secondaryContentLabel trailingAnchor];
    trailingAnchor2 = [v58[0] trailingAnchor];
    v17 = [trailingAnchor constraintEqualToAnchor:?];
    v61[2] = v17;
    bottomAnchor = [(UILabel *)selfCopy->_secondaryContentLabel bottomAnchor];
    bottomAnchor2 = [v58[0] bottomAnchor];
    v14 = [bottomAnchor constraintEqualToAnchor:?];
    v61[3] = v14;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v61 count:?];
    [v12 activateConstraints:?];
    MEMORY[0x277D82BD8](v13);
    MEMORY[0x277D82BD8](v14);
    MEMORY[0x277D82BD8](bottomAnchor2);
    MEMORY[0x277D82BD8](bottomAnchor);
    MEMORY[0x277D82BD8](v17);
    MEMORY[0x277D82BD8](trailingAnchor2);
    MEMORY[0x277D82BD8](trailingAnchor);
    MEMORY[0x277D82BD8](v20);
    MEMORY[0x277D82BD8](leadingAnchor2);
    MEMORY[0x277D82BD8](leadingAnchor);
    MEMORY[0x277D82BD8](v23);
    MEMORY[0x277D82BD8](mEMORY[0x277CF0228]2);
    MEMORY[0x277D82BD8](topAnchor2);
    *&v9 = MEMORY[0x277D82BD8](topAnchor).n128_u64[0];
    [v58[0] setTranslatesAutoresizingMaskIntoConstraints:{0, v9}];
    secondaryContentView = [(AKProximityAuthViewController *)selfCopy secondaryContentView];
    [secondaryContentView addSubview:v58[0]];
    *&v10 = MEMORY[0x277D82BD8](secondaryContentView).n128_u64[0];
    v28 = MEMORY[0x277CCAAD0];
    leadingAnchor3 = [v58[0] leadingAnchor];
    secondaryContentView2 = [(AKProximityAuthViewController *)selfCopy secondaryContentView];
    leadingAnchor4 = [secondaryContentView2 leadingAnchor];
    v42 = [leadingAnchor3 constraintEqualToAnchor:?];
    v60[0] = v42;
    trailingAnchor3 = [v58[0] trailingAnchor];
    secondaryContentView3 = [(AKProximityAuthViewController *)selfCopy secondaryContentView];
    trailingAnchor4 = [secondaryContentView3 trailingAnchor];
    v38 = [trailingAnchor3 constraintEqualToAnchor:?];
    v60[1] = v38;
    topAnchor3 = [v58[0] topAnchor];
    secondaryContentView4 = [(AKProximityAuthViewController *)selfCopy secondaryContentView];
    topAnchor4 = [secondaryContentView4 topAnchor];
    v34 = [topAnchor3 constraintEqualToAnchor:?];
    v60[2] = v34;
    bottomAnchor3 = [v58[0] bottomAnchor];
    secondaryContentView5 = [(AKProximityAuthViewController *)selfCopy secondaryContentView];
    bottomAnchor4 = [secondaryContentView5 bottomAnchor];
    v30 = [bottomAnchor3 constraintEqualToAnchor:?];
    v60[3] = v30;
    v29 = [MEMORY[0x277CBEA60] arrayWithObjects:v60 count:4];
    [v28 activateConstraints:?];
    MEMORY[0x277D82BD8](v29);
    MEMORY[0x277D82BD8](v30);
    MEMORY[0x277D82BD8](bottomAnchor4);
    MEMORY[0x277D82BD8](secondaryContentView5);
    MEMORY[0x277D82BD8](bottomAnchor3);
    MEMORY[0x277D82BD8](v34);
    MEMORY[0x277D82BD8](topAnchor4);
    MEMORY[0x277D82BD8](secondaryContentView4);
    MEMORY[0x277D82BD8](topAnchor3);
    MEMORY[0x277D82BD8](v38);
    MEMORY[0x277D82BD8](trailingAnchor4);
    MEMORY[0x277D82BD8](secondaryContentView3);
    MEMORY[0x277D82BD8](trailingAnchor3);
    MEMORY[0x277D82BD8](v42);
    MEMORY[0x277D82BD8](leadingAnchor4);
    MEMORY[0x277D82BD8](secondaryContentView2);
    MEMORY[0x277D82BD8](leadingAnchor3);
    objc_storeStrong(v58, 0);
  }

  *MEMORY[0x277D85DE8];
}

- (void)_addPrivacyLinkController
{
  v9[1] = *MEMORY[0x277D85DE8];
  viewModel = [(AKProximityAuthViewController *)self viewModel];
  type = [(AKProximityMessageViewModel *)viewModel type];
  *&v2 = MEMORY[0x277D82BD8](viewModel).n128_u64[0];
  if (type)
  {
    buttonTray = [(AKProximityAuthViewController *)self buttonTray];
    [buttonTray setPrivacyLinkController:0];
    MEMORY[0x277D82BD8](buttonTray);
  }

  else
  {
    buttonTray2 = [(AKProximityAuthViewController *)self buttonTray];
    v9[0] = @"com.apple.onboarding.appleid";
    v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
    [buttonTray2 setPrivacyLinkForBundles:?];
    MEMORY[0x277D82BD8](v4);
    MEMORY[0x277D82BD8](buttonTray2);
  }

  *MEMORY[0x277D85DE8];
}

- (AKProximityViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end