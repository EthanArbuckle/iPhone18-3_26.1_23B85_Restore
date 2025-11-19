@interface AKProximityAuthViewController
- (AKProximityAuthViewController)initWithViewModel:(id)a3;
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
- (void)_cancelBarButtonItemPressed:(id)a3;
- (void)_cleanupOldViews;
- (void)_configureViews;
- (void)_createPlayer;
- (void)_primaryFallbackButtonSelected:(id)a3;
- (void)_secondaryFallbackButtonSelected:(id)a3;
- (void)_showBroadcastingContent;
- (void)_showPinCode;
- (void)_showVisualPairingContent;
- (void)_start;
- (void)_stopPairingInterface;
- (void)_updatePlayerIfNeeded;
- (void)_videoReachedEnd:(id)a3;
- (void)dealloc;
- (void)didBecomeActive:(id)a3;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateViewWithViewModel:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)a3;
- (void)willResignActive:(id)a3;
@end

@implementation AKProximityAuthViewController

- (AKProximityAuthViewController)initWithViewModel:(id)a3
{
  v18 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if ([location[0] type] == 5)
  {
    v11 = v18;
    v13 = [location[0] titleText];
    v12 = [location[0] detailedText];
    v18 = 0;
    v16.receiver = v11;
    v16.super_class = AKProximityAuthViewController;
    v14 = [AKProximityAuthViewController initWithTitle:sel_initWithTitle_detailText_icon_contentLayout_ detailText:v13 icon:? contentLayout:?];
    v18 = v14;
    objc_storeStrong(&v18, v14);
    MEMORY[0x277D82BD8](v12);
    *&v3 = MEMORY[0x277D82BD8](v13).n128_u64[0];
    if (v14)
    {
      [(AKProximityAuthViewController *)v18 setViewModel:location[0], v3];
    }
  }

  else
  {
    v7 = v18;
    v9 = [location[0] titleText];
    v8 = [location[0] detailedText];
    v18 = 0;
    v15.receiver = v7;
    v15.super_class = AKProximityAuthViewController;
    v10 = [AKProximityAuthViewController initWithTitle:sel_initWithTitle_detailText_icon_ detailText:v9 icon:?];
    v18 = v10;
    objc_storeStrong(&v18, v10);
    MEMORY[0x277D82BD8](v8);
    *&v4 = MEMORY[0x277D82BD8](v9).n128_u64[0];
    if (v10)
    {
      [(AKProximityAuthViewController *)v18 setViewModel:location[0], v4];
    }
  }

  v6 = MEMORY[0x277D82BE0](v18);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v18, 0);
  return v6;
}

- (void)updateViewWithViewModel:(id)a3
{
  v13 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (v13->_proximityMicaView)
  {
    [(AKBringDeviceCloseMicaView *)v13->_proximityMicaView setShouldshowDotCloud:1];
  }

  [(AKProximityAuthViewController *)v13 setViewModel:location[0]];
  v8 = [location[0] detailedText];
  v7 = [(AKProximityAuthViewController *)v13 headerView];
  [v7 setDetailText:v8];
  MEMORY[0x277D82BD8](v7);
  *&v3 = MEMORY[0x277D82BD8](v8).n128_u64[0];
  v10 = [location[0] titleText];
  v9 = [(AKProximityAuthViewController *)v13 headerView];
  [v9 setTitle:v10];
  MEMORY[0x277D82BD8](v9);
  *&v4 = MEMORY[0x277D82BD8](v10).n128_u64[0];
  v11 = [(AKProximityAuthViewController *)v13 buttonTray];
  [v11 removeAllButtons];
  *&v5 = MEMORY[0x277D82BD8](v11).n128_u64[0];
  [(AKProximityAuthViewController *)v13 _configureViews];
  if ([location[0] type] == 1)
  {
    [(AKProximityAuthViewController *)v13 _start];
    objc_storeStrong(&v13->_proximityMicaView, 0);
  }

  else
  {
    [(AKProximityAuthViewController *)v13 _stop];
  }

  v6 = [(AKProximityAuthViewController *)v13 view];
  [v6 layoutIfNeeded];
  MEMORY[0x277D82BD8](v6);
  objc_storeStrong(location, 0);
}

- (void)dealloc
{
  v15 = self;
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
  v5 = [(AKProximityAuthViewController *)v15 videoPlayer];
  [(AVPlayer *)v5 removeObserver:v15 forKeyPath:@"status"];
  *&v2 = MEMORY[0x277D82BD8](v5).n128_u64[0];
  if (v15->_deallocAction)
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
    (*(v15->_deallocAction + 2))();
  }

  v8.receiver = v15;
  v8.super_class = AKProximityAuthViewController;
  [(AKProximityAuthViewController *)&v8 dealloc:v2];
}

- (void)viewDidLoad
{
  v10 = self;
  v9 = a2;
  v8.receiver = self;
  v8.super_class = AKProximityAuthViewController;
  [(OBBaseWelcomeController *)&v8 viewDidLoad];
  [(AKProximityAuthViewController *)v10 _configureViews];
  v7 = [MEMORY[0x277D75348] systemBackgroundColor];
  v6 = [(AKProximityAuthViewController *)v10 view];
  [v6 setBackgroundColor:v7];
  MEMORY[0x277D82BD8](v6);
  *&v2 = MEMORY[0x277D82BD8](v7).n128_u64[0];
  if ([(AKProximityMessageViewModel *)v10->_viewModel type]!= 5)
  {
    v4 = [MEMORY[0x277D75418] currentDevice];
    v5 = [v4 userInterfaceIdiom];
    *&v3 = MEMORY[0x277D82BD8](v4).n128_u64[0];
    if (v5 == 1)
    {
      [(AKProximityAuthViewController *)v10 setEdgesForExtendedLayout:15, v3];
    }

    else
    {
      [(AKProximityAuthViewController *)v10 setEdgesForExtendedLayout:0, v3];
    }
  }
}

- (void)viewDidAppear:(BOOL)a3
{
  v12 = self;
  v11 = a2;
  v10 = a3;
  v9.receiver = self;
  v9.super_class = AKProximityAuthViewController;
  [(OBBaseWelcomeController *)&v9 viewDidAppear:a3];
  v7 = 0;
  LOBYTE(v6) = 0;
  if ([(AKProximityMessageViewModel *)v12->_viewModel type]== 5)
  {
    v8 = [MEMORY[0x277CF0228] sharedManager];
    v7 = 1;
    v6 = [v8 isAuthKitSolariumFeatureEnabled] ^ 1;
  }

  if (v7)
  {
    MEMORY[0x277D82BD8](v8);
  }

  if (v6)
  {
    v5 = [MEMORY[0x277D75348] systemGray6Color];
    v4 = [(AKProximityAuthViewController *)v12 navigationController];
    v3 = [v4 navigationBar];
    [v3 setBackgroundColor:v5];
    MEMORY[0x277D82BD8](v3);
    MEMORY[0x277D82BD8](v4);
    MEMORY[0x277D82BD8](v5);
  }

  if ([(AKProximityAuthViewController *)v12 _shouldShowVisualPairing])
  {
    [(AKProximityAuthViewController *)v12 _start];
  }
}

