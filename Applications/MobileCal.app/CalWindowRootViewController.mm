@interface CalWindowRootViewController
+ (id)sanitizeCalSubCal:(id)cal;
- (BOOL)_shouldUseSideBar;
- (BOOL)_viewControllerExistsInPresentationChainThatShouldNotRotate;
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender;
- (BOOL)canShowAvatarViewWithTraitCollection:(id)collection;
- (BOOL)paletteShouldShowAvatarView;
- (CGSize)mainContentSize;
- (CalWindowRootViewController)initWithRootNavigationController:(id)controller;
- (id)largeCalendarBarButtonItem;
- (id)largeInboxBarButtonItem;
- (id)largeListViewBarButtonItem;
- (id)traitCollectionToUseWhileLoadingViewsDuringTransitioningToTraitCollection:(id)collection;
- (id)viewControllerForSidebarState:(unint64_t)state;
- (unint64_t)focusFilterMode;
- (unint64_t)supportedInterfaceOrientations;
- (void)_delegatesChanged:(id)changed;
- (void)_identityChanged:(id)changed;
- (void)_updateAfterExtendedLaunch:(id)launch;
- (void)attemptDisplayReviewPrompt;
- (void)cancelSearch;
- (void)continueSearchWithTerm:(id)term;
- (void)dealloc;
- (void)dismissPresentedViewControllerAnimated:(BOOL)animated completion:(id)completion;
- (void)handleURL:(id)l context:(id)context;
- (void)inboxWillDismiss;
- (void)paletteAvatarViewTapped:(id)tapped;
- (void)paletteTodayButtonTapped:(id)tapped;
- (void)pressesBegan:(id)began withEvent:(id)event;
- (void)routeNewEventKeyCommand;
- (void)routeSearchKeyCommand;
- (void)searchBarCancelButtonClicked:(id)clicked;
- (void)searchBarSearchButtonClicked:(id)clicked;
- (void)searchBarTextDidBeginEditing:(id)editing;
- (void)setCurrentSidebarState:(unint64_t)state completion:(id)completion;
- (void)setFocusFilterMode:(unint64_t)mode;
- (void)showCalendarsSideBarWithCompletion:(id)completion;
- (void)showCalendarsViewWithCompletion:(id)completion;
- (void)showDayView;
- (void)showEventAndCloseSidebarIfNeeded:(id)needed animated:(BOOL)animated showMode:(unint64_t)mode;
- (void)showIdentitySwitcherFromSourceView:(id)view;
- (void)showInboxSideBarWithCompletion:(id)completion;
- (void)showInboxView;
- (void)showInspectorForCalendar:(id)calendar enableDoneInitially:(BOOL)initially;
- (void)showListSideBarWithCompletion:(id)completion;
- (void)showListView;
- (void)showSearch;
- (void)showSearchView;
- (void)showSplitMonthView;
- (void)splitViewController:(id)controller willHideColumn:(int64_t)column;
- (void)todayToolbarItemPressed;
- (void)toggleSidebar:(id)sidebar;
- (void)updateNavigationBarButtons;
- (void)updatePrimaryViewControllerNavBar;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)willTransitionToTraitCollection:(id)collection withTransitionCoordinator:(id)coordinator;
@end

@implementation CalWindowRootViewController

- (CalWindowRootViewController)initWithRootNavigationController:(id)controller
{
  controllerCopy = controller;
  v26.receiver = self;
  v26.super_class = CalWindowRootViewController;
  v6 = [(CalWindowRootViewController *)&v26 initWithStyle:1];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_rootNavigationController, controller);
    [(RootNavigationController *)v7->_rootNavigationController setSplitViewDelegate:v7];
    v8 = [SearchResultsViewController alloc];
    model = [(RootNavigationController *)v7->_rootNavigationController model];
    window = [(RootNavigationController *)v7->_rootNavigationController window];
    v11 = [(SearchResultsViewController *)v8 initWithModel:model window:window];
    searchResultsController = v7->_searchResultsController;
    v7->_searchResultsController = v11;

    [(SearchResultsViewController *)v7->_searchResultsController setSearchResultsDelegate:v7];
    [(ListViewController *)v7->_searchResultsController setDestination:2];
    [(ListViewController *)v7->_searchResultsController setOverrideExtendedEdges:0];
    v13 = [UIBarButtonItem alloc];
    v14 = +[NSBundle mainBundle];
    v15 = [v14 localizedStringForKey:@"Today" value:&stru_1002133B8 table:0];
    v16 = [v13 initWithTitle:v15 style:0 target:v7 action:"todayToolbarItemPressed"];
    v27 = v16;
    v17 = [NSArray arrayWithObjects:&v27 count:1];
    [(SearchResultsViewController *)v7->_searchResultsController setToolbarItems:v17];

    v18 = +[NSNotificationCenter defaultCenter];
    v19 = CUIKCalendarModelIdentityChangedNotification;
    model2 = [(RootNavigationController *)v7->_rootNavigationController model];
    [v18 addObserver:v7 selector:"_identityChanged:" name:v19 object:model2];

    v21 = CUIKCalendarModelDelegatesChangedNotification;
    model3 = [(RootNavigationController *)v7->_rootNavigationController model];
    [v18 addObserver:v7 selector:"_delegatesChanged:" name:v21 object:model3];

    v23 = CUIKCalendarModelDisplayedOccurrencesChangedForTheFirstTimeNotification;
    model4 = [(RootNavigationController *)v7->_rootNavigationController model];
    [v18 addObserver:v7 selector:"_updateAfterExtendedLaunch:" name:v23 object:model4];

    [v18 addObserver:v7 selector:"_updateAfterExtendedLaunch:" name:@"MainViewControllerDidCompleteExtendedLaunchNotification" object:0];
  }

  return v7;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = CalWindowRootViewController;
  [(CalWindowRootViewController *)&v4 dealloc];
}

