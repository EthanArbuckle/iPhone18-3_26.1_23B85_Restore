@interface MailboxPickerOutlineController
+ (id)log;
- (BOOL)_isRegularWidthSolariumPad;
- (BOOL)_selectFavoriteItem:(id)item indexPath:(id)path animated:(BOOL)animated;
- (BOOL)_shouldShowMailStatus;
- (BOOL)_shouldShowMailStatusInToolbar;
- (BOOL)_shouldShowToolbar:(BOOL)toolbar;
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender;
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (BOOL)mailboxCollectionHelper:(id)helper shouldDisableForEditingCellForMailbox:(id)mailbox;
- (BOOL)mailboxCollectionHelperShouldUpdateMailboxSelection:(id)selection;
- (BOOL)mailboxCollectionHelperSplitViewControllerIsCollapsed:(id)collapsed;
- (BOOL)showingPopoverViewController;
- (EMDiagnosticsHelper)diagnosticsHelper;
- (FavoriteItemSelectionTarget)favoriteItemSelectionTarget;
- (MailMainScene)scene;
- (MailboxPickerOutlineController)initWithMainScene:(id)scene favoritesManager:(id)manager accountsProvider:(id)provider;
- (MessageListViewController)messageListViewController;
- (NSArray)suggestedFavoriteItems;
- (UIBarButtonItem)composeButtonItem;
- (UIBarButtonItem)editButtonItem;
- (UIBarButtonItem)shelfButtonItem;
- (id)_configuredSectionForSection:(int64_t)section layoutEnvironment:(id)environment;
- (id)displayedAccountsForMailboxCollectionHelper:(id)helper;
- (id)favoriteItemsMatchingItemURLStrings:(id)strings;
- (id)favoriteItemsMatchingName:(id)name;
- (id)mailboxPickerDragDropHelper:(id)helper favoriteItemAtIndexPath:(id)path;
- (id)mailboxPickerDragDropHelper:(id)helper mailboxForMailboxUid:(id)uid;
- (id)mailboxQualifier;
- (id)mailboxRepository;
- (void)_configureCollectionView;
- (void)_contentSizeCategoryChanged:(id)changed;
- (void)_detailViewControllerConfigurationChanged:(id)changed;
- (void)_dismissCustomViewController:(id)controller;
- (void)_dismissEditViewControllers;
- (void)_editButtonTapped:(id)tapped;
- (void)_escapeShortcutInvoked:(id)invoked;
- (void)_handleUrlQueryItems:(id)items;
- (void)_popToMailboxPickerController:(BOOL)controller andPushMessageListViewControllerIfNecessaryAnimated:(BOOL)animated;
- (void)_presentMailboxEditControllerForAccount:(id)account mailbox:(id)mailbox animated:(BOOL)animated;
- (void)_presentMessageListViewControllerForMailboxes:(id)mailboxes animated:(BOOL)animated;
- (void)_presentViewControllerInPopover:(id)popover animated:(BOOL)animated block:(id)block;
- (void)_presentViewControllerInPopover:(id)popover barButtonItem:(id)item animated:(BOOL)animated;
- (void)_presentViewControllerInPopover:(id)popover sourceView:(id)view animated:(BOOL)animated;
- (void)_registerNotifications;
- (void)_reloadDataSourceIfNeeded;
- (void)_sharedMailboxControllerBadgeCountDidChange:(id)change;
- (void)_shelfButtonTapped:(id)tapped;
- (void)_significantTimeChange:(id)change;
- (void)_updateBackButtonTitle;
- (void)_updateEditButtonPosition;
- (void)_updateNavigationBarItems;
- (void)_updateNavigationBarItemsEditing:(BOOL)editing;
- (void)_updateTitle;
- (void)_updateToolbarItems:(BOOL)items;
- (void)_updateToolbarItemsEditing:(BOOL)editing animated:(BOOL)animated;
- (void)_useSplitViewControllerToShowViewController:(id)controller animated:(BOOL)animated;
- (void)_vipSendersDidChange:(id)change;
- (void)_watchedMailboxesDidChange:(id)change;
- (void)applicationWillSuspend;
- (void)editFavoritesControllerDidFinish:(id)finish;
- (void)handleInteractiveMoveGesture:(id)gesture;
- (void)mailStatus:(id)status didChangeState:(int64_t)state;
- (void)mailStatusViewControllerUndoButtonTapped:(id)tapped;
- (void)mailboxCollectionHelper:(id)helper wantsToPopToMailboxPicker:(BOOL)picker andPushMessageListViewControllerIfNecessaryAnimated:(BOOL)animated;
- (void)mailboxCollectionHelper:(id)helper wantsToPresentMailboxEditControllerForMailbox:(id)mailbox animated:(BOOL)animated;
- (void)mailboxCollectionHelper:(id)helper wantsToSelectMailbox:(id)mailbox account:(id)account animated:(BOOL)animated;
- (void)mailboxCollectionHelper:(id)helper wantsToShowCustomViewController:(id)controller animated:(BOOL)animated sourceViewBlock:(id)block;
- (void)mailboxCollectionHelperDidTapDetailsDisclosure:(id)disclosure sender:(id)sender;
- (void)mailboxCollectionHelperWantsToShowAddFavoritesController:(id)controller sourceView:(id)view;
- (void)mailboxEditingControllerDidFinish:(id)finish;
- (void)messageListViewController:(id)controller didSelectFavorite:(id)favorite;
- (void)messageListViewController:(id)controller setEditing:(BOOL)editing animated:(BOOL)animated;
- (void)messageListViewControllerWantsToSelectNextFavoriteItem:(id)item;
- (void)messageListViewControllerWantsToSelectPreviousFavoriteItem:(id)item;
- (void)presentationControllerWillDismiss:(id)dismiss;
- (void)pulledToRefresh:(id)refresh;
- (void)selectCombinedMailbox:(id)mailbox;
- (void)selectMailbox:(id)mailbox;
- (void)selectMailbox:(id)mailbox urlQueryItems:(id)items;
- (void)setDisplayMessageOnReload:(id)reload;
- (void)setEditing:(BOOL)editing animated:(BOOL)animated;
- (void)setIsRefreshing:(BOOL)refreshing;
- (void)showVIPSettingsAnimated:(BOOL)animated;
- (void)traitCollectionDidChange:(id)change;
- (void)updateEditButtonPositionAndNavigationBarTitleHidden:(BOOL)hidden;
- (void)updateForSplitViewCollapseStateChanged:(BOOL)changed;
- (void)updateIsRefreshingForState:(id)state;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation MailboxPickerOutlineController

- (MailMainScene)scene
{
  WeakRetained = objc_loadWeakRetained(&self->_scene);

  return WeakRetained;
}

- (EMDiagnosticsHelper)diagnosticsHelper
{
  diagnosticsHelper = self->_diagnosticsHelper;
  if (!diagnosticsHelper)
  {
    v4 = [EMDiagnosticsHelper alloc];
    scene = [(MailboxPickerOutlineController *)self scene];
    daemonInterface = [scene daemonInterface];
    v7 = [v4 initWithDaemonInterface:daemonInterface];
    v8 = self->_diagnosticsHelper;
    self->_diagnosticsHelper = v7;

    diagnosticsHelper = self->_diagnosticsHelper;
  }

  return diagnosticsHelper;
}

- (void)_registerNotifications
{
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 addObserver:self selector:"_sharedMailboxControllerBadgeCountDidChange:" name:SharedMailboxControllerBadgeCountDidChangeNotification object:0];
  v3 = +[VIPManager defaultInstance];
  [v4 addObserver:self selector:"_vipSendersDidChange:" name:EMVIPsDidChangeNotification object:v3];

  [v4 addObserver:self selector:"_contentSizeCategoryChanged:" name:UIContentSizeCategoryDidChangeNotification object:0];
  [v4 addObserver:self selector:"_significantTimeChange:" name:UIApplicationSignificantTimeChangeNotification object:0];
  [v4 addObserver:self selector:"_detailViewControllerConfigurationChanged:" name:UIViewControllerShowDetailTargetDidChangeNotification object:0];
}

- (void)_updateBackButtonTitle
{
  accountsProvider = [(MailboxPickerOutlineController *)self accountsProvider];
  isDisplayingMultipleAccounts = [accountsProvider isDisplayingMultipleAccounts];

  if (!isDisplayingMultipleAccounts || (-[FavoritesManager lastSelectedItem](self->_favoritesManager, "lastSelectedItem"), v5 = objc_claimAutoreleasedReturnValue(), [v5 account], v6 = objc_claimAutoreleasedReturnValue(), v5, objc_msgSend(v6, "displayName"), v10 = objc_claimAutoreleasedReturnValue(), v6, !v10))
  {
    v7 = [NSBundle bundleForClass:objc_opt_class()];
    v10 = [v7 localizedStringForKey:@"MAILBOXES_BACK_BUTTON" value:&stru_100662A88 table:@"Main"];
  }

  navigationItem = [(MailboxPickerOutlineController *)self navigationItem];
  [navigationItem setBackButtonTitle:v10];

  navigationItem2 = [(MailboxPickerOutlineController *)self navigationItem];
  [navigationItem2 setBackButtonDisplayMode:2];
}

