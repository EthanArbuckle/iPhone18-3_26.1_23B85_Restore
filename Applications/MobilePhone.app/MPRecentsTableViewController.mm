@interface MPRecentsTableViewController
- (BOOL)canDisplaySearchBarPopover;
- (BOOL)canPerformTableViewUpdates;
- (BOOL)isRecentCallContactInFavorites:(id)favorites;
- (BOOL)shouldNavigationControllerPresentLargeTitles;
- (BOOL)shouldSnapshot;
- (BOOL)tapTargets;
- (CNAvatarCardController)avatarCardController;
- (CoreTelephonyClient)ctClient;
- (MPRecentsDetailPresenter)recentsDetailPresenter;
- (MPRecentsTableViewController)init;
- (MPRecentsTableViewController)initWithCoder:(id)coder;
- (MPRecentsTableViewController)initWithNibName:(id)name bundle:(id)bundle;
- (MPRecentsTableViewController)initWithRecentsController:(id)controller;
- (MPRecentsUnknownCallersViewController)unknownCallersViewController;
- (MPSearchViewController)searchResultsController;
- (NSArray)indexPathsForMissedCalls;
- (NSArray)indexPathsForNormalCalls;
- (NSOperationQueue)dataSourcePrefetchingOperationQueue;
- (PHContactsSearchResultsRanker)ranker;
- (UIBarButtonItem)clearButtonItem;
- (UIBarButtonItem)doneButtonItem;
- (UIEdgeInsets)separatorInsetForContentSizeCategory:(id)category isEditing:(BOOL)editing;
- (UISearchController)searchController;
- (UISegmentedControl)tableViewDisplayModeSegmentedControl;
- (UITableView)tableView;
- (UIViewController)alertPresentingViewController;
- (_TtC11MobilePhone19RecentsCallServices)callServices;
- (_TtC11MobilePhone25FaceTimeSpamReportManager)spamReport;
- (_UIContentUnavailableView)contentUnavailableView;
- (double)tableView:(id)view estimatedHeightForRowAtIndexPath:(id)path;
- (id)_indexPathsForCallsWithStatus:(unsigned int)status includeUnknown:(BOOL)unknown;
- (id)callsWithValidHandles:(id)handles;
- (id)contactViewControllerForRecentCall:(id)call;
- (id)contactViewControllerForRecentCall:(id)call contact:(id)contact;
- (id)contactsForRecentCall:(id)call;
- (id)contactsForRecentCallForAvatar:(id)avatar;
- (id)fetchCarrierBundleValue:(id)value context:(id)context;
- (id)fetchSubscriptionsInUse;
- (id)indexPathsForRecentCalls;
- (id)makePersonalNicknameMenuView;
- (id)multipleContactsBlockViewControllerForRecentCall:(id)call;
- (id)multipleContactsViewControllerForRecentCall:(id)call;
- (id)nicknameEditButtonItem;
- (id)personalizedCarrierString;
- (id)recentCallAtTableViewIndex:(int64_t)index;
- (id)recentsCellConfigurator;
- (id)reportSwipeActionForCall:(id)call;
- (id)searchControllersForDifferentSections;
- (id)searchResultsControllerProvider;
- (id)tabBarIconName;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view trailingSwipeActionsConfigurationForRowAtIndexPath:(id)path;
- (id)unknownContactForRecentCall:(id)call;
- (int64_t)avatarCardController:(id)controller presentationResultForLocation:(CGPoint)location;
- (int64_t)configureCardController:(id)controller presentationResultForIndex:(id)index;
- (int64_t)rowCountForCurrentTableMode;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_showCarrierVoiceCallReportAlertForCall:(id)call;
- (void)animateSearchResultsController:(BOOL)controller;
- (void)appResumed:(id)resumed;
- (void)appSuspended:(id)suspended;
- (void)applicationDidEnterBackground:(id)background;
- (void)clearButtonAction:(id)action;
- (void)commonInit;
- (void)configureSearch;
- (void)contactViewController:(id)controller didCompleteWithContact:(id)contact;
- (void)contactViewController:(id)controller didExecuteBlockAndReportContactAction:(id)action;
- (void)contentSizeCategoryDidChange;
- (void)controller:(id)controller didCompleteClassificationRequest:(id)request withResponse:(id)response;
- (void)dealloc;
- (void)didPresentSearchController:(id)controller;
- (void)didReceiveMemoryWarning;
- (void)didSelectSuggestedSearchWithToken:(id)token;
- (void)dismissUnknownCallersViewController:(id)controller;
- (void)donateTipsEventSignalsForRecentCall:(id)call;
- (void)handleShowDetailsURLForUniqueID:(id)d;
- (void)handleShowDetailsURLForUniqueID:(id)d withContinuingSearchText:(id)text;
- (void)handleUIAccessibilityDarkerSystemColorsStatusDidChangeNotification:(id)notification;
- (void)handleURL:(id)l;
- (void)loadView;
- (void)makeUIForDefaultPNG;
- (void)performBatchUpdates:(id)updates completion:(id)completion;
- (void)phoneApplicationDidChangeTabBarSelection:(id)selection;
- (void)placeCallWithRecentCall:(id)call;
- (void)presentBlockAllAlertFor:(id)for;
- (void)presentBlockUnknownParticipantsFor:(id)for;
- (void)presentCNSharedProfileOnboardingController;
- (void)presentFaceTimeSpamReportAlertFor:(id)for;
- (void)presentFaceTimeSpamReportAndBlockAlertFor:(id)for;
- (void)presentGroupFaceTimeSpamReportAndBlockAlertFor:(id)for;
- (void)presentUnknownCallersViewController;
- (void)pushVoicemailMessageDetailsViewControllerForMessage:(id)message;
- (void)recentsController:(id)controller didChangeCalls:(id)calls;
- (void)recentsController:(id)controller didChangeUnreadCallCount:(unint64_t)count;
- (void)recentsController:(id)controller didCompleteFetchingCalls:(id)calls;
- (void)recentsController:(id)controller didUpdateCalls:(id)calls;
- (void)recentsControllerDidChangeMessages:(id)messages;
- (void)reconfiguringCellsForCalls:(id)calls;
- (void)refreshView;
- (void)reloadDataSource;
- (void)reloadDataSourceForCalls:(id)calls;
- (void)reloadTableView;
- (void)removeAllRecentCalls;
- (void)removeRecentCallsAtIndexPaths:(id)paths;
- (void)savePreferences;
- (void)searchControllerBeginDragging;
- (void)selectedSegmentDidChangeForSender:(id)sender;
- (void)setContentUnavailable:(BOOL)unavailable animated:(BOOL)animated;
- (void)setContentUnavailableViewTitle:(id)title;
- (void)setEditing:(BOOL)editing animated:(BOOL)animated;
- (void)setNavigationItemsForEditing:(BOOL)editing animated:(BOOL)animated;
- (void)setRecentCalls:(id)calls;
- (void)setTableViewDisplayMode:(int64_t)mode;
- (void)showRecentCallDetailsViewControllerForRecentCall:(id)call;
- (void)showRecentCallDetailsViewControllerForRecentCall:(id)call animated:(BOOL)animated;
- (void)showRecentCallDetailsViewControllerForRecentCall:(id)call navigationController:(id)controller animated:(BOOL)animated;
- (void)showReportingExtensionForCall:(id)call;
- (void)startSearchingForText:(id)text;
- (void)tableView:(id)view accessoryButtonTappedForRowWithIndexPath:(id)path;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tipKitStartObservation;
- (void)tipKitStopObservation;
- (void)traitCollectionDidChange:(id)change;
- (void)unknownCallersViewControllerDidRequestEnable:(id)enable;
- (void)updateLargeTitleInsets;
- (void)updateNavigationItemsForEditing;
- (void)updateSearchBarLayoutMarginsPresentingSearchResults:(BOOL)results;
- (void)updateTabBarItem;
- (void)updateTabBarItemWithCount:(unint64_t)count;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillLayoutSubviews;
- (void)willDismissSearchController:(id)controller;
- (void)willPresentSearchController:(id)controller;
@end

@implementation MPRecentsTableViewController

- (id)tabBarIconName
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"RECENTS" value:&stru_10028F310 table:@"PHRecents"];

  return v3;
}

- (void)handleShowDetailsURLForUniqueID:(id)d
{
  dCopy = d;
  v5 = objc_alloc_init(CHManager);
  v6 = [CHRecentCall predicateForCallsWithUniqueID:dCopy];
  v7 = [v5 callsWithPredicate:v6 limit:0 offset:0 batchSize:0];
  firstObject = [v7 firstObject];

  v9 = PHDefaultLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138412546;
    v16 = dCopy;
    v17 = 2112;
    v18 = firstObject;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "handleShowDetailsURLForUniqueID: %@ found recent call %@", &v15, 0x16u);
  }

  if (firstObject)
  {
    navigationController = [(MPRecentsTableViewController *)self navigationController];
    visibleViewController = [navigationController visibleViewController];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      navigationController2 = [(MPRecentsTableViewController *)self navigationController];
      v14 = [navigationController2 popViewControllerAnimated:0];
    }

    [(MPRecentsTableViewController *)self showRecentCallDetailsViewControllerForRecentCall:firstObject animated:1];
  }
}

- (MPRecentsTableViewController)init
{
  [(MPRecentsTableViewController *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (MPRecentsTableViewController)initWithCoder:(id)coder
{
  [(MPRecentsTableViewController *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (MPRecentsTableViewController)initWithNibName:(id)name bundle:(id)bundle
{
  [(MPRecentsTableViewController *)self doesNotRecognizeSelector:a2, bundle];

  return 0;
}

- (MPRecentsTableViewController)initWithRecentsController:(id)controller
{
  controllerCopy = controller;
  v15.receiver = self;
  v15.super_class = MPRecentsTableViewController;
  v6 = [(PhoneViewController *)&v15 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_recentsController, controller);
    [(PHRecentsController *)v7->_recentsController addDelegate:v7 queue:&_dispatch_main_q];
    v8 = +[NSNotificationCenter defaultCenter];
    [v8 addObserver:v7 selector:"handleUIAccessibilityDarkerSystemColorsStatusDidChangeNotification:" name:UIAccessibilityDarkerSystemColorsStatusDidChangeNotification object:0];
    v9 = +[ILClassificationController sharedInstance];
    [v9 activateWithCompletion:0];

    v10 = objc_alloc_init(TUFeatureFlags);
    featureFlags = v7->_featureFlags;
    v7->_featureFlags = v10;

    v12 = objc_alloc_init(_TtC11MobilePhone22CallReportingViewModel);
    callReportingViewModel = v7->_callReportingViewModel;
    v7->_callReportingViewModel = v12;

    [(MPRecentsTableViewController *)v7 commonInit];
    [v8 addObserver:v7 selector:"contentSizeCategoryDidChange" name:UIContentSizeCategoryDidChangeNotification object:0];
  }

  return v7;
}

- (void)commonInit
{
  self->_contentUnavailable = 0;
  self->_dataSourceNeedsReload = 1;
  recentCalls = self->_recentCalls;
  self->_recentCalls = 0;

  v4 = objc_alloc_init(_TtC11MobilePhone22CallReportingViewModel);
  callReportingViewModel = self->_callReportingViewModel;
  self->_callReportingViewModel = v4;

  v6 = PHPreferencesGetValue();
  self->_tableViewDisplayMode = [v6 integerValue];

  self->_tableViewConfiguredDisplayMode = self->_tableViewDisplayMode;
  v10 = objc_alloc_init(MPCNMeCardSharingSettingsViewControllerObserver);
  [(MPRecentsTableViewController *)self setMeCardSharingSettingsViewControllerObserver:v10];
  v7 = +[TUCallCenter sharedInstance];
  contactStore = [v7 contactStore];
  v9 = [CNAvatarViewControllerSettings settingsWithContactStore:contactStore threeDTouchEnabled:1];
  [(MPRecentsTableViewController *)self setAvatarViewControllerSettings:v9];

  [(MPRecentsTableViewController *)self updateTabBarItem];
}

- (_TtC11MobilePhone25FaceTimeSpamReportManager)spamReport
{
  spamReport = self->_spamReport;
  if (!spamReport)
  {
    v4 = objc_alloc_init(_TtC11MobilePhone25FaceTimeSpamReportManager);
    v5 = self->_spamReport;
    self->_spamReport = v4;

    spamReport = self->_spamReport;
  }

  return spamReport;
}

- (void)dealloc
{
  dataSourcePrefetchingOperationQueue = [(MPRecentsTableViewController *)self dataSourcePrefetchingOperationQueue];
  [dataSourcePrefetchingOperationQueue cancelAllOperations];

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self];

  v5.receiver = self;
  v5.super_class = MPRecentsTableViewController;
  [(MPRecentsTableViewController *)&v5 dealloc];
}

- (UITableView)tableView
{
  tableView = self->_tableView;
  if (!tableView)
  {
    v4 = [[UITableView alloc] initWithFrame:0 style:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    v5 = self->_tableView;
    self->_tableView = v4;

    [(UITableView *)self->_tableView setTranslatesAutoresizingMaskIntoConstraints:0];
    view = [(MPRecentsTableViewController *)self view];
    [view addSubview:self->_tableView];

    view2 = [(MPRecentsTableViewController *)self view];
    v8 = self->_tableView;
    view3 = [(MPRecentsTableViewController *)self view];
    v10 = [NSLayoutConstraint constraintWithItem:v8 attribute:7 relatedBy:0 toItem:view3 attribute:7 multiplier:1.0 constant:0.0];
    [view2 addConstraint:v10];

    view4 = [(MPRecentsTableViewController *)self view];
    v12 = self->_tableView;
    view5 = [(MPRecentsTableViewController *)self view];
    v14 = [NSLayoutConstraint constraintWithItem:v12 attribute:8 relatedBy:0 toItem:view5 attribute:8 multiplier:1.0 constant:0.0];
    [view4 addConstraint:v14];

    tableView = self->_tableView;
  }

  return tableView;
}

- (PHContactsSearchResultsRanker)ranker
{
  ranker = self->_ranker;
  if (!ranker)
  {
    v4 = objc_opt_new();
    v5 = self->_ranker;
    self->_ranker = v4;

    ranker = self->_ranker;
  }

  return ranker;
}

- (void)didReceiveMemoryWarning
{
  v4.receiver = self;
  v4.super_class = MPRecentsTableViewController;
  [(MPRecentsTableViewController *)&v4 didReceiveMemoryWarning];
  self->_dataSourceNeedsReload = 1;
  contentUnavailableView = self->_contentUnavailableView;
  self->_contentUnavailableView = 0;
}

- (void)loadView
{
  v7.receiver = self;
  v7.super_class = MPRecentsTableViewController;
  [(MPRecentsTableViewController *)&v7 loadView];
  tableViewDisplayModeSegmentedControl = [(MPRecentsTableViewController *)self tableViewDisplayModeSegmentedControl];
  [tableViewDisplayModeSegmentedControl addTarget:self action:"selectedSegmentDidChangeForSender:" forControlEvents:4096];
  navigationItem = [(MPRecentsTableViewController *)self navigationItem];
  [navigationItem setTitleView:tableViewDisplayModeSegmentedControl];

  navigationController = [(MPRecentsTableViewController *)self navigationController];
  navigationBar = [navigationController navigationBar];
  [navigationBar setPrefersLargeTitles:1];

  if (+[UIApplication shouldMakeUIForDefaultPNG])
  {
    [(MPRecentsTableViewController *)self makeUIForDefaultPNG];
  }
}

- (void)viewDidLoad
{
  v49.receiver = self;
  v49.super_class = MPRecentsTableViewController;
  [(MPRecentsTableViewController *)&v49 viewDidLoad];
  v3 = +[UIColor systemBackgroundColor];
  view = [(MPRecentsTableViewController *)self view];
  [view setBackgroundColor:v3];

  navigationItem = [(MPRecentsTableViewController *)self navigationItem];
  [navigationItem setHidesSearchBarWhenScrolling:0];

  tableView = [(MPRecentsTableViewController *)self tableView];
  [tableView setDataSource:self];

  tableView2 = [(MPRecentsTableViewController *)self tableView];
  [tableView2 setDelegate:self];

  tableView3 = [(MPRecentsTableViewController *)self tableView];
  [tableView3 registerClass:-[MPRecentsTableViewController tableViewCellClass](self forCellReuseIdentifier:{"tableViewCellClass"), @"MPRecentsTableViewCell"}];

  tableView4 = [(MPRecentsTableViewController *)self tableView];
  [tableView4 setRowHeight:UITableViewAutomaticDimension];

  featureFlags = [(MPRecentsTableViewController *)self featureFlags];
  LODWORD(view) = [featureFlags phoneRecentsAvatarsEnabled];

  if (view)
  {
    tableView5 = [(MPRecentsTableViewController *)self tableView];
    [tableView5 setSeparatorInsetReference:1];
  }

  tableViewCellClass = [(MPRecentsTableViewController *)self tableViewCellClass];
  traitCollection = [(MPRecentsTableViewController *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  [(objc_class *)tableViewCellClass separatorInsetForContentSizeCategory:preferredContentSizeCategory isEditing:[(MPRecentsTableViewController *)self isEditing]];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  tableView6 = [(MPRecentsTableViewController *)self tableView];
  [tableView6 setSeparatorInset:{v16, v18, v20, v22}];

  v24 = +[NSBundle mainBundle];
  v25 = [v24 localizedStringForKey:@"NO_RECENTS" value:&stru_10028F310 table:@"PHRecents"];
  [(MPRecentsTableViewController *)self setContentUnavailableViewTitle:v25];

  tableViewDisplayMode = [(MPRecentsTableViewController *)self tableViewDisplayMode];
  tableViewDisplayModeSegmentedControl = [(MPRecentsTableViewController *)self tableViewDisplayModeSegmentedControl];
  [tableViewDisplayModeSegmentedControl setSelectedSegmentIndex:tableViewDisplayMode];

  avatarCardController = [(MPRecentsTableViewController *)self avatarCardController];
  [avatarCardController setDelegate:self];

  view2 = [(MPRecentsTableViewController *)self view];
  avatarCardController2 = [(MPRecentsTableViewController *)self avatarCardController];
  [avatarCardController2 setSourceView:view2];

  featureFlags2 = [(MPRecentsTableViewController *)self featureFlags];
  LOBYTE(avatarCardController2) = [featureFlags2 increaseCallHistoryEnabled];

  if ((avatarCardController2 & 1) == 0)
  {
    tableView7 = [(MPRecentsTableViewController *)self tableView];
    [(PhoneViewController *)self _loadOffsetDefaultForKey:@"RecentsOffsetKey" withScrollView:tableView7];
  }

  [(MPRecentsTableViewController *)self updateLargeTitleInsets];
  v33 = objc_alloc_init(TUFeatureFlags);
  nameAndPhotoEnabledC3 = [v33 nameAndPhotoEnabledC3];

  if (nameAndPhotoEnabledC3)
  {
    v35 = PHDefaultLog();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      *v48 = 0;
      _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "Going to present CNSharedProfileOnboardingController on launch", v48, 2u);
    }

    v36 = [CNSharedProfileOnboardingController alloc];
    v37 = +[TUCallCenter sharedInstance];
    contactStore = [v37 contactStore];
    v39 = [v36 initWithContactStore:contactStore];
    [(MPRecentsTableViewController *)self setOnboardingController:v39];

    onboardingController = [(MPRecentsTableViewController *)self onboardingController];
    [onboardingController presentOnboardingFlowIfNeededForMode:1 fromViewController:self];
  }

  v41 = +[NSNotificationCenter defaultCenter];
  [v41 addObserver:self selector:"updateNavigationItemsForEditing" name:UIApplicationWillEnterForegroundNotification object:0];

  featureFlags3 = [(MPRecentsTableViewController *)self featureFlags];
  callHistorySearchEnabled = [featureFlags3 callHistorySearchEnabled];

  if (callHistorySearchEnabled)
  {
    [(MPRecentsTableViewController *)self configureSearch];
    recentsController = [(MPRecentsTableViewController *)self recentsController];
    [recentsController checkRecentMissedCallCount];

    searchController = [(MPRecentsTableViewController *)self searchController];
    -[MPRecentsTableViewController updateSearchBarLayoutMarginsPresentingSearchResults:](self, "updateSearchBarLayoutMarginsPresentingSearchResults:", [searchController isActive]);
  }

  v46 = objc_opt_new();
  tabBarItem = [(MPRecentsTableViewController *)self tabBarItem];
  [tabBarItem setStandardAppearance:v46];
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v15.receiver = self;
  v15.super_class = MPRecentsTableViewController;
  [(MPRecentsTableViewController *)&v15 viewWillAppear:?];
  v5 = +[NSNotificationCenter defaultCenter];
  [v5 addObserver:self selector:"applicationDidEnterBackground:" name:UIApplicationDidEnterBackgroundNotification object:0];
  [v5 addObserver:self selector:"appSuspended:" name:UIApplicationSuspendedNotification object:0];
  [v5 addObserver:self selector:"appResumed:" name:UIApplicationResumedNotification object:0];
  [v5 addObserver:self selector:"phoneApplicationDidChangeTabBarSelection:" name:@"PhoneApplicationDidChangeTabBarSelectionNotification" object:0];
  [(MPRecentsTableViewController *)self tipKitStartObservation];
  if ([(MPRecentsTableViewController *)self dataSourceNeedsReload])
  {
    [(MPRecentsTableViewController *)self reloadDataSource];
  }

  shouldNavigationControllerPresentLargeTitles = [(MPRecentsTableViewController *)self shouldNavigationControllerPresentLargeTitles];
  navigationItem = [(MPRecentsTableViewController *)self navigationItem];
  v8 = navigationItem;
  if (shouldNavigationControllerPresentLargeTitles)
  {
    v9 = 1;
  }

  else
  {
    v9 = 2;
  }

  [navigationItem setLargeTitleDisplayMode:v9];

  [(MPRecentsTableViewController *)self setNavigationItemsForEditing:[(MPRecentsTableViewController *)self isEditing] animated:appearCopy];
  navigationItem2 = [(MPRecentsTableViewController *)self navigationItem];
  navigationBar = [navigationItem2 navigationBar];
  [navigationBar sizeToFit];

  pendingSearchText = [(MPRecentsTableViewController *)self pendingSearchText];
  v13 = [pendingSearchText length];

  if (v13)
  {
    pendingSearchText2 = [(MPRecentsTableViewController *)self pendingSearchText];
    [(MPRecentsTableViewController *)self startSearchingForText:pendingSearchText2];

    [(MPRecentsTableViewController *)self setPendingSearchText:0];
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  v11.receiver = self;
  v11.super_class = MPRecentsTableViewController;
  [(PhoneViewController *)&v11 viewDidAppear:appear];
  navigationItem = [(MPRecentsTableViewController *)self navigationItem];
  [navigationItem setHidesSearchBarWhenScrolling:1];

  if ([(MPRecentsTableViewController *)self pendingSearchControllerActivation])
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __46__MPRecentsTableViewController_viewDidAppear___block_invoke;
    block[3] = &unk_100284FD0;
    block[4] = self;
    dispatch_async(&_dispatch_main_q, block);
    [(MPRecentsTableViewController *)self setPendingSearchControllerActivation:0];
  }

  [TPTipsHelper updateCanDisplayCallHistorySearchTip:[(MPRecentsTableViewController *)self canDisplaySearchBarPopover]];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = __46__MPRecentsTableViewController_viewDidAppear___block_invoke_3;
  v9[3] = &unk_100284FD0;
  v9[4] = self;
  dispatch_async(&_dispatch_main_q, v9);
  v5 = PHDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "MPRecentsTableViewController viewDidAppear:", v8, 2u);
  }

  v6 = createPHPhoneTabBarControllerTabViewDidAppearNotificationInfo(2, self);
  v7 = +[NSNotificationCenter defaultCenter];
  [v7 postNotificationName:@"PHPhoneTabBarControllerTabViewDidAppearNotification" object:v6];
}

id __46__MPRecentsTableViewController_viewDidAppear___block_invoke(uint64_t a1)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = __46__MPRecentsTableViewController_viewDidAppear___block_invoke_2;
  v2[3] = &unk_100284FD0;
  v2[4] = *(a1 + 32);
  return [UIView performWithoutAnimation:v2];
}

void __46__MPRecentsTableViewController_viewDidAppear___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) searchController];
  [v2 setActive:1];

  v4 = [*(a1 + 32) searchController];
  v3 = [v4 searchBar];
  [v3 becomeFirstResponder];
}