- (void)viewWillDisappear:(BOOL)a3
{
  v12 = self;
  v11 = a2;
  v10 = a3;
  v9.receiver = self;
  v9.super_class = AKProximityAuthViewController;
  [(OBBaseWelcomeController *)&v9 viewWillDisappear:a3];
  v7 = [MEMORY[0x277CF0228] sharedManager];
  v8 = [v7 isAuthKitSolariumFeatureEnabled];
  *&v3 = MEMORY[0x277D82BD8](v7).n128_u64[0];
  if ((v8 & 1) == 0)
  {
    v6 = [MEMORY[0x277D75348] systemBackgroundColor];
    v5 = [(AKProximityAuthViewController *)v12 navigationController];
    v4 = [v5 navigationBar];
    [v4 setBackgroundColor:v6];
    MEMORY[0x277D82BD8](v4);
    MEMORY[0x277D82BD8](v5);
    MEMORY[0x277D82BD8](v6);
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

- (void)traitCollectionDidChange:(id)a3
{
  v5 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3.receiver = v5;
  v3.super_class = AKProximityAuthViewController;
  [(AKProximityAuthViewController *)&v3 traitCollectionDidChange:location[0]];
  [(AKProximityAuthViewController *)v5 _updatePlayerIfNeeded];
  objc_storeStrong(location, 0);
}

- (BOOL)_doesUserInterfaceStyleMatchMovieURL
{
  v10 = self;
  v9[1] = a2;
  v5 = [(AKProximityAuthViewController *)self _currentPairingMovieURL];
  v4 = [v5 URLByDeletingPathExtension];
  v9[0] = [v4 lastPathComponent];
  MEMORY[0x277D82BD8](v4);
  *&v2 = MEMORY[0x277D82BD8](v5).n128_u64[0];
  v6 = v9[0];
  v7 = [(AKProximityAuthViewController *)v10 _pairingMovieName];
  v8 = [v6 isEqualToString:?];
  MEMORY[0x277D82BD8](v7);
  objc_storeStrong(v9, 0);
  return v8;
}

- (BOOL)_shouldShowVisualPairing
{
  v3 = [(AKProximityAuthViewController *)self viewModel];
  v4 = [(AKProximityMessageViewModel *)v3 type]== 1;
  MEMORY[0x277D82BD8](v3);
  return v4;
}

- (void)didBecomeActive:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if ([(AKProximityAuthViewController *)v4 _started])
  {
    [(AKProximityAuthViewController *)v4 _start];
  }

  objc_storeStrong(location, 0);
}

- (void)willResignActive:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [(AKProximityAuthViewController *)v4 _stopPairingInterface];
  objc_storeStrong(location, 0);
}

- (void)_createPlayer
{
  v42 = self;
  v41 = a2;
  v23 = objc_alloc(MEMORY[0x277CE6598]);
  v25 = [(AKProximityAuthViewController *)v42 _pairingMoviePlayerItem];
  v24 = [v23 initWithPlayerItem:?];
  [(AKProximityAuthViewController *)v42 setVideoPlayer:?];
  MEMORY[0x277D82BD8](v24);
  v26 = [(AKProximityAuthViewController *)v42 videoPlayer];
  [(AVPlayer *)v26 setMuted:1];
  v27 = [(AKProximityAuthViewController *)v42 videoPlayer];
  [(AVPlayer *)v27 addObserver:v42 forKeyPath:@"status" options:0 context:?];
  v31 = [MEMORY[0x277CCAB98] defaultCenter];
  v28 = *MEMORY[0x277CE60C0];
  v30 = [(AKProximityAuthViewController *)v42 videoPlayer];
  v29 = [(AVPlayer *)v30 currentItem];
  [v31 addObserver:v42 selector:sel__videoReachedEnd_ name:v28 object:?];
  MEMORY[0x277D82BD8](v29);
  MEMORY[0x277D82BD8](v30);
  MEMORY[0x277D82BD8](v31);
  if (AVKitLibraryCore(0))
  {
    v2 = objc_alloc_init(getAVPlayerViewControllerClass());
  }

  else
  {
    v2 = objc_alloc_init(0);
  }

  v11 = v2;
  [(AKProximityAuthViewController *)v42 setVideoViewController:?];
  MEMORY[0x277D82BD8](v11);
  CGRectMake_9();
  *&v39 = v3;
  *(&v39 + 1) = v4;
  *&v40 = v5;
  *(&v40 + 1) = v6;
  v13 = [(AKProximityAuthViewController *)v42 videoViewController];
  v12 = [(AVPlayerViewController *)v13 view];
  v37 = v39;
  v38 = v40;
  [v12 setFrame:{v39, v40}];
  MEMORY[0x277D82BD8](v12);
  v14 = [(AKProximityAuthViewController *)v42 videoViewController];
  [(AVPlayerViewController *)v14 setUpdatesNowPlayingInfoCenter:0];
  v16 = [(AKProximityAuthViewController *)v42 videoPlayer];
  v15 = [(AKProximityAuthViewController *)v42 videoViewController];
  [(AVPlayerViewController *)v15 setPlayer:v16];
  MEMORY[0x277D82BD8](v15);
  v17 = [(AKProximityAuthViewController *)v42 videoViewController];
  [(AVPlayerViewController *)v17 setShowsPlaybackControls:0];
  v18 = [(AKProximityAuthViewController *)v42 videoViewController];
  [(AVPlayerViewController *)v18 setAllowsPictureInPicturePlayback:0];
  v20 = [(AKProximityAuthViewController *)v42 videoViewController];
  v19 = [(AVPlayerViewController *)v20 view];
  [v19 setContentMode:1];
  MEMORY[0x277D82BD8](v19);
  v22 = [(AKProximityAuthViewController *)v42 videoViewController];
  v21 = [(AVPlayerViewController *)v22 view];
  [v21 setTranslatesAutoresizingMaskIntoConstraints:0];
  MEMORY[0x277D82BD8](v21);
  v34 = 0;
  v32 = 0;
  if ([(AKProximityAuthViewController *)v42 _isDarkMode])
  {
    v35 = [(AKProximityAuthViewController *)v42 _pairingBackgroundColor];
    v34 = 1;
    v7 = MEMORY[0x277D82BE0](v35);
  }

  else
  {
    v33 = [MEMORY[0x277D75348] clearColor];
    v32 = 1;
    v7 = MEMORY[0x277D82BE0](v33);
  }

  v36 = v7;
  if (v32)
  {
    MEMORY[0x277D82BD8](v33);
  }

  if (v34)
  {
    MEMORY[0x277D82BD8](v35);
  }

  v8 = v36;
  v10 = [(AKProximityAuthViewController *)v42 videoViewController];
  v9 = [(AVPlayerViewController *)v10 view];
  [v9 setBackgroundColor:v8];
  MEMORY[0x277D82BD8](v9);
  MEMORY[0x277D82BD8](v10);
  objc_storeStrong(&v36, 0);
}

- (id)_pairingMoviePlayerItem
{
  v3 = MEMORY[0x277CE65B0];
  v4 = [(AKProximityAuthViewController *)self _pairingMovieURLAsset];
  v5 = [v3 playerItemWithAsset:?];
  MEMORY[0x277D82BD8](v4);

  return v5;
}