- (FavoriteItemSelectionTarget)favoriteItemSelectionTarget
{
  [(MailboxPickerOutlineController *)self loadViewIfNeeded];

  return [(MailboxPickerOutlineController *)self collectionHelper];
}

- (void)viewDidLoad
{
  v10.receiver = self;
  v10.super_class = MailboxPickerOutlineController;
  [(MailboxPickerOutlineController *)&v10 viewDidLoad];
  view = [(MailboxPickerOutlineController *)self view];
  [view setAccessibilityIdentifier:MSAccessibilityIdentifierFilterCardMailboxPicker];

  [(MailboxPickerOutlineController *)self setDataSourceNeedsReload:1];
  [(MailboxPickerOutlineController *)self _configureCollectionView];
  if (MUISolariumFeatureEnabled())
  {
    if (+[UIDevice mf_isPadIdiom])
    {
      objc_initWeak(&location, self);
      splitViewController = [(MailboxPickerOutlineController *)self splitViewController];
      v11 = objc_opt_class();
      v5 = [NSArray arrayWithObjects:&v11 count:1];
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 3221225472;
      v7[2] = sub_1000FD84C;
      v7[3] = &unk_100650498;
      objc_copyWeak(&v8, &location);
      v6 = [splitViewController registerForTraitChanges:v5 withHandler:v7];

      objc_destroyWeak(&v8);
      objc_destroyWeak(&location);
    }
  }
}

- (void)_configureCollectionView
{
  objc_initWeak(&location, self);
  v3 = [CustomCompositionalLayout alloc];
  v34[0] = _NSConcreteStackBlock;
  v34[1] = 3221225472;
  v34[2] = sub_1000FDFE0;
  v34[3] = &unk_10064F3F8;
  objc_copyWeak(&v35, &location);
  v4 = [(CustomCompositionalLayout *)v3 initWithSectionProvider:v34];
  v5 = [[MailboxPickerDragDropHelper alloc] initWithDelegate:self];
  [(MailboxPickerOutlineController *)self setDragDropHelper:v5];

  v6 = [UICollectionView alloc];
  view = [(MailboxPickerOutlineController *)self view];
  [view bounds];
  v8 = [v6 initWithFrame:v4 collectionViewLayout:?];

  [v8 setAutoresizingMask:18];
  if ((MUISolariumFeatureEnabled() & 1) == 0)
  {
    traitCollection = [(MailboxPickerOutlineController *)self traitCollection];
    v10 = [UIColor mailMailboxPickerBackgroundColorForTraitCollection:traitCollection];
    [v8 setBackgroundColor:v10];
  }

  [v8 setAlwaysBounceVertical:1];
  dragDropHelper = [(MailboxPickerOutlineController *)self dragDropHelper];
  [v8 setDropDelegate:dragDropHelper];

  [v8 setSpringLoaded:1];
  [v8 setAllowsMultipleSelectionDuringEditing:1];
  [v8 setAccessibilityIdentifier:MSAccessibilityIdentifierMailboxList];
  [v8 _setDelaysUserInitiatedItemSelection:1];
  view2 = [(MailboxPickerOutlineController *)self view];
  [view2 addSubview:v8];

  [(MailboxPickerOutlineController *)self setCollectionView:v8];
  v13 = [[UILongPressGestureRecognizer alloc] initWithTarget:self action:"handleInteractiveMoveGesture:"];
  [(MailboxPickerOutlineController *)self setInteractiveMoveGestureRecognizer:v13];

  interactiveMoveGestureRecognizer = [(MailboxPickerOutlineController *)self interactiveMoveGestureRecognizer];
  [interactiveMoveGestureRecognizer setDelegate:self];

  collectionView = [(MailboxPickerOutlineController *)self collectionView];
  interactiveMoveGestureRecognizer2 = [(MailboxPickerOutlineController *)self interactiveMoveGestureRecognizer];
  [collectionView addGestureRecognizer:interactiveMoveGestureRecognizer2];

  v17 = [MailboxPickerCollectionHelper alloc];
  favoritesManager = [(MailboxPickerOutlineController *)self favoritesManager];
  v19 = +[UIApplication sharedApplication];
  focusController = [v19 focusController];
  scene = [(MailboxPickerOutlineController *)self scene];
  v22 = +[MailboxPickerOutlineController log];
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_1000FE064;
  v32[3] = &unk_10064C838;
  objc_copyWeak(&v33, &location);
  v23 = [(MailboxPickerCollectionHelper *)v17 initWithCollectionView:v8 favoritesManager:favoritesManager focusController:focusController scene:scene logClient:v22 updateCompletion:v32];

  [(MailboxPickerOutlineController *)self setCollectionHelper:v23];
  [(MailboxPickerCollectionHelper *)v23 setDelegate:self];
  [v8 setDelegate:v23];
  v24 = objc_alloc_init(UIRefreshControl);
  [(MailboxPickerOutlineController *)self setRefreshControl:v24];

  refreshControl = [(MailboxPickerOutlineController *)self refreshControl];
  [refreshControl addTarget:self action:"pulledToRefresh:" forEvents:4096];

  refreshControl2 = [(MailboxPickerOutlineController *)self refreshControl];
  collectionView2 = [(MailboxPickerOutlineController *)self collectionView];
  [collectionView2 setRefreshControl:refreshControl2];

  messageListViewController = [(MailboxPickerOutlineController *)self messageListViewController];
  v29 = NSStringFromSelector("mailboxes");
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_1000FE0C8;
  v31[3] = &unk_1006504C0;
  v31[4] = self;
  v30 = [messageListViewController ef_observeKeyPath:v29 options:1 autoCancelToken:1 usingBlock:v31];
  [(MailboxPickerOutlineController *)self setMailboxesObserverToken:v30];

  objc_destroyWeak(&v33);
  objc_destroyWeak(&v35);
  objc_destroyWeak(&location);
}

+ (id)log
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100012628;
  block[3] = &unk_10064C4F8;
  block[4] = self;
  if (qword_1006DD010 != -1)
  {
    dispatch_once(&qword_1006DD010, block);
  }

  v2 = qword_1006DD008;

  return v2;
}

- (MailboxPickerOutlineController)initWithMainScene:(id)scene favoritesManager:(id)manager accountsProvider:(id)provider
{
  sceneCopy = scene;
  managerCopy = manager;
  providerCopy = provider;
  v23.receiver = self;
  v23.super_class = MailboxPickerOutlineController;
  v11 = [(MailboxPickerOutlineController *)&v23 initWithNibName:0 bundle:0];
  if (v11)
  {
    v12 = [NSBundle bundleForClass:objc_opt_class()];
    v13 = [v12 localizedStringForKey:@"MAILBOXES" value:&stru_100662A88 table:@"Main"];
    [(MailboxPickerOutlineController *)v11 setTitle:v13];

    objc_storeStrong(&v11->_accountsProvider, provider);
    objc_storeWeak(&v11->_scene, sceneCopy);
    objc_storeStrong(&v11->_favoritesManager, manager);
    v14 = +[UIApplication sharedApplication];
    daemonInterface = [v14 daemonInterface];
    outgoingMessageRepository = [daemonInterface outgoingMessageRepository];

    v17 = [MailStatusViewController alloc];
    daemonInterface2 = [sceneCopy daemonInterface];
    mailboxRepository = [daemonInterface2 mailboxRepository];
    v20 = [(MailStatusViewController *)v17 initWithMailboxRepository:mailboxRepository outgoingMessageRepository:outgoingMessageRepository scene:sceneCopy];
    mailStatusViewController = v11->_mailStatusViewController;
    v11->_mailStatusViewController = v20;

    [(MailboxPickerOutlineController *)v11 _registerNotifications];
    [(MailboxPickerOutlineController *)v11 _updateBackButtonTitle];
  }

  return v11;
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v20.receiver = self;
  v20.super_class = MailboxPickerOutlineController;
  [(MailboxPickerOutlineController *)&v20 viewWillAppear:?];
  v6 = +[MailboxPickerOutlineController log];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = NSStringFromSelector(a2);
    *buf = 138412546;
    selfCopy = self;
    v23 = 2112;
    v24 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%@: %@", buf, 0x16u);
  }

  [(MailboxPickerOutlineController *)self _reloadDataSourceIfNeeded];
  scene = [(MailboxPickerOutlineController *)self scene];
  if (![(MailboxPickerOutlineController *)self didNotifyExtendedLaunchTracker])
  {
    extendedLaunchTracker = [scene extendedLaunchTracker];
    [extendedLaunchTracker observeViewController:self scene:scene];
  }

  [(MailboxPickerOutlineController *)self updateIsRefreshingForState:0];
  if (-[MailboxPickerOutlineController isReappearing](self, "isReappearing") && ([scene isInExpandedEnvironment] & 1) == 0)
  {
    collectionView = [(MailboxPickerOutlineController *)self collectionView];
    transitionCoordinator = [(MailboxPickerOutlineController *)self transitionCoordinator];
    [collectionView mui_interactiveDeselectAllSelectedIndexPathsUsingTransitionCoordinator:transitionCoordinator animated:1];
  }

  if ([(MailboxPickerOutlineController *)self _shouldShowMailStatus])
  {
    mailStatusViewController = [(MailboxPickerOutlineController *)self mailStatusViewController];
    statusMailboxes = [scene statusMailboxes];
    allObjects = [statusMailboxes allObjects];
    [mailStatusViewController startObservingForVisibleMailboxes:allObjects delegate:self filterPredicate:0 label:@"Mailbox picker status"];
  }

  [(MailboxPickerOutlineController *)self _updateTitle];
  [(MailboxPickerOutlineController *)self _updateToolbarItems:appearCopy];
  [(MailboxPickerOutlineController *)self _updateNavigationBarItems];
  splitViewController = [(MailboxPickerOutlineController *)self splitViewController];
  traitCollection = [splitViewController traitCollection];
  if ([traitCollection horizontalSizeClass] != 1)
  {

    goto LABEL_14;
  }

  v17 = +[UIApplication sharedApplication];
  v18 = [v17 applicationState] == 0;

  if (v18)
  {
    splitViewController = +[NSSet set];
    [scene setSelectedAccounts:splitViewController];
LABEL_14:
  }

  mailboxRepository = [(MailboxPickerOutlineController *)self mailboxRepository];
  [mailboxRepository refreshMailboxList:0];
}