void __46__MPRecentsTableViewController_viewDidAppear___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) tableView];
  [v2 flashScrollIndicators];

  v3 = [*(a1 + 32) searchResultsController];
  [v3 prewarmSearchControllersAfterSeconds:1.0];
}

- (void)viewWillLayoutSubviews
{
  v13.receiver = self;
  v13.super_class = MPRecentsTableViewController;
  [(MPRecentsTableViewController *)&v13 viewWillLayoutSubviews];
  [(MPRecentsTableViewController *)self systemMinimumLayoutMargins];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  tableView = [(MPRecentsTableViewController *)self tableView];
  [tableView setDirectionalLayoutMargins:{v4, v6, v8, v10}];

  searchController = [(MPRecentsTableViewController *)self searchController];
  -[MPRecentsTableViewController updateSearchBarLayoutMarginsPresentingSearchResults:](self, "updateSearchBarLayoutMarginsPresentingSearchResults:", [searchController isActive]);
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v6.receiver = self;
  v6.super_class = MPRecentsTableViewController;
  [(MPRecentsTableViewController *)&v6 viewWillDisappear:disappear];
  recentsController = [(MPRecentsTableViewController *)self recentsController];
  [recentsController markRecentCallsAsRead];

  v5 = +[NSNotificationCenter defaultCenter];
  [v5 removeObserver:self name:@"PhoneApplicationDidChangeTabBarSelectionNotification" object:0];
  [v5 removeObserver:self name:UIApplicationDidEnterBackgroundNotification object:0];
  [v5 removeObserver:self name:UIApplicationSuspendedNotification object:0];
  [v5 removeObserver:self name:UIApplicationResumedNotification object:0];
  [(MPRecentsTableViewController *)self tipKitStopObservation];
  [TPTipsHelper updateCanDisplayCallHistorySearchTip:0];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v8.receiver = self;
  v8.super_class = MPRecentsTableViewController;
  [(MPRecentsTableViewController *)&v8 viewDidDisappear:?];
  tableView = [(MPRecentsTableViewController *)self tableView];
  tableView2 = [(MPRecentsTableViewController *)self tableView];
  indexPathForSelectedRow = [tableView2 indexPathForSelectedRow];
  [tableView deselectRowAtIndexPath:indexPathForSelectedRow animated:disappearCopy];

  if ([(MPRecentsTableViewController *)self isEditing])
  {
    [(MPRecentsTableViewController *)self setEditing:0 animated:0];
  }
}

- (void)setEditing:(BOOL)editing animated:(BOOL)animated
{
  animatedCopy = animated;
  editingCopy = editing;
  v22.receiver = self;
  v22.super_class = MPRecentsTableViewController;
  [MPRecentsTableViewController setEditing:"setEditing:animated:" animated:?];
  tableView = [(MPRecentsTableViewController *)self tableView];
  [tableView setEditing:editingCopy animated:animatedCopy];

  tableViewCellClass = [(MPRecentsTableViewController *)self tableViewCellClass];
  traitCollection = [(MPRecentsTableViewController *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  [(objc_class *)tableViewCellClass separatorInsetForContentSizeCategory:preferredContentSizeCategory isEditing:editingCopy];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  tableView2 = [(MPRecentsTableViewController *)self tableView];
  [tableView2 setSeparatorInset:{v12, v14, v16, v18}];

  [(MPRecentsTableViewController *)self setNavigationItemsForEditing:editingCopy animated:animatedCopy];
  if (!editingCopy && [(MPRecentsTableViewController *)self dataSourceNeedsReload])
  {
    v20 = PHDefaultLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Edit mode disabled; reloading data source", v21, 2u);
    }

    [(MPRecentsTableViewController *)self reloadDataSource];
  }
}

- (void)setContentUnavailable:(BOOL)unavailable animated:(BOOL)animated
{
  if (self->_contentUnavailable != unavailable)
  {
    v19 = v7;
    v20 = v6;
    v21 = v4;
    v22 = v5;
    unavailableCopy = unavailable;
    self->_contentUnavailable = unavailable;
    if (self->_contentUnavailableView || unavailable)
    {
      animatedCopy = animated;
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = __63__MPRecentsTableViewController_setContentUnavailable_animated___block_invoke;
      v17[3] = &unk_100285418;
      unavailableCopy2 = unavailable;
      v17[4] = self;
      v12 = objc_retainBlock(v17);
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = __63__MPRecentsTableViewController_setContentUnavailable_animated___block_invoke_2;
      v15[3] = &unk_100285120;
      v16 = unavailableCopy;
      v15[4] = self;
      v13 = objc_retainBlock(v15);
      tableView = [(MPRecentsTableViewController *)self tableView];
      [tableView setHidden:unavailableCopy];

      if (animatedCopy)
      {
        [UIView animateWithDuration:4 delay:v13 options:v12 animations:0.300000012 completion:0.0];
      }

      else
      {
        (v13[2])(v13);
        (v12[2])(v12, 1);
      }
    }
  }
}

void __63__MPRecentsTableViewController_setContentUnavailable_animated___block_invoke(uint64_t a1, int a2)
{
  if (a2 && (*(a1 + 40) & 1) == 0)
  {
    v3 = [*(a1 + 32) contentUnavailableView];
    [v3 setHidden:1];
  }
}

void __63__MPRecentsTableViewController_setContentUnavailable_animated___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) contentUnavailableView];
  v5 = v3;
  if (v2 == 1)
  {
    [v3 setHidden:0];

    v3 = [*(a1 + 32) contentUnavailableView];
    v4 = 1.0;
    v5 = v3;
  }

  else
  {
    v4 = 0.0;
  }

  [v3 setAlpha:v4];
}

- (BOOL)shouldNavigationControllerPresentLargeTitles
{
  recentCalls = [(MPRecentsTableViewController *)self recentCalls];
  if (recentCalls)
  {
    recentCalls2 = [(MPRecentsTableViewController *)self recentCalls];
    v5 = [recentCalls2 count] != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)updateNavigationItemsForEditing
{
  isEditing = [(MPRecentsTableViewController *)self isEditing];

  [(MPRecentsTableViewController *)self setNavigationItemsForEditing:isEditing animated:0];
}

- (void)savePreferences
{
  v3 = [NSNumber numberWithInteger:[(MPRecentsTableViewController *)self tableViewDisplayMode]];
  PHPreferencesSetValueInDomain();

  featureFlags = [(MPRecentsTableViewController *)self featureFlags];
  if (([featureFlags increaseCallHistoryEnabled] & 1) == 0 && -[MPRecentsTableViewController isViewLoaded](self, "isViewLoaded"))
  {
    tableView = [(MPRecentsTableViewController *)self tableView];

    if (!tableView)
    {
      return;
    }

    featureFlags = [(MPRecentsTableViewController *)self tableView];
    [(PhoneViewController *)self _saveOffsetDefaultForKey:@"RecentsOffsetKey" withScrollView:?];
  }
}

- (BOOL)shouldSnapshot
{
  if (([(MPRecentsTableViewController *)self isEditing]& 1) != 0)
  {
    return 0;
  }

  navigationController = [(MPRecentsTableViewController *)self navigationController];
  visibleViewController = [navigationController visibleViewController];
  v3 = visibleViewController == self;

  return v3;
}

- (void)handleURL:(id)l
{
  scheme = [l scheme];
  lowercaseString = [scheme lowercaseString];

  if ([lowercaseString isEqualToString:@"mobilephone-unknowncallerstip"])
  {
    [(MPRecentsTableViewController *)self presentUnknownCallersViewController];
  }
}

- (BOOL)tapTargets
{
  featureFlags = [(MPRecentsTableViewController *)self featureFlags];
  recentsCallTapTargetsEnabled = [featureFlags recentsCallTapTargetsEnabled];

  return recentsCallTapTargetsEnabled;
}

- (UISearchController)searchController
{
  featureFlags = [(MPRecentsTableViewController *)self featureFlags];
  callHistorySearchEnabled = [featureFlags callHistorySearchEnabled];

  if (callHistorySearchEnabled)
  {
    searchController = self->_searchController;
    if (!searchController)
    {
      v6 = [UISearchController alloc];
      searchResultsController = [(MPRecentsTableViewController *)self searchResultsController];
      v8 = [v6 initWithSearchResultsController:searchResultsController];
      v9 = self->_searchController;
      self->_searchController = v8;

      searchResultsController2 = [(MPRecentsTableViewController *)self searchResultsController];
      [(UISearchController *)self->_searchController setSearchResultsUpdater:searchResultsController2];

      [(UISearchController *)self->_searchController setObscuresBackgroundDuringPresentation:0];
      [(UISearchController *)self->_searchController setDelegate:self];
      searchController = self->_searchController;
    }

    v11 = searchController;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (MPSearchViewController)searchResultsController
{
  featureFlags = [(MPRecentsTableViewController *)self featureFlags];
  callHistorySearchEnabled = [featureFlags callHistorySearchEnabled];

  if (callHistorySearchEnabled)
  {
    searchResultsController = self->_searchResultsController;
    if (!searchResultsController)
    {
      v6 = objc_alloc_init(MPSearchViewController);
      v7 = self->_searchResultsController;
      self->_searchResultsController = v6;

      [(MPSearchViewController *)self->_searchResultsController setDelegate:self];
      searchResultsControllerProvider = [(MPRecentsTableViewController *)self searchResultsControllerProvider];
      [(MPSearchViewController *)self->_searchResultsController setSearchControllerProvider:searchResultsControllerProvider];

      navigationController = [(MPRecentsTableViewController *)self navigationController];
      [(MPSearchViewController *)self->_searchResultsController setHostingNavigationController:navigationController];

      searchResultsController = self->_searchResultsController;
    }

    v10 = searchResultsController;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)searchControllersForDifferentSections
{
  featureFlags = [(MPRecentsTableViewController *)self featureFlags];
  callHistorySearchEnabled = [featureFlags callHistorySearchEnabled];

  if (callHistorySearchEnabled)
  {
    v35 = objc_alloc_init(NSMutableArray);
    v5 = objc_alloc_init(MPSuggestionsSearchTableViewController);
    [v5 setSuggestionsDelegate:self];
    v6 = [MPSuggestionsSearchController alloc];
    v7 = +[PHApplicationServices sharedInstance];
    callProviderManager = [v7 callProviderManager];
    v38 = v5;
    v9 = [v6 initWithTableViewController:v5 callProviderManager:callProviderManager];

    v37 = v9;
    [v35 addObject:v9];
    recentsController = [(MPRecentsTableViewController *)self recentsController];
    callHistoryControllerCoalescingStrategy = [recentsController callHistoryControllerCoalescingStrategy];
    recentsController2 = [(MPRecentsTableViewController *)self recentsController];
    v13 = +[TUCallHistoryController callHistoryControllerWithCoalescingStrategy:options:](TUCallHistoryController, "callHistoryControllerWithCoalescingStrategy:options:", callHistoryControllerCoalescingStrategy, [recentsController2 callHistoryControllerOptions]);

    [v13 boostQualityOfService];
    v14 = [PHRecentsController alloc];
    recentsController3 = [(MPRecentsTableViewController *)self recentsController];
    callProviderManager2 = [recentsController3 callProviderManager];
    recentsController4 = [(MPRecentsTableViewController *)self recentsController];
    contactStore = [recentsController4 contactStore];
    recentsController5 = [(MPRecentsTableViewController *)self recentsController];
    suggestedContactStore = [recentsController5 suggestedContactStore];
    recentsController6 = [(MPRecentsTableViewController *)self recentsController];
    metadataCache = [recentsController6 metadataCache];
    v36 = v13;
    v22 = [(PHRecentsController *)v14 initWithCallHistoryController:v13 callProviderManager:callProviderManager2 contactStore:contactStore suggestedContactStore:suggestedContactStore metadataCache:metadataCache];

    v23 = v35;
    v24 = [[MPCallsSearchController alloc] initWithRecentsController:v22 searchResultsController:self->_searchResultsController];
    [v35 addObject:v24];
    featureFlags2 = [(MPRecentsTableViewController *)self featureFlags];
    LODWORD(suggestedContactStore) = [featureFlags2 voicemailSearchEnabled];

    if (suggestedContactStore)
    {
      navigationController = [(MPRecentsTableViewController *)self navigationController];
      v27 = +[(PHApplicationServices *)MPApplicationServices];
      voicemailController = [v27 voicemailController];
      [navigationController setVoicemailController:voicemailController];

      v29 = [MPVoicemailsSearchController alloc];
      voicemailController2 = [v27 voicemailController];
      v31 = [(MPVoicemailsSearchController *)v29 initWithNavigationController:navigationController voicemailController:voicemailController2];

      [v35 addObject:v31];
    }

    v39[0] = _NSConcreteStackBlock;
    v39[1] = 3221225472;
    v39[2] = __69__MPRecentsTableViewController_searchControllersForDifferentSections__block_invoke_2;
    v39[3] = &unk_100285BB8;
    v39[4] = self;
    v32 = [[MPContactsSearchController alloc] initWithContactSearchType:0 contactViewControllerProvider:&__block_literal_global_16 searchResultsRanker:v39 senderIdentityProvider:&__block_literal_global_196 callProviderManagerProvider:&__block_literal_global_200];
    [v35 addObject:v32];
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

id __69__MPRecentsTableViewController_searchControllersForDifferentSections__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 ranker];
  v5 = [v4 rankContactSearchResults:v3];

  return v5;
}

TUSenderIdentity *__cdecl __69__MPRecentsTableViewController_searchControllersForDifferentSections__block_invoke_3(id a1, CNContact *a2)
{
  v2 = a2;
  v3 = +[PHApplicationServices sharedInstance];
  v4 = [v3 contactGeminiManager];
  v10 = 0;
  v5 = [v4 bestSenderIdentityForContact:v2 error:&v10];
  v6 = v10;

  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v8 = PHDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __69__MPRecentsTableViewController_searchControllersForDifferentSections__block_invoke_3_cold_1();
    }
  }

  return v5;
}

TUCallProviderManager *__cdecl __69__MPRecentsTableViewController_searchControllersForDifferentSections__block_invoke_197(id a1)
{
  v1 = +[PHApplicationServices sharedInstance];
  v2 = [v1 callProviderManager];

  return v2;
}

- (void)configureSearch
{
  featureFlags = [(MPRecentsTableViewController *)self featureFlags];
  callHistorySearchEnabled = [featureFlags callHistorySearchEnabled];

  if (callHistorySearchEnabled)
  {
    searchController = [(MPRecentsTableViewController *)self searchController];
    searchBar = [searchController searchBar];
    [searchBar sizeToFit];

    v7 = +[UIColor linkColor];
    searchController2 = [(MPRecentsTableViewController *)self searchController];
    searchBar2 = [searchController2 searchBar];
    [searchBar2 setTintColor:v7];

    searchController3 = [(MPRecentsTableViewController *)self searchController];
    navigationItem = [(MPRecentsTableViewController *)self navigationItem];
    [navigationItem setSearchController:searchController3];
  }
}

- (id)searchResultsControllerProvider
{
  objc_initWeak(&location, self);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = __63__MPRecentsTableViewController_searchResultsControllerProvider__block_invoke;
  v4[3] = &unk_100286270;
  objc_copyWeak(&v5, &location);
  v2 = objc_retainBlock(v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);

  return v2;
}

id __63__MPRecentsTableViewController_searchResultsControllerProvider__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained searchControllersForDifferentSections];
  }

  else
  {
    v3 = objc_opt_new();
  }

  v4 = v3;

  return v4;
}

- (void)updateSearchBarLayoutMarginsPresentingSearchResults:(BOOL)results
{
  resultsCopy = results;
  featureFlags = [(MPRecentsTableViewController *)self featureFlags];
  callHistorySearchEnabled = [featureFlags callHistorySearchEnabled];

  if (callHistorySearchEnabled)
  {
    view = [(MPRecentsTableViewController *)self view];
    [view layoutMargins];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;

    v16 = !resultsCopy;
    if (resultsCopy)
    {
      v17 = 10;
    }

    else
    {
      v17 = 14;
    }

    if (v16)
    {
      v13 = 0.0;
    }

    searchController = [(MPRecentsTableViewController *)self searchController];
    searchBar = [searchController searchBar];
    [searchBar _setOverrideContentInsets:v17 forRectEdges:{v9, v11, v13, v15}];
  }
}

