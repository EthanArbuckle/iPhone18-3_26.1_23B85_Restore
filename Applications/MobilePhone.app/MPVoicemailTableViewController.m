@interface MPVoicemailTableViewController
- (BOOL)isAccountProvisioningRequiredForAtLeastOneAccount;
- (BOOL)playMessageFromPlaybackQueue;
- (BOOL)shouldNavigationControllerPresentLargeTitles;
- (BOOL)shouldShowTranscriptionModelWarningHeaderViewForCount:(int64_t)a3;
- (BOOL)shouldSuppressAudioRouteAlertController;
- (BOOL)tableView:(id)a3 canEditRowAtIndexPath:(id)a4;
- (BOOL)tableView:(id)a3 shouldHighlightRowAtIndexPath:(id)a4;
- (BOOL)tableViewCanPerformReloadData:(id)a3;
- (BOOL)voicemailMessageTableViewCell:(id)a3 shouldShowRTTButtonForRowWithIndexPath:(id)a4;
- (CGPoint)fixedTableViewContentOffset;
- (CNAvatarCardController)cardController;
- (MPVoicemailController)voicemailController;
- (MPVoicemailTableViewController)initWithNavigationController:(id)a3 voicemailController:(id)a4;
- (MPVoicemailTranscriptionUnavailableView)transcriptionUnavailableView;
- (PHAudioRoutingMenuController)routeListController;
- (PhoneNavigationController)phoneNavigationController;
- (UIColor)dimmedColor;
- (UIGestureRecognizer)leftBarButtonItemGestureRecognizer;
- (UIGestureRecognizer)navBarGestureRecognizer;
- (UIGestureRecognizer)rightBarButtonItemGestureRecognizer;
- (VMAccountProvisioningViewController)accountProvisioningViewController;
- (id)_allVoicemails;
- (id)backgroundViewForTableView;
- (id)contactViewControllerForVoicemail:(id)a3;
- (id)currentExpandedVoicemailMessageCell;
- (id)indexPathForMessageID:(id)a3;
- (id)indexPathsForMessages:(id)a3;
- (id)messageAtIndex:(int64_t)a3;
- (id)messageToPlayFromPlaybackQueue;
- (id)messagesAtIndexPaths:(id)a3;
- (id)playerController;
- (id)senderHandleForMessage:(id)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)unknownContactForMessage:(id)a3;
- (id)voicemailMessageViewModelForVoicemail:(id)a3 isExpanded:(BOOL)a4;
- (id)voicemails:(id)a3 passingTest:(id)a4;
- (int64_t)avatarCardController:(id)a3 presentationResultForLocation:(CGPoint)a4;
- (int64_t)senderHandleTypeForMessage:(id)a3;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_fetchCurrentVoicemailsWithCompletion:(id)a3;
- (void)_fetchCurrentVoicemailsWithPredicate:(id)a3 completion:(id)a4;
- (void)_handleNavBarTap:(id)a3;
- (void)_updateUIForMaskViewChange;
- (void)addMessageToPlaybackQueue:(id)a3;
- (void)audioRoutingMenuController:(id)a3 didSelectRoute:(id)a4;
- (void)cancelPlaybackRequest;
- (void)checkTranscriptionModelAvailability;
- (void)configureAudioButtonForRowAtIndexPath:(id)a3;
- (void)configureCellWithSeparatorColor:(id)a3 atIndexPath:(id)a4;
- (void)configureLegacyVoicemailCell:(id)a3 for:(id)a4 showLabel:(BOOL)a5 onCallTapped:(id)a6;
- (void)dealloc;
- (void)exportVoicemailDataForVoicemail:(id)a3 sourceView:(id)a4;
- (void)fetchRoutesForAudioRoutingMenuController:(id)a3 completionHandler:(id)a4;
- (void)getAppActionRecommendationsWithVoicemailId:(NSUUID *)a3 completionHandler:(id)a4;
- (void)handleMPRTTTranscriptionDidLoadNotification:(id)a3;
- (void)handleMPVoicemailControllerMessagesDidChangeNotification:(id)a3;
- (void)handlePHAudioDeviceControllerAudioRoutesChangedNotification:(id)a3;
- (void)handlePHAudioDeviceControllerPickedRouteChangedNotification:(id)a3;
- (void)handlePHDeviceCellularRadioEnabledDidChangeNotification:(id)a3;
- (void)handleTapGesture:(id)a3;
- (void)handleUIApplicationDidEnterBackgroundNotification:(id)a3;
- (void)handleUIContentSizeCategoryDidChangeNotification:(id)a3;
- (void)hideProgressView;
- (void)layoutTableHeaderView;
- (void)loadTableHeaderView;
- (void)loadView;
- (void)performDeleteAtIndexPaths:(id)a3 dataSourceActions:(id)a4 completionBlock:(id)a5;
- (void)playMessage:(id)a3;
- (void)popViewControllerIfNeeded;
- (void)processAppActionRecommendationWithVoicemailId:(NSUUID *)a3 recommendation:(NSString *)a4 buttonType:(unint64_t)a5 completionHandler:(id)a6;
- (void)reloadDataIfNeeded;
- (void)reloadDataIfNil;
- (void)resetSelectedIndexPath;
- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4;
- (void)scrollViewDidScroll:(id)a3;
- (void)setEditing:(BOOL)a3 animated:(BOOL)a4;
- (void)setTranscriptionUnavailable:(BOOL)a3;
- (void)showHideProgressView;
- (void)showProgressView;
- (void)startDialRequestForMessage:(id)a3;
- (void)startObservingPreferences;
- (void)stopObservingPreferences;
- (void)tableView:(id)a3 accessoryButtonTappedForRowWithIndexPath:(id)a4;
- (void)tableView:(id)a3 collapseRowAtIndexPath:(id)a4 animated:(BOOL)a5;
- (void)tableView:(id)a3 commitEditingStyle:(int64_t)a4 forRowAtIndexPath:(id)a5;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 expandRowAtIndexPath:(id)a4 animated:(BOOL)a5;
- (void)tableView:(id)a3 prefetchRowsAtIndexPaths:(id)a4;
- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateLargeTitleInsets;
- (void)updateScreenTimeRestrictedViewForMessage:(id)a3 withViewModel:(id)a4;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)voicemailMessageCellDidTapToCollapse:(id)a3;
- (void)voicemailMessageDetailViewController:(id)a3 destructiveActionPerformedForMessage:(id)a4 completionBlock:(id)a5;
- (void)voicemailMessageTableViewCell:(id)a3 actionButtonTappedForRowWithIndexPath:(id)a4;
- (void)voicemailMessageTableViewCell:(id)a3 audioRouteButtonTappedForRowWithIndexPath:(id)a4;
- (void)voicemailMessageTableViewCell:(id)a3 dialRequestButtonTappedForRowWithIndexPath:(id)a4;
- (void)voicemailMessageTableViewCell:(id)a3 didChangeElapsedTime:(double)a4;
- (void)voicemailMessageTableViewCell:(id)a3 didReceiveTranscriptFeedback:(unint64_t)a4;
- (void)voicemailMessageTableViewCell:(id)a3 didReceiveTranscriptTapGesture:(id)a4;
- (void)voicemailMessageTableViewCell:(id)a3 didRequestPlayState:(int64_t)a4;
- (void)voicemailMessageTableViewCell:(id)a3 moveButtonTappedForRowWithIndexPath:(id)a4;
- (void)voicemailMessageTableViewCell:(id)a3 rttButtonTappedForRowWithIndexPath:(id)a4;
- (void)voicemailMessageTableViewCellDidBeginScrubbing:(id)a3;
- (void)voicemailMessageTableViewCellDidCancelScrubbing:(id)a3;
- (void)voicemailMessageTableViewCellDidEndScrubbing:(id)a3;
- (void)voicemailMessageTableViewCellShouldPresentWelcomeViewController:(id)a3;
@end

@implementation MPVoicemailTableViewController

- (MPVoicemailTableViewController)initWithNavigationController:(id)a3 voicemailController:(id)a4
{
  v6 = a3;
  v7 = a4;
  v25.receiver = self;
  v25.super_class = MPVoicemailTableViewController;
  v8 = [(MPVoicemailTableViewController *)&v25 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_phoneNavigationController, v6);
    objc_storeWeak(&v9->_voicemailController, v7);
    v9->_allowTableViewScrolling = 1;
    v10 = +[NSMutableArray array];
    messagePlaybackQueue = v9->_messagePlaybackQueue;
    v9->_messagePlaybackQueue = v10;

    v12 = +[NSMutableArray array];
    observations = v9->_observations;
    v9->_observations = v12;

    v14 = objc_alloc_init(NSCache);
    voicemailMessageViewModelCache = v9->_voicemailMessageViewModelCache;
    v9->_voicemailMessageViewModelCache = v14;

    v16 = +[PHAudioDeviceController sharedAudioDeviceController];
    v9->_audioDeviceController = v16;
    [(PHAudioDeviceController *)v16 setDelegate:v9];
    v17 = objc_alloc_init(TUFeatureFlags);
    featureFlags = v9->_featureFlags;
    v9->_featureFlags = v17;

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __83__MPVoicemailTableViewController_initWithNavigationController_voicemailController___block_invoke;
    block[3] = &unk_100284FD0;
    v19 = v9;
    v24 = v19;
    dispatch_async(&_dispatch_main_q, block);
    v20 = +[NSNotificationCenter defaultCenter];
    v21 = [(MPVoicemailTableViewController *)v19 voicemailController];
    [v20 addObserver:v19 selector:"handleMPVoicemailControllerMessagesDidChangeNotification:" name:@"MPVoicemailControllerMessagesDidChangeNotification" object:v21];
  }

  return v9;
}

id __83__MPVoicemailTableViewController_initWithNavigationController_voicemailController___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setNeedsReloadData:1];
  [*(a1 + 32) reloadDataIfNeeded];
  v2 = PHDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Finished initial setup of %@", &v5, 0xCu);
  }

  [*(a1 + 32) setPlayMessageOnReloadData:1];
  return [*(a1 + 32) playMessageFromPlaybackQueue];
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  navBarGestureRecognizer = self->_navBarGestureRecognizer;
  if (navBarGestureRecognizer)
  {
    [(UIGestureRecognizer *)navBarGestureRecognizer setDelegate:0];
    WeakRetained = objc_loadWeakRetained(&self->_phoneNavigationController);
    v6 = [WeakRetained navigationBar];
    [v6 removeGestureRecognizer:self->_navBarGestureRecognizer];
  }

  leftBarButtonItemGestureRecognizer = self->_leftBarButtonItemGestureRecognizer;
  if (leftBarButtonItemGestureRecognizer)
  {
    [(UIGestureRecognizer *)leftBarButtonItemGestureRecognizer setDelegate:0];
    v8 = [(UIGestureRecognizer *)self->_leftBarButtonItemGestureRecognizer view];
    [v8 removeGestureRecognizer:self->_leftBarButtonItemGestureRecognizer];
  }

  rightBarButtonItemGestureRecognizer = self->_rightBarButtonItemGestureRecognizer;
  if (rightBarButtonItemGestureRecognizer)
  {
    [(UIGestureRecognizer *)rightBarButtonItemGestureRecognizer setDelegate:0];
    v10 = [(UIGestureRecognizer *)self->_rightBarButtonItemGestureRecognizer view];
    [v10 removeGestureRecognizer:self->_rightBarButtonItemGestureRecognizer];
  }

  v11.receiver = self;
  v11.super_class = MPVoicemailTableViewController;
  [(PHTableViewController *)&v11 dealloc];
}

- (VMAccountProvisioningViewController)accountProvisioningViewController
{
  accountProvisioningViewController = self->_accountProvisioningViewController;
  if (!accountProvisioningViewController)
  {
    v4 = [VMAccountProvisioningViewController alloc];
    v5 = [(MPVoicemailTableViewController *)self voicemailController];
    v6 = [v5 accountManager];
    v7 = [(VMViewController *)v4 initWithManager:v6];
    v8 = self->_accountProvisioningViewController;
    self->_accountProvisioningViewController = v7;

    accountProvisioningViewController = self->_accountProvisioningViewController;
  }

  return accountProvisioningViewController;
}

- (UIColor)dimmedColor
{
  v2 = [(MPVoicemailTableViewController *)self traitCollection];
  if ([v2 userInterfaceStyle] == 2)
  {
    +[UIColor blackColor];
  }

  else
  {
    +[UIColor systemMidGrayColor];
  }
  v3 = ;
  v4 = [v3 colorWithAlphaComponent:0.600000024];

  return v4;
}

- (void)_updateUIForMaskViewChange
{
  v3 = [(MPVoicemailTableViewController *)self detailIndexPath];

  v4 = [(MPVoicemailTableViewController *)self navigationItem];
  v5 = [v4 leftBarButtonItem];
  v6 = v5;
  if (v3)
  {
    [v5 setEnabled:0];

    v7 = [(MPVoicemailTableViewController *)self navigationItem];
    v8 = [v7 rightBarButtonItem];
    [v8 setEnabled:0];

    v9 = [(MPVoicemailTableViewController *)self navigationController];
    v10 = [v9 navigationBar];
    v11 = [(MPVoicemailTableViewController *)self navBarGestureRecognizer];
    [v10 addGestureRecognizer:v11];

    v12 = [(MPVoicemailTableViewController *)self navigationController];
    v13 = [v12 navigationBar];
    v14 = [v13 currentLeftView];
    v15 = [(MPVoicemailTableViewController *)self leftBarButtonItemGestureRecognizer];
    [v14 addGestureRecognizer:v15];

    v16 = [(MPVoicemailTableViewController *)self navigationController];
    v17 = [v16 navigationBar];
    v18 = [v17 currentRightView];
    v19 = [(MPVoicemailTableViewController *)self rightBarButtonItemGestureRecognizer];
    [v18 addGestureRecognizer:v19];

    v20 = [(MPVoicemailTableViewController *)self visible];

    [(MPVoicemailTableViewController *)self setEditing:0 animated:v20];
  }

  else
  {
    [v5 setEnabled:1];

    v21 = [(MPVoicemailTableViewController *)self navigationItem];
    v22 = [v21 rightBarButtonItem];
    [v22 setEnabled:1];

    v23 = [(MPVoicemailTableViewController *)self navBarGestureRecognizer];

    if (v23)
    {
      v24 = [(MPVoicemailTableViewController *)self navBarGestureRecognizer];
      [v24 setDelegate:0];

      v25 = [(MPVoicemailTableViewController *)self navigationController];
      v26 = [v25 navigationBar];
      v27 = [(MPVoicemailTableViewController *)self navBarGestureRecognizer];
      [v26 removeGestureRecognizer:v27];

      [(MPVoicemailTableViewController *)self setNavBarGestureRecognizer:0];
    }

    v28 = [(MPVoicemailTableViewController *)self leftBarButtonItemGestureRecognizer];

    if (v28)
    {
      v29 = [(MPVoicemailTableViewController *)self leftBarButtonItemGestureRecognizer];
      [v29 setDelegate:0];

      v30 = [(MPVoicemailTableViewController *)self navigationController];
      v31 = [v30 navigationBar];
      v32 = [v31 currentLeftView];
      v33 = [(MPVoicemailTableViewController *)self leftBarButtonItemGestureRecognizer];
      [v32 removeGestureRecognizer:v33];

      [(MPVoicemailTableViewController *)self setLeftBarButtonItemGestureRecognizer:0];
    }

    v34 = [(MPVoicemailTableViewController *)self rightBarButtonItemGestureRecognizer];

    if (v34)
    {
      v35 = [(MPVoicemailTableViewController *)self rightBarButtonItemGestureRecognizer];
      [v35 setDelegate:0];

      v36 = [(MPVoicemailTableViewController *)self navigationController];
      v37 = [v36 navigationBar];
      v38 = [v37 currentRightView];
      v39 = [(MPVoicemailTableViewController *)self rightBarButtonItemGestureRecognizer];
      [v38 removeGestureRecognizer:v39];

      [(MPVoicemailTableViewController *)self setRightBarButtonItemGestureRecognizer:0];
    }
  }
}

