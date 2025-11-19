@interface MailboxPickerOutlineController
+ (id)log;
- (BOOL)_isRegularWidthSolariumPad;
- (BOOL)_selectFavoriteItem:(id)a3 indexPath:(id)a4 animated:(BOOL)a5;
- (BOOL)_shouldShowMailStatus;
- (BOOL)_shouldShowMailStatusInToolbar;
- (BOOL)_shouldShowToolbar:(BOOL)a3;
- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4;
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (BOOL)mailboxCollectionHelper:(id)a3 shouldDisableForEditingCellForMailbox:(id)a4;
- (BOOL)mailboxCollectionHelperShouldUpdateMailboxSelection:(id)a3;
- (BOOL)mailboxCollectionHelperSplitViewControllerIsCollapsed:(id)a3;
- (BOOL)showingPopoverViewController;
- (EMDiagnosticsHelper)diagnosticsHelper;
- (FavoriteItemSelectionTarget)favoriteItemSelectionTarget;
- (MailMainScene)scene;
- (MailboxPickerOutlineController)initWithMainScene:(id)a3 favoritesManager:(id)a4 accountsProvider:(id)a5;
- (MessageListViewController)messageListViewController;
- (NSArray)suggestedFavoriteItems;
- (UIBarButtonItem)composeButtonItem;
- (UIBarButtonItem)editButtonItem;
- (UIBarButtonItem)shelfButtonItem;
- (id)_configuredSectionForSection:(int64_t)a3 layoutEnvironment:(id)a4;
- (id)displayedAccountsForMailboxCollectionHelper:(id)a3;
- (id)favoriteItemsMatchingItemURLStrings:(id)a3;
- (id)favoriteItemsMatchingName:(id)a3;
- (id)mailboxPickerDragDropHelper:(id)a3 favoriteItemAtIndexPath:(id)a4;
- (id)mailboxPickerDragDropHelper:(id)a3 mailboxForMailboxUid:(id)a4;
- (id)mailboxQualifier;
- (id)mailboxRepository;
- (void)_configureCollectionView;
- (void)_contentSizeCategoryChanged:(id)a3;
- (void)_detailViewControllerConfigurationChanged:(id)a3;
- (void)_dismissCustomViewController:(id)a3;
- (void)_dismissEditViewControllers;
- (void)_editButtonTapped:(id)a3;
- (void)_escapeShortcutInvoked:(id)a3;
- (void)_handleUrlQueryItems:(id)a3;
- (void)_popToMailboxPickerController:(BOOL)a3 andPushMessageListViewControllerIfNecessaryAnimated:(BOOL)a4;
- (void)_presentMailboxEditControllerForAccount:(id)a3 mailbox:(id)a4 animated:(BOOL)a5;
- (void)_presentMessageListViewControllerForMailboxes:(id)a3 animated:(BOOL)a4;
- (void)_presentViewControllerInPopover:(id)a3 animated:(BOOL)a4 block:(id)a5;
- (void)_presentViewControllerInPopover:(id)a3 barButtonItem:(id)a4 animated:(BOOL)a5;
- (void)_presentViewControllerInPopover:(id)a3 sourceView:(id)a4 animated:(BOOL)a5;
- (void)_registerNotifications;
- (void)_reloadDataSourceIfNeeded;
- (void)_sharedMailboxControllerBadgeCountDidChange:(id)a3;
- (void)_shelfButtonTapped:(id)a3;
- (void)_significantTimeChange:(id)a3;
- (void)_updateBackButtonTitle;
- (void)_updateEditButtonPosition;
- (void)_updateNavigationBarItems;
- (void)_updateNavigationBarItemsEditing:(BOOL)a3;
- (void)_updateTitle;
- (void)_updateToolbarItems:(BOOL)a3;
- (void)_updateToolbarItemsEditing:(BOOL)a3 animated:(BOOL)a4;
- (void)_useSplitViewControllerToShowViewController:(id)a3 animated:(BOOL)a4;
- (void)_vipSendersDidChange:(id)a3;
- (void)_watchedMailboxesDidChange:(id)a3;
- (void)applicationWillSuspend;
- (void)editFavoritesControllerDidFinish:(id)a3;
- (void)handleInteractiveMoveGesture:(id)a3;
- (void)mailStatus:(id)a3 didChangeState:(int64_t)a4;
- (void)mailStatusViewControllerUndoButtonTapped:(id)a3;
- (void)mailboxCollectionHelper:(id)a3 wantsToPopToMailboxPicker:(BOOL)a4 andPushMessageListViewControllerIfNecessaryAnimated:(BOOL)a5;
- (void)mailboxCollectionHelper:(id)a3 wantsToPresentMailboxEditControllerForMailbox:(id)a4 animated:(BOOL)a5;
- (void)mailboxCollectionHelper:(id)a3 wantsToSelectMailbox:(id)a4 account:(id)a5 animated:(BOOL)a6;
- (void)mailboxCollectionHelper:(id)a3 wantsToShowCustomViewController:(id)a4 animated:(BOOL)a5 sourceViewBlock:(id)a6;
- (void)mailboxCollectionHelperDidTapDetailsDisclosure:(id)a3 sender:(id)a4;
- (void)mailboxCollectionHelperWantsToShowAddFavoritesController:(id)a3 sourceView:(id)a4;
- (void)mailboxEditingControllerDidFinish:(id)a3;
- (void)messageListViewController:(id)a3 didSelectFavorite:(id)a4;
- (void)messageListViewController:(id)a3 setEditing:(BOOL)a4 animated:(BOOL)a5;
- (void)messageListViewControllerWantsToSelectNextFavoriteItem:(id)a3;
- (void)messageListViewControllerWantsToSelectPreviousFavoriteItem:(id)a3;
- (void)presentationControllerWillDismiss:(id)a3;
- (void)pulledToRefresh:(id)a3;
- (void)selectCombinedMailbox:(id)a3;
- (void)selectMailbox:(id)a3;
- (void)selectMailbox:(id)a3 urlQueryItems:(id)a4;
- (void)setDisplayMessageOnReload:(id)a3;
- (void)setEditing:(BOOL)a3 animated:(BOOL)a4;
- (void)setIsRefreshing:(BOOL)a3;
- (void)showVIPSettingsAnimated:(BOOL)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateEditButtonPositionAndNavigationBarTitleHidden:(BOOL)a3;
- (void)updateForSplitViewCollapseStateChanged:(BOOL)a3;
- (void)updateIsRefreshingForState:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
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
    v5 = [(MailboxPickerOutlineController *)self scene];
    v6 = [v5 daemonInterface];
    v7 = [v4 initWithDaemonInterface:v6];
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
  v3 = [(MailboxPickerOutlineController *)self accountsProvider];
  v4 = [v3 isDisplayingMultipleAccounts];

  if (!v4 || (-[FavoritesManager lastSelectedItem](self->_favoritesManager, "lastSelectedItem"), v5 = objc_claimAutoreleasedReturnValue(), [v5 account], v6 = objc_claimAutoreleasedReturnValue(), v5, objc_msgSend(v6, "displayName"), v10 = objc_claimAutoreleasedReturnValue(), v6, !v10))
  {
    v7 = [NSBundle bundleForClass:objc_opt_class()];
    v10 = [v7 localizedStringForKey:@"MAILBOXES_BACK_BUTTON" value:&stru_100662A88 table:@"Main"];
  }

  v8 = [(MailboxPickerOutlineController *)self navigationItem];
  [v8 setBackButtonTitle:v10];

  v9 = [(MailboxPickerOutlineController *)self navigationItem];
  [v9 setBackButtonDisplayMode:2];
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
  v3 = [(MailboxPickerOutlineController *)self view];
  [v3 setAccessibilityIdentifier:MSAccessibilityIdentifierFilterCardMailboxPicker];

  [(MailboxPickerOutlineController *)self setDataSourceNeedsReload:1];
  [(MailboxPickerOutlineController *)self _configureCollectionView];
  if (MUISolariumFeatureEnabled())
  {
    if (+[UIDevice mf_isPadIdiom])
    {
      objc_initWeak(&location, self);
      v4 = [(MailboxPickerOutlineController *)self splitViewController];
      v11 = objc_opt_class();
      v5 = [NSArray arrayWithObjects:&v11 count:1];
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 3221225472;
      v7[2] = sub_1000FD84C;
      v7[3] = &unk_100650498;
      objc_copyWeak(&v8, &location);
      v6 = [v4 registerForTraitChanges:v5 withHandler:v7];

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
  v7 = [(MailboxPickerOutlineController *)self view];
  [v7 bounds];
  v8 = [v6 initWithFrame:v4 collectionViewLayout:?];

  [v8 setAutoresizingMask:18];
  if ((MUISolariumFeatureEnabled() & 1) == 0)
  {
    v9 = [(MailboxPickerOutlineController *)self traitCollection];
    v10 = [UIColor mailMailboxPickerBackgroundColorForTraitCollection:v9];
    [v8 setBackgroundColor:v10];
  }

  [v8 setAlwaysBounceVertical:1];
  v11 = [(MailboxPickerOutlineController *)self dragDropHelper];
  [v8 setDropDelegate:v11];

  [v8 setSpringLoaded:1];
  [v8 setAllowsMultipleSelectionDuringEditing:1];
  [v8 setAccessibilityIdentifier:MSAccessibilityIdentifierMailboxList];
  [v8 _setDelaysUserInitiatedItemSelection:1];
  v12 = [(MailboxPickerOutlineController *)self view];
  [v12 addSubview:v8];

  [(MailboxPickerOutlineController *)self setCollectionView:v8];
  v13 = [[UILongPressGestureRecognizer alloc] initWithTarget:self action:"handleInteractiveMoveGesture:"];
  [(MailboxPickerOutlineController *)self setInteractiveMoveGestureRecognizer:v13];

  v14 = [(MailboxPickerOutlineController *)self interactiveMoveGestureRecognizer];
  [v14 setDelegate:self];

  v15 = [(MailboxPickerOutlineController *)self collectionView];
  v16 = [(MailboxPickerOutlineController *)self interactiveMoveGestureRecognizer];
  [v15 addGestureRecognizer:v16];

  v17 = [MailboxPickerCollectionHelper alloc];
  v18 = [(MailboxPickerOutlineController *)self favoritesManager];
  v19 = +[UIApplication sharedApplication];
  v20 = [v19 focusController];
  v21 = [(MailboxPickerOutlineController *)self scene];
  v22 = +[MailboxPickerOutlineController log];
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_1000FE064;
  v32[3] = &unk_10064C838;
  objc_copyWeak(&v33, &location);
  v23 = [(MailboxPickerCollectionHelper *)v17 initWithCollectionView:v8 favoritesManager:v18 focusController:v20 scene:v21 logClient:v22 updateCompletion:v32];

  [(MailboxPickerOutlineController *)self setCollectionHelper:v23];
  [(MailboxPickerCollectionHelper *)v23 setDelegate:self];
  [v8 setDelegate:v23];
  v24 = objc_alloc_init(UIRefreshControl);
  [(MailboxPickerOutlineController *)self setRefreshControl:v24];

  v25 = [(MailboxPickerOutlineController *)self refreshControl];
  [v25 addTarget:self action:"pulledToRefresh:" forEvents:4096];

  v26 = [(MailboxPickerOutlineController *)self refreshControl];
  v27 = [(MailboxPickerOutlineController *)self collectionView];
  [v27 setRefreshControl:v26];

  v28 = [(MailboxPickerOutlineController *)self messageListViewController];
  v29 = NSStringFromSelector("mailboxes");
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_1000FE0C8;
  v31[3] = &unk_1006504C0;
  v31[4] = self;
  v30 = [v28 ef_observeKeyPath:v29 options:1 autoCancelToken:1 usingBlock:v31];
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
  block[4] = a1;
  if (qword_1006DD010 != -1)
  {
    dispatch_once(&qword_1006DD010, block);
  }

  v2 = qword_1006DD008;

  return v2;
}

- (MailboxPickerOutlineController)initWithMainScene:(id)a3 favoritesManager:(id)a4 accountsProvider:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v23.receiver = self;
  v23.super_class = MailboxPickerOutlineController;
  v11 = [(MailboxPickerOutlineController *)&v23 initWithNibName:0 bundle:0];
  if (v11)
  {
    v12 = [NSBundle bundleForClass:objc_opt_class()];
    v13 = [v12 localizedStringForKey:@"MAILBOXES" value:&stru_100662A88 table:@"Main"];
    [(MailboxPickerOutlineController *)v11 setTitle:v13];

    objc_storeStrong(&v11->_accountsProvider, a5);
    objc_storeWeak(&v11->_scene, v8);
    objc_storeStrong(&v11->_favoritesManager, a4);
    v14 = +[UIApplication sharedApplication];
    v15 = [v14 daemonInterface];
    v16 = [v15 outgoingMessageRepository];

    v17 = [MailStatusViewController alloc];
    v18 = [v8 daemonInterface];
    v19 = [v18 mailboxRepository];
    v20 = [(MailStatusViewController *)v17 initWithMailboxRepository:v19 outgoingMessageRepository:v16 scene:v8];
    mailStatusViewController = v11->_mailStatusViewController;
    v11->_mailStatusViewController = v20;

    [(MailboxPickerOutlineController *)v11 _registerNotifications];
    [(MailboxPickerOutlineController *)v11 _updateBackButtonTitle];
  }

  return v11;
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v20.receiver = self;
  v20.super_class = MailboxPickerOutlineController;
  [(MailboxPickerOutlineController *)&v20 viewWillAppear:?];
  v6 = +[MailboxPickerOutlineController log];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = NSStringFromSelector(a2);
    *buf = 138412546;
    v22 = self;
    v23 = 2112;
    v24 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%@: %@", buf, 0x16u);
  }

  [(MailboxPickerOutlineController *)self _reloadDataSourceIfNeeded];
  v8 = [(MailboxPickerOutlineController *)self scene];
  if (![(MailboxPickerOutlineController *)self didNotifyExtendedLaunchTracker])
  {
    v9 = [v8 extendedLaunchTracker];
    [v9 observeViewController:self scene:v8];
  }

  [(MailboxPickerOutlineController *)self updateIsRefreshingForState:0];
  if (-[MailboxPickerOutlineController isReappearing](self, "isReappearing") && ([v8 isInExpandedEnvironment] & 1) == 0)
  {
    v10 = [(MailboxPickerOutlineController *)self collectionView];
    v11 = [(MailboxPickerOutlineController *)self transitionCoordinator];
    [v10 mui_interactiveDeselectAllSelectedIndexPathsUsingTransitionCoordinator:v11 animated:1];
  }

  if ([(MailboxPickerOutlineController *)self _shouldShowMailStatus])
  {
    v12 = [(MailboxPickerOutlineController *)self mailStatusViewController];
    v13 = [v8 statusMailboxes];
    v14 = [v13 allObjects];
    [v12 startObservingForVisibleMailboxes:v14 delegate:self filterPredicate:0 label:@"Mailbox picker status"];
  }

  [(MailboxPickerOutlineController *)self _updateTitle];
  [(MailboxPickerOutlineController *)self _updateToolbarItems:v3];
  [(MailboxPickerOutlineController *)self _updateNavigationBarItems];
  v15 = [(MailboxPickerOutlineController *)self splitViewController];
  v16 = [v15 traitCollection];
  if ([v16 horizontalSizeClass] != 1)
  {

    goto LABEL_14;
  }

  v17 = +[UIApplication sharedApplication];
  v18 = [v17 applicationState] == 0;

  if (v18)
  {
    v15 = +[NSSet set];
    [v8 setSelectedAccounts:v15];
LABEL_14:
  }

  v19 = [(MailboxPickerOutlineController *)self mailboxRepository];
  [v19 refreshMailboxList:0];
}