- (void)viewDidLoad
{
  v44.receiver = self;
  v44.super_class = CalWindowRootViewController;
  [(CalWindowRootViewController *)&v44 viewDidLoad];
  view = [(CalWindowRootViewController *)self view];
  [view setAutoresizingMask:18];

  v4 = +[UIColor systemBackgroundColor];
  view2 = [(CalWindowRootViewController *)self view];
  [view2 setBackgroundColor:v4];

  [(CalWindowRootViewController *)self setDelegate:self];
  [(CalWindowRootViewController *)self setPresentsWithGesture:0];
  [(CalWindowRootViewController *)self setDisplayModeButtonVisibility:1];
  v6 = objc_alloc_init(UINavigationController);
  primaryVC = self->_primaryVC;
  self->_primaryVC = v6;

  v8 = +[UIColor systemBackgroundColor];
  view3 = [(UINavigationController *)self->_primaryVC view];
  [view3 setBackgroundColor:v8];

  v10 = +[UIColor secondarySystemBackgroundColor];
  navigationBar = [(UINavigationController *)self->_primaryVC navigationBar];
  [navigationBar setBarTintColor:v10];

  navigationBar2 = [(UINavigationController *)self->_primaryVC navigationBar];
  [navigationBar2 setForceFullHeightInLandscape:1];

  [(CalWindowRootViewController *)self setViewController:self->_primaryVC forColumn:0];
  [(CalWindowRootViewController *)self setViewController:self->_rootNavigationController forColumn:2];
  [(CalWindowRootViewController *)self setViewController:self->_rootNavigationController forColumn:3];
  [(CalWindowRootViewController *)self setViewController:self->_searchResultsController forColumn:4];
  v13 = [[SidebarPaletteView alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  paletteView = self->_paletteView;
  self->_paletteView = v13;

  [(SidebarPaletteView *)self->_paletteView setTranslatesAutoresizingMaskIntoConstraints:0];
  model = [(RootNavigationController *)self->_rootNavigationController model];
  [(SidebarPaletteView *)self->_paletteView setModel:model];

  [(SidebarPaletteView *)self->_paletteView setDelegate:self];
  model2 = [(RootNavigationController *)self->_rootNavigationController model];
  -[SidebarPaletteView setShowIdentity:](self->_paletteView, "setShowIdentity:", [model2 containsDelegateSources]);

  v17 = self->_paletteView;
  view4 = [(CalWindowRootViewController *)self view];
  [view4 bounds];
  [(SidebarPaletteView *)v17 sizeThatFits:v19, v20];
  v22 = v21;
  v24 = v23;

  v25 = [[UIView alloc] initWithFrame:{0.0, 0.0, v22, v24}];
  [v25 addSubview:self->_paletteView];
  leadingAnchor = [(SidebarPaletteView *)self->_paletteView leadingAnchor];
  leadingAnchor2 = [v25 leadingAnchor];
  v41 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v45[0] = v41;
  trailingAnchor = [(SidebarPaletteView *)self->_paletteView trailingAnchor];
  trailingAnchor2 = [v25 trailingAnchor];
  v26 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v45[1] = v26;
  topAnchor = [(SidebarPaletteView *)self->_paletteView topAnchor];
  topAnchor2 = [v25 topAnchor];
  v29 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v45[2] = v29;
  bottomAnchor = [(SidebarPaletteView *)self->_paletteView bottomAnchor];
  bottomAnchor2 = [v25 bottomAnchor];
  v32 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v45[3] = v32;
  v33 = [NSArray arrayWithObjects:v45 count:4];
  [NSLayoutConstraint activateConstraints:v33];

  v34 = [[_UINavigationBarPalette alloc] initWithContentView:v25];
  palette = self->_palette;
  self->_palette = v34;

  [(_UINavigationBarPalette *)self->_palette setPreferredHeight:v24];
  paletteView = [(RootNavigationController *)self->_rootNavigationController paletteView];
  [paletteView setDelegate:self];

  [(CalWindowRootViewController *)self hideColumn:0];
  [(CalWindowRootViewController *)self hideColumn:4];
  [(RootNavigationController *)self->_rootNavigationController setAvatarViewVisible:0];
  v37 = [objc_opt_class() shouldHideInlineFocusBannerForSidebarState:self->_currentSidebarState];
  paletteView2 = [(RootNavigationController *)self->_rootNavigationController paletteView];
  [paletteView2 setShouldHideInlineFocusBanner:v37];

  [(CalWindowRootViewController *)self updateNavigationBarButtons];
}

- (id)largeCalendarBarButtonItem
{
  model = [(RootNavigationController *)self->_rootNavigationController model];
  model2 = [(RootNavigationController *)self->_rootNavigationController model];
  sourceForSelectedIdentity = [model2 sourceForSelectedIdentity];
  v6 = [model displayableAccountErrorsForSource:sourceForSelectedIdentity];

  currentSidebarState = [(CalWindowRootViewController *)self currentSidebarState];
  if (v6 < 1)
  {
    largeCalendarBarButtonItem = self->_largeCalendarBarButtonItem;
    if (!largeCalendarBarButtonItem)
    {
      v17 = [UIImageSymbolConfiguration configurationWithPointSize:4 weight:3 scale:17.0];
      v18 = [UIBarButtonItem alloc];
      v19 = [UIImage systemImageNamed:@"calendar" withConfiguration:v17];
      imageFlippedForRightToLeftLayoutDirection = [v19 imageFlippedForRightToLeftLayoutDirection];
      v21 = [v18 initWithImage:imageFlippedForRightToLeftLayoutDirection style:0 target:self action:"calendarButtonTapped"];
      v22 = self->_largeCalendarBarButtonItem;
      self->_largeCalendarBarButtonItem = v21;

      v23 = CalSystemSolariumEnabled();
      v24 = 5.0;
      if (v23)
      {
        v24 = 4.0;
      }

      v25 = 5.5;
      if (v23)
      {
        v25 = 4.0;
      }

      v26 = 2.5;
      if (v23)
      {
        v26 = 3.0;
      }

      [(UIBarButtonItem *)self->_largeCalendarBarButtonItem _setAdditionalSelectionInsets:v24, v26, v25, v26];
      [(UIBarButtonItem *)self->_largeCalendarBarButtonItem setAccessibilityIdentifier:@"calendars-button"];

      largeCalendarBarButtonItem = self->_largeCalendarBarButtonItem;
    }

    [(UIBarButtonItem *)largeCalendarBarButtonItem setSelected:currentSidebarState == 1];
    v15 = self->_largeCalendarBarButtonItem;
  }

  else
  {
    largeBadgedCalendarBarButtonItem = self->_largeBadgedCalendarBarButtonItem;
    if (!largeBadgedCalendarBarButtonItem)
    {
      v9 = [MainWindowControlHeaderView badgedCalendarIcon:currentSidebarState == 1];
      v10 = [MainWindowControlHeaderView customBadgedButtonWithImage:v9 target:self selected:currentSidebarState == 1 insets:"calendarButtonTapped" action:-8.0, -10.0, -8.0, -10.0];
      v11 = [[UIBarButtonItem alloc] initWithCustomView:v10];
      v12 = self->_largeBadgedCalendarBarButtonItem;
      self->_largeBadgedCalendarBarButtonItem = v11;

      [(UIBarButtonItem *)self->_largeBadgedCalendarBarButtonItem setAccessibilityIdentifier:@"calendars-button"];
      largeBadgedCalendarBarButtonItem = self->_largeBadgedCalendarBarButtonItem;
    }

    customView = [(UIBarButtonItem *)largeBadgedCalendarBarButtonItem customView];
    v14 = [MainWindowControlHeaderView badgedCalendarIcon:currentSidebarState == 1];
    [customView setImage:v14 forState:0];

    v15 = self->_largeBadgedCalendarBarButtonItem;
  }

  return v15;
}

- (id)largeInboxBarButtonItem
{
  model = [(RootNavigationController *)self->_rootNavigationController model];
  eventNotificationsForCurrentIdentityCount = [model eventNotificationsForCurrentIdentityCount];

  currentSidebarState = [(CalWindowRootViewController *)self currentSidebarState];
  if (!self->_largeInboxBarButtonItem)
  {
    v6 = [UIBarButtonItem alloc];
    v7 = [MainWindowControlHeaderView inboxImageForCount:0 selected:0 forToolbar:0 bold:0];
    v8 = [v6 initWithImage:v7 style:0 target:self action:"inboxButtonTapped"];
    largeInboxBarButtonItem = self->_largeInboxBarButtonItem;
    self->_largeInboxBarButtonItem = v8;

    if (CalSystemSolariumEnabled())
    {
      v10 = 4.0;
    }

    else
    {
      v10 = 5.0;
    }

    [(UIBarButtonItem *)self->_largeInboxBarButtonItem _setAdditionalSelectionInsets:4.0, 3.0, v10, 3.0];
    [(UIBarButtonItem *)self->_largeInboxBarButtonItem setAccessibilityIdentifier:@"inbox-button"];
  }

  if (eventNotificationsForCurrentIdentityCount < 1)
  {
    [(UIBarButtonItem *)self->_largeInboxBarButtonItem setSelected:currentSidebarState == 2];
    v18 = self->_largeInboxBarButtonItem;
  }

  else
  {
    if (!self->_largeBadgedInboxBarButtonItem)
    {
      v11 = [UIBarButtonItem alloc];
      v12 = [MainWindowControlHeaderView inboxImageForCount:0 selected:0 forToolbar:0 bold:0];
      v13 = [v11 initWithImage:v12 style:0 target:self action:"inboxButtonTapped"];
      largeBadgedInboxBarButtonItem = self->_largeBadgedInboxBarButtonItem;
      self->_largeBadgedInboxBarButtonItem = v13;

      if (CalSystemSolariumEnabled())
      {
        v15 = 4.0;
      }

      else
      {
        v15 = 5.0;
      }

      [(UIBarButtonItem *)self->_largeBadgedInboxBarButtonItem _setAdditionalSelectionInsets:4.0, 3.0, v15, 3.0];
      [(UIBarButtonItem *)self->_largeBadgedInboxBarButtonItem setAccessibilityIdentifier:@"inbox-button"];
    }

    v16 = [MainWindowControlHeaderView inboxImageForCount:eventNotificationsForCurrentIdentityCount selected:currentSidebarState == 2 forToolbar:0 bold:0];
    customView = [(UIBarButtonItem *)self->_largeBadgedInboxBarButtonItem customView];
    [customView setImage:v16 forState:0];

    v18 = self->_largeBadgedInboxBarButtonItem;
  }

  return v18;
}

- (id)largeListViewBarButtonItem
{
  if (!self->_largeListViewBarButtonItem)
  {
    v3 = [UIImageSymbolConfiguration configurationWithPointSize:4 weight:3 scale:17.0];
    v4 = [UIBarButtonItem alloc];
    v5 = [UIImage systemImageNamed:@"list.bullet" withConfiguration:v3];
    imageFlippedForRightToLeftLayoutDirection = [v5 imageFlippedForRightToLeftLayoutDirection];
    v7 = [v4 initWithImage:imageFlippedForRightToLeftLayoutDirection style:0 target:self action:"listButtonTapped"];
    largeListViewBarButtonItem = self->_largeListViewBarButtonItem;
    self->_largeListViewBarButtonItem = v7;

    v9 = CalSystemSolariumEnabled();
    v10 = 3.0;
    v11 = 4.0;
    if (!v9)
    {
      v11 = 3.0;
      v10 = 2.5;
    }

    [(UIBarButtonItem *)self->_largeListViewBarButtonItem _setAdditionalSelectionInsets:v11, v10, v11, v10];
    [(UIBarButtonItem *)self->_largeListViewBarButtonItem setAccessibilityIdentifier:@"listview-button"];
  }

  [(UIBarButtonItem *)self->_largeListViewBarButtonItem setSelected:[(CalWindowRootViewController *)self currentSidebarState]== 3];
  v12 = self->_largeListViewBarButtonItem;

  return v12;
}

- (void)updateNavigationBarButtons
{
  if (CalSolariumEnabled() && (-[RootNavigationController ekui_futureTraitCollection](self->_rootNavigationController, "ekui_futureTraitCollection"), v3 = objc_claimAutoreleasedReturnValue(), v4 = [v3 horizontalSizeClass], v3, v4 != 1))
  {
    v5 = [UIBarButtonItemGroup alloc];
    largeCalendarBarButtonItem = [(CalWindowRootViewController *)self largeCalendarBarButtonItem];
    v15[0] = largeCalendarBarButtonItem;
    largeInboxBarButtonItem = [(CalWindowRootViewController *)self largeInboxBarButtonItem];
    v15[1] = largeInboxBarButtonItem;
    largeListViewBarButtonItem = [(CalWindowRootViewController *)self largeListViewBarButtonItem];
    v15[2] = largeListViewBarButtonItem;
    v9 = [NSArray arrayWithObjects:v15 count:3];
    v10 = [v5 initWithBarButtonItems:v9 representativeItem:0];

    v14 = v10;
    v11 = [NSArray arrayWithObjects:&v14 count:1];
    navigationItem = [(CalWindowRootViewController *)self navigationItem];
    [navigationItem setLeadingItemGroups:v11];
  }

  else
  {
    navigationItem2 = [(CalWindowRootViewController *)self navigationItem];
    [navigationItem2 setLeadingItemGroups:&__NSArray0__struct];
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  self->_didAppear = 1;
  if (self->_needsSidebarSetup)
  {
    if (([(CalWindowRootViewController *)self _isCollapsed]& 1) == 0)
    {
      [(CalWindowRootViewController *)self setCurrentSidebarState:self->_pendingState];
    }

    self->_needsSidebarSetup = 0;
  }

  v5.receiver = self;
  v5.super_class = CalWindowRootViewController;
  [(CalWindowRootViewController *)&v5 viewDidAppear:appearCopy];
}

- (BOOL)_viewControllerExistsInPresentationChainThatShouldNotRotate
{
  v3 = +[NSMutableSet set];
  v4 = objc_opt_class();
  if (v4)
  {
    [v3 addObject:v4];
  }

  presentedViewController = [(CalWindowRootViewController *)self presentedViewController];
  if (presentedViewController)
  {
    v6 = presentedViewController;
    do
    {
      v7 = [v3 containsObject:objc_opt_class()];
      if (v7)
      {
        break;
      }

      presentedViewController2 = [v6 presentedViewController];

      v6 = presentedViewController2;
    }

    while (presentedViewController2);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)supportedInterfaceOrientations
{
  presentedViewController = [(CalWindowRootViewController *)self presentedViewController];
  v4 = EKUIUseLargeFormatPhoneUI();
  objc_opt_class();
  if (((objc_opt_isKindOfClass() & 1) != 0 || v4 && self->_isSearching || -[CalWindowRootViewController _viewControllerExistsInPresentationChainThatShouldNotRotate](self, "_viewControllerExistsInPresentationChainThatShouldNotRotate")) && (-[CalWindowRootViewController view](self, "view"), v5 = objc_claimAutoreleasedReturnValue(), [v5 window], v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "windowScene"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "interfaceOrientation"), v7, v6, v5, v8))
  {
    supportedInterfaceOrientations = 1 << v8;
  }

  else
  {
    v11.receiver = self;
    v11.super_class = CalWindowRootViewController;
    supportedInterfaceOrientations = [(CalWindowRootViewController *)&v11 supportedInterfaceOrientations];
  }

  return supportedInterfaceOrientations;
}

- (id)traitCollectionToUseWhileLoadingViewsDuringTransitioningToTraitCollection:(id)collection
{
  collectionCopy = collection;
  if ([collectionCopy horizontalSizeClass] == 1 && objc_msgSend(collectionCopy, "verticalSizeClass") == 1)
  {
    v4 = [collectionCopy traitCollectionByModifyingTraits:&stru_100211830];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)willTransitionToTraitCollection:(id)collection withTransitionCoordinator:(id)coordinator
{
  collectionCopy = collection;
  coordinatorCopy = coordinator;
  if (([(CalWindowRootViewController *)self isViewLoaded]& 1) == 0)
  {
    v8 = [(CalWindowRootViewController *)self traitCollectionToUseWhileLoadingViewsDuringTransitioningToTraitCollection:collectionCopy];
    if (v8)
    {
      [(CalWindowRootViewController *)self setEkui_futureTraitCollection:v8];
      view = [(CalWindowRootViewController *)self view];
      [view setNeedsLayout];

      [(CalWindowRootViewController *)self setEkui_futureTraitCollection:0];
    }

    else
    {
      view2 = [(CalWindowRootViewController *)self view];
      [view2 setNeedsLayout];
    }
  }

  horizontalSizeClass = [collectionCopy horizontalSizeClass];
  traitCollection = [(CalWindowRootViewController *)self traitCollection];
  horizontalSizeClass2 = [traitCollection horizontalSizeClass];

  horizontalSizeClass3 = [collectionCopy horizontalSizeClass];
  v38 = horizontalSizeClass3 == 2;
  view3 = [(CalWindowRootViewController *)self view];
  window = [view3 window];
  windowScene = [window windowScene];
  activationState = [windowScene activationState];

  firstResponder = 0;
  v53 = 0;
  v54 = &v53;
  v55 = 0x2020000000;
  v56 = 0;
  v20 = activationState == 2;
  if (!v20)
  {
    firstResponder = [(CalWindowRootViewController *)self firstResponder];
  }

  if (horizontalSizeClass == horizontalSizeClass2 || horizontalSizeClass3 != 2)
  {
    if (horizontalSizeClass == horizontalSizeClass2)
    {
      displayedDetailViewControllers = 0;
      goto LABEL_26;
    }

    presentedViewController = [(CalWindowRootViewController *)self presentedViewController];
    if ([(CalWindowRootViewController *)self currentSidebarState]!= 1)
    {
      goto LABEL_24;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_24;
    }

    viewControllers = [presentedViewController viewControllers];
    firstObject = [viewControllers firstObject];
    NSClassFromString(@"EKCalendarEditor");
    if (objc_opt_isKindOfClass())
    {
    }

    else
    {
      viewControllers2 = [presentedViewController viewControllers];
      firstObject2 = [viewControllers2 firstObject];
      NSClassFromString(@"EKSubscribedCalendarEditor");
      isKindOfClass = objc_opt_isKindOfClass();

      if ((isKindOfClass & 1) == 0)
      {
        goto LABEL_24;
      }
    }

    topViewController = [(UINavigationController *)self->_primaryVC topViewController];
    preservedState = [topViewController preservedState];
    calendarsPreservedState = self->_calendarsPreservedState;
    self->_calendarsPreservedState = preservedState;

    [(CalWindowRootViewController *)self dismissViewControllerAnimated:0 completion:0];
    goto LABEL_24;
  }

  presentedViewController = [(RootNavigationController *)self->_rootNavigationController presentedViewController];
  if (!presentedViewController)
  {
    presentedViewController = [(CalWindowRootViewController *)self presentedViewController];
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(RootNavigationController *)self->_rootNavigationController dismissViewControllerAnimated:0 completion:0];
      v54[3] = 2;
      objc_storeStrong(&self->_presentedInboxVC, presentedViewController);
      displayedDetailViewControllers = [(InboxViewController *)self->_presentedInboxVC displayedDetailViewControllers];
      goto LABEL_25;
    }

LABEL_24:
    displayedDetailViewControllers = 0;
    goto LABEL_25;
  }

  preservedState2 = [presentedViewController preservedState];
  v23 = self->_calendarsPreservedState;
  self->_calendarsPreservedState = preservedState2;

  presentingViewController = [presentedViewController presentingViewController];
  [presentingViewController dismissViewControllerAnimated:0 completion:0];

  displayedDetailViewControllers = 0;
  v54[3] = 1;
LABEL_25:

LABEL_26:
  searchBar = [(SearchResultsViewController *)self->_searchResultsController searchBar];
  text = [searchBar text];

  if (text)
  {
    v51[0] = _NSConcreteStackBlock;
    v51[1] = 3221225472;
    v51[2] = sub_1000FF670;
    v51[3] = &unk_10020F1F0;
    v51[4] = self;
    v52 = text;
    [coordinatorCopy animateAlongsideTransition:0 completion:v51];
  }

  v50.receiver = self;
  v50.super_class = CalWindowRootViewController;
  [(CalWindowRootViewController *)&v50 willTransitionToTraitCollection:collectionCopy withTransitionCoordinator:coordinatorCopy];
  if (coordinatorCopy)
  {
    [coordinatorCopy targetTransform];
  }

  else
  {
    memset(&v49, 0, sizeof(v49));
  }

  v45[0] = _NSConcreteStackBlock;
  v45[1] = 3221225472;
  v45[2] = sub_1000FF704;
  v45[3] = &unk_10020F398;
  v46 = v38;
  v47 = !CGAffineTransformIsIdentity(&v49);
  v48 = v20;
  v45[4] = self;
  v45[5] = &v53;
  v39[0] = _NSConcreteStackBlock;
  v39[1] = 3221225472;
  v39[2] = sub_1000FF8CC;
  v39[3] = &unk_100211858;
  v35 = firstResponder;
  v43 = &v53;
  v40 = v35;
  selfCopy = self;
  v44 = v20;
  v36 = displayedDetailViewControllers;
  v42 = v36;
  [coordinatorCopy animateAlongsideTransition:v45 completion:v39];

  _Block_object_dispose(&v53, 8);
}

- (CGSize)mainContentSize
{
  view = [(RootNavigationController *)self->_rootNavigationController view];
  [view bounds];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

+ (id)sanitizeCalSubCal:(id)cal
{
  calCopy = cal;
  scheme = [calCopy scheme];
  v5 = [scheme isEqualToString:@"calsubcal"];

  if (v5)
  {
    resourceSpecifier = [calCopy resourceSpecifier];
    stringByRemovingPercentEncoding = [resourceSpecifier stringByRemovingPercentEncoding];

    if (stringByRemovingPercentEncoding)
    {
      v8 = [NSURL URLWithString:stringByRemovingPercentEncoding];
    }

    else
    {
      v8 = calCopy;
    }

    v9 = v8;
  }

  else
  {
    v9 = calCopy;
  }

  return v9;
}

- (void)handleURL:(id)l context:(id)context
{
  lCopy = l;
  contextCopy = context;
  scheme = [lCopy scheme];
  traitCollection = [(CalWindowRootViewController *)self traitCollection];
  horizontalSizeClass = [traitCollection horizontalSizeClass];

  if (horizontalSizeClass == 2)
  {
    if ([scheme isEqualToString:@"calinvitelist"])
    {
      model = [(RootNavigationController *)self->_rootNavigationController model];
      allEventNotificationsCount = [model allEventNotificationsCount];

      if (allEventNotificationsCount)
      {
        [(CalWindowRootViewController *)self setCurrentSidebarState:2];
        goto LABEL_23;
      }
    }
  }

  traitCollection2 = [(CalWindowRootViewController *)self traitCollection];
  if ([traitCollection2 horizontalSizeClass] == 2)
  {
    if ([scheme isEqualToString:@"calsubcal"])
    {

LABEL_18:
      if (self->_currentSidebarState != 1)
      {
        [(CalWindowRootViewController *)self setCurrentSidebarState:1];
      }

      topViewController = [(UINavigationController *)self->_primaryVC topViewController];
      v18 = [CalWindowRootViewController sanitizeCalSubCal:lCopy];
      if (v18)
      {
        [(CalWindowRootViewController *)self cancelSearch];
        [topViewController showAddSubscribedCalendarWithURL:v18];
      }

      goto LABEL_23;
    }

    v16 = [scheme isEqualToString:@"webcal"];

    if (v16)
    {
      goto LABEL_18;
    }
  }

  else
  {
  }

  if (horizontalSizeClass == 2 && [scheme isEqualToString:@"calshow"] && (objc_msgSend(lCopy, "host"), v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "isEqualToString:", @"familyCalendar"), v14, v15))
  {
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_1000FFFA8;
    v19[3] = &unk_10020F370;
    v19[4] = self;
    [(CalWindowRootViewController *)self showCalendarsViewWithCompletion:v19];
  }

  else
  {
    if (self->_currentSidebarState && [(CalWindowRootViewController *)self splitBehavior]== 2)
    {
      [(CalWindowRootViewController *)self setCurrentSidebarState:0];
    }

    [(CalWindowRootViewController *)self cancelSearch];
    [(RootNavigationController *)self->_rootNavigationController handleURL:lCopy context:contextCopy];
  }

LABEL_23:
}

- (void)continueSearchWithTerm:(id)term
{
  termCopy = term;
  ekui_futureTraitCollection = [(CalWindowRootViewController *)self ekui_futureTraitCollection];
  horizontalSizeClass = [ekui_futureTraitCollection horizontalSizeClass];

  rootNavigationController = self->_rootNavigationController;
  if (horizontalSizeClass == 1)
  {
    [(RootNavigationController *)rootNavigationController continueSearchWithTerm:termCopy animated:1 removeViewControllersIncapableOfSearchIfNeeded:1];
  }

  else
  {
    largeSearchController = [(RootNavigationController *)rootNavigationController largeSearchController];
    searchBar = [largeSearchController searchBar];
    [searchBar setText:termCopy];

    [(CalWindowRootViewController *)self showSearch];
    largeSearchController2 = [(RootNavigationController *)self->_rootNavigationController largeSearchController];
    searchBar2 = [largeSearchController2 searchBar];
    [(CalWindowRootViewController *)self searchBar:searchBar2 textDidChange:termCopy];
  }
}

- (void)updatePrimaryViewControllerNavBar
{
  topViewController = [(UINavigationController *)self->_primaryVC topViewController];
  traitCollection = [(CalWindowRootViewController *)self traitCollection];
  horizontalSizeClass = [traitCollection horizontalSizeClass];

  if (horizontalSizeClass == 2)
  {
    [(SidebarPaletteView *)self->_paletteView sizeToFit];
    [(SidebarPaletteView *)self->_paletteView frame];
    [(_UINavigationBarPalette *)self->_palette setPreferredHeight:v5];
    palette = self->_palette;
  }

  else
  {
    palette = 0;
  }

  navigationItem = [topViewController navigationItem];
  [navigationItem _setBottomPalette:palette];
}

- (BOOL)canShowAvatarViewWithTraitCollection:(id)collection
{
  collectionCopy = collection;
  model = [(RootNavigationController *)self->_rootNavigationController model];
  if ([model containsDelegateSources])
  {
    v6 = [collectionCopy horizontalSizeClass] == 2;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)viewControllerForSidebarState:(unint64_t)state
{
  switch(state)
  {
    case 3uLL:
      v12 = [CompactListViewController alloc];
      model = [(RootNavigationController *)self->_rootNavigationController model];
      view = [(CalWindowRootViewController *)self view];
      window = [view window];
      switcherViewController = [(ListViewController *)v12 initWithModel:model window:window];

      [(ListViewController *)switcherViewController setDelegate:self];
      [(ListViewController *)switcherViewController setOverrideExtendedEdges:0];
      [(ListViewController *)switcherViewController setDestination:2];
      segmentedControl = 0;
      v8 = @"Today";
      goto LABEL_11;
    case 2uLL:
      presentedInboxVC = self->_presentedInboxVC;
      if (presentedInboxVC)
      {
        switcherViewController = [(InboxViewController *)presentedInboxVC switcherViewController];
        [(CompactListViewController *)switcherViewController willMoveToParentViewController:0];
        view2 = [(CompactListViewController *)switcherViewController view];
        [view2 removeFromSuperview];

        [(CompactListViewController *)switcherViewController removeFromParentViewController];
        [(CompactListViewController *)switcherViewController setSwitcherDelegate:self];
        [(ListViewController *)switcherViewController setDestination:2];
        v11 = self->_presentedInboxVC;
        self->_presentedInboxVC = 0;
      }

      else
      {
        v17 = [InboxSwitcherViewController alloc];
        model2 = [(RootNavigationController *)self->_rootNavigationController model];
        switcherViewController = [(InboxSwitcherViewController *)v17 initWithModel:model2 destination:2];

        [(CompactListViewController *)switcherViewController setSwitcherDelegate:self];
      }

      segmentedControl = [(CompactListViewController *)switcherViewController segmentedControl];
      v8 = @"Inbox";
      goto LABEL_11;
    case 1uLL:
      v4 = [CalendarsViewController alloc];
      model3 = [(RootNavigationController *)self->_rootNavigationController model];
      switcherViewController = [(CalendarsViewController *)v4 initWithModel:model3 destination:2];

      segmentedControl = 0;
      v8 = @"Calendars";
LABEL_11:
      v19 = +[NSBundle mainBundle];
      v16 = [v19 localizedStringForKey:v8 value:&stru_1002133B8 table:0];

      goto LABEL_12;
  }

  v16 = 0;
  segmentedControl = 0;
  switcherViewController = 0;
LABEL_12:
  [(SidebarPaletteView *)self->_paletteView setTitle:v16];
  [(SidebarPaletteView *)self->_paletteView setSegmentedControl:segmentedControl];
  [(SidebarPaletteView *)self->_paletteView setNeedsLayout];
  [(SidebarPaletteView *)self->_paletteView layoutIfNeeded];
  paletteView = self->_paletteView;
  view3 = [(UINavigationController *)self->_primaryVC view];
  [view3 bounds];
  [(SidebarPaletteView *)paletteView sizeThatFits:v22, v23];

  [(_UINavigationBarPalette *)self->_palette frame];
  [(_UINavigationBarPalette *)self->_palette setFrame:?];
  navigationItem = [(CompactListViewController *)switcherViewController navigationItem];
  [navigationItem _setAutoScrollEdgeTransitionDistance:16.0];

  navigationItem2 = [(CompactListViewController *)switcherViewController navigationItem];
  [navigationItem2 _setManualScrollEdgeAppearanceEnabled:1];

  v26 = switcherViewController;
  return switcherViewController;
}

- (void)setCurrentSidebarState:(unint64_t)state completion:(id)completion
{
  completionCopy = completion;
  if (state)
  {
    self->_lastOpenSidebarState = state;
  }

  if (!self->_didAppear || [(CalWindowRootViewController *)self isCollapsed])
  {
    if (self->_currentSidebarState != state)
    {
      self->_needsSidebarSetup = 1;
      self->_pendingState = state;
      [(CalWindowRootViewController *)self updateNavigationBarButtons];
    }

    if (completionCopy)
    {
      completionCopy[2](completionCopy, 0);
    }

    goto LABEL_42;
  }

  if (state != 1)
  {
    if (!state)
    {
      goto LABEL_19;
    }

    currentSidebarState = self->_currentSidebarState;
LABEL_18:
    if (currentSidebarState != state)
    {
      v11 = [(CalWindowRootViewController *)self viewControllerForSidebarState:state];
      if (v11)
      {
        if (self->_currentSidebarState == 2)
        {
          [(CalWindowRootViewController *)self inboxWillDismiss];
        }

        primaryVC = self->_primaryVC;
        v33 = v11;
        v13 = [NSArray arrayWithObjects:&v33 count:1];
        [(UINavigationController *)primaryVC setViewControllers:v13];

        if (self->_currentSidebarState)
        {
          v14 = [objc_opt_class() shouldHideInlineFocusBannerForSidebarState:state];
          paletteView = [(RootNavigationController *)self->_rootNavigationController paletteView];
          [paletteView setShouldHideInlineFocusBanner:v14];
        }

        else
        {
          transitionCoordinator = [(CalWindowRootViewController *)self transitionCoordinator];

          if (transitionCoordinator)
          {

            goto LABEL_41;
          }

          self->_animatingSidebar = [(CalWindowRootViewController *)self splitBehavior]== 1;
          [(CalWindowRootViewController *)self showColumn:0];
          [(CalWindowRootViewController *)self cancelSearch];
          transitionCoordinator2 = [(CalWindowRootViewController *)self transitionCoordinator];
          v28[0] = _NSConcreteStackBlock;
          v28[1] = 3221225472;
          v28[2] = sub_100100CB8;
          v28[3] = &unk_10020F488;
          v28[4] = self;
          v28[5] = state;
          v26[0] = _NSConcreteStackBlock;
          v26[1] = 3221225472;
          v26[2] = sub_100100D2C;
          v26[3] = &unk_10020F1F0;
          v26[4] = self;
          v27 = v11;
          [transitionCoordinator2 animateAlongsideTransition:v28 completion:v26];
        }

        if (state == 3)
        {
          v16 = [UIBarButtonItem alloc];
          v17 = +[NSBundle mainBundle];
          v18 = [v17 localizedStringForKey:@"Today" value:&stru_1002133B8 table:0];
          v19 = [v16 initWithTitle:v18 style:0 target:self action:"todayToolbarItemPressed"];
          v32 = v19;
          v20 = [NSArray arrayWithObjects:&v32 count:1];
          [v11 setToolbarItems:v20];
        }

        [(CalWindowRootViewController *)self updatePrimaryViewControllerNavBar];
      }

      self->_currentSidebarState = state;

LABEL_31:
      [(CalWindowRootViewController *)self updateNavigationBarButtons];
      self->_animatingSidebar = 0;
      if (completionCopy)
      {
        (completionCopy)[2](completionCopy, v11);
      }

      goto LABEL_41;
    }

LABEL_19:
    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_100100C1C;
    v31[3] = &unk_10020EB00;
    v31[4] = self;
    v10 = objc_retainBlock(v31);
    if ([(CalWindowRootViewController *)self displayMode]== 1)
    {
      goto LABEL_20;
    }

    transitionCoordinator3 = [(CalWindowRootViewController *)self transitionCoordinator];

    if (!transitionCoordinator3)
    {
      if (self->_currentSidebarState == 2)
      {
        [(CalWindowRootViewController *)self inboxWillDismiss];
      }

      self->_animatingSidebar = [(CalWindowRootViewController *)self splitBehavior]== 1;
      [(CalWindowRootViewController *)self hideColumn:0];
      transitionCoordinator4 = [(CalWindowRootViewController *)self transitionCoordinator];
      if (transitionCoordinator4)
      {
        v23 = transitionCoordinator4;
        v29[0] = _NSConcreteStackBlock;
        v29[1] = 3221225472;
        v29[2] = sub_100100CA8;
        v29[3] = &unk_10020F1C8;
        v30 = v10;
        [v23 animateAlongsideTransition:v29 completion:0];

        goto LABEL_21;
      }

LABEL_20:
      (v10[2])(v10);
LABEL_21:
      self->_currentSidebarState = 0;

      v11 = 0;
      goto LABEL_31;
    }

    v11 = 0;
LABEL_41:

    goto LABEL_42;
  }

  currentSidebarState = self->_currentSidebarState;
  if (currentSidebarState != 1)
  {
    goto LABEL_18;
  }

  if (!self->_calendarsPreservedState)
  {
    currentSidebarState = 1;
    goto LABEL_18;
  }

  topViewController = [(UINavigationController *)self->_primaryVC topViewController];
  [topViewController restorePreservedState:self->_calendarsPreservedState];
  calendarsPreservedState = self->_calendarsPreservedState;
  self->_calendarsPreservedState = 0;

  if (completionCopy)
  {
    completionCopy[2](completionCopy, 0);
  }

LABEL_42:
}

- (void)showCalendarsSideBarWithCompletion:(id)completion
{
  completionCopy = completion;
  if ([(CalWindowRootViewController *)self currentSidebarState]== 1)
  {
    topViewController = [(UINavigationController *)self->_primaryVC topViewController];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (completionCopy)
    {
      if (isKindOfClass)
      {
        v7 = topViewController;
      }

      else
      {
        v7 = 0;
      }

      (completionCopy)[2](completionCopy, v7);
    }
  }

  else
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100100ECC;
    v8[3] = &unk_10020F4B0;
    v9 = completionCopy;
    [(CalWindowRootViewController *)self setCurrentSidebarState:1 completion:v8];
  }
}

- (void)showInboxSideBarWithCompletion:(id)completion
{
  completionCopy = completion;
  if ([(CalWindowRootViewController *)self currentSidebarState]== 2)
  {
    topViewController = [(UINavigationController *)self->_primaryVC topViewController];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (completionCopy)
    {
      if (isKindOfClass)
      {
        v7 = topViewController;
      }

      else
      {
        v7 = 0;
      }

      (completionCopy)[2](completionCopy, v7);
    }
  }

  else
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100101050;
    v8[3] = &unk_10020F4B0;
    v9 = completionCopy;
    [(CalWindowRootViewController *)self setCurrentSidebarState:2 completion:v8];
  }
}

- (void)showListSideBarWithCompletion:(id)completion
{
  completionCopy = completion;
  if ([(CalWindowRootViewController *)self currentSidebarState]== 3)
  {
    topViewController = [(UINavigationController *)self->_primaryVC topViewController];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (completionCopy)
    {
      if (isKindOfClass)
      {
        v7 = topViewController;
      }

      else
      {
        v7 = 0;
      }

      (completionCopy)[2](completionCopy, v7);
    }
  }

  else
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1001011D4;
    v8[3] = &unk_10020F4B0;
    v9 = completionCopy;
    [(CalWindowRootViewController *)self setCurrentSidebarState:3 completion:v8];
  }
}