- (UIGestureRecognizer)navBarGestureRecognizer
{
  navBarGestureRecognizer = self->_navBarGestureRecognizer;
  if (!navBarGestureRecognizer)
  {
    v4 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"_handleNavBarTap:"];
    v5 = self->_navBarGestureRecognizer;
    self->_navBarGestureRecognizer = v4;

    [(UIGestureRecognizer *)self->_navBarGestureRecognizer setDelegate:self];
    navBarGestureRecognizer = self->_navBarGestureRecognizer;
  }

  return navBarGestureRecognizer;
}

- (UIGestureRecognizer)leftBarButtonItemGestureRecognizer
{
  leftBarButtonItemGestureRecognizer = self->_leftBarButtonItemGestureRecognizer;
  if (!leftBarButtonItemGestureRecognizer)
  {
    v4 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"_handleNavBarTap:"];
    v5 = self->_leftBarButtonItemGestureRecognizer;
    self->_leftBarButtonItemGestureRecognizer = v4;

    [(UIGestureRecognizer *)self->_leftBarButtonItemGestureRecognizer setDelegate:self];
    leftBarButtonItemGestureRecognizer = self->_leftBarButtonItemGestureRecognizer;
  }

  return leftBarButtonItemGestureRecognizer;
}

- (UIGestureRecognizer)rightBarButtonItemGestureRecognizer
{
  rightBarButtonItemGestureRecognizer = self->_rightBarButtonItemGestureRecognizer;
  if (!rightBarButtonItemGestureRecognizer)
  {
    v4 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"_handleNavBarTap:"];
    v5 = self->_rightBarButtonItemGestureRecognizer;
    self->_rightBarButtonItemGestureRecognizer = v4;

    [(UIGestureRecognizer *)self->_rightBarButtonItemGestureRecognizer setDelegate:self];
    rightBarButtonItemGestureRecognizer = self->_rightBarButtonItemGestureRecognizer;
  }

  return rightBarButtonItemGestureRecognizer;
}

- (void)_handleNavBarTap:(id)a3
{
  if ([a3 state] == 3)
  {
    v5 = [(MPVoicemailTableViewController *)self tableView];
    v4 = [(MPVoicemailTableViewController *)self detailIndexPath];
    [(MPVoicemailTableViewController *)self tableView:v5 collapseRowAtIndexPath:v4 animated:1];
  }
}

- (id)unknownContactForMessage:(id)a3
{
  v4 = a3;
  v5 = [v4 senderDestinationID];
  if ([v5 length])
  {
    v6 = [(MPVoicemailTableViewController *)self senderHandleForMessage:v4];
    if (v6)
    {
      v7 = [v4 senderISOCountryCode];
      v8 = [(MPVoicemailTableViewController *)self voicemailController];
      v9 = [v8 metadataCache];
      v10 = [CNMutableContact contactForHandle:v6 isoCountryCode:v7 metadataCache:v9];

      if (v10)
      {
        v11 = [v10 copy];
      }

      else
      {
        v11 = 0;
      }

      v12 = v11;

      v13 = v12;
    }

    else
    {
      v13 = objc_opt_new();
      v12 = 0;
    }
  }

  else
  {
    v12 = objc_opt_new();
    v13 = v12;
  }

  return v13;
}

- (id)senderHandleForMessage:(id)a3
{
  v3 = [a3 senderDestinationID];
  if ([v3 length])
  {
    v4 = [TUHandle normalizedHandleWithDestinationID:v3];
  }

  else
  {
    v5 = PHDefaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "MPVoicemailTableViewController: senderDestinationID is nil so the handle is nil", v7, 2u);
    }

    v4 = 0;
  }

  return v4;
}

- (int64_t)senderHandleTypeForMessage:(id)a3
{
  v3 = [(MPVoicemailTableViewController *)self senderHandleForMessage:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 type];
  }

  else
  {
    v6 = PHDefaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "MPVoicemailTableViewController: sender handle is nil so we default the handle type to TUHandleTypeGeneric", v8, 2u);
    }

    v5 = 1;
  }

  return v5;
}

- (void)loadView
{
  v29.receiver = self;
  v29.super_class = MPVoicemailTableViewController;
  [(MPVoicemailTableViewController *)&v29 loadView];
  +[PHVoicemailMessageTableViewCell marginWidth];
  v4 = v3;
  v5 = [(MPVoicemailTableViewController *)self tableView];
  [v5 _setMarginWidth:v4];

  v6 = [(MPVoicemailTableViewController *)self tableView];
  [v6 setRowHeight:UITableViewAutomaticDimension];

  v7 = [(MPVoicemailTableViewController *)self tableView];
  [v7 setPrefetchDataSource:self];

  v8 = +[UIApplication sharedApplication];
  v9 = [v8 preferredContentSizeCategory];
  [PHVoicemailMessageTableViewCell separatorInsetForContentSizeCategory:v9];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18 = [(MPVoicemailTableViewController *)self tableView];
  [v18 setSeparatorInset:{v11, v13, v15, v17}];

  v19 = [(MPVoicemailTableViewController *)self tableView];
  [v19 setEstimatedRowHeight:60.0];

  v20 = [(MPVoicemailTableViewController *)self tableView];
  [v20 setRowHeight:UITableViewAutomaticDimension];

  v21 = [(MPVoicemailTableViewController *)self tableView];
  v22 = objc_opt_class();
  v23 = +[PHVoicemailMessageTableViewCell reuseIdentifier];
  [v21 registerClass:v22 forCellReuseIdentifier:v23];

  v24 = [(MPVoicemailTableViewController *)self tableView];
  [v24 registerClass:objc_opt_class() forCellReuseIdentifier:@"CallVoicemail"];

  v25 = [(MPVoicemailTableViewController *)self voicemails];
  if (v25)
  {
    v26 = v25;
    v27 = objc_opt_respondsToSelector();

    if (v27)
    {
      v28 = [(MPVoicemailTableViewController *)self allVoicemails];
      [(MPVoicemailTableViewController *)self willShowVoicemails:v28];
    }
  }
}

- (void)viewWillAppear:(BOOL)a3
{
  v15.receiver = self;
  v15.super_class = MPVoicemailTableViewController;
  [(PHTableViewController *)&v15 viewWillAppear:a3];
  [(MPVoicemailTableViewController *)self reloadDataIfNil];
  objc_initWeak(&location, self);
  v4 = [(MPVoicemailTableViewController *)self voicemailController];
  v5 = [v4 accountManager];
  v9 = _NSConcreteStackBlock;
  v10 = 3221225472;
  v11 = __49__MPVoicemailTableViewController_viewWillAppear___block_invoke;
  v12 = &unk_100285148;
  objc_copyWeak(&v13, &location);
  v6 = [v5 listenForChangesWithHandler:&v9];
  [(MPVoicemailTableViewController *)self setTranscriptionStatusListener:v6, v9, v10, v11, v12];

  [(MPVoicemailTableViewController *)self loadTableHeaderView];
  [(MPVoicemailTableViewController *)self showHideProgressView];
  if ((+[UIImage cappedSizedImagesAreValid]& 1) == 0)
  {
    v7 = [(MPVoicemailTableViewController *)self tableView];
    [v7 setEditing:0 animated:0];

    v8 = [(MPVoicemailTableViewController *)self tableView];
    [v8 reloadData];
  }

  [(MPVoicemailTableViewController *)self startObservingPreferences];
  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

void __49__MPVoicemailTableViewController_viewWillAppear___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = PHDefaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = v3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "MPVoicemailTableviewController - handling account manager updates %@", &v8, 0xCu);
    }

    v6 = +[MPVoicemailAccountManagerUpdate transcribingStatus];
    v7 = [v3 contains:v6];

    if (v7)
    {
      [WeakRetained handleVoicemailTranscriptionStatusChanged];
    }
  }
}

- (void)viewWillDisappear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = MPVoicemailTableViewController;
  [(PHTableViewController *)&v6 viewWillDisappear:a3];
  v4 = [(MPVoicemailTableViewController *)self detailIndexPath];
  if (v4)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v5 = [(MPVoicemailTableViewController *)self tableView];
      [(MPVoicemailTableViewController *)self tableView:v5 collapseRowAtIndexPath:v4 animated:1];
    }
  }

  [(MPVoicemailTableViewController *)self hideProgressView];
  [(MPVoicemailTableViewController *)self setTranscriptionStatusListener:0];
  [(MPVoicemailTableViewController *)self stopObservingPreferences];
}

- (void)viewDidLoad
{
  v15.receiver = self;
  v15.super_class = MPVoicemailTableViewController;
  [(PHTableViewController *)&v15 viewDidLoad];
  v3 = +[NSNotificationCenter defaultCenter];
  v4 = PHDeviceCellularRadioEnabledDidChangeNotification;
  v5 = +[PHDevice currentDevice];
  [v3 addObserver:self selector:"handlePHDeviceCellularRadioEnabledDidChangeNotification:" name:v4 object:v5];

  objc_initWeak(&location, self);
  v6 = [(MPVoicemailTableViewController *)self voicemailController];
  v7 = [v6 accountManager];
  v9 = _NSConcreteStackBlock;
  v10 = 3221225472;
  v11 = __45__MPVoicemailTableViewController_viewDidLoad__block_invoke;
  v12 = &unk_100285148;
  objc_copyWeak(&v13, &location);
  v8 = [v7 listenForChangesWithHandler:&v9];
  [(MPVoicemailTableViewController *)self setVoicemailListeners:v8, v9, v10, v11, v12];

  [v3 addObserver:self selector:"handleMPRTTTranscriptionDidLoadNotification:" name:@"MPVoicemailRTTTranscriptDidLoadNotification" object:0];
  [(MPVoicemailTableViewController *)self updateLargeTitleInsets];
  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

void __45__MPVoicemailTableViewController_viewDidLoad__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = PHDefaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = v3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "MPVoicemailTableViewcontroller - handling account manager updates %@", &v10, 0xCu);
    }

    v6 = +[MPVoicemailAccountManagerUpdate onlineStatus];
    v7 = [v3 contains:v6];

    if (v7)
    {
      [WeakRetained handleVoicemailOnlineStatusChanged];
    }

    v8 = +[MPVoicemailAccountManagerUpdate accounts];
    v9 = [v3 contains:v8];

    if (v9)
    {
      [WeakRetained handleVoicemailManagerAccountsDidChange];
    }
  }
}

- (void)viewDidAppear:(BOOL)a3
{
  v9.receiver = self;
  v9.super_class = MPVoicemailTableViewController;
  [(PHTableViewController *)&v9 viewDidAppear:a3];
  [(MPVoicemailTableViewController *)self setVisible:1];
  v4 = [(MPVoicemailTableViewController *)self view];
  v5 = [(MPVoicemailTableViewController *)self cardController];
  [v5 setSourceView:v4];

  v6 = [(MPVoicemailTableViewController *)self messageToPlayFromPlaybackQueue];

  if (v6)
  {
    [(MPVoicemailTableViewController *)self playMessageFromPlaybackQueue];
  }

  else
  {
    v7 = [(MPVoicemailTableViewController *)self detailIndexPath];
    if (v7)
    {
      v8 = [(MPVoicemailTableViewController *)self tableView];
      [(MPVoicemailTableViewController *)self tableView:v8 expandRowAtIndexPath:v7 animated:0];
    }
  }

  [(MPVoicemailTableViewController *)self checkTranscriptionModelAvailability];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = MPVoicemailTableViewController;
  [(MPVoicemailTableViewController *)&v4 viewDidDisappear:a3];
  [(MPVoicemailTableViewController *)self setVisible:0];
  if ([(MPVoicemailTableViewController *)self isEditing])
  {
    [(MPVoicemailTableViewController *)self setEditing:0 animated:0];
  }
}

- (void)traitCollectionDidChange:(id)a3
{
  v4.receiver = self;
  v4.super_class = MPVoicemailTableViewController;
  [(PHTableViewController *)&v4 traitCollectionDidChange:a3];
  [(MPVoicemailTableViewController *)self updateLargeTitleInsets];
}

- (void)scrollViewDidScroll:(id)a3
{
  v5 = a3;
  if (![(MPVoicemailTableViewController *)self allowTableViewScrolling])
  {
    v4 = [(MPVoicemailTableViewController *)self tableView];

    if (v4 == v5)
    {
      [(MPVoicemailTableViewController *)self fixedTableViewContentOffset];
      [v5 setContentOffset:?];
    }
  }
}

- (void)checkTranscriptionModelAvailability
{
  if (([UIApp launchedToTest] & 1) == 0)
  {
    if (CPIsInternalDevice())
    {
      v3[0] = _NSConcreteStackBlock;
      v3[1] = 3221225472;
      v3[2] = __69__MPVoicemailTableViewController_checkTranscriptionModelAvailability__block_invoke;
      v3[3] = &unk_100285CC8;
      v3[4] = self;
      [SFSpeechRecognizer _fetchSupportedForcedOfflineLocalesWithCompletion:v3];
    }
  }
}

void __69__MPVoicemailTableViewController_checkTranscriptionModelAvailability__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __69__MPVoicemailTableViewController_checkTranscriptionModelAvailability__block_invoke_2;
  block[3] = &unk_1002853E8;
  v7 = *(a1 + 32);
  v11 = v5;
  v12 = v7;
  v13 = v6;
  v8 = v6;
  v9 = v5;
  dispatch_async(&_dispatch_main_q, block);
}

id __69__MPVoicemailTableViewController_checkTranscriptionModelAvailability__block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [*(a1 + 40) shouldShowTranscriptionModelWarningHeaderViewForCount:{objc_msgSend(v2, "count")}];
  }

  else
  {
    if (*(a1 + 48))
    {
      v4 = PHDefaultLog();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        __69__MPVoicemailTableViewController_checkTranscriptionModelAvailability__block_invoke_2_cold_1((a1 + 48), v4);
      }
    }

    v3 = 0;
  }

  return [*(a1 + 40) setTranscriptionUnavailable:v3];
}

- (void)setTranscriptionUnavailable:(BOOL)a3
{
  v3 = a3;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  if (self->_transcriptionUnavailable != v3)
  {
    self->_transcriptionUnavailable = v3;

    [(MPVoicemailTableViewController *)self loadTableHeaderView];
  }
}

- (BOOL)shouldShowTranscriptionModelWarningHeaderViewForCount:(int64_t)a3
{
  if (([UIApp launchedToTest] & 1) != 0 || !CPIsInternalDevice())
  {
    return 0;
  }

  v5 = [(MPVoicemailTableViewController *)self voicemailController];
  v6 = [v5 accountManager];
  v7 = [v6 isTranscriptionEnabled];
  if (a3)
  {
    v8 = 0;
  }

  else
  {
    v8 = v7;
  }

  return v8;
}

- (id)_allVoicemails
{
  v2 = [(MPVoicemailTableViewController *)self voicemailController];
  v3 = [v2 audioMessages];

  return v3;
}

- (void)_fetchCurrentVoicemailsWithCompletion:(id)a3
{
  v9 = a3;
  v4 = [(MPVoicemailTableViewController *)self featureFlags];
  v5 = [v4 voicemailSearchEnabled];

  if (v5)
  {
    preFetchingPredicate = self->_preFetchingPredicate;
    if (preFetchingPredicate)
    {
      [(MPVoicemailTableViewController *)self _fetchCurrentVoicemailsWithPredicate:preFetchingPredicate completion:v9];
      goto LABEL_7;
    }

    v7 = [objc_opt_class() voicemailPredicate];
    [(MPVoicemailTableViewController *)self _fetchCurrentVoicemailsWithPredicate:v7 completion:v9];
  }

  else
  {
    v7 = [(MPVoicemailTableViewController *)self voicemailController];
    v8 = [objc_opt_class() voicemailPredicate];
    [v7 audioMessagesPassingTest:v8 withCompletion:v9];
  }

LABEL_7:
}

