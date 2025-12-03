@interface MPVoicemailTableViewController
- (BOOL)isAccountProvisioningRequiredForAtLeastOneAccount;
- (BOOL)playMessageFromPlaybackQueue;
- (BOOL)shouldNavigationControllerPresentLargeTitles;
- (BOOL)shouldShowTranscriptionModelWarningHeaderViewForCount:(int64_t)count;
- (BOOL)shouldSuppressAudioRouteAlertController;
- (BOOL)tableView:(id)view canEditRowAtIndexPath:(id)path;
- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path;
- (BOOL)tableViewCanPerformReloadData:(id)data;
- (BOOL)voicemailMessageTableViewCell:(id)cell shouldShowRTTButtonForRowWithIndexPath:(id)path;
- (CGPoint)fixedTableViewContentOffset;
- (CNAvatarCardController)cardController;
- (MPVoicemailController)voicemailController;
- (MPVoicemailTableViewController)initWithNavigationController:(id)controller voicemailController:(id)voicemailController;
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
- (id)contactViewControllerForVoicemail:(id)voicemail;
- (id)currentExpandedVoicemailMessageCell;
- (id)indexPathForMessageID:(id)d;
- (id)indexPathsForMessages:(id)messages;
- (id)messageAtIndex:(int64_t)index;
- (id)messageToPlayFromPlaybackQueue;
- (id)messagesAtIndexPaths:(id)paths;
- (id)playerController;
- (id)senderHandleForMessage:(id)message;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)unknownContactForMessage:(id)message;
- (id)voicemailMessageViewModelForVoicemail:(id)voicemail isExpanded:(BOOL)expanded;
- (id)voicemails:(id)voicemails passingTest:(id)test;
- (int64_t)avatarCardController:(id)controller presentationResultForLocation:(CGPoint)location;
- (int64_t)senderHandleTypeForMessage:(id)message;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_fetchCurrentVoicemailsWithCompletion:(id)completion;
- (void)_fetchCurrentVoicemailsWithPredicate:(id)predicate completion:(id)completion;
- (void)_handleNavBarTap:(id)tap;
- (void)_updateUIForMaskViewChange;
- (void)addMessageToPlaybackQueue:(id)queue;
- (void)audioRoutingMenuController:(id)controller didSelectRoute:(id)route;
- (void)cancelPlaybackRequest;
- (void)checkTranscriptionModelAvailability;
- (void)configureAudioButtonForRowAtIndexPath:(id)path;
- (void)configureCellWithSeparatorColor:(id)color atIndexPath:(id)path;
- (void)configureLegacyVoicemailCell:(id)cell for:(id)for showLabel:(BOOL)label onCallTapped:(id)tapped;
- (void)dealloc;
- (void)exportVoicemailDataForVoicemail:(id)voicemail sourceView:(id)view;
- (void)fetchRoutesForAudioRoutingMenuController:(id)controller completionHandler:(id)handler;
- (void)getAppActionRecommendationsWithVoicemailId:(NSUUID *)id completionHandler:(id)handler;
- (void)handleMPRTTTranscriptionDidLoadNotification:(id)notification;
- (void)handleMPVoicemailControllerMessagesDidChangeNotification:(id)notification;
- (void)handlePHAudioDeviceControllerAudioRoutesChangedNotification:(id)notification;
- (void)handlePHAudioDeviceControllerPickedRouteChangedNotification:(id)notification;
- (void)handlePHDeviceCellularRadioEnabledDidChangeNotification:(id)notification;
- (void)handleTapGesture:(id)gesture;
- (void)handleUIApplicationDidEnterBackgroundNotification:(id)notification;
- (void)handleUIContentSizeCategoryDidChangeNotification:(id)notification;
- (void)hideProgressView;
- (void)layoutTableHeaderView;
- (void)loadTableHeaderView;
- (void)loadView;
- (void)performDeleteAtIndexPaths:(id)paths dataSourceActions:(id)actions completionBlock:(id)block;
- (void)playMessage:(id)message;
- (void)popViewControllerIfNeeded;
- (void)processAppActionRecommendationWithVoicemailId:(NSUUID *)id recommendation:(NSString *)recommendation buttonType:(unint64_t)type completionHandler:(id)handler;
- (void)reloadDataIfNeeded;
- (void)reloadDataIfNil;
- (void)resetSelectedIndexPath;
- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate;
- (void)scrollViewDidScroll:(id)scroll;
- (void)setEditing:(BOOL)editing animated:(BOOL)animated;
- (void)setTranscriptionUnavailable:(BOOL)unavailable;
- (void)showHideProgressView;
- (void)showProgressView;
- (void)startDialRequestForMessage:(id)message;
- (void)startObservingPreferences;
- (void)stopObservingPreferences;
- (void)tableView:(id)view accessoryButtonTappedForRowWithIndexPath:(id)path;
- (void)tableView:(id)view collapseRowAtIndexPath:(id)path animated:(BOOL)animated;
- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view expandRowAtIndexPath:(id)path animated:(BOOL)animated;
- (void)tableView:(id)view prefetchRowsAtIndexPaths:(id)paths;
- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path;
- (void)traitCollectionDidChange:(id)change;
- (void)updateLargeTitleInsets;
- (void)updateScreenTimeRestrictedViewForMessage:(id)message withViewModel:(id)model;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)voicemailMessageCellDidTapToCollapse:(id)collapse;
- (void)voicemailMessageDetailViewController:(id)controller destructiveActionPerformedForMessage:(id)message completionBlock:(id)block;
- (void)voicemailMessageTableViewCell:(id)cell actionButtonTappedForRowWithIndexPath:(id)path;
- (void)voicemailMessageTableViewCell:(id)cell audioRouteButtonTappedForRowWithIndexPath:(id)path;
- (void)voicemailMessageTableViewCell:(id)cell dialRequestButtonTappedForRowWithIndexPath:(id)path;
- (void)voicemailMessageTableViewCell:(id)cell didChangeElapsedTime:(double)time;
- (void)voicemailMessageTableViewCell:(id)cell didReceiveTranscriptFeedback:(unint64_t)feedback;
- (void)voicemailMessageTableViewCell:(id)cell didReceiveTranscriptTapGesture:(id)gesture;
- (void)voicemailMessageTableViewCell:(id)cell didRequestPlayState:(int64_t)state;
- (void)voicemailMessageTableViewCell:(id)cell moveButtonTappedForRowWithIndexPath:(id)path;
- (void)voicemailMessageTableViewCell:(id)cell rttButtonTappedForRowWithIndexPath:(id)path;
- (void)voicemailMessageTableViewCellDidBeginScrubbing:(id)scrubbing;
- (void)voicemailMessageTableViewCellDidCancelScrubbing:(id)scrubbing;
- (void)voicemailMessageTableViewCellDidEndScrubbing:(id)scrubbing;
- (void)voicemailMessageTableViewCellShouldPresentWelcomeViewController:(id)controller;
@end

@implementation MPVoicemailTableViewController

- (MPVoicemailTableViewController)initWithNavigationController:(id)controller voicemailController:(id)voicemailController
{
  controllerCopy = controller;
  voicemailControllerCopy = voicemailController;
  v25.receiver = self;
  v25.super_class = MPVoicemailTableViewController;
  v8 = [(MPVoicemailTableViewController *)&v25 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_phoneNavigationController, controllerCopy);
    objc_storeWeak(&v9->_voicemailController, voicemailControllerCopy);
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
    voicemailController = [(MPVoicemailTableViewController *)v19 voicemailController];
    [v20 addObserver:v19 selector:"handleMPVoicemailControllerMessagesDidChangeNotification:" name:@"MPVoicemailControllerMessagesDidChangeNotification" object:voicemailController];
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
    navigationBar = [WeakRetained navigationBar];
    [navigationBar removeGestureRecognizer:self->_navBarGestureRecognizer];
  }

  leftBarButtonItemGestureRecognizer = self->_leftBarButtonItemGestureRecognizer;
  if (leftBarButtonItemGestureRecognizer)
  {
    [(UIGestureRecognizer *)leftBarButtonItemGestureRecognizer setDelegate:0];
    view = [(UIGestureRecognizer *)self->_leftBarButtonItemGestureRecognizer view];
    [view removeGestureRecognizer:self->_leftBarButtonItemGestureRecognizer];
  }

  rightBarButtonItemGestureRecognizer = self->_rightBarButtonItemGestureRecognizer;
  if (rightBarButtonItemGestureRecognizer)
  {
    [(UIGestureRecognizer *)rightBarButtonItemGestureRecognizer setDelegate:0];
    view2 = [(UIGestureRecognizer *)self->_rightBarButtonItemGestureRecognizer view];
    [view2 removeGestureRecognizer:self->_rightBarButtonItemGestureRecognizer];
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
    voicemailController = [(MPVoicemailTableViewController *)self voicemailController];
    accountManager = [voicemailController accountManager];
    v7 = [(VMViewController *)v4 initWithManager:accountManager];
    v8 = self->_accountProvisioningViewController;
    self->_accountProvisioningViewController = v7;

    accountProvisioningViewController = self->_accountProvisioningViewController;
  }

  return accountProvisioningViewController;
}