- (id)recentsCellConfigurator
{
  featureFlags = [(MPRecentsTableViewController *)self featureFlags];
  useSharedRecentsViewModel = [featureFlags useSharedRecentsViewModel];

  if (useSharedRecentsViewModel)
  {
    v29[0] = 0;
    v29[1] = v29;
    v29[2] = 0x3032000000;
    v29[3] = __Block_byref_object_copy__3;
    v29[4] = __Block_byref_object_dispose__3;
    callServices = [(MPRecentsTableViewController *)self callServices];
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = __55__MPRecentsTableViewController_recentsCellConfigurator__block_invoke;
    v28[3] = &unk_100286298;
    v28[4] = v29;
    v5 = objc_retainBlock(v28);
    objc_initWeak(&location, self);
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = __55__MPRecentsTableViewController_recentsCellConfigurator__block_invoke_2;
    v25[3] = &unk_1002862C0;
    objc_copyWeak(&v26, &location);
    v6 = objc_retainBlock(v25);
    cellConfigurator = self->_cellConfigurator;
    if (!cellConfigurator)
    {
      v23 = v5;
      v8 = [MPContactsService alloc];
      recentsController = [(MPRecentsTableViewController *)self recentsController];
      v24 = [(MPContactsService *)v8 initWithDataProvider:recentsController];

      v10 = [MPReportFlowPresenter alloc];
      callReportingViewModel = [(MPRecentsTableViewController *)self callReportingViewModel];
      v22 = [(MPReportFlowPresenter *)v10 initWithCallReportingViewModel:callReportingViewModel alertPresentingViewController:self contactsService:v24];

      v12 = [MPRecentsCellConfigurator alloc];
      tableView = [(MPRecentsTableViewController *)self tableView];
      recentsController2 = [(MPRecentsTableViewController *)self recentsController];
      featureFlags2 = [(MPRecentsTableViewController *)self featureFlags];
      tapTargets = [(MPRecentsTableViewController *)self tapTargets];
      callReportingViewModel2 = [(MPRecentsTableViewController *)self callReportingViewModel];
      v18 = [(MPRecentsCellConfigurator *)v12 initWithTableView:tableView recentsController:recentsController2 featureFlags:featureFlags2 tapTargets:tapTargets callReportingViewModel:callReportingViewModel2 reportFlowPresenter:v22 contactsService:v24 avatarViewControllerSettings:0 placeCallAction:v23 removeCallsAtIndexPaths:v6 presentingViewController:self];
      v19 = self->_cellConfigurator;
      self->_cellConfigurator = v18;

      cellConfigurator = self->_cellConfigurator;
      v5 = v23;
    }

    v20 = cellConfigurator;

    objc_destroyWeak(&v26);
    objc_destroyWeak(&location);

    _Block_object_dispose(v29, 8);
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

void __55__MPRecentsTableViewController_recentsCellConfigurator__block_invoke_2(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained removeRecentCallsAtIndexPaths:v5];
  }
}

- (_TtC11MobilePhone19RecentsCallServices)callServices
{
  featureFlags = [(MPRecentsTableViewController *)self featureFlags];
  useSharedRecentsViewModel = [featureFlags useSharedRecentsViewModel];

  if (useSharedRecentsViewModel)
  {
    callServices = self->_callServices;
    if (!callServices)
    {
      v6 = [_TtC11MobilePhone19RecentsCallServices alloc];
      featureFlags2 = [(MPRecentsTableViewController *)self featureFlags];
      groupConversations = [featureFlags2 groupConversations];
      recentsController = [(MPRecentsTableViewController *)self recentsController];
      v10 = [(RecentsCallServices *)v6 initWithGroupConversationsEnabled:groupConversations recentsCallServicesDialer:recentsController];
      v11 = self->_callServices;
      self->_callServices = v10;

      callServices = self->_callServices;
    }

    v12 = callServices;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (MPRecentsDetailPresenter)recentsDetailPresenter
{
  featureFlags = [(MPRecentsTableViewController *)self featureFlags];
  useSharedRecentsViewModel = [featureFlags useSharedRecentsViewModel];

  if (useSharedRecentsViewModel)
  {
    recentsDetailPresenter = self->_recentsDetailPresenter;
    if (!recentsDetailPresenter)
    {
      v6 = [MPRecentsDetailPresenter alloc];
      recentsController = [(MPRecentsTableViewController *)self recentsController];
      callReportingViewModel = [(MPRecentsTableViewController *)self callReportingViewModel];
      v9 = [(MPRecentsDetailPresenter *)v6 initWithRecentsController:recentsController callReportingViewModel:callReportingViewModel];
      v10 = self->_recentsDetailPresenter;
      self->_recentsDetailPresenter = v9;

      recentsDetailPresenter = self->_recentsDetailPresenter;
    }

    v11 = recentsDetailPresenter;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)indexPathsForRecentCalls
{
  v3 = +[NSMutableArray array];
  recentCalls = [(MPRecentsTableViewController *)self recentCalls];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = __56__MPRecentsTableViewController_indexPathsForRecentCalls__block_invoke;
  v8[3] = &unk_1002862E8;
  v9 = v3;
  v5 = v3;
  [recentCalls enumerateObjectsUsingBlock:v8];

  v6 = [v5 copy];

  return v6;
}

void __56__MPRecentsTableViewController_indexPathsForRecentCalls__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  v4 = [NSIndexPath indexPathForRow:a3 inSection:0];
  [v3 addObject:v4];
}

- (id)_indexPathsForCallsWithStatus:(unsigned int)status includeUnknown:(BOOL)unknown
{
  v7 = +[NSMutableArray array];
  recentCalls = [(MPRecentsTableViewController *)self recentCalls];
  v12 = _NSConcreteStackBlock;
  v13 = 3221225472;
  v14 = __77__MPRecentsTableViewController__indexPathsForCallsWithStatus_includeUnknown___block_invoke;
  v15 = &unk_100286310;
  statusCopy = status;
  unknownCopy = unknown;
  v16 = v7;
  v9 = v7;
  [recentCalls enumerateObjectsUsingBlock:&v12];

  v10 = [v9 copy];

  return v10;
}

void __77__MPRecentsTableViewController__indexPathsForCallsWithStatus_includeUnknown___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v8 = a2;
  if ((*(a1 + 40) & [v8 callStatus]) != 0 || *(a1 + 44) == 1 && (v7 = objc_msgSend(v8, "callStatus"), v7 == kCHCallStatusUnknown))
  {
    v5 = *(a1 + 32);
    v6 = [NSIndexPath indexPathForRow:a3 inSection:0];
    [v5 addObject:v6];
  }
}

- (NSArray)indexPathsForMissedCalls
{
  indexPathsForMissedCalls = self->_indexPathsForMissedCalls;
  if (!indexPathsForMissedCalls)
  {
    v4 = [(MPRecentsTableViewController *)self _indexPathsForCallsWithStatus:kCHCallStatusMissed includeUnknown:0];
    v5 = self->_indexPathsForMissedCalls;
    self->_indexPathsForMissedCalls = v4;

    indexPathsForMissedCalls = self->_indexPathsForMissedCalls;
  }

  return indexPathsForMissedCalls;
}

- (NSArray)indexPathsForNormalCalls
{
  indexPathsForNormalCalls = self->_indexPathsForNormalCalls;
  if (!indexPathsForNormalCalls)
  {
    v4 = [(MPRecentsTableViewController *)self _indexPathsForCallsWithStatus:kCHCallStatusAllButMissed includeUnknown:1];
    v5 = self->_indexPathsForNormalCalls;
    self->_indexPathsForNormalCalls = v4;

    indexPathsForNormalCalls = self->_indexPathsForNormalCalls;
  }

  return indexPathsForNormalCalls;
}

- (int64_t)rowCountForCurrentTableMode
{
  recentCalls = [(MPRecentsTableViewController *)self recentCalls];
  v4 = [recentCalls count];

  if ([(MPRecentsTableViewController *)self tableViewDisplayMode]== 1)
  {
    indexPathsForMissedCalls = [(MPRecentsTableViewController *)self indexPathsForMissedCalls];
    v4 = [indexPathsForMissedCalls count];
  }

  return v4;
}

- (id)recentCallAtTableViewIndex:(int64_t)index
{
  tableViewDisplayMode = [(MPRecentsTableViewController *)self tableViewDisplayMode];
  if (tableViewDisplayMode == 1)
  {
    if (index < 0 || (-[MPRecentsTableViewController indexPathsForMissedCalls](self, "indexPathsForMissedCalls"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 count], v6, v7 <= index))
    {
      index = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      indexPathsForMissedCalls = [(MPRecentsTableViewController *)self indexPathsForMissedCalls];
      v9 = [indexPathsForMissedCalls objectAtIndex:index];

      index = [v9 row];
    }
  }

  else if (tableViewDisplayMode)
  {
    index = 0x7FFFFFFFFFFFFFFFLL;
  }

  recentCalls = [(MPRecentsTableViewController *)self recentCalls];
  v11 = [recentCalls count];

  v12 = 0;
  if ((index & 0x8000000000000000) == 0 && index < v11)
  {
    recentCalls2 = [(MPRecentsTableViewController *)self recentCalls];
    v12 = [recentCalls2 objectAtIndexedSubscript:index];
  }

  return v12;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  featureFlags = [(MPRecentsTableViewController *)self featureFlags];
  useSharedRecentsViewModel = [featureFlags useSharedRecentsViewModel];

  if (useSharedRecentsViewModel)
  {
    v10 = -[MPRecentsTableViewController recentCallAtTableViewIndex:](self, "recentCallAtTableViewIndex:", [pathCopy row]);
    cellConfigurator = [(MPRecentsTableViewController *)self cellConfigurator];
    v12 = [cellConfigurator cellForRowAtIndexPath:pathCopy withRecentCall:v10];

    goto LABEL_23;
  }

  v12 = [viewCopy dequeueReusableCellWithIdentifier:@"MPRecentsTableViewCell" forIndexPath:pathCopy];
  v10 = -[MPRecentsTableViewController recentCallAtTableViewIndex:](self, "recentCallAtTableViewIndex:", [pathCopy row]);
  featureFlags2 = [(MPRecentsTableViewController *)self featureFlags];
  phoneRecentsAvatarsEnabled = [featureFlags2 phoneRecentsAvatarsEnabled];

  if (phoneRecentsAvatarsEnabled)
  {
    avatarViewController = [v12 avatarViewController];

    if (!avatarViewController)
    {
      v16 = [CNAvatarViewController alloc];
      avatarViewControllerSettings = [(MPRecentsTableViewController *)self avatarViewControllerSettings];
      v18 = [v16 initWithSettings:avatarViewControllerSettings];

      [v18 setObjectViewControllerDelegate:self];
      [v12 setAvatarViewController:v18];
      avatarViewController2 = [v12 avatarViewController];
      view = [avatarViewController2 view];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        avatarViewController3 = [v12 avatarViewController];
        view2 = [avatarViewController3 view];

        [view2 setAllowStaleRendering:1];
      }
    }

    v24 = [(MPRecentsTableViewController *)self contactsForRecentCallForAvatar:v10];
    avatarViewController4 = [v12 avatarViewController];
    [avatarViewController4 setContacts:v24];

    avatarViewController5 = [v12 avatarViewController];
    view3 = [avatarViewController5 view];
    objc_opt_class();
    v28 = objc_opt_isKindOfClass();

    if (v28)
    {
      avatarViewController6 = [v12 avatarViewController];
      view4 = [avatarViewController6 view];

      uniqueId = [v10 uniqueId];
      [view4 setContextToken:uniqueId];
    }
  }

  if (v10)
  {
    recentsController = [(MPRecentsTableViewController *)self recentsController];
    v33 = [recentsController itemForRecentCall:v10 presentationStyle:0];

    if (objc_opt_respondsToSelector())
    {
      [v12 setTapTargets:{-[MPRecentsTableViewController tapTargets](self, "tapTargets")}];
    }

    [v12 configureWithRecentsItem:v33 recentCall:v10];
    if ([(MPRecentsTableViewController *)self tapTargets])
    {
      validRemoteParticipantHandles = [v10 validRemoteParticipantHandles];
      v35 = [validRemoteParticipantHandles count] != 0;

      [v12 enableCallButton:v35];
      if (objc_opt_respondsToSelector())
      {
        objc_initWeak(&location, self);
        v43[0] = _NSConcreteStackBlock;
        v43[1] = 3221225472;
        v43[2] = __64__MPRecentsTableViewController_tableView_cellForRowAtIndexPath___block_invoke;
        v43[3] = &unk_100285170;
        objc_copyWeak(&v45, &location);
        v44 = v10;
        [v12 setCallButtonTappedHandler:v43];

        objc_destroyWeak(&v45);
        objc_destroyWeak(&location);
      }
    }

    featureFlags3 = [(MPRecentsTableViewController *)self featureFlags];
    increaseCallHistoryEnabled = [featureFlags3 increaseCallHistoryEnabled];

    if (!increaseCallHistoryEnabled)
    {
      goto LABEL_22;
    }

    v38 = [pathCopy row];
    tableViewDisplayMode = [(MPRecentsTableViewController *)self tableViewDisplayMode];
    if (tableViewDisplayMode == 1)
    {
      recentsController2 = [(MPRecentsTableViewController *)self recentsController];
      indexPathsForMissedCalls = [(MPRecentsTableViewController *)self indexPathsForMissedCalls];
      [recentsController2 loadOlderCallsIfNecessaryForRemainingRowCount:{objc_msgSend(indexPathsForMissedCalls, "count") - v38}];
    }

    else
    {
      if (tableViewDisplayMode)
      {
LABEL_22:

        goto LABEL_23;
      }

      recentsController2 = [(MPRecentsTableViewController *)self recentsController];
      [recentsController2 continuousScrollingReachedIndexPath:v38];
    }

    goto LABEL_22;
  }

LABEL_23:

  return v12;
}

void __64__MPRecentsTableViewController_tableView_cellForRowAtIndexPath___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained placeCallWithRecentCall:*(a1 + 32)];
    WeakRetained = v3;
  }
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v4 = [(MPRecentsTableViewController *)self rowCountForCurrentTableMode:view];
  v5 = PHDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [MPRecentsTableViewController tableView:v4 numberOfRowsInSection:v5];
  }

  return v4;
}

- (void)placeCallWithRecentCall:(id)call
{
  callCopy = call;
  featureFlags = [(MPRecentsTableViewController *)self featureFlags];
  useSharedRecentsViewModel = [featureFlags useSharedRecentsViewModel];

  if (useSharedRecentsViewModel)
  {
    callServices = [(MPRecentsTableViewController *)self callServices];
    [callServices placeCallWithRecentCall:callCopy];
LABEL_14:

    goto LABEL_15;
  }

  if (callCopy)
  {
    callServices = objc_alloc_init(TUFeatureFlags);
    groupConversations = [callServices groupConversations];
    validRemoteParticipantHandles = [callCopy validRemoteParticipantHandles];
    v10 = [validRemoteParticipantHandles count];
    v11 = v10;
    if (groupConversations)
    {
      if (v10 <= 1)
      {
      }

      else
      {
        serviceProvider = [callCopy serviceProvider];
        v13 = [serviceProvider isEqualToString:kCHServiceProviderFaceTime];

        if (v13)
        {
          recentsController = [(MPRecentsTableViewController *)self recentsController];
          [recentsController performJoinRequestForRecentCall:callCopy];

          goto LABEL_14;
        }
      }

      recentsController2 = [(MPRecentsTableViewController *)self recentsController];
      [recentsController2 performDialRequestForRecentCall:callCopy];

      v18 = dispatch_get_global_queue(-32768, 0);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = __56__MPRecentsTableViewController_placeCallWithRecentCall___block_invoke;
      block[3] = &unk_1002852E0;
      block[4] = self;
      v24 = callCopy;
      dispatch_async(v18, block);

      v19 = v24;
    }

    else
    {

      recentsController3 = [(MPRecentsTableViewController *)self recentsController];
      v16 = recentsController3;
      if (v11 >= 2)
      {
        [recentsController3 performJoinRequestForRecentCall:callCopy];

        goto LABEL_14;
      }

      [recentsController3 performDialRequestForRecentCall:callCopy];

      v20 = dispatch_get_global_queue(-32768, 0);
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = __56__MPRecentsTableViewController_placeCallWithRecentCall___block_invoke_2;
      v21[3] = &unk_1002852E0;
      v21[4] = self;
      v22 = callCopy;
      dispatch_async(v20, v21);

      v19 = v22;
    }

    goto LABEL_14;
  }

LABEL_15:
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v7 = -[MPRecentsTableViewController recentCallAtTableViewIndex:](self, "recentCallAtTableViewIndex:", [pathCopy row]);
  if ([(MPRecentsTableViewController *)self tapTargets])
  {
    if (v7)
    {
      [(MPRecentsTableViewController *)self showRecentCallDetailsViewControllerForRecentCall:v7 animated:1];
    }

    else
    {
      [viewCopy deselectRowAtIndexPath:pathCopy animated:0];
    }
  }

  else
  {
    [viewCopy deselectRowAtIndexPath:pathCopy animated:0];
    [(MPRecentsTableViewController *)self placeCallWithRecentCall:v7];
  }
}

- (void)tableView:(id)view accessoryButtonTappedForRowWithIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v7 = -[MPRecentsTableViewController recentCallAtTableViewIndex:](self, "recentCallAtTableViewIndex:", [pathCopy row]);
  if (v7)
  {
    [(MPRecentsTableViewController *)self showRecentCallDetailsViewControllerForRecentCall:v7 animated:1];
  }

  else
  {
    [viewCopy deselectRowAtIndexPath:pathCopy animated:0];
  }
}

- (id)tableView:(id)view trailingSwipeActionsConfigurationForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = objc_alloc_init(NSMutableArray);
  objc_initWeak(&location, self);
  v9 = -[MPRecentsTableViewController recentCallAtTableViewIndex:](self, "recentCallAtTableViewIndex:", [pathCopy row]);
  featureFlags = [(MPRecentsTableViewController *)self featureFlags];
  useSharedRecentsViewModel = [featureFlags useSharedRecentsViewModel];

  if (useSharedRecentsViewModel)
  {
    cellConfigurator = [(MPRecentsTableViewController *)self cellConfigurator];
    v13 = [cellConfigurator trailingSwipeActionsConfigurationForRowAt:pathCopy recentCall:v9];
  }

  else
  {
    v14 = +[NSBundle mainBundle];
    v15 = [v14 localizedStringForKey:@"DELETE" value:&stru_10028F310 table:@"PHRecents"];
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = __93__MPRecentsTableViewController_tableView_trailingSwipeActionsConfigurationForRowAtIndexPath___block_invoke;
    v21[3] = &unk_100286338;
    objc_copyWeak(&v23, &location);
    v22 = pathCopy;
    v16 = [UIContextualAction contextualActionWithStyle:1 title:v15 handler:v21];

    v17 = [UIImage systemImageNamed:@"trash.fill"];
    [v16 setImage:v17];

    [v16 setAccessibilityIdentifier:@"DeleteAction"];
    [v8 addObject:v16];
    v18 = [(MPRecentsTableViewController *)self reportSwipeActionForCall:v9];
    if (v18)
    {
      [v8 addObject:v18];
    }

    v19 = [v8 copy];
    v13 = [UISwipeActionsConfiguration configurationWithActions:v19];

    objc_destroyWeak(&v23);
  }

  objc_destroyWeak(&location);

  return v13;
}

void __93__MPRecentsTableViewController_tableView_trailingSwipeActionsConfigurationForRowAtIndexPath___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v8 = *(a1 + 32);
    v7 = [NSArray arrayWithObjects:&v8 count:1];
    [WeakRetained removeRecentCallsAtIndexPaths:v7];

    v5[2](v5, 1);
  }
}

- (void)showReportingExtensionForCall:(id)call
{
  callCopy = call;
  featureFlags = [(MPRecentsTableViewController *)self featureFlags];
  useSharedRecentsViewModel = [featureFlags useSharedRecentsViewModel];

  if (useSharedRecentsViewModel)
  {
    v7 = PHDefaultLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [MPRecentsTableViewController showReportingExtensionForCall:];
    }
  }

  v8 = [ILCallCommunication alloc];
  callerId = [callCopy callerId];
  date = [callCopy date];
  v11 = [v8 initWithSender:callerId dateReceived:date];

  v12 = [ILCallClassificationRequest alloc];
  v31 = v11;
  v13 = [NSArray arrayWithObjects:&v31 count:1];
  v14 = [v12 initWithCallCommunications:v13];

  v15 = [ILClassificationUIExtensionHostViewController alloc];
  callerId2 = [callCopy callerId];
  isoCountryCode = [callCopy isoCountryCode];
  v18 = [v15 initUnactivatedVCWithRequest:v14 sender:callerId2 isoCountryCode:isoCountryCode];
  [(MPRecentsTableViewController *)self setClassificationViewController:v18];

  classificationViewController = [(MPRecentsTableViewController *)self classificationViewController];
  [classificationViewController setDelegate:self];

  classificationViewController2 = [(MPRecentsTableViewController *)self classificationViewController];
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = __62__MPRecentsTableViewController_showReportingExtensionForCall___block_invoke;
  v25[3] = &unk_100285C08;
  v26 = v11;
  v27 = callCopy;
  selfCopy = self;
  v21 = callCopy;
  v22 = v11;
  [classificationViewController2 activateExtensionWithCompletion:v25];

  v23 = PHDefaultLog();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    classificationViewController3 = [(MPRecentsTableViewController *)self classificationViewController];
    *buf = 138412290;
    v30 = classificationViewController3;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Created classification view controller: %@, waiting for ready", buf, 0xCu);
  }
}