- (void)_fetchCurrentVoicemailsWithPredicate:(id)a3 completion:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = [(MPVoicemailTableViewController *)self featureFlags];
  v8 = [v7 voicemailSearchEnabled];

  if (v8)
  {
    v9 = [(MPVoicemailTableViewController *)self voicemailController];
    [v9 audioMessagesPassingTest:v10 withCompletion:v6];
  }
}

- (id)voicemails:(id)a3 passingTest:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = +[NSMutableArray array];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v16 + 1) + 8 * i);
        if (v6[2](v6, v13))
        {
          [v7 addObject:{v13, v16}];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  v14 = [v7 copy];

  return v14;
}

- (BOOL)tableView:(id)a3 canEditRowAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(MPVoicemailTableViewController *)self detailIndexPath];
  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v8 = [v5 row];
    v9 = [(MPVoicemailTableViewController *)self voicemails];
    v7 = v8 < [v9 count];
  }

  return v7;
}

- (void)tableView:(id)a3 commitEditingStyle:(int64_t)a4 forRowAtIndexPath:(id)a5
{
  if (a4 == 1)
  {
    v8 = a3;
    [(MPVoicemailTableViewController *)self performTableViewDestructiveActionAtIndexPath:a5];
    [v8 setEditing:0];
  }
}

- (void)addMessageToPlaybackQueue:(id)a3
{
  v4 = a3;
  v5 = [(MPVoicemailTableViewController *)self messagePlaybackQueue];
  v6 = [v4 identifier];
  v7 = [v5 containsObject:v6];

  if (v7)
  {
    v8 = PHDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [(MPVoicemailTableViewController *)self messagePlaybackQueue];
      v12 = 138412290;
      v13 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Message already exists in queue: %@ not adding it", &v12, 0xCu);
    }
  }

  else
  {
    v10 = [(MPVoicemailTableViewController *)self messagePlaybackQueue];
    v11 = [v4 identifier];
    [v10 addObject:v11];
  }
}

- (void)showHideProgressView
{
  v3 = [(MPVoicemailTableViewController *)self voicemailController];
  v4 = [v3 accountManager];
  v5 = [v4 transcriptionProgress];

  if (!v5 || ([v5 isFinished] & 1) != 0 || (-[MPVoicemailTableViewController progressView](self, "progressView"), v6 = objc_claimAutoreleasedReturnValue(), v6, v6))
  {
    v7 = PHDefaultLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Hiding progress view", v9, 2u);
    }

    [(MPVoicemailTableViewController *)self hideProgressView];
  }

  else
  {
    v8 = PHDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Showing progress view", buf, 2u);
    }

    [(MPVoicemailTableViewController *)self showProgressView];
  }
}

- (void)showProgressView
{
  v3 = [(MPVoicemailTableViewController *)self tableView];
  [v3 setContentInset:{0.0, 0.0, 40.0, 0.0}];

  v4 = [VMMessageTranscriptionProgressView alloc];
  v5 = [(MPVoicemailTableViewController *)self tabBarController];
  v6 = [v5 tabBar];
  [v6 frame];
  v8 = v7;
  v9 = [(MPVoicemailTableViewController *)self tabBarController];
  v10 = [v9 tabBar];
  [v10 frame];
  v12 = v11 + -40.0;
  v13 = [(MPVoicemailTableViewController *)self tabBarController];
  v14 = [v13 tabBar];
  [v14 frame];
  v15 = [(VMMessageTranscriptionProgressView *)v4 initWithFrame:v8, v12];
  [(MPVoicemailTableViewController *)self setProgressView:v15];

  v16 = [(MPVoicemailTableViewController *)self voicemailController];
  v17 = [v16 accountManager];
  v18 = [v17 transcriptionProgress];
  v19 = [(MPVoicemailTableViewController *)self progressView];
  v20 = [v19 progressView];
  [v20 setObservedProgress:v18];

  v23 = [(MPVoicemailTableViewController *)self tabBarController];
  v21 = [v23 view];
  v22 = [(MPVoicemailTableViewController *)self progressView];
  [v21 addSubview:v22];
}

- (void)hideProgressView
{
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v6 = [(MPVoicemailTableViewController *)self tableView];
  [v6 setContentInset:{UIEdgeInsetsZero.top, left, bottom, right}];

  v7 = [(MPVoicemailTableViewController *)self progressView];
  [v7 removeFromSuperview];

  [(MPVoicemailTableViewController *)self setProgressView:0];
}

id __75__MPVoicemailTableViewController_handleVoicemailTranscriptionStatusChanged__block_invoke(uint64_t a1)
{
  v2 = PHDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%@ is handling VoicemailTranscriptionStatusChanged", &v5, 0xCu);
  }

  [*(a1 + 32) showHideProgressView];
  result = [*(*(a1 + 32) + 240) callScreeningEnabled];
  if ((result & 1) == 0)
  {
    [*(a1 + 32) setNeedsReloadData:1];
    return [*(a1 + 32) reloadDataIfNeeded];
  }

  return result;
}

id __68__MPVoicemailTableViewController_handleVoicemailOnlineStatusChanged__block_invoke(uint64_t a1)
{
  v2 = PHDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%@ is handling VoicemailOnlineStatusChanged", &v5, 0xCu);
  }

  dispatch_assert_queue_V2(&_dispatch_main_q);
  return [*(a1 + 32) loadTableHeaderView];
}

- (void)handleMPVoicemailControllerMessagesDidChangeNotification:(id)a3
{
  v4 = a3;
  v3 = v4;
  TUGuaranteeExecutionOnMainThreadAsync();
}

id __91__MPVoicemailTableViewController_handleMPVoicemailControllerMessagesDidChangeNotification___block_invoke(uint64_t a1)
{
  v2 = PHDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = [*(a1 + 40) name];
    v6 = 138412546;
    v7 = v3;
    v8 = 2112;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%@ is handling <%@>", &v6, 0x16u);
  }

  [*(a1 + 32) setNeedsReloadData:1];
  [*(a1 + 32) reloadDataIfNeeded];
  return [*(a1 + 32) playMessageFromPlaybackQueue];
}

- (void)handlePHAudioDeviceControllerAudioRoutesChangedNotification:(id)a3
{
  v4 = a3;
  v5 = PHDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 name];
    v10 = 138412546;
    v11 = self;
    v12 = 2112;
    v13 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ is handling <%@>", &v10, 0x16u);
  }

  v7 = [(MPVoicemailTableViewController *)self routeListController];
  [v7 reload];

  v8 = [(MPVoicemailTableViewController *)self detailIndexPath];

  if (v8)
  {
    v9 = [(MPVoicemailTableViewController *)self detailIndexPath];
    [(MPVoicemailTableViewController *)self configureAudioButtonForRowAtIndexPath:v9];
  }
}

- (void)handlePHAudioDeviceControllerPickedRouteChangedNotification:(id)a3
{
  v4 = a3;
  v5 = PHDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 name];
    v9 = 138412546;
    v10 = self;
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ is handling <%@>", &v9, 0x16u);
  }

  v7 = [(MPVoicemailTableViewController *)self detailIndexPath];

  if (v7)
  {
    v8 = [(MPVoicemailTableViewController *)self detailIndexPath];
    [(MPVoicemailTableViewController *)self configureAudioButtonForRowAtIndexPath:v8];
  }
}

- (void)handlePHDeviceCellularRadioEnabledDidChangeNotification:(id)a3
{
  v4 = a3;
  v5 = PHDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 name];
    v11 = 138412546;
    v12 = self;
    v13 = 2112;
    v14 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ is handling <%@>", &v11, 0x16u);
  }

  v7 = +[PHDevice currentDevice];
  v8 = [v7 isCellularRadioEnabled];

  v9 = [(MPVoicemailTableViewController *)self connectionUnavailableView];

  if (v9)
  {
    dispatch_assert_queue_V2(&_dispatch_main_q);
    v10 = [(MPVoicemailTableViewController *)self connectionUnavailableView];
    [v10 setButtonHidden:v8 ^ 1 animated:1];

    [(MPVoicemailTableViewController *)self loadTableHeaderView];
  }
}

- (void)handleUIApplicationDidEnterBackgroundNotification:(id)a3
{
  v4 = a3;
  v5 = PHDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 name];
    v11 = 138412546;
    v12 = self;
    v13 = 2112;
    v14 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ is handling <%@>", &v11, 0x16u);
  }

  if ([(MPVoicemailTableViewController *)self isViewLoaded])
  {
    v7 = [(MPVoicemailTableViewController *)self view];
    v8 = [v7 window];

    if (v8)
    {
      v9 = [(MPVoicemailTableViewController *)self detailIndexPath];
      if (v9)
      {
        v10 = [(MPVoicemailTableViewController *)self tableView];
        [(MPVoicemailTableViewController *)self tableView:v10 collapseRowAtIndexPath:v9 animated:0];
      }
    }
  }
}

- (void)handleUIContentSizeCategoryDidChangeNotification:(id)a3
{
  v4 = a3;
  v5 = PHDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v21 = objc_opt_class();
    v22 = 2112;
    v23 = v4;
    v6 = v21;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ is handling %@", buf, 0x16u);
  }

  v19.receiver = self;
  v19.super_class = MPVoicemailTableViewController;
  [(PHTableViewController *)&v19 handleUIContentSizeCategoryDidChangeNotification:v4];
  [(MPVoicemailTableViewController *)self loadTableHeaderView];
  v7 = [v4 userInfo];
  v8 = [v7 objectForKeyedSubscript:UIContentSizeCategoryNewValueKey];

  if (v8)
  {
    [PHVoicemailMessageTableViewCell separatorInsetForContentSizeCategory:v8];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v17 = [(MPVoicemailTableViewController *)self tableView];
    [v17 setSeparatorInset:{v10, v12, v14, v16}];
  }

  [(MPVoicemailTableViewController *)self setEditing:0 animated:0];
  v18 = [(MPVoicemailTableViewController *)self tableView];
  [v18 reloadData];
}

id __73__MPVoicemailTableViewController_handleVoicemailManagerAccountsDidChange__block_invoke(uint64_t a1)
{
  v2 = PHDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = objc_opt_class();
    v3 = v6;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%@ is handling VoicemailManagerAccountsDidChange", &v5, 0xCu);
  }

  return [*(a1 + 32) loadTableHeaderView];
}

- (void)handleMPRTTTranscriptionDidLoadNotification:(id)a3
{
  v4 = a3;
  v3 = v4;
  TUGuaranteeExecutionOnMainThreadAsync();
}

void __78__MPVoicemailTableViewController_handleMPRTTTranscriptionDidLoadNotification___block_invoke(uint64_t a1)
{
  v2 = PHDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = [*(a1 + 40) name];
    v17 = 138412546;
    v18 = v3;
    v19 = 2112;
    v20 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%@ is handling <%@>", &v17, 0x16u);
  }

  v5 = [*(a1 + 32) detailIndexPath];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [NSIndexPath indexPathForRow:0 inSection:0];

    v5 = v6;
  }

  if (v5)
  {
    v7 = *(a1 + 32);
    v8 = [v7 detailIndexPath];
    v9 = [v7 messageAtIndex:{objc_msgSend(v8, "row")}];

    v10 = [*(a1 + 40) userInfo];
    v11 = [v10 objectForKey:@"MPVoicemailRTTTranscriptDidLoadCallIDKey"];

    v12 = [v9 callUUID];
    v13 = [v12 UUIDString];
    v14 = [v13 isEqualToString:v11];

    if (v14)
    {
      v15 = [*(a1 + 32) voicemailMessageViewModelCache];
      v16 = [v9 identifier];
      [v15 removeObjectForKey:v16];

      [*(a1 + 32) setNeedsReloadData:1];
      [*(a1 + 32) reloadDataIfNeeded];
    }
  }
}

- (BOOL)tableViewCanPerformReloadData:(id)a3
{
  if ([(MPVoicemailTableViewController *)self isEditing])
  {
    v4 = PHDefaultLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v13 = objc_opt_class();
      v5 = v13;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%@ cannot reload data because we are editing.", buf, 0xCu);
    }

    goto LABEL_7;
  }

  v4 = [(MPVoicemailTableViewController *)self tableView];
  v11.receiver = self;
  v11.super_class = MPVoicemailTableViewController;
  if (![(PHTableViewController *)&v11 tableViewCanPerformReloadData:v4])
  {
LABEL_7:
    LOBYTE(v7) = 0;
    goto LABEL_13;
  }

  v6 = objc_opt_new();
  if ([v6 fullScreenVoicemailDetailsEnabled])
  {
    LOBYTE(v7) = 1;
  }

  else
  {
    v8 = [(MPVoicemailTableViewController *)self detailIndexPath];
    if (v8)
    {
      LOBYTE(v7) = 0;
    }

    else
    {
      v9 = [(MPVoicemailTableViewController *)self playerController];
      v7 = [v9 isPlaying] ^ 1;
    }
  }

LABEL_13:
  return v7;
}

- (void)reloadDataIfNeeded
{
  if ([(PHTableViewController *)self needsReloadData]&& ([(MPVoicemailTableViewController *)self isViewLoaded]& 1) != 0 || [(MPVoicemailTableViewController *)self isSearchViewController])
  {
    if (![(PHTableViewController *)self isReloadingData])
    {
      v3 = PHDefaultLog();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v13 = objc_opt_class();
        v4 = v13;
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%@ We are already loading data, will keep needs reload data to reload once done.", buf, 0xCu);
      }
    }

    v5 = [(MPVoicemailTableViewController *)self tableView];
    v6 = [(MPVoicemailTableViewController *)self tableViewCanPerformReloadData:v5];

    if (v6)
    {
      objc_initWeak(buf, self);
      [(PHTableViewController *)self setReloadingData:1];
      [(PHTableViewController *)self setNeedsReloadData:0];
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = __52__MPVoicemailTableViewController_reloadDataIfNeeded__block_invoke;
      v10[3] = &unk_100285CF0;
      objc_copyWeak(&v11, buf);
      v10[4] = self;
      [(MPVoicemailTableViewController *)self _fetchCurrentVoicemailsWithCompletion:v10];
      objc_destroyWeak(&v11);
      objc_destroyWeak(buf);
    }

    else
    {
      v7 = PHDefaultLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = objc_opt_class();
        *buf = 138412290;
        v13 = v8;
        v9 = v8;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%@ Failing to reload data because tableViewCanPerformReloadData returned false.", buf, 0xCu);
      }
    }
  }
}

void __52__MPVoicemailTableViewController_reloadDataIfNeeded__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = [WeakRetained voicemailController];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __52__MPVoicemailTableViewController_reloadDataIfNeeded__block_invoke_2;
  v7[3] = &unk_100285520;
  objc_copyWeak(&v9, (a1 + 40));
  v7[4] = *(a1 + 32);
  v6 = v3;
  v8 = v6;
  [v5 audioMessagesWithCompletion:v7];

  objc_destroyWeak(&v9);
}

void __52__MPVoicemailTableViewController_reloadDataIfNeeded__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __52__MPVoicemailTableViewController_reloadDataIfNeeded__block_invoke_3;
  v7[3] = &unk_1002854F8;
  objc_copyWeak(&v11, (a1 + 48));
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v4;
  v10 = v5;
  v6 = v3;
  dispatch_async(&_dispatch_main_q, v7);

  objc_destroyWeak(&v11);
}