- (void)viewDidAppear:(BOOL)a3
{
  v8.receiver = self;
  v8.super_class = MailboxPickerOutlineController;
  [(MailboxPickerOutlineController *)&v8 viewDidAppear:a3];
  [(MailboxPickerOutlineController *)self mf_updateAlertSuppressionContextsForReason:@"mailbox picker did appear"];
  v4 = [(MailboxPickerOutlineController *)self collectionHelper];
  v5 = [(MailboxPickerOutlineController *)self collectionView];
  [v4 updatedSelectedState:v5];

  v6 = [(MailboxPickerOutlineController *)self viewDidAppearBlock];
  v7 = v6;
  if (v6)
  {
    (*(v6 + 16))(v6);
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
    v3 = [(MailboxPickerOutlineController *)self messageListViewController];
    v4 = [v3 showingPopoverViewController];

    if ((v4 & 1) == 0)
    {
      [(MailboxPickerOutlineController *)self setEditing:0 animated:0];
    }
  }
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = MailboxPickerOutlineController;
  [(MailboxPickerOutlineController *)&v10 traitCollectionDidChange:v4];
  if ((MUISolariumFeatureEnabled() & 1) == 0)
  {
    v5 = [(MailboxPickerOutlineController *)self traitCollection];
    v6 = [UIColor mailMailboxPickerBackgroundColorForTraitCollection:v5];
    v7 = [(MailboxPickerOutlineController *)self collectionView];
    [v7 setBackgroundColor:v6];
  }

  v8 = [(MailboxPickerOutlineController *)self collectionView];
  v9 = [v8 collectionViewLayout];
  [v9 invalidateLayout];
}