void __62__MPRecentsTableViewController_showReportingExtensionForCall___block_invoke(uint64_t a1)
{
  v2 = PHDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v9 = 138412546;
    v10 = v3;
    v11 = 2112;
    v12 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Presenting ClassificationViewController with communication: %@ for call: %@", &v9, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((*(a1 + 48) + 24));
  v6 = *(a1 + 48);
  if (WeakRetained)
  {
    v7 = objc_loadWeakRetained(v6 + 3);
    v8 = [*(a1 + 48) classificationViewController];
    [v7 presentViewController:v8 animated:1 completion:0];
  }

  else
  {
    v7 = [*(a1 + 48) classificationViewController];
    [v6 presentViewController:v7 animated:1 completion:0];
  }
}

- (void)controller:(id)controller didCompleteClassificationRequest:(id)request withResponse:(id)response
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __89__MPRecentsTableViewController_controller_didCompleteClassificationRequest_withResponse___block_invoke;
  block[3] = &unk_1002853E8;
  block[4] = self;
  requestCopy = request;
  responseCopy = response;
  v6 = responseCopy;
  v7 = requestCopy;
  dispatch_async(&_dispatch_main_q, block);
}

void __89__MPRecentsTableViewController_controller_didCompleteClassificationRequest_withResponse___block_invoke(uint64_t a1)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = __89__MPRecentsTableViewController_controller_didCompleteClassificationRequest_withResponse___block_invoke_2;
  v3[3] = &unk_1002852E0;
  v2 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  [v2 dismissViewControllerAnimated:1 completion:v3];
}

void __89__MPRecentsTableViewController_controller_didCompleteClassificationRequest_withResponse___block_invoke_2(uint64_t a1)
{
  v2 = PHDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = 138412546;
    v6 = v3;
    v7 = 2112;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Completed classification request: %@ with response: %@", &v5, 0x16u);
  }
}

- (void)handleUIAccessibilityDarkerSystemColorsStatusDidChangeNotification:(id)notification
{
  notificationCopy = notification;
  v5 = PHDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = v6;
    name = [notificationCopy name];
    v9 = 138412546;
    v10 = v6;
    v11 = 2112;
    v12 = name;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ is handling <%@>", &v9, 0x16u);
  }

  [(MPRecentsTableViewController *)self reloadTableView];
}

- (void)searchControllerBeginDragging
{
  featureFlags = [(MPRecentsTableViewController *)self featureFlags];
  callHistorySearchEnabled = [featureFlags callHistorySearchEnabled];

  if (callHistorySearchEnabled)
  {
    searchController = [(MPRecentsTableViewController *)self searchController];
    searchBar = [searchController searchBar];
    [searchBar resignFirstResponder];
  }
}

- (UIEdgeInsets)separatorInsetForContentSizeCategory:(id)category isEditing:(BOOL)editing
{
  editingCopy = editing;
  categoryCopy = category;
  [objc_opt_class() separatorInsetsFor:categoryCopy isEditing:editingCopy];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = v7;
  v15 = v9;
  v16 = v11;
  v17 = v13;
  result.right = v17;
  result.bottom = v16;
  result.left = v15;
  result.top = v14;
  return result;
}

- (void)appSuspended:(id)suspended
{
  suspendedCopy = suspended;
  v5 = PHDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = v6;
    name = [suspendedCopy name];
    v9 = 138412546;
    v10 = v6;
    v11 = 2112;
    v12 = name;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ is handling <%@>", &v9, 0x16u);
  }

  self->_didEnterSuspended = 1;
}

- (void)appResumed:(id)resumed
{
  resumedCopy = resumed;
  v5 = PHDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = v6;
    name = [resumedCopy name];
    v10 = 138412546;
    v11 = v6;
    v12 = 2112;
    v13 = name;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ is handling <%@>", &v10, 0x16u);
  }

  if ([(MPRecentsTableViewController *)self didEnterSuspended])
  {
    v9 = PHDefaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v10) = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "reloading tableview because the app was in a suspended state and resumed", &v10, 2u);
    }

    self->_didEnterSuspended = 0;
    [(MPRecentsTableViewController *)self reloadTableView];
  }
}

- (void)applicationDidEnterBackground:(id)background
{
  backgroundCopy = background;
  v5 = PHDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = v6;
    name = [backgroundCopy name];
    v14 = 138412546;
    v15 = v6;
    v16 = 2112;
    v17 = name;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ is handling <%@>", &v14, 0x16u);
  }

  tabBarController = [(MPRecentsTableViewController *)self tabBarController];
  selectedViewController = [tabBarController selectedViewController];
  childViewControllers = [selectedViewController childViewControllers];
  firstObject = [childViewControllers firstObject];

  if (firstObject == self)
  {
    recentsController = [(MPRecentsTableViewController *)self recentsController];
    [recentsController markRecentCallsAsRead];
  }
}

- (void)phoneApplicationDidChangeTabBarSelection:(id)selection
{
  selectionCopy = selection;
  v5 = PHDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = v6;
    name = [selectionCopy name];
    v13 = 138412546;
    v14 = v6;
    v15 = 2112;
    v16 = name;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ is handling <%@>", &v13, 0x16u);
  }

  object = [selectionCopy object];
  tabBarController = [(MPRecentsTableViewController *)object tabBarController];
  tabBarController2 = [(MPRecentsTableViewController *)self tabBarController];

  if (object != self && tabBarController == tabBarController2)
  {
    recentsController = [(MPRecentsTableViewController *)self recentsController];
    [recentsController markRecentCallsAsRead];
  }
}

- (void)contentSizeCategoryDidChange
{
  v3 = PHDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Re-calculating table row height.", buf, 2u);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __60__MPRecentsTableViewController_contentSizeCategoryDidChange__block_invoke;
  block[3] = &unk_100284FD0;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

id __60__MPRecentsTableViewController_contentSizeCategoryDidChange__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setEditing:0 animated:0];
  v2 = *(a1 + 32);

  return [v2 reloadTableView];
}

- (CNAvatarCardController)avatarCardController
{
  avatarCardController = self->_avatarCardController;
  if (!avatarCardController)
  {
    v4 = objc_alloc_init(CNAvatarCardController);
    v5 = self->_avatarCardController;
    self->_avatarCardController = v4;

    avatarCardController = self->_avatarCardController;
  }

  return avatarCardController;
}

- (CoreTelephonyClient)ctClient
{
  ctClient = self->_ctClient;
  if (!ctClient)
  {
    v4 = [[CoreTelephonyClient alloc] initWithQueue:&_dispatch_main_q];
    v5 = self->_ctClient;
    self->_ctClient = v4;

    ctClient = self->_ctClient;
  }

  return ctClient;
}

- (UIBarButtonItem)clearButtonItem
{
  clearButtonItem = self->_clearButtonItem;
  if (!clearButtonItem)
  {
    v4 = [UIBarButtonItem alloc];
    v5 = +[NSBundle mainBundle];
    v6 = [v5 localizedStringForKey:@"CLEAR" value:&stru_10028F310 table:@"PHRecents"];
    v7 = [v4 initWithTitle:v6 style:0 target:self action:"clearButtonAction:"];
    v8 = self->_clearButtonItem;
    self->_clearButtonItem = v7;

    clearButtonItem = self->_clearButtonItem;
  }

  return clearButtonItem;
}

- (UIBarButtonItem)doneButtonItem
{
  doneButtonItem = self->_doneButtonItem;
  if (!doneButtonItem)
  {
    v4 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:0 target:self action:"doneButtonAction:"];
    v5 = self->_doneButtonItem;
    self->_doneButtonItem = v4;

    doneButtonItem = self->_doneButtonItem;
  }

  return doneButtonItem;
}

- (id)nicknameEditButtonItem
{
  v3 = +[NSMutableArray array];
  if ([objc_opt_class() meCardSharingEnabled])
  {
    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = __54__MPRecentsTableViewController_nicknameEditButtonItem__block_invoke;
    v31[3] = &unk_100286360;
    v31[4] = self;
    v4 = [UICustomViewMenuElement elementWithViewProvider:v31];
    v33 = v4;
    v5 = [NSArray arrayWithObjects:&v33 count:1];
    v6 = [UIMenu menuWithTitle:&stru_10028F310 image:0 identifier:0 options:1 children:v5];

    [v3 addObject:v6];
  }

  else
  {
    objc_initWeak(&location, self);
    v7 = +[NSBundle mainBundle];
    v8 = [v7 localizedStringForKey:@"SET_UP_NAME_AND_PHOTO" value:&stru_10028F310 table:@"PHRecents"];
    v9 = [UIImage systemImageNamed:@"person.crop.circle"];
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = __54__MPRecentsTableViewController_nicknameEditButtonItem__block_invoke_2;
    v28[3] = &unk_100286388;
    objc_copyWeak(&v29, &location);
    v10 = [UIAction actionWithTitle:v8 image:v9 identifier:0 handler:v28];

    v32 = v10;
    v11 = [NSArray arrayWithObjects:&v32 count:1];
    v12 = [UIMenu menuWithTitle:&stru_10028F310 image:0 identifier:0 options:1 children:v11];

    [v3 addObject:v12];
    objc_destroyWeak(&v29);
    objc_destroyWeak(&location);
  }

  if ([(MPRecentsTableViewController *)self rowCountForCurrentTableMode]>= 1)
  {
    objc_initWeak(&location, self);
    v13 = +[NSBundle mainBundle];
    v14 = [v13 localizedStringForKey:@"SELECT" value:&stru_10028F310 table:@"PHRecents"];
    v15 = [UIImage systemImageNamed:@"checkmark.circle"];
    v23 = _NSConcreteStackBlock;
    v24 = 3221225472;
    v25 = __54__MPRecentsTableViewController_nicknameEditButtonItem__block_invoke_3;
    v26 = &unk_100286388;
    objc_copyWeak(&v27, &location);
    v16 = [UIAction actionWithTitle:v14 image:v15 identifier:0 handler:&v23];

    [v3 addObject:{v16, v23, v24, v25, v26}];
    objc_destroyWeak(&v27);
    objc_destroyWeak(&location);
  }

  v17 = [UIBarButtonItem alloc];
  v18 = +[NSBundle mainBundle];
  v19 = [v18 localizedStringForKey:@"EDIT" value:&stru_10028F310 table:@"PHRecents"];
  v20 = [UIMenu menuWithChildren:v3];
  v21 = [v17 initWithTitle:v19 menu:v20];

  return v21;
}

void __54__MPRecentsTableViewController_nicknameEditButtonItem__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained presentOnboardingViewController];
}

void __54__MPRecentsTableViewController_nicknameEditButtonItem__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setEditing:1 animated:1];
}

- (_UIContentUnavailableView)contentUnavailableView
{
  contentUnavailableView = self->_contentUnavailableView;
  if (!contentUnavailableView)
  {
    v4 = [[_UIContentUnavailableView alloc] initWithFrame:self->_contentUnavailableViewTitle title:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    v5 = self->_contentUnavailableView;
    self->_contentUnavailableView = v4;

    [(_UIContentUnavailableView *)self->_contentUnavailableView setTranslatesAutoresizingMaskIntoConstraints:0];
    tableView = [(MPRecentsTableViewController *)self tableView];
    backgroundColor = [tableView backgroundColor];
    [(_UIContentUnavailableView *)self->_contentUnavailableView setBackgroundColor:backgroundColor];

    view = [(MPRecentsTableViewController *)self view];
    [view addSubview:self->_contentUnavailableView];

    v9 = self->_contentUnavailableView;
    view2 = [(MPRecentsTableViewController *)self view];
    v11 = [NSLayoutConstraint constraintWithItem:v9 attribute:9 relatedBy:0 toItem:view2 attribute:9 multiplier:1.0 constant:0.0];

    view3 = [(MPRecentsTableViewController *)self view];
    [view3 addConstraint:v11];

    v13 = self->_contentUnavailableView;
    view4 = [(MPRecentsTableViewController *)self view];
    v15 = [NSLayoutConstraint constraintWithItem:v13 attribute:10 relatedBy:0 toItem:view4 attribute:10 multiplier:1.0 constant:0.0];

    view5 = [(MPRecentsTableViewController *)self view];
    [view5 addConstraint:v15];

    v17 = self->_contentUnavailableView;
    view6 = [(MPRecentsTableViewController *)self view];
    v19 = [NSLayoutConstraint constraintWithItem:v17 attribute:8 relatedBy:0 toItem:view6 attribute:8 multiplier:1.0 constant:0.0];

    view7 = [(MPRecentsTableViewController *)self view];
    [view7 addConstraint:v19];

    v21 = self->_contentUnavailableView;
    view8 = [(MPRecentsTableViewController *)self view];
    v23 = [NSLayoutConstraint constraintWithItem:v21 attribute:7 relatedBy:0 toItem:view8 attribute:7 multiplier:1.0 constant:0.0];

    view9 = [(MPRecentsTableViewController *)self view];
    [view9 addConstraint:v23];

    contentUnavailableView = self->_contentUnavailableView;
  }

  return contentUnavailableView;
}

- (void)setContentUnavailableViewTitle:(id)title
{
  titleCopy = title;
  if (self->_contentUnavailableViewTitle != titleCopy)
  {
    objc_storeStrong(&self->_contentUnavailableViewTitle, title);
    contentUnavailableView = self->_contentUnavailableView;
    if (contentUnavailableView)
    {
      [(_UIContentUnavailableView *)contentUnavailableView setTitle:self->_contentUnavailableViewTitle];
    }
  }
}

- (NSOperationQueue)dataSourcePrefetchingOperationQueue
{
  dataSourcePrefetchingOperationQueue = self->_dataSourcePrefetchingOperationQueue;
  if (!dataSourcePrefetchingOperationQueue)
  {
    v4 = objc_alloc_init(NSOperationQueue);
    v5 = self->_dataSourcePrefetchingOperationQueue;
    self->_dataSourcePrefetchingOperationQueue = v4;

    [(NSOperationQueue *)self->_dataSourcePrefetchingOperationQueue setMaxConcurrentOperationCount:1];
    dataSourcePrefetchingOperationQueue = self->_dataSourcePrefetchingOperationQueue;
  }

  return dataSourcePrefetchingOperationQueue;
}

- (void)setRecentCalls:(id)calls
{
  callsCopy = calls;
  if (self->_recentCalls != callsCopy)
  {
    v6 = callsCopy;
    objc_storeStrong(&self->_recentCalls, calls);
    [(MPRecentsTableViewController *)self setIndexPathsForMissedCalls:0];
    [(MPRecentsTableViewController *)self setIndexPathsForNormalCalls:0];
    callsCopy = v6;
  }
}

- (void)setTableViewDisplayMode:(int64_t)mode
{
  if (self->_tableViewDisplayMode != mode)
  {
    [(MPRecentsTableViewController *)self setEditing:0 animated:0];
    self->_tableViewDisplayMode = mode;
    junkListViewController = [(MPRecentsTableViewController *)self junkListViewController];
    view = [junkListViewController view];
    [view setAlpha:0.0];

    tableView = [(MPRecentsTableViewController *)self tableView];
    [tableView setAlpha:1.0];

    if ([(MPRecentsTableViewController *)self tableViewConfiguredDisplayMode]!= mode)
    {
      [(MPRecentsTableViewController *)self setTableViewConfiguredDisplayMode:mode];
      indexPathsForNormalCalls = [(MPRecentsTableViewController *)self indexPathsForNormalCalls];
      tableView2 = [(MPRecentsTableViewController *)self tableView];
      indexPathForSelectedRow = [tableView2 indexPathForSelectedRow];
      [tableView2 deselectRowAtIndexPath:indexPathForSelectedRow animated:0];

      +[CATransaction begin];
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = __56__MPRecentsTableViewController_setTableViewDisplayMode___block_invoke;
      v17[3] = &unk_1002852E0;
      v17[4] = self;
      v11 = tableView2;
      v18 = v11;
      [CATransaction setCompletionBlock:v17];
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = __56__MPRecentsTableViewController_setTableViewDisplayMode___block_invoke_2;
      v14[3] = &unk_1002863B0;
      v14[4] = self;
      v15 = v11;
      v16 = indexPathsForNormalCalls;
      v12 = indexPathsForNormalCalls;
      v13 = v11;
      [(MPRecentsTableViewController *)self performBatchUpdates:v14 completion:0];
      +[CATransaction commit];
    }
  }
}

id __56__MPRecentsTableViewController_setTableViewDisplayMode___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) tableView];
  v3 = [v2 tableHeaderView];

  if (v3)
  {
    [*(a1 + 40) scrollRectToVisible:1 animated:{0.0, 0.0, 1.0, 1.0}];
  }

  else if (![*(a1 + 32) tableViewDisplayMode] && objc_msgSend(*(a1 + 32), "rowCountForCurrentTableMode") >= 1)
  {
    v4 = *(a1 + 40);
    v5 = [NSIndexPath indexPathForItem:0 inSection:0];
    [v4 scrollToRowAtIndexPath:v5 atScrollPosition:1 animated:1];
  }

  v6 = *(a1 + 32);

  return [v6 refreshView];
}

id __56__MPRecentsTableViewController_setTableViewDisplayMode___block_invoke_2(id result, int a2)
{
  if (a2)
  {
    v2 = *(*(result + 4) + 88);
    if (v2 == 1)
    {
      return [*(result + 5) deleteRowsAtIndexPaths:*(result + 6) withRowAnimation:0];
    }

    else if (!v2)
    {
      return [*(result + 5) insertRowsAtIndexPaths:*(result + 6) withRowAnimation:0];
    }
  }

  return result;
}

- (UISegmentedControl)tableViewDisplayModeSegmentedControl
{
  tableViewDisplayModeSegmentedControl = self->_tableViewDisplayModeSegmentedControl;
  if (!tableViewDisplayModeSegmentedControl)
  {
    v4 = +[NSBundle mainBundle];
    v5 = [v4 localizedStringForKey:@"ALL_TOGGLE_TITLE" value:&stru_10028F310 table:@"PHRecents"];
    v12[0] = v5;
    v6 = +[NSBundle mainBundle];
    v7 = [v6 localizedStringForKey:@"MISSED_TOGGLE_TITLE" value:&stru_10028F310 table:@"PHRecents"];
    v12[1] = v7;
    v8 = [NSArray arrayWithObjects:v12 count:2];

    v9 = [[UISegmentedControl alloc] initWithItems:v8];
    v10 = self->_tableViewDisplayModeSegmentedControl;
    self->_tableViewDisplayModeSegmentedControl = v9;

    [(UISegmentedControl *)self->_tableViewDisplayModeSegmentedControl frame];
    [(UISegmentedControl *)self->_tableViewDisplayModeSegmentedControl setFrame:?];

    tableViewDisplayModeSegmentedControl = self->_tableViewDisplayModeSegmentedControl;
  }

  return tableViewDisplayModeSegmentedControl;
}

- (void)updateLargeTitleInsets
{
  featureFlags = [(MPRecentsTableViewController *)self featureFlags];
  phoneRecentsAvatarsEnabled = [featureFlags phoneRecentsAvatarsEnabled];

  if ((phoneRecentsAvatarsEnabled & 1) == 0)
  {
    navigationItem = [(MPRecentsTableViewController *)self navigationItem];
    [navigationItem largeTitleInsets];
    v7 = v6;
    v9 = v8;
    v11 = v10;

    tableViewCellClass = [(MPRecentsTableViewController *)self tableViewCellClass];
    traitCollection = [(MPRecentsTableViewController *)self traitCollection];
    preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
    [(objc_class *)tableViewCellClass leftTitleSeparatorInsetForContentSizeCategory:preferredContentSizeCategory];
    v16 = v15;

    navigationItem2 = [(MPRecentsTableViewController *)self navigationItem];
    [navigationItem2 setLargeTitleInsets:{v7, v16, v9, v11}];

    navigationItem3 = [(MPRecentsTableViewController *)self navigationItem];
    navigationBar = [navigationItem3 navigationBar];
    [navigationBar setNeedsLayout];
  }
}