- (id)_pairingMovieURLAsset
{
  v11 = self;
  v10[1] = a2;
  v10[0] = [MEMORY[0x277CCA8D8] bundleWithPath:@"/System/Library/PrivateFrameworks/AuthKitUI.framework"];
  v5 = objc_alloc(MEMORY[0x277CE6650]);
  v4 = MEMORY[0x277CBEBC0];
  v3 = v10[0];
  v8 = [(AKProximityAuthViewController *)v11 _pairingMovieName];
  v7 = [v3 pathForResource:? ofType:?];
  v6 = [v4 fileURLWithPath:?];
  v9 = [v5 initWithURL:? options:?];
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BD8](v7);
  MEMORY[0x277D82BD8](v8);
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
  v4 = [(AKProximityAuthViewController *)self visualPairingView];
  v3 = [(AKProximityAuthViewController *)self videoViewController];
  v2 = [(AVPlayerViewController *)v3 view];
  [(VPPresenterView *)v4 addSubview:?];
  MEMORY[0x277D82BD8](v2);
  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](v4);
}

- (void)_updatePlayerIfNeeded
{
  if ([(AKProximityMessageViewModel *)self->_viewModel type]== 1 && ![(AKProximityAuthViewController *)self _doesUserInterfaceStyleMatchMovieURL])
  {
    v3 = [(AKProximityAuthViewController *)self videoPlayer];
    v2 = [(AKProximityAuthViewController *)self _pairingMoviePlayerItem];
    [(AVPlayer *)v3 replaceCurrentItemWithPlayerItem:?];
    MEMORY[0x277D82BD8](v2);
    MEMORY[0x277D82BD8](v3);
  }
}

- (id)_currentPairingMovieURL
{
  v11[2] = self;
  v11[1] = a2;
  v7 = [(AKProximityAuthViewController *)self videoPlayer];
  v6 = [(AVPlayer *)v7 currentItem];
  v11[0] = [(AVPlayerItem *)v6 asset];
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BD8](v7);
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
    v2 = [(AKProximityAuthViewController *)self visualPairingView];
    [(VPPresenterView *)v2 start];
    v3 = [(AKProximityAuthViewController *)self videoPlayer];
    [(AVPlayer *)v3 play];
    MEMORY[0x277D82BD8](v3);
  }
}

- (void)_videoReachedEnd:(id)a3
{
  v9 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v4 = [(AKProximityAuthViewController *)v9 videoPlayer];
  v6 = *MEMORY[0x277CC08F0];
  v7 = *(MEMORY[0x277CC08F0] + 16);
  [(AVPlayer *)v4 seekToTime:&v6];
  *&v3 = MEMORY[0x277D82BD8](v4).n128_u64[0];
  v5 = [(AKProximityAuthViewController *)v9 videoPlayer];
  [(AVPlayer *)v5 play];
  MEMORY[0x277D82BD8](v5);
  objc_storeStrong(location, 0);
}

- (void)_stopPairingInterface
{
  v2 = [(AKProximityAuthViewController *)self visualPairingView];
  [(VPPresenterView *)v2 stop];
  v3 = [(AKProximityAuthViewController *)self videoPlayer];
  [(AVPlayer *)v3 pause];
  v4 = [MEMORY[0x277CB83F8] sharedInstance];
  [v4 setCategory:*MEMORY[0x277CB8020] error:0];
  MEMORY[0x277D82BD8](v4);
}

- (BOOL)_isDarkMode
{
  v3 = [MEMORY[0x277D75C80] currentTraitCollection];
  v4 = [v3 userInterfaceStyle] == 2;
  MEMORY[0x277D82BD8](v3);
  return v4;
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v27 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v25 = 0;
  objc_storeStrong(&v25, a4);
  v24 = 0;
  objc_storeStrong(&v24, a5);
  v23[1] = a6;
  v15 = v25;
  v16 = [(AKProximityAuthViewController *)v27 videoPlayer];
  LOBYTE(v17) = 0;
  if (v15 == v16)
  {
    LOBYTE(v17) = 0;
    if ([location[0] isEqualToString:@"status"])
    {
      v17 = ![(AKProximityAuthViewController *)v27 _started];
    }
  }

  *&v6 = MEMORY[0x277D82BD8](v16).n128_u64[0];
  if (v17)
  {
    v10 = [(AKProximityAuthViewController *)v27 videoPlayer];
    v11 = 0;
    if ([(AVPlayer *)v10 status]== AVPlayerStatusFailed)
    {
      v11 = [(AKProximityAuthViewController *)v27 retryAttempts]< 3;
    }

    MEMORY[0x277D82BD8](v10);
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
      v23[0] = MEMORY[0x277D82BE0](v27);
      dispatch_async(queue, &v18);
      MEMORY[0x277D82BD8](queue);
      objc_storeStrong(v23, 0);
    }
  }

  objc_storeStrong(&v24, 0);
  objc_storeStrong(&v25, 0);
  objc_storeStrong(location, 0);
}

- (void)_cancelBarButtonItemPressed:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (v4->_cancelAction)
  {
    (*(v4->_cancelAction + 2))();
  }

  objc_storeStrong(location, 0);
}

- (void)_primaryFallbackButtonSelected:(id)a3
{
  v9 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
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
  if (v9->_primaryButtonAction)
  {
    (*(v9->_primaryButtonAction + 2))();
  }

  objc_storeStrong(location, 0);
}

- (void)_secondaryFallbackButtonSelected:(id)a3
{
  v9 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
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
  if (v9->_alternateButtonAction)
  {
    (*(v9->_alternateButtonAction + 2))();
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
  v4 = self;
  v3[1] = a2;
  v3[0] = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:24 target:self action:sel__cancelBarButtonItemPressed_];
  v2 = [(OBBaseWelcomeController *)v4 navigationItem];
  [v2 setRightBarButtonItem:v3[0]];
  MEMORY[0x277D82BD8](v2);
  objc_storeStrong(v3, 0);
}