void __52__MPVoicemailTableViewController_reloadDataIfNeeded__block_invoke_3(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 7);
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained setReloadingData:0];
    v4 = [v3 tableView];
    v5 = [v3 tableViewCanPerformReloadData:v4];

    if (v5)
    {
      v6 = a1[4];
      v7 = [v3 voicemailMessageViewModelCache];
      [v7 removeAllObjects];

      [a1[5] willShowVoicemails:v6];
      v8 = [a1[6] mutableCopy];
      [v3 setVoicemails:v8];

      [v3 setAllVoicemails:v6];
      if ((*(a1[5] + 57) & 1) == 0)
      {
        v9 = [v3 tableView];
        [v9 reloadData];
      }

      v10 = PHDefaultLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = objc_opt_class();
        v12 = v11;
        v13 = [v3 voicemails];
        v22 = 138412546;
        v23 = v11;
        v24 = 2048;
        v25 = [v13 count];
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%@ completed updating voicemail list. current voicemails count: %ld", &v22, 0x16u);
      }

      if (([v3 needsReloadData] & 1) == 0)
      {
        [v3 updateTitleDisplayModeIfNeeded];
      }

      [v3 popViewControllerIfNeeded];
      v14 = a1[5];
      v15 = v14[14];
      if (v15)
      {
        v16 = [v3 voicemails];
        [v15 tableViewController:v14 didChangeVoicemails:v16];
      }

      if ([v3 needsReloadData])
      {
        v17 = PHDefaultLog();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          v18 = objc_opt_class();
          v22 = 138412290;
          v23 = v18;
          v19 = v18;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%@ reloading data again because needsReloadData is set.", &v22, 0xCu);
        }

        [v3 reloadDataIfNeeded];
      }

      else if ([a1[5] playMessageOnReloadData] && objc_msgSend(a1[5], "playMessageFromPlaybackQueue"))
      {
        [a1[5] setPlayMessageOnReloadData:0];
      }
    }

    else
    {
      v20 = PHDefaultLog();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v22 = 138412290;
        v23 = objc_opt_class();
        v21 = v23;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "%@ fetched data but failed to reload because tableViewCanPerformReloadData returned false.", &v22, 0xCu);
      }

      [v3 setNeedsReloadData:1];
    }
  }
}

- (void)reloadDataIfNil
{
  v3 = [(MPVoicemailTableViewController *)self voicemails];

  if (!v3)
  {
    [(PHTableViewController *)self setNeedsReloadData:1];

    [(MPVoicemailTableViewController *)self reloadDataIfNeeded];
  }
}

- (BOOL)shouldNavigationControllerPresentLargeTitles
{
  v3 = [(MPVoicemailTableViewController *)self voicemails];
  if (v3)
  {
    v4 = [(MPVoicemailTableViewController *)self voicemails];
    if ([v4 count])
    {
      v5 = !self->_isSearchViewController;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setEditing:(BOOL)a3 animated:(BOOL)a4
{
  v6.receiver = self;
  v6.super_class = MPVoicemailTableViewController;
  [(MPVoicemailTableViewController *)&v6 setEditing:a3 animated:a4];
  if (!a3)
  {
    [(MPVoicemailTableViewController *)self reloadDataIfNeeded];
  }
}

- (id)indexPathForMessageID:(id)a3
{
  v4 = a3;
  v5 = [(MPVoicemailTableViewController *)self voicemails];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = __56__MPVoicemailTableViewController_indexPathForMessageID___block_invoke;
  v12[3] = &unk_100285D18;
  v6 = v4;
  v13 = v6;
  v7 = [v5 indexOfObjectPassingTest:v12];

  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = 0;
  }

  else
  {
    v9 = [(MPVoicemailTableViewController *)self tableView];
    v10 = [(MPVoicemailTableViewController *)self numberOfSectionsInTableView:v9]== 2;

    v8 = [NSIndexPath indexPathForRow:v7 inSection:v10];
  }

  return v8;
}

id __56__MPVoicemailTableViewController_indexPathForMessageID___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

- (id)indexPathsForMessages:(id)a3
{
  v4 = a3;
  v5 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v4 count]);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v15 + 1) + 8 * i) identifier];
        v12 = [(MPVoicemailTableViewController *)self indexPathForMessageID:v11];

        if (v12)
        {
          [v5 addObject:v12];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v13 = [v5 copy];

  return v13;
}

- (id)messagesAtIndexPaths:(id)a3
{
  v4 = a3;
  v5 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v4 count]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = -[MPVoicemailTableViewController messageAtIndex:](self, "messageAtIndex:", [*(*(&v14 + 1) + 8 * i) row]);
        if (v11)
        {
          [v5 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = [v5 copy];

  return v12;
}

- (id)messageAtIndex:(int64_t)a3
{
  v4 = [(MPVoicemailTableViewController *)self voicemails];
  v5 = v4;
  if (a3 < 0 || [v4 count] <= a3)
  {
    v7 = PHDefaultLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [NSNumber numberWithInteger:a3];
      v10 = 138412290;
      v11 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Could not find an item at index %@.", &v10, 0xCu);
    }

    v6 = 0;
  }

  else
  {
    v6 = [v5 objectAtIndexedSubscript:a3];
  }

  return v6;
}

- (void)updateScreenTimeRestrictedViewForMessage:(id)a3 withViewModel:(id)a4
{
  v11 = a3;
  v6 = a4;
  v7 = [(MPVoicemailTableViewController *)self voicemailController];
  v8 = [v7 isRestrictedMessage:v11];

  if (v8)
  {
    [v6 setShowsRestrictedAlertView:1];
    v9 = [(MPVoicemailTableViewController *)self voicemailController];
    v10 = [v9 localizedAttributedDowntimeTitleForMessage:v11];
    [v6 setLocalizedAttributedRestrictedAlertTitle:v10];

    v6 = v9;
  }

  else
  {
    [v6 setShowsRestrictedAlertView:0];
    [v6 setLocalizedAttributedRestrictedAlertTitle:0];
  }
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v4 = [(MPVoicemailTableViewController *)self voicemails:a3];
  v5 = [v4 count];

  return v5;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[PHVoicemailMessageTableViewCell reuseIdentifier];
  v9 = [v7 dequeueReusableCellWithIdentifier:v8 forIndexPath:v6];

  v10 = [(MPVoicemailTableViewController *)self detailIndexPath];
  v11 = [v10 isEqual:v6];

  v12 = [v6 row];
  v13 = [(MPVoicemailTableViewController *)self messageAtIndex:v12];
  v14 = [(MPVoicemailTableViewController *)self voicemailMessageViewModelCache];
  v15 = [v13 identifier];
  v16 = [v14 objectForKey:v15];

  if (!v16)
  {
    v16 = [(MPVoicemailTableViewController *)self voicemailMessageViewModelForVoicemail:v13 isExpanded:v11];
    v17 = [(MPVoicemailTableViewController *)self voicemailMessageViewModelCache];
    v18 = [v13 identifier];
    [v17 setObject:v16 forKey:v18];
  }

  v19 = [(MPVoicemailTableViewController *)self detailIndexPath];
  v20 = v19 != 0;

  [v9 configureWithVoicemailMessageViewModel:v16 expanded:v11 shouldGrayForeground:v20 & (v11 ^ 1)];
  v21 = [(MPVoicemailTableViewController *)self tableView];
  v22 = [v21 safeAreaLayoutGuide];
  [v22 layoutFrame];
  [v9 setMaximumAllowedHeight:v23 * 0.699999988];

  [v9 setDelegate:self];

  return v9;
}

- (BOOL)tableView:(id)a3 shouldHighlightRowAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(MPVoicemailTableViewController *)self detailIndexPath];

  v7 = PHDefaultLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412546;
    v10 = v5;
    v11 = 1024;
    v12 = v6 == 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "shouldHighlightRowAtIndexPath: %@ highlighted: %d", &v9, 0x12u);
  }

  return v6 == 0;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = PHDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412290;
    v14 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "didSelectRowAtIndexPath: %@", &v13, 0xCu);
  }

  if (([v6 isDecelerating] & 1) == 0 && (objc_msgSend(v6, "isEditing") & 1) == 0 && (objc_msgSend(v6, "isDragging") & 1) == 0)
  {
    v9 = [v7 row];
    v10 = [(MPVoicemailTableViewController *)self voicemails];
    v11 = [v10 count];

    if (v9 < v11)
    {
      v12 = [(MPVoicemailTableViewController *)self tableView];
      [(MPVoicemailTableViewController *)self tableView:v12 expandRowAtIndexPath:v7 animated:1];
    }

    [v6 deselectRowAtIndexPath:v7 animated:0];
  }
}

- (void)tableView:(id)a3 prefetchRowsAtIndexPaths:(id)a4
{
  v5 = a4;
  v6 = PHDefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Prefetching rows at indexPaths: %@", &v9, 0xCu);
  }

  v7 = [(MPVoicemailTableViewController *)self voicemailController];
  v8 = [(MPVoicemailTableViewController *)self messagesAtIndexPaths:v5];
  [v7 loadLocalizedTitlesForMessages:v8];
}

- (void)popViewControllerIfNeeded
{
  v7 = [(MPVoicemailTableViewController *)self navigationController];
  v3 = [v7 viewControllers];
  v4 = [v3 firstObject];
  if (v4 == self || ![(MPVoicemailTableViewController *)self visible])
  {
  }

  else
  {
    v5 = [(MPVoicemailTableViewController *)self hasContentToDisplay];

    if (v5)
    {
      return;
    }

    v7 = [(MPVoicemailTableViewController *)self navigationController];
    v6 = [v7 popToRootViewControllerAnimated:1];
  }
}

- (CNAvatarCardController)cardController
{
  cardController = self->_cardController;
  if (!cardController)
  {
    v4 = objc_alloc_init(CNAvatarCardController);
    v5 = self->_cardController;
    self->_cardController = v4;

    [(CNAvatarCardController *)self->_cardController setDelegate:self];
    cardController = self->_cardController;
  }

  return cardController;
}

- (id)contactViewControllerForVoicemail:(id)a3
{
  v4 = a3;
  v5 = [(MPVoicemailTableViewController *)self voicemailController];
  v6 = [v5 contactStore];
  v7 = +[CNContactViewController descriptorForRequiredKeys];
  v35 = v7;
  v8 = [NSArray arrayWithObjects:&v35 count:1];
  v9 = [v4 contactUsingContactStore:v6 withKeysToFetch:v8];

  if (v9)
  {
    v10 = [CNContactViewController viewControllerForContact:v9];
    [v10 setShouldShowLinkedContacts:1];
    goto LABEL_19;
  }

  v9 = [(MPVoicemailTableViewController *)self unknownContactForMessage:v4];
  v10 = [CNContactViewController viewControllerForUnknownContact:v9];
  v11 = [v4 senderDestinationID];
  v12 = [v11 length];

  if (!v12)
  {
    [v10 setAllowsActions:0];
    v17 = +[NSBundle mainBundle];
    v18 = [v17 localizedStringForKey:@"UNKNOWN_CALLER_DETAIL" value:&stru_10028F310 table:@"General"];
    [v10 setAlternateName:v18];
    v19 = 0;
LABEL_13:

    goto LABEL_15;
  }

  [v10 setActions:{objc_msgSend(v10, "actions") | 0x80}];
  v13 = [(MPVoicemailTableViewController *)self senderHandleTypeForMessage:v4];
  v14 = [(MPVoicemailTableViewController *)self featureFlags];
  v15 = [v14 callScreeningEnabledM3];

  if (v15)
  {
    if ((v13 - 1) > 2)
    {
      goto LABEL_10;
    }

    v16 = *(&off_100285EF0 + v13 - 1);
  }

  else
  {
    v16 = &CNContactPhoneNumbersKey;
  }

  [v10 setPrimaryPropertyKey:*v16];
LABEL_10:
  v20 = [(MPVoicemailTableViewController *)self voicemailController];
  v21 = [v20 suggestedContactStore];
  [v10 setContactStore:v21];

  v17 = [TUMetadataDestinationID metadataDestinationIDWithVoicemailMessage:v4];
  if (v17)
  {
    v22 = [(MPVoicemailTableViewController *)self voicemailController];
    v23 = [v22 metadataCache];
    v18 = [v23 metadataForDestinationID:v17];

    v19 = [v18 metadataForProvider:objc_opt_class()];
    if (![v19 length])
    {
      v24 = [v18 metadataForProvider:objc_opt_class()];

      v19 = v24;
    }

    goto LABEL_13;
  }

  v19 = 0;
LABEL_15:

  if ([v19 length])
  {
    v25 = [NSString stringWithString:v19];
    if (v25)
    {
      v26 = v25;
      [v10 setMessage:v25];
    }
  }

LABEL_19:
  v27 = [v4 date];

  if (v27)
  {
    v28 = objc_alloc_init(MPVoicemailContactHeaderViewController);
    v29 = [v4 date];
    v34[0] = v29;
    v33[1] = kCHCallOccurrenceCallStatusKey;
    v30 = [NSNumber numberWithUnsignedInt:kCHCallStatusMissed];
    v34[1] = v30;
    v31 = [NSDictionary dictionaryWithObjects:v34 forKeys:v33 count:2];
    [(MPVoicemailContactHeaderViewController *)v28 setCallOccurrence:v31];

    [v10 setContactHeaderViewController:v28];
  }

  return v10;
}

- (void)tableView:(id)a3 accessoryButtonTappedForRowWithIndexPath:(id)a4
{
  v11 = a4;
  v6 = [a3 cellForRowAtIndexPath:?];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [(MPVoicemailTableViewController *)self playerController];
    [v7 pause];

    v8 = -[MPVoicemailTableViewController messageAtIndex:](self, "messageAtIndex:", [v11 row]);
    if (v8)
    {
      v9 = [(MPVoicemailTableViewController *)self contactViewControllerForVoicemail:v8];
      v10 = [(MPVoicemailTableViewController *)self navigationController];
      [v10 pushViewController:v9 animated:1];
    }
  }
}

- (int64_t)avatarCardController:(id)a3 presentationResultForLocation:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v7 = a3;
  v8 = [(MPVoicemailTableViewController *)self tableView];
  if ([v8 isEditing])
  {
    goto LABEL_6;
  }

  v9 = [(MPVoicemailTableViewController *)self tableView];
  if (![v9 isDragging])
  {
    v10 = [(MPVoicemailTableViewController *)self tableView];
    if ([v10 isDecelerating])
    {
LABEL_4:

      goto LABEL_5;
    }

    v13 = [(MPVoicemailTableViewController *)self detailIndexPath];

    if (v13)
    {
      goto LABEL_7;
    }

    v14 = [(MPVoicemailTableViewController *)self tableView];
    v15 = [(MPVoicemailTableViewController *)self view];
    v16 = [(MPVoicemailTableViewController *)self tableView];
    [v15 convertPoint:v16 toView:{x, y}];
    v8 = [v14 indexPathForRowAtPoint:?];

    if (v8)
    {
      v9 = -[MPVoicemailTableViewController messageAtIndex:](self, "messageAtIndex:", [v8 row]);
      if (v9)
      {
        v17 = [(MPVoicemailTableViewController *)self tableView];
        v10 = [v17 cellForRowAtIndexPath:v8];

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_4;
        }

        [v7 setHighlightView:v10];
        v18 = [(MPVoicemailTableViewController *)self tableView];
        [v10 frame];
        v20 = v19;
        v22 = v21;
        v24 = v23;
        v26 = v25;
        v27 = [(MPVoicemailTableViewController *)self view];
        [v18 convertRect:v27 toView:{v20, v22, v24, v26}];
        [v7 setSourceRect:?];

        v40 = [(MPVoicemailTableViewController *)self voicemailController];
        v28 = [v40 contactStore];
        v29 = +[CNAvatarCardController descriptorForRequiredKeys];
        v41 = v29;
        v30 = [NSArray arrayWithObjects:&v41 count:1];
        v31 = [v9 contactUsingContactStore:v28 withKeysToFetch:v30];
        v32 = v31;
        if (v31)
        {
          v33 = v31;
        }

        else
        {
          v33 = [(MPVoicemailTableViewController *)self unknownContactForMessage:v9];
        }

        v34 = v33;

        if (v34)
        {
          [v7 setContact:v34];
          v35 = [TUMetadataDestinationID metadataDestinationIDWithVoicemailMessage:v9];
          if (v35)
          {
            v36 = [(MPVoicemailTableViewController *)self voicemailController];
            v37 = [v36 metadataCache];
            v38 = [v37 metadataForDestinationID:v35];

            v39 = [v38 metadataForProvider:objc_opt_class()];
            [v7 setMessage:v39];
          }

          v11 = 0;
        }

        else
        {
          v11 = 2;
        }
      }

      else
      {
        v11 = 1;
      }
    }

    else
    {
      v11 = 1;
    }

    goto LABEL_8;
  }

LABEL_5:

LABEL_6:
LABEL_7:
  v11 = 1;
LABEL_8:

  return v11;
}

- (void)tableView:(id)a3 collapseRowAtIndexPath:(id)a4 animated:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  v10 = PHDefaultLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v22 = v9;
    v23 = 1024;
    v24 = v5;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Collapsing rowAtIndexPath: %@ animated: %d", buf, 0x12u);
  }

  v11 = [v8 cellForRowAtIndexPath:v9];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = v11;
    v13 = [(MPVoicemailTableViewController *)self detailIndexPath];
    [v8 scrollToRowAtIndexPath:v13 atScrollPosition:0 animated:0];

    [(MPVoicemailTableViewController *)self resetSelectedIndexPath];
    [v12 setExpanded:0 animated:v5];
    v14 = +[UIColor separatorColor];
    [(MPVoicemailTableViewController *)self configureCellWithSeparatorColor:v14 atIndexPath:v9];

    [(MPVoicemailTableViewController *)self setAllowTableViewScrolling:1];
    [v8 setUserInteractionEnabled:0];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = __76__MPVoicemailTableViewController_tableView_collapseRowAtIndexPath_animated___block_invoke;
    v17[3] = &unk_100285D40;
    v18 = v8;
    v19 = self;
    v20 = v5;
    v15 = objc_retainBlock(v17);
    v16 = v15;
    if (v5)
    {
      (v15[2])(v15);
    }

    else
    {
      [UIView performWithoutAnimation:v15];
    }
  }
}

void __76__MPVoicemailTableViewController_tableView_collapseRowAtIndexPath_animated___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setBackgroundView:0];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = __76__MPVoicemailTableViewController_tableView_collapseRowAtIndexPath_animated___block_invoke_2;
  v5[3] = &unk_100285120;
  v2 = *(a1 + 32);
  v5[4] = *(a1 + 40);
  v6 = *(a1 + 48);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = __76__MPVoicemailTableViewController_tableView_collapseRowAtIndexPath_animated___block_invoke_4;
  v3[3] = &unk_100285B20;
  v4 = v2;
  [v4 performBatchUpdates:v5 completion:v3];
}

void __76__MPVoicemailTableViewController_tableView_collapseRowAtIndexPath_animated___block_invoke_2(uint64_t a1)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = __76__MPVoicemailTableViewController_tableView_collapseRowAtIndexPath_animated___block_invoke_3;
  v4[3] = &unk_100284FD0;
  v4[4] = *(a1 + 32);
  v2 = objc_retainBlock(v4);
  v3 = v2;
  if (*(a1 + 40) == 1)
  {
    [UIView animateWithDuration:196608 delay:v2 options:0 animations:0.300000012 completion:0.0];
  }

  else
  {
    (v2[2])(v2);
  }
}

id __76__MPVoicemailTableViewController_tableView_collapseRowAtIndexPath_animated___block_invoke_3(uint64_t a1)
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = [*(a1 + 32) tableView];
  v3 = [v2 visibleCells];

  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v9 + 1) + 8 * v7) setForegroundColor:0];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  return [*(a1 + 32) _updateUIForMaskViewChange];
}

- (void)tableView:(id)a3 expandRowAtIndexPath:(id)a4 animated:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  v10 = PHDefaultLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v72 = v9;
    v73 = 1024;
    v74 = v5;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Expanding rowAtIndexPath: %@ animated: %d", buf, 0x12u);
  }

  v11 = [v8 cellForRowAtIndexPath:v9];
  if (!v11)
  {
    v12 = [(MPVoicemailTableViewController *)self tableView];
    v13 = [v12 numberOfRowsInSection:{-[NSObject section](v9, "section")}];
    v14 = [v9 row];

    if (v13 <= v14)
    {
      v15 = PHDefaultLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [MPVoicemailTableViewController tableView:v9 expandRowAtIndexPath:v15 animated:?];
      }
    }

    else
    {
      [v8 scrollToRowAtIndexPath:v9 atScrollPosition:2 animated:0];
    }

    v11 = [v8 cellForRowAtIndexPath:v9];
  }

  v16 = [(MPVoicemailTableViewController *)self featureFlags];
  if ([v16 fullScreenVoicemailDetailsEnabled])
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      v18 = [(MPVoicemailTableViewController *)self messageAtIndex:[v9 row]];
      v19 = [(MPVoicemailTableViewController *)self featureFlags];
      v20 = [v19 callHistorySearchEnabled];

      if (v20 && !v18)
      {
        v21 = PHDefaultLog();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          [MPVoicemailTableViewController tableView:v9 expandRowAtIndexPath:? animated:?];
        }

        goto LABEL_46;
      }

      v46 = [PHVoicemailMessageDetailViewController alloc];
      v47 = [(MPVoicemailTableViewController *)self phoneNavigationController];
      v48 = [(MPVoicemailTableViewController *)self voicemailController];
      v21 = [(PHVoicemailMessageDetailViewController *)v46 initWithMessage:v18 navigationController:v47 voicemailController:v48];

      [v21 setDelegate:self];
      v49 = [(MPVoicemailTableViewController *)self featureFlags];
      LODWORD(v47) = [v49 callExperiencePhoneAppEnabled];

      if (v47)
      {
        v50 = [(MPVoicemailTableViewController *)self hostingNavigationController];
LABEL_45:
        v54 = v50;
        [v50 pushViewController:v21 animated:1];

LABEL_46:
        goto LABEL_47;
      }

      v51 = [(MPVoicemailTableViewController *)self featureFlags];
      if ([v51 voicemailSearchEnabled])
      {
        v52 = +[CAUILayoutManager shared];
        if ([v52 current] == 1)
        {

LABEL_44:
          v50 = [(MPVoicemailTableViewController *)self phoneNavigationController];
          goto LABEL_45;
        }

        v53 = [(MPVoicemailTableViewController *)self navigationController];

        if (!v53)
        {
          goto LABEL_44;
        }
      }

      else
      {
      }

      v50 = [(MPVoicemailTableViewController *)self navigationController];
      goto LABEL_45;
    }
  }

  else
  {
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v22 = +[NSNotificationCenter defaultCenter];
    [v22 addObserver:self selector:"handlePHAudioDeviceControllerAudioRoutesChangedNotification:" name:@"PHAudioDeviceControllerAudioRoutesChangedNotification" object:0];

    v23 = +[NSNotificationCenter defaultCenter];
    [v23 addObserver:self selector:"handlePHAudioDeviceControllerPickedRouteChangedNotification:" name:@"PHAudioDeviceControllerPickedRouteChangedNotification" object:0];

    [v8 setUserInteractionEnabled:0];
    [(MPVoicemailTableViewController *)self setDetailIndexPath:v9];
    v56 = v11;
    v58 = v11;
    v24 = [(MPVoicemailTableViewController *)self messageAtIndex:[v9 row]];
    v25 = PHDefaultLog();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v26 = [v24 identifier];
      v27 = [v24 isTranscriptionAvailable];
      *buf = 138412546;
      v72 = v26;
      v73 = 1024;
      v74 = v27;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Expanding voicemail %@ with transcription %d.", buf, 0x12u);
    }

    v28 = [v58 item];
    v55 = v24;
    [(MPVoicemailTableViewController *)self updateScreenTimeRestrictedViewForMessage:v24 withViewModel:v28];

    [v58 setExpanded:1 animated:v5];
    v29 = +[UIColor clearColor];
    [(MPVoicemailTableViewController *)self configureCellWithSeparatorColor:v29 atIndexPath:v9];

    [(MPVoicemailTableViewController *)self configureAudioButtonForRowAtIndexPath:v9];
    v66[0] = _NSConcreteStackBlock;
    v66[1] = 3221225472;
    v66[2] = __74__MPVoicemailTableViewController_tableView_expandRowAtIndexPath_animated___block_invoke;
    v66[3] = &unk_1002853E8;
    v57 = v8;
    v67 = v8;
    v68 = self;
    v30 = v9;
    v69 = v30;
    v63[0] = _NSConcreteStackBlock;
    v63[1] = 3221225472;
    v63[2] = __74__MPVoicemailTableViewController_tableView_expandRowAtIndexPath_animated___block_invoke_2;
    v63[3] = &unk_100285C58;
    v31 = v67;
    v64 = v31;
    v65 = self;
    [v31 performBatchUpdates:v66 completion:v63];
    [v31 scrollToRowAtIndexPath:v30 atScrollPosition:0 animated:v5];
    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v32 = [(MPVoicemailTableViewController *)self tableView];
    v33 = [v32 visibleCells];

    v34 = [v33 countByEnumeratingWithState:&v59 objects:v70 count:16];
    if (v34)
    {
      v35 = v34;
      v36 = *v60;
      do
      {
        for (i = 0; i != v35; i = i + 1)
        {
          if (*v60 != v36)
          {
            objc_enumerationMutation(v33);
          }

          v38 = *(*(&v59 + 1) + 8 * i);
          v39 = [(MPVoicemailTableViewController *)self tableView];
          v40 = [v39 indexPathForCell:v38];

          v41 = v38;
          if ([v40 isEqual:v30])
          {
            [v41 setForegroundColor:0];
          }

          else
          {
            v42 = [(MPVoicemailTableViewController *)self dimmedColor];
            [v41 setForegroundColor:v42];
          }
        }

        v35 = [v33 countByEnumeratingWithState:&v59 objects:v70 count:16];
      }

      while (v35);
    }

    v43 = [(MPVoicemailTableViewController *)self voicemailController];
    v21 = v55;
    v44 = [v43 isRestrictedMessage:v55];

    v8 = v57;
    v18 = v58;
    if (v55 && (([v55 isRead]| v44) & 1) == 0)
    {
      v45 = PHDefaultLog();
      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v72 = v55;
        _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "Found voicemail that needs playback: %@", buf, 0xCu);
      }

      [(MPVoicemailTableViewController *)self voicemailMessageTableViewCell:v58 didRequestPlayState:1];
    }

    v11 = v56;
    goto LABEL_46;
  }

LABEL_47:
}

id __74__MPVoicemailTableViewController_tableView_expandRowAtIndexPath_animated___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) backgroundViewForTableView];
  [*(a1 + 32) setBackgroundView:v2];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = [*(a1 + 40) tableView];
  v4 = [v3 visibleCells];

  v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    do
    {
      v8 = 0;
      do
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v15 + 1) + 8 * v8);
        v10 = [*(a1 + 40) tableView];
        v11 = [v10 indexPathForCell:v9];

        v12 = v9;
        if ([v11 isEqual:*(a1 + 48)])
        {
          [v12 setForegroundColor:0];
        }

        else
        {
          v13 = [*(a1 + 40) dimmedColor];
          [v12 setForegroundColor:v13];
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  return [*(a1 + 40) _updateUIForMaskViewChange];
}

id __74__MPVoicemailTableViewController_tableView_expandRowAtIndexPath_animated___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setUserInteractionEnabled:1];
  [*(a1 + 40) setAllowTableViewScrolling:0];
  [*(a1 + 32) contentOffset];
  v2 = *(a1 + 40);

  return [v2 setFixedTableViewContentOffset:?];
}

- (void)configureCellWithSeparatorColor:(id)a3 atIndexPath:(id)a4
{
  v12 = a3;
  v6 = a4;
  v7 = [(MPVoicemailTableViewController *)self tableView];
  v8 = [v7 cellForRowAtIndexPath:v6];

  if (v8)
  {
    [v8 setSeparatorColor:v12];
    v9 = +[NSIndexPath indexPathForRow:inSection:](NSIndexPath, "indexPathForRow:inSection:", [v6 row] - 1, objc_msgSend(v6, "section"));
    v10 = [(MPVoicemailTableViewController *)self tableView];
    v11 = [v10 cellForRowAtIndexPath:v9];

    if (v11)
    {
      [v11 setSeparatorColor:v12];
    }
  }
}

- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5
{
  v12 = a4;
  v7 = a5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v12;
    v9 = [(MPVoicemailTableViewController *)self detailIndexPath];
    v10 = [v9 isEqual:v7];

    if (v10)
    {
      v11 = [(MPVoicemailTableViewController *)self dimmedColor];
      [v8 setForegroundColor:v11];
    }

    else
    {
      [v8 setForegroundColor:0];
    }
  }
}

- (void)handleTapGesture:(id)a3
{
  v5 = [(MPVoicemailTableViewController *)self tableView];
  v4 = [(MPVoicemailTableViewController *)self detailIndexPath];
  [(MPVoicemailTableViewController *)self tableView:v5 collapseRowAtIndexPath:v4 animated:1];
}

- (id)backgroundViewForTableView
{
  v3 = [UIView alloc];
  v4 = [(MPVoicemailTableViewController *)self tableView];
  [v4 bounds];
  v5 = [v3 initWithFrame:?];

  v6 = [(MPVoicemailTableViewController *)self dimmedColor];
  [v5 setBackgroundColor:v6];

  v7 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"handleTapGesture:"];
  [v5 addGestureRecognizer:v7];

  return v5;
}

- (id)playerController
{
  v2 = [(MPVoicemailTableViewController *)self phoneNavigationController];
  v3 = [v2 playerController];

  return v3;
}

- (void)loadTableHeaderView
{
  v3 = [(MPVoicemailTableViewController *)self tableView];
  v4 = +[(PHApplicationServices *)MPApplicationServices];
  v5 = [v4 accountManager];
  if ([v5 isOnline])
  {

LABEL_6:
    v9 = [(MPVoicemailTableViewController *)self conformsToProtocol:&OBJC_PROTOCOL___MPVoicemailListViewTipsHelper];
    goto LABEL_7;
  }

  v6 = +[(PHApplicationServices *)MPApplicationServices];
  v7 = [v6 accountManager];
  v8 = [v7 isAnyAccountSubscribed];

  if (!v8 || ([UIApp isRunningTest] & 1) != 0 || objc_msgSend(UIApp, "launchedToTest"))
  {
    goto LABEL_6;
  }

  v17 = objc_alloc_init(MPVoicemailConnectionUnavailableView);
  [(MPVoicemailConnectionUnavailableView *)v17 setAutoresizingMask:18];
  v18 = +[PHDevice currentDevice];
  -[MPVoicemailConnectionUnavailableView setButtonHidden:](v17, "setButtonHidden:", [v18 isCellularRadioEnabled] ^ 1);

  v19 = [(MPVoicemailConnectionUnavailableView *)v17 button];
  [v19 addTarget:self action:"handleDialVoiceMail:" forControlEvents:64];

  [(MPVoicemailTableViewController *)self setConnectionUnavailableView:v17];
  v11 = [(MPVoicemailTableViewController *)self connectionUnavailableView];

  v9 = [(MPVoicemailTableViewController *)self conformsToProtocol:&OBJC_PROTOCOL___MPVoicemailListViewTipsHelper];
  if (v11)
  {
    v12 = PHDefaultLog();
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_14;
    }

    LOWORD(buf[0]) = 0;
    v13 = "Voicemail showing ConnectionUnavailable in tableHeaderView";
    goto LABEL_13;
  }

LABEL_7:
  if ([(MPVoicemailTableViewController *)self isAccountProvisioningRequiredForAtLeastOneAccount])
  {
    v10 = [(MPVoicemailTableViewController *)self accountProvisioningViewController];
    v11 = [v10 view];

    v12 = PHDefaultLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      v13 = "Voicemail showing accountProvisioning in tableHeaderView";
LABEL_13:
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, v13, buf, 2u);
      goto LABEL_14;
    }

    goto LABEL_14;
  }

  if ([(MPVoicemailTableViewController *)self isTranscriptionUnavailable])
  {
    v11 = [(MPVoicemailTableViewController *)self transcriptionUnavailableView];
    v12 = PHDefaultLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      v13 = "Voicemail showing transcriptionUnavailableView in tableHeaderView";
      goto LABEL_13;
    }

LABEL_14:

    v14 = 1;
    goto LABEL_15;
  }

  if (v9 && ([(MPVoicemailTableViewController *)self showTipView]& 1) != 0)
  {
    v14 = 0;
    v11 = 0;
    v9 = 1;
  }

  else
  {
    [v3 setTableHeaderView:0];
    v14 = 0;
    v11 = 0;
  }