- (void)clearButtonAction:(id)action
{
  v4 = [UIAlertController alertControllerWithTitle:0 message:0 preferredStyle:0];
  v5 = +[NSBundle mainBundle];
  v6 = [v5 localizedStringForKey:@"CLEAR_ALL" value:&stru_10028F310 table:@"PHRecents"];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = __50__MPRecentsTableViewController_clearButtonAction___block_invoke;
  v11[3] = &unk_100285468;
  v11[4] = self;
  v7 = [UIAlertAction actionWithTitle:v6 style:2 handler:v11];

  [v4 addAction:v7];
  v8 = +[NSBundle mainBundle];
  v9 = [v8 localizedStringForKey:@"CANCEL" value:&stru_10028F310 table:@"PHRecents"];
  v10 = [UIAlertAction actionWithTitle:v9 style:1 handler:0];

  [v4 addAction:v10];
  [(MPRecentsTableViewController *)self presentViewController:v4 animated:1 completion:0];
}

- (void)selectedSegmentDidChangeForSender:(id)sender
{
  senderCopy = sender;
  tableViewDisplayModeSegmentedControl = [(MPRecentsTableViewController *)self tableViewDisplayModeSegmentedControl];

  if (tableViewDisplayModeSegmentedControl == senderCopy)
  {
    tableViewDisplayModeSegmentedControl2 = [(MPRecentsTableViewController *)self tableViewDisplayModeSegmentedControl];
    v7 = [tableViewDisplayModeSegmentedControl2 selectedSegmentIndex] != 0;

    [(MPRecentsTableViewController *)self setTableViewDisplayMode:v7];
  }
}

- (void)removeAllRecentCalls
{
  recentCalls = [(MPRecentsTableViewController *)self recentCalls];
  [recentCalls removeAllObjects];

  [(MPRecentsTableViewController *)self setIndexPathsForMissedCalls:0];
  [(MPRecentsTableViewController *)self setIndexPathsForNormalCalls:0];
  +[CATransaction begin];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = __52__MPRecentsTableViewController_removeAllRecentCalls__block_invoke;
  v11[3] = &unk_100284FD0;
  v11[4] = self;
  [CATransaction setCompletionBlock:v11];
  recentCalls2 = [(MPRecentsTableViewController *)self recentCalls];
  v5 = [recentCalls2 count];

  if (!v5)
  {
    tableView = [(MPRecentsTableViewController *)self tableView];
    [tableView beginUpdates];

    v7 = [NSIndexSet indexSetWithIndex:0];
    tableView2 = [(MPRecentsTableViewController *)self tableView];
    [tableView2 deleteSections:v7 withRowAnimation:100];

    tableView3 = [(MPRecentsTableViewController *)self tableView];
    [tableView3 insertSections:v7 withRowAnimation:100];

    tableView4 = [(MPRecentsTableViewController *)self tableView];
    [tableView4 endUpdates];
  }

  +[CATransaction commit];
}

void __52__MPRecentsTableViewController_removeAllRecentCalls__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setEditing:0 animated:1];
  [*(a1 + 32) setContentUnavailable:1 animated:1];
  v2 = [*(a1 + 32) recentsController];
  [v2 deleteAllRecentCalls];
}

- (void)removeRecentCallsAtIndexPaths:(id)paths
{
  pathsCopy = paths;
  +[NSMutableArray array];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = __62__MPRecentsTableViewController_removeRecentCallsAtIndexPaths___block_invoke;
  v9[3] = &unk_1002863B0;
  v9[4] = self;
  v11 = v10 = pathsCopy;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __62__MPRecentsTableViewController_removeRecentCallsAtIndexPaths___block_invoke_288;
  v7[3] = &unk_100285C58;
  v7[4] = self;
  v8 = v11;
  v5 = v11;
  v6 = pathsCopy;
  [(MPRecentsTableViewController *)self performBatchUpdates:v9 completion:v7];
}

void __62__MPRecentsTableViewController_removeRecentCallsAtIndexPaths___block_invoke(uint64_t a1, int a2)
{
  v4 = [*(a1 + 32) tableView];
  if ([v4 numberOfSections] < 1)
  {
    v6 = 0;
  }

  else
  {
    v5 = [*(a1 + 32) tableView];
    v6 = [v5 numberOfRowsInSection:0];
  }

  v7 = [NSOrderedSet orderedSetWithArray:*(a1 + 40)];
  v8 = +[NSMutableSet set];
  +[NSMutableSet set];
  v25 = _NSConcreteStackBlock;
  v26 = 3221225472;
  v27 = __62__MPRecentsTableViewController_removeRecentCallsAtIndexPaths___block_invoke_2;
  v9 = v28 = &unk_1002863D8;
  v10 = *(a1 + 32);
  v29 = v9;
  v30 = v10;
  v31 = *(a1 + 48);
  v11 = v8;
  v32 = v11;
  [v7 enumerateObjectsWithOptions:2 usingBlock:&v25];
  if ([v9 count])
  {
    [*(a1 + 32) setIndexPathsForMissedCalls:0];
    [*(a1 + 32) setIndexPathsForNormalCalls:0];
  }

  v12 = [*(a1 + 32) tableView];
  [v12 setUserInteractionEnabled:0];

  v13 = PHDefaultLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [*(a1 + 32) rowCountForCurrentTableMode];
    *buf = 134218240;
    v34 = v6;
    v35 = 2048;
    v36 = v14;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Beginning table view updates from row count %ld to %ld", buf, 0x16u);
  }

  if (a2)
  {
    if ([v11 count])
    {
      v15 = PHDefaultLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = [v11 count];
        v17 = [v11 allObjects];
        *buf = 134218242;
        v34 = v16;
        v35 = 2112;
        v36 = v17;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Reloading %ld row(s): %@", buf, 0x16u);
      }

      v18 = [*(a1 + 32) tableView];
      v19 = [v11 allObjects];
      [v18 reloadRowsAtIndexPaths:v19 withRowAnimation:100];
    }

    if ([v9 count])
    {
      v20 = PHDefaultLog();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = [v9 count];
        v22 = [v9 allObjects];
        *buf = 134218242;
        v34 = v21;
        v35 = 2112;
        v36 = v22;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Deleting %ld row(s): %@", buf, 0x16u);
      }

      v23 = [*(a1 + 32) tableView];
      v24 = [v9 allObjects];
      [v23 deleteRowsAtIndexPaths:v24 withRowAnimation:2];
    }
  }
}

void __62__MPRecentsTableViewController_removeRecentCallsAtIndexPaths___block_invoke_2(id *a1, void *a2)
{
  v3 = a2;
  v4 = [v3 row];
  v5 = PHDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v32 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Removing recent call at row %ld", buf, 0xCu);
  }

  if (([a1[4] containsObject:v3] & 1) == 0)
  {
    v6 = PHDefaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v32 = v4;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Adding call (row %ld) to set to be removed from table view", buf, 0xCu);
    }

    [a1[4] addObject:v3];
  }

  v7 = [a1[5] recentCallAtTableViewIndex:v4];
  if (v7 && ([a1[6] containsObject:v7] & 1) == 0)
  {
    v8 = PHDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218242;
      v32 = v4;
      v33 = 2112;
      v34 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Adding call (row %ld) to array to be removed from recentsController: %@", buf, 0x16u);
    }

    [a1[6] addObject:v7];
  }

  v9 = v4 - 1;
  v10 = [a1[5] recentCallAtTableViewIndex:v4 - 1];
  v11 = v4 + 1;
  v12 = [a1[5] recentCallAtTableViewIndex:v4 + 1];
  v13 = v12;
  if (v10 && v12)
  {
    v14 = PHDefaultLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218754;
      v32 = v9;
      v33 = 2048;
      v34 = v11;
      v35 = 2112;
      v36 = v10;
      v37 = 2112;
      v38 = v13;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Coalescing adjacent calls at indices %ld and %ld with PHRecentsController. Preceeding call: %@. Succeeding call: %@", buf, 0x2Au);
    }

    v15 = [a1[5] recentsController];
    v16 = [v15 coalesceRecentCall:v10 withRecentCall:v13];

    if (v16)
    {
      v17 = PHDefaultLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218240;
        v32 = v9;
        v33 = 2048;
        v34 = v11;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Coalescing call in table view at row %ld with call at row %ld", buf, 0x16u);
      }

      v18 = +[NSIndexPath indexPathForRow:inSection:](NSIndexPath, "indexPathForRow:inSection:", v9, [v3 section]);
      if (([a1[7] containsObject:v18] & 1) == 0)
      {
        v19 = PHDefaultLog();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          v32 = v9;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Adding preceding call (row %ld) to set to be reloaded in table view", buf, 0xCu);
        }

        [a1[7] addObject:v18];
      }

      v20 = +[NSIndexPath indexPathForRow:inSection:](NSIndexPath, "indexPathForRow:inSection:", v11, [v3 section]);
      if (([a1[4] containsObject:v20] & 1) == 0)
      {
        v21 = PHDefaultLog();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          v32 = v11;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Adding succeeding call (row %ld) to set to be removed from table view", buf, 0xCu);
        }

        [a1[4] addObject:v20];
        if ([a1[7] containsObject:v20])
        {
          v22 = PHDefaultLog();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134217984;
            v32 = v11;
            _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Removing succeeding call (row %ld) from set to be reloaded in table view", buf, 0xCu);
          }

          [a1[7] removeObject:v20];
        }

        v23 = [a1[5] recentCalls];
        v24 = [v23 indexOfObjectIdenticalTo:v10];

        if (v24 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v25 = PHDefaultLog();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Replacing preceeding call with coalesced call in recent calls list", buf, 2u);
          }

          v26 = [a1[5] recentCalls];
          [v26 setObject:v16 atIndexedSubscript:v24];
        }

        v27 = PHDefaultLog();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Removing succeeding call from recentCalls array", buf, 2u);
        }

        v28 = [a1[5] recentCalls];
        [v28 removeObject:v13];
      }
    }
  }

  v29 = PHDefaultLog();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v32 = v7;
    _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Removing call from recentCalls array: %@", buf, 0xCu);
  }

  v30 = [a1[5] recentCalls];
  [v30 removeObject:v7];
}

void __62__MPRecentsTableViewController_removeRecentCallsAtIndexPaths___block_invoke_288(uint64_t a1)
{
  v2 = PHDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) rowCountForCurrentTableMode];
    v9 = 134217984;
    v10 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Completed table view updates, row count == %ld", &v9, 0xCu);
  }

  if (![*(a1 + 32) rowCountForCurrentTableMode])
  {
    [*(a1 + 32) setEditing:0 animated:1];
    [*(a1 + 32) setContentUnavailable:1 animated:1];
  }

  v4 = [*(a1 + 32) recentsController];
  [v4 deleteRecentCalls:*(a1 + 40)];

  v5 = [*(a1 + 32) tableView];
  [v5 setUserInteractionEnabled:1];

  v6 = *(a1 + 32);
  v7 = v6[13];
  if (v7)
  {
    v8 = [v6 recentCalls];
    [v7 tableViewController:v6 didChangeCalls:v8];
  }
}

- (id)contactViewControllerForRecentCall:(id)call
{
  callCopy = call;
  recentsController = [(MPRecentsTableViewController *)self recentsController];
  v6 = +[PHContactViewController descriptorForRequiredKeys];
  v13 = v6;
  v7 = [NSArray arrayWithObjects:&v13 count:1];
  v8 = [recentsController contactForRecentCall:callCopy keyDescriptors:v7];

  if (v8 || (v8 = objc_alloc_init(CNContact)) != 0)
  {
    v9 = [(MPRecentsTableViewController *)self contactViewControllerForRecentCall:callCopy contact:v8];
  }

  else
  {
    v9 = 0;
  }

  imageURL = [callCopy imageURL];
  if (imageURL)
  {
  }

  else
  {
    identityExtension = [callCopy identityExtension];

    if (!identityExtension)
    {
      goto LABEL_8;
    }
  }

  [v9 setUsesBrandedCallHeaderFormat:1];
LABEL_8:

  return v9;
}

- (id)contactViewControllerForRecentCall:(id)call contact:(id)contact
{
  callCopy = call;
  contactCopy = contact;
  contactIdentifier = [callCopy contactIdentifier];
  if ([contactIdentifier length])
  {
    recentsController = [(MPRecentsTableViewController *)self recentsController];
    v10 = [recentsController fetchContactForContactCardDisplay:contactCopy];

    v11 = [PHContactViewController viewControllerForContact:v10];
    [v11 setShouldShowLinkedContacts:1];
    contactCopy = v10;
  }

  else
  {
    v11 = [PHContactViewController viewControllerForUnknownContact:contactCopy];
  }

  validRemoteParticipantHandles = [callCopy validRemoteParticipantHandles];
  anyObject = [validRemoteParticipantHandles anyObject];
  value = [anyObject value];
  v15 = [value length];

  if (v15)
  {
    callReportingViewModel = [(MPRecentsTableViewController *)self callReportingViewModel];
    v17 = [callReportingViewModel shouldShowContactBlockReportButtonForCall:callCopy];

    actions = [v11 actions];
    v19 = 128;
    if (v17)
    {
      v19 = 2048;
    }

    [v11 setActions:actions | v19];
    v20 = +[CNContactStore suggestedContactStore];
    [v11 setContactStore:v20];

    [v11 setRecentCall:callCopy];
  }

  else
  {
    [v11 setAllowsActions:0];
    [v11 setAllowsEditing:0];
    callerIdIsBlocked = [callCopy callerIdIsBlocked];
    v22 = +[NSBundle mainBundle];
    v23 = v22;
    if (callerIdIsBlocked)
    {
      v24 = @"NO_CALLER_ID";
    }

    else
    {
      v24 = @"UNKNOWN_CALLER";
    }

    v25 = [v22 localizedStringForKey:v24 value:&stru_10028F310 table:@"PHRecents"];
    [v11 setAlternateName:v25];
  }

  recentsController2 = [(MPRecentsTableViewController *)self recentsController];
  v27 = [recentsController2 itemForRecentCall:callCopy presentationStyle:1];

  v28 = objc_alloc_init(MPRecentsContactHeaderViewController);
  [(MPRecentsContactHeaderViewController *)v28 setRecentCall:callCopy];
  [(MPRecentsContactHeaderViewController *)v28 setRecentsItem:v27];
  [v11 setContactHeaderViewController:v28];

  return v11;
}

- (int64_t)avatarCardController:(id)controller presentationResultForLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  controllerCopy = controller;
  tableView = [(MPRecentsTableViewController *)self tableView];
  if ([tableView isDecelerating])
  {
    goto LABEL_2;
  }

  tableView2 = [(MPRecentsTableViewController *)self tableView];
  if ([tableView2 isDragging])
  {
    v9 = 1;
    goto LABEL_9;
  }

  tableView3 = [(MPRecentsTableViewController *)self tableView];
  isEditing = [tableView3 isEditing];

  if ((isEditing & 1) == 0)
  {
    tableView4 = [(MPRecentsTableViewController *)self tableView];
    view = [(MPRecentsTableViewController *)self view];
    tableView5 = [(MPRecentsTableViewController *)self tableView];
    [view convertPoint:tableView5 toView:{x, y}];
    tableView = [tableView4 indexPathForRowAtPoint:?];

    if (!tableView)
    {
LABEL_2:
      v9 = 1;
LABEL_10:

      goto LABEL_11;
    }

    tableView6 = [(MPRecentsTableViewController *)self tableView];
    tableView2 = [tableView6 cellForRowAtIndexPath:tableView];

    [controllerCopy setHighlightView:tableView2];
    tableView7 = [(MPRecentsTableViewController *)self tableView];
    [tableView2 frame];
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v25 = v24;
    sourceView = [controllerCopy sourceView];
    [tableView7 convertRect:sourceView toView:{v19, v21, v23, v25}];
    [controllerCopy setSourceRect:?];

    v9 = [(MPRecentsTableViewController *)self configureCardController:controllerCopy presentationResultForIndex:tableView];
LABEL_9:

    goto LABEL_10;
  }

  v9 = 1;
LABEL_11:

  return v9;
}

- (int64_t)configureCardController:(id)controller presentationResultForIndex:(id)index
{
  controllerCopy = controller;
  indexCopy = index;
  v8 = indexCopy;
  if (indexCopy)
  {
    v9 = -[MPRecentsTableViewController recentCallAtTableViewIndex:](self, "recentCallAtTableViewIndex:", [indexCopy row]);
    featureFlags = [(MPRecentsTableViewController *)self featureFlags];
    useSharedRecentsViewModel = [featureFlags useSharedRecentsViewModel];

    if (useSharedRecentsViewModel)
    {
      cellConfigurator = [(MPRecentsTableViewController *)self cellConfigurator];
      v13 = [cellConfigurator configureCardController:controllerCopy presentationResultForRecentCall:v9];
LABEL_14:

      goto LABEL_15;
    }

    recentsController = [(MPRecentsTableViewController *)self recentsController];
    v15 = +[CNAvatarCardController descriptorForRequiredKeys];
    v27 = v15;
    v16 = [NSArray arrayWithObjects:&v27 count:1];
    cellConfigurator = [recentsController contactForRecentCall:v9 keyDescriptors:v16];

    if (!cellConfigurator)
    {
      v13 = 2;
      goto LABEL_14;
    }

    [controllerCopy setContact:cellConfigurator];
    phoneNumbers = [cellConfigurator phoneNumbers];
    identityExtension = [v9 identityExtension];
    if (identityExtension && (v19 = identityExtension, v20 = [phoneNumbers count], v19, v20 == 1))
    {
      firstObject = [phoneNumbers firstObject];
      value = [firstObject value];
      formattedInternationalStringValue = [value formattedInternationalStringValue];
      if (!formattedInternationalStringValue)
      {
        value2 = [firstObject value];
        stringValue = [value2 stringValue];
        [controllerCopy setMessage:stringValue];

LABEL_12:
        v13 = 0;
        goto LABEL_14;
      }
    }

    else
    {
      firstObject = [(MPRecentsTableViewController *)self recentsController];
      value = [firstObject itemForRecentCall:v9];
      formattedInternationalStringValue = [value localizedSubtitle];
    }

    [controllerCopy setMessage:formattedInternationalStringValue];
    goto LABEL_12;
  }

  v13 = 1;
LABEL_15:

  return v13;
}

- (void)contactViewController:(id)controller didExecuteBlockAndReportContactAction:(id)action
{
  controllerCopy = controller;
  v6 = PHDefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "didExecuteBlockAndReportContactAction", buf, 2u);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = PHDefaultLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "viewController is PHContactViewController", v10, 2u);
    }

    recentCall = [controllerCopy recentCall];
    callReportingViewModel = [(MPRecentsTableViewController *)self callReportingViewModel];
    [callReportingViewModel reportWithCall:recentCall];
  }
}

- (void)contactViewController:(id)controller didCompleteWithContact:(id)contact
{
  controllerCopy = controller;
  contactCopy = contact;
  if (!contactCopy)
  {
    goto LABEL_7;
  }

  contact = [controllerCopy contact];
  if (contact != contactCopy)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      contact = [controllerCopy recentCall];
      if (contact)
      {
        v9 = [(MPRecentsTableViewController *)self contactViewControllerForRecentCall:contact contact:contactCopy];
        v10 = v9;
        if (v9)
        {
          [v9 setContact:contactCopy];
          v11 = 0;
LABEL_11:
          +[TPTipsHelper donateEventSavedNumber];
          +[TUDiscoverabilitySignal logAnalyticsEventPhoneRecentlyDialed];
          goto LABEL_12;
        }
      }

      else
      {
        v10 = 0;
      }

      v11 = 1;
      goto LABEL_11;
    }

LABEL_7:
    v10 = 0;
    v11 = 1;
    goto LABEL_13;
  }

  v10 = 0;
  v11 = 1;
LABEL_12:

LABEL_13:
  navigationController = [(MPRecentsTableViewController *)self navigationController];
  v13 = [navigationController popViewControllerAnimated:v11];

  if (v10)
  {
    navigationController2 = [(MPRecentsTableViewController *)self navigationController];
    [navigationController2 pushViewController:v10 animated:v11];
  }
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  v18.receiver = self;
  v18.super_class = MPRecentsTableViewController;
  [(MPRecentsTableViewController *)&v18 traitCollectionDidChange:changeCopy];
  traitCollection = [(MPRecentsTableViewController *)self traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];

  userInterfaceStyle2 = [changeCopy userInterfaceStyle];
  if (userInterfaceStyle && userInterfaceStyle2 != userInterfaceStyle && [(MPRecentsTableViewController *)self contentUnavailable])
  {
    [(MPRecentsTableViewController *)self setContentUnavailable:0];
    [(MPRecentsTableViewController *)self setContentUnavailableView:0];
    [(MPRecentsTableViewController *)self setContentUnavailable:1];
  }

  [(MPRecentsTableViewController *)self updateLargeTitleInsets];
  tableView = [(MPRecentsTableViewController *)self tableView];
  tableHeaderView = [tableView tableHeaderView];
  if (!tableHeaderView)
  {
    goto LABEL_12;
  }

  v10 = tableHeaderView;
  preferredContentSizeCategory = [changeCopy preferredContentSizeCategory];
  traitCollection2 = [(MPRecentsTableViewController *)self traitCollection];
  preferredContentSizeCategory2 = [traitCollection2 preferredContentSizeCategory];
  if (preferredContentSizeCategory == preferredContentSizeCategory2)
  {
LABEL_11:

LABEL_12:
    goto LABEL_13;
  }

  preferredContentSizeCategory3 = [changeCopy preferredContentSizeCategory];
  v15 = preferredContentSizeCategory3;
  if (preferredContentSizeCategory3 == UIContentSizeCategoryUnspecified)
  {

    goto LABEL_11;
  }

  traitCollection3 = [(MPRecentsTableViewController *)self traitCollection];
  preferredContentSizeCategory4 = [traitCollection3 preferredContentSizeCategory];

  if (preferredContentSizeCategory4 != UIContentSizeCategoryUnspecified)
  {
    [(MPRecentsTableViewController *)self refreshTableHeaderView];
  }