- (id)_configuredSectionForSection:(int64_t)a3 layoutEnvironment:(id)a4
{
  v6 = a4;
  v7 = [v6 traitCollection];
  v8 = [v7 mf_useSplitViewStyling];

  v9 = [UICollectionLayoutListConfiguration alloc];
  if (v8)
  {
    v10 = 3;
  }

  else
  {
    v10 = 2;
  }

  v11 = [v9 initWithAppearance:v10];
  v12 = [(MailboxPickerOutlineController *)self collectionHelper];
  v13 = [v12 sectionTypeForIndex:a3];

  if (!((v13 < 2) | v8 & 1))
  {
    [v11 setHeaderMode:2];
  }

  v14 = [NSCollectionLayoutSection sectionWithListConfiguration:v11 layoutEnvironment:v6];
  [v14 contentInsets];
  v17 = v16;
  v19 = v18;
  v20 = v15;
  v22 = v21;
  if (v13 == 3)
  {
    v23 = [(MailboxPickerOutlineController *)self collectionView];
    v24 = [v23 numberOfSections] - 1;

    if (v24 == a3)
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
    v6 = [v5 mailboxProvider];
    v7 = [(MailboxPickerOutlineController *)self favoritesManager];
    v8 = sub_1000B9AFC(&v4->super.isa, v6, v7);

    v9 = [MessageListViewController alloc];
    v10 = [(MailboxPickerOutlineController *)self scene];
    v11 = [(MailboxPickerOutlineController *)self accountsProvider];
    v12 = +[UIApplication sharedApplication];
    v13 = [v12 contactStore];
    v14 = [(MailboxPickerOutlineController *)self diagnosticsHelper];
    v15 = [(MessageListViewController *)v9 initWithMainScene:v10 mailboxes:0 accountsProvider:v11 favoritesShortcutsProvider:v8 contactStore:v13 diagnosticsHelper:v14];
    v16 = self->_messageListViewController;
    self->_messageListViewController = v15;

    [(MessageListViewController *)self->_messageListViewController setMailboxPickerDelegate:self];
    messageListViewController = self->_messageListViewController;
  }

  return messageListViewController;
}