- (void)viewDidAppear:(BOOL)appear
{
  v8.receiver = self;
  v8.super_class = MailboxPickerOutlineController;
  [(MailboxPickerOutlineController *)&v8 viewDidAppear:appear];
  [(MailboxPickerOutlineController *)self mf_updateAlertSuppressionContextsForReason:@"mailbox picker did appear"];
  collectionHelper = [(MailboxPickerOutlineController *)self collectionHelper];
  collectionView = [(MailboxPickerOutlineController *)self collectionView];
  [collectionHelper updatedSelectedState:collectionView];

  viewDidAppearBlock = [(MailboxPickerOutlineController *)self viewDidAppearBlock];
  v7 = viewDidAppearBlock;
  if (viewDidAppearBlock)
  {
    (*(viewDidAppearBlock + 16))(viewDidAppearBlock);
    [(MailboxPickerOutlineController *)self setViewDidAppearBlock:0];
  }
}

- (void)applicationWillSuspend
{
  v5.receiver = self;
  v5.super_class = MailboxPickerOutlineController;
  [(MailboxPickerOutlineController *)&v5 applicationWillSuspend];
  if (![(MailboxPickerOutlineController *)self showingPopoverViewController])
  {
    messageListViewController = [(MailboxPickerOutlineController *)self messageListViewController];
    showingPopoverViewController = [messageListViewController showingPopoverViewController];

    if ((showingPopoverViewController & 1) == 0)
    {
      [(MailboxPickerOutlineController *)self setEditing:0 animated:0];
    }
  }
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  v10.receiver = self;
  v10.super_class = MailboxPickerOutlineController;
  [(MailboxPickerOutlineController *)&v10 traitCollectionDidChange:changeCopy];
  if ((MUISolariumFeatureEnabled() & 1) == 0)
  {
    traitCollection = [(MailboxPickerOutlineController *)self traitCollection];
    v6 = [UIColor mailMailboxPickerBackgroundColorForTraitCollection:traitCollection];
    collectionView = [(MailboxPickerOutlineController *)self collectionView];
    [collectionView setBackgroundColor:v6];
  }

  collectionView2 = [(MailboxPickerOutlineController *)self collectionView];
  collectionViewLayout = [collectionView2 collectionViewLayout];
  [collectionViewLayout invalidateLayout];
}

- (id)_configuredSectionForSection:(int64_t)section layoutEnvironment:(id)environment
{
  environmentCopy = environment;
  traitCollection = [environmentCopy traitCollection];
  mf_useSplitViewStyling = [traitCollection mf_useSplitViewStyling];

  v9 = [UICollectionLayoutListConfiguration alloc];
  if (mf_useSplitViewStyling)
  {
    v10 = 3;
  }

  else
  {
    v10 = 2;
  }

  v11 = [v9 initWithAppearance:v10];
  collectionHelper = [(MailboxPickerOutlineController *)self collectionHelper];
  v13 = [collectionHelper sectionTypeForIndex:section];

  if (!((v13 < 2) | mf_useSplitViewStyling & 1))
  {
    [v11 setHeaderMode:2];
  }

  v14 = [NSCollectionLayoutSection sectionWithListConfiguration:v11 layoutEnvironment:environmentCopy];
  [v14 contentInsets];
  v17 = v16;
  v19 = v18;
  v20 = v15;
  v22 = v21;
  if (v13 == 3)
  {
    collectionView = [(MailboxPickerOutlineController *)self collectionView];
    v24 = [collectionView numberOfSections] - 1;

    if (v24 == section)
    {
      v15 = v20;
    }

    else
    {
      v17 = 0.0;
      v15 = 0.0;
    }
  }

  else if (v13 == 2)
  {
    v15 = 10.0;
  }

  [v14 setContentInsets:{v17, v19, v15, v22}];

  return v14;
}

- (MessageListViewController)messageListViewController
{
  messageListViewController = self->_messageListViewController;
  if (!messageListViewController)
  {
    v4 = [FavoritesShortcutsProvider alloc];
    v5 = sub_1000CD6FC();
    mailboxProvider = [v5 mailboxProvider];
    favoritesManager = [(MailboxPickerOutlineController *)self favoritesManager];
    v8 = sub_1000B9AFC(&v4->super.isa, mailboxProvider, favoritesManager);

    v9 = [MessageListViewController alloc];
    scene = [(MailboxPickerOutlineController *)self scene];
    accountsProvider = [(MailboxPickerOutlineController *)self accountsProvider];
    v12 = +[UIApplication sharedApplication];
    contactStore = [v12 contactStore];
    diagnosticsHelper = [(MailboxPickerOutlineController *)self diagnosticsHelper];
    v15 = [(MessageListViewController *)v9 initWithMainScene:scene mailboxes:0 accountsProvider:accountsProvider favoritesShortcutsProvider:v8 contactStore:contactStore diagnosticsHelper:diagnosticsHelper];
    v16 = self->_messageListViewController;
    self->_messageListViewController = v15;

    [(MessageListViewController *)self->_messageListViewController setMailboxPickerDelegate:self];
    messageListViewController = self->_messageListViewController;
  }

  return messageListViewController;
}

- (UIBarButtonItem)composeButtonItem
{
  scene = [(MailboxPickerOutlineController *)self scene];
  v4 = scene;
  if (!self->_composeButtonItem && [scene conformsToProtocol:&OBJC_PROTOCOL___ComposeCapable] && (objc_opt_respondsToSelector() & 1) != 0)
  {
    newComposeButtonItem = [v4 newComposeButtonItem];
    composeButtonItem = self->_composeButtonItem;
    self->_composeButtonItem = newComposeButtonItem;
  }

  v7 = self->_composeButtonItem;
  v8 = v7;

  return v7;
}

- (UIBarButtonItem)editButtonItem
{
  editButtonItem = self->_editButtonItem;
  if (!editButtonItem)
  {
    v4 = [UIBarButtonItem mf_newMultiBarButtonItemWithTarget:self action:"_editButtonTapped:"];
    v5 = self->_editButtonItem;
    self->_editButtonItem = v4;

    editButtonItem = self->_editButtonItem;
  }

  return editButtonItem;
}

- (UIBarButtonItem)shelfButtonItem
{
  shelfButtonItem = self->_shelfButtonItem;
  if (!shelfButtonItem)
  {
    v4 = [UIImage systemImageNamed:MFImageGlyphShelf];
    v5 = [[UIBarButtonItem alloc] initWithImage:v4 style:0 target:self action:"_shelfButtonTapped:"];
    v6 = self->_shelfButtonItem;
    self->_shelfButtonItem = v5;

    shelfButtonItem = self->_shelfButtonItem;
  }

  return shelfButtonItem;
}

- (void)_shelfButtonTapped:(id)tapped
{
  scene = [(MailboxPickerOutlineController *)self scene];
  _sceneIdentifier = [scene _sceneIdentifier];
  [MFBayAdoption requestShelfPresentationForSceneWithIdentifier:_sceneIdentifier];
}