LABEL_13:
}

- (double)tableView:(id)view estimatedHeightForRowAtIndexPath:(id)path
{
  v4 = [(MPRecentsTableViewController *)self tableViewCellClass:view];

  [(objc_class *)v4 minimumRowHeight];
  return result;
}

- (void)makeUIForDefaultPNG
{
  navigationItem = [(MPRecentsTableViewController *)self navigationItem];
  [navigationItem setLeftBarButtonItem:0];
  [navigationItem setRightBarButtonItem:0];
  [(MPRecentsTableViewController *)self setContentUnavailableViewTitle:0];
  [(MPRecentsTableViewController *)self setTabBarItem:0];
  tableView = [(MPRecentsTableViewController *)self tableView];
  [tableView setHidden:1];

  [(MPRecentsTableViewController *)self setTitle:0];
}

- (void)reloadDataSource
{
  v3 = PHDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Asked to reload data source", v6, 2u);
  }

  recentsController = [(MPRecentsTableViewController *)self recentsController];
  recentCalls = [recentsController recentCalls];
  [(MPRecentsTableViewController *)self reloadDataSourceForCalls:recentCalls];
}

- (void)reloadDataSourceForCalls:(id)calls
{
  callsCopy = calls;
  v5 = PHDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v10 = [callsCopy count];
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Asked to reload data source for %lu calls", buf, 0xCu);
  }

  [(MPRecentsTableViewController *)self setDataSourceNeedsReload:1];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __57__MPRecentsTableViewController_reloadDataSourceForCalls___block_invoke;
  v7[3] = &unk_100285C58;
  v7[4] = self;
  v8 = callsCopy;
  v6 = callsCopy;
  [(MPRecentsTableViewController *)self performBatchUpdates:v7 completion:0];
}

id __57__MPRecentsTableViewController_reloadDataSourceForCalls___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) callsWithValidHandles:*(a1 + 40)];
  v3 = [v2 mutableCopy];
  [*(a1 + 32) setRecentCalls:v3];

  v4 = *(a1 + 32);
  v5 = [v4 rowCountForCurrentTableMode] == 0;

  return [v4 setContentUnavailable:v5 animated:0];
}

- (void)reloadTableView
{
  v3 = PHDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Asked to reload table view", buf, 2u);
  }

  if ([(MPRecentsTableViewController *)self canPerformTableViewUpdates]&& ([(MPRecentsTableViewController *)self isEditing]& 1) == 0)
  {
    v4 = PHDefaultLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Reloading table view", v9, 2u);
    }

    view = [(MPRecentsTableViewController *)self view];
    window = [view window];

    if (!window)
    {
      v7 = PHDefaultLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [MPRecentsTableViewController reloadTableView];
      }
    }

    tableView = [(MPRecentsTableViewController *)self tableView];
    [tableView reloadData];
  }
}

- (void)refreshView
{
  v3 = PHDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Asked to refresh View", buf, 2u);
  }

  if ([(MPRecentsTableViewController *)self canPerformTableViewUpdates])
  {
    v4 = PHDefaultLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Did refresh View", v5, 2u);
    }

    [(MPRecentsTableViewController *)self setContentUnavailable:[(MPRecentsTableViewController *)self rowCountForCurrentTableMode]== 0 animated:0];
    [(MPRecentsTableViewController *)self reloadTableView];
  }
}

- (void)setNavigationItemsForEditing:(BOOL)editing animated:(BOOL)animated
{
  animatedCopy = animated;
  navigationItem = [(MPRecentsTableViewController *)self navigationItem];
  v7 = PHDefaultLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 138412290;
    v20 = navigationItem;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Current nav item: %@", &v19, 0xCu);
  }

  v8 = PHDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    featureFlags = [(MPRecentsTableViewController *)self featureFlags];
    v10 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [featureFlags nameAndPhotoEnabled]);
    v11 = [NSNumber numberWithInteger:[(MPRecentsTableViewController *)self rowCountForCurrentTableMode]];
    v12 = [NSNumber numberWithBool:[(MPRecentsTableViewController *)self isEditing]];
    v19 = 138412802;
    v20 = v10;
    v21 = 2112;
    v22 = v11;
    v23 = 2112;
    v24 = v12;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Updating nav item buttons based on SNAP: %@, rowcount: %@, editing: %@", &v19, 0x20u);
  }

  if (navigationItem && [(MPRecentsTableViewController *)self isViewLoaded])
  {
    if ([(MPRecentsTableViewController *)self isEditing])
    {
      clearButtonItem = [(MPRecentsTableViewController *)self clearButtonItem];
    }

    else
    {
      clearButtonItem = 0;
    }

    if ([(MPRecentsTableViewController *)self rowCountForCurrentTableMode]>= 1 && [(MPRecentsTableViewController *)self isEditing])
    {
      doneButtonItem = [(MPRecentsTableViewController *)self doneButtonItem];
    }

    else
    {
      doneButtonItem = [(MPRecentsTableViewController *)self nicknameEditButtonItem];
    }

    v15 = doneButtonItem;
    leftBarButtonItem = [navigationItem leftBarButtonItem];

    if (leftBarButtonItem != v15)
    {
      [navigationItem setLeftBarButtonItem:v15 animated:animatedCopy];
    }

    rightBarButtonItem = [navigationItem rightBarButtonItem];

    if (rightBarButtonItem != clearButtonItem)
    {
      [navigationItem setRightBarButtonItem:clearButtonItem animated:animatedCopy];
    }

    v18 = PHDefaultLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 138412546;
      v20 = v15;
      v21 = 2112;
      v22 = clearButtonItem;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Set nav item buttons to leftBarButtonItem: %@, rightBarButtonItem: %@", &v19, 0x16u);
    }
  }
}

- (void)showRecentCallDetailsViewControllerForRecentCall:(id)call
{
  callCopy = call;
  callReportingViewModel = [(MPRecentsTableViewController *)self callReportingViewModel];
  if ([callReportingViewModel atLeastOneUnknownCallerInRecentCall:callCopy])
  {
    isIncoming = [callCopy isIncoming];

    if (isIncoming)
    {
      v6 = [(MPRecentsTableViewController *)self multipleContactsBlockViewControllerForRecentCall:callCopy];
      goto LABEL_6;
    }
  }

  else
  {
  }

  v6 = [(MPRecentsTableViewController *)self multipleContactsViewControllerForRecentCall:callCopy];
LABEL_6:
  v7 = v6;
  if (v6)
  {
    navigationController = [(MPRecentsTableViewController *)self navigationController];
    [navigationController pushViewController:v7 animated:1];
  }
}

- (void)showRecentCallDetailsViewControllerForRecentCall:(id)call animated:(BOOL)animated
{
  animatedCopy = animated;
  callCopy = call;
  featureFlags = [(MPRecentsTableViewController *)self featureFlags];
  useSharedRecentsViewModel = [featureFlags useSharedRecentsViewModel];

  if (useSharedRecentsViewModel)
  {
    recentsDetailPresenter = [(MPRecentsTableViewController *)self recentsDetailPresenter];
    navigationController = [(MPRecentsTableViewController *)self navigationController];
    [recentsDetailPresenter showRecentCallDetailsViewControllerFor:callCopy from:navigationController];
  }

  else
  {
    [TPTipsHelper updateCanDisplayCallHistorySearchTip:0];
    validRemoteParticipantHandles = [callCopy validRemoteParticipantHandles];
    v12 = [validRemoteParticipantHandles count];

    if (v12 < 2)
    {
      contactIdentifier = [callCopy contactIdentifier];
      v14 = [(MPRecentsTableViewController *)self contactViewControllerForRecentCall:callCopy];
      if (contactIdentifier && [contactIdentifier length])
      {
        [v14 setDelegate:self];
        navigationController2 = [(MPRecentsTableViewController *)self navigationController];
        [navigationController2 pushViewController:v14 animated:animatedCopy];
      }

      else
      {
        callerId = [callCopy callerId];
        v17 = callCopy;
        v18 = v14;
        TUMapItemForDestinationID();
      }
    }

    else
    {
      [(MPRecentsTableViewController *)self showRecentCallDetailsViewControllerForRecentCall:callCopy];
    }
  }
}

void __90__MPRecentsTableViewController_showRecentCallDetailsViewControllerForRecentCall_animated___block_invoke(uint64_t a1, void *a2)
{
  v12 = a2;
  if (v12)
  {
    v3 = objc_alloc_init(MPRecentsMapItemHeaderViewController);
    [(MPRecentsMapItemHeaderViewController *)v3 setRecentCall:*(a1 + 32)];
    v4 = objc_alloc_init(MUPlaceViewControllerConfiguration);
    [v4 setHeaderViewController:v3];
    v5 = [[MUPlaceViewController alloc] initWithConfiguration:v4];
    [v5 setMapItem:v12];
    v6 = [v5 navigationItem];
    [v6 setLargeTitleDisplayMode:2];
  }

  else
  {
    v7 = [*(a1 + 32) identityExtension];
    if (v7)
    {
      v8 = [*(a1 + 32) name];
      [*(a1 + 40) setMessage:v8];
    }

    else
    {
      v8 = [*(a1 + 48) recentsController];
      v9 = [v8 itemForRecentCall:*(a1 + 32) presentationStyle:1];
      v10 = [v9 localizedSubtitle];
      [*(a1 + 40) setMessage:v10];
    }

    [*(a1 + 40) setDelegate:*(a1 + 48)];
    v5 = *(a1 + 40);
  }

  v11 = [*(a1 + 48) navigationController];
  [v11 pushViewController:v5 animated:*(a1 + 56)];
}

- (void)showRecentCallDetailsViewControllerForRecentCall:(id)call navigationController:(id)controller animated:(BOOL)animated
{
  animatedCopy = animated;
  callCopy = call;
  controllerCopy = controller;
  featureFlags = [(MPRecentsTableViewController *)self featureFlags];
  callHistorySearchEnabled = [featureFlags callHistorySearchEnabled];

  if (callHistorySearchEnabled)
  {
    [TPTipsHelper updateCanDisplayCallHistorySearchTip:0];
    validRemoteParticipantHandles = [callCopy validRemoteParticipantHandles];
    v13 = [validRemoteParticipantHandles count];

    if (v13 < 2)
    {
      contactIdentifier = [callCopy contactIdentifier];
      v15 = [(MPRecentsTableViewController *)self contactViewControllerForRecentCall:callCopy];
      if (contactIdentifier && [contactIdentifier length])
      {
        [v15 setDelegate:self];
        [controllerCopy pushViewController:v15 animated:animatedCopy];
      }

      else
      {
        callerId = [callCopy callerId];
        v17 = callCopy;
        v18 = v15;
        v19 = controllerCopy;
        TUMapItemForDestinationID();
      }
    }

    else
    {
      [(MPRecentsTableViewController *)self showRecentCallDetailsViewControllerForRecentCall:callCopy];
    }
  }
}

void __111__MPRecentsTableViewController_showRecentCallDetailsViewControllerForRecentCall_navigationController_animated___block_invoke(uint64_t a1, void *a2)
{
  v11 = a2;
  if (v11)
  {
    v3 = objc_alloc_init(MPRecentsMapItemHeaderViewController);
    [(MPRecentsMapItemHeaderViewController *)v3 setRecentCall:*(a1 + 32)];
    v4 = objc_alloc_init(MUPlaceViewControllerConfiguration);
    [v4 setHeaderViewController:v3];
    v5 = [[MUPlaceViewController alloc] initWithConfiguration:v4];
    [v5 setMapItem:v11];
    v6 = [v5 navigationItem];
    [v6 setLargeTitleDisplayMode:2];
  }

  else
  {
    v7 = [*(a1 + 32) identityExtension];
    if (v7)
    {
      v8 = [*(a1 + 32) name];
      [*(a1 + 40) setMessage:v8];
    }

    else
    {
      v8 = [*(a1 + 48) recentsController];
      v9 = [v8 itemForRecentCall:*(a1 + 32) presentationStyle:1];
      v10 = [v9 localizedSubtitle];
      [*(a1 + 40) setMessage:v10];
    }

    [*(a1 + 40) setDelegate:*(a1 + 48)];
    v5 = *(a1 + 40);
  }

  [*(a1 + 56) pushViewController:v5 animated:*(a1 + 64)];
}

- (id)multipleContactsViewControllerForRecentCall:(id)call
{
  callCopy = call;
  selfCopy = self;
  recentsController = [(MPRecentsTableViewController *)self recentsController];
  v6 = +[PHContactViewController descriptorForRequiredKeys];
  v38 = v6;
  v7 = [NSArray arrayWithObjects:&v38 count:1];
  v8 = [recentsController contactByHandleForRecentCall:callCopy keyDescriptors:v7];

  v9 = objc_alloc_init(NSMutableArray);
  v10 = objc_alloc_init(NSMutableArray);
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v31 = callCopy;
  validRemoteParticipantHandles = [callCopy validRemoteParticipantHandles];
  v12 = [validRemoteParticipantHandles countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v34;
    v28 = validRemoteParticipantHandles;
    v29 = v10;
    v27 = *v34;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v34 != v14)
        {
          objc_enumerationMutation(validRemoteParticipantHandles);
        }

        v16 = *(*(&v33 + 1) + 8 * i);
        v17 = [v8 objectForKeyedSubscript:{v16, v27}];
        if (!v17)
        {
          tuHandle = [v16 tuHandle];
          if (tuHandle)
          {
            isoCountryCode = [v31 isoCountryCode];
            recentsController2 = [(MPRecentsTableViewController *)selfCopy recentsController];
            metadataCache = [recentsController2 metadataCache];
            [CNMutableContact contactForHandle:tuHandle isoCountryCode:isoCountryCode metadataCache:metadataCache];
            v21 = v13;
            v22 = v9;
            v24 = v23 = v8;
            v17 = [v24 copy];

            v8 = v23;
            v9 = v22;
            v13 = v21;

            v14 = v27;
            validRemoteParticipantHandles = v28;

            v10 = v29;
          }

          else
          {
            v17 = 0;
          }
        }

        [v9 addObject:v17];
        [v10 addObject:v16];
      }

      v13 = [validRemoteParticipantHandles countByEnumeratingWithState:&v33 objects:v37 count:16];
    }

    while (v13);
  }

  if (v9)
  {
    v25 = [[PHContactsTableViewController alloc] initWithContactArray:v9 contactHandles:v10];
  }

  else
  {
    v25 = 0;
  }

  return v25;
}

- (id)multipleContactsBlockViewControllerForRecentCall:(id)call
{
  callCopy = call;
  v5 = [(MPRecentsTableViewController *)self contactsForRecentCall:callCopy];
  v6 = objc_alloc_init(NSMutableArray);
  v7 = [(MPRecentsTableViewController *)self unknownContactForRecentCall:callCopy];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  validRemoteParticipantHandles = [callCopy validRemoteParticipantHandles];
  v9 = [validRemoteParticipantHandles countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v21;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(validRemoteParticipantHandles);
        }

        [v6 addObject:*(*(&v20 + 1) + 8 * i)];
      }

      v10 = [validRemoteParticipantHandles countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v10);
  }

  if (v5)
  {
    v13 = [(CallReportingViewModel *)self->_callReportingViewModel isInitiatorUnknownForCall:callCopy];
    v14 = [(CallReportingViewModel *)self->_callReportingViewModel allUnknownContactInRecentCall:callCopy];
    v15 = !v14 && [(CallReportingViewModel *)self->_callReportingViewModel atLeastOneUnknownCallerInRecentCall:callCopy];
    v17 = objc_alloc_init(_TtC11MobilePhone25FaceTimeSpamReportManager);
    v18 = [[PHContactsReportAndBlockTableViewModel alloc] initWithShouldShowBlockAll:v14 shouldShowReportInitiator:v13 shouldShowBlockUnknown:v15 recentCall:callCopy reportSpammer:v17];
    v16 = [[PHContactsAndBlockTableViewController alloc] initWithContactArray:v5 unknownContacts:v7 contactHandles:v6 tableViewModel:v18];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (id)unknownContactForRecentCall:(id)call
{
  callCopy = call;
  selfCopy = self;
  recentsController = [(MPRecentsTableViewController *)self recentsController];
  v6 = +[PHContactViewController descriptorForRequiredKeys];
  v33 = v6;
  v7 = [NSArray arrayWithObjects:&v33 count:1];
  v8 = [recentsController contactByHandleForRecentCall:callCopy keyDescriptors:v7];

  v26 = objc_alloc_init(NSMutableArray);
  v27 = callCopy;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  validRemoteParticipantHandles = [callCopy validRemoteParticipantHandles];
  v10 = [validRemoteParticipantHandles countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v29;
    v24 = *v29;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v29 != v12)
        {
          objc_enumerationMutation(validRemoteParticipantHandles);
        }

        v14 = *(*(&v28 + 1) + 8 * i);
        v15 = [v8 objectForKeyedSubscript:{v14, v24}];
        if (!v15)
        {
          tuHandle = [v14 tuHandle];
          if (tuHandle)
          {
            isoCountryCode = [v27 isoCountryCode];
            recentsController2 = [(MPRecentsTableViewController *)selfCopy recentsController];
            [recentsController2 metadataCache];
            v20 = v19 = validRemoteParticipantHandles;
            [CNMutableContact contactForHandle:tuHandle isoCountryCode:isoCountryCode metadataCache:v20];
            v22 = v21 = v8;
            v15 = [v22 copy];

            v8 = v21;
            validRemoteParticipantHandles = v19;
            v12 = v24;

            [v26 addObject:v15];
          }

          else
          {
            v15 = 0;
          }
        }
      }

      v11 = [validRemoteParticipantHandles countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v11);
  }

  return v26;
}

- (id)contactsForRecentCall:(id)call
{
  callCopy = call;
  selfCopy = self;
  recentsController = [(MPRecentsTableViewController *)self recentsController];
  v6 = +[PHContactViewController descriptorForRequiredKeys];
  v37 = v6;
  v7 = [NSArray arrayWithObjects:&v37 count:1];
  v8 = [recentsController contactByHandleForRecentCall:callCopy keyDescriptors:v7];

  v9 = objc_alloc_init(NSMutableArray);
  v10 = objc_alloc_init(NSMutableArray);
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v30 = callCopy;
  validRemoteParticipantHandles = [callCopy validRemoteParticipantHandles];
  v12 = [validRemoteParticipantHandles countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v33;
    v27 = validRemoteParticipantHandles;
    v28 = v10;
    v26 = *v33;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v33 != v14)
        {
          objc_enumerationMutation(validRemoteParticipantHandles);
        }

        v16 = *(*(&v32 + 1) + 8 * i);
        v17 = [v8 objectForKeyedSubscript:{v16, v26}];
        if (!v17)
        {
          tuHandle = [v16 tuHandle];
          if (tuHandle)
          {
            isoCountryCode = [v30 isoCountryCode];
            recentsController2 = [(MPRecentsTableViewController *)selfCopy recentsController];
            metadataCache = [recentsController2 metadataCache];
            [CNMutableContact contactForHandle:tuHandle isoCountryCode:isoCountryCode metadataCache:metadataCache];
            v21 = v13;
            v22 = v9;
            v24 = v23 = v8;
            v17 = [v24 copy];

            v8 = v23;
            v9 = v22;
            v13 = v21;

            v14 = v26;
            validRemoteParticipantHandles = v27;

            v10 = v28;
          }

          else
          {
            v17 = 0;
          }
        }

        [v9 addObject:v17];
        [v10 addObject:v16];
      }

      v13 = [validRemoteParticipantHandles countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v13);
  }

  return v9;
}