- (UIBarButtonItem)composeButtonItem
{
  v3 = [(MailboxPickerOutlineController *)self scene];
  v4 = v3;
  if (!self->_composeButtonItem && [v3 conformsToProtocol:&OBJC_PROTOCOL___ComposeCapable] && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v5 = [v4 newComposeButtonItem];
    composeButtonItem = self->_composeButtonItem;
    self->_composeButtonItem = v5;
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

- (void)_shelfButtonTapped:(id)a3
{
  v4 = [(MailboxPickerOutlineController *)self scene];
  v3 = [v4 _sceneIdentifier];
  [MFBayAdoption requestShelfPresentationForSceneWithIdentifier:v3];
}

- (void)setIsRefreshing:(BOOL)a3
{
  v3 = a3;
  if (pthread_main_np() != 1)
  {
    v7 = +[NSAssertionHandler currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"MailboxPickerOutlineController.m" lineNumber:369 description:@"Current thread must be main"];
  }

  if (self->_isRefreshing != v3 && !v3)
  {
    self->_isRefreshing = v3;
    v6 = [(MailboxPickerOutlineController *)self refreshControl];
    [v6 endRefreshing];
  }
}

- (void)pulledToRefresh:(id)a3
{
  if (pthread_main_np() != 1)
  {
    v6 = +[NSAssertionHandler currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"MailboxPickerOutlineController.m" lineNumber:382 description:@"Current thread must be main"];
  }

  self->_isRefreshing = 1;
  [(MailboxPickerOutlineController *)self performSelector:"updateIsRefreshingForState:" withObject:0 afterDelay:0.0];
  v5 = [(MailboxPickerOutlineController *)self mailboxRepository];
  [v5 refreshMailboxList:1];
}

- (id)mailboxRepository
{
  v2 = [(MailboxPickerOutlineController *)self scene];
  v3 = [v2 daemonInterface];
  v4 = [v3 mailboxRepository];

  return v4;
}

- (void)_reloadDataSourceIfNeeded
{
  if ([(MailboxPickerOutlineController *)self dataSourceNeedsReload])
  {
    [(MailboxPickerOutlineController *)self setDataSourceNeedsReload:0];
    v3 = [(MailboxPickerOutlineController *)self collectionHelper];
    [v3 reloadDataSource];
  }
}

- (BOOL)_selectFavoriteItem:(id)a3 indexPath:(id)a4 animated:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v10 = [(MailboxPickerOutlineController *)self favoritesManager];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000FEB6C;
  v14[3] = &unk_1006504E8;
  v11 = v8;
  v15 = v11;
  v12 = v9;
  v16 = v12;
  v17 = self;
  v19 = a5;
  v18 = &v20;
  [v10 performTransaction:v14];

  LOBYTE(v8) = *(v21 + 24);
  _Block_object_dispose(&v20, 8);

  return v8;
}

- (void)setDisplayMessageOnReload:(id)a3
{
  v5 = a3;
  v4 = [(MailboxPickerOutlineController *)self messageListViewController];
  [v4 setMessageToDisplayOnReload:v5];

  [(MailboxPickerOutlineController *)self setForceReloadMessageListViewController:1];
}

- (void)showVIPSettingsAnimated:(BOOL)a3
{
  v5 = [SharedMailboxController sharedInstanceForSourceType:1];
  v4 = [(MailboxPickerOutlineController *)self collectionHelper];
  [v5 presentFromSelectionTarget:v4 item:0 accessoryTapped:1 animated:0];
}

- (void)selectMailbox:(id)a3
{
  v5 = a3;
  v4 = [(MailboxPickerOutlineController *)self favoriteItemSelectionTarget];
  [v4 selectMailbox:v5 item:0 animated:0];
}

- (void)selectMailbox:(id)a3 urlQueryItems:(id)a4
{
  v8 = a3;
  v6 = a4;
  v7 = [(MailboxPickerOutlineController *)self favoriteItemSelectionTarget];
  [v7 selectMailbox:v8 item:0 animated:0];

  if (v6)
  {
    [(MailboxPickerOutlineController *)self _handleUrlQueryItems:v6];
  }
}

- (void)_handleUrlQueryItems:(id)a3
{
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = a3;
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = *v15;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v14 + 1) + 8 * i);
        v9 = [v8 name];
        v10 = [v9 isEqual:@"mailboxFilter"];

        if (v10)
        {
          v11 = [v8 value];
          v12 = [v11 integerValue];

          v13 = [(MailboxPickerOutlineController *)self messageListViewController];
          [v13 filterMailboxMessagesUsingFilterMailboxType:v12];
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }
}

- (void)selectCombinedMailbox:(id)a3
{
  v5 = a3;
  v4 = [(MailboxPickerOutlineController *)self favoriteItemSelectionTarget];
  [v4 selectCombinedMailbox:v5];
}

- (NSArray)suggestedFavoriteItems
{
  v2 = [(MailboxPickerOutlineController *)self favoritesManager];
  v3 = [v2 suggestedFavoriteItems];

  return v3;
}

- (id)favoriteItemsMatchingName:(id)a3
{
  v4 = a3;
  v5 = [(MailboxPickerOutlineController *)self favoritesManager];
  v6 = [v5 itemsMatchingName:v4];

  return v6;
}

- (id)favoriteItemsMatchingItemURLStrings:(id)a3
{
  v4 = a3;
  v5 = [(MailboxPickerOutlineController *)self favoritesManager];
  v6 = [v5 itemsMatchingItemURLStrings:v4];

  return v6;
}

- (void)_editButtonTapped:(id)a3
{
  v4 = [(MailboxPickerOutlineController *)self isEditing]^ 1;

  [(MailboxPickerOutlineController *)self setEditing:v4 animated:1];
}

- (void)_sharedMailboxControllerBadgeCountDidChange:(id)a3
{
  v4 = a3;
  v5 = [v4 object];
  v6 = +[MailboxPickerOutlineController log];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_1004886FC(v4, v8, [v5 sourceType], v6);
  }

  v7 = [(MailboxPickerOutlineController *)self collectionHelper];
  [v7 updateCellForSourceType:{objc_msgSend(v5, "sourceType")}];
}

- (void)_vipSendersDidChange:(id)a3
{
  v4 = a3;
  v5 = +[MailboxPickerOutlineController log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_100488754(v4, v5);
  }

  v6 = [(MailboxPickerOutlineController *)self collectionHelper];
  [v6 updateCellForSourceType:1];
}

- (void)_contentSizeCategoryChanged:(id)a3
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

  v12 = [(MailboxPickerOutlineController *)self collectionHelper];
  [v12 reloadDataSource];
}

- (void)_significantTimeChange:(id)a3
{
  v7 = a3;
  if (+[NSThread isMainThread])
  {
    v5 = [SharedMailboxController sharedInstanceForSourceType:7];
    [v5 invalidateIcon];

    v6 = [(MailboxPickerOutlineController *)self collectionHelper];
    [v6 reloadDataSource];
  }

  else
  {
    [(MailboxPickerOutlineController *)self performSelectorOnMainThread:a2 withObject:v7 waitUntilDone:0];
  }
}

- (void)_watchedMailboxesDidChange:(id)a3
{
  watchedMailboxes = self->_watchedMailboxes;
  self->_watchedMailboxes = 0;

  v5 = [(MailboxPickerOutlineController *)self collectionHelper];
  [v5 reloadDataSource];
}