- (void)todayToolbarItemPressed
{
  topViewController = [(UINavigationController *)self->_primaryVC topViewController];
  v2 = CUIKTodayDate();
  [topViewController scrollToDate:v2 animated:1];
}

- (void)showEventAndCloseSidebarIfNeeded:(id)needed animated:(BOOL)animated showMode:(unint64_t)mode
{
  animatedCopy = animated;
  neededCopy = needed;
  if (self->_currentSidebarState && [(CalWindowRootViewController *)self splitBehavior]== 2 && ([(CalWindowRootViewController *)self setCurrentSidebarState:0], [(CalWindowRootViewController *)self transitionCoordinator], (v9 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v10 = v9;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1001013EC;
    v11[3] = &unk_10020F4D8;
    v11[4] = self;
    v14 = animatedCopy;
    v12 = neededCopy;
    modeCopy = mode;
    [v10 animateAlongsideTransition:v11 completion:0];
  }

  else
  {
    [(RootNavigationController *)self->_rootNavigationController showEvent:neededCopy animated:animatedCopy showMode:mode context:0];
  }
}

- (void)splitViewController:(id)controller willHideColumn:(int64_t)column
{
  controllerCopy = controller;
  v7 = controllerCopy;
  if (!column)
  {
    if (self->_currentSidebarState)
    {
      v12 = controllerCopy;
      controllerCopy = [(CalWindowRootViewController *)self isCollapsed];
      v7 = v12;
      if ((controllerCopy & 1) == 0)
      {
        view = [(CalWindowRootViewController *)self view];
        window = [view window];
        windowScene = [window windowScene];
        activationState = [windowScene activationState];

        v7 = v12;
        if (activationState != 2)
        {
          if (self->_currentSidebarState == 2)
          {
            controllerCopy = [(CalWindowRootViewController *)self inboxWillDismiss];
            v7 = v12;
          }

          self->_currentSidebarState = 0;
        }
      }
    }
  }

  _objc_release_x1(controllerCopy, v7);
}

- (void)inboxWillDismiss
{
  topViewController = [(UINavigationController *)self->_primaryVC topViewController];
  view = [topViewController view];
  [view endEditing:1];

  [topViewController inboxWillDismiss];
}

- (void)attemptDisplayReviewPrompt
{
  view = [(CalWindowRootViewController *)self view];
  window = [view window];
  windowScene = [window windowScene];
  model = [(RootNavigationController *)self->_rootNavigationController model];
  [EKUIAppReviewUtils displayReviewPromptIfNeededInScene:windowScene calendarModel:model];
}

- (void)showIdentitySwitcherFromSourceView:(id)view
{
  viewCopy = view;
  v5 = [IdentitySwitcherViewController alloc];
  model = [(RootNavigationController *)self->_rootNavigationController model];
  v7 = [(IdentitySwitcherViewController *)v5 initWithModel:model];

  [(IdentitySwitcherViewController *)v7 setModalPresentationStyle:7];
  popoverPresentationController = [(IdentitySwitcherViewController *)v7 popoverPresentationController];
  [popoverPresentationController setSourceView:viewCopy];

  if (CalInterfaceIsLeftToRight())
  {
    v9 = 4;
  }

  else
  {
    v9 = 8;
  }

  [popoverPresentationController setPermittedArrowDirections:v9];
  v10 = kCalUILogHandle;
  if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[83058884] Showing identity switcher", v11, 2u);
  }

  [(CalWindowRootViewController *)self presentViewController:v7 animated:1 completion:0];
}

- (void)paletteTodayButtonTapped:(id)tapped
{
  [(RootNavigationController *)self->_rootNavigationController todayPressed];
  if (self->_currentSidebarState == 3)
  {
    topViewController = [(UINavigationController *)self->_primaryVC topViewController];
    [topViewController scrollToTodayAnimated:1];
  }

  searchResultsController = self->_searchResultsController;
  v6 = CUIKTodayDate();
  [(SearchResultsViewController *)searchResultsController scrollToDate:v6 animated:1];
}

- (void)paletteAvatarViewTapped:(id)tapped
{
  avatarView = [tapped avatarView];
  [(CalWindowRootViewController *)self showIdentitySwitcherFromSourceView:avatarView];
}

- (BOOL)paletteShouldShowAvatarView
{
  ekui_futureTraitCollection = [(RootNavigationController *)self->_rootNavigationController ekui_futureTraitCollection];
  if ([(CalWindowRootViewController *)self canShowAvatarViewWithTraitCollection:ekui_futureTraitCollection])
  {
    v4 = self->_currentSidebarState == 0;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (unint64_t)focusFilterMode
{
  model = [(RootNavigationController *)self->_rootNavigationController model];
  focusFilterMode = [model focusFilterMode];

  return focusFilterMode;
}

- (void)setFocusFilterMode:(unint64_t)mode
{
  model = [(RootNavigationController *)self->_rootNavigationController model];
  [model setFocusFilterMode:mode];
}

- (void)_identityChanged:(id)changed
{
  paletteView = self->_paletteView;
  model = [(RootNavigationController *)self->_rootNavigationController model];
  sourceForSelectedIdentity = [model sourceForSelectedIdentity];
  [(SidebarPaletteView *)paletteView updateIdentity:sourceForSelectedIdentity];
}

- (void)_delegatesChanged:(id)changed
{
  model = [(RootNavigationController *)self->_rootNavigationController model];
  -[SidebarPaletteView setShowIdentity:](self->_paletteView, "setShowIdentity:", [model containsDelegateSources]);

  rootNavigationController = self->_rootNavigationController;

  [(RootNavigationController *)rootNavigationController setAvatarViewVisible:0];
}

- (void)_updateAfterExtendedLaunch:(id)launch
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100101B28;
  block[3] = &unk_10020EB00;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (BOOL)canPerformAction:(SEL)action withSender:(id)sender
{
  rootNavigationController = self->_rootNavigationController;
  senderCopy = sender;
  if ([(RootNavigationController *)rootNavigationController shouldHandleCanPerformActionForSelector:action])
  {
    v8 = [(RootNavigationController *)self->_rootNavigationController canPerformAction:action withSender:senderCopy];
  }

  else
  {
    v11.receiver = self;
    v11.super_class = CalWindowRootViewController;
    v8 = [(CalWindowRootViewController *)&v11 canPerformAction:action withSender:senderCopy];
  }

  v9 = v8;

  return v9;
}

- (void)routeNewEventKeyCommand
{
  traitCollection = [(CalWindowRootViewController *)self traitCollection];
  if ([traitCollection horizontalSizeClass] != 2)
  {
    goto LABEL_4;
  }

  presentedViewController = [(CalWindowRootViewController *)self presentedViewController];
  if (presentedViewController)
  {

LABEL_4:
LABEL_5:
    rootNavigationController = self->_rootNavigationController;

    [(RootNavigationController *)rootNavigationController handleNewEventKeyCommand];
    return;
  }

  presentedViewController2 = [(RootNavigationController *)self->_rootNavigationController presentedViewController];

  if (presentedViewController2)
  {
    goto LABEL_5;
  }

  addEventBarButtonItem = [(RootNavigationController *)self->_rootNavigationController addEventBarButtonItem];
  isEnabled = [addEventBarButtonItem isEnabled];

  if (isEnabled)
  {

    [(CalWindowRootViewController *)self showAddEvent];
  }
}

- (void)routeSearchKeyCommand
{
  traitCollection = [(CalWindowRootViewController *)self traitCollection];
  if ([traitCollection horizontalSizeClass] != 2)
  {
    goto LABEL_4;
  }

  presentedViewController = [(CalWindowRootViewController *)self presentedViewController];
  if (presentedViewController)
  {

LABEL_4:
LABEL_5:
    rootNavigationController = self->_rootNavigationController;

    [(RootNavigationController *)rootNavigationController handleSearchKeyCommand];
    return;
  }

  presentedViewController2 = [(RootNavigationController *)self->_rootNavigationController presentedViewController];

  if (presentedViewController2)
  {
    goto LABEL_5;
  }

  [(CalWindowRootViewController *)self showSearch];
}

- (void)toggleSidebar:(id)sidebar
{
  if ([(CalWindowRootViewController *)self currentSidebarState])
  {
    selfCopy2 = self;
    lastOpenSidebarState = 0;
  }

  else
  {
    lastOpenSidebarState = self->_lastOpenSidebarState;
    if (!lastOpenSidebarState)
    {
      lastOpenSidebarState = 1;
      self->_lastOpenSidebarState = 1;
    }

    selfCopy2 = self;
  }

  [(CalWindowRootViewController *)selfCopy2 setCurrentSidebarState:lastOpenSidebarState];
}

- (BOOL)_shouldUseSideBar
{
  traitCollection = [(CalWindowRootViewController *)self traitCollection];
  v3 = [traitCollection horizontalSizeClass] == 2;

  return v3;
}

- (void)showCalendarsViewWithCompletion:(id)completion
{
  completionCopy = completion;
  if ([(CalWindowRootViewController *)self _shouldUseSideBar])
  {
    [(CalWindowRootViewController *)self showCalendarsSideBarWithCompletion:completionCopy];
  }

  else
  {
    [(RootNavigationController *)self->_rootNavigationController showCalendarsAnimated:1 completion:completionCopy];
  }
}

- (void)showInboxView
{
  if ([(CalWindowRootViewController *)self _shouldUseSideBar])
  {

    [(CalWindowRootViewController *)self showInboxSideBarWithCompletion:0];
  }

  else
  {
    v3 = [(RootNavigationController *)self->_rootNavigationController showInboxAnimated:1];
  }
}

- (void)showListView
{
  if ([(CalWindowRootViewController *)self _shouldUseSideBar])
  {

    [(CalWindowRootViewController *)self showListSideBarWithCompletion:0];
  }

  else
  {
    resetToDayView = [(RootNavigationController *)self->_rootNavigationController resetToDayView];

    if (resetToDayView)
    {
      rootNavigationController = self->_rootNavigationController;

      [(RootNavigationController *)rootNavigationController toggleDayViewMode:2];
    }
  }
}

- (void)showSearchView
{
  if ([(CalWindowRootViewController *)self _shouldUseSideBar])
  {

    [(CalWindowRootViewController *)self showSearch];
  }

  else
  {
    v3 = [(RootNavigationController *)self->_rootNavigationController showSearchAnimated:1 becomeFirstResponder:1 completion:0];
  }
}

- (void)showSplitMonthView
{
  resetToMonthView = [(RootNavigationController *)self->_rootNavigationController resetToMonthView];

  if (resetToMonthView)
  {
    if ([(CalWindowRootViewController *)self _shouldUseSideBar])
    {

      [(CalWindowRootViewController *)self showListView];
    }

    else
    {
      v4 = [(RootNavigationController *)self->_rootNavigationController resetToMonthViewSplit:1];
    }
  }
}

- (void)showDayView
{
  resetToDayView = [(RootNavigationController *)self->_rootNavigationController resetToDayView];

  if (resetToDayView)
  {
    rootNavigationController = self->_rootNavigationController;

    [(RootNavigationController *)rootNavigationController toggleDayViewMode:0];
  }
}

- (void)showInspectorForCalendar:(id)calendar enableDoneInitially:(BOOL)initially
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001024B8;
  v7[3] = &unk_10020F528;
  calendarCopy = calendar;
  initiallyCopy = initially;
  v6 = calendarCopy;
  [(CalWindowRootViewController *)self showCalendarsViewWithCompletion:v7];
}

- (void)pressesBegan:(id)began withEvent:(id)event
{
  beganCopy = began;
  eventCopy = event;
  isFirstResponder = [(CalWindowRootViewController *)self isFirstResponder];
  selfCopy = self;
  topMainViewControllerContainer = [(RootNavigationController *)self->_rootNavigationController topMainViewControllerContainer];
  wantsToRespondToLinearNavigationCommandsWhenNotFirstResponder = [topMainViewControllerContainer wantsToRespondToLinearNavigationCommandsWhenNotFirstResponder];

  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v12 = beganCopy;
  v13 = [v12 countByEnumeratingWithState:&v51 objects:v55 count:16];
  if (v13)
  {
    v14 = v13;
    v44 = eventCopy;
    v49 = *v52;
    v15 = isFirstResponder | wantsToRespondToLinearNavigationCommandsWhenNotFirstResponder;
    v45 = 1;
    v47 = v12;
    while (1)
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v52 != v49)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v51 + 1) + 8 * i);
        v18 = [v17 key];
        if ([v18 keyCode] == 44)
        {
          [v17 key];
          v20 = v19 = v4;
          modifierFlags = [v20 modifierFlags];

          v4 = v19;
          if (!modifierFlags)
          {
            [(RootNavigationController *)selfCopy->_rootNavigationController handleSpaceBarKeyCommand];
          }
        }

        else
        {
        }

        if (v15)
        {
          presentedViewController = [(CalWindowRootViewController *)selfCopy presentedViewController];

          if (!presentedViewController)
          {
            v23 = [v17 key];
            if ([v23 keyCode] == 43)
            {
              [v17 key];
              v25 = v24 = v4;
              modifierFlags2 = [v25 modifierFlags];

              v4 = v24;
              if (modifierFlags2 == 0x20000)
              {
                v27 = [(CalWindowRootViewController *)selfCopy targetForAction:"handleSelectPreviousEventCommand" withSender:0];
                v28 = v27;
                if (v27)
                {
                  [v27 handleSelectPreviousEventCommand];
                  goto LABEL_21;
                }

                goto LABEL_43;
              }
            }

            else
            {
            }

            v29 = [v17 key];
            if ([v29 keyCode] == 43)
            {
              [v17 key];
              v31 = v30 = v4;
              modifierFlags3 = [v31 modifierFlags];

              v4 = v30;
              if (!modifierFlags3)
              {
                v33 = [(CalWindowRootViewController *)selfCopy targetForAction:"handleSelectNextEventCommand" withSender:0];
                v28 = v33;
                if (v33)
                {
                  [v33 handleSelectNextEventCommand];
LABEL_21:
                  v45 = 0;
                }

LABEL_43:

                continue;
              }
            }

            else
            {
            }

            v34 = [v17 key];
            keyCode = [v34 keyCode];
            if (keyCode == 82 || ([v17 key], v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "keyCode") == 80))
            {
              v36 = v4;
              v37 = [v17 key];
              modifierFlags4 = [v37 modifierFlags];

              if (keyCode != 82)
              {
              }

              v12 = v47;
              if (!modifierFlags4)
              {
                v39 = [(CalWindowRootViewController *)selfCopy targetForAction:"handleSelectPreviousEventCommand" withSender:0];
                v28 = v39;
                if (v39)
                {
                  [v39 handleSelectPreviousEventCommand];
                  v45 = 0;
                }

                v4 = v36;
                goto LABEL_43;
              }

              v4 = v36;
            }

            else
            {
            }

            v28 = [v17 key];
            keyCode2 = [v28 keyCode];
            if (keyCode2 == 81 || ([v17 key], eventCopy = objc_claimAutoreleasedReturnValue(), objc_msgSend(eventCopy, "keyCode") == 79))
            {
              v46 = v4;
              v41 = [v17 key];
              modifierFlags5 = [v41 modifierFlags];

              if (keyCode2 != 81)
              {
              }

              v12 = v47;
              if (modifierFlags5)
              {
                v4 = v46;
                continue;
              }

              v43 = [(CalWindowRootViewController *)selfCopy targetForAction:"handleSelectNextEventCommand" withSender:0];
              v28 = v43;
              if (v43)
              {
                [v43 handleSelectNextEventCommand];
                v45 = 0;
              }

              v4 = v46;
            }

            else
            {
            }

            goto LABEL_43;
          }
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v51 objects:v55 count:16];
      if (!v14)
      {

        eventCopy = v44;
        if ((v45 & 1) == 0)
        {
          goto LABEL_50;
        }

        goto LABEL_49;
      }
    }
  }