- (id)contactsForRecentCallForAvatar:(id)avatar
{
  avatarCopy = avatar;
  recentsController = [(MPRecentsTableViewController *)self recentsController];
  v6 = [recentsController contactByHandleForRecentCall:avatarCopy keyDescriptors:&__NSArray0__struct];

  v7 = objc_alloc_init(NSMutableArray);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  validRemoteParticipantHandles = [avatarCopy validRemoteParticipantHandles];
  v9 = [validRemoteParticipantHandles countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(validRemoteParticipantHandles);
        }

        v13 = [v6 objectForKeyedSubscript:*(*(&v16 + 1) + 8 * i)];
        if (!v13)
        {
          v13 = objc_alloc_init(CNMutableContact);
        }

        [v7 addObject:v13];
      }

      v10 = [validRemoteParticipantHandles countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  if (![v7 count])
  {
    v14 = objc_alloc_init(CNMutableContact);
    [v7 addObject:v14];
  }

  return v7;
}

- (void)updateTabBarItem
{
  recentsController = [(MPRecentsTableViewController *)self recentsController];
  -[MPRecentsTableViewController updateTabBarItemWithCount:](self, "updateTabBarItemWithCount:", [recentsController unreadCallCount]);
}

- (void)updateTabBarItemWithCount:(unint64_t)count
{
  if (count)
  {
    v4 = [NSString stringWithFormat:@"%lu", count];
  }

  else
  {
    v4 = 0;
  }

  v5 = PHDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Setting tab bar item badge value to %@", buf, 0xCu);
  }

  tabBarItem = [(MPRecentsTableViewController *)self tabBarItem];
  [tabBarItem setBadgeValue:v4];
}

- (MPRecentsUnknownCallersViewController)unknownCallersViewController
{
  unknownCallersViewController = self->_unknownCallersViewController;
  if (!unknownCallersViewController)
  {
    v4 = [MPRecentsUnknownCallersViewController alloc];
    v5 = +[NSBundle mainBundle];
    v6 = [v5 localizedStringForKey:@"TURN_ON_CALL_SILENCING" value:&stru_10028F310 table:@"PHRecents"];
    v7 = +[NSBundle mainBundle];
    v8 = [v7 localizedStringForKey:@"SILENCE_UNKNOWN_CALLERS_DETAIL" value:&stru_10028F310 table:@"PHRecents"];
    v9 = [UIImage imageNamed:@"unknown-callers-sheet"];
    v10 = [(MPRecentsUnknownCallersViewController *)v4 initWithTitle:v6 detailText:v8 icon:v9];
    v11 = self->_unknownCallersViewController;
    self->_unknownCallersViewController = v10;

    [(MPRecentsUnknownCallersViewController *)self->_unknownCallersViewController setDelegate:self];
    unknownCallersViewController = self->_unknownCallersViewController;
  }

  return unknownCallersViewController;
}

- (void)presentUnknownCallersViewController
{
  v3 = [UINavigationController alloc];
  unknownCallersViewController = [(MPRecentsTableViewController *)self unknownCallersViewController];
  v5 = [v3 initWithRootViewController:unknownCallersViewController];

  [(MPRecentsTableViewController *)self presentViewController:v5 animated:1 completion:0];
}

- (void)dismissUnknownCallersViewController:(id)controller
{
  if (self->_unknownCallersViewController == controller)
  {
    [controller dismissViewControllerAnimated:1 completion:0];
  }
}

- (void)unknownCallersViewControllerDidRequestEnable:(id)enable
{
  [(MPRecentsTableViewController *)self dismissUnknownCallersViewController:enable];
  v3 = PHDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "User enabled Silence Unknown Callers via Phone > Recents", v6, 2u);
  }

  v4 = [NSUserDefaults alloc];
  v5 = [v4 initWithSuiteName:TUBundleIdentifierTelephonyUtilitiesFramework];
  [v5 setValue:&__kCFBooleanTrue forKey:TUCallFilteringPreferencesContactsOnlyKey];

  +[TPTipsHelper donateEventKnownCallersDone];
}

- (void)recentsController:(id)controller didChangeCalls:(id)calls
{
  callsCopy = calls;
  v6 = PHDefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v28 = objc_opt_class();
    v7 = v28;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%@ is handling recent calls change", buf, 0xCu);
  }

  if (![(MPRecentsTableViewController *)self isViewLoaded]|| ([(MPRecentsTableViewController *)self isEditing]& 1) != 0)
  {
    [(MPRecentsTableViewController *)self setDataSourceNeedsReload:1];
    goto LABEL_25;
  }

  v8 = PHDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Synchronizing recents table view with recents data source", buf, 2u);
  }

  v9 = [(MPRecentsTableViewController *)self callsWithValidHandles:callsCopy];
  if ([(MPRecentsTableViewController *)self tableViewDisplayMode]== 1)
  {
    v10 = [NSPredicate predicateWithBlock:&__block_literal_global_328];
    v11 = [v9 filteredArrayUsingPredicate:v10];

    v9 = v11;
  }

  featureFlags = [(MPRecentsTableViewController *)self featureFlags];
  if (([featureFlags phoneRecentsAvatarsEnabled] & 1) == 0)
  {

    goto LABEL_14;
  }

  recentCalls = [(MPRecentsTableViewController *)self recentCalls];
  v14 = [recentCalls isEqualToArray:v9];

  if (!v14)
  {
LABEL_14:
    recentsController = [(MPRecentsTableViewController *)self recentsController];
    v16 = objc_opt_class();
    recentCalls2 = [(MPRecentsTableViewController *)self recentCalls];
    v18 = [v16 indexPathsToInsertIntoCachedRecentCalls:recentCalls2 fromBackingRecentCalls:v9];

    v19 = [v18 count];
    v20 = PHDefaultLog();
    v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
    if (v19)
    {
      if (v21)
      {
        *buf = 138412290;
        v28 = v18;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Inserting index paths for new recent calls: %@", buf, 0xCu);
      }

      v24[0] = _NSConcreteStackBlock;
      v24[1] = 3221225472;
      v24[2] = __65__MPRecentsTableViewController_recentsController_didChangeCalls___block_invoke_329;
      v24[3] = &unk_1002863B0;
      v24[4] = self;
      v25 = v9;
      v26 = v18;
      v23[0] = _NSConcreteStackBlock;
      v23[1] = 3221225472;
      v23[2] = __65__MPRecentsTableViewController_recentsController_didChangeCalls___block_invoke_2;
      v23[3] = &unk_100285B20;
      v23[4] = self;
      [(MPRecentsTableViewController *)self performBatchUpdates:v24 completion:v23];
    }

    else
    {
      if (v21)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Reloading data source", buf, 2u);
      }

      [(MPRecentsTableViewController *)self reloadDataSourceForCalls:callsCopy];
    }

    goto LABEL_22;
  }

  [(MPRecentsTableViewController *)self reconfiguringCellsForCalls:v9];
LABEL_22:
  delegate = self->_delegate;
  if (delegate)
  {
    [(MPRecentsTableViewControllerDelegate *)delegate tableViewController:self didChangeCalls:callsCopy];
  }

LABEL_25:
}

void __65__MPRecentsTableViewController_recentsController_didChangeCalls___block_invoke_329(uint64_t a1, int a2)
{
  v4 = [*(a1 + 40) mutableCopy];
  [*(a1 + 32) setRecentCalls:v4];

  if (a2)
  {
    v5 = [*(a1 + 32) tableView];
    [v5 insertRowsAtIndexPaths:*(a1 + 48) withRowAnimation:100];
  }
}

id __65__MPRecentsTableViewController_recentsController_didChangeCalls___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 rowCountForCurrentTableMode] == 0;

  return [v1 setContentUnavailable:v2 animated:0];
}

- (void)recentsController:(id)controller didUpdateCalls:(id)calls
{
  callsCopy = calls;
  featureFlags = [(MPRecentsTableViewController *)self featureFlags];
  phoneRecentsAvatarsEnabled = [featureFlags phoneRecentsAvatarsEnabled];

  if (phoneRecentsAvatarsEnabled)
  {
    v8 = PHDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = objc_opt_class();
      v10 = v9;
      v15 = 138412546;
      v16 = v9;
      v17 = 2048;
      v18 = [callsCopy count];
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%@ is handling recent calls update for calls count : %lu", &v15, 0x16u);
    }

    if ([(MPRecentsTableViewController *)self isViewLoaded]&& ([(MPRecentsTableViewController *)self isEditing]& 1) == 0)
    {
      v11 = PHDefaultLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v15) = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Synchronizing recents table view with recents data source", &v15, 2u);
      }

      v12 = [(MPRecentsTableViewController *)self callsWithValidHandles:callsCopy];
      if ([(MPRecentsTableViewController *)self tableViewDisplayMode]== 1)
      {
        v13 = [NSPredicate predicateWithBlock:&__block_literal_global_331];
        v14 = [v12 filteredArrayUsingPredicate:v13];

        v12 = v14;
      }

      [(MPRecentsTableViewController *)self reconfiguringCellsForCalls:v12];
    }

    else
    {
      [(MPRecentsTableViewController *)self setDataSourceNeedsReload:1];
    }
  }
}

- (void)recentsController:(id)controller didCompleteFetchingCalls:(id)calls
{
  callsCopy = calls;
  featureFlags = [(MPRecentsTableViewController *)self featureFlags];
  callHistorySearchEnabled = [featureFlags callHistorySearchEnabled];

  if (callHistorySearchEnabled)
  {
    delegate = self->_delegate;
    if (delegate)
    {
      [(MPRecentsTableViewControllerDelegate *)delegate tableViewController:self didChangeCalls:callsCopy];
    }
  }
}

- (void)recentsController:(id)controller didChangeUnreadCallCount:(unint64_t)count
{
  v6 = PHDefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_opt_class();
    v8 = v7;
    tabBarItem = [(MPRecentsTableViewController *)self tabBarItem];
    badgeValue = [tabBarItem badgeValue];
    v11 = 138412802;
    v12 = v7;
    v13 = 2112;
    v14 = badgeValue;
    v15 = 2048;
    countCopy = count;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%@ is handling unread call count change from %@ to %lu", &v11, 0x20u);
  }

  [(MPRecentsTableViewController *)self updateTabBarItemWithCount:count];
}

- (void)recentsControllerDidChangeMessages:(id)messages
{
  messagesCopy = messages;
  if ([(MPRecentsTableViewController *)self isViewLoaded]&& ([(MPRecentsTableViewController *)self isEditing]& 1) == 0)
  {
    recentCalls = [messagesCopy recentCalls];
    [(MPRecentsTableViewController *)self reloadDataSourceForCalls:recentCalls];
  }

  else
  {
    [(MPRecentsTableViewController *)self setDataSourceNeedsReload:1];
  }
}

- (void)reconfiguringCellsForCalls:(id)calls
{
  callsCopy = calls;
  featureFlags = [(MPRecentsTableViewController *)self featureFlags];
  phoneRecentsAvatarsEnabled = [featureFlags phoneRecentsAvatarsEnabled];

  if (phoneRecentsAvatarsEnabled)
  {
    v7 = PHDefaultLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v12 = [callsCopy count];
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "reconfiguringCellsForCalls: %lu", buf, 0xCu);
    }

    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = __59__MPRecentsTableViewController_reconfiguringCellsForCalls___block_invoke;
    v8[3] = &unk_100285C58;
    v9 = callsCopy;
    selfCopy = self;
    [(MPRecentsTableViewController *)self performBatchUpdates:v8 completion:0];
  }
}

void __59__MPRecentsTableViewController_reconfiguringCellsForCalls___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = [NSSet setWithArray:*(a1 + 32)];
    v4 = [*(a1 + 40) tableView];
    v5 = [v4 indexPathsForVisibleRows];

    v6 = objc_alloc_init(NSMutableArray);
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v18 objects:v24 count:16];
    if (v8)
    {
      v10 = v8;
      v11 = *v19;
      *&v9 = 138412290;
      v17 = v9;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v19 != v11)
          {
            objc_enumerationMutation(v7);
          }

          v13 = *(*(&v18 + 1) + 8 * i);
          v14 = [*(a1 + 40) recentCallAtTableViewIndex:{objc_msgSend(v13, "row", v17, v18)}];
          if ([v3 containsObject:v14])
          {
            v15 = PHDefaultLog();
            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
            {
              *buf = v17;
              v23 = v13;
              _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Reconfiguring cell for : %@", buf, 0xCu);
            }

            [v6 addObject:v13];
          }
        }

        v10 = [v7 countByEnumeratingWithState:&v18 objects:v24 count:16];
      }

      while (v10);
    }

    v16 = [*(a1 + 40) tableView];
    [v16 reconfigureRowsAtIndexPaths:v6];
  }
}

- (BOOL)canPerformTableViewUpdates
{
  view = [(MPRecentsTableViewController *)self view];
  if (view && [(MPRecentsTableViewController *)self isViewLoaded])
  {
    view2 = [(MPRecentsTableViewController *)self view];
    window = [view2 window];
    v6 = window != 0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)performBatchUpdates:(id)updates completion:(id)completion
{
  updatesCopy = updates;
  completionCopy = completion;
  if (![(MPRecentsTableViewController *)self canPerformTableViewUpdates])
  {
    v8 = PHDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "performBatchUpdates: View is not loaded or not in view hierarchy, setting dataSourceNeedsReload to true, not performing updates", buf, 2u);
    }

    [(MPRecentsTableViewController *)self setDataSourceNeedsReload:1];
    if (completionCopy)
    {
      completionCopy[2](completionCopy, 0);
    }
  }

  dataSourceNeedsReload = [(MPRecentsTableViewController *)self dataSourceNeedsReload];
  v10 = PHDefaultLog();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (dataSourceNeedsReload)
  {
    if (v11)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "performBatchUpdates: Data source already needs a reload. Performing the reload instead", buf, 2u);
    }

    updatesCopy[2](updatesCopy, 0);
    recentsController = [(MPRecentsTableViewController *)self recentsController];
    recentCalls = [recentsController recentCalls];
    v14 = [(MPRecentsTableViewController *)self callsWithValidHandles:recentCalls];
    v15 = [v14 mutableCopy];
    [(MPRecentsTableViewController *)self setRecentCalls:v15];

    tableView = [(MPRecentsTableViewController *)self tableView];
    [tableView reloadData];

    if (completionCopy)
    {
      completionCopy[2](completionCopy, 1);
    }
  }

  else
  {
    if (v11)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "performBatchUpdates: Performing the batch update", buf, 2u);
    }

    tableView2 = [(MPRecentsTableViewController *)self tableView];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = __63__MPRecentsTableViewController_performBatchUpdates_completion___block_invoke;
    v18[3] = &unk_100285590;
    v19 = updatesCopy;
    [tableView2 performBatchUpdates:v18 completion:completionCopy];
  }

  [(MPRecentsTableViewController *)self setDataSourceNeedsReload:0];
}

- (id)callsWithValidHandles:(id)handles
{
  handlesCopy = handles;
  v4 = [NSPredicate predicateWithBlock:&__block_literal_global_334];
  v5 = [handlesCopy filteredArrayUsingPredicate:v4];

  return v5;
}

BOOL __54__MPRecentsTableViewController_callsWithValidHandles___block_invoke(id a1, CHRecentCall *a2, NSDictionary *a3)
{
  v3 = a2;
  v4 = [(CHRecentCall *)v3 serviceProvider];
  v5 = [v4 isEqualToString:kCHServiceProviderTelephony];

  if (v5)
  {
    v6 = 1;
  }

  else
  {
    v7 = [(CHRecentCall *)v3 validRemoteParticipantHandles];
    v6 = [v7 count] != 0;
  }

  return v6;
}

- (void)pushVoicemailMessageDetailsViewControllerForMessage:(id)message
{
  messageCopy = message;
  navigationController = [(MPRecentsTableViewController *)self navigationController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = navigationController;
    v6 = [PHVoicemailMessageDetailViewController alloc];
    voicemailController = [v5 voicemailController];
    v8 = [(PHVoicemailMessageDetailViewController *)v6 initWithMessage:messageCopy navigationController:v5 voicemailController:voicemailController];

    [(PHVoicemailMessageDetailViewController *)v8 setDelegate:self];
    [v5 pushViewController:v8 animated:1];
  }
}

- (void)donateTipsEventSignalsForRecentCall:(id)call
{
  callCopy = call;
  featureFlags = [(MPRecentsTableViewController *)self featureFlags];
  useSharedRecentsViewModel = [featureFlags useSharedRecentsViewModel];

  if (useSharedRecentsViewModel)
  {
    v7 = objc_opt_new();
    [v7 donateTipsEventSignalsForRecentCall:callCopy completion:&__block_literal_global_339];
    goto LABEL_25;
  }

  contactIdentifier = [callCopy contactIdentifier];
  v7 = contactIdentifier;
  v9 = contactIdentifier && [contactIdentifier length];
  v10 = PHPreferencesGetValueInDomain();
  bOOLValue = [v10 BOOLValue];

  if ((bOOLValue & 1) == 0)
  {
    v12 = objc_alloc_init(CHManager);
    if (v9)
    {
      if (![(MPRecentsTableViewController *)self isRecentCallContactInFavorites:callCopy])
      {
        v13 = objc_alloc_init(NSDateComponents);
        [v13 setDay:-30];
        v14 = +[NSCalendar currentCalendar];
        v15 = +[NSDate date];
        v16 = [v14 dateByAddingComponents:v13 toDate:v15 options:0];

        v17 = [NSPredicate predicateWithFormat:@"date >= %@ AND contactIdentifier == %@", v16, v7];
        if ([v12 countCallsWithPredicate:v17] >= 5)
        {
          v18 = PHDefaultLog();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Logging Biome signal for calling a non-favorite contact.", buf, 2u);
          }

          v19 = TUTipsEventCalledNonFavContact;
LABEL_18:
          if (v19)
          {
            if (v19 == TUTipsEventCalledNonFavContact)
            {
              +[TPTipsHelper donateEventCalledNonFavContact];
            }

            else
            {
              +[TPTipsHelper donateEventCalledNonContact];
            }

            PHPreferencesSetValueInDomain();
          }

          goto LABEL_24;
        }
      }
    }

    else
    {
      callerIdForDisplay = [callCopy callerIdForDisplay];
      v21 = [NSPredicate predicateWithFormat:@"callerIdForDisplay == %@", callerIdForDisplay];
      v22 = [v12 countCallsWithPredicate:v21];

      if (v22 >= 3)
      {
        v23 = PHDefaultLog();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          *v24 = 0;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Logging Biome signal for calling a non-contact number.", v24, 2u);
        }

        v19 = TUTipsEventCalledNonContact;
        goto LABEL_18;
      }
    }

LABEL_24:
  }

LABEL_25:
}

- (BOOL)isRecentCallContactInFavorites:(id)favorites
{
  favoritesCopy = favorites;
  featureFlags = [(MPRecentsTableViewController *)self featureFlags];
  useSharedRecentsViewModel = [featureFlags useSharedRecentsViewModel];

  if (useSharedRecentsViewModel)
  {
    v7 = PHDefaultLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [MPRecentsTableViewController isRecentCallContactInFavorites:];
    }
  }

  contactIdentifier = [favoritesCopy contactIdentifier];
  v9 = contactIdentifier;
  if (contactIdentifier && [contactIdentifier length])
  {
    v10 = +[(PHApplicationServices *)MPApplicationServices];
    favoritesController = [v10 favoritesController];

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    favoritesEntries = [favoritesController favoritesEntries];
    v13 = [favoritesEntries countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v13)
    {
      v21 = favoritesController;
      v14 = *v23;
      while (2)
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v23 != v14)
          {
            objc_enumerationMutation(favoritesEntries);
          }

          contactProperty = [*(*(&v22 + 1) + 8 * i) contactProperty];
          contact = [contactProperty contact];
          identifier = [contact identifier];
          v19 = [identifier isEqualToString:v9];

          if (v19)
          {
            LOBYTE(v13) = 1;
            goto LABEL_18;
          }
        }

        v13 = [favoritesEntries countByEnumeratingWithState:&v22 objects:v26 count:16];
        if (v13)
        {
          continue;
        }

        break;
      }

LABEL_18:
      favoritesController = v21;
    }
  }

  else
  {
    LOBYTE(v13) = 0;
  }

  return v13;
}

- (void)presentCNSharedProfileOnboardingController
{
  v3 = objc_alloc_init(TUFeatureFlags);
  nameAndPhotoEnabledC3 = [v3 nameAndPhotoEnabledC3];

  if (nameAndPhotoEnabledC3)
  {
    v5 = PHDefaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Going to present CNSharedProfileOnboardingController", v11, 2u);
    }

    [(MPRecentsTableViewController *)self dismissViewControllerAnimated:0 completion:0];
    v6 = [CNSharedProfileOnboardingController alloc];
    v7 = +[TUCallCenter sharedInstance];
    contactStore = [v7 contactStore];
    v9 = [v6 initWithContactStore:contactStore];
    [(MPRecentsTableViewController *)self setOnboardingController:v9];

    onboardingController = [(MPRecentsTableViewController *)self onboardingController];
    [onboardingController startOnboardingOrEditForMode:1 fromViewController:self];
  }
}