- (void)setIsRefreshing:(BOOL)refreshing
{
  refreshingCopy = refreshing;
  if (pthread_main_np() != 1)
  {
    v7 = +[NSAssertionHandler currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"MailboxPickerOutlineController.m" lineNumber:369 description:@"Current thread must be main"];
  }

  if (self->_isRefreshing != refreshingCopy && !refreshingCopy)
  {
    self->_isRefreshing = refreshingCopy;
    refreshControl = [(MailboxPickerOutlineController *)self refreshControl];
    [refreshControl endRefreshing];
  }
}

- (void)pulledToRefresh:(id)refresh
{
  if (pthread_main_np() != 1)
  {
    v6 = +[NSAssertionHandler currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"MailboxPickerOutlineController.m" lineNumber:382 description:@"Current thread must be main"];
  }

  self->_isRefreshing = 1;
  [(MailboxPickerOutlineController *)self performSelector:"updateIsRefreshingForState:" withObject:0 afterDelay:0.0];
  mailboxRepository = [(MailboxPickerOutlineController *)self mailboxRepository];
  [mailboxRepository refreshMailboxList:1];
}

- (id)mailboxRepository
{
  scene = [(MailboxPickerOutlineController *)self scene];
  daemonInterface = [scene daemonInterface];
  mailboxRepository = [daemonInterface mailboxRepository];

  return mailboxRepository;
}

- (void)_reloadDataSourceIfNeeded
{
  if ([(MailboxPickerOutlineController *)self dataSourceNeedsReload])
  {
    [(MailboxPickerOutlineController *)self setDataSourceNeedsReload:0];
    collectionHelper = [(MailboxPickerOutlineController *)self collectionHelper];
    [collectionHelper reloadDataSource];
  }
}

- (BOOL)_selectFavoriteItem:(id)item indexPath:(id)path animated:(BOOL)animated
{
  itemCopy = item;
  pathCopy = path;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  favoritesManager = [(MailboxPickerOutlineController *)self favoritesManager];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000FEB6C;
  v14[3] = &unk_1006504E8;
  v11 = itemCopy;
  v15 = v11;
  v12 = pathCopy;
  v16 = v12;
  selfCopy = self;
  animatedCopy = animated;
  v18 = &v20;
  [favoritesManager performTransaction:v14];

  LOBYTE(itemCopy) = *(v21 + 24);
  _Block_object_dispose(&v20, 8);

  return itemCopy;
}

- (void)setDisplayMessageOnReload:(id)reload
{
  reloadCopy = reload;
  messageListViewController = [(MailboxPickerOutlineController *)self messageListViewController];
  [messageListViewController setMessageToDisplayOnReload:reloadCopy];

  [(MailboxPickerOutlineController *)self setForceReloadMessageListViewController:1];
}

- (void)showVIPSettingsAnimated:(BOOL)animated
{
  v5 = [SharedMailboxController sharedInstanceForSourceType:1];
  collectionHelper = [(MailboxPickerOutlineController *)self collectionHelper];
  [v5 presentFromSelectionTarget:collectionHelper item:0 accessoryTapped:1 animated:0];
}

- (void)selectMailbox:(id)mailbox
{
  mailboxCopy = mailbox;
  favoriteItemSelectionTarget = [(MailboxPickerOutlineController *)self favoriteItemSelectionTarget];
  [favoriteItemSelectionTarget selectMailbox:mailboxCopy item:0 animated:0];
}

- (void)selectMailbox:(id)mailbox urlQueryItems:(id)items
{
  mailboxCopy = mailbox;
  itemsCopy = items;
  favoriteItemSelectionTarget = [(MailboxPickerOutlineController *)self favoriteItemSelectionTarget];
  [favoriteItemSelectionTarget selectMailbox:mailboxCopy item:0 animated:0];

  if (itemsCopy)
  {
    [(MailboxPickerOutlineController *)self _handleUrlQueryItems:itemsCopy];
  }
}

- (void)_handleUrlQueryItems:(id)items
{
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  itemsCopy = items;
  v5 = [itemsCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = *v15;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(itemsCopy);
        }

        v8 = *(*(&v14 + 1) + 8 * i);
        name = [v8 name];
        v10 = [name isEqual:@"mailboxFilter"];

        if (v10)
        {
          value = [v8 value];
          integerValue = [value integerValue];

          messageListViewController = [(MailboxPickerOutlineController *)self messageListViewController];
          [messageListViewController filterMailboxMessagesUsingFilterMailboxType:integerValue];
        }
      }

      v5 = [itemsCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }
}

- (void)selectCombinedMailbox:(id)mailbox
{
  mailboxCopy = mailbox;
  favoriteItemSelectionTarget = [(MailboxPickerOutlineController *)self favoriteItemSelectionTarget];
  [favoriteItemSelectionTarget selectCombinedMailbox:mailboxCopy];
}

- (NSArray)suggestedFavoriteItems
{
  favoritesManager = [(MailboxPickerOutlineController *)self favoritesManager];
  suggestedFavoriteItems = [favoritesManager suggestedFavoriteItems];

  return suggestedFavoriteItems;
}

- (id)favoriteItemsMatchingName:(id)name
{
  nameCopy = name;
  favoritesManager = [(MailboxPickerOutlineController *)self favoritesManager];
  v6 = [favoritesManager itemsMatchingName:nameCopy];

  return v6;
}

- (id)favoriteItemsMatchingItemURLStrings:(id)strings
{
  stringsCopy = strings;
  favoritesManager = [(MailboxPickerOutlineController *)self favoritesManager];
  v6 = [favoritesManager itemsMatchingItemURLStrings:stringsCopy];

  return v6;
}

- (void)_editButtonTapped:(id)tapped
{
  v4 = [(MailboxPickerOutlineController *)self isEditing]^ 1;

  [(MailboxPickerOutlineController *)self setEditing:v4 animated:1];
}

- (void)_sharedMailboxControllerBadgeCountDidChange:(id)change
{
  changeCopy = change;
  object = [changeCopy object];
  v6 = +[MailboxPickerOutlineController log];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_1004886FC(changeCopy, v8, [object sourceType], v6);
  }

  collectionHelper = [(MailboxPickerOutlineController *)self collectionHelper];
  [collectionHelper updateCellForSourceType:{objc_msgSend(object, "sourceType")}];
}

- (void)_vipSendersDidChange:(id)change
{
  changeCopy = change;
  v5 = +[MailboxPickerOutlineController log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_100488754(changeCopy, v5);
  }

  collectionHelper = [(MailboxPickerOutlineController *)self collectionHelper];
  [collectionHelper updateCellForSourceType:1];
}

- (void)_contentSizeCategoryChanged:(id)changed
{
  v4 = [SharedMailboxController sharedInstanceForSourceType:4];
  [v4 invalidateIcon];

  v5 = [SharedMailboxController sharedInstanceForSourceType:2];
  [v5 invalidateIcon];

  v6 = [SharedMailboxController sharedInstanceForSourceType:3];
  [v6 invalidateIcon];

  v7 = [SharedMailboxController sharedInstanceForSourceType:1];
  [v7 invalidateIcon];

  v8 = [SharedMailboxController sharedInstanceForSourceType:5];
  [v8 invalidateIcon];

  v9 = [SharedMailboxController sharedInstanceForSourceType:6];
  [v9 invalidateIcon];

  v10 = [SharedMailboxController sharedInstanceForSourceType:8];
  [v10 invalidateIcon];

  v11 = [SharedMailboxController sharedInstanceForSourceType:7];
  [v11 invalidateIcon];

  collectionHelper = [(MailboxPickerOutlineController *)self collectionHelper];
  [collectionHelper reloadDataSource];
}

- (void)_significantTimeChange:(id)change
{
  changeCopy = change;
  if (+[NSThread isMainThread])
  {
    v5 = [SharedMailboxController sharedInstanceForSourceType:7];
    [v5 invalidateIcon];

    collectionHelper = [(MailboxPickerOutlineController *)self collectionHelper];
    [collectionHelper reloadDataSource];
  }

  else
  {
    [(MailboxPickerOutlineController *)self performSelectorOnMainThread:a2 withObject:changeCopy waitUntilDone:0];
  }
}

- (void)_watchedMailboxesDidChange:(id)change
{
  watchedMailboxes = self->_watchedMailboxes;
  self->_watchedMailboxes = 0;

  collectionHelper = [(MailboxPickerOutlineController *)self collectionHelper];
  [collectionHelper reloadDataSource];
}

- (void)_detailViewControllerConfigurationChanged:(id)changed
{
  v5 = +[MailboxPickerOutlineController log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromSelector(a2);
    v7 = 138412546;
    selfCopy = self;
    v9 = 2112;
    v10 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@: %@", &v7, 0x16u);
  }

  [(MailboxPickerOutlineController *)self _updateNavigationBarItems];
  [(MailboxPickerOutlineController *)self _updateToolbarItems:1];
  [(MailboxPickerOutlineController *)self _updateTitle];
}