LABEL_49:
  v50.receiver = selfCopy;
  v50.super_class = CalWindowRootViewController;
  [(CalWindowRootViewController *)&v50 pressesBegan:v12 withEvent:eventCopy];
LABEL_50:
}

- (void)dismissPresentedViewControllerAnimated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  presentedViewController = [(CalWindowRootViewController *)self presentedViewController];

  if (presentedViewController)
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100102A30;
    v8[3] = &unk_10020F550;
    v8[4] = self;
    v10 = animatedCopy;
    v9 = completionCopy;
    [(CalWindowRootViewController *)self dismissViewControllerAnimated:animatedCopy completion:v8];
  }

  else
  {
    [(RootNavigationController *)self->_rootNavigationController dismissPresentedViewControllerAnimated:animatedCopy completion:completionCopy];
  }
}

- (void)searchBarTextDidBeginEditing:(id)editing
{
  editingCopy = editing;
  [(SearchResultsViewController *)self->_searchResultsController setSearchBar:editingCopy];
  [(CalWindowRootViewController *)self showSearch];
  [editingCopy setShowsCancelButton:1 animated:1];
  v5 = dispatch_time(0, 250000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100102B50;
  block[3] = &unk_10020EB00;
  v8 = editingCopy;
  v6 = editingCopy;
  dispatch_after(v5, &_dispatch_main_q, block);
}

- (void)searchBarCancelButtonClicked:(id)clicked
{
  clickedCopy = clicked;
  [clickedCopy setShowsCancelButton:0 animated:1];
  [clickedCopy setText:0];
  [clickedCopy resignFirstResponder];

  [(CalWindowRootViewController *)self endSearch];
}

- (void)searchBarSearchButtonClicked:(id)clicked
{
  clickedCopy = clicked;
  [(CalWindowRootViewController *)self showSearch];
  [(SearchResultsViewController *)self->_searchResultsController searchBarSearchButtonClicked:clickedCopy];
}

- (void)cancelSearch
{
  searchBar = [(SearchResultsViewController *)self->_searchResultsController searchBar];
  [(CalWindowRootViewController *)self searchBarCancelButtonClicked:searchBar];
}

- (void)showSearch
{
  self->_isSearching = 1;
  [(CalWindowRootViewController *)self setCurrentSidebarState:0];

  [(CalWindowRootViewController *)self showColumn:4];
}

@end