- (id)fetchSubscriptionsInUse
{
  v2 = PHDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = objc_opt_class();
    v3 = *(&buf + 4);
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%@ fetching current CTXPCServiceSubscriptions in use", &buf, 0xCu);
  }

  v4 = objc_alloc_init(NSMutableArray);
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2050000000;
  v5 = getPSSimStatusCacheClass_softClass;
  v26 = getPSSimStatusCacheClass_softClass;
  if (!getPSSimStatusCacheClass_softClass)
  {
    *&buf = _NSConcreteStackBlock;
    *(&buf + 1) = 3221225472;
    v29 = __getPSSimStatusCacheClass_block_invoke;
    v30 = &unk_100286540;
    v31 = &v23;
    __getPSSimStatusCacheClass_block_invoke(&buf);
    v5 = v24[3];
  }

  v6 = v5;
  _Block_object_dispose(&v23, 8);
  sharedInstance = [v5 sharedInstance];
  subscriptionsInUse = [sharedInstance subscriptionsInUse];

  v9 = [subscriptionsInUse countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v9)
  {
    v11 = *v20;
    *&v10 = 138412290;
    v18 = v10;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(subscriptionsInUse);
        }

        v13 = *(*(&v19 + 1) + 8 * i);
        if ([v13 isSimHidden])
        {
          v14 = PHDefaultLog();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            uuid = [v13 uuid];
            LODWORD(buf) = v18;
            *(&buf + 4) = uuid;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Subscription: %@ is hidden", &buf, 0xCu);
          }
        }

        else
        {
          [v4 addObject:v13];
        }
      }

      v9 = [subscriptionsInUse countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v9);
  }

  v16 = [v4 copy];

  return v16;
}

- (id)fetchCarrierBundleValue:(id)value context:(id)context
{
  valueCopy = value;
  contextCopy = context;
  ctClient = [(MPRecentsTableViewController *)self ctClient];
  v13 = 0;
  v9 = [ctClient context:contextCopy getCarrierBundleValue:valueCopy error:&v13];

  v10 = v13;
  if (v10)
  {
    v11 = PHDefaultLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [MPRecentsTableViewController fetchCarrierBundleValue:context:];
    }

    v9 = 0;
  }

  return v9;
}

- (id)personalizedCarrierString
{
  fetchSubscriptionsInUse = [(MPRecentsTableViewController *)self fetchSubscriptionsInUse];
  v4 = objc_alloc_init(NSMutableSet);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v5 = fetchSubscriptionsInUse;
  v6 = [v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v21;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v20 + 1) + 8 * i);
        v11 = [(MPRecentsTableViewController *)self fetchCarrierBundleValue:&off_1002954C8 context:v10];
        if ([v11 BOOLValue])
        {
          v12 = [(MPRecentsTableViewController *)self fetchCarrierBundleValue:&off_1002954E0 context:v10];
          if (v12)
          {
            [v4 addObject:v12];
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v7);
  }

  allObjects = [v4 allObjects];
  if ([allObjects count] == 1)
  {
    v14 = +[NSBundle mainBundle];
    v15 = [v14 localizedStringForKey:@"BRANDED_CALLING_SINGLE_CARRIER_TIPS_TEXT" value:&stru_10028F310 table:@"PHRecents"];
    v16 = [allObjects objectAtIndexedSubscript:0];
    v17 = [NSString stringWithFormat:v15, v16];
LABEL_16:

    goto LABEL_18;
  }

  if ([allObjects count] == 2)
  {
    v14 = +[NSBundle mainBundle];
    v15 = [v14 localizedStringForKey:@"BRANDED_CALLING_TWO_CARRIER_TIPS_TEXT" value:&stru_10028F310 table:@"PHRecents"];
    v16 = [allObjects objectAtIndexedSubscript:0];
    v18 = [allObjects objectAtIndexedSubscript:1];
    v17 = [NSString stringWithFormat:v15, v16, v18, v20];

    goto LABEL_16;
  }

  v17 = 0;
LABEL_18:

  return v17;
}

- (id)reportSwipeActionForCall:(id)call
{
  callCopy = call;
  objc_initWeak(&location, self);
  callReportingViewModel = [(MPRecentsTableViewController *)self callReportingViewModel];
  v6 = [callReportingViewModel shouldShowReportActionForCall:callCopy];

  if (v6)
  {
    callReportingViewModel2 = [(MPRecentsTableViewController *)self callReportingViewModel];
    v8 = [callReportingViewModel2 reportingFlowForCall:callCopy];

    if (v8 == 6)
    {
      v9 = PHDefaultLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "MPRecentsTableViewController: not a valid spam flow", buf, 2u);
      }

      v10 = 0;
    }

    else
    {
      callReportingViewModel3 = [(MPRecentsTableViewController *)self callReportingViewModel];
      v9 = [callReportingViewModel3 reportActionTitleOfFlow:v8];

      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = __57__MPRecentsTableViewController_reportSwipeActionForCall___block_invoke;
      v16[3] = &unk_1002864F0;
      objc_copyWeak(v18, &location);
      v18[1] = v8;
      v17 = callCopy;
      v10 = [UIContextualAction contextualActionWithStyle:0 title:v9 handler:v16];
      v12 = +[UIColor orangeColor];
      [v10 setBackgroundColor:v12];

      callReportingViewModel4 = [(MPRecentsTableViewController *)self callReportingViewModel];
      reportActionImage = [callReportingViewModel4 reportActionImage];
      [v10 setImage:reportActionImage];

      [v10 setAccessibilityIdentifier:@"ReportAction"];
      objc_destroyWeak(v18);
    }
  }

  else
  {
    v10 = 0;
  }

  objc_destroyWeak(&location);

  return v10;
}

void __57__MPRecentsTableViewController_reportSwipeActionForCall___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    v8 = *(a1 + 48);
    if (v8 <= 2)
    {
      if (v8)
      {
        if (v8 == 1)
        {
          v12 = PHDefaultLog();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            *v15 = 0;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "MPRecentsTableViewController: we are showing the carrier reporting and blocking option", v15, 2u);
          }

          [v7 _showCarrierVoiceCallReportAlertForCall:*(a1 + 32)];
        }

        else if (v8 == 2)
        {
          v9 = PHDefaultLog();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "MPRecentsTableViewController: we are showing the third party reporting and blocking option", buf, 2u);
          }

          [v7 showReportingExtensionForCall:*(a1 + 32)];
        }
      }

      else
      {
        v11 = PHDefaultLog();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          *v16 = 0;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "MPRecentsTableViewController: we are showing the native spam reporting and blocking for facetime", v16, 2u);
        }

        [v7 presentFaceTimeSpamReportAndBlockAlertFor:*(a1 + 32)];
      }
    }

    else if (v8 > 4)
    {
      if (v8 == 5)
      {
        [WeakRetained presentGroupFaceTimeSpamReportAndBlockAlertFor:*(a1 + 32)];
      }

      else if (v8 == 6)
      {
        v10 = PHDefaultLog();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          *v13 = 0;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "MPRecentsTableViewController: we are showing none flow", v13, 2u);
        }
      }
    }

    else if (v8 == 3)
    {
      [WeakRetained presentBlockAllAlertFor:*(a1 + 32)];
    }

    else
    {
      [WeakRetained presentBlockUnknownParticipantsFor:*(a1 + 32)];
    }

    [v7 prefetchSharing];
  }

  v5[2](v5, 1);
}

- (void)_showCarrierVoiceCallReportAlertForCall:(id)call
{
  callCopy = call;
  featureFlags = [(MPRecentsTableViewController *)self featureFlags];
  useSharedRecentsViewModel = [featureFlags useSharedRecentsViewModel];

  if (useSharedRecentsViewModel)
  {
    v7 = PHDefaultLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [MPRecentsTableViewController _showCarrierVoiceCallReportAlertForCall:];
    }
  }

  callReportingViewModel = [(MPRecentsTableViewController *)self callReportingViewModel];
  v9 = [callReportingViewModel getCarrierNameOfCallForCall:callCopy];

  callReportingViewModel2 = [(MPRecentsTableViewController *)self callReportingViewModel];
  v31 = v9;
  v11 = [callReportingViewModel2 getCarrierSpamReportAlertTitleWithCarrierName:v9];

  v12 = [UIAlertController alertControllerWithTitle:v11 message:0 preferredStyle:0];
  v13 = +[NSBundle mainBundle];
  v14 = [v13 localizedStringForKey:@"REPORT_BLOCK_FACETIME_ALERT_BLOCK" value:&stru_10028F310 table:@"PHRecents"];
  v36[0] = _NSConcreteStackBlock;
  v36[1] = 3221225472;
  v36[2] = __72__MPRecentsTableViewController__showCarrierVoiceCallReportAlertForCall___block_invoke;
  v36[3] = &unk_100285E58;
  v36[4] = self;
  v15 = callCopy;
  v37 = v15;
  v16 = [UIAlertAction actionWithTitle:v14 style:2 handler:v36];
  [v12 addAction:v16];

  v17 = +[NSBundle mainBundle];
  v18 = [v17 localizedStringForKey:@"REPORT_BLOCK_FACETIME_ALERT_REPORT_BLOCK" value:&stru_10028F310 table:@"PHRecents"];
  v34[0] = _NSConcreteStackBlock;
  v34[1] = 3221225472;
  v34[2] = __72__MPRecentsTableViewController__showCarrierVoiceCallReportAlertForCall___block_invoke_385;
  v34[3] = &unk_100285E58;
  v34[4] = self;
  v19 = v15;
  v35 = v19;
  v20 = [UIAlertAction actionWithTitle:v18 style:2 handler:v34];
  [v12 addAction:v20];

  v21 = +[NSBundle mainBundle];
  v22 = [v21 localizedStringForKey:@"CANCEL" value:&stru_10028F310 table:@"PHRecents"];
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = __72__MPRecentsTableViewController__showCarrierVoiceCallReportAlertForCall___block_invoke_386;
  v32[3] = &unk_100285E58;
  v32[4] = self;
  v33 = v19;
  v23 = v19;
  v24 = [UIAlertAction actionWithTitle:v22 style:1 handler:v32];
  [v12 addAction:v24];

  popoverPresentationController = [v12 popoverPresentationController];
  [popoverPresentationController setPermittedArrowDirections:1];

  popoverPresentationController2 = [v12 popoverPresentationController];
  WeakRetained = objc_loadWeakRetained(&self->_alertPresentingViewController);
  view = [WeakRetained view];
  [popoverPresentationController2 setSourceView:view];

  v29 = objc_loadWeakRetained(&self->_alertPresentingViewController);
  if (v29)
  {
    v30 = objc_loadWeakRetained(&self->_alertPresentingViewController);
    [v30 presentViewController:v12 animated:1 completion:0];
  }

  else
  {
    [(MPRecentsTableViewController *)self presentViewController:v12 animated:1 completion:0];
  }
}

void __72__MPRecentsTableViewController__showCarrierVoiceCallReportAlertForCall___block_invoke(uint64_t a1)
{
  v2 = PHDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Spamreporting: carrier reporting, user did tap block", v5, 2u);
  }

  v3 = [*(a1 + 32) contactsForRecentCall:*(a1 + 40)];
  v4 = [*(a1 + 32) callReportingViewModel];
  [v4 blockWithContacts:v3];

  [*(a1 + 32) showSafetyCheckFor:v3];
}

void __72__MPRecentsTableViewController__showCarrierVoiceCallReportAlertForCall___block_invoke_385(uint64_t a1)
{
  v2 = PHDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Spamreporting: carrier reporting, user did tap block and report", v6, 2u);
  }

  v3 = [*(a1 + 32) contactsForRecentCall:*(a1 + 40)];
  v4 = [*(a1 + 32) callReportingViewModel];
  [v4 blockWithContacts:v3];

  v5 = [*(a1 + 32) callReportingViewModel];
  [v5 reportSpamVoiceCall:*(a1 + 40)];

  [*(a1 + 32) showSafetyCheckFor:v3];
}

void __72__MPRecentsTableViewController__showCarrierVoiceCallReportAlertForCall___block_invoke_386(uint64_t a1)
{
  v2 = [*(a1 + 32) callReportingViewModel];
  [v2 logEventForCancelledVoiceCallSpamReport:*(a1 + 40)];
}

- (UIViewController)alertPresentingViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_alertPresentingViewController);

  return WeakRetained;
}

- (void)handleShowDetailsURLForUniqueID:(id)d withContinuingSearchText:(id)text
{
  dCopy = d;
  textCopy = text;
  featureFlags = [(MPRecentsTableViewController *)self featureFlags];
  callHistorySearchEnabled = [featureFlags callHistorySearchEnabled];

  if (callHistorySearchEnabled)
  {
    v10 = PHDefaultLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412546;
      v12 = dCopy;
      v13 = 2112;
      v14 = textCopy;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Showing details for uniqueID: %@ and setting searchText as: %@", &v11, 0x16u);
    }

    [(MPRecentsTableViewController *)self setPendingSearchText:textCopy];
    [(MPRecentsTableViewController *)self handleShowDetailsURLForUniqueID:dCopy];
  }
}

- (void)startSearchingForText:(id)text
{
  textCopy = text;
  featureFlags = [(MPRecentsTableViewController *)self featureFlags];
  callHistorySearchEnabled = [featureFlags callHistorySearchEnabled];

  if (callHistorySearchEnabled)
  {
    v7 = PHDefaultLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v22 = 138412290;
      v23 = textCopy;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Starting search for text: %@", &v22, 0xCu);
    }

    if (-[MPRecentsTableViewController isViewLoaded](self, "isViewLoaded") && (-[MPRecentsTableViewController view](self, "view"), v8 = objc_claimAutoreleasedReturnValue(), [v8 window], v9 = objc_claimAutoreleasedReturnValue(), v9, v8, v9))
    {
      searchController = [(MPRecentsTableViewController *)self searchController];
      isActive = [searchController isActive];

      if (isActive)
      {
        searchController2 = [(MPRecentsTableViewController *)self searchController];
        searchBar = [searchController2 searchBar];
        [searchBar setText:textCopy];

        searchResultsController = [(MPRecentsTableViewController *)self searchResultsController];
        searchController3 = [(MPRecentsTableViewController *)self searchController];
        [searchResultsController updateSearchResultsForSearchController:searchController3];
      }

      else
      {
        [(MPRecentsTableViewController *)self setPendingSearchText:textCopy];
        searchResultsController = [(MPRecentsTableViewController *)self searchController];
        [searchResultsController setActive:1];
      }

      searchController4 = [(MPRecentsTableViewController *)self searchController];
      searchBar2 = [searchController4 searchBar];
      [searchBar2 becomeFirstResponder];
    }

    else
    {
      searchController5 = [(MPRecentsTableViewController *)self searchController];
      searchBar3 = [searchController5 searchBar];
      [searchBar3 setText:textCopy];

      searchResultsController2 = [(MPRecentsTableViewController *)self searchResultsController];
      searchController6 = [(MPRecentsTableViewController *)self searchController];
      [searchResultsController2 updateSearchResultsForSearchController:searchController6];

      [(MPRecentsTableViewController *)self setPendingSearchControllerActivation:1];
    }
  }
}

- (void)willPresentSearchController:(id)controller
{
  controllerCopy = controller;
  [(MPRecentsTableViewController *)self updateSearchBarLayoutMarginsPresentingSearchResults:1];
  [controllerCopy setShowsSearchResultsController:1];

  [(MPRecentsTableViewController *)self animateSearchResultsController:0];
  [(MPRecentsTableViewController *)self dismissPopover];

  +[TPTipsHelper donateEventSearchedCallHistory];
}

- (void)didPresentSearchController:(id)controller
{
  controllerCopy = controller;
  pendingSearchText = [(MPRecentsTableViewController *)self pendingSearchText];

  if (pendingSearchText)
  {
    pendingSearchText2 = [(MPRecentsTableViewController *)self pendingSearchText];
    searchBar = [controllerCopy searchBar];
    [searchBar setText:pendingSearchText2];

    [(MPRecentsTableViewController *)self setPendingSearchText:0];
  }

  v7 = +[CSSearchMetrics shared];
  [v7 logSearchBarTap];
}

- (void)willDismissSearchController:(id)controller
{
  [(MPRecentsTableViewController *)self updateSearchBarLayoutMarginsPresentingSearchResults:0];

  [(MPRecentsTableViewController *)self animateSearchResultsController:1];
}

- (void)animateSearchResultsController:(BOOL)controller
{
  if (controller)
  {
    searchResultsController = [(MPRecentsTableViewController *)self searchResultsController];
    view = [searchResultsController view];

    tableView = [(MPRecentsTableViewController *)self tableView];
  }

  else
  {
    view = [(MPRecentsTableViewController *)self tableView];
    searchResultsController2 = [(MPRecentsTableViewController *)self searchResultsController];
    tableView = [searchResultsController2 view];
  }

  [tableView setAlpha:0.0];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = __71__MPRecentsTableViewController_Search__animateSearchResultsController___block_invoke;
  v14[3] = &unk_100284FD0;
  v15 = view;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = __71__MPRecentsTableViewController_Search__animateSearchResultsController___block_invoke_2;
  v10[3] = &unk_100286518;
  v12 = v15;
  v13 = 0x3FC999999999999ALL;
  v11 = tableView;
  v8 = v15;
  v9 = tableView;
  [UIView animateWithDuration:0x10000 delay:v14 options:v10 animations:0.2 completion:0.0];
}

void __71__MPRecentsTableViewController_Search__animateSearchResultsController___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 48);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = __71__MPRecentsTableViewController_Search__animateSearchResultsController___block_invoke_3;
  v5[3] = &unk_100284FD0;
  v6 = *(a1 + 32);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = __71__MPRecentsTableViewController_Search__animateSearchResultsController___block_invoke_4;
  v3[3] = &unk_100285B20;
  v4 = *(a1 + 40);
  [UIView animateWithDuration:v5 animations:v3 completion:v2];
}

- (void)didSelectSuggestedSearchWithToken:(id)token
{
  tokenCopy = token;
  selfCopy = self;
  MPRecentsTableViewController.didSelectSuggestedSearch(token:)(tokenCopy);
}

- (void)tipKitStartObservation
{
  selfCopy = self;
  MPRecentsTableViewController.tipKitStartObservation()();
}

- (void)tipKitStopObservation
{
  selfCopy = self;
  [(MPRecentsTableViewController *)selfCopy dismissPopover];
  type metadata accessor for TPTipsHelper();
  static TPTipsHelper.taskQueue.getter();
  *(swift_allocObject() + 16) = selfCopy;
  v3 = selfCopy;
  dispatch thunk of TaskQueue.async(_:)();
}

- (BOOL)canDisplaySearchBarPopover
{
  selfCopy = self;
  v3 = MPRecentsTableViewController.canDisplaySearchBarPopover()();

  return v3;
}

- (id)makePersonalNicknameMenuView
{
  v3 = objc_allocWithZone(type metadata accessor for PersonalNicknameMenuView());
  selfCopy = self;
  v5 = PersonalNicknameMenuView.init(displayContext:personalNicknameMenuViewDelegate:)(1, self, &protocol witness table for MPRecentsTableViewController);

  return v5;
}

- (void)presentFaceTimeSpamReportAlertFor:(id)for
{
  forCopy = for;
  selfCopy = self;
  MPRecentsTableViewController.presentFaceTimeSpamReportAlert(for:)(forCopy);
}

- (void)presentBlockAllAlertFor:(id)for
{
  forCopy = for;
  selfCopy = self;
  MPRecentsTableViewController.presentBlockAllAlert(for:)(forCopy);
}

- (void)presentFaceTimeSpamReportAndBlockAlertFor:(id)for
{
  forCopy = for;
  selfCopy = self;
  MPRecentsTableViewController.presentFaceTimeSpamReportAndBlockAlert(for:)(forCopy);
}

- (void)presentGroupFaceTimeSpamReportAndBlockAlertFor:(id)for
{
  forCopy = for;
  selfCopy = self;
  MPRecentsTableViewController.presentGroupFaceTimeSpamReportAndBlockAlert(for:)(forCopy);
}

- (void)presentBlockUnknownParticipantsFor:(id)for
{
  forCopy = for;
  selfCopy = self;
  MPRecentsTableViewController.presentBlockUnknownParticipants(for:)(forCopy);
}

- (void)tableView:(uint64_t)a1 numberOfRowsInSection:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v2 = 134217984;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Asked to return number of rows in section. Returning %ld", &v2, 0xCu);
}

@end