- (BOOL)_isRegularWidthSolariumPad
{
  if (!MUISolariumFeatureEnabled() || !+[UIDevice mf_isPadIdiom])
  {
    return 0;
  }

  splitViewController = [(MailboxPickerOutlineController *)self splitViewController];
  traitCollection = [splitViewController traitCollection];
  v5 = [traitCollection horizontalSizeClass] == 2;

  return v5;
}

- (void)_updateToolbarItems:(BOOL)items
{
  itemsCopy = items;
  isEditing = [(MailboxPickerOutlineController *)self isEditing];

  [(MailboxPickerOutlineController *)self _updateToolbarItemsEditing:isEditing animated:itemsCopy];
}

- (void)_updateToolbarItemsEditing:(BOOL)editing animated:(BOOL)animated
{
  animatedCopy = animated;
  editingCopy = editing;
  if (!editing)
  {
    mailStatusViewController = [(MailboxPickerOutlineController *)self mailStatusViewController];
    mailStatusBarButtonItem = [mailStatusViewController mailStatusBarButtonItem];

    v38[0] = _NSConcreteStackBlock;
    v38[1] = 3221225472;
    v38[2] = sub_100100400;
    v38[3] = &unk_100650510;
    v38[4] = self;
    v18 = objc_retainBlock(v38);
    splitViewController = [(MailboxPickerOutlineController *)self splitViewController];
    isCollapsed = [splitViewController isCollapsed];

    _shouldShowMailStatusInToolbar = [(MailboxPickerOutlineController *)self _shouldShowMailStatusInToolbar];
    if ((isCollapsed & _shouldShowMailStatusInToolbar) == 1)
    {
      v22 = +[UIBarButtonItem mf_newFixedSpaceItem];
      v46[0] = v22;
      v23 = +[UIBarButtonItem mf_newFlexibleSpaceItem];
      v46[1] = v23;
      v46[2] = mailStatusBarButtonItem;
      v24 = +[UIBarButtonItem mf_newFlexibleSpaceItem];
      v46[3] = v24;
      composeButtonItem = [(MailboxPickerOutlineController *)self composeButtonItem];
      v46[4] = composeButtonItem;
      v26 = [NSArray arrayWithObjects:v46 count:5];

      v27 = (v18[2])(v18, v26);
    }

    else
    {
      if (!isCollapsed)
      {
        if (!_shouldShowMailStatusInToolbar)
        {
          v15 = &__NSArray0__struct;
          goto LABEL_11;
        }

        v34 = +[UIBarButtonItem mf_newFlexibleSpaceItem];
        v44[0] = v34;
        v44[1] = mailStatusBarButtonItem;
        v35 = +[UIBarButtonItem mf_newFlexibleSpaceItem];
        v44[2] = v35;
        v15 = [NSArray arrayWithObjects:v44 count:3];

        v26 = v34;
LABEL_10:

LABEL_11:
        goto LABEL_12;
      }

      v28 = +[UIBarButtonItem mf_newFixedSpaceItem];
      v45[0] = v28;
      v29 = +[UIBarButtonItem mf_newFlexibleSpaceItem];
      v45[1] = v29;
      composeButtonItem2 = [(MailboxPickerOutlineController *)self composeButtonItem];
      v45[2] = composeButtonItem2;
      v26 = [NSArray arrayWithObjects:v45 count:3];

      v27 = (v18[2])(v18, v26);
    }

    v15 = v27;
    goto LABEL_10;
  }

  editingToolbarItems = self->_editingToolbarItems;
  if (!editingToolbarItems)
  {
    v8 = [UIBarButtonItem alloc];
    v9 = [NSBundle bundleForClass:objc_opt_class()];
    v10 = [v9 localizedStringForKey:@"NEW_MAILBOX" value:&stru_100662A88 table:@"Main"];
    v11 = [v8 initWithTitle:v10 style:0 target:self action:"newMailboxClicked:"];

    [v11 setHidesSharedBackground:{-[MailboxPickerOutlineController _isRegularWidthSolariumPad](self, "_isRegularWidthSolariumPad")}];
    v12 = +[UIBarButtonItem mf_newFlexibleSpaceItem];
    [(MailboxPickerOutlineController *)self setAddNewMailboxButtonItem:v11];
    v43[0] = v12;
    v43[1] = v11;
    v13 = [NSArray arrayWithObjects:v43 count:2];
    v14 = self->_editingToolbarItems;
    self->_editingToolbarItems = v13;

    editingToolbarItems = self->_editingToolbarItems;
  }

  v15 = editingToolbarItems;
LABEL_12:
  v31 = +[MailboxPickerOutlineController log];
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    selfCopy = self;
    v41 = 1024;
    v42 = editingCopy;
    _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "%@: set toolbar items - editing:%d", buf, 0x12u);
  }

  [(MailboxPickerOutlineController *)self setToolbarItems:v15 animated:animatedCopy];
  if (animatedCopy)
  {
    v36[0] = _NSConcreteStackBlock;
    v36[1] = 3221225472;
    v36[2] = sub_1001004E0;
    v36[3] = &unk_10064D9D8;
    v36[4] = self;
    v37 = editingCopy;
    [UIView performWithoutAnimation:v36];
  }

  else
  {
    v32 = [(MailboxPickerOutlineController *)self _shouldShowToolbar:editingCopy];
    navigationController = [(MailboxPickerOutlineController *)self navigationController];
    [navigationController setToolbarHidden:v32 ^ 1];
  }
}

- (void)_updateNavigationBarItems
{
  isEditing = [(MailboxPickerOutlineController *)self isEditing];

  [(MailboxPickerOutlineController *)self _updateNavigationBarItemsEditing:isEditing];
}

- (void)_updateNavigationBarItemsEditing:(BOOL)editing
{
  editingCopy = editing;
  editButtonItem = [(MailboxPickerOutlineController *)self editButtonItem];
  [UIBarButtonItem mf_configureMultiBarButtonItem:editButtonItem usingStyle:editingCopy];

  [(MailboxPickerOutlineController *)self _updateEditButtonPosition];
}

- (void)_updateEditButtonPosition
{
  _isRegularWidthSolariumPad = [(MailboxPickerOutlineController *)self _isRegularWidthSolariumPad];
  navigationItem = [(MailboxPickerOutlineController *)self navigationItem];
  v6 = navigationItem;
  if (_isRegularWidthSolariumPad)
  {
    [navigationItem setRightBarButtonItem:0];

    editButtonItem = [(MailboxPickerOutlineController *)self editButtonItem];
    navigationItem2 = [(MailboxPickerOutlineController *)self navigationItem];
    [navigationItem2 setLeftBarButtonItem:editButtonItem];
  }

  else
  {
    [navigationItem setLeftBarButtonItem:0];

    editButtonItem = [(MailboxPickerOutlineController *)self editButtonItem];
    navigationItem2 = [(MailboxPickerOutlineController *)self navigationItem];
    [navigationItem2 setRightBarButtonItem:editButtonItem];
  }
}