- (void)_detailViewControllerConfigurationChanged:(id)a3
{
  v5 = +[MailboxPickerOutlineController log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromSelector(a2);
    v7 = 138412546;
    v8 = self;
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

  v3 = [(MailboxPickerOutlineController *)self splitViewController];
  v4 = [v3 traitCollection];
  v5 = [v4 horizontalSizeClass] == 2;

  return v5;
}

- (void)_updateToolbarItems:(BOOL)a3
{
  v3 = a3;
  v5 = [(MailboxPickerOutlineController *)self isEditing];

  [(MailboxPickerOutlineController *)self _updateToolbarItemsEditing:v5 animated:v3];
}

- (void)_updateToolbarItemsEditing:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  if (!a3)
  {
    v16 = [(MailboxPickerOutlineController *)self mailStatusViewController];
    v17 = [v16 mailStatusBarButtonItem];

    v38[0] = _NSConcreteStackBlock;
    v38[1] = 3221225472;
    v38[2] = sub_100100400;
    v38[3] = &unk_100650510;
    v38[4] = self;
    v18 = objc_retainBlock(v38);
    v19 = [(MailboxPickerOutlineController *)self splitViewController];
    v20 = [v19 isCollapsed];

    v21 = [(MailboxPickerOutlineController *)self _shouldShowMailStatusInToolbar];
    if ((v20 & v21) == 1)
    {
      v22 = +[UIBarButtonItem mf_newFixedSpaceItem];
      v46[0] = v22;
      v23 = +[UIBarButtonItem mf_newFlexibleSpaceItem];
      v46[1] = v23;
      v46[2] = v17;
      v24 = +[UIBarButtonItem mf_newFlexibleSpaceItem];
      v46[3] = v24;
      v25 = [(MailboxPickerOutlineController *)self composeButtonItem];
      v46[4] = v25;
      v26 = [NSArray arrayWithObjects:v46 count:5];

      v27 = (v18[2])(v18, v26);
    }

    else
    {
      if (!v20)
      {
        if (!v21)
        {
          v15 = &__NSArray0__struct;
          goto LABEL_11;
        }

        v34 = +[UIBarButtonItem mf_newFlexibleSpaceItem];
        v44[0] = v34;
        v44[1] = v17;
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
      v30 = [(MailboxPickerOutlineController *)self composeButtonItem];
      v45[2] = v30;
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
    v40 = self;
    v41 = 1024;
    v42 = v5;
    _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "%@: set toolbar items - editing:%d", buf, 0x12u);
  }

  [(MailboxPickerOutlineController *)self setToolbarItems:v15 animated:v4];
  if (v4)
  {
    v36[0] = _NSConcreteStackBlock;
    v36[1] = 3221225472;
    v36[2] = sub_1001004E0;
    v36[3] = &unk_10064D9D8;
    v36[4] = self;
    v37 = v5;
    [UIView performWithoutAnimation:v36];
  }

  else
  {
    v32 = [(MailboxPickerOutlineController *)self _shouldShowToolbar:v5];
    v33 = [(MailboxPickerOutlineController *)self navigationController];
    [v33 setToolbarHidden:v32 ^ 1];
  }
}

- (void)_updateNavigationBarItems
{
  v3 = [(MailboxPickerOutlineController *)self isEditing];

  [(MailboxPickerOutlineController *)self _updateNavigationBarItemsEditing:v3];
}

- (void)_updateNavigationBarItemsEditing:(BOOL)a3
{
  v3 = a3;
  v5 = [(MailboxPickerOutlineController *)self editButtonItem];
  [UIBarButtonItem mf_configureMultiBarButtonItem:v5 usingStyle:v3];

  [(MailboxPickerOutlineController *)self _updateEditButtonPosition];
}

- (void)_updateEditButtonPosition
{
  v3 = [(MailboxPickerOutlineController *)self _isRegularWidthSolariumPad];
  v4 = [(MailboxPickerOutlineController *)self navigationItem];
  v6 = v4;
  if (v3)
  {
    [v4 setRightBarButtonItem:0];

    v7 = [(MailboxPickerOutlineController *)self editButtonItem];
    v5 = [(MailboxPickerOutlineController *)self navigationItem];
    [v5 setLeftBarButtonItem:v7];
  }

  else
  {
    [v4 setLeftBarButtonItem:0];

    v7 = [(MailboxPickerOutlineController *)self editButtonItem];
    v5 = [(MailboxPickerOutlineController *)self navigationItem];
    [v5 setRightBarButtonItem:v7];
  }
}

- (BOOL)_shouldShowToolbar:(BOOL)a3
{
  if (a3)
  {
    return 1;
  }

  v5 = [(MailboxPickerOutlineController *)self splitViewController];
  if ([v5 isCollapsed])
  {
    v6 = [(MailboxPickerOutlineController *)self navigationController];
    v7 = [v6 topViewController];
    v3 = v7 == self;
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
    v7 = [(MailboxPickerOutlineController *)self mailStatusViewController];
    v3 = [v7 primaryStatusView];
    v4 = [(MailboxPickerOutlineController *)self navigationItem];
    [v4 setSubtitleView:v3];

    v8 = [(MailboxPickerOutlineController *)self mailStatusViewController];
    v5 = [v8 secondaryStatusView];
    v6 = [(MailboxPickerOutlineController *)self navigationItem];
    [v6 setLargeSubtitleView:v5];
  }

  else
  {
    v9 = [(MailboxPickerOutlineController *)self navigationItem];
    [v9 setSubtitleView:0];

    v8 = [(MailboxPickerOutlineController *)self navigationItem];
    [v8 setLargeSubtitleView:0];
  }
}

- (void)handleInteractiveMoveGesture:(id)a3
{
  v14 = a3;
  v4 = [v14 state];
  v5 = [v14 view];
  [v14 locationInView:v5];
  v7 = v6;
  v9 = v8;

  v10 = [v14 view];
  v11 = v10;
  if (v4 > 2)
  {
    if ((v4 - 4) >= 2)
    {
      if (v4 != 3 || ![(MailboxPickerOutlineController *)self isReordering])
      {
        goto LABEL_17;
      }

      [v11 endInteractiveMovement];
      v12 = [(MailboxPickerOutlineController *)self collectionHelper];
      [v12 updateMailboxSelectionAnimated:1 scrollToSelected:0];

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

  if (!v4)
  {
    goto LABEL_8;
  }

  if (v4 == 1)
  {
    v13 = [v10 indexPathForItemAtPoint:{v7, v9}];
    if (v13)
    {
      -[MailboxPickerOutlineController setIsReordering:](self, "setIsReordering:", [v11 beginInteractiveMovementForItemAtIndexPath:v13]);
    }
  }

  else if (v4 == 2 && [(MailboxPickerOutlineController *)self isReordering])
  {
    [v11 updateInteractiveMovementTargetPosition:{v7, v9}];
  }

LABEL_17:
}

- (void)_useSplitViewControllerToShowViewController:(id)a3 animated:(BOOL)a4
{
  v6 = a3;
  v7 = v6;
  if (a4)
  {
    v8 = [(MailboxPickerOutlineController *)self splitViewController];
    [v8 showViewController:v7 sender:0];
  }

  else
  {
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100100BB8;
    v9[3] = &unk_10064C660;
    v9[4] = self;
    v10 = v6;
    [UIView performWithoutAnimation:v9];
  }
}

- (void)_popToMailboxPickerController:(BOOL)a3 andPushMessageListViewControllerIfNecessaryAnimated:(BOOL)a4
{
  v4 = a4;
  if (a3)
  {
    v6 = [(MailboxPickerOutlineController *)self navigationController];
    v7 = [v6 topViewController];

    if (v7 == self)
    {
      v10 = [(MailboxPickerOutlineController *)self splitViewController];
      v11 = [v10 isCollapsed];

      if ((v11 & 1) == 0)
      {
        v12 = [(MailboxPickerOutlineController *)self splitViewController];
        v13 = [v12 displayMode];

        if ((v13 - 5) <= 1)
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
      v8 = [(MailboxPickerOutlineController *)self navigationController];
      v9 = [v8 popToViewController:self animated:v4];
    }
  }

  v18 = [(MailboxPickerOutlineController *)self collectionHelper];
  v19 = [v18 mailboxesForMessageList];
  v20 = [v19 firstObject];

  v21 = +[MailboxPickerOutlineController log];
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v22 = [v20 ef_publicDescription];
    *buf = 138543362;
    v27 = v22;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Presenting message list for mailboxes %{public}@", buf, 0xCu);
  }

  v23 = [(MailboxPickerOutlineController *)self collectionHelper];
  v24 = [v23 mailboxesForMessageList];
  [(MailboxPickerOutlineController *)self _presentMessageListViewControllerForMailboxes:v24 animated:v4];
}

- (void)_presentViewControllerInPopover:(id)a3 barButtonItem:(id)a4 animated:(BOOL)a5
{
  v5 = a5;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1001010AC;
  v9[3] = &unk_100650538;
  v10 = a4;
  v8 = v10;
  [(MailboxPickerOutlineController *)self _presentViewControllerInPopover:a3 animated:v5 block:v9];
}

- (void)_presentViewControllerInPopover:(id)a3 sourceView:(id)a4 animated:(BOOL)a5
{
  v5 = a5;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10010117C;
  v9[3] = &unk_100650538;
  v10 = a4;
  v8 = v10;
  [(MailboxPickerOutlineController *)self _presentViewControllerInPopover:a3 animated:v5 block:v9];
}

- (void)_presentViewControllerInPopover:(id)a3 animated:(BOOL)a4 block:(id)a5
{
  v6 = a4;
  v11 = a3;
  v8 = a5;
  v9 = [[UINavigationController alloc] initWithRootViewController:v11];
  [v9 setModalPresentationStyle:7];
  v10 = [v9 popoverPresentationController];
  v8[2](v8, v10);

  [(MailboxPickerOutlineController *)self presentViewController:v9 animated:v6 completion:0];
}

- (void)_presentMailboxEditControllerForAccount:(id)a3 mailbox:(id)a4 animated:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (!v8 && v9)
  {
    v8 = [v9 account];
  }

  if (v8)
  {
    v27 = v8;
    v11 = [NSArray arrayWithObjects:&v27 count:1];
  }

  else
  {
    v12 = [(MailboxPickerOutlineController *)self favoritesManager];
    v21 = [v12 accountsCollection];

    v11 = objc_alloc_init(NSMutableArray);
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v13 = [v21 items];
    v14 = [v13 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v14)
    {
      v15 = *v23;
      do
      {
        for (i = 0; i != v14; i = i + 1)
        {
          if (*v23 != v15)
          {
            objc_enumerationMutation(v13);
          }

          v17 = *(*(&v22 + 1) + 8 * i);
          if ([v17 isVisible] && objc_msgSend(v17, "type") == 1)
          {
            v18 = [v17 account];
            [v11 addObject:v18];
          }
        }

        v14 = [v13 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v14);
    }
  }

  v19 = [[MailboxEditingController alloc] initWithMailbox:v10 account:v8 validAccounts:v11];
  [(MailboxEditingController *)v19 setDelegate:self];
  v20 = [(NSArray *)self->_editingToolbarItems lastObject];
  [(MailboxPickerOutlineController *)self _presentViewControllerInPopover:v19 barButtonItem:v20 animated:v5];
}

- (BOOL)showingPopoverViewController
{
  v3 = [(MailboxPickerOutlineController *)self presentedViewController];
  v4 = [v3 popoverPresentationController];

  v5 = [v4 barButtonItem];
  if (v5 && (-[MailboxPickerOutlineController editingToolbarItems](self, "editingToolbarItems"), v6 = objc_claimAutoreleasedReturnValue(), [v4 barButtonItem], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v6, "containsObject:", v7), v7, v6, v5, (v8 & 1) != 0))
  {
    v9 = 1;
  }

  else
  {
    v10 = [v4 sourceView];
    v11 = [(MailboxPickerOutlineController *)self view];
    v9 = [v10 isDescendantOfView:v11];
  }

  return v9;
}

- (void)_dismissCustomViewController:(id)a3
{
  [(MailboxPickerOutlineController *)self dismissViewControllerAnimated:1 completion:0];
  v5 = [(MailboxPickerOutlineController *)self collectionView];
  v4 = [(MailboxPickerOutlineController *)self transitionCoordinator];
  [v5 mui_interactiveDeselectAllSelectedIndexPathsUsingTransitionCoordinator:v4 animated:1];
}

- (void)updateForSplitViewCollapseStateChanged:(BOOL)a3
{
  if (!a3)
  {
    v5 = [(MailboxPickerOutlineController *)self favoritesManager];
    v6 = [v5 lastSelectedItem];

    if (v6)
    {
      v7 = [(MailboxPickerOutlineController *)self collectionHelper];
      v8 = [v7 indexPathForItem:v6];

      v9 = [(MailboxPickerOutlineController *)self collectionView];
      if ([v9 mf_isIndexPathValid:v8])
      {
        [v9 scrollToItemAtIndexPath:v8 atScrollPosition:0 animated:0];
        v10 = dispatch_time(0, 0);
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_1001019CC;
        block[3] = &unk_10064C6B0;
        v14 = v9;
        v15 = v8;
        v16 = self;
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
          v22 = v9;
          _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%@ - invalid lastSelectedIndexPath:%{public}@ for collectionView:%{public}@", buf, 0x20u);
        }
      }
    }
  }
}

- (void)presentationControllerWillDismiss:(id)a3
{
  v5 = [(MailboxPickerOutlineController *)self collectionView];
  v4 = [(MailboxPickerOutlineController *)self transitionCoordinator];
  [v5 mui_interactiveDeselectAllSelectedIndexPathsUsingTransitionCoordinator:v4 animated:1];
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  v4 = a3;
  v5 = [(MailboxPickerOutlineController *)self interactiveMoveGestureRecognizer];

  if (v5 == v4)
  {
    v7 = [(MailboxPickerOutlineController *)self collectionView];
    [v4 locationInView:v7];
    v9 = v8;
    v11 = v10;

    v12 = [(MailboxPickerOutlineController *)self collectionView];
    v13 = [v12 indexPathForItemAtPoint:{v9, v11}];

    if (v13)
    {
      v14 = [(MailboxPickerOutlineController *)self collectionHelper];
      v6 = [v14 canReorderItemAtIndexPath:v13];
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

- (void)_presentMessageListViewControllerForMailboxes:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v9 = a3;
  v6 = [(MailboxPickerOutlineController *)self messageListViewController];
  if ([v6 isEditing])
  {
    [v6 setEditing:0];
  }

  [v6 setMailboxes:v9 forceReload:{-[MailboxPickerOutlineController forceReloadMessageListViewController](self, "forceReloadMessageListViewController")}];
  [(MailboxPickerOutlineController *)self setForceReloadMessageListViewController:0];
  v7 = [(MailboxPickerOutlineController *)self scene];
  v8 = [v7 splitViewController];
  [v8 showMessageListViewController:1 animated:v4 completion:0];
}

- (void)messageListViewController:(id)a3 setEditing:(BOOL)a4 animated:(BOOL)a5
{
  v5 = a4;
  v9 = [(MailboxPickerOutlineController *)self navigationItem:a3];
  v7 = [v9 leftBarButtonItem];
  [v7 setEnabled:!v5];

  v10 = [(MailboxPickerOutlineController *)self navigationItem];
  v8 = [v10 rightBarButtonItem];
  [v8 setEnabled:!v5];
}

- (void)messageListViewController:(id)a3 didSelectFavorite:(id)a4
{
  v5 = a4;
  [MailboxPickerOutlineController _selectFavoriteItem:"_selectFavoriteItem:indexPath:animated:" indexPath:? animated:?];
  [(MailboxPickerOutlineController *)self _updateBackButtonTitle];
}

- (void)messageListViewControllerWantsToSelectPreviousFavoriteItem:(id)a3
{
  [(MailboxPickerOutlineController *)self loadViewIfNeeded];
  [(MailboxPickerOutlineController *)self _reloadDataSourceIfNeeded];
  v4 = [(MailboxPickerOutlineController *)self favoritesManager];
  v7 = [v4 lastSelectedItem];

  v5 = [(MailboxPickerOutlineController *)self collectionHelper];
  v6 = [v5 favoriteItemBeforeItem:v7];

  if (v6)
  {
    [(MailboxPickerOutlineController *)self _selectFavoriteItem:v6 indexPath:0 animated:1];
  }
}

- (void)messageListViewControllerWantsToSelectNextFavoriteItem:(id)a3
{
  [(MailboxPickerOutlineController *)self loadViewIfNeeded];
  [(MailboxPickerOutlineController *)self _reloadDataSourceIfNeeded];
  v4 = [(MailboxPickerOutlineController *)self favoritesManager];
  v7 = [v4 lastSelectedItem];

  v5 = [(MailboxPickerOutlineController *)self collectionHelper];
  v6 = [v5 favoriteItemAfterItem:v7];

  if (v6)
  {
    [(MailboxPickerOutlineController *)self _selectFavoriteItem:v6 indexPath:0 animated:1];
  }
}

- (id)displayedAccountsForMailboxCollectionHelper:(id)a3
{
  v3 = [(MailboxPickerOutlineController *)self accountsProvider];
  v4 = [v3 displayedAccounts];

  return v4;
}

- (BOOL)mailboxCollectionHelper:(id)a3 shouldDisableForEditingCellForMailbox:(id)a4
{
  v5 = a4;
  v6 = [(MailboxPickerOutlineController *)self watchedMailboxes];
  v7 = [v6 containsObject:v5];

  return v7;
}

- (void)mailboxCollectionHelperDidTapDetailsDisclosure:(id)a3 sender:(id)a4
{
  v19 = a4;
  v5 = [(MailboxPickerOutlineController *)self collectionView];
  [v19 frame];
  v7 = v6;
  v9 = v8;
  v10 = [v19 superview];
  [v5 convertPoint:v10 fromView:{v7, v9}];
  v12 = v11;
  v14 = v13;

  v15 = [v5 indexPathForItemAtPoint:{v12, v14}];
  v16 = [(MailboxPickerOutlineController *)self collectionHelper];
  v17 = [v16 favoriteItemAtIndexPath:v15];

  v18 = [(MailboxPickerOutlineController *)self collectionHelper];
  [v17 wasSelected:v18 indexPath:v15 accessoryTapped:1 animated:1];
}

- (BOOL)mailboxCollectionHelperShouldUpdateMailboxSelection:(id)a3
{
  v4 = [(MailboxPickerOutlineController *)self isViewLoaded];
  if (v4)
  {
    LOBYTE(v4) = ![(MailboxPickerOutlineController *)self showingPopoverViewController];
  }

  return v4;
}

- (BOOL)mailboxCollectionHelperSplitViewControllerIsCollapsed:(id)a3
{
  v3 = [(MailboxPickerOutlineController *)self splitViewController];
  v4 = [v3 isCollapsed];

  return v4;
}

- (void)mailboxCollectionHelperWantsToShowAddFavoritesController:(id)a3 sourceView:(id)a4
{
  v10 = a4;
  v5 = [EditFavoritesController alloc];
  v6 = [(MailboxPickerOutlineController *)self accountsProvider];
  v7 = [(MailboxPickerOutlineController *)self favoritesManager];
  v8 = [(EditFavoritesController *)v5 initWithAccountsProvider:v6 favoritesManager:v7];

  [(EditFavoritesController *)v8 setDelegate:self];
  v9 = [(EditFavoritesController *)v8 navigationItem];
  [v9 setHidesBackButton:1];

  [(MailboxPickerOutlineController *)self _presentViewControllerInPopover:v8 sourceView:v10 animated:1];
}

- (void)mailboxCollectionHelper:(id)a3 wantsToPopToMailboxPicker:(BOOL)a4 andPushMessageListViewControllerIfNecessaryAnimated:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v8 = [NSBundle bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"MAILBOXES_BACK_BUTTON" value:&stru_100662A88 table:@"Main"];
  v10 = [(MailboxPickerOutlineController *)self navigationItem];
  [v10 setBackButtonTitle:v9];

  [(MailboxPickerOutlineController *)self setForceReloadMessageListViewController:1];

  [(MailboxPickerOutlineController *)self _popToMailboxPickerController:v6 andPushMessageListViewControllerIfNecessaryAnimated:v5];
}

- (void)mailboxCollectionHelper:(id)a3 wantsToShowCustomViewController:(id)a4 animated:(BOOL)a5 sourceViewBlock:(id)a6
{
  v7 = a5;
  v9 = a4;
  v10 = a6;
  v11 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:1 target:self action:"_dismissCustomViewController:"];
  v12 = [v9 navigationItem];
  v22 = v11;
  v13 = [NSArray arrayWithObjects:&v22 count:1];
  [v12 setLeftBarButtonItems:v13 animated:1];

  v14 = [(MailboxPickerOutlineController *)self scene];
  v15 = [v14 splitViewController];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1001027F0;
  v18[3] = &unk_1006505D8;
  v18[4] = self;
  v16 = v9;
  v19 = v16;
  v21 = v7;
  v17 = v10;
  v20 = v17;
  [v15 showMailboxPickerController:1 animated:v7 completion:v18];
}

- (void)mailboxCollectionHelper:(id)a3 wantsToPresentMailboxEditControllerForMailbox:(id)a4 animated:(BOOL)a5
{
  v5 = a5;
  v8 = a4;
  v7 = [v8 account];
  [(MailboxPickerOutlineController *)self _presentMailboxEditControllerForAccount:v7 mailbox:v8 animated:v5];
}

- (void)mailboxCollectionHelper:(id)a3 wantsToSelectMailbox:(id)a4 account:(id)a5 animated:(BOOL)a6
{
  v6 = a6;
  v8 = [(MailboxPickerOutlineController *)self navigationController:a3];
  v9 = [v8 topViewController];

  if (v9 != self)
  {
    v10 = [(MailboxPickerOutlineController *)self navigationController];
    v11 = [v10 popToViewController:self animated:v6];
  }

  [(MailboxPickerOutlineController *)self _updateBackButtonTitle];
  v12 = [(MailboxPickerOutlineController *)self collectionHelper];
  [v12 updateMailboxSelectionAnimated:0 scrollToSelected:1];

  [(MailboxPickerOutlineController *)self _popToMailboxPickerController:1 andPushMessageListViewControllerIfNecessaryAnimated:v6];
}

- (id)mailboxPickerDragDropHelper:(id)a3 favoriteItemAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(MailboxPickerOutlineController *)self collectionHelper];
  v7 = [v6 favoriteItemAtIndexPath:v5];

  return v7;
}