- (void)_cleanupOldViews
{
  v17 = *MEMORY[0x277D85DE8];
  v15 = self;
  v14 = a2;
  if (self->_primaryButton)
  {
    v11 = [(AKProximityAuthViewController *)v15 buttonTray];
    [v11 removeButton:v15->_primaryButton];
    MEMORY[0x277D82BD8](v11);
    objc_storeStrong(&v15->_primaryButton, 0);
  }

  if (v15->_secondaryButton)
  {
    v10 = [(AKProximityAuthViewController *)v15 buttonTray];
    [v10 removeButton:v15->_secondaryButton];
    MEMORY[0x277D82BD8](v10);
    objc_storeStrong(&v15->_secondaryButton, 0);
  }

  v9 = [(AKProximityAuthViewController *)v15 contentView];
  MEMORY[0x277D82BD8](v9);
  if (v9)
  {
    memset(__b, 0, sizeof(__b));
    v6 = [(AKProximityAuthViewController *)v15 contentView];
    obj = [v6 subviews];
    v8 = [obj countByEnumeratingWithState:__b objects:v16 count:{16, MEMORY[0x277D82BD8](v6).n128_f64[0]}];
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
  v11 = [(AKProximityAuthViewController *)self viewModel];
  v12 = [(AKProximityMessageViewModel *)v11 primaryButtonTitle];
  MEMORY[0x277D82BD8](v12);
  *&v2 = MEMORY[0x277D82BD8](v11).n128_u64[0];
  if (v12)
  {
    v3 = [MEMORY[0x277D37618] boldButton];
    primaryButton = self->_primaryButton;
    self->_primaryButton = v3;
    *&v5 = MEMORY[0x277D82BD8](primaryButton).n128_u64[0];
    v6 = self->_primaryButton;
    v8 = [(AKProximityAuthViewController *)self viewModel];
    v7 = [(AKProximityMessageViewModel *)v8 primaryButtonTitle];
    [OBTrayButton setTitle:v6 forState:"setTitle:forState:"];
    MEMORY[0x277D82BD8](v7);
    v9 = [MEMORY[0x277D75230] plainButtonConfiguration];
    [(OBTrayButton *)self->_primaryButton setConfiguration:?];
    [(OBTrayButton *)self->_primaryButton addTarget:self action:sel__primaryFallbackButtonSelected_ forControlEvents:64, MEMORY[0x277D82BD8](v9).n128_f64[0]];
    v10 = [(AKProximityAuthViewController *)self buttonTray];
    [v10 addButton:self->_primaryButton];
    MEMORY[0x277D82BD8](v10);
  }
}

- (void)_addSecondaryButton
{
  v15 = [(AKProximityAuthViewController *)self viewModel];
  v16 = [(AKProximityMessageViewModel *)v15 secondaryButtonTitle];
  MEMORY[0x277D82BD8](v16);
  *&v2 = MEMORY[0x277D82BD8](v15).n128_u64[0];
  if (v16)
  {
    v3 = [MEMORY[0x277D37650] linkButton];
    secondaryButton = self->_secondaryButton;
    self->_secondaryButton = v3;
    *&v5 = MEMORY[0x277D82BD8](secondaryButton).n128_u64[0];
    v10 = self->_secondaryButton;
    v12 = [(AKProximityAuthViewController *)self viewModel];
    v11 = [(AKProximityMessageViewModel *)v12 secondaryButtonTitle];
    [OBTrayButton setTitle:v10 forState:"setTitle:forState:"];
    MEMORY[0x277D82BD8](v11);
    [(OBTrayButton *)self->_secondaryButton addTarget:self action:sel__secondaryFallbackButtonSelected_ forControlEvents:64, MEMORY[0x277D82BD8](v12).n128_f64[0]];
    v13 = [MEMORY[0x277CF0228] sharedManager];
    v14 = [v13 isAuthKitSolariumFeatureEnabled];
    v6 = MEMORY[0x277D82BD8](v13).n128_u64[0];
    if (v14)
    {
      v9 = [MEMORY[0x277D75348] systemGray6Color];
      [(OBTrayButton *)self->_secondaryButton setTintColor:?];
      v6 = MEMORY[0x277D82BD8](v9).n128_u64[0];
    }

    v8 = [(AKProximityAuthViewController *)self buttonTray];
    [v8 addButton:self->_secondaryButton];
    MEMORY[0x277D82BD8](v8);
  }

  else
  {
    objc_storeStrong(&self->_secondaryButton, 0);
    v7 = [(AKProximityAuthViewController *)self buttonTray];
    [v7 removeButton:self->_secondaryButton];
    MEMORY[0x277D82BD8](v7);
  }
}

- (void)_addHeaderView
{
  v52[8] = *MEMORY[0x277D85DE8];
  v51 = self;
  location[1] = a2;
  if ([(AKProximityMessageViewModel *)self->_viewModel showHeaderView])
  {
    if ([(AKProximityMessageViewModel *)v51->_viewModel type]== 5)
    {
      [(AKProximityAuthViewController *)v51 _addChildSetupImageView];
    }

    else
    {
      v11 = [(AKProximityAuthViewController *)v51 headerView];
      [v11 layoutIfNeeded];
      MEMORY[0x277D82BD8](v11);
      v2 = objc_alloc_init(MEMORY[0x277D75D18]);
      logoContainerView = v51->_logoContainerView;
      v51->_logoContainerView = v2;
      MEMORY[0x277D82BD8](logoContainerView);
      CGRectMake_9();
      [(UIView *)v51->_logoContainerView setFrame:v4, v5, v6, v7];
      [(UIView *)v51->_logoContainerView setTranslatesAutoresizingMaskIntoConstraints:0];
      v8 = objc_alloc_init(AKAppleLogoMicaView);
      appleLogoMicaView = v51->_appleLogoMicaView;
      v51->_appleLogoMicaView = v8;
      [(AKAppleLogoMicaView *)v51->_appleLogoMicaView setTranslatesAutoresizingMaskIntoConstraints:0, MEMORY[0x277D82BD8](appleLogoMicaView).n128_f64[0]];
      [(UIView *)v51->_logoContainerView addSubview:v51->_appleLogoMicaView];
      v13 = [(AKProximityAuthViewController *)v51 headerView];
      v12 = [v13 animationView];
      [v12 addSubview:v51->_logoContainerView];
      MEMORY[0x277D82BD8](v12);
      v15 = [(AKProximityAuthViewController *)v51 headerView];
      v14 = [v15 animationView];
      [v14 setTranslatesAutoresizingMaskIntoConstraints:0];
      MEMORY[0x277D82BD8](v14);
      v17 = [(AKProximityAuthViewController *)v51 headerView];
      v16 = [v17 animationView];
      [v16 setClipsToBounds:1];
      MEMORY[0x277D82BD8](v16);
      *&v10 = MEMORY[0x277D82BD8](v17).n128_u64[0];
      v18 = MEMORY[0x277CCAAD0];
      v45 = [(UIView *)v51->_logoContainerView centerXAnchor];
      v44 = [(AKProximityAuthViewController *)v51 headerView];
      v43 = [v44 animationView];
      v42 = [v43 centerXAnchor];
      v41 = [(NSLayoutXAxisAnchor *)v45 constraintEqualToAnchor:?];
      v52[0] = v41;
      v40 = [(UIView *)v51->_logoContainerView centerYAnchor];
      v39 = [(AKProximityAuthViewController *)v51 headerView];
      v38 = [v39 animationView];
      v37 = [v38 centerYAnchor];
      v36 = [(NSLayoutYAxisAnchor *)v40 constraintEqualToAnchor:?];
      v52[1] = v36;
      v35 = [(UIView *)v51->_logoContainerView heightAnchor];
      v34 = [(NSLayoutDimension *)v35 constraintEqualToConstant:373.0];
      v52[2] = v34;
      v33 = [(UIView *)v51->_logoContainerView widthAnchor];
      v32 = [(NSLayoutDimension *)v33 constraintEqualToConstant:373.0];
      v52[3] = v32;
      v31 = [(AKAppleLogoMicaView *)v51->_appleLogoMicaView topAnchor];
      v30 = [(UIView *)v51->_logoContainerView topAnchor];
      v29 = [v31 constraintEqualToAnchor:?];
      v52[4] = v29;
      v28 = [(AKAppleLogoMicaView *)v51->_appleLogoMicaView bottomAnchor];
      v27 = [(UIView *)v51->_logoContainerView bottomAnchor];
      v26 = [v28 constraintEqualToAnchor:?];
      v52[5] = v26;
      v25 = [(AKAppleLogoMicaView *)v51->_appleLogoMicaView leadingAnchor];
      v24 = [(UIView *)v51->_logoContainerView leadingAnchor];
      v23 = [v25 constraintEqualToAnchor:?];
      v52[6] = v23;
      v22 = [(AKAppleLogoMicaView *)v51->_appleLogoMicaView trailingAnchor];
      v21 = [(UIView *)v51->_logoContainerView trailingAnchor];
      v20 = [v22 constraintEqualToAnchor:?];
      v52[7] = v20;
      v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v52 count:8];
      [v18 activateConstraints:?];
      MEMORY[0x277D82BD8](v19);
      MEMORY[0x277D82BD8](v20);
      MEMORY[0x277D82BD8](v21);
      MEMORY[0x277D82BD8](v22);
      MEMORY[0x277D82BD8](v23);
      MEMORY[0x277D82BD8](v24);
      MEMORY[0x277D82BD8](v25);
      MEMORY[0x277D82BD8](v26);
      MEMORY[0x277D82BD8](v27);
      MEMORY[0x277D82BD8](v28);
      MEMORY[0x277D82BD8](v29);
      MEMORY[0x277D82BD8](v30);
      MEMORY[0x277D82BD8](v31);
      MEMORY[0x277D82BD8](v32);
      MEMORY[0x277D82BD8](v33);
      MEMORY[0x277D82BD8](v34);
      MEMORY[0x277D82BD8](v35);
      MEMORY[0x277D82BD8](v36);
      MEMORY[0x277D82BD8](v37);
      MEMORY[0x277D82BD8](v38);
      MEMORY[0x277D82BD8](v39);
      MEMORY[0x277D82BD8](v40);
      MEMORY[0x277D82BD8](v41);
      MEMORY[0x277D82BD8](v42);
      MEMORY[0x277D82BD8](v43);
      MEMORY[0x277D82BD8](v44);
      MEMORY[0x277D82BD8](v45);
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
  v27 = self;
  v26[1] = a2;
  v2 = [AKChildSetupTwoDeviceProxView alloc];
  v26[0] = [(AKChildSetupTwoDeviceProxView *)v2 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  [v26[0] setTranslatesAutoresizingMaskIntoConstraints:0];
  v5 = [(AKProximityAuthViewController *)v27 contentView];
  [v5 addSubview:v26[0]];
  *&v3 = MEMORY[0x277D82BD8](v5).n128_u64[0];
  v7 = [v26[0] backgroundColor];
  v6 = [(AKProximityAuthViewController *)v27 contentView];
  [v6 setBackgroundColor:v7];
  MEMORY[0x277D82BD8](v6);
  *&v4 = MEMORY[0x277D82BD8](v7).n128_u64[0];
  v8 = MEMORY[0x277CCAAD0];
  v25 = [(AKProximityAuthViewController *)v27 contentView];
  v24 = [v25 leftAnchor];
  v23 = [v26[0] leftAnchor];
  v22 = [v24 constraintEqualToAnchor:?];
  v28[0] = v22;
  v21 = [(AKProximityAuthViewController *)v27 contentView];
  v20 = [v21 topAnchor];
  v19 = [v26[0] topAnchor];
  v18 = [v20 constraintEqualToAnchor:?];
  v28[1] = v18;
  v17 = [(AKProximityAuthViewController *)v27 contentView];
  v16 = [v17 rightAnchor];
  v15 = [v26[0] rightAnchor];
  v14 = [v16 constraintEqualToAnchor:?];
  v28[2] = v14;
  v13 = [(AKProximityAuthViewController *)v27 contentView];
  v12 = [v13 bottomAnchor];
  v11 = [v26[0] bottomAnchor];
  v10 = [v12 constraintEqualToAnchor:?];
  v28[3] = v10;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:4];
  [v8 activateConstraints:?];
  MEMORY[0x277D82BD8](v9);
  MEMORY[0x277D82BD8](v10);
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v12);
  MEMORY[0x277D82BD8](v13);
  MEMORY[0x277D82BD8](v14);
  MEMORY[0x277D82BD8](v15);
  MEMORY[0x277D82BD8](v16);
  MEMORY[0x277D82BD8](v17);
  MEMORY[0x277D82BD8](v18);
  MEMORY[0x277D82BD8](v19);
  MEMORY[0x277D82BD8](v20);
  MEMORY[0x277D82BD8](v21);
  MEMORY[0x277D82BD8](v22);
  MEMORY[0x277D82BD8](v23);
  MEMORY[0x277D82BD8](v24);
  MEMORY[0x277D82BD8](v25);
  objc_storeStrong(v26, 0);
  *MEMORY[0x277D85DE8];
}

- (void)_addContentView
{
  v13 = self;
  v12[1] = a2;
  v6 = [(AKProximityMessageViewModel *)self->_viewModel type];
  if (v6)
  {
    if (v6 == 1)
    {
      [(AKProximityAuthViewController *)v13 _showVisualPairingContent];
    }

    else if (v6 == 2)
    {
      [(AKProximityAuthViewController *)v13 _showPinCode];
    }
  }

  else
  {
    [(AKProximityAuthViewController *)v13 _showBroadcastingContent];
  }

  if ([(AKProximityAuthViewController *)v13 _shouldShowVisualPairing])
  {
    v4 = MEMORY[0x277D85CD0];
    v2 = MEMORY[0x277D85CD0];
    queue = v4;
    v7 = MEMORY[0x277D85DD0];
    v8 = -1073741824;
    v9 = 0;
    v10 = __48__AKProximityAuthViewController__addContentView__block_invoke;
    v11 = &unk_2784A5C90;
    v12[0] = MEMORY[0x277D82BE0](v13);
    dispatch_async(queue, &v7);
    MEMORY[0x277D82BD8](queue);
    objc_storeStrong(v12, 0);
  }

  else
  {
    v3 = [(AKProximityAuthViewController *)v13 contentView];
    [v3 layoutIfNeeded];
    MEMORY[0x277D82BD8](v3);
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
  v5 = [(AKProximityAuthViewController *)self contentView];
  [v5 addSubview:self->_proximityMicaView];
  *&v4 = MEMORY[0x277D82BD8](v5).n128_u64[0];
  v6 = MEMORY[0x277CCAAD0];
  v23 = [(AKBringDeviceCloseMicaView *)self->_proximityMicaView heightAnchor];
  v22 = [v23 constraintEqualToConstant:250.0];
  v25[0] = v22;
  v21 = [(AKBringDeviceCloseMicaView *)self->_proximityMicaView widthAnchor];
  v20 = [v21 constraintEqualToConstant:300.0];
  v25[1] = v20;
  v19 = [(AKBringDeviceCloseMicaView *)self->_proximityMicaView centerXAnchor];
  v18 = [(AKProximityAuthViewController *)self contentView];
  v17 = [v18 centerXAnchor];
  v16 = [v19 constraintEqualToAnchor:?];
  v25[2] = v16;
  v15 = [(AKBringDeviceCloseMicaView *)self->_proximityMicaView topAnchor];
  v14 = [(AKProximityAuthViewController *)self contentView];
  v13 = [v14 topAnchor];
  v12 = [v15 constraintEqualToAnchor:?];
  v25[3] = v12;
  v11 = [(AKBringDeviceCloseMicaView *)self->_proximityMicaView bottomAnchor];
  v10 = [(AKProximityAuthViewController *)self contentView];
  v9 = [v10 bottomAnchor];
  v8 = [v11 constraintEqualToAnchor:-30.0 constant:?];
  v25[4] = v8;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:5];
  [v6 activateConstraints:?];
  MEMORY[0x277D82BD8](v7);
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](v9);
  MEMORY[0x277D82BD8](v10);
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v12);
  MEMORY[0x277D82BD8](v13);
  MEMORY[0x277D82BD8](v14);
  MEMORY[0x277D82BD8](v15);
  MEMORY[0x277D82BD8](v16);
  MEMORY[0x277D82BD8](v17);
  MEMORY[0x277D82BD8](v18);
  MEMORY[0x277D82BD8](v19);
  MEMORY[0x277D82BD8](v20);
  MEMORY[0x277D82BD8](v21);
  MEMORY[0x277D82BD8](v22);
  MEMORY[0x277D82BD8](v23);
  *MEMORY[0x277D85DE8];
}