- (BOOL)_shouldShowToolbar:(BOOL)toolbar
{
  if (toolbar)
  {
    return 1;
  }

  splitViewController = [(MailboxPickerOutlineController *)self splitViewController];
  if ([splitViewController isCollapsed])
  {
    navigationController = [(MailboxPickerOutlineController *)self navigationController];
    topViewController = [navigationController topViewController];
    v3 = topViewController == self;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)_updateTitle
{
  if (MUISolariumFeatureEnabled() && [(MailboxPickerOutlineController *)self _shouldShowMailStatus])
  {
    mailStatusViewController = [(MailboxPickerOutlineController *)self mailStatusViewController];
    primaryStatusView = [mailStatusViewController primaryStatusView];
    navigationItem = [(MailboxPickerOutlineController *)self navigationItem];
    [navigationItem setSubtitleView:primaryStatusView];

    mailStatusViewController2 = [(MailboxPickerOutlineController *)self mailStatusViewController];
    secondaryStatusView = [mailStatusViewController2 secondaryStatusView];
    navigationItem2 = [(MailboxPickerOutlineController *)self navigationItem];
    [navigationItem2 setLargeSubtitleView:secondaryStatusView];
  }

  else
  {
    navigationItem3 = [(MailboxPickerOutlineController *)self navigationItem];
    [navigationItem3 setSubtitleView:0];

    mailStatusViewController2 = [(MailboxPickerOutlineController *)self navigationItem];
    [mailStatusViewController2 setLargeSubtitleView:0];
  }
}

- (void)handleInteractiveMoveGesture:(id)gesture
{
  gestureCopy = gesture;
  state = [gestureCopy state];
  view = [gestureCopy view];
  [gestureCopy locationInView:view];
  v7 = v6;
  v9 = v8;

  view2 = [gestureCopy view];
  v11 = view2;
  if (state > 2)
  {
    if ((state - 4) >= 2)
    {
      if (state != 3 || ![(MailboxPickerOutlineController *)self isReordering])
      {
        goto LABEL_17;
      }

      [v11 endInteractiveMovement];
      collectionHelper = [(MailboxPickerOutlineController *)self collectionHelper];
      [collectionHelper updateMailboxSelectionAnimated:1 scrollToSelected:0];

LABEL_13:
      [(MailboxPickerOutlineController *)self setIsReordering:0];
      goto LABEL_17;
    }

LABEL_8:
    if (![(MailboxPickerOutlineController *)self isReordering])
    {
      goto LABEL_17;
    }

    [v11 cancelInteractiveMovement];
    goto LABEL_13;
  }

  if (!state)
  {
    goto LABEL_8;
  }

  if (state == 1)
  {
    v13 = [view2 indexPathForItemAtPoint:{v7, v9}];
    if (v13)
    {
      -[MailboxPickerOutlineController setIsReordering:](self, "setIsReordering:", [v11 beginInteractiveMovementForItemAtIndexPath:v13]);
    }
  }

  else if (state == 2 && [(MailboxPickerOutlineController *)self isReordering])
  {
    [v11 updateInteractiveMovementTargetPosition:{v7, v9}];
  }

LABEL_17:
}

- (void)_useSplitViewControllerToShowViewController:(id)controller animated:(BOOL)animated
{
  controllerCopy = controller;
  v7 = controllerCopy;
  if (animated)
  {
    splitViewController = [(MailboxPickerOutlineController *)self splitViewController];
    [splitViewController showViewController:v7 sender:0];
  }

  else
  {
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100100BB8;
    v9[3] = &unk_10064C660;
    v9[4] = self;
    v10 = controllerCopy;
    [UIView performWithoutAnimation:v9];
  }
}

- (void)_popToMailboxPickerController:(BOOL)controller andPushMessageListViewControllerIfNecessaryAnimated:(BOOL)animated
{
  animatedCopy = animated;
  if (controller)
  {
    navigationController = [(MailboxPickerOutlineController *)self navigationController];
    topViewController = [navigationController topViewController];

    if (topViewController == self)
    {
      splitViewController = [(MailboxPickerOutlineController *)self splitViewController];
      isCollapsed = [splitViewController isCollapsed];

      if ((isCollapsed & 1) == 0)
      {
        splitViewController2 = [(MailboxPickerOutlineController *)self splitViewController];
        displayMode = [splitViewController2 displayMode];

        if ((displayMode - 5) <= 1)
        {
          v14 = +[MailboxPickerOutlineController log];
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            v15 = _UISplitViewControllerDisplayModeDescription();
            *buf = 138412290;
            v27 = v15;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Hiding mailbox picker. UISplitViewControllerDisplayMode: %@", buf, 0xCu);
          }

          v16 = +[EFScheduler mainThreadScheduler];
          v25[0] = _NSConcreteStackBlock;
          v25[1] = 3221225472;
          v25[2] = sub_100100F60;
          v25[3] = &unk_10064C7E8;
          v25[4] = self;
          v17 = [v16 afterDelay:v25 performBlock:0.25];
        }
      }
    }

    else
    {
      navigationController2 = [(MailboxPickerOutlineController *)self navigationController];
      v9 = [navigationController2 popToViewController:self animated:animatedCopy];
    }
  }

  collectionHelper = [(MailboxPickerOutlineController *)self collectionHelper];
  mailboxesForMessageList = [collectionHelper mailboxesForMessageList];
  firstObject = [mailboxesForMessageList firstObject];

  v21 = +[MailboxPickerOutlineController log];
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    ef_publicDescription = [firstObject ef_publicDescription];
    *buf = 138543362;
    v27 = ef_publicDescription;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Presenting message list for mailboxes %{public}@", buf, 0xCu);
  }

  collectionHelper2 = [(MailboxPickerOutlineController *)self collectionHelper];
  mailboxesForMessageList2 = [collectionHelper2 mailboxesForMessageList];
  [(MailboxPickerOutlineController *)self _presentMessageListViewControllerForMailboxes:mailboxesForMessageList2 animated:animatedCopy];
}

- (void)_presentViewControllerInPopover:(id)popover barButtonItem:(id)item animated:(BOOL)animated
{
  animatedCopy = animated;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1001010AC;
  v9[3] = &unk_100650538;
  itemCopy = item;
  v8 = itemCopy;
  [(MailboxPickerOutlineController *)self _presentViewControllerInPopover:popover animated:animatedCopy block:v9];
}

- (void)_presentViewControllerInPopover:(id)popover sourceView:(id)view animated:(BOOL)animated
{
  animatedCopy = animated;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10010117C;
  v9[3] = &unk_100650538;
  viewCopy = view;
  v8 = viewCopy;
  [(MailboxPickerOutlineController *)self _presentViewControllerInPopover:popover animated:animatedCopy block:v9];
}

- (void)_presentViewControllerInPopover:(id)popover animated:(BOOL)animated block:(id)block
{
  animatedCopy = animated;
  popoverCopy = popover;
  blockCopy = block;
  v9 = [[UINavigationController alloc] initWithRootViewController:popoverCopy];
  [v9 setModalPresentationStyle:7];
  popoverPresentationController = [v9 popoverPresentationController];
  blockCopy[2](blockCopy, popoverPresentationController);

  [(MailboxPickerOutlineController *)self presentViewController:v9 animated:animatedCopy completion:0];
}

- (void)_presentMailboxEditControllerForAccount:(id)account mailbox:(id)mailbox animated:(BOOL)animated
{
  animatedCopy = animated;
  accountCopy = account;
  mailboxCopy = mailbox;
  v10 = mailboxCopy;
  if (!accountCopy && mailboxCopy)
  {
    accountCopy = [mailboxCopy account];
  }

  if (accountCopy)
  {
    v27 = accountCopy;
    v11 = [NSArray arrayWithObjects:&v27 count:1];
  }

  else
  {
    favoritesManager = [(MailboxPickerOutlineController *)self favoritesManager];
    accountsCollection = [favoritesManager accountsCollection];

    v11 = objc_alloc_init(NSMutableArray);
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    items = [accountsCollection items];
    v14 = [items countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v14)
    {
      v15 = *v23;
      do
      {
        for (i = 0; i != v14; i = i + 1)
        {
          if (*v23 != v15)
          {
            objc_enumerationMutation(items);
          }

          v17 = *(*(&v22 + 1) + 8 * i);
          if ([v17 isVisible] && objc_msgSend(v17, "type") == 1)
          {
            account = [v17 account];
            [v11 addObject:account];
          }
        }

        v14 = [items countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v14);
    }
  }

  v19 = [[MailboxEditingController alloc] initWithMailbox:v10 account:accountCopy validAccounts:v11];
  [(MailboxEditingController *)v19 setDelegate:self];
  lastObject = [(NSArray *)self->_editingToolbarItems lastObject];
  [(MailboxPickerOutlineController *)self _presentViewControllerInPopover:v19 barButtonItem:lastObject animated:animatedCopy];
}

- (BOOL)showingPopoverViewController
{
  presentedViewController = [(MailboxPickerOutlineController *)self presentedViewController];
  popoverPresentationController = [presentedViewController popoverPresentationController];

  barButtonItem = [popoverPresentationController barButtonItem];
  if (barButtonItem && (-[MailboxPickerOutlineController editingToolbarItems](self, "editingToolbarItems"), v6 = objc_claimAutoreleasedReturnValue(), [popoverPresentationController barButtonItem], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v6, "containsObject:", v7), v7, v6, barButtonItem, (v8 & 1) != 0))
  {
    v9 = 1;
  }

  else
  {
    sourceView = [popoverPresentationController sourceView];
    view = [(MailboxPickerOutlineController *)self view];
    v9 = [sourceView isDescendantOfView:view];
  }

  return v9;
}

- (void)_dismissCustomViewController:(id)controller
{
  [(MailboxPickerOutlineController *)self dismissViewControllerAnimated:1 completion:0];
  collectionView = [(MailboxPickerOutlineController *)self collectionView];
  transitionCoordinator = [(MailboxPickerOutlineController *)self transitionCoordinator];
  [collectionView mui_interactiveDeselectAllSelectedIndexPathsUsingTransitionCoordinator:transitionCoordinator animated:1];
}