- (id)mailboxPickerDragDropHelper:(id)a3 mailboxForMailboxUid:(id)a4
{
  v5 = a4;
  v6 = [(MailboxPickerOutlineController *)self collectionHelper];
  v11 = v5;
  v7 = [NSArray arrayWithObjects:&v11 count:1];
  v8 = [v6 createMailboxesFromUids:v7];
  v9 = [v8 firstObject];

  return v9;
}

- (void)updateIsRefreshingForState:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (v4)
  {
    v5 = [v4 integerValue];
  }

  else
  {
    v6 = [(MailboxPickerOutlineController *)self mailStatusViewController];
    v5 = [v6 currentState];
  }

  [(MailboxPickerOutlineController *)self setIsRefreshing:v5 == 2];
}

- (BOOL)_shouldShowMailStatus
{
  v2 = [(MailboxPickerOutlineController *)self splitViewController];
  v3 = [v2 isCollapsed];

  return v3;
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

- (void)mailStatus:(id)a3 didChangeState:(int64_t)a4
{
  v5 = [NSNumber numberWithInteger:a4];
  [MailboxPickerOutlineController performSelectorOnMainThread:"performSelectorOnMainThread:withObject:waitUntilDone:" withObject:"updateIsRefreshingForState:" waitUntilDone:?];
}

- (void)mailStatusViewControllerUndoButtonTapped:(id)a3
{
  v3 = +[UIApplication sharedApplication];
  v4 = [v3 daemonInterface];
  v5 = [v4 outgoingMessageRepository];

  [v5 cancelLastDelayedMessage:&stru_100650618];
}

- (void)setEditing:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v7 = [(MailboxPickerOutlineController *)self isEditing];
  v12.receiver = self;
  v12.super_class = MailboxPickerOutlineController;
  [(MailboxPickerOutlineController *)&v12 setEditing:v5 animated:v4];
  if (v7 != v5)
  {
    [(MailboxPickerOutlineController *)self _updateNavigationBarItemsEditing:v5];
    [(MailboxPickerOutlineController *)self _updateToolbarItemsEditing:v5 animated:v4];
    if (v5)
    {
      [(MailboxPickerOutlineController *)self focus:v4];
      v8 = MUISolariumFeatureEnabled();
      v9 = [(MailboxPickerOutlineController *)self navigationItem];
      v10 = [v9 leftBarButtonItem];
      [v10 setEnabled:v8];
    }

    else
    {
      [(MailboxPickerOutlineController *)self unfocus:v4];
      v9 = [(MailboxPickerOutlineController *)self navigationItem];
      v10 = [v9 leftBarButtonItem];
      [v10 setEnabled:1];
    }

    v11 = [(MailboxPickerOutlineController *)self collectionHelper];
    [v11 setEditing:v5 animated:v4];

    [(MailboxPickerOutlineController *)self _dismissEditViewControllers];
  }
}