- (void)_showVisualPairingContent
{
  v66[5] = *MEMORY[0x277D85DE8];
  v65 = self;
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
  [(AKProximityAuthViewController *)v65 setVisualPairingView:?];
  *&v7 = MEMORY[0x277D82BD8](v15).n128_u64[0];
  verificationCode = v65->_verificationCode;
  v17 = [(AKProximityAuthViewController *)v65 visualPairingView];
  [(VPPresenterView *)v17 setVerificationCode:verificationCode];
  v18 = [(AKProximityAuthViewController *)v65 visualPairingView];
  [(VPPresenterView *)v18 setTranslatesAutoresizingMaskIntoConstraints:0];
  v22 = [(AKProximityAuthViewController *)v65 _pairingBackgroundColor];
  v8 = v22;
  v19 = [v22 CGColor];
  v21 = [(AKProximityAuthViewController *)v65 visualPairingView];
  v20 = [(VPPresenterView *)v21 layer];
  [v20 setBackgroundColor:v19];
  MEMORY[0x277D82BD8](v20);
  MEMORY[0x277D82BD8](v21);
  v23 = [(AKProximityAuthViewController *)v65 _pairingFlags];
  v24 = [(AKProximityAuthViewController *)v65 visualPairingView];
  [(VPPresenterView *)v24 setFlags:v23];
  v64[0] = [MEMORY[0x277CCA8D8] bundleWithPath:{@"/System/Library/PrivateFrameworks/AuthKitUI.framework", MEMORY[0x277D82BD8](v24).n128_f64[0]}];
  v25 = MEMORY[0x277D755B8];
  v26 = [v64[0] pathForResource:@"ProximityPairingMask" ofType:@".png"];
  v63 = [v25 imageWithContentsOfFile:?];
  MEMORY[0x277D82BD8](v26);
  v62 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v63];
  [v62 setContentMode:1];
  [v62 setTranslatesAutoresizingMaskIntoConstraints:0];
  v30 = [MEMORY[0x277D75348] clearColor];
  v9 = v30;
  v27 = [v30 CGColor];
  v29 = [(AKProximityAuthViewController *)v65 contentView];
  v28 = [v29 layer];
  [v28 setBackgroundColor:v27];
  MEMORY[0x277D82BD8](v28);
  MEMORY[0x277D82BD8](v29);
  v31 = [(AKProximityAuthViewController *)v65 visualPairingView];
  [(VPPresenterView *)v31 setMaskView:v62];
  [(AKProximityAuthViewController *)v65 _createPlayer];
  [(AKProximityAuthViewController *)v65 setRetryAttempts:0];
  [(AKProximityAuthViewController *)v65 _addPlayer];
  v33 = [(AKProximityAuthViewController *)v65 visualPairingView];
  v32 = [(VPPresenterView *)v33 layer];
  LODWORD(v10) = 1008981770;
  [v32 setOpacity:v10];
  MEMORY[0x277D82BD8](v32);
  v35 = [(AKProximityAuthViewController *)v65 contentView];
  v34 = [(AKProximityAuthViewController *)v65 visualPairingView];
  [v35 addSubview:?];
  MEMORY[0x277D82BD8](v34);
  *&v11 = MEMORY[0x277D82BD8](v35).n128_u64[0];
  v36 = MEMORY[0x277CCAAD0];
  v59 = [(AKProximityAuthViewController *)v65 visualPairingView];
  v58 = [(VPPresenterView *)v59 topAnchor];
  v57 = [(AKProximityAuthViewController *)v65 contentView];
  v56 = [v57 topAnchor];
  v55 = [MEMORY[0x277D75418] currentDevice];
  v12 = [v55 userInterfaceIdiom];
  v13 = -20.0;
  if (v12 != 1)
  {
    v13 = 20.0;
  }

  v54 = [v58 constraintEqualToAnchor:v56 constant:{v13, v14}];
  v66[0] = v54;
  v53 = [(AKProximityAuthViewController *)v65 visualPairingView];
  v52 = [(VPPresenterView *)v53 bottomAnchor];
  v51 = [(AKProximityAuthViewController *)v65 contentView];
  v50 = [v51 bottomAnchor];
  v49 = [v52 constraintEqualToAnchor:-30.0 constant:?];
  v66[1] = v49;
  v48 = [(AKProximityAuthViewController *)v65 visualPairingView];
  v47 = [(VPPresenterView *)v48 heightAnchor];
  v46 = [v47 constraintEqualToConstant:300.0];
  v66[2] = v46;
  v45 = [(AKProximityAuthViewController *)v65 visualPairingView];
  v44 = [(VPPresenterView *)v45 widthAnchor];
  v43 = [v44 constraintEqualToConstant:300.0];
  v66[3] = v43;
  v42 = [(AKProximityAuthViewController *)v65 visualPairingView];
  v41 = [(VPPresenterView *)v42 centerXAnchor];
  v40 = [(AKProximityAuthViewController *)v65 contentView];
  v39 = [v40 centerXAnchor];
  v38 = [v41 constraintEqualToAnchor:?];
  v66[4] = v38;
  v37 = [MEMORY[0x277CBEA60] arrayWithObjects:v66 count:5];
  [v36 activateConstraints:?];
  MEMORY[0x277D82BD8](v37);
  MEMORY[0x277D82BD8](v38);
  MEMORY[0x277D82BD8](v39);
  MEMORY[0x277D82BD8](v40);
  MEMORY[0x277D82BD8](v41);
  MEMORY[0x277D82BD8](v42);
  MEMORY[0x277D82BD8](v43);
  MEMORY[0x277D82BD8](v44);
  MEMORY[0x277D82BD8](v45);
  MEMORY[0x277D82BD8](v46);
  MEMORY[0x277D82BD8](v47);
  MEMORY[0x277D82BD8](v48);
  MEMORY[0x277D82BD8](v49);
  MEMORY[0x277D82BD8](v50);
  MEMORY[0x277D82BD8](v51);
  MEMORY[0x277D82BD8](v52);
  MEMORY[0x277D82BD8](v53);
  MEMORY[0x277D82BD8](v54);
  MEMORY[0x277D82BD8](v55);
  MEMORY[0x277D82BD8](v56);
  MEMORY[0x277D82BD8](v57);
  MEMORY[0x277D82BD8](v58);
  v60 = [MEMORY[0x277CCAB98] defaultCenter];
  [v60 addObserver:v65 selector:sel_didBecomeActive_ name:*MEMORY[0x277D76648] object:?];
  v61 = [MEMORY[0x277CCAB98] defaultCenter];
  [v61 addObserver:v65 selector:sel_willResignActive_ name:*MEMORY[0x277D76768] object:0];
  MEMORY[0x277D82BD8](v61);
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
  v7 = [(AKProximityAuthViewController *)self pinCodeLabel];
  [(UILabel *)v7 setNumberOfLines:0];
  v9 = [MEMORY[0x277D75348] labelColor];
  v8 = [(AKProximityAuthViewController *)self pinCodeLabel];
  [(UILabel *)v8 setTextColor:v9];
  MEMORY[0x277D82BD8](v8);
  v11 = [MEMORY[0x277D75348] systemBackgroundColor];
  v10 = [(AKProximityAuthViewController *)self pinCodeLabel];
  [(UILabel *)v10 setBackgroundColor:v11];
  MEMORY[0x277D82BD8](v10);
  v13 = [MEMORY[0x277D74300] preferredFontForTextStyle:{*MEMORY[0x277D76A00], MEMORY[0x277D82BD8](v11).n128_f64[0]}];
  v12 = [(AKProximityAuthViewController *)self pinCodeLabel];
  [(UILabel *)v12 setFont:v13];
  MEMORY[0x277D82BD8](v12);
  v14 = [(AKProximityAuthViewController *)self pinCodeLabel];
  [(UILabel *)v14 setTextAlignment:?];
  v15 = [(AKProximityAuthViewController *)self pinCodeLabel];
  [(UILabel *)v15 setTranslatesAutoresizingMaskIntoConstraints:0];
  *&v3 = MEMORY[0x277D82BD8](v15).n128_u64[0];
  verificationCode = self->_verificationCode;
  v17 = [(AKProximityAuthViewController *)self pinCodeLabel];
  [(UILabel *)v17 setText:verificationCode];
  v18 = [(AKProximityAuthViewController *)self pinCodeLabel];
  LODWORD(v4) = 1148846080;
  [(UILabel *)v18 setContentHuggingPriority:1 forAxis:v4];
  v20 = [(AKProximityAuthViewController *)self contentView];
  v19 = [(AKProximityAuthViewController *)self pinCodeLabel];
  [v20 addSubview:?];
  MEMORY[0x277D82BD8](v19);
  *&v5 = MEMORY[0x277D82BD8](v20).n128_u64[0];
  v21 = MEMORY[0x277CCAAD0];
  v43 = [(AKProximityAuthViewController *)self pinCodeLabel];
  v42 = [(UILabel *)v43 heightAnchor];
  v41 = [v42 constraintEqualToConstant:250.0];
  v45[0] = v41;
  v40 = [(AKProximityAuthViewController *)self pinCodeLabel];
  v39 = [(UILabel *)v40 widthAnchor];
  v38 = [v39 constraintEqualToConstant:300.0];
  v45[1] = v38;
  v37 = [(AKProximityAuthViewController *)self pinCodeLabel];
  v36 = [(UILabel *)v37 centerXAnchor];
  v35 = [(AKProximityAuthViewController *)self contentView];
  v34 = [v35 centerXAnchor];
  v33 = [v36 constraintEqualToAnchor:?];
  v45[2] = v33;
  v32 = [(AKProximityAuthViewController *)self pinCodeLabel];
  v31 = [(UILabel *)v32 topAnchor];
  v30 = [(AKProximityAuthViewController *)self contentView];
  v29 = [v30 topAnchor];
  v28 = [v31 constraintEqualToAnchor:?];
  v45[3] = v28;
  v27 = [(AKProximityAuthViewController *)self pinCodeLabel];
  v26 = [(UILabel *)v27 bottomAnchor];
  v25 = [(AKProximityAuthViewController *)self contentView];
  v24 = [v25 bottomAnchor];
  v23 = [v26 constraintEqualToAnchor:-30.0 constant:?];
  v45[4] = v23;
  v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v45 count:5];
  [v21 activateConstraints:?];
  MEMORY[0x277D82BD8](v22);
  MEMORY[0x277D82BD8](v23);
  MEMORY[0x277D82BD8](v24);
  MEMORY[0x277D82BD8](v25);
  MEMORY[0x277D82BD8](v26);
  MEMORY[0x277D82BD8](v27);
  MEMORY[0x277D82BD8](v28);
  MEMORY[0x277D82BD8](v29);
  MEMORY[0x277D82BD8](v30);
  MEMORY[0x277D82BD8](v31);
  MEMORY[0x277D82BD8](v32);
  MEMORY[0x277D82BD8](v33);
  MEMORY[0x277D82BD8](v34);
  MEMORY[0x277D82BD8](v35);
  MEMORY[0x277D82BD8](v36);
  MEMORY[0x277D82BD8](v37);
  MEMORY[0x277D82BD8](v38);
  MEMORY[0x277D82BD8](v39);
  MEMORY[0x277D82BD8](v40);
  MEMORY[0x277D82BD8](v41);
  MEMORY[0x277D82BD8](v42);
  MEMORY[0x277D82BD8](v43);
  *MEMORY[0x277D85DE8];
}