- (void)updateForSplitViewCollapseStateChanged:(BOOL)changed
{
  if (!changed)
  {
    favoritesManager = [(MailboxPickerOutlineController *)self favoritesManager];
    lastSelectedItem = [favoritesManager lastSelectedItem];

    if (lastSelectedItem)
    {
      collectionHelper = [(MailboxPickerOutlineController *)self collectionHelper];
      v8 = [collectionHelper indexPathForItem:lastSelectedItem];

      collectionView = [(MailboxPickerOutlineController *)self collectionView];
      if ([collectionView mf_isIndexPathValid:v8])
      {
        [collectionView scrollToItemAtIndexPath:v8 atScrollPosition:0 animated:0];
        v10 = dispatch_time(0, 0);
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_1001019CC;
        block[3] = &unk_10064C6B0;
        v14 = collectionView;
        v15 = v8;
        selfCopy = self;
        dispatch_after(v10, &_dispatch_main_q, block);

        v11 = v14;
      }

      else
      {
        v11 = +[MailboxPickerOutlineController log];
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          v12 = NSStringFromSelector(a2);
          *buf = 138412802;
          v18 = v12;
          v19 = 2114;
          v20 = v8;
          v21 = 2114;
          v22 = collectionView;
          _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%@ - invalid lastSelectedIndexPath:%{public}@ for collectionView:%{public}@", buf, 0x20u);
        }
      }
    }
  }
}

- (void)presentationControllerWillDismiss:(id)dismiss
{
  collectionView = [(MailboxPickerOutlineController *)self collectionView];
  transitionCoordinator = [(MailboxPickerOutlineController *)self transitionCoordinator];
  [collectionView mui_interactiveDeselectAllSelectedIndexPathsUsingTransitionCoordinator:transitionCoordinator animated:1];
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  beginCopy = begin;
  interactiveMoveGestureRecognizer = [(MailboxPickerOutlineController *)self interactiveMoveGestureRecognizer];

  if (interactiveMoveGestureRecognizer == beginCopy)
  {
    collectionView = [(MailboxPickerOutlineController *)self collectionView];
    [beginCopy locationInView:collectionView];
    v9 = v8;
    v11 = v10;

    collectionView2 = [(MailboxPickerOutlineController *)self collectionView];
    v13 = [collectionView2 indexPathForItemAtPoint:{v9, v11}];

    if (v13)
    {
      collectionHelper = [(MailboxPickerOutlineController *)self collectionHelper];
      v6 = [collectionHelper canReorderItemAtIndexPath:v13];
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (void)_presentMessageListViewControllerForMailboxes:(id)mailboxes animated:(BOOL)animated
{
  animatedCopy = animated;
  mailboxesCopy = mailboxes;
  messageListViewController = [(MailboxPickerOutlineController *)self messageListViewController];
  if ([messageListViewController isEditing])
  {
    [messageListViewController setEditing:0];
  }

  [messageListViewController setMailboxes:mailboxesCopy forceReload:{-[MailboxPickerOutlineController forceReloadMessageListViewController](self, "forceReloadMessageListViewController")}];
  [(MailboxPickerOutlineController *)self setForceReloadMessageListViewController:0];
  scene = [(MailboxPickerOutlineController *)self scene];
  splitViewController = [scene splitViewController];
  [splitViewController showMessageListViewController:1 animated:animatedCopy completion:0];
}

- (void)messageListViewController:(id)controller setEditing:(BOOL)editing animated:(BOOL)animated
{
  editingCopy = editing;
  v9 = [(MailboxPickerOutlineController *)self navigationItem:controller];
  leftBarButtonItem = [v9 leftBarButtonItem];
  [leftBarButtonItem setEnabled:!editingCopy];

  navigationItem = [(MailboxPickerOutlineController *)self navigationItem];
  rightBarButtonItem = [navigationItem rightBarButtonItem];
  [rightBarButtonItem setEnabled:!editingCopy];
}

- (void)messageListViewController:(id)controller didSelectFavorite:(id)favorite
{
  favoriteCopy = favorite;
  [MailboxPickerOutlineController _selectFavoriteItem:"_selectFavoriteItem:indexPath:animated:" indexPath:? animated:?];
  [(MailboxPickerOutlineController *)self _updateBackButtonTitle];
}

- (void)messageListViewControllerWantsToSelectPreviousFavoriteItem:(id)item
{
  [(MailboxPickerOutlineController *)self loadViewIfNeeded];
  [(MailboxPickerOutlineController *)self _reloadDataSourceIfNeeded];
  favoritesManager = [(MailboxPickerOutlineController *)self favoritesManager];
  lastSelectedItem = [favoritesManager lastSelectedItem];

  collectionHelper = [(MailboxPickerOutlineController *)self collectionHelper];
  v6 = [collectionHelper favoriteItemBeforeItem:lastSelectedItem];

  if (v6)
  {
    [(MailboxPickerOutlineController *)self _selectFavoriteItem:v6 indexPath:0 animated:1];
  }
}

- (void)messageListViewControllerWantsToSelectNextFavoriteItem:(id)item
{
  [(MailboxPickerOutlineController *)self loadViewIfNeeded];
  [(MailboxPickerOutlineController *)self _reloadDataSourceIfNeeded];
  favoritesManager = [(MailboxPickerOutlineController *)self favoritesManager];
  lastSelectedItem = [favoritesManager lastSelectedItem];

  collectionHelper = [(MailboxPickerOutlineController *)self collectionHelper];
  v6 = [collectionHelper favoriteItemAfterItem:lastSelectedItem];

  if (v6)
  {
    [(MailboxPickerOutlineController *)self _selectFavoriteItem:v6 indexPath:0 animated:1];
  }
}

- (id)displayedAccountsForMailboxCollectionHelper:(id)helper
{
  accountsProvider = [(MailboxPickerOutlineController *)self accountsProvider];
  displayedAccounts = [accountsProvider displayedAccounts];

  return displayedAccounts;
}

- (BOOL)mailboxCollectionHelper:(id)helper shouldDisableForEditingCellForMailbox:(id)mailbox
{
  mailboxCopy = mailbox;
  watchedMailboxes = [(MailboxPickerOutlineController *)self watchedMailboxes];
  v7 = [watchedMailboxes containsObject:mailboxCopy];

  return v7;
}

- (void)mailboxCollectionHelperDidTapDetailsDisclosure:(id)disclosure sender:(id)sender
{
  senderCopy = sender;
  collectionView = [(MailboxPickerOutlineController *)self collectionView];
  [senderCopy frame];
  v7 = v6;
  v9 = v8;
  superview = [senderCopy superview];
  [collectionView convertPoint:superview fromView:{v7, v9}];
  v12 = v11;
  v14 = v13;

  v15 = [collectionView indexPathForItemAtPoint:{v12, v14}];
  collectionHelper = [(MailboxPickerOutlineController *)self collectionHelper];
  v17 = [collectionHelper favoriteItemAtIndexPath:v15];

  collectionHelper2 = [(MailboxPickerOutlineController *)self collectionHelper];
  [v17 wasSelected:collectionHelper2 indexPath:v15 accessoryTapped:1 animated:1];
}

- (BOOL)mailboxCollectionHelperShouldUpdateMailboxSelection:(id)selection
{
  isViewLoaded = [(MailboxPickerOutlineController *)self isViewLoaded];
  if (isViewLoaded)
  {
    LOBYTE(isViewLoaded) = ![(MailboxPickerOutlineController *)self showingPopoverViewController];
  }

  return isViewLoaded;
}

- (BOOL)mailboxCollectionHelperSplitViewControllerIsCollapsed:(id)collapsed
{
  splitViewController = [(MailboxPickerOutlineController *)self splitViewController];
  isCollapsed = [splitViewController isCollapsed];

  return isCollapsed;
}

- (void)mailboxCollectionHelperWantsToShowAddFavoritesController:(id)controller sourceView:(id)view
{
  viewCopy = view;
  v5 = [EditFavoritesController alloc];
  accountsProvider = [(MailboxPickerOutlineController *)self accountsProvider];
  favoritesManager = [(MailboxPickerOutlineController *)self favoritesManager];
  v8 = [(EditFavoritesController *)v5 initWithAccountsProvider:accountsProvider favoritesManager:favoritesManager];

  [(EditFavoritesController *)v8 setDelegate:self];
  navigationItem = [(EditFavoritesController *)v8 navigationItem];
  [navigationItem setHidesBackButton:1];

  [(MailboxPickerOutlineController *)self _presentViewControllerInPopover:v8 sourceView:viewCopy animated:1];
}

- (void)mailboxCollectionHelper:(id)helper wantsToPopToMailboxPicker:(BOOL)picker andPushMessageListViewControllerIfNecessaryAnimated:(BOOL)animated
{
  animatedCopy = animated;
  pickerCopy = picker;
  v8 = [NSBundle bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"MAILBOXES_BACK_BUTTON" value:&stru_100662A88 table:@"Main"];
  navigationItem = [(MailboxPickerOutlineController *)self navigationItem];
  [navigationItem setBackButtonTitle:v9];

  [(MailboxPickerOutlineController *)self setForceReloadMessageListViewController:1];

  [(MailboxPickerOutlineController *)self _popToMailboxPickerController:pickerCopy andPushMessageListViewControllerIfNecessaryAnimated:animatedCopy];
}

- (void)mailboxCollectionHelper:(id)helper wantsToShowCustomViewController:(id)controller animated:(BOOL)animated sourceViewBlock:(id)block
{
  animatedCopy = animated;
  controllerCopy = controller;
  blockCopy = block;
  v11 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:1 target:self action:"_dismissCustomViewController:"];
  navigationItem = [controllerCopy navigationItem];
  v22 = v11;
  v13 = [NSArray arrayWithObjects:&v22 count:1];
  [navigationItem setLeftBarButtonItems:v13 animated:1];

  scene = [(MailboxPickerOutlineController *)self scene];
  splitViewController = [scene splitViewController];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1001027F0;
  v18[3] = &unk_1006505D8;
  v18[4] = self;
  v16 = controllerCopy;
  v19 = v16;
  v21 = animatedCopy;
  v17 = blockCopy;
  v20 = v17;
  [splitViewController showMailboxPickerController:1 animated:animatedCopy completion:v18];
}

- (void)mailboxCollectionHelper:(id)helper wantsToPresentMailboxEditControllerForMailbox:(id)mailbox animated:(BOOL)animated
{
  animatedCopy = animated;
  mailboxCopy = mailbox;
  account = [mailboxCopy account];
  [(MailboxPickerOutlineController *)self _presentMailboxEditControllerForAccount:account mailbox:mailboxCopy animated:animatedCopy];
}

- (void)mailboxCollectionHelper:(id)helper wantsToSelectMailbox:(id)mailbox account:(id)account animated:(BOOL)animated
{
  animatedCopy = animated;
  v8 = [(MailboxPickerOutlineController *)self navigationController:helper];
  topViewController = [v8 topViewController];

  if (topViewController != self)
  {
    navigationController = [(MailboxPickerOutlineController *)self navigationController];
    v11 = [navigationController popToViewController:self animated:animatedCopy];
  }

  [(MailboxPickerOutlineController *)self _updateBackButtonTitle];
  collectionHelper = [(MailboxPickerOutlineController *)self collectionHelper];
  [collectionHelper updateMailboxSelectionAnimated:0 scrollToSelected:1];

  [(MailboxPickerOutlineController *)self _popToMailboxPickerController:1 andPushMessageListViewControllerIfNecessaryAnimated:animatedCopy];
}

- (id)mailboxPickerDragDropHelper:(id)helper favoriteItemAtIndexPath:(id)path
{
  pathCopy = path;
  collectionHelper = [(MailboxPickerOutlineController *)self collectionHelper];
  v7 = [collectionHelper favoriteItemAtIndexPath:pathCopy];

  return v7;
}

- (id)mailboxPickerDragDropHelper:(id)helper mailboxForMailboxUid:(id)uid
{
  uidCopy = uid;
  collectionHelper = [(MailboxPickerOutlineController *)self collectionHelper];
  v11 = uidCopy;
  v7 = [NSArray arrayWithObjects:&v11 count:1];
  v8 = [collectionHelper createMailboxesFromUids:v7];
  firstObject = [v8 firstObject];

  return firstObject;
}

- (void)updateIsRefreshingForState:(id)state
{
  stateCopy = state;
  v7 = stateCopy;
  if (stateCopy)
  {
    integerValue = [stateCopy integerValue];
  }

  else
  {
    mailStatusViewController = [(MailboxPickerOutlineController *)self mailStatusViewController];
    integerValue = [mailStatusViewController currentState];
  }

  [(MailboxPickerOutlineController *)self setIsRefreshing:integerValue == 2];
}

- (BOOL)_shouldShowMailStatus
{
  splitViewController = [(MailboxPickerOutlineController *)self splitViewController];
  isCollapsed = [splitViewController isCollapsed];

  return isCollapsed;
}

- (BOOL)_shouldShowMailStatusInToolbar
{
  if (MUISolariumFeatureEnabled())
  {
    return 0;
  }

  return [(MailboxPickerOutlineController *)self _shouldShowMailStatus];
}

- (id)mailboxQualifier
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"UNREAD_FORMAT" value:&stru_100662A88 table:@"Main"];

  return v3;
}