LABEL_15:
  objc_initWeak(buf, self);
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = __53__MPVoicemailTableViewController_loadTableHeaderView__block_invoke_195;
  v24[3] = &unk_100285D68;
  objc_copyWeak(&v25, buf);
  v26 = v14;
  v15 = objc_retainBlock(v24);
  if (!v11)
  {
LABEL_19:
    (v15[2])(v15);
    goto LABEL_20;
  }

  if (!v9)
  {
    [v3 setTableHeaderView:v11];
    goto LABEL_19;
  }

  v16 = self;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = __53__MPVoicemailTableViewController_loadTableHeaderView__block_invoke_2;
  v20[3] = &unk_100285D90;
  objc_copyWeak(&v23, buf);
  v21 = v11;
  v22 = v15;
  [(MPVoicemailTableViewController *)v16 hideTipViewWithCompletionHandler:v20];

  objc_destroyWeak(&v23);
LABEL_20:

  objc_destroyWeak(&v25);
  objc_destroyWeak(buf);
}

void __53__MPVoicemailTableViewController_loadTableHeaderView__block_invoke_195(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && *(a1 + 40) == 1)
  {
    v3 = WeakRetained;
    [WeakRetained layoutTableHeaderView];
    WeakRetained = v3;
  }
}

void __53__MPVoicemailTableViewController_loadTableHeaderView__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = *(a1 + 32);
    v5 = WeakRetained;
    v4 = [WeakRetained tableView];
    [v4 setTableHeaderView:v3];

    (*(*(a1 + 40) + 16))();
    WeakRetained = v5;
  }
}

- (void)layoutTableHeaderView
{
  v3 = [(MPVoicemailTableViewController *)self tableView];
  v2 = [v3 tableHeaderView];
  [v2 setNeedsUpdateConstraints];
  [v2 systemLayoutSizeFittingSize:{UILayoutFittingCompressedSize.width, UILayoutFittingCompressedSize.height}];
  [v2 frame];
  [v2 setFrame:?];
  [v3 setTableHeaderView:v2];
}

- (id)voicemailMessageViewModelForVoicemail:(id)a3 isExpanded:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = objc_alloc_init(MPVoicemailMessageViewModel);
  v8 = [v6 date];
  [(MPVoicemailMessageViewModel *)v7 setDate:v8];

  v9 = PHVoicemailCellDateFormatter();
  v10 = [v6 date];
  v11 = [v9 stringFromDate:v10];
  [(MPVoicemailMessageViewModel *)v7 setLocalizedDate:v11];

  v12 = [(MPVoicemailTableViewController *)self voicemailController];
  v13 = [v12 localizedTitleForMessage:v6];
  [(MPVoicemailMessageViewModel *)v7 setLocalizedTitle:v13];

  [v6 duration];
  v15 = PHVoicemailFormatTime(v14);
  [(MPVoicemailMessageViewModel *)v7 setLocalizedDuration:v15];

  v16 = [(MPVoicemailTableViewController *)self voicemailController];
  v17 = [v16 localizedSubtitleForMessage:v6];
  [(MPVoicemailMessageViewModel *)v7 setLocalizedSubtitle:v17];

  -[MPVoicemailMessageViewModel setIsRead:](v7, "setIsRead:", [v6 isRead]);
  -[MPVoicemailMessageViewModel setIsDeleted:](v7, "setIsDeleted:", [v6 folder] == 2);
  v18 = [v6 isTranscriptionAvailable];
  v19 = PHDefaultLog();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = [v6 identifier];
    *buf = 138412546;
    v41 = v20;
    v42 = 1024;
    v43 = v18;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Voicemail %@ has a transcript available: %d", buf, 0x12u);
  }

  [(MPVoicemailMessageViewModel *)v7 setShowsTranscriptionView:v18];
  [(MPVoicemailMessageViewModel *)v7 setShowsPlayerControls:1];
  [v6 duration];
  [(MPVoicemailMessageViewModel *)v7 setDuration:?];
  if (PHDeviceSupportsDualSim())
  {
    v21 = [(MPVoicemailTableViewController *)self voicemailController];
    v22 = [v21 callProviderManager];
    v23 = [v22 telephonyProvider];
    v24 = [v23 prioritizedSenderIdentities];
    if ([v24 count] < 2)
    {
    }

    else
    {
      v25 = [v6 receiverDestinationID];
      v26 = [v25 length];

      if (!v26)
      {
        goto LABEL_9;
      }

      v27 = [TUHandle alloc];
      v28 = [v6 receiverDestinationID];
      v21 = [v27 initWithType:2 value:v28];

      v29 = [v6 receiverISOCountryCode];
      v22 = [v21 canonicalHandleForISOCountryCode:v29];

      v39 = [(MPVoicemailTableViewController *)self voicemailController];
      v30 = [v39 callProviderManager];
      v31 = [v30 telephonyProvider];
      [v31 senderIdentityForHandle:v22];
      v33 = v32 = v4;
      v23 = [v33 localizedShortName];

      v4 = v32;
      [(MPVoicemailMessageViewModel *)v7 setLocalizedSenderIdentityTitle:v23];
    }
  }

LABEL_9:
  if (v4)
  {
    v34 = [(MPVoicemailTableViewController *)self voicemailController];
    v4 = [v34 isRestrictedMessage:v6];

    if (v4)
    {
      v35 = [(MPVoicemailTableViewController *)self voicemailController];
      v36 = [v35 localizedAttributedDowntimeTitleForMessage:v6];
    }

    else
    {
      v36 = 0;
    }

    v37 = [[VMMessageTranscriptViewModel alloc] initWithMPMessage:v6];
    [(MPVoicemailMessageViewModel *)v7 setTranscriptViewModel:v37];
  }

  else
  {
    v36 = 0;
  }

  [(MPVoicemailMessageViewModel *)v7 setShowsRestrictedAlertView:v4];
  [(MPVoicemailMessageViewModel *)v7 setLocalizedAttributedRestrictedAlertTitle:v36];

  return v7;
}

- (id)currentExpandedVoicemailMessageCell
{
  v3 = [(MPVoicemailTableViewController *)self detailIndexPath];
  if (v3)
  {
    v4 = [(MPVoicemailTableViewController *)self tableView];
    v5 = [v4 cellForRowAtIndexPath:v3];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)updateLargeTitleInsets
{
  v3 = [(MPVoicemailTableViewController *)self featureFlags];
  v4 = [v3 phoneRecentsAvatarsEnabled];

  if ((v4 & 1) == 0)
  {
    v5 = [(MPVoicemailTableViewController *)self navigationItem];
    [v5 largeTitleInsets];
    v7 = v6;
    v9 = v8;
    v11 = v10;

    +[PHVoicemailMessageTableViewCell marginWidth];
    v13 = v12;
    v14 = [(MPVoicemailTableViewController *)self navigationItem];
    [v14 setLargeTitleInsets:{v7, v13, v9, v11}];

    v16 = [(MPVoicemailTableViewController *)self navigationItem];
    v15 = [v16 navigationBar];
    [v15 setNeedsLayout];
  }
}

- (MPVoicemailTranscriptionUnavailableView)transcriptionUnavailableView
{
  transcriptionUnavailableView = self->_transcriptionUnavailableView;
  if (!transcriptionUnavailableView)
  {
    v4 = objc_alloc_init(MPVoicemailTranscriptionUnavailableView);
    v5 = self->_transcriptionUnavailableView;
    self->_transcriptionUnavailableView = v4;

    [(MPVoicemailTranscriptionUnavailableView *)self->_transcriptionUnavailableView setAutoresizingMask:18];
    transcriptionUnavailableView = self->_transcriptionUnavailableView;
  }

  return transcriptionUnavailableView;
}

- (void)resetSelectedIndexPath
{
  v3 = [(MPVoicemailTableViewController *)self detailIndexPath];

  if (v3)
  {
    v4 = [(MPVoicemailTableViewController *)self tableView];
    v5 = [(MPVoicemailTableViewController *)self detailIndexPath];
    v6 = [v4 cellForRowAtIndexPath:v5];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = +[NSNotificationCenter defaultCenter];
      [v7 removeObserver:self name:@"PHAudioDeviceControllerAudioRoutesChangedNotification" object:0];

      v8 = +[NSNotificationCenter defaultCenter];
      [v8 removeObserver:self name:@"PHAudioDeviceControllerPickedRouteChangedNotification" object:0];

      v9 = v6;
      v10 = PHDefaultLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = [(MPVoicemailTableViewController *)self detailIndexPath];
        v12 = 138412290;
        v13 = v11;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Requesting to stop playback at indexPath: %@", &v12, 0xCu);
      }

      [(MPVoicemailTableViewController *)self voicemailMessageTableViewCell:v9 didRequestPlayState:0];
      [(MPVoicemailTableViewController *)self setDetailIndexPath:0];
    }
  }
}

- (void)configureAudioButtonForRowAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(MPVoicemailTableViewController *)self tableView];
  v6 = [v5 cellForRowAtIndexPath:v4];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
    v8 = [v7 toolbar];
    v9 = [v8 audioRouteButton];

    v10 = [(MPVoicemailTableViewController *)self audioDeviceController];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = __72__MPVoicemailTableViewController_configureAudioButtonForRowAtIndexPath___block_invoke;
    v13[3] = &unk_100285DE0;
    v14 = v9;
    v15 = self;
    v16 = v7;
    v11 = v7;
    v12 = v9;
    [v10 fetchCurrentRouteWithCompletionHandler:v13];
  }
}

void __72__MPVoicemailTableViewController_configureAudioButtonForRowAtIndexPath___block_invoke(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) configureButtonUsingAudioRoute:a2];
  v3 = dispatch_get_global_queue(2, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __72__MPVoicemailTableViewController_configureAudioButtonForRowAtIndexPath___block_invoke_2;
  block[3] = &unk_1002853E8;
  v4 = *(a1 + 48);
  block[4] = *(a1 + 40);
  v6 = v4;
  v7 = *(a1 + 32);
  dispatch_async(v3, block);
}

void __72__MPVoicemailTableViewController_configureAudioButtonForRowAtIndexPath___block_invoke_2(id *a1)
{
  v2 = [a1[4] shouldSuppressAudioRouteAlertController];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = __72__MPVoicemailTableViewController_configureAudioButtonForRowAtIndexPath___block_invoke_3;
  v5[3] = &unk_100285DB8;
  v6 = a1[5];
  v9 = v2;
  v3 = a1[6];
  v4 = a1[4];
  v7 = v3;
  v8 = v4;
  dispatch_async(&_dispatch_main_q, v5);
}

id __72__MPVoicemailTableViewController_configureAudioButtonForRowAtIndexPath___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) toolbar];
  [v2 updateAudioRouteButtonWithTouchUpInsideEnabled:*(a1 + 56)];

  v3 = *(a1 + 56);
  if (v3 == 1)
  {
    v5 = *(a1 + 40);
    v4 = (a1 + 40);
    [v5 setMenu:0];
  }

  else
  {
    v6 = [*(a1 + 48) routeListController];
    v7 = [v6 menu];
    v8 = *(a1 + 40);
    v4 = (a1 + 40);
    [v8 setMenu:v7];
  }

  v9 = *v4;

  return [v9 setShowsMenuAsPrimaryAction:v3 ^ 1u];
}

- (BOOL)shouldSuppressAudioRouteAlertController
{
  v3 = [(MPVoicemailTableViewController *)self audioDeviceController];
  v4 = [v3 _unformattedPickableRoutesForAudioSessionCategory:AVAudioSessionCategoryVoiceMail];

  v5 = [(MPVoicemailTableViewController *)self audioDeviceController];
  v6 = [v5 routesForUnformattedPickableRoutes:v4];
  if ([v6 count] == 2)
  {
    v7 = [(MPVoicemailTableViewController *)self audioDeviceController];
    if ([v7 handsetRouteAvailableForUnformattedPickableRoutes:v4])
    {
      v8 = [(MPVoicemailTableViewController *)self audioDeviceController];
      v9 = [v8 speakerRouteAvailableForUnformattedPickableRoutes:v4];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (PHAudioRoutingMenuController)routeListController
{
  routeListController = self->_routeListController;
  if (!routeListController)
  {
    objc_initWeak(&location, self);
    v9 = _NSConcreteStackBlock;
    v10 = 3221225472;
    v11 = __53__MPVoicemailTableViewController_routeListController__block_invoke;
    v12 = &unk_100285E08;
    objc_copyWeak(&v13, &location);
    v4 = objc_retainBlock(&v9);
    v5 = [PHAudioRoutingMenuController alloc];
    v6 = [(PHAudioRoutingMenuController *)v5 initWithStyle:3 dataSource:self delegate:self wantsAsyncReload:1 menuChangeHandler:v4, v9, v10, v11, v12];
    v7 = self->_routeListController;
    self->_routeListController = v6;

    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
    routeListController = self->_routeListController;
  }

  return routeListController;
}

void __53__MPVoicemailTableViewController_routeListController__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v2 = [WeakRetained detailIndexPath];

    WeakRetained = v4;
    if (v2)
    {
      v3 = [v4 detailIndexPath];
      [v4 configureAudioButtonForRowAtIndexPath:v3];

      WeakRetained = v4;
    }
  }
}

- (void)fetchRoutesForAudioRoutingMenuController:(id)a3 completionHandler:(id)a4
{
  v5 = a4;
  v6 = [(MPVoicemailTableViewController *)self audioDeviceController];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = __93__MPVoicemailTableViewController_fetchRoutesForAudioRoutingMenuController_completionHandler___block_invoke;
  v8[3] = &unk_100285E30;
  v9 = v5;
  v7 = v5;
  [v6 fetchRoutesWithCompletionHandler:v8];
}

- (void)audioRoutingMenuController:(id)a3 didSelectRoute:(id)a4
{
  v12 = a4;
  v5 = [(MPVoicemailTableViewController *)self audioDeviceController];
  v6 = [v5 currentRoute];
  v7 = [v6 isEqualToRouteIgnoringIsRecommended:v12];

  if ((v7 & 1) == 0)
  {
    v8 = [(MPVoicemailTableViewController *)self audioDeviceController];
    v9 = [v12 uniqueIdentifier];
    [v8 pickRouteWithUID:v9];

    v10 = [(MPVoicemailTableViewController *)self playerController];
    LOBYTE(v8) = [v10 isPlaying];

    if ((v8 & 1) == 0)
    {
      v11 = +[AVAudioSession sharedInstance];
      [v11 deactivateVoicemailAudioSession];
    }
  }
}

- (void)voicemailMessageCellDidTapToCollapse:(id)a3
{
  v4 = [(MPVoicemailTableViewController *)self detailIndexPath];

  if (v4)
  {
    v6 = [(MPVoicemailTableViewController *)self tableView];
    v5 = [(MPVoicemailTableViewController *)self detailIndexPath];
    [(MPVoicemailTableViewController *)self tableView:v6 collapseRowAtIndexPath:v5 animated:1];
  }
}

- (void)voicemailMessageTableViewCell:(id)a3 actionButtonTappedForRowWithIndexPath:(id)a4
{
  v9 = a3;
  v6 = -[MPVoicemailTableViewController messageAtIndex:](self, "messageAtIndex:", [a4 row]);
  if (v6)
  {
    v7 = [v9 metadataView];
    v8 = [v7 actionButton];
    [(MPVoicemailTableViewController *)self exportVoicemailDataForVoicemail:v6 sourceView:v8];
  }
}

- (void)voicemailMessageTableViewCell:(id)a3 audioRouteButtonTappedForRowWithIndexPath:(id)a4
{
  v5 = dispatch_get_global_queue(2, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __106__MPVoicemailTableViewController_voicemailMessageTableViewCell_audioRouteButtonTappedForRowWithIndexPath___block_invoke;
  block[3] = &unk_100284FD0;
  block[4] = self;
  dispatch_async(v5, block);
}

void __106__MPVoicemailTableViewController_voicemailMessageTableViewCell_audioRouteButtonTappedForRowWithIndexPath___block_invoke(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __106__MPVoicemailTableViewController_voicemailMessageTableViewCell_audioRouteButtonTappedForRowWithIndexPath___block_invoke_2;
  block[3] = &unk_100284FD0;
  block[4] = *(a1 + 32);
  dispatch_async(&_dispatch_main_q, block);
}

void __106__MPVoicemailTableViewController_voicemailMessageTableViewCell_audioRouteButtonTappedForRowWithIndexPath___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) audioDeviceController];
  v3 = [v2 currentRoute];
  v4 = [v3 isSpeaker];

  v5 = [*(a1 + 32) audioDeviceController];
  v6 = v5;
  if (v4)
  {
    [v5 pickHandsetRoute];
  }

  else
  {
    [v5 pickSpeakerRoute];
  }
}