- (void)_dismissEditViewControllers
{
  v7 = [(MailboxPickerOutlineController *)self presentedViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v7;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  v5 = [v4 topViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    [(MailboxPickerOutlineController *)self dismissViewControllerAnimated:1 completion:0];
  }
}

- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4
{
  v6 = a4;
  if ("_escapeShortcutInvoked:" == a3)
  {
    v7 = [(MailboxPickerOutlineController *)self isEditing];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = MailboxPickerOutlineController;
    v7 = [(MailboxPickerOutlineController *)&v10 canPerformAction:a3 withSender:v6];
  }

  v8 = v7;

  return v8;
}

- (void)_escapeShortcutInvoked:(id)a3
{
  v4 = a3;
  if ([(MailboxPickerOutlineController *)self isEditing])
  {
    [(MailboxPickerOutlineController *)self _editButtonTapped:v4];
  }
}

- (void)mailboxEditingControllerDidFinish:(id)a3
{
  v4 = [(MailboxPickerOutlineController *)self presentedViewController];

  if (v4)
  {

    [(MailboxPickerOutlineController *)self dismissViewControllerAnimated:1 completion:0];
  }

  else
  {
    v6 = [(MailboxPickerOutlineController *)self navigationController];
    v5 = [v6 popViewControllerAnimated:1];
  }
}

- (void)editFavoritesControllerDidFinish:(id)a3
{
  v4 = a3;
  v5 = [(MailboxPickerOutlineController *)self presentedViewController];

  if (v5)
  {
    [(MailboxPickerOutlineController *)self dismissViewControllerAnimated:1 completion:0];
  }

  else
  {
    v6 = [(MailboxPickerOutlineController *)self navigationController];
    v7 = [v6 popViewControllerAnimated:1];
  }

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10010381C;
  v9[3] = &unk_10064C660;
  v10 = v4;
  v11 = self;
  v8 = v4;
  dispatch_async(&_dispatch_main_q, v9);
}

- (void)updateEditButtonPositionAndNavigationBarTitleHidden:(BOOL)a3
{
  if (a3)
  {
    v6 = 0;
  }

  else
  {
    v3 = [NSBundle bundleForClass:objc_opt_class()];
    v6 = [v3 localizedStringForKey:@"MAILBOXES" value:&stru_100662A88 table:@"Main"];
  }

  [(MailboxPickerOutlineController *)self setTitle:v6];
  if (!a3)
  {
  }

  [(MailboxPickerOutlineController *)self _updateEditButtonPosition];
}

@end