- (void)mailStatus:(id)status didChangeState:(int64_t)state
{
  v5 = [NSNumber numberWithInteger:state];
  [MailboxPickerOutlineController performSelectorOnMainThread:"performSelectorOnMainThread:withObject:waitUntilDone:" withObject:"updateIsRefreshingForState:" waitUntilDone:?];
}

- (void)mailStatusViewControllerUndoButtonTapped:(id)tapped
{
  v3 = +[UIApplication sharedApplication];
  daemonInterface = [v3 daemonInterface];
  outgoingMessageRepository = [daemonInterface outgoingMessageRepository];

  [outgoingMessageRepository cancelLastDelayedMessage:&stru_100650618];
}

- (void)setEditing:(BOOL)editing animated:(BOOL)animated
{
  animatedCopy = animated;
  editingCopy = editing;
  isEditing = [(MailboxPickerOutlineController *)self isEditing];
  v12.receiver = self;
  v12.super_class = MailboxPickerOutlineController;
  [(MailboxPickerOutlineController *)&v12 setEditing:editingCopy animated:animatedCopy];
  if (isEditing != editingCopy)
  {
    [(MailboxPickerOutlineController *)self _updateNavigationBarItemsEditing:editingCopy];
    [(MailboxPickerOutlineController *)self _updateToolbarItemsEditing:editingCopy animated:animatedCopy];
    if (editingCopy)
    {
      [(MailboxPickerOutlineController *)self focus:animatedCopy];
      v8 = MUISolariumFeatureEnabled();
      navigationItem = [(MailboxPickerOutlineController *)self navigationItem];
      leftBarButtonItem = [navigationItem leftBarButtonItem];
      [leftBarButtonItem setEnabled:v8];
    }

    else
    {
      [(MailboxPickerOutlineController *)self unfocus:animatedCopy];
      navigationItem = [(MailboxPickerOutlineController *)self navigationItem];
      leftBarButtonItem = [navigationItem leftBarButtonItem];
      [leftBarButtonItem setEnabled:1];
    }

    collectionHelper = [(MailboxPickerOutlineController *)self collectionHelper];
    [collectionHelper setEditing:editingCopy animated:animatedCopy];

    [(MailboxPickerOutlineController *)self _dismissEditViewControllers];
  }
}

- (void)_dismissEditViewControllers
{
  presentedViewController = [(MailboxPickerOutlineController *)self presentedViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = presentedViewController;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  topViewController = [v4 topViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    [(MailboxPickerOutlineController *)self dismissViewControllerAnimated:1 completion:0];
  }
}

- (BOOL)canPerformAction:(SEL)action withSender:(id)sender
{
  senderCopy = sender;
  if ("_escapeShortcutInvoked:" == action)
  {
    isEditing = [(MailboxPickerOutlineController *)self isEditing];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = MailboxPickerOutlineController;
    isEditing = [(MailboxPickerOutlineController *)&v10 canPerformAction:action withSender:senderCopy];
  }

  v8 = isEditing;

  return v8;
}

- (void)_escapeShortcutInvoked:(id)invoked
{
  invokedCopy = invoked;
  if ([(MailboxPickerOutlineController *)self isEditing])
  {
    [(MailboxPickerOutlineController *)self _editButtonTapped:invokedCopy];
  }
}

- (void)mailboxEditingControllerDidFinish:(id)finish
{
  presentedViewController = [(MailboxPickerOutlineController *)self presentedViewController];

  if (presentedViewController)
  {

    [(MailboxPickerOutlineController *)self dismissViewControllerAnimated:1 completion:0];
  }

  else
  {
    navigationController = [(MailboxPickerOutlineController *)self navigationController];
    v5 = [navigationController popViewControllerAnimated:1];
  }
}

- (void)editFavoritesControllerDidFinish:(id)finish
{
  finishCopy = finish;
  presentedViewController = [(MailboxPickerOutlineController *)self presentedViewController];

  if (presentedViewController)
  {
    [(MailboxPickerOutlineController *)self dismissViewControllerAnimated:1 completion:0];
  }

  else
  {
    navigationController = [(MailboxPickerOutlineController *)self navigationController];
    v7 = [navigationController popViewControllerAnimated:1];
  }

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10010381C;
  v9[3] = &unk_10064C660;
  v10 = finishCopy;
  selfCopy = self;
  v8 = finishCopy;
  dispatch_async(&_dispatch_main_q, v9);
}

- (void)updateEditButtonPositionAndNavigationBarTitleHidden:(BOOL)hidden
{
  if (hidden)
  {
    v6 = 0;
  }

  else
  {
    v3 = [NSBundle bundleForClass:objc_opt_class()];
    v6 = [v3 localizedStringForKey:@"MAILBOXES" value:&stru_100662A88 table:@"Main"];
  }

  [(MailboxPickerOutlineController *)self setTitle:v6];
  if (!hidden)
  {
  }

  [(MailboxPickerOutlineController *)self _updateEditButtonPosition];
}

@end