- (void)voicemailMessageTableViewCell:(id)a3 moveButtonTappedForRowWithIndexPath:(id)a4
{
  v5 = a4;
  +[CATransaction begin];
  v8 = _NSConcreteStackBlock;
  v9 = 3221225472;
  v10 = __100__MPVoicemailTableViewController_voicemailMessageTableViewCell_moveButtonTappedForRowWithIndexPath___block_invoke;
  v11 = &unk_1002852E0;
  v12 = self;
  v13 = v5;
  v6 = v5;
  [CATransaction setCompletionBlock:&v8];
  v7 = [(MPVoicemailTableViewController *)self tableView:v8];
  [(MPVoicemailTableViewController *)self tableView:v7 collapseRowAtIndexPath:v6 animated:1];

  +[CATransaction commit];
}

id __100__MPVoicemailTableViewController_voicemailMessageTableViewCell_moveButtonTappedForRowWithIndexPath___block_invoke(uint64_t a1)
{
  v2 = objc_opt_respondsToSelector();
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (v2)
  {

    return [v3 performTableViewRestoreActionAtIndexPath:v4];
  }

  else
  {

    return [v3 performTableViewDestructiveActionAtIndexPath:v4];
  }
}

- (BOOL)voicemailMessageTableViewCell:(id)a3 shouldShowRTTButtonForRowWithIndexPath:(id)a4
{
  v4 = -[MPVoicemailTableViewController messageAtIndex:](self, "messageAtIndex:", [a4 row]);
  v5 = [v4 transcript];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v7 = [v4 transcript];
    v8 = [v7 conversation];

    v9 = [v8 utterances];
    v10 = [v9 count] != 0;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)voicemailMessageTableViewCell:(id)a3 rttButtonTappedForRowWithIndexPath:(id)a4
{
  v13 = -[MPVoicemailTableViewController messageAtIndex:](self, "messageAtIndex:", [a4 row]);
  v5 = [v13 transcript];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v7 = v13;
  if (isKindOfClass)
  {
    v8 = [v13 transcript];
    v9 = [v8 conversation];

    v10 = RTTUIConversationViewControllerClass();
    if (v10 && v9)
    {
      v11 = [v10 viewControllerForConversation:v9];
      v12 = [(MPVoicemailTableViewController *)self navigationController];
      [v12 pushViewController:v11 animated:1];
    }

    v7 = v13;
  }
}

- (void)voicemailMessageTableViewCellDidBeginScrubbing:(id)a3
{
  v3 = [(MPVoicemailTableViewController *)self playerController];
  [v3 pause];
}

- (void)voicemailMessageTableViewCellDidEndScrubbing:(id)a3
{
  v3 = [(MPVoicemailTableViewController *)self playerController];
  [v3 play];
}

- (void)voicemailMessageTableViewCellDidCancelScrubbing:(id)a3
{
  v4 = [(MPVoicemailTableViewController *)self currentExpandedVoicemailMessageCell];
  if (v4)
  {
    v9 = v4;
    v5 = [(MPVoicemailTableViewController *)self playerController];
    [v5 currentTime];
    v7 = v6;
    v8 = [v9 playerControlsView];
    [v8 setElapsedTime:v7];

    v4 = v9;
  }
}

- (void)voicemailMessageTableViewCell:(id)a3 didChangeElapsedTime:(double)a4
{
  v6 = [(MPVoicemailTableViewController *)self playerController];
  *&v5 = a4;
  [v6 seekToTime:v5];
}

- (void)voicemailMessageTableViewCell:(id)a3 didReceiveTranscriptTapGesture:(id)a4
{
  if ([a4 state] == 3)
  {
    v5 = [(MPVoicemailTableViewController *)self detailIndexPath];
    v15 = -[MPVoicemailTableViewController messageAtIndex:](self, "messageAtIndex:", [v5 row]);

    v6 = [v15 transcript];

    if (v6)
    {
      v7 = +[NSBundle mainBundle];
      v8 = [v7 localizedStringForKey:@"VOICEMAILUI_MESSAGE_TRANSCRIPT_ALERT_ACTION_TITLE_CANCEL" value:&stru_10028F310 table:@"VoicemailUI"];
      v9 = [UIAlertAction actionWithTitle:v8 style:1 handler:0];

      v10 = +[NSBundle mainBundle];
      v11 = [v10 localizedStringForKey:@"VOICEMAILUI_MESSAGE_TRANSCRIPT_ALERT_TITLE_DEBUG" value:&stru_10028F310 table:@"VoicemailUI"];
      v12 = [v15 transcript];
      v13 = [v12 debugDescription];
      v14 = [UIAlertController alertControllerWithTitle:v11 message:v13 preferredStyle:1];

      [v14 addAction:v9];
      [(MPVoicemailTableViewController *)self presentViewController:v14 animated:1 completion:0];
    }
  }
}

- (void)voicemailMessageTableViewCellShouldPresentWelcomeViewController:(id)a3
{
  v4 = [[_TtC11MobilePhone34LiveVoicemailWelcomeViewController alloc] initWithDelegate:self];
  [(MPVoicemailTableViewController *)self presentViewController:v4 animated:1 completion:0];
}

- (void)voicemailMessageTableViewCell:(id)a3 didReceiveTranscriptFeedback:(unint64_t)a4
{
  v6 = [(MPVoicemailTableViewController *)self detailIndexPath];
  v7 = -[MPVoicemailTableViewController messageAtIndex:](self, "messageAtIndex:", [v6 row]);

  if (a4 - 3 >= 0xFFFFFFFFFFFFFFFELL && v7)
  {
    v8 = [(MPVoicemailTableViewController *)self voicemailController];
    v9 = [v8 voicemailManager];
    v10 = [v7 identifier];
    [v9 reportTranscriptionRatedAccurate:a4 == 2 forVoicemail:v10];
  }

  v11 = +[NSBundle mainBundle];
  v12 = [v11 localizedStringForKey:@"VOICEMAIL_TRANSCRIPTION_ALERT_TITLE" value:&stru_10028F310 table:@"Voicemail"];
  v13 = +[NSBundle mainBundle];
  v14 = [v13 localizedStringForKey:@"VOICEMAIL_TRANSCRIPTION_ALERT_MESSAGE" value:&stru_10028F310 table:@"Voicemail"];
  v15 = [UIAlertController alertControllerWithTitle:v12 message:v14 preferredStyle:1];

  v16 = +[NSBundle mainBundle];
  v17 = [v16 localizedStringForKey:@"VOICEMAIL_TRANSCRIPTION_ALERT_CANCEL" value:&stru_10028F310 table:@"Voicemail"];
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = __93__MPVoicemailTableViewController_voicemailMessageTableViewCell_didReceiveTranscriptFeedback___block_invoke;
  v26[3] = &unk_100285468;
  v26[4] = self;
  v18 = [UIAlertAction actionWithTitle:v17 style:1 handler:v26];
  [v15 addAction:v18];

  v19 = +[NSBundle mainBundle];
  v20 = [v19 localizedStringForKey:@"VOICEMAIL_TRANSCRIPTION_ALERT_ACCEPT" value:&stru_10028F310 table:@"Voicemail"];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = __93__MPVoicemailTableViewController_voicemailMessageTableViewCell_didReceiveTranscriptFeedback___block_invoke_2;
  v23[3] = &unk_100285E58;
  v24 = v7;
  v25 = self;
  v21 = v7;
  v22 = [UIAlertAction actionWithTitle:v20 style:0 handler:v23];
  [v15 addAction:v22];

  [(MPVoicemailTableViewController *)self presentViewController:v15 animated:1 completion:0];
}

id __93__MPVoicemailTableViewController_voicemailMessageTableViewCell_didReceiveTranscriptFeedback___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = [*(a1 + 40) voicemailController];
    v3 = [v2 voicemailManager];
    v4 = [*(a1 + 32) identifier];
    [v3 reportTranscriptionProblemForVoicemail:v4];
  }

  else
  {
    v2 = PHDefaultLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      __93__MPVoicemailTableViewController_voicemailMessageTableViewCell_didReceiveTranscriptFeedback___block_invoke_2_cold_1(v2);
    }
  }

  return [*(a1 + 40) dismissViewControllerAnimated:1 completion:0];
}

- (void)cancelPlaybackRequest
{
  v3 = [(MPVoicemailTableViewController *)self audioPlaybackRequestBlock];

  if (v3)
  {
    v4 = PHDefaultLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Cancelling playback request block", v6, 2u);
    }

    v5 = [(MPVoicemailTableViewController *)self audioPlaybackRequestBlock];
    dispatch_block_cancel(v5);

    [(MPVoicemailTableViewController *)self setAudioPlaybackRequestBlock:0];
  }
}

- (void)voicemailMessageTableViewCell:(id)a3 didRequestPlayState:(int64_t)a4
{
  v6 = a3;
  v7 = PHDefaultLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v23 = a4;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Requested state: %ld for playbackControls", buf, 0xCu);
  }

  switch(a4)
  {
    case 2:
      v15 = [(MPVoicemailTableViewController *)self playerController];
      [v15 pause];

      break;
    case 1:
      v9 = [(MPVoicemailTableViewController *)self tableView];
      v10 = [v9 indexPathForCell:v6];
      v11 = -[MPVoicemailTableViewController messageAtIndex:](self, "messageAtIndex:", [v10 row]);
      v12 = [v11 dataURL];

      if (v12)
      {
        objc_initWeak(buf, self);
        [(MPVoicemailTableViewController *)self setIsPendingAudioSessionActivation:1];
        [(MPVoicemailTableViewController *)self cancelPlaybackRequest];
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = __84__MPVoicemailTableViewController_voicemailMessageTableViewCell_didRequestPlayState___block_invoke;
        block[3] = &unk_100285170;
        objc_copyWeak(&v21, buf);
        v20 = v12;
        v13 = dispatch_block_create(0, block);
        [(MPVoicemailTableViewController *)self setAudioPlaybackRequestBlock:v13];

        v14 = dispatch_get_global_queue(2, 0);
        v17[0] = _NSConcreteStackBlock;
        v17[1] = 3221225472;
        v17[2] = __84__MPVoicemailTableViewController_voicemailMessageTableViewCell_didRequestPlayState___block_invoke_235;
        v17[3] = &unk_1002857A8;
        objc_copyWeak(&v18, buf);
        dispatch_async(v14, v17);

        objc_destroyWeak(&v18);
        objc_destroyWeak(&v21);
        objc_destroyWeak(buf);
      }

      break;
    case 0:
      v8 = [(MPVoicemailTableViewController *)self playerController];
      [v8 stop];

      [(MPVoicemailTableViewController *)self setIsPendingAudioSessionActivation:0];
      [(MPVoicemailTableViewController *)self cancelPlaybackRequest];
      break;
  }

  v16 = [(MPVoicemailTableViewController *)self audioDeviceController];
  [v16 restorePickedRoute];
}

void __84__MPVoicemailTableViewController_voicemailMessageTableViewCell_didRequestPlayState___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = PHDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      v6 = 138412290;
      v7 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Executing playback block for URL: %@", &v6, 0xCu);
    }

    v5 = [WeakRetained playerController];
    [v5 playURL:*(a1 + 32)];

    [WeakRetained setAudioPlaybackRequestBlock:0];
  }
}

void __84__MPVoicemailTableViewController_voicemailMessageTableViewCell_didRequestPlayState___block_invoke_235(uint64_t a1)
{
  v2 = +[AVAudioSession sharedInstance];
  [v2 activateVoicemailAudioSession];

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __84__MPVoicemailTableViewController_voicemailMessageTableViewCell_didRequestPlayState___block_invoke_2;
  block[3] = &unk_1002857A8;
  objc_copyWeak(&v4, (a1 + 32));
  dispatch_async(&_dispatch_main_q, block);
  objc_destroyWeak(&v4);
}

void __84__MPVoicemailTableViewController_voicemailMessageTableViewCell_didRequestPlayState___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained audioDeviceController];
    v4 = [v3 currentRoute];
    v5 = [v4 isReceiver] ? 2 : 0;

    v6 = [v2 audioPlaybackRequestBlock];

    if (v6)
    {
      v7 = dispatch_time(0, 1000000000 * v5);
      v8 = [v2 audioPlaybackRequestBlock];
      dispatch_after(v7, &_dispatch_main_q, v8);

      v9 = PHDefaultLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = 134217984;
        v11 = v5;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Scheduled playback request block with delay %lu", &v10, 0xCu);
      }
    }
  }
}

- (void)playMessage:(id)a3
{
  v4 = a3;
  if ([(MPVoicemailTableViewController *)self isViewLoaded]&& [(MPVoicemailTableViewController *)self visible])
  {
    v5 = [v4 identifier];
    v6 = [(MPVoicemailTableViewController *)self indexPathForMessageID:v5];

    v7 = [(MPVoicemailTableViewController *)self voicemailController];
    v8 = [v7 isRestrictedMessage:v4];

    if (v6)
    {
      if (!v4 || v8 & 1 | (([v4 isDataAvailable] & 1) == 0))
      {
        v9 = PHDefaultLog();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v27 = 138412546;
          v28 = v4;
          v29 = 1024;
          v30 = v8;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Asked to play voicemail %@ but will not as wither the voicemail is nil, data is not available, the message is restricted (%d) or it can't be found in the table", &v27, 0x12u);
        }

        goto LABEL_24;
      }

      v12 = [(MPVoicemailTableViewController *)self voicemails];
      v13 = [v12 containsObject:v4];

      if (v13)
      {
        v14 = [(MPVoicemailTableViewController *)self view];
        [v14 setUserInteractionEnabled:0];

        v15 = [(MPVoicemailTableViewController *)self detailIndexPath];
        if (v15 && (v16 = v15, -[MPVoicemailTableViewController detailIndexPath](self, "detailIndexPath"), v17 = objc_claimAutoreleasedReturnValue(), v18 = [v6 isEqual:v17], v17, v16, (v18 & 1) == 0))
        {
          v21 = [(MPVoicemailTableViewController *)self tableView];
          v22 = [(MPVoicemailTableViewController *)self detailIndexPath];
          [(MPVoicemailTableViewController *)self tableView:v21 collapseRowAtIndexPath:v22 animated:0];
        }

        else
        {
          v19 = [(MPVoicemailTableViewController *)self detailIndexPath];

          if (v19)
          {
LABEL_28:
            v24 = [(MPVoicemailTableViewController *)self tableView];
            v25 = [v24 cellForRowAtIndexPath:v6];

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [(MPVoicemailTableViewController *)self voicemailMessageTableViewCell:v25 didRequestPlayState:1];
            }

            v26 = [(MPVoicemailTableViewController *)self view];
            [v26 setUserInteractionEnabled:1];

            goto LABEL_24;
          }
        }

        v23 = [(MPVoicemailTableViewController *)self tableView];
        [(MPVoicemailTableViewController *)self tableView:v23 expandRowAtIndexPath:v6 animated:0];

        goto LABEL_28;
      }

      v20 = PHDefaultLog();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v27 = 138412290;
        v28 = v4;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Adding message to playback queue since we did not find it in voicemail list %@", &v27, 0xCu);
      }
    }

    else
    {
      v11 = PHDefaultLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v27 = 138412290;
        v28 = v4;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Adding message to playback queue since we did not find it in voicemail list %@", &v27, 0xCu);
      }

      [(MPVoicemailTableViewController *)self setPlayMessageOnReloadData:1];
    }

    [(MPVoicemailTableViewController *)self addMessageToPlaybackQueue:v4];