- (UIColor)dimmedColor
{
  traitCollection = [(MPVoicemailTableViewController *)self traitCollection];
  if ([traitCollection userInterfaceStyle] == 2)
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
  detailIndexPath = [(MPVoicemailTableViewController *)self detailIndexPath];

  navigationItem = [(MPVoicemailTableViewController *)self navigationItem];
  leftBarButtonItem = [navigationItem leftBarButtonItem];
  v6 = leftBarButtonItem;
  if (detailIndexPath)
  {
    [leftBarButtonItem setEnabled:0];

    navigationItem2 = [(MPVoicemailTableViewController *)self navigationItem];
    rightBarButtonItem = [navigationItem2 rightBarButtonItem];
    [rightBarButtonItem setEnabled:0];

    navigationController = [(MPVoicemailTableViewController *)self navigationController];
    navigationBar = [navigationController navigationBar];
    navBarGestureRecognizer = [(MPVoicemailTableViewController *)self navBarGestureRecognizer];
    [navigationBar addGestureRecognizer:navBarGestureRecognizer];

    navigationController2 = [(MPVoicemailTableViewController *)self navigationController];
    navigationBar2 = [navigationController2 navigationBar];
    currentLeftView = [navigationBar2 currentLeftView];
    leftBarButtonItemGestureRecognizer = [(MPVoicemailTableViewController *)self leftBarButtonItemGestureRecognizer];
    [currentLeftView addGestureRecognizer:leftBarButtonItemGestureRecognizer];

    navigationController3 = [(MPVoicemailTableViewController *)self navigationController];
    navigationBar3 = [navigationController3 navigationBar];
    currentRightView = [navigationBar3 currentRightView];
    rightBarButtonItemGestureRecognizer = [(MPVoicemailTableViewController *)self rightBarButtonItemGestureRecognizer];
    [currentRightView addGestureRecognizer:rightBarButtonItemGestureRecognizer];

    visible = [(MPVoicemailTableViewController *)self visible];

    [(MPVoicemailTableViewController *)self setEditing:0 animated:visible];
  }

  else
  {
    [leftBarButtonItem setEnabled:1];

    navigationItem3 = [(MPVoicemailTableViewController *)self navigationItem];
    rightBarButtonItem2 = [navigationItem3 rightBarButtonItem];
    [rightBarButtonItem2 setEnabled:1];

    navBarGestureRecognizer2 = [(MPVoicemailTableViewController *)self navBarGestureRecognizer];

    if (navBarGestureRecognizer2)
    {
      navBarGestureRecognizer3 = [(MPVoicemailTableViewController *)self navBarGestureRecognizer];
      [navBarGestureRecognizer3 setDelegate:0];

      navigationController4 = [(MPVoicemailTableViewController *)self navigationController];
      navigationBar4 = [navigationController4 navigationBar];
      navBarGestureRecognizer4 = [(MPVoicemailTableViewController *)self navBarGestureRecognizer];
      [navigationBar4 removeGestureRecognizer:navBarGestureRecognizer4];

      [(MPVoicemailTableViewController *)self setNavBarGestureRecognizer:0];
    }

    leftBarButtonItemGestureRecognizer2 = [(MPVoicemailTableViewController *)self leftBarButtonItemGestureRecognizer];

    if (leftBarButtonItemGestureRecognizer2)
    {
      leftBarButtonItemGestureRecognizer3 = [(MPVoicemailTableViewController *)self leftBarButtonItemGestureRecognizer];
      [leftBarButtonItemGestureRecognizer3 setDelegate:0];

      navigationController5 = [(MPVoicemailTableViewController *)self navigationController];
      navigationBar5 = [navigationController5 navigationBar];
      currentLeftView2 = [navigationBar5 currentLeftView];
      leftBarButtonItemGestureRecognizer4 = [(MPVoicemailTableViewController *)self leftBarButtonItemGestureRecognizer];
      [currentLeftView2 removeGestureRecognizer:leftBarButtonItemGestureRecognizer4];

      [(MPVoicemailTableViewController *)self setLeftBarButtonItemGestureRecognizer:0];
    }

    rightBarButtonItemGestureRecognizer2 = [(MPVoicemailTableViewController *)self rightBarButtonItemGestureRecognizer];

    if (rightBarButtonItemGestureRecognizer2)
    {
      rightBarButtonItemGestureRecognizer3 = [(MPVoicemailTableViewController *)self rightBarButtonItemGestureRecognizer];
      [rightBarButtonItemGestureRecognizer3 setDelegate:0];

      navigationController6 = [(MPVoicemailTableViewController *)self navigationController];
      navigationBar6 = [navigationController6 navigationBar];
      currentRightView2 = [navigationBar6 currentRightView];
      rightBarButtonItemGestureRecognizer4 = [(MPVoicemailTableViewController *)self rightBarButtonItemGestureRecognizer];
      [currentRightView2 removeGestureRecognizer:rightBarButtonItemGestureRecognizer4];

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

- (void)_handleNavBarTap:(id)tap
{
  if ([tap state] == 3)
  {
    tableView = [(MPVoicemailTableViewController *)self tableView];
    detailIndexPath = [(MPVoicemailTableViewController *)self detailIndexPath];
    [(MPVoicemailTableViewController *)self tableView:tableView collapseRowAtIndexPath:detailIndexPath animated:1];
  }
}

- (id)unknownContactForMessage:(id)message
{
  messageCopy = message;
  senderDestinationID = [messageCopy senderDestinationID];
  if ([senderDestinationID length])
  {
    v6 = [(MPVoicemailTableViewController *)self senderHandleForMessage:messageCopy];
    if (v6)
    {
      senderISOCountryCode = [messageCopy senderISOCountryCode];
      voicemailController = [(MPVoicemailTableViewController *)self voicemailController];
      metadataCache = [voicemailController metadataCache];
      v10 = [CNMutableContact contactForHandle:v6 isoCountryCode:senderISOCountryCode metadataCache:metadataCache];

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

- (id)senderHandleForMessage:(id)message
{
  senderDestinationID = [message senderDestinationID];
  if ([senderDestinationID length])
  {
    v4 = [TUHandle normalizedHandleWithDestinationID:senderDestinationID];
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

- (int64_t)senderHandleTypeForMessage:(id)message
{
  v3 = [(MPVoicemailTableViewController *)self senderHandleForMessage:message];
  v4 = v3;
  if (v3)
  {
    type = [v3 type];
  }

  else
  {
    v6 = PHDefaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "MPVoicemailTableViewController: sender handle is nil so we default the handle type to TUHandleTypeGeneric", v8, 2u);
    }

    type = 1;
  }

  return type;
}

- (void)loadView
{
  v29.receiver = self;
  v29.super_class = MPVoicemailTableViewController;
  [(MPVoicemailTableViewController *)&v29 loadView];
  +[PHVoicemailMessageTableViewCell marginWidth];
  v4 = v3;
  tableView = [(MPVoicemailTableViewController *)self tableView];
  [tableView _setMarginWidth:v4];

  tableView2 = [(MPVoicemailTableViewController *)self tableView];
  [tableView2 setRowHeight:UITableViewAutomaticDimension];

  tableView3 = [(MPVoicemailTableViewController *)self tableView];
  [tableView3 setPrefetchDataSource:self];

  v8 = +[UIApplication sharedApplication];
  preferredContentSizeCategory = [v8 preferredContentSizeCategory];
  [PHVoicemailMessageTableViewCell separatorInsetForContentSizeCategory:preferredContentSizeCategory];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  tableView4 = [(MPVoicemailTableViewController *)self tableView];
  [tableView4 setSeparatorInset:{v11, v13, v15, v17}];

  tableView5 = [(MPVoicemailTableViewController *)self tableView];
  [tableView5 setEstimatedRowHeight:60.0];

  tableView6 = [(MPVoicemailTableViewController *)self tableView];
  [tableView6 setRowHeight:UITableViewAutomaticDimension];

  tableView7 = [(MPVoicemailTableViewController *)self tableView];
  v22 = objc_opt_class();
  v23 = +[PHVoicemailMessageTableViewCell reuseIdentifier];
  [tableView7 registerClass:v22 forCellReuseIdentifier:v23];

  tableView8 = [(MPVoicemailTableViewController *)self tableView];
  [tableView8 registerClass:objc_opt_class() forCellReuseIdentifier:@"CallVoicemail"];

  voicemails = [(MPVoicemailTableViewController *)self voicemails];
  if (voicemails)
  {
    v26 = voicemails;
    v27 = objc_opt_respondsToSelector();

    if (v27)
    {
      allVoicemails = [(MPVoicemailTableViewController *)self allVoicemails];
      [(MPVoicemailTableViewController *)self willShowVoicemails:allVoicemails];
    }
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  v15.receiver = self;
  v15.super_class = MPVoicemailTableViewController;
  [(PHTableViewController *)&v15 viewWillAppear:appear];
  [(MPVoicemailTableViewController *)self reloadDataIfNil];
  objc_initWeak(&location, self);
  voicemailController = [(MPVoicemailTableViewController *)self voicemailController];
  accountManager = [voicemailController accountManager];
  v9 = _NSConcreteStackBlock;
  v10 = 3221225472;
  v11 = __49__MPVoicemailTableViewController_viewWillAppear___block_invoke;
  v12 = &unk_100285148;
  objc_copyWeak(&v13, &location);
  v6 = [accountManager listenForChangesWithHandler:&v9];
  [(MPVoicemailTableViewController *)self setTranscriptionStatusListener:v6, v9, v10, v11, v12];

  [(MPVoicemailTableViewController *)self loadTableHeaderView];
  [(MPVoicemailTableViewController *)self showHideProgressView];
  if ((+[UIImage cappedSizedImagesAreValid]& 1) == 0)
  {
    tableView = [(MPVoicemailTableViewController *)self tableView];
    [tableView setEditing:0 animated:0];

    tableView2 = [(MPVoicemailTableViewController *)self tableView];
    [tableView2 reloadData];
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

- (void)viewWillDisappear:(BOOL)disappear
{
  v6.receiver = self;
  v6.super_class = MPVoicemailTableViewController;
  [(PHTableViewController *)&v6 viewWillDisappear:disappear];
  detailIndexPath = [(MPVoicemailTableViewController *)self detailIndexPath];
  if (detailIndexPath)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      tableView = [(MPVoicemailTableViewController *)self tableView];
      [(MPVoicemailTableViewController *)self tableView:tableView collapseRowAtIndexPath:detailIndexPath animated:1];
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
  voicemailController = [(MPVoicemailTableViewController *)self voicemailController];
  accountManager = [voicemailController accountManager];
  v9 = _NSConcreteStackBlock;
  v10 = 3221225472;
  v11 = __45__MPVoicemailTableViewController_viewDidLoad__block_invoke;
  v12 = &unk_100285148;
  objc_copyWeak(&v13, &location);
  v8 = [accountManager listenForChangesWithHandler:&v9];
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

- (void)viewDidAppear:(BOOL)appear
{
  v9.receiver = self;
  v9.super_class = MPVoicemailTableViewController;
  [(PHTableViewController *)&v9 viewDidAppear:appear];
  [(MPVoicemailTableViewController *)self setVisible:1];
  view = [(MPVoicemailTableViewController *)self view];
  cardController = [(MPVoicemailTableViewController *)self cardController];
  [cardController setSourceView:view];

  messageToPlayFromPlaybackQueue = [(MPVoicemailTableViewController *)self messageToPlayFromPlaybackQueue];

  if (messageToPlayFromPlaybackQueue)
  {
    [(MPVoicemailTableViewController *)self playMessageFromPlaybackQueue];
  }

  else
  {
    detailIndexPath = [(MPVoicemailTableViewController *)self detailIndexPath];
    if (detailIndexPath)
    {
      tableView = [(MPVoicemailTableViewController *)self tableView];
      [(MPVoicemailTableViewController *)self tableView:tableView expandRowAtIndexPath:detailIndexPath animated:0];
    }
  }

  [(MPVoicemailTableViewController *)self checkTranscriptionModelAvailability];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = MPVoicemailTableViewController;
  [(MPVoicemailTableViewController *)&v4 viewDidDisappear:disappear];
  [(MPVoicemailTableViewController *)self setVisible:0];
  if ([(MPVoicemailTableViewController *)self isEditing])
  {
    [(MPVoicemailTableViewController *)self setEditing:0 animated:0];
  }
}

- (void)traitCollectionDidChange:(id)change
{
  v4.receiver = self;
  v4.super_class = MPVoicemailTableViewController;
  [(PHTableViewController *)&v4 traitCollectionDidChange:change];
  [(MPVoicemailTableViewController *)self updateLargeTitleInsets];
}

- (void)scrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  if (![(MPVoicemailTableViewController *)self allowTableViewScrolling])
  {
    tableView = [(MPVoicemailTableViewController *)self tableView];

    if (tableView == scrollCopy)
    {
      [(MPVoicemailTableViewController *)self fixedTableViewContentOffset];
      [scrollCopy setContentOffset:?];
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

- (void)setTranscriptionUnavailable:(BOOL)unavailable
{
  unavailableCopy = unavailable;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  if (self->_transcriptionUnavailable != unavailableCopy)
  {
    self->_transcriptionUnavailable = unavailableCopy;

    [(MPVoicemailTableViewController *)self loadTableHeaderView];
  }
}

- (BOOL)shouldShowTranscriptionModelWarningHeaderViewForCount:(int64_t)count
{
  if (([UIApp launchedToTest] & 1) != 0 || !CPIsInternalDevice())
  {
    return 0;
  }

  voicemailController = [(MPVoicemailTableViewController *)self voicemailController];
  accountManager = [voicemailController accountManager];
  isTranscriptionEnabled = [accountManager isTranscriptionEnabled];
  if (count)
  {
    v8 = 0;
  }

  else
  {
    v8 = isTranscriptionEnabled;
  }

  return v8;
}

- (id)_allVoicemails
{
  voicemailController = [(MPVoicemailTableViewController *)self voicemailController];
  audioMessages = [voicemailController audioMessages];

  return audioMessages;
}

- (void)_fetchCurrentVoicemailsWithCompletion:(id)completion
{
  completionCopy = completion;
  featureFlags = [(MPVoicemailTableViewController *)self featureFlags];
  voicemailSearchEnabled = [featureFlags voicemailSearchEnabled];

  if (voicemailSearchEnabled)
  {
    preFetchingPredicate = self->_preFetchingPredicate;
    if (preFetchingPredicate)
    {
      [(MPVoicemailTableViewController *)self _fetchCurrentVoicemailsWithPredicate:preFetchingPredicate completion:completionCopy];
      goto LABEL_7;
    }

    voicemailPredicate = [objc_opt_class() voicemailPredicate];
    [(MPVoicemailTableViewController *)self _fetchCurrentVoicemailsWithPredicate:voicemailPredicate completion:completionCopy];
  }

  else
  {
    voicemailPredicate = [(MPVoicemailTableViewController *)self voicemailController];
    voicemailPredicate2 = [objc_opt_class() voicemailPredicate];
    [voicemailPredicate audioMessagesPassingTest:voicemailPredicate2 withCompletion:completionCopy];
  }

LABEL_7:
}

- (void)_fetchCurrentVoicemailsWithPredicate:(id)predicate completion:(id)completion
{
  predicateCopy = predicate;
  completionCopy = completion;
  featureFlags = [(MPVoicemailTableViewController *)self featureFlags];
  voicemailSearchEnabled = [featureFlags voicemailSearchEnabled];

  if (voicemailSearchEnabled)
  {
    voicemailController = [(MPVoicemailTableViewController *)self voicemailController];
    [voicemailController audioMessagesPassingTest:predicateCopy withCompletion:completionCopy];
  }
}

- (id)voicemails:(id)voicemails passingTest:(id)test
{
  voicemailsCopy = voicemails;
  testCopy = test;
  v7 = +[NSMutableArray array];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = voicemailsCopy;
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
        if (testCopy[2](testCopy, v13))
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

- (BOOL)tableView:(id)view canEditRowAtIndexPath:(id)path
{
  pathCopy = path;
  detailIndexPath = [(MPVoicemailTableViewController *)self detailIndexPath];
  if (detailIndexPath)
  {
    v7 = 0;
  }

  else
  {
    v8 = [pathCopy row];
    voicemails = [(MPVoicemailTableViewController *)self voicemails];
    v7 = v8 < [voicemails count];
  }

  return v7;
}

- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path
{
  if (style == 1)
  {
    viewCopy = view;
    [(MPVoicemailTableViewController *)self performTableViewDestructiveActionAtIndexPath:path];
    [viewCopy setEditing:0];
  }
}

- (void)addMessageToPlaybackQueue:(id)queue
{
  queueCopy = queue;
  messagePlaybackQueue = [(MPVoicemailTableViewController *)self messagePlaybackQueue];
  identifier = [queueCopy identifier];
  v7 = [messagePlaybackQueue containsObject:identifier];

  if (v7)
  {
    v8 = PHDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      messagePlaybackQueue2 = [(MPVoicemailTableViewController *)self messagePlaybackQueue];
      v12 = 138412290;
      v13 = messagePlaybackQueue2;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Message already exists in queue: %@ not adding it", &v12, 0xCu);
    }
  }

  else
  {
    messagePlaybackQueue3 = [(MPVoicemailTableViewController *)self messagePlaybackQueue];
    identifier2 = [queueCopy identifier];
    [messagePlaybackQueue3 addObject:identifier2];
  }
}

- (void)showHideProgressView
{
  voicemailController = [(MPVoicemailTableViewController *)self voicemailController];
  accountManager = [voicemailController accountManager];
  transcriptionProgress = [accountManager transcriptionProgress];

  if (!transcriptionProgress || ([transcriptionProgress isFinished] & 1) != 0 || (-[MPVoicemailTableViewController progressView](self, "progressView"), v6 = objc_claimAutoreleasedReturnValue(), v6, v6))
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
  tableView = [(MPVoicemailTableViewController *)self tableView];
  [tableView setContentInset:{0.0, 0.0, 40.0, 0.0}];

  v4 = [VMMessageTranscriptionProgressView alloc];
  tabBarController = [(MPVoicemailTableViewController *)self tabBarController];
  tabBar = [tabBarController tabBar];
  [tabBar frame];
  v8 = v7;
  tabBarController2 = [(MPVoicemailTableViewController *)self tabBarController];
  tabBar2 = [tabBarController2 tabBar];
  [tabBar2 frame];
  v12 = v11 + -40.0;
  tabBarController3 = [(MPVoicemailTableViewController *)self tabBarController];
  tabBar3 = [tabBarController3 tabBar];
  [tabBar3 frame];
  v15 = [(VMMessageTranscriptionProgressView *)v4 initWithFrame:v8, v12];
  [(MPVoicemailTableViewController *)self setProgressView:v15];

  voicemailController = [(MPVoicemailTableViewController *)self voicemailController];
  accountManager = [voicemailController accountManager];
  transcriptionProgress = [accountManager transcriptionProgress];
  progressView = [(MPVoicemailTableViewController *)self progressView];
  v19ProgressView = [progressView progressView];
  [v19ProgressView setObservedProgress:transcriptionProgress];

  tabBarController4 = [(MPVoicemailTableViewController *)self tabBarController];
  view = [tabBarController4 view];
  progressView2 = [(MPVoicemailTableViewController *)self progressView];
  [view addSubview:progressView2];
}

- (void)hideProgressView
{
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  tableView = [(MPVoicemailTableViewController *)self tableView];
  [tableView setContentInset:{UIEdgeInsetsZero.top, left, bottom, right}];

  progressView = [(MPVoicemailTableViewController *)self progressView];
  [progressView removeFromSuperview];

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

- (void)handleMPVoicemailControllerMessagesDidChangeNotification:(id)notification
{
  notificationCopy = notification;
  v3 = notificationCopy;
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

- (void)handlePHAudioDeviceControllerAudioRoutesChangedNotification:(id)notification
{
  notificationCopy = notification;
  v5 = PHDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    name = [notificationCopy name];
    v10 = 138412546;
    selfCopy = self;
    v12 = 2112;
    v13 = name;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ is handling <%@>", &v10, 0x16u);
  }

  routeListController = [(MPVoicemailTableViewController *)self routeListController];
  [routeListController reload];

  detailIndexPath = [(MPVoicemailTableViewController *)self detailIndexPath];

  if (detailIndexPath)
  {
    detailIndexPath2 = [(MPVoicemailTableViewController *)self detailIndexPath];
    [(MPVoicemailTableViewController *)self configureAudioButtonForRowAtIndexPath:detailIndexPath2];
  }
}

- (void)handlePHAudioDeviceControllerPickedRouteChangedNotification:(id)notification
{
  notificationCopy = notification;
  v5 = PHDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    name = [notificationCopy name];
    v9 = 138412546;
    selfCopy = self;
    v11 = 2112;
    v12 = name;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ is handling <%@>", &v9, 0x16u);
  }

  detailIndexPath = [(MPVoicemailTableViewController *)self detailIndexPath];

  if (detailIndexPath)
  {
    detailIndexPath2 = [(MPVoicemailTableViewController *)self detailIndexPath];
    [(MPVoicemailTableViewController *)self configureAudioButtonForRowAtIndexPath:detailIndexPath2];
  }
}

- (void)handlePHDeviceCellularRadioEnabledDidChangeNotification:(id)notification
{
  notificationCopy = notification;
  v5 = PHDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    name = [notificationCopy name];
    v11 = 138412546;
    selfCopy = self;
    v13 = 2112;
    v14 = name;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ is handling <%@>", &v11, 0x16u);
  }

  v7 = +[PHDevice currentDevice];
  isCellularRadioEnabled = [v7 isCellularRadioEnabled];

  connectionUnavailableView = [(MPVoicemailTableViewController *)self connectionUnavailableView];

  if (connectionUnavailableView)
  {
    dispatch_assert_queue_V2(&_dispatch_main_q);
    connectionUnavailableView2 = [(MPVoicemailTableViewController *)self connectionUnavailableView];
    [connectionUnavailableView2 setButtonHidden:isCellularRadioEnabled ^ 1 animated:1];

    [(MPVoicemailTableViewController *)self loadTableHeaderView];
  }
}

- (void)handleUIApplicationDidEnterBackgroundNotification:(id)notification
{
  notificationCopy = notification;
  v5 = PHDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    name = [notificationCopy name];
    v11 = 138412546;
    selfCopy = self;
    v13 = 2112;
    v14 = name;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ is handling <%@>", &v11, 0x16u);
  }

  if ([(MPVoicemailTableViewController *)self isViewLoaded])
  {
    view = [(MPVoicemailTableViewController *)self view];
    window = [view window];

    if (window)
    {
      detailIndexPath = [(MPVoicemailTableViewController *)self detailIndexPath];
      if (detailIndexPath)
      {
        tableView = [(MPVoicemailTableViewController *)self tableView];
        [(MPVoicemailTableViewController *)self tableView:tableView collapseRowAtIndexPath:detailIndexPath animated:0];
      }
    }
  }
}

- (void)handleUIContentSizeCategoryDidChangeNotification:(id)notification
{
  notificationCopy = notification;
  v5 = PHDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v21 = objc_opt_class();
    v22 = 2112;
    v23 = notificationCopy;
    v6 = v21;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ is handling %@", buf, 0x16u);
  }

  v19.receiver = self;
  v19.super_class = MPVoicemailTableViewController;
  [(PHTableViewController *)&v19 handleUIContentSizeCategoryDidChangeNotification:notificationCopy];
  [(MPVoicemailTableViewController *)self loadTableHeaderView];
  userInfo = [notificationCopy userInfo];
  v8 = [userInfo objectForKeyedSubscript:UIContentSizeCategoryNewValueKey];

  if (v8)
  {
    [PHVoicemailMessageTableViewCell separatorInsetForContentSizeCategory:v8];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
    tableView = [(MPVoicemailTableViewController *)self tableView];
    [tableView setSeparatorInset:{v10, v12, v14, v16}];
  }

  [(MPVoicemailTableViewController *)self setEditing:0 animated:0];
  tableView2 = [(MPVoicemailTableViewController *)self tableView];
  [tableView2 reloadData];
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

- (void)handleMPRTTTranscriptionDidLoadNotification:(id)notification
{
  notificationCopy = notification;
  v3 = notificationCopy;
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

- (BOOL)tableViewCanPerformReloadData:(id)data
{
  if ([(MPVoicemailTableViewController *)self isEditing])
  {
    tableView = PHDefaultLog();
    if (os_log_type_enabled(tableView, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v13 = objc_opt_class();
      v5 = v13;
      _os_log_impl(&_mh_execute_header, tableView, OS_LOG_TYPE_DEFAULT, "%@ cannot reload data because we are editing.", buf, 0xCu);
    }

    goto LABEL_7;
  }

  tableView = [(MPVoicemailTableViewController *)self tableView];
  v11.receiver = self;
  v11.super_class = MPVoicemailTableViewController;
  if (![(PHTableViewController *)&v11 tableViewCanPerformReloadData:tableView])
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
    detailIndexPath = [(MPVoicemailTableViewController *)self detailIndexPath];
    if (detailIndexPath)
    {
      LOBYTE(v7) = 0;
    }

    else
    {
      playerController = [(MPVoicemailTableViewController *)self playerController];
      v7 = [playerController isPlaying] ^ 1;
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

    tableView = [(MPVoicemailTableViewController *)self tableView];
    v6 = [(MPVoicemailTableViewController *)self tableViewCanPerformReloadData:tableView];

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
  voicemails = [(MPVoicemailTableViewController *)self voicemails];

  if (!voicemails)
  {
    [(PHTableViewController *)self setNeedsReloadData:1];

    [(MPVoicemailTableViewController *)self reloadDataIfNeeded];
  }
}

- (BOOL)shouldNavigationControllerPresentLargeTitles
{
  voicemails = [(MPVoicemailTableViewController *)self voicemails];
  if (voicemails)
  {
    voicemails2 = [(MPVoicemailTableViewController *)self voicemails];
    if ([voicemails2 count])
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

- (void)setEditing:(BOOL)editing animated:(BOOL)animated
{
  v6.receiver = self;
  v6.super_class = MPVoicemailTableViewController;
  [(MPVoicemailTableViewController *)&v6 setEditing:editing animated:animated];
  if (!editing)
  {
    [(MPVoicemailTableViewController *)self reloadDataIfNeeded];
  }
}

- (id)indexPathForMessageID:(id)d
{
  dCopy = d;
  voicemails = [(MPVoicemailTableViewController *)self voicemails];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = __56__MPVoicemailTableViewController_indexPathForMessageID___block_invoke;
  v12[3] = &unk_100285D18;
  v6 = dCopy;
  v13 = v6;
  v7 = [voicemails indexOfObjectPassingTest:v12];

  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = 0;
  }

  else
  {
    tableView = [(MPVoicemailTableViewController *)self tableView];
    v10 = [(MPVoicemailTableViewController *)self numberOfSectionsInTableView:tableView]== 2;

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

- (id)indexPathsForMessages:(id)messages
{
  messagesCopy = messages;
  v5 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [messagesCopy count]);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = messagesCopy;
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

        identifier = [*(*(&v15 + 1) + 8 * i) identifier];
        v12 = [(MPVoicemailTableViewController *)self indexPathForMessageID:identifier];

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

- (id)messagesAtIndexPaths:(id)paths
{
  pathsCopy = paths;
  v5 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [pathsCopy count]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = pathsCopy;
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

- (id)messageAtIndex:(int64_t)index
{
  voicemails = [(MPVoicemailTableViewController *)self voicemails];
  v5 = voicemails;
  if (index < 0 || [voicemails count] <= index)
  {
    v7 = PHDefaultLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [NSNumber numberWithInteger:index];
      v10 = 138412290;
      v11 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Could not find an item at index %@.", &v10, 0xCu);
    }

    v6 = 0;
  }

  else
  {
    v6 = [v5 objectAtIndexedSubscript:index];
  }

  return v6;
}

- (void)updateScreenTimeRestrictedViewForMessage:(id)message withViewModel:(id)model
{
  messageCopy = message;
  modelCopy = model;
  voicemailController = [(MPVoicemailTableViewController *)self voicemailController];
  v8 = [voicemailController isRestrictedMessage:messageCopy];

  if (v8)
  {
    [modelCopy setShowsRestrictedAlertView:1];
    voicemailController2 = [(MPVoicemailTableViewController *)self voicemailController];
    v10 = [voicemailController2 localizedAttributedDowntimeTitleForMessage:messageCopy];
    [modelCopy setLocalizedAttributedRestrictedAlertTitle:v10];

    modelCopy = voicemailController2;
  }

  else
  {
    [modelCopy setShowsRestrictedAlertView:0];
    [modelCopy setLocalizedAttributedRestrictedAlertTitle:0];
  }
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v4 = [(MPVoicemailTableViewController *)self voicemails:view];
  v5 = [v4 count];

  return v5;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  v8 = +[PHVoicemailMessageTableViewCell reuseIdentifier];
  v9 = [viewCopy dequeueReusableCellWithIdentifier:v8 forIndexPath:pathCopy];

  detailIndexPath = [(MPVoicemailTableViewController *)self detailIndexPath];
  v11 = [detailIndexPath isEqual:pathCopy];

  v12 = [pathCopy row];
  v13 = [(MPVoicemailTableViewController *)self messageAtIndex:v12];
  voicemailMessageViewModelCache = [(MPVoicemailTableViewController *)self voicemailMessageViewModelCache];
  identifier = [v13 identifier];
  v16 = [voicemailMessageViewModelCache objectForKey:identifier];

  if (!v16)
  {
    v16 = [(MPVoicemailTableViewController *)self voicemailMessageViewModelForVoicemail:v13 isExpanded:v11];
    voicemailMessageViewModelCache2 = [(MPVoicemailTableViewController *)self voicemailMessageViewModelCache];
    identifier2 = [v13 identifier];
    [voicemailMessageViewModelCache2 setObject:v16 forKey:identifier2];
  }

  detailIndexPath2 = [(MPVoicemailTableViewController *)self detailIndexPath];
  v20 = detailIndexPath2 != 0;

  [v9 configureWithVoicemailMessageViewModel:v16 expanded:v11 shouldGrayForeground:v20 & (v11 ^ 1)];
  tableView = [(MPVoicemailTableViewController *)self tableView];
  safeAreaLayoutGuide = [tableView safeAreaLayoutGuide];
  [safeAreaLayoutGuide layoutFrame];
  [v9 setMaximumAllowedHeight:v23 * 0.699999988];

  [v9 setDelegate:self];

  return v9;
}

- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path
{
  pathCopy = path;
  detailIndexPath = [(MPVoicemailTableViewController *)self detailIndexPath];

  v7 = PHDefaultLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412546;
    v10 = pathCopy;
    v11 = 1024;
    v12 = detailIndexPath == 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "shouldHighlightRowAtIndexPath: %@ highlighted: %d", &v9, 0x12u);
  }

  return detailIndexPath == 0;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = PHDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412290;
    v14 = pathCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "didSelectRowAtIndexPath: %@", &v13, 0xCu);
  }

  if (([viewCopy isDecelerating] & 1) == 0 && (objc_msgSend(viewCopy, "isEditing") & 1) == 0 && (objc_msgSend(viewCopy, "isDragging") & 1) == 0)
  {
    v9 = [pathCopy row];
    voicemails = [(MPVoicemailTableViewController *)self voicemails];
    v11 = [voicemails count];

    if (v9 < v11)
    {
      tableView = [(MPVoicemailTableViewController *)self tableView];
      [(MPVoicemailTableViewController *)self tableView:tableView expandRowAtIndexPath:pathCopy animated:1];
    }

    [viewCopy deselectRowAtIndexPath:pathCopy animated:0];
  }
}

- (void)tableView:(id)view prefetchRowsAtIndexPaths:(id)paths
{
  pathsCopy = paths;
  v6 = PHDefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = pathsCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Prefetching rows at indexPaths: %@", &v9, 0xCu);
  }

  voicemailController = [(MPVoicemailTableViewController *)self voicemailController];
  v8 = [(MPVoicemailTableViewController *)self messagesAtIndexPaths:pathsCopy];
  [voicemailController loadLocalizedTitlesForMessages:v8];
}

- (void)popViewControllerIfNeeded
{
  navigationController = [(MPVoicemailTableViewController *)self navigationController];
  viewControllers = [navigationController viewControllers];
  firstObject = [viewControllers firstObject];
  if (firstObject == self || ![(MPVoicemailTableViewController *)self visible])
  {
  }

  else
  {
    hasContentToDisplay = [(MPVoicemailTableViewController *)self hasContentToDisplay];

    if (hasContentToDisplay)
    {
      return;
    }

    navigationController = [(MPVoicemailTableViewController *)self navigationController];
    v6 = [navigationController popToRootViewControllerAnimated:1];
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

- (id)contactViewControllerForVoicemail:(id)voicemail
{
  voicemailCopy = voicemail;
  voicemailController = [(MPVoicemailTableViewController *)self voicemailController];
  contactStore = [voicemailController contactStore];
  v7 = +[CNContactViewController descriptorForRequiredKeys];
  v35 = v7;
  v8 = [NSArray arrayWithObjects:&v35 count:1];
  v9 = [voicemailCopy contactUsingContactStore:contactStore withKeysToFetch:v8];

  if (v9)
  {
    v10 = [CNContactViewController viewControllerForContact:v9];
    [v10 setShouldShowLinkedContacts:1];
    goto LABEL_19;
  }

  v9 = [(MPVoicemailTableViewController *)self unknownContactForMessage:voicemailCopy];
  v10 = [CNContactViewController viewControllerForUnknownContact:v9];
  senderDestinationID = [voicemailCopy senderDestinationID];
  v12 = [senderDestinationID length];

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
  v13 = [(MPVoicemailTableViewController *)self senderHandleTypeForMessage:voicemailCopy];
  featureFlags = [(MPVoicemailTableViewController *)self featureFlags];
  callScreeningEnabledM3 = [featureFlags callScreeningEnabledM3];

  if (callScreeningEnabledM3)
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
  voicemailController2 = [(MPVoicemailTableViewController *)self voicemailController];
  suggestedContactStore = [voicemailController2 suggestedContactStore];
  [v10 setContactStore:suggestedContactStore];

  v17 = [TUMetadataDestinationID metadataDestinationIDWithVoicemailMessage:voicemailCopy];
  if (v17)
  {
    voicemailController3 = [(MPVoicemailTableViewController *)self voicemailController];
    metadataCache = [voicemailController3 metadataCache];
    v18 = [metadataCache metadataForDestinationID:v17];

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
  date = [voicemailCopy date];

  if (date)
  {
    v28 = objc_alloc_init(MPVoicemailContactHeaderViewController);
    date2 = [voicemailCopy date];
    v34[0] = date2;
    v33[1] = kCHCallOccurrenceCallStatusKey;
    v30 = [NSNumber numberWithUnsignedInt:kCHCallStatusMissed];
    v34[1] = v30;
    v31 = [NSDictionary dictionaryWithObjects:v34 forKeys:v33 count:2];
    [(MPVoicemailContactHeaderViewController *)v28 setCallOccurrence:v31];

    [v10 setContactHeaderViewController:v28];
  }

  return v10;
}

- (void)tableView:(id)view accessoryButtonTappedForRowWithIndexPath:(id)path
{
  pathCopy = path;
  v6 = [view cellForRowAtIndexPath:?];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    playerController = [(MPVoicemailTableViewController *)self playerController];
    [playerController pause];

    v8 = -[MPVoicemailTableViewController messageAtIndex:](self, "messageAtIndex:", [pathCopy row]);
    if (v8)
    {
      v9 = [(MPVoicemailTableViewController *)self contactViewControllerForVoicemail:v8];
      navigationController = [(MPVoicemailTableViewController *)self navigationController];
      [navigationController pushViewController:v9 animated:1];
    }
  }
}

- (int64_t)avatarCardController:(id)controller presentationResultForLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  controllerCopy = controller;
  tableView = [(MPVoicemailTableViewController *)self tableView];
  if ([tableView isEditing])
  {
    goto LABEL_6;
  }

  tableView2 = [(MPVoicemailTableViewController *)self tableView];
  if (![tableView2 isDragging])
  {
    tableView3 = [(MPVoicemailTableViewController *)self tableView];
    if ([tableView3 isDecelerating])
    {
LABEL_4:

      goto LABEL_5;
    }

    detailIndexPath = [(MPVoicemailTableViewController *)self detailIndexPath];

    if (detailIndexPath)
    {
      goto LABEL_7;
    }

    tableView4 = [(MPVoicemailTableViewController *)self tableView];
    view = [(MPVoicemailTableViewController *)self view];
    tableView5 = [(MPVoicemailTableViewController *)self tableView];
    [view convertPoint:tableView5 toView:{x, y}];
    tableView = [tableView4 indexPathForRowAtPoint:?];

    if (tableView)
    {
      tableView2 = -[MPVoicemailTableViewController messageAtIndex:](self, "messageAtIndex:", [tableView row]);
      if (tableView2)
      {
        tableView6 = [(MPVoicemailTableViewController *)self tableView];
        tableView3 = [tableView6 cellForRowAtIndexPath:tableView];

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_4;
        }

        [controllerCopy setHighlightView:tableView3];
        tableView7 = [(MPVoicemailTableViewController *)self tableView];
        [tableView3 frame];
        v20 = v19;
        v22 = v21;
        v24 = v23;
        v26 = v25;
        view2 = [(MPVoicemailTableViewController *)self view];
        [tableView7 convertRect:view2 toView:{v20, v22, v24, v26}];
        [controllerCopy setSourceRect:?];

        voicemailController = [(MPVoicemailTableViewController *)self voicemailController];
        contactStore = [voicemailController contactStore];
        v29 = +[CNAvatarCardController descriptorForRequiredKeys];
        v41 = v29;
        v30 = [NSArray arrayWithObjects:&v41 count:1];
        v31 = [tableView2 contactUsingContactStore:contactStore withKeysToFetch:v30];
        v32 = v31;
        if (v31)
        {
          v33 = v31;
        }

        else
        {
          v33 = [(MPVoicemailTableViewController *)self unknownContactForMessage:tableView2];
        }

        v34 = v33;

        if (v34)
        {
          [controllerCopy setContact:v34];
          v35 = [TUMetadataDestinationID metadataDestinationIDWithVoicemailMessage:tableView2];
          if (v35)
          {
            voicemailController2 = [(MPVoicemailTableViewController *)self voicemailController];
            metadataCache = [voicemailController2 metadataCache];
            v38 = [metadataCache metadataForDestinationID:v35];

            v39 = [v38 metadataForProvider:objc_opt_class()];
            [controllerCopy setMessage:v39];
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

- (void)tableView:(id)view collapseRowAtIndexPath:(id)path animated:(BOOL)animated
{
  animatedCopy = animated;
  viewCopy = view;
  pathCopy = path;
  v10 = PHDefaultLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v22 = pathCopy;
    v23 = 1024;
    v24 = animatedCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Collapsing rowAtIndexPath: %@ animated: %d", buf, 0x12u);
  }

  v11 = [viewCopy cellForRowAtIndexPath:pathCopy];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = v11;
    detailIndexPath = [(MPVoicemailTableViewController *)self detailIndexPath];
    [viewCopy scrollToRowAtIndexPath:detailIndexPath atScrollPosition:0 animated:0];

    [(MPVoicemailTableViewController *)self resetSelectedIndexPath];
    [v12 setExpanded:0 animated:animatedCopy];
    v14 = +[UIColor separatorColor];
    [(MPVoicemailTableViewController *)self configureCellWithSeparatorColor:v14 atIndexPath:pathCopy];

    [(MPVoicemailTableViewController *)self setAllowTableViewScrolling:1];
    [viewCopy setUserInteractionEnabled:0];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = __76__MPVoicemailTableViewController_tableView_collapseRowAtIndexPath_animated___block_invoke;
    v17[3] = &unk_100285D40;
    v18 = viewCopy;
    selfCopy = self;
    v20 = animatedCopy;
    v15 = objc_retainBlock(v17);
    v16 = v15;
    if (animatedCopy)
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

- (void)tableView:(id)view expandRowAtIndexPath:(id)path animated:(BOOL)animated
{
  animatedCopy = animated;
  viewCopy = view;
  pathCopy = path;
  v10 = PHDefaultLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v72 = pathCopy;
    v73 = 1024;
    v74 = animatedCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Expanding rowAtIndexPath: %@ animated: %d", buf, 0x12u);
  }

  v11 = [viewCopy cellForRowAtIndexPath:pathCopy];
  if (!v11)
  {
    tableView = [(MPVoicemailTableViewController *)self tableView];
    v13 = [tableView numberOfRowsInSection:{-[NSObject section](pathCopy, "section")}];
    v14 = [pathCopy row];

    if (v13 <= v14)
    {
      v15 = PHDefaultLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [MPVoicemailTableViewController tableView:pathCopy expandRowAtIndexPath:v15 animated:?];
      }
    }

    else
    {
      [viewCopy scrollToRowAtIndexPath:pathCopy atScrollPosition:2 animated:0];
    }

    v11 = [viewCopy cellForRowAtIndexPath:pathCopy];
  }

  featureFlags = [(MPVoicemailTableViewController *)self featureFlags];
  if ([featureFlags fullScreenVoicemailDetailsEnabled])
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      v18 = [(MPVoicemailTableViewController *)self messageAtIndex:[pathCopy row]];
      featureFlags2 = [(MPVoicemailTableViewController *)self featureFlags];
      callHistorySearchEnabled = [featureFlags2 callHistorySearchEnabled];

      if (callHistorySearchEnabled && !v18)
      {
        v21 = PHDefaultLog();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          [MPVoicemailTableViewController tableView:pathCopy expandRowAtIndexPath:? animated:?];
        }

        goto LABEL_46;
      }

      v46 = [PHVoicemailMessageDetailViewController alloc];
      phoneNavigationController = [(MPVoicemailTableViewController *)self phoneNavigationController];
      voicemailController = [(MPVoicemailTableViewController *)self voicemailController];
      v21 = [(PHVoicemailMessageDetailViewController *)v46 initWithMessage:v18 navigationController:phoneNavigationController voicemailController:voicemailController];

      [v21 setDelegate:self];
      featureFlags3 = [(MPVoicemailTableViewController *)self featureFlags];
      LODWORD(phoneNavigationController) = [featureFlags3 callExperiencePhoneAppEnabled];

      if (phoneNavigationController)
      {
        hostingNavigationController = [(MPVoicemailTableViewController *)self hostingNavigationController];
LABEL_45:
        v54 = hostingNavigationController;
        [hostingNavigationController pushViewController:v21 animated:1];

LABEL_46:
        goto LABEL_47;
      }

      featureFlags4 = [(MPVoicemailTableViewController *)self featureFlags];
      if ([featureFlags4 voicemailSearchEnabled])
      {
        v52 = +[CAUILayoutManager shared];
        if ([v52 current] == 1)
        {

LABEL_44:
          hostingNavigationController = [(MPVoicemailTableViewController *)self phoneNavigationController];
          goto LABEL_45;
        }

        navigationController = [(MPVoicemailTableViewController *)self navigationController];

        if (!navigationController)
        {
          goto LABEL_44;
        }
      }

      else
      {
      }

      hostingNavigationController = [(MPVoicemailTableViewController *)self navigationController];
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

    [viewCopy setUserInteractionEnabled:0];
    [(MPVoicemailTableViewController *)self setDetailIndexPath:pathCopy];
    v56 = v11;
    v58 = v11;
    v24 = [(MPVoicemailTableViewController *)self messageAtIndex:[pathCopy row]];
    v25 = PHDefaultLog();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      identifier = [v24 identifier];
      isTranscriptionAvailable = [v24 isTranscriptionAvailable];
      *buf = 138412546;
      v72 = identifier;
      v73 = 1024;
      v74 = isTranscriptionAvailable;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Expanding voicemail %@ with transcription %d.", buf, 0x12u);
    }

    item = [v58 item];
    v55 = v24;
    [(MPVoicemailTableViewController *)self updateScreenTimeRestrictedViewForMessage:v24 withViewModel:item];

    [v58 setExpanded:1 animated:animatedCopy];
    v29 = +[UIColor clearColor];
    [(MPVoicemailTableViewController *)self configureCellWithSeparatorColor:v29 atIndexPath:pathCopy];

    [(MPVoicemailTableViewController *)self configureAudioButtonForRowAtIndexPath:pathCopy];
    v66[0] = _NSConcreteStackBlock;
    v66[1] = 3221225472;
    v66[2] = __74__MPVoicemailTableViewController_tableView_expandRowAtIndexPath_animated___block_invoke;
    v66[3] = &unk_1002853E8;
    v57 = viewCopy;
    v67 = viewCopy;
    selfCopy = self;
    v30 = pathCopy;
    v69 = v30;
    v63[0] = _NSConcreteStackBlock;
    v63[1] = 3221225472;
    v63[2] = __74__MPVoicemailTableViewController_tableView_expandRowAtIndexPath_animated___block_invoke_2;
    v63[3] = &unk_100285C58;
    v31 = v67;
    v64 = v31;
    selfCopy2 = self;
    [v31 performBatchUpdates:v66 completion:v63];
    [v31 scrollToRowAtIndexPath:v30 atScrollPosition:0 animated:animatedCopy];
    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    tableView2 = [(MPVoicemailTableViewController *)self tableView];
    visibleCells = [tableView2 visibleCells];

    v34 = [visibleCells countByEnumeratingWithState:&v59 objects:v70 count:16];
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
            objc_enumerationMutation(visibleCells);
          }

          v38 = *(*(&v59 + 1) + 8 * i);
          tableView3 = [(MPVoicemailTableViewController *)self tableView];
          v40 = [tableView3 indexPathForCell:v38];

          v41 = v38;
          if ([v40 isEqual:v30])
          {
            [v41 setForegroundColor:0];
          }

          else
          {
            dimmedColor = [(MPVoicemailTableViewController *)self dimmedColor];
            [v41 setForegroundColor:dimmedColor];
          }
        }

        v35 = [visibleCells countByEnumeratingWithState:&v59 objects:v70 count:16];
      }

      while (v35);
    }

    voicemailController2 = [(MPVoicemailTableViewController *)self voicemailController];
    v21 = v55;
    v44 = [voicemailController2 isRestrictedMessage:v55];

    viewCopy = v57;
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

- (void)configureCellWithSeparatorColor:(id)color atIndexPath:(id)path
{
  colorCopy = color;
  pathCopy = path;
  tableView = [(MPVoicemailTableViewController *)self tableView];
  v8 = [tableView cellForRowAtIndexPath:pathCopy];

  if (v8)
  {
    [v8 setSeparatorColor:colorCopy];
    v9 = +[NSIndexPath indexPathForRow:inSection:](NSIndexPath, "indexPathForRow:inSection:", [pathCopy row] - 1, objc_msgSend(pathCopy, "section"));
    tableView2 = [(MPVoicemailTableViewController *)self tableView];
    v11 = [tableView2 cellForRowAtIndexPath:v9];

    if (v11)
    {
      [v11 setSeparatorColor:colorCopy];
    }
  }
}

- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path
{
  cellCopy = cell;
  pathCopy = path;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = cellCopy;
    detailIndexPath = [(MPVoicemailTableViewController *)self detailIndexPath];
    v10 = [detailIndexPath isEqual:pathCopy];

    if (v10)
    {
      dimmedColor = [(MPVoicemailTableViewController *)self dimmedColor];
      [v8 setForegroundColor:dimmedColor];
    }

    else
    {
      [v8 setForegroundColor:0];
    }
  }
}

- (void)handleTapGesture:(id)gesture
{
  tableView = [(MPVoicemailTableViewController *)self tableView];
  detailIndexPath = [(MPVoicemailTableViewController *)self detailIndexPath];
  [(MPVoicemailTableViewController *)self tableView:tableView collapseRowAtIndexPath:detailIndexPath animated:1];
}

- (id)backgroundViewForTableView
{
  v3 = [UIView alloc];
  tableView = [(MPVoicemailTableViewController *)self tableView];
  [tableView bounds];
  v5 = [v3 initWithFrame:?];

  dimmedColor = [(MPVoicemailTableViewController *)self dimmedColor];
  [v5 setBackgroundColor:dimmedColor];

  v7 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"handleTapGesture:"];
  [v5 addGestureRecognizer:v7];

  return v5;
}

- (id)playerController
{
  phoneNavigationController = [(MPVoicemailTableViewController *)self phoneNavigationController];
  playerController = [phoneNavigationController playerController];

  return playerController;
}

- (void)loadTableHeaderView
{
  tableView = [(MPVoicemailTableViewController *)self tableView];
  v4 = +[(PHApplicationServices *)MPApplicationServices];
  accountManager = [v4 accountManager];
  if ([accountManager isOnline])
  {

LABEL_6:
    v9 = [(MPVoicemailTableViewController *)self conformsToProtocol:&OBJC_PROTOCOL___MPVoicemailListViewTipsHelper];
    goto LABEL_7;
  }

  v6 = +[(PHApplicationServices *)MPApplicationServices];
  accountManager2 = [v6 accountManager];
  isAnyAccountSubscribed = [accountManager2 isAnyAccountSubscribed];

  if (!isAnyAccountSubscribed || ([UIApp isRunningTest] & 1) != 0 || objc_msgSend(UIApp, "launchedToTest"))
  {
    goto LABEL_6;
  }

  v17 = objc_alloc_init(MPVoicemailConnectionUnavailableView);
  [(MPVoicemailConnectionUnavailableView *)v17 setAutoresizingMask:18];
  v18 = +[PHDevice currentDevice];
  -[MPVoicemailConnectionUnavailableView setButtonHidden:](v17, "setButtonHidden:", [v18 isCellularRadioEnabled] ^ 1);

  button = [(MPVoicemailConnectionUnavailableView *)v17 button];
  [button addTarget:self action:"handleDialVoiceMail:" forControlEvents:64];

  [(MPVoicemailTableViewController *)self setConnectionUnavailableView:v17];
  connectionUnavailableView = [(MPVoicemailTableViewController *)self connectionUnavailableView];

  v9 = [(MPVoicemailTableViewController *)self conformsToProtocol:&OBJC_PROTOCOL___MPVoicemailListViewTipsHelper];
  if (connectionUnavailableView)
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
    accountProvisioningViewController = [(MPVoicemailTableViewController *)self accountProvisioningViewController];
    connectionUnavailableView = [accountProvisioningViewController view];

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
    connectionUnavailableView = [(MPVoicemailTableViewController *)self transcriptionUnavailableView];
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
    connectionUnavailableView = 0;
    v9 = 1;
  }

  else
  {
    [tableView setTableHeaderView:0];
    v14 = 0;
    connectionUnavailableView = 0;
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
  if (!connectionUnavailableView)
  {
LABEL_19:
    (v15[2])(v15);
    goto LABEL_20;
  }

  if (!v9)
  {
    [tableView setTableHeaderView:connectionUnavailableView];
    goto LABEL_19;
  }

  selfCopy = self;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = __53__MPVoicemailTableViewController_loadTableHeaderView__block_invoke_2;
  v20[3] = &unk_100285D90;
  objc_copyWeak(&v23, buf);
  v21 = connectionUnavailableView;
  v22 = v15;
  [(MPVoicemailTableViewController *)selfCopy hideTipViewWithCompletionHandler:v20];

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
  tableView = [(MPVoicemailTableViewController *)self tableView];
  tableHeaderView = [tableView tableHeaderView];
  [tableHeaderView setNeedsUpdateConstraints];
  [tableHeaderView systemLayoutSizeFittingSize:{UILayoutFittingCompressedSize.width, UILayoutFittingCompressedSize.height}];
  [tableHeaderView frame];
  [tableHeaderView setFrame:?];
  [tableView setTableHeaderView:tableHeaderView];
}

- (id)voicemailMessageViewModelForVoicemail:(id)voicemail isExpanded:(BOOL)expanded
{
  expandedCopy = expanded;
  voicemailCopy = voicemail;
  v7 = objc_alloc_init(MPVoicemailMessageViewModel);
  date = [voicemailCopy date];
  [(MPVoicemailMessageViewModel *)v7 setDate:date];

  v9 = PHVoicemailCellDateFormatter();
  date2 = [voicemailCopy date];
  v11 = [v9 stringFromDate:date2];
  [(MPVoicemailMessageViewModel *)v7 setLocalizedDate:v11];

  voicemailController = [(MPVoicemailTableViewController *)self voicemailController];
  v13 = [voicemailController localizedTitleForMessage:voicemailCopy];
  [(MPVoicemailMessageViewModel *)v7 setLocalizedTitle:v13];

  [voicemailCopy duration];
  v15 = PHVoicemailFormatTime(v14);
  [(MPVoicemailMessageViewModel *)v7 setLocalizedDuration:v15];

  voicemailController2 = [(MPVoicemailTableViewController *)self voicemailController];
  v17 = [voicemailController2 localizedSubtitleForMessage:voicemailCopy];
  [(MPVoicemailMessageViewModel *)v7 setLocalizedSubtitle:v17];

  -[MPVoicemailMessageViewModel setIsRead:](v7, "setIsRead:", [voicemailCopy isRead]);
  -[MPVoicemailMessageViewModel setIsDeleted:](v7, "setIsDeleted:", [voicemailCopy folder] == 2);
  isTranscriptionAvailable = [voicemailCopy isTranscriptionAvailable];
  v19 = PHDefaultLog();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    identifier = [voicemailCopy identifier];
    *buf = 138412546;
    v41 = identifier;
    v42 = 1024;
    v43 = isTranscriptionAvailable;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Voicemail %@ has a transcript available: %d", buf, 0x12u);
  }

  [(MPVoicemailMessageViewModel *)v7 setShowsTranscriptionView:isTranscriptionAvailable];
  [(MPVoicemailMessageViewModel *)v7 setShowsPlayerControls:1];
  [voicemailCopy duration];
  [(MPVoicemailMessageViewModel *)v7 setDuration:?];
  if (PHDeviceSupportsDualSim())
  {
    voicemailController3 = [(MPVoicemailTableViewController *)self voicemailController];
    callProviderManager = [voicemailController3 callProviderManager];
    telephonyProvider = [callProviderManager telephonyProvider];
    prioritizedSenderIdentities = [telephonyProvider prioritizedSenderIdentities];
    if ([prioritizedSenderIdentities count] < 2)
    {
    }

    else
    {
      receiverDestinationID = [voicemailCopy receiverDestinationID];
      v26 = [receiverDestinationID length];

      if (!v26)
      {
        goto LABEL_9;
      }

      v27 = [TUHandle alloc];
      receiverDestinationID2 = [voicemailCopy receiverDestinationID];
      voicemailController3 = [v27 initWithType:2 value:receiverDestinationID2];

      receiverISOCountryCode = [voicemailCopy receiverISOCountryCode];
      callProviderManager = [voicemailController3 canonicalHandleForISOCountryCode:receiverISOCountryCode];

      voicemailController4 = [(MPVoicemailTableViewController *)self voicemailController];
      callProviderManager2 = [voicemailController4 callProviderManager];
      telephonyProvider2 = [callProviderManager2 telephonyProvider];
      [telephonyProvider2 senderIdentityForHandle:callProviderManager];
      v33 = v32 = expandedCopy;
      telephonyProvider = [v33 localizedShortName];

      expandedCopy = v32;
      [(MPVoicemailMessageViewModel *)v7 setLocalizedSenderIdentityTitle:telephonyProvider];
    }
  }

LABEL_9:
  if (expandedCopy)
  {
    voicemailController5 = [(MPVoicemailTableViewController *)self voicemailController];
    expandedCopy = [voicemailController5 isRestrictedMessage:voicemailCopy];

    if (expandedCopy)
    {
      voicemailController6 = [(MPVoicemailTableViewController *)self voicemailController];
      v36 = [voicemailController6 localizedAttributedDowntimeTitleForMessage:voicemailCopy];
    }

    else
    {
      v36 = 0;
    }

    v37 = [[VMMessageTranscriptViewModel alloc] initWithMPMessage:voicemailCopy];
    [(MPVoicemailMessageViewModel *)v7 setTranscriptViewModel:v37];
  }

  else
  {
    v36 = 0;
  }

  [(MPVoicemailMessageViewModel *)v7 setShowsRestrictedAlertView:expandedCopy];
  [(MPVoicemailMessageViewModel *)v7 setLocalizedAttributedRestrictedAlertTitle:v36];

  return v7;
}

- (id)currentExpandedVoicemailMessageCell
{
  detailIndexPath = [(MPVoicemailTableViewController *)self detailIndexPath];
  if (detailIndexPath)
  {
    tableView = [(MPVoicemailTableViewController *)self tableView];
    v5 = [tableView cellForRowAtIndexPath:detailIndexPath];

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
  featureFlags = [(MPVoicemailTableViewController *)self featureFlags];
  phoneRecentsAvatarsEnabled = [featureFlags phoneRecentsAvatarsEnabled];

  if ((phoneRecentsAvatarsEnabled & 1) == 0)
  {
    navigationItem = [(MPVoicemailTableViewController *)self navigationItem];
    [navigationItem largeTitleInsets];
    v7 = v6;
    v9 = v8;
    v11 = v10;

    +[PHVoicemailMessageTableViewCell marginWidth];
    v13 = v12;
    navigationItem2 = [(MPVoicemailTableViewController *)self navigationItem];
    [navigationItem2 setLargeTitleInsets:{v7, v13, v9, v11}];

    navigationItem3 = [(MPVoicemailTableViewController *)self navigationItem];
    navigationBar = [navigationItem3 navigationBar];
    [navigationBar setNeedsLayout];
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
  detailIndexPath = [(MPVoicemailTableViewController *)self detailIndexPath];

  if (detailIndexPath)
  {
    tableView = [(MPVoicemailTableViewController *)self tableView];
    detailIndexPath2 = [(MPVoicemailTableViewController *)self detailIndexPath];
    v6 = [tableView cellForRowAtIndexPath:detailIndexPath2];

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
        detailIndexPath3 = [(MPVoicemailTableViewController *)self detailIndexPath];
        v12 = 138412290;
        v13 = detailIndexPath3;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Requesting to stop playback at indexPath: %@", &v12, 0xCu);
      }

      [(MPVoicemailTableViewController *)self voicemailMessageTableViewCell:v9 didRequestPlayState:0];
      [(MPVoicemailTableViewController *)self setDetailIndexPath:0];
    }
  }
}

- (void)configureAudioButtonForRowAtIndexPath:(id)path
{
  pathCopy = path;
  tableView = [(MPVoicemailTableViewController *)self tableView];
  v6 = [tableView cellForRowAtIndexPath:pathCopy];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
    toolbar = [v7 toolbar];
    audioRouteButton = [toolbar audioRouteButton];

    audioDeviceController = [(MPVoicemailTableViewController *)self audioDeviceController];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = __72__MPVoicemailTableViewController_configureAudioButtonForRowAtIndexPath___block_invoke;
    v13[3] = &unk_100285DE0;
    v14 = audioRouteButton;
    selfCopy = self;
    v16 = v7;
    v11 = v7;
    v12 = audioRouteButton;
    [audioDeviceController fetchCurrentRouteWithCompletionHandler:v13];
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
  audioDeviceController = [(MPVoicemailTableViewController *)self audioDeviceController];
  v4 = [audioDeviceController _unformattedPickableRoutesForAudioSessionCategory:AVAudioSessionCategoryVoiceMail];

  audioDeviceController2 = [(MPVoicemailTableViewController *)self audioDeviceController];
  v6 = [audioDeviceController2 routesForUnformattedPickableRoutes:v4];
  if ([v6 count] == 2)
  {
    audioDeviceController3 = [(MPVoicemailTableViewController *)self audioDeviceController];
    if ([audioDeviceController3 handsetRouteAvailableForUnformattedPickableRoutes:v4])
    {
      audioDeviceController4 = [(MPVoicemailTableViewController *)self audioDeviceController];
      v9 = [audioDeviceController4 speakerRouteAvailableForUnformattedPickableRoutes:v4];
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

- (void)fetchRoutesForAudioRoutingMenuController:(id)controller completionHandler:(id)handler
{
  handlerCopy = handler;
  audioDeviceController = [(MPVoicemailTableViewController *)self audioDeviceController];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = __93__MPVoicemailTableViewController_fetchRoutesForAudioRoutingMenuController_completionHandler___block_invoke;
  v8[3] = &unk_100285E30;
  v9 = handlerCopy;
  v7 = handlerCopy;
  [audioDeviceController fetchRoutesWithCompletionHandler:v8];
}

- (void)audioRoutingMenuController:(id)controller didSelectRoute:(id)route
{
  routeCopy = route;
  audioDeviceController = [(MPVoicemailTableViewController *)self audioDeviceController];
  currentRoute = [audioDeviceController currentRoute];
  v7 = [currentRoute isEqualToRouteIgnoringIsRecommended:routeCopy];

  if ((v7 & 1) == 0)
  {
    audioDeviceController2 = [(MPVoicemailTableViewController *)self audioDeviceController];
    uniqueIdentifier = [routeCopy uniqueIdentifier];
    [audioDeviceController2 pickRouteWithUID:uniqueIdentifier];

    playerController = [(MPVoicemailTableViewController *)self playerController];
    LOBYTE(audioDeviceController2) = [playerController isPlaying];

    if ((audioDeviceController2 & 1) == 0)
    {
      v11 = +[AVAudioSession sharedInstance];
      [v11 deactivateVoicemailAudioSession];
    }
  }
}

- (void)voicemailMessageCellDidTapToCollapse:(id)collapse
{
  detailIndexPath = [(MPVoicemailTableViewController *)self detailIndexPath];

  if (detailIndexPath)
  {
    tableView = [(MPVoicemailTableViewController *)self tableView];
    detailIndexPath2 = [(MPVoicemailTableViewController *)self detailIndexPath];
    [(MPVoicemailTableViewController *)self tableView:tableView collapseRowAtIndexPath:detailIndexPath2 animated:1];
  }
}

- (void)voicemailMessageTableViewCell:(id)cell actionButtonTappedForRowWithIndexPath:(id)path
{
  cellCopy = cell;
  v6 = -[MPVoicemailTableViewController messageAtIndex:](self, "messageAtIndex:", [path row]);
  if (v6)
  {
    metadataView = [cellCopy metadataView];
    actionButton = [metadataView actionButton];
    [(MPVoicemailTableViewController *)self exportVoicemailDataForVoicemail:v6 sourceView:actionButton];
  }
}

- (void)voicemailMessageTableViewCell:(id)cell audioRouteButtonTappedForRowWithIndexPath:(id)path
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

- (void)voicemailMessageTableViewCell:(id)cell moveButtonTappedForRowWithIndexPath:(id)path
{
  pathCopy = path;
  +[CATransaction begin];
  v8 = _NSConcreteStackBlock;
  v9 = 3221225472;
  v10 = __100__MPVoicemailTableViewController_voicemailMessageTableViewCell_moveButtonTappedForRowWithIndexPath___block_invoke;
  v11 = &unk_1002852E0;
  selfCopy = self;
  v13 = pathCopy;
  v6 = pathCopy;
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

- (BOOL)voicemailMessageTableViewCell:(id)cell shouldShowRTTButtonForRowWithIndexPath:(id)path
{
  v4 = -[MPVoicemailTableViewController messageAtIndex:](self, "messageAtIndex:", [path row]);
  transcript = [v4 transcript];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    transcript2 = [v4 transcript];
    conversation = [transcript2 conversation];

    utterances = [conversation utterances];
    v10 = [utterances count] != 0;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)voicemailMessageTableViewCell:(id)cell rttButtonTappedForRowWithIndexPath:(id)path
{
  v13 = -[MPVoicemailTableViewController messageAtIndex:](self, "messageAtIndex:", [path row]);
  transcript = [v13 transcript];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v7 = v13;
  if (isKindOfClass)
  {
    transcript2 = [v13 transcript];
    conversation = [transcript2 conversation];

    v10 = RTTUIConversationViewControllerClass();
    if (v10 && conversation)
    {
      v11 = [v10 viewControllerForConversation:conversation];
      navigationController = [(MPVoicemailTableViewController *)self navigationController];
      [navigationController pushViewController:v11 animated:1];
    }

    v7 = v13;
  }
}

- (void)voicemailMessageTableViewCellDidBeginScrubbing:(id)scrubbing
{
  playerController = [(MPVoicemailTableViewController *)self playerController];
  [playerController pause];
}

- (void)voicemailMessageTableViewCellDidEndScrubbing:(id)scrubbing
{
  playerController = [(MPVoicemailTableViewController *)self playerController];
  [playerController play];
}

- (void)voicemailMessageTableViewCellDidCancelScrubbing:(id)scrubbing
{
  currentExpandedVoicemailMessageCell = [(MPVoicemailTableViewController *)self currentExpandedVoicemailMessageCell];
  if (currentExpandedVoicemailMessageCell)
  {
    v9 = currentExpandedVoicemailMessageCell;
    playerController = [(MPVoicemailTableViewController *)self playerController];
    [playerController currentTime];
    v7 = v6;
    playerControlsView = [v9 playerControlsView];
    [playerControlsView setElapsedTime:v7];

    currentExpandedVoicemailMessageCell = v9;
  }
}

- (void)voicemailMessageTableViewCell:(id)cell didChangeElapsedTime:(double)time
{
  playerController = [(MPVoicemailTableViewController *)self playerController];
  *&v5 = time;
  [playerController seekToTime:v5];
}

- (void)voicemailMessageTableViewCell:(id)cell didReceiveTranscriptTapGesture:(id)gesture
{
  if ([gesture state] == 3)
  {
    detailIndexPath = [(MPVoicemailTableViewController *)self detailIndexPath];
    v15 = -[MPVoicemailTableViewController messageAtIndex:](self, "messageAtIndex:", [detailIndexPath row]);

    transcript = [v15 transcript];

    if (transcript)
    {
      v7 = +[NSBundle mainBundle];
      v8 = [v7 localizedStringForKey:@"VOICEMAILUI_MESSAGE_TRANSCRIPT_ALERT_ACTION_TITLE_CANCEL" value:&stru_10028F310 table:@"VoicemailUI"];
      v9 = [UIAlertAction actionWithTitle:v8 style:1 handler:0];

      v10 = +[NSBundle mainBundle];
      v11 = [v10 localizedStringForKey:@"VOICEMAILUI_MESSAGE_TRANSCRIPT_ALERT_TITLE_DEBUG" value:&stru_10028F310 table:@"VoicemailUI"];
      transcript2 = [v15 transcript];
      v13 = [transcript2 debugDescription];
      v14 = [UIAlertController alertControllerWithTitle:v11 message:v13 preferredStyle:1];

      [v14 addAction:v9];
      [(MPVoicemailTableViewController *)self presentViewController:v14 animated:1 completion:0];
    }
  }
}

- (void)voicemailMessageTableViewCellShouldPresentWelcomeViewController:(id)controller
{
  v4 = [[_TtC11MobilePhone34LiveVoicemailWelcomeViewController alloc] initWithDelegate:self];
  [(MPVoicemailTableViewController *)self presentViewController:v4 animated:1 completion:0];
}

- (void)voicemailMessageTableViewCell:(id)cell didReceiveTranscriptFeedback:(unint64_t)feedback
{
  detailIndexPath = [(MPVoicemailTableViewController *)self detailIndexPath];
  v7 = -[MPVoicemailTableViewController messageAtIndex:](self, "messageAtIndex:", [detailIndexPath row]);

  if (feedback - 3 >= 0xFFFFFFFFFFFFFFFELL && v7)
  {
    voicemailController = [(MPVoicemailTableViewController *)self voicemailController];
    voicemailManager = [voicemailController voicemailManager];
    identifier = [v7 identifier];
    [voicemailManager reportTranscriptionRatedAccurate:feedback == 2 forVoicemail:identifier];
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
  selfCopy = self;
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
  audioPlaybackRequestBlock = [(MPVoicemailTableViewController *)self audioPlaybackRequestBlock];

  if (audioPlaybackRequestBlock)
  {
    v4 = PHDefaultLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Cancelling playback request block", v6, 2u);
    }

    audioPlaybackRequestBlock2 = [(MPVoicemailTableViewController *)self audioPlaybackRequestBlock];
    dispatch_block_cancel(audioPlaybackRequestBlock2);

    [(MPVoicemailTableViewController *)self setAudioPlaybackRequestBlock:0];
  }
}

- (void)voicemailMessageTableViewCell:(id)cell didRequestPlayState:(int64_t)state
{
  cellCopy = cell;
  v7 = PHDefaultLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    stateCopy = state;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Requested state: %ld for playbackControls", buf, 0xCu);
  }

  switch(state)
  {
    case 2:
      playerController = [(MPVoicemailTableViewController *)self playerController];
      [playerController pause];

      break;
    case 1:
      tableView = [(MPVoicemailTableViewController *)self tableView];
      v10 = [tableView indexPathForCell:cellCopy];
      v11 = -[MPVoicemailTableViewController messageAtIndex:](self, "messageAtIndex:", [v10 row]);
      dataURL = [v11 dataURL];

      if (dataURL)
      {
        objc_initWeak(buf, self);
        [(MPVoicemailTableViewController *)self setIsPendingAudioSessionActivation:1];
        [(MPVoicemailTableViewController *)self cancelPlaybackRequest];
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = __84__MPVoicemailTableViewController_voicemailMessageTableViewCell_didRequestPlayState___block_invoke;
        block[3] = &unk_100285170;
        objc_copyWeak(&v21, buf);
        v20 = dataURL;
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
      playerController2 = [(MPVoicemailTableViewController *)self playerController];
      [playerController2 stop];

      [(MPVoicemailTableViewController *)self setIsPendingAudioSessionActivation:0];
      [(MPVoicemailTableViewController *)self cancelPlaybackRequest];
      break;
  }

  audioDeviceController = [(MPVoicemailTableViewController *)self audioDeviceController];
  [audioDeviceController restorePickedRoute];
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

- (void)playMessage:(id)message
{
  messageCopy = message;
  if ([(MPVoicemailTableViewController *)self isViewLoaded]&& [(MPVoicemailTableViewController *)self visible])
  {
    identifier = [messageCopy identifier];
    v6 = [(MPVoicemailTableViewController *)self indexPathForMessageID:identifier];

    voicemailController = [(MPVoicemailTableViewController *)self voicemailController];
    v8 = [voicemailController isRestrictedMessage:messageCopy];

    if (v6)
    {
      if (!messageCopy || v8 & 1 | (([messageCopy isDataAvailable] & 1) == 0))
      {
        v9 = PHDefaultLog();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v27 = 138412546;
          v28 = messageCopy;
          v29 = 1024;
          v30 = v8;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Asked to play voicemail %@ but will not as wither the voicemail is nil, data is not available, the message is restricted (%d) or it can't be found in the table", &v27, 0x12u);
        }

        goto LABEL_24;
      }

      voicemails = [(MPVoicemailTableViewController *)self voicemails];
      v13 = [voicemails containsObject:messageCopy];

      if (v13)
      {
        view = [(MPVoicemailTableViewController *)self view];
        [view setUserInteractionEnabled:0];

        detailIndexPath = [(MPVoicemailTableViewController *)self detailIndexPath];
        if (detailIndexPath && (v16 = detailIndexPath, -[MPVoicemailTableViewController detailIndexPath](self, "detailIndexPath"), v17 = objc_claimAutoreleasedReturnValue(), v18 = [v6 isEqual:v17], v17, v16, (v18 & 1) == 0))
        {
          tableView = [(MPVoicemailTableViewController *)self tableView];
          detailIndexPath2 = [(MPVoicemailTableViewController *)self detailIndexPath];
          [(MPVoicemailTableViewController *)self tableView:tableView collapseRowAtIndexPath:detailIndexPath2 animated:0];
        }

        else
        {
          detailIndexPath3 = [(MPVoicemailTableViewController *)self detailIndexPath];

          if (detailIndexPath3)
          {
LABEL_28:
            tableView2 = [(MPVoicemailTableViewController *)self tableView];
            v25 = [tableView2 cellForRowAtIndexPath:v6];

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [(MPVoicemailTableViewController *)self voicemailMessageTableViewCell:v25 didRequestPlayState:1];
            }

            view2 = [(MPVoicemailTableViewController *)self view];
            [view2 setUserInteractionEnabled:1];

            goto LABEL_24;
          }
        }

        tableView3 = [(MPVoicemailTableViewController *)self tableView];
        [(MPVoicemailTableViewController *)self tableView:tableView3 expandRowAtIndexPath:v6 animated:0];

        goto LABEL_28;
      }

      v20 = PHDefaultLog();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v27 = 138412290;
        v28 = messageCopy;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Adding message to playback queue since we did not find it in voicemail list %@", &v27, 0xCu);
      }
    }

    else
    {
      v11 = PHDefaultLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v27 = 138412290;
        v28 = messageCopy;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Adding message to playback queue since we did not find it in voicemail list %@", &v27, 0xCu);
      }

      [(MPVoicemailTableViewController *)self setPlayMessageOnReloadData:1];
    }

    [(MPVoicemailTableViewController *)self addMessageToPlaybackQueue:messageCopy];
LABEL_24:

    goto LABEL_25;
  }

  v10 = PHDefaultLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v27 = 138412290;
    v28 = messageCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Adding message to playback queue since view is not loaded %@", &v27, 0xCu);
  }

  [(MPVoicemailTableViewController *)self addMessageToPlaybackQueue:messageCopy];
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
    messagePlaybackQueue = [(MPVoicemailTableViewController *)self messagePlaybackQueue];
    reverseObjectEnumerator = [messagePlaybackQueue reverseObjectEnumerator];

    v5 = [reverseObjectEnumerator countByEnumeratingWithState:&v16 objects:v20 count:16];
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
            objc_enumerationMutation(reverseObjectEnumerator);
          }

          v9 = [(MPVoicemailTableViewController *)self indexPathForMessageID:*(*(&v16 + 1) + 8 * i)];
          if (v9)
          {
            v10 = v9;
            voicemails = [(MPVoicemailTableViewController *)self voicemails];
            v12 = [voicemails objectAtIndexedSubscript:{objc_msgSend(v10, "row")}];

            if (v12)
            {
              voicemailController = [(MPVoicemailTableViewController *)self voicemailController];
              v14 = [voicemailController isRestrictedMessage:v12];

              if (!v14)
              {

                goto LABEL_16;
              }
            }
          }
        }

        v6 = [reverseObjectEnumerator countByEnumeratingWithState:&v16 objects:v20 count:16];
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
  messageToPlayFromPlaybackQueue = [(MPVoicemailTableViewController *)self messageToPlayFromPlaybackQueue];
  if (messageToPlayFromPlaybackQueue)
  {
    v4 = PHDefaultLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      messagePlaybackQueue = [(MPVoicemailTableViewController *)self messagePlaybackQueue];
      v9 = 138412546;
      v10 = messageToPlayFromPlaybackQueue;
      v11 = 2112;
      v12 = messagePlaybackQueue;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Found a message: %@ from the playback queue: %@ that needs to be played", &v9, 0x16u);
    }

    messagePlaybackQueue2 = [(MPVoicemailTableViewController *)self messagePlaybackQueue];
    identifier = [messageToPlayFromPlaybackQueue identifier];
    [messagePlaybackQueue2 removeObject:identifier];

    [(MPVoicemailTableViewController *)self playMessage:messageToPlayFromPlaybackQueue];
  }

  return messageToPlayFromPlaybackQueue != 0;
}

- (void)exportVoicemailDataForVoicemail:(id)voicemail sourceView:(id)view
{
  voicemailCopy = voicemail;
  viewCopy = view;
  v8 = PHDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v31 = voicemailCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Exporting data for voicemail %@", buf, 0xCu);
  }

  playerController = [(MPVoicemailTableViewController *)self playerController];
  isPlaying = [playerController isPlaying];

  if (isPlaying)
  {
    playerController2 = [(MPVoicemailTableViewController *)self playerController];
    [playerController2 pause];
  }

  dataURL = [voicemailCopy dataURL];
  v13 = [AVURLAsset assetWithURL:dataURL];

  v14 = [[AVAssetExportSession alloc] initWithAsset:v13 presetName:AVAssetExportPresetAppleM4A];
  identifier = [voicemailCopy identifier];
  v16 = [NSString stringWithFormat:@"voicemail-%lu.m4a", identifier];

  v17 = NSTemporaryDirectory();
  v18 = [v17 stringByAppendingPathComponent:v16];
  v19 = [NSURL fileURLWithPath:v18];
  [v14 setOutputURL:v19];

  v20 = +[NSFileManager defaultManager];
  outputURL = [v14 outputURL];
  [v20 removeItemAtURL:outputURL error:0];

  [v14 setOutputFileType:AVFileTypeAppleM4A];
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = __77__MPVoicemailTableViewController_exportVoicemailDataForVoicemail_sourceView___block_invoke;
  v25[3] = &unk_100285308;
  v26 = v14;
  v27 = voicemailCopy;
  selfCopy = self;
  v29 = viewCopy;
  v22 = viewCopy;
  v23 = voicemailCopy;
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

- (void)performDeleteAtIndexPaths:(id)paths dataSourceActions:(id)actions completionBlock:(id)block
{
  pathsCopy = paths;
  actionsCopy = actions;
  blockCopy = block;
  v11 = [(MPVoicemailTableViewController *)self messagesAtIndexPaths:pathsCopy];
  v12 = PHDefaultLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v36 = v11;
    v37 = 2112;
    v38 = pathsCopy;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Performing delete for messages: %@, with corresponding indexPaths: %@", buf, 0x16u);
  }

  if (actionsCopy)
  {
    actionsCopy[2](actionsCopy, v11);
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
        voicemailMessageViewModelCache = [(MPVoicemailTableViewController *)self voicemailMessageViewModelCache];
        identifier = [v18 identifier];
        [voicemailMessageViewModelCache removeObjectForKey:identifier];

        v17 = v17 + 1;
      }

      while (v15 != v17);
      v15 = [v13 countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v15);
  }

  voicemails = [(MPVoicemailTableViewController *)self voicemails];
  [voicemails removeObjectsInArray:v13];

  featureFlags = [(MPVoicemailTableViewController *)self featureFlags];
  voicemailSearchEnabled = [featureFlags voicemailSearchEnabled];

  if (voicemailSearchEnabled && ![(MPVoicemailTableViewController *)self visible])
  {
    [(PHTableViewController *)self setNeedsReloadData:1];
    if (blockCopy)
    {
      blockCopy[2](blockCopy, v13);
    }
  }

  else
  {
    tableView = [(MPVoicemailTableViewController *)self tableView];
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = __94__MPVoicemailTableViewController_performDeleteAtIndexPaths_dataSourceActions_completionBlock___block_invoke;
    v28[3] = &unk_1002852E0;
    v28[4] = self;
    v29 = pathsCopy;
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = __94__MPVoicemailTableViewController_performDeleteAtIndexPaths_dataSourceActions_completionBlock___block_invoke_2;
    v25[3] = &unk_100285EA8;
    v27 = blockCopy;
    v26 = v13;
    [tableView performBatchUpdates:v28 completion:v25];
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

- (void)voicemailMessageDetailViewController:(id)controller destructiveActionPerformedForMessage:(id)message completionBlock:(id)block
{
  blockCopy = block;
  identifier = [message identifier];
  v9 = [(MPVoicemailTableViewController *)self indexPathForMessageID:identifier];

  if (v9)
  {
    v13 = v9;
    v10 = [NSArray arrayWithObjects:&v13 count:1];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = __124__MPVoicemailTableViewController_voicemailMessageDetailViewController_destructiveActionPerformedForMessage_completionBlock___block_invoke;
    v11[3] = &unk_100285ED0;
    v11[4] = self;
    v12 = blockCopy;
    [(MPVoicemailTableViewController *)self performDeleteAtIndexPaths:v10 dataSourceActions:0 completionBlock:v11];
  }

  else
  {
    blockCopy[2](blockCopy);
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
  selfCopy = self;
  v3 = MPVoicemailTableViewController.isAccountProvisioningRequiredForAtLeastOneAccount.getter();

  return v3;
}

- (void)startObservingPreferences
{
  selfCopy = self;
  MPVoicemailTableViewController.startObservingPreferences()();
}

- (void)stopObservingPreferences
{
  type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for NSMutableArray);
  selfCopy = self;
  v3 = NSArray.init(arrayLiteral:)();
  [(MPVoicemailTableViewController *)selfCopy setObservations:v3];
}

- (void)voicemailMessageTableViewCell:(id)cell dialRequestButtonTappedForRowWithIndexPath:(id)path
{
  cellCopy = cell;
  pathCopy = path;
  selfCopy = self;
  MPVoicemailTableViewController.voicemailMessageTableViewCell(tableViewCell:dialRequestButtonTappedForRowWithIndexPath:)(cellCopy, pathCopy);
}

- (void)startDialRequestForMessage:(id)message
{
  swift_unknownObjectRetain();
  selfCopy = self;
  MPVoicemailTableViewController.startDialRequestFor(message:)(message);
  swift_unknownObjectRelease();
}

- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate
{
  if (!decelerate)
  {
    [(MPVoicemailTableViewController *)self reloadDataIfNeeded];
  }
}

- (void)configureLegacyVoicemailCell:(id)cell for:(id)for showLabel:(BOOL)label onCallTapped:(id)tapped
{
  v10 = _Block_copy(tapped);
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  cellCopy = cell;
  forCopy = for;
  selfCopy = self;
  specialized MPVoicemailTableViewController.configureLegacyVoicemailCell(_:for:showLabel:onCallTapped:)(cellCopy, forCopy, label, partial apply for thunk for @escaping @callee_unowned @convention(block) () -> (), v11);
}

- (void)getAppActionRecommendationsWithVoicemailId:(NSUUID *)id completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  __chkstk_darwin(v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = id;
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
  idCopy = id;
  selfCopy = self;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(0, 0, v9, &_sIeAgH_ytIeAgHr_TRTA_28Tu, v14);
}

- (void)processAppActionRecommendationWithVoicemailId:(NSUUID *)id recommendation:(NSString *)recommendation buttonType:(unint64_t)type completionHandler:(id)handler
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  __chkstk_darwin(v11 - 8);
  v13 = &v22 - v12;
  v14 = _Block_copy(handler);
  v15 = swift_allocObject();
  v15[2] = id;
  v15[3] = recommendation;
  v15[4] = type;
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
  idCopy = id;
  recommendationCopy = recommendation;
  selfCopy = self;
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