- (void)_addSecondaryView
{
  v61[4] = *MEMORY[0x277D85DE8];
  v59 = self;
  v58[1] = a2;
  if ([(AKProximityMessageViewModel *)self->_viewModel type]== 5)
  {
    v2 = objc_alloc(MEMORY[0x277D75D18]);
    v55 = MEMORY[0x277CBF3A0];
    v58[0] = [v2 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    v3 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{*v55, v55[1], v55[2], v55[3]}];
    secondaryContentLabel = v59->_secondaryContentLabel;
    v59->_secondaryContentLabel = v3;
    [(UILabel *)v59->_secondaryContentLabel setTranslatesAutoresizingMaskIntoConstraints:0, MEMORY[0x277D82BD8](secondaryContentLabel).n128_f64[0]];
    v56 = [MEMORY[0x277CF0228] sharedManager];
    v57 = [v56 isAuthKitSolariumFeatureEnabled];
    *&v5 = MEMORY[0x277D82BD8](v56).n128_u64[0];
    if (v57)
    {
      [(UILabel *)v59->_secondaryContentLabel setTextAlignment:4, v5];
      v53 = [MEMORY[0x277D75348] secondaryLabelColor];
      [(UILabel *)v59->_secondaryContentLabel setTextColor:?];
      v54 = [MEMORY[0x277D74300] preferredFontForTextStyle:{*MEMORY[0x277D76A20], MEMORY[0x277D82BD8](v53).n128_f64[0]}];
      [(UILabel *)v59->_secondaryContentLabel setFont:?];
      v6 = MEMORY[0x277D82BD8](v54).n128_u64[0];
    }

    else
    {
      [(UILabel *)v59->_secondaryContentLabel setTextAlignment:1, v5];
      v46 = [MEMORY[0x277D75348] labelColor];
      [(UILabel *)v59->_secondaryContentLabel setTextColor:?];
      *&v7 = MEMORY[0x277D82BD8](v46).n128_u64[0];
      v49 = MEMORY[0x277D74300];
      v48 = MEMORY[0x277D74310];
      v47 = *MEMORY[0x277D76920];
      v52 = [(AKProximityAuthViewController *)v59 traitCollection];
      v51 = [v48 preferredFontDescriptorWithTextStyle:v47 compatibleWithTraitCollection:?];
      v50 = [v49 fontWithDescriptor:0.0 size:?];
      [(UILabel *)v59->_secondaryContentLabel setFont:?];
      MEMORY[0x277D82BD8](v50);
      MEMORY[0x277D82BD8](v51);
      v6 = MEMORY[0x277D82BD8](v52).n128_u64[0];
    }

    v11 = [MEMORY[0x277D75348] clearColor];
    [(UILabel *)v59->_secondaryContentLabel setBackgroundColor:?];
    [(UILabel *)v59->_secondaryContentLabel setNumberOfLines:0, MEMORY[0x277D82BD8](v11).n128_f64[0]];
    [v58[0] addSubview:v59->_secondaryContentLabel];
    v12 = MEMORY[0x277CCAAD0];
    v26 = [(UILabel *)v59->_secondaryContentLabel topAnchor];
    v25 = [v58[0] topAnchor];
    v24 = [MEMORY[0x277CF0228] sharedManager];
    if ([v24 isAuthKitSolariumFeatureEnabled])
    {
      v8 = 0;
    }

    else
    {
      v8 = 15;
    }

    v23 = [v26 constraintEqualToAnchor:v25 constant:v8];
    v61[0] = v23;
    v22 = [(UILabel *)v59->_secondaryContentLabel leadingAnchor];
    v21 = [v58[0] leadingAnchor];
    v20 = [v22 constraintEqualToAnchor:?];
    v61[1] = v20;
    v19 = [(UILabel *)v59->_secondaryContentLabel trailingAnchor];
    v18 = [v58[0] trailingAnchor];
    v17 = [v19 constraintEqualToAnchor:?];
    v61[2] = v17;
    v16 = [(UILabel *)v59->_secondaryContentLabel bottomAnchor];
    v15 = [v58[0] bottomAnchor];
    v14 = [v16 constraintEqualToAnchor:?];
    v61[3] = v14;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v61 count:?];
    [v12 activateConstraints:?];
    MEMORY[0x277D82BD8](v13);
    MEMORY[0x277D82BD8](v14);
    MEMORY[0x277D82BD8](v15);
    MEMORY[0x277D82BD8](v16);
    MEMORY[0x277D82BD8](v17);
    MEMORY[0x277D82BD8](v18);
    MEMORY[0x277D82BD8](v19);
    MEMORY[0x277D82BD8](v20);
    MEMORY[0x277D82BD8](v21);
    MEMORY[0x277D82BD8](v22);
    MEMORY[0x277D82BD8](v23);
    MEMORY[0x277D82BD8](v24);
    MEMORY[0x277D82BD8](v25);
    *&v9 = MEMORY[0x277D82BD8](v26).n128_u64[0];
    [v58[0] setTranslatesAutoresizingMaskIntoConstraints:{0, v9}];
    v27 = [(AKProximityAuthViewController *)v59 secondaryContentView];
    [v27 addSubview:v58[0]];
    *&v10 = MEMORY[0x277D82BD8](v27).n128_u64[0];
    v28 = MEMORY[0x277CCAAD0];
    v45 = [v58[0] leadingAnchor];
    v44 = [(AKProximityAuthViewController *)v59 secondaryContentView];
    v43 = [v44 leadingAnchor];
    v42 = [v45 constraintEqualToAnchor:?];
    v60[0] = v42;
    v41 = [v58[0] trailingAnchor];
    v40 = [(AKProximityAuthViewController *)v59 secondaryContentView];
    v39 = [v40 trailingAnchor];
    v38 = [v41 constraintEqualToAnchor:?];
    v60[1] = v38;
    v37 = [v58[0] topAnchor];
    v36 = [(AKProximityAuthViewController *)v59 secondaryContentView];
    v35 = [v36 topAnchor];
    v34 = [v37 constraintEqualToAnchor:?];
    v60[2] = v34;
    v33 = [v58[0] bottomAnchor];
    v32 = [(AKProximityAuthViewController *)v59 secondaryContentView];
    v31 = [v32 bottomAnchor];
    v30 = [v33 constraintEqualToAnchor:?];
    v60[3] = v30;
    v29 = [MEMORY[0x277CBEA60] arrayWithObjects:v60 count:4];
    [v28 activateConstraints:?];
    MEMORY[0x277D82BD8](v29);
    MEMORY[0x277D82BD8](v30);
    MEMORY[0x277D82BD8](v31);
    MEMORY[0x277D82BD8](v32);
    MEMORY[0x277D82BD8](v33);
    MEMORY[0x277D82BD8](v34);
    MEMORY[0x277D82BD8](v35);
    MEMORY[0x277D82BD8](v36);
    MEMORY[0x277D82BD8](v37);
    MEMORY[0x277D82BD8](v38);
    MEMORY[0x277D82BD8](v39);
    MEMORY[0x277D82BD8](v40);
    MEMORY[0x277D82BD8](v41);
    MEMORY[0x277D82BD8](v42);
    MEMORY[0x277D82BD8](v43);
    MEMORY[0x277D82BD8](v44);
    MEMORY[0x277D82BD8](v45);
    objc_storeStrong(v58, 0);
  }

  *MEMORY[0x277D85DE8];
}

- (void)_addPrivacyLinkController
{
  v9[1] = *MEMORY[0x277D85DE8];
  v6 = [(AKProximityAuthViewController *)self viewModel];
  v7 = [(AKProximityMessageViewModel *)v6 type];
  *&v2 = MEMORY[0x277D82BD8](v6).n128_u64[0];
  if (v7)
  {
    v3 = [(AKProximityAuthViewController *)self buttonTray];
    [v3 setPrivacyLinkController:0];
    MEMORY[0x277D82BD8](v3);
  }

  else
  {
    v5 = [(AKProximityAuthViewController *)self buttonTray];
    v9[0] = @"com.apple.onboarding.appleid";
    v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
    [v5 setPrivacyLinkForBundles:?];
    MEMORY[0x277D82BD8](v4);
    MEMORY[0x277D82BD8](v5);
  }

  *MEMORY[0x277D85DE8];
}

- (AKProximityViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end