LABEL_24:

    goto LABEL_25;
  }

  v10 = PHDefaultLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v27 = 138412290;
    v28 = v4;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Adding message to playback queue since view is not loaded %@", &v27, 0xCu);
  }

  [(MPVoicemailTableViewController *)self addMessageToPlaybackQueue:v4];
LABEL_25:
}

- (id)messageToPlayFromPlaybackQueue
{
  if ([(MPVoicemailTableViewController *)self isViewLoaded])
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v3 = [(MPVoicemailTableViewController *)self messagePlaybackQueue];
    v4 = [v3 reverseObjectEnumerator];

    v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v17;
      while (2)
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v17 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = [(MPVoicemailTableViewController *)self indexPathForMessageID:*(*(&v16 + 1) + 8 * i)];
          if (v9)
          {
            v10 = v9;
            v11 = [(MPVoicemailTableViewController *)self voicemails];
            v12 = [v11 objectAtIndexedSubscript:{objc_msgSend(v10, "row")}];

            if (v12)
            {
              v13 = [(MPVoicemailTableViewController *)self voicemailController];
              v14 = [v13 isRestrictedMessage:v12];

              if (!v14)
              {

                goto LABEL_16;
              }
            }
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

    v12 = 0;
LABEL_16:
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)playMessageFromPlaybackQueue
{
  v3 = [(MPVoicemailTableViewController *)self messageToPlayFromPlaybackQueue];
  if (v3)
  {
    v4 = PHDefaultLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [(MPVoicemailTableViewController *)self messagePlaybackQueue];
      v9 = 138412546;
      v10 = v3;
      v11 = 2112;
      v12 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Found a message: %@ from the playback queue: %@ that needs to be played", &v9, 0x16u);
    }

    v6 = [(MPVoicemailTableViewController *)self messagePlaybackQueue];
    v7 = [v3 identifier];
    [v6 removeObject:v7];

    [(MPVoicemailTableViewController *)self playMessage:v3];
  }

  return v3 != 0;
}

- (void)exportVoicemailDataForVoicemail:(id)a3 sourceView:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = PHDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v31 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Exporting data for voicemail %@", buf, 0xCu);
  }

  v9 = [(MPVoicemailTableViewController *)self playerController];
  v10 = [v9 isPlaying];

  if (v10)
  {
    v11 = [(MPVoicemailTableViewController *)self playerController];
    [v11 pause];
  }

  v12 = [v6 dataURL];
  v13 = [AVURLAsset assetWithURL:v12];

  v14 = [[AVAssetExportSession alloc] initWithAsset:v13 presetName:AVAssetExportPresetAppleM4A];
  v15 = [v6 identifier];
  v16 = [NSString stringWithFormat:@"voicemail-%lu.m4a", v15];

  v17 = NSTemporaryDirectory();
  v18 = [v17 stringByAppendingPathComponent:v16];
  v19 = [NSURL fileURLWithPath:v18];
  [v14 setOutputURL:v19];

  v20 = +[NSFileManager defaultManager];
  v21 = [v14 outputURL];
  [v20 removeItemAtURL:v21 error:0];

  [v14 setOutputFileType:AVFileTypeAppleM4A];
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = __77__MPVoicemailTableViewController_exportVoicemailDataForVoicemail_sourceView___block_invoke;
  v25[3] = &unk_100285308;
  v26 = v14;
  v27 = v6;
  v28 = self;
  v29 = v7;
  v22 = v7;
  v23 = v6;
  v24 = v14;
  [v24 exportAsynchronouslyWithCompletionHandler:v25];
}

void __77__MPVoicemailTableViewController_exportVoicemailDataForVoicemail_sourceView___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) status];
  if (v2 < 3)
  {
    v5 = PHDefaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Voicemail Export: We got a completion handler callback for export, but no error", buf, 2u);
    }
  }

  else if ((v2 - 4) >= 2)
  {
    if (v2 != 3)
    {
      return;
    }

    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = __77__MPVoicemailTableViewController_exportVoicemailDataForVoicemail_sourceView___block_invoke_2;
    v15[3] = &unk_100285308;
    *&v6 = *(a1 + 40);
    *(&v6 + 1) = *(a1 + 48);
    v10 = v6;
    v7 = *(a1 + 32);
    v8 = *(a1 + 56);
    *&v9 = v7;
    *(&v9 + 1) = v8;
    v16 = v10;
    v17 = v9;
    dispatch_async(&_dispatch_main_q, v15);

    v5 = v16;
  }

  else
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __77__MPVoicemailTableViewController_exportVoicemailDataForVoicemail_sourceView___block_invoke_246;
    block[3] = &unk_1002852E0;
    v3 = *(a1 + 32);
    v4 = *(a1 + 48);
    v12 = v3;
    v13 = v4;
    dispatch_async(&_dispatch_main_q, block);
    v5 = v12;
  }
}

void __77__MPVoicemailTableViewController_exportVoicemailDataForVoicemail_sourceView___block_invoke_2(uint64_t a1)
{
  v2 = [PHVoicemailVoiceMemoActivity alloc];
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) voicemailController];
  v5 = [v4 contactStore];
  v6 = [(PHVoicemailVoiceMemoActivity *)v2 initWithVoicemail:v3 contactStore:v5];

  v7 = [*(a1 + 48) outputURL];
  v8 = [*(a1 + 40) voicemailController];
  v9 = [v8 localizedTitleForMessage:*(a1 + 32)];
  v10 = [(PHVoicemailVoiceMemoActivity *)v6 URLItemWithExportedURL:v7 localizedTitle:v9];

  v11 = [UIActivityViewController alloc];
  v20 = v10;
  v12 = [NSArray arrayWithObjects:&v20 count:1];
  v13 = [v11 initWithActivityItems:v12 applicationActivities:0];

  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = __77__MPVoicemailTableViewController_exportVoicemailDataForVoicemail_sourceView___block_invoke_3;
  v18[3] = &unk_100285E80;
  v19 = *(a1 + 48);
  [v13 setCompletionWithItemsHandler:v18];
  v14 = [*(a1 + 40) featureFlags];
  if (![v14 phoneLargeFormatUIEnabled])
  {
    goto LABEL_4;
  }

  v15 = +[UIDevice currentDevice];
  v16 = [v15 userInterfaceIdiom];

  if ((v16 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    [v13 setModalPresentationStyle:7];
    v17 = *(a1 + 56);
    v14 = [v13 popoverPresentationController];
    [v14 setSourceView:v17];
LABEL_4:
  }

  [*(a1 + 40) presentViewController:v13 animated:1 completion:0];
}

void __77__MPVoicemailTableViewController_exportVoicemailDataForVoicemail_sourceView___block_invoke_3(uint64_t a1)
{
  v3 = +[NSFileManager defaultManager];
  v2 = [*(a1 + 32) outputURL];
  [v3 removeItemAtURL:v2 error:0];
}

void __77__MPVoicemailTableViewController_exportVoicemailDataForVoicemail_sourceView___block_invoke_246(uint64_t a1)
{
  v2 = PHDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __77__MPVoicemailTableViewController_exportVoicemailDataForVoicemail_sourceView___block_invoke_246_cold_1(a1);
  }

  v3 = +[NSBundle mainBundle];
  v4 = [v3 localizedStringForKey:@"VOICEMAIL_ERROR_TITLE_ERROR" value:&stru_10028F310 table:@"Voicemail"];
  v5 = +[NSBundle mainBundle];
  v6 = [v5 localizedStringForKey:@"VOICEMAIL_SHARE_ERROR_MESSAGE" value:&stru_10028F310 table:@"Voicemail"];
  v7 = [UIAlertController alertControllerWithTitle:v4 message:v6 preferredStyle:1];

  v8 = +[NSBundle mainBundle];
  v9 = [v8 localizedStringForKey:@"OK" value:&stru_10028F310 table:@"Voicemail"];
  v10 = [UIAlertAction actionWithTitle:v9 style:1 handler:0];
  [v7 addAction:v10];

  [*(a1 + 40) presentViewController:v7 animated:1 completion:0];
}

- (void)performDeleteAtIndexPaths:(id)a3 dataSourceActions:(id)a4 completionBlock:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(MPVoicemailTableViewController *)self messagesAtIndexPaths:v8];
  v12 = PHDefaultLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v36 = v11;
    v37 = 2112;
    v38 = v8;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Performing delete for messages: %@, with corresponding indexPaths: %@", buf, 0x16u);
  }

  if (v9)
  {
    v9[2](v9, v11);
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v13 = v11;
  v14 = [v13 countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v31;
    do
    {
      v17 = 0;
      do
      {
        if (*v31 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v30 + 1) + 8 * v17);
        v19 = [(MPVoicemailTableViewController *)self voicemailMessageViewModelCache];
        v20 = [v18 identifier];
        [v19 removeObjectForKey:v20];

        v17 = v17 + 1;
      }

      while (v15 != v17);
      v15 = [v13 countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v15);
  }

  v21 = [(MPVoicemailTableViewController *)self voicemails];
  [v21 removeObjectsInArray:v13];

  v22 = [(MPVoicemailTableViewController *)self featureFlags];
  v23 = [v22 voicemailSearchEnabled];

  if (v23 && ![(MPVoicemailTableViewController *)self visible])
  {
    [(PHTableViewController *)self setNeedsReloadData:1];
    if (v10)
    {
      v10[2](v10, v13);
    }
  }

  else
  {
    v24 = [(MPVoicemailTableViewController *)self tableView];
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = __94__MPVoicemailTableViewController_performDeleteAtIndexPaths_dataSourceActions_completionBlock___block_invoke;
    v28[3] = &unk_1002852E0;
    v28[4] = self;
    v29 = v8;
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = __94__MPVoicemailTableViewController_performDeleteAtIndexPaths_dataSourceActions_completionBlock___block_invoke_2;
    v25[3] = &unk_100285EA8;
    v27 = v10;
    v26 = v13;
    [v24 performBatchUpdates:v28 completion:v25];
  }
}

void __94__MPVoicemailTableViewController_performDeleteAtIndexPaths_dataSourceActions_completionBlock___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) tableView];
  [v2 deleteRowsAtIndexPaths:*(a1 + 40) withRowAnimation:2];
}

uint64_t __94__MPVoicemailTableViewController_performDeleteAtIndexPaths_dataSourceActions_completionBlock___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

- (void)voicemailMessageDetailViewController:(id)a3 destructiveActionPerformedForMessage:(id)a4 completionBlock:(id)a5
{
  v7 = a5;
  v8 = [a4 identifier];
  v9 = [(MPVoicemailTableViewController *)self indexPathForMessageID:v8];

  if (v9)
  {
    v13 = v9;
    v10 = [NSArray arrayWithObjects:&v13 count:1];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = __124__MPVoicemailTableViewController_voicemailMessageDetailViewController_destructiveActionPerformedForMessage_completionBlock___block_invoke;
    v11[3] = &unk_100285ED0;
    v11[4] = self;
    v12 = v7;
    [(MPVoicemailTableViewController *)self performDeleteAtIndexPaths:v10 dataSourceActions:0 completionBlock:v11];
  }

  else
  {
    v7[2](v7);
  }
}

id __124__MPVoicemailTableViewController_voicemailMessageDetailViewController_destructiveActionPerformedForMessage_completionBlock___block_invoke(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  return [v2 popViewControllerIfNeeded];
}

- (MPVoicemailController)voicemailController
{
  WeakRetained = objc_loadWeakRetained(&self->_voicemailController);

  return WeakRetained;
}

- (CGPoint)fixedTableViewContentOffset
{
  x = self->_fixedTableViewContentOffset.x;
  y = self->_fixedTableViewContentOffset.y;
  result.y = y;
  result.x = x;
  return result;
}

- (PhoneNavigationController)phoneNavigationController
{
  WeakRetained = objc_loadWeakRetained(&self->_phoneNavigationController);

  return WeakRetained;
}

- (BOOL)isAccountProvisioningRequiredForAtLeastOneAccount
{
  v2 = self;
  v3 = MPVoicemailTableViewController.isAccountProvisioningRequiredForAtLeastOneAccount.getter();

  return v3;
}

- (void)startObservingPreferences
{
  v2 = self;
  MPVoicemailTableViewController.startObservingPreferences()();
}

- (void)stopObservingPreferences
{
  type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for NSMutableArray);
  v4 = self;
  v3 = NSArray.init(arrayLiteral:)();
  [(MPVoicemailTableViewController *)v4 setObservations:v3];
}

- (void)voicemailMessageTableViewCell:(id)a3 dialRequestButtonTappedForRowWithIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  MPVoicemailTableViewController.voicemailMessageTableViewCell(tableViewCell:dialRequestButtonTappedForRowWithIndexPath:)(v6, v7);
}

- (void)startDialRequestForMessage:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  MPVoicemailTableViewController.startDialRequestFor(message:)(a3);
  swift_unknownObjectRelease();
}

- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4
{
  if (!a4)
  {
    [(MPVoicemailTableViewController *)self reloadDataIfNeeded];
  }
}

- (void)configureLegacyVoicemailCell:(id)a3 for:(id)a4 showLabel:(BOOL)a5 onCallTapped:(id)a6
{
  v10 = _Block_copy(a6);
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  v12 = a3;
  v13 = a4;
  v14 = self;
  specialized MPVoicemailTableViewController.configureLegacyVoicemailCell(_:for:showLabel:onCallTapped:)(v12, v13, a5, partial apply for thunk for @escaping @callee_unowned @convention(block) () -> (), v11);
}

- (void)getAppActionRecommendationsWithVoicemailId:(NSUUID *)a3 completionHandler:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  __chkstk_darwin(v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(a4);
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = v10;
  v11[4] = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &async function pointer to partial apply for @objc closure #1 in MPVoicemailTableViewController.getAppActionRecommendations(voicemailId:);
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &_sIeghH_IeAgH_TRTA_23Tu;
  v14[5] = v13;
  v15 = a3;
  v16 = self;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(0, 0, v9, &_sIeAgH_ytIeAgHr_TRTA_28Tu, v14);
}

- (void)processAppActionRecommendationWithVoicemailId:(NSUUID *)a3 recommendation:(NSString *)a4 buttonType:(unint64_t)a5 completionHandler:(id)a6
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  __chkstk_darwin(v11 - 8);
  v13 = &v22 - v12;
  v14 = _Block_copy(a6);
  v15 = swift_allocObject();
  v15[2] = a3;
  v15[3] = a4;
  v15[4] = a5;
  v15[5] = v14;
  v15[6] = self;
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &async function pointer to partial apply for @objc closure #1 in MPVoicemailTableViewController.processAppActionRecommendation(voicemailId:recommendation:buttonType:);
  v17[5] = v15;
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &_sIeghH_IeAgH_TRTATu;
  v18[5] = v17;
  v19 = a3;
  v20 = a4;
  v21 = self;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(0, 0, v13, &_sIeAgH_ytIeAgHr_TRTATu, v18);
}

void __69__MPVoicemailTableViewController_checkTranscriptionModelAvailability__block_invoke_2_cold_1(uint64_t *a1, NSObject *a2)
{
  v2 = *a1;
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "%@", &v3, 0xCu);
}

- (void)tableView:(uint64_t)a1 expandRowAtIndexPath:(NSObject *)a2 animated:.cold.1(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Attempt to scroll table view to out-of-bound row at index: %@", &v2, 0xCu);
}

void __77__MPVoicemailTableViewController_exportVoicemailDataForVoicemail_sourceView___block_invoke_246_cold_1(uint64_t a1)
{
  v1 = [*(a1 + 32) error];
  OUTLINED_FUNCTION_0_1(&_mh_execute_header, v2, v3, "Voicemail Export: Error exporting voicemail. Error was: %@", v4, v5, v6, v7, 2u);
}

@end