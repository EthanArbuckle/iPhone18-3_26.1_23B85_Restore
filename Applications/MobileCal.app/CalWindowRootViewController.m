@interface CalWindowRootViewController
+ (id)sanitizeCalSubCal:(id)a3;
- (BOOL)_shouldUseSideBar;
- (BOOL)_viewControllerExistsInPresentationChainThatShouldNotRotate;
- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4;
- (BOOL)canShowAvatarViewWithTraitCollection:(id)a3;
- (BOOL)paletteShouldShowAvatarView;
- (CGSize)mainContentSize;
- (CalWindowRootViewController)initWithRootNavigationController:(id)a3;
- (id)largeCalendarBarButtonItem;
- (id)largeInboxBarButtonItem;
- (id)largeListViewBarButtonItem;
- (id)traitCollectionToUseWhileLoadingViewsDuringTransitioningToTraitCollection:(id)a3;
- (id)viewControllerForSidebarState:(unint64_t)a3;
- (unint64_t)focusFilterMode;
- (unint64_t)supportedInterfaceOrientations;
- (void)_delegatesChanged:(id)a3;
- (void)_identityChanged:(id)a3;
- (void)_updateAfterExtendedLaunch:(id)a3;
- (void)attemptDisplayReviewPrompt;
- (void)cancelSearch;
- (void)continueSearchWithTerm:(id)a3;
- (void)dealloc;
- (void)dismissPresentedViewControllerAnimated:(BOOL)a3 completion:(id)a4;
- (void)handleURL:(id)a3 context:(id)a4;
- (void)inboxWillDismiss;
- (void)paletteAvatarViewTapped:(id)a3;
- (void)paletteTodayButtonTapped:(id)a3;
- (void)pressesBegan:(id)a3 withEvent:(id)a4;
- (void)routeNewEventKeyCommand;
- (void)routeSearchKeyCommand;
- (void)searchBarCancelButtonClicked:(id)a3;
- (void)searchBarSearchButtonClicked:(id)a3;
- (void)searchBarTextDidBeginEditing:(id)a3;
- (void)setCurrentSidebarState:(unint64_t)a3 completion:(id)a4;
- (void)setFocusFilterMode:(unint64_t)a3;
- (void)showCalendarsSideBarWithCompletion:(id)a3;
- (void)showCalendarsViewWithCompletion:(id)a3;
- (void)showDayView;
- (void)showEventAndCloseSidebarIfNeeded:(id)a3 animated:(BOOL)a4 showMode:(unint64_t)a5;
- (void)showIdentitySwitcherFromSourceView:(id)a3;
- (void)showInboxSideBarWithCompletion:(id)a3;
- (void)showInboxView;
- (void)showInspectorForCalendar:(id)a3 enableDoneInitially:(BOOL)a4;
- (void)showListSideBarWithCompletion:(id)a3;
- (void)showListView;
- (void)showSearch;
- (void)showSearchView;
- (void)showSplitMonthView;
- (void)splitViewController:(id)a3 willHideColumn:(int64_t)a4;
- (void)todayToolbarItemPressed;
- (void)toggleSidebar:(id)a3;
- (void)updateNavigationBarButtons;
- (void)updatePrimaryViewControllerNavBar;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)willTransitionToTraitCollection:(id)a3 withTransitionCoordinator:(id)a4;
@end

@implementation CalWindowRootViewController

- (CalWindowRootViewController)initWithRootNavigationController:(id)a3
{
  v5 = a3;
  v26.receiver = self;
  v26.super_class = CalWindowRootViewController;
  v6 = [(CalWindowRootViewController *)&v26 initWithStyle:1];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_rootNavigationController, a3);
    [(RootNavigationController *)v7->_rootNavigationController setSplitViewDelegate:v7];
    v8 = [SearchResultsViewController alloc];
    v9 = [(RootNavigationController *)v7->_rootNavigationController model];
    v10 = [(RootNavigationController *)v7->_rootNavigationController window];
    v11 = [(SearchResultsViewController *)v8 initWithModel:v9 window:v10];
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
    v20 = [(RootNavigationController *)v7->_rootNavigationController model];
    [v18 addObserver:v7 selector:"_identityChanged:" name:v19 object:v20];

    v21 = CUIKCalendarModelDelegatesChangedNotification;
    v22 = [(RootNavigationController *)v7->_rootNavigationController model];
    [v18 addObserver:v7 selector:"_delegatesChanged:" name:v21 object:v22];

    v23 = CUIKCalendarModelDisplayedOccurrencesChangedForTheFirstTimeNotification;
    v24 = [(RootNavigationController *)v7->_rootNavigationController model];
    [v18 addObserver:v7 selector:"_updateAfterExtendedLaunch:" name:v23 object:v24];

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
  v3 = [(CalWindowRootViewController *)self view];
  [v3 setAutoresizingMask:18];

  v4 = +[UIColor systemBackgroundColor];
  v5 = [(CalWindowRootViewController *)self view];
  [v5 setBackgroundColor:v4];

  [(CalWindowRootViewController *)self setDelegate:self];
  [(CalWindowRootViewController *)self setPresentsWithGesture:0];
  [(CalWindowRootViewController *)self setDisplayModeButtonVisibility:1];
  v6 = objc_alloc_init(UINavigationController);
  primaryVC = self->_primaryVC;
  self->_primaryVC = v6;

  v8 = +[UIColor systemBackgroundColor];
  v9 = [(UINavigationController *)self->_primaryVC view];
  [v9 setBackgroundColor:v8];

  v10 = +[UIColor secondarySystemBackgroundColor];
  v11 = [(UINavigationController *)self->_primaryVC navigationBar];
  [v11 setBarTintColor:v10];

  v12 = [(UINavigationController *)self->_primaryVC navigationBar];
  [v12 setForceFullHeightInLandscape:1];

  [(CalWindowRootViewController *)self setViewController:self->_primaryVC forColumn:0];
  [(CalWindowRootViewController *)self setViewController:self->_rootNavigationController forColumn:2];
  [(CalWindowRootViewController *)self setViewController:self->_rootNavigationController forColumn:3];
  [(CalWindowRootViewController *)self setViewController:self->_searchResultsController forColumn:4];
  v13 = [[SidebarPaletteView alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  paletteView = self->_paletteView;
  self->_paletteView = v13;

  [(SidebarPaletteView *)self->_paletteView setTranslatesAutoresizingMaskIntoConstraints:0];
  v15 = [(RootNavigationController *)self->_rootNavigationController model];
  [(SidebarPaletteView *)self->_paletteView setModel:v15];

  [(SidebarPaletteView *)self->_paletteView setDelegate:self];
  v16 = [(RootNavigationController *)self->_rootNavigationController model];
  -[SidebarPaletteView setShowIdentity:](self->_paletteView, "setShowIdentity:", [v16 containsDelegateSources]);

  v17 = self->_paletteView;
  v18 = [(CalWindowRootViewController *)self view];
  [v18 bounds];
  [(SidebarPaletteView *)v17 sizeThatFits:v19, v20];
  v22 = v21;
  v24 = v23;

  v25 = [[UIView alloc] initWithFrame:{0.0, 0.0, v22, v24}];
  [v25 addSubview:self->_paletteView];
  v43 = [(SidebarPaletteView *)self->_paletteView leadingAnchor];
  v42 = [v25 leadingAnchor];
  v41 = [v43 constraintEqualToAnchor:v42];
  v45[0] = v41;
  v40 = [(SidebarPaletteView *)self->_paletteView trailingAnchor];
  v39 = [v25 trailingAnchor];
  v26 = [v40 constraintEqualToAnchor:v39];
  v45[1] = v26;
  v27 = [(SidebarPaletteView *)self->_paletteView topAnchor];
  v28 = [v25 topAnchor];
  v29 = [v27 constraintEqualToAnchor:v28];
  v45[2] = v29;
  v30 = [(SidebarPaletteView *)self->_paletteView bottomAnchor];
  v31 = [v25 bottomAnchor];
  v32 = [v30 constraintEqualToAnchor:v31];
  v45[3] = v32;
  v33 = [NSArray arrayWithObjects:v45 count:4];
  [NSLayoutConstraint activateConstraints:v33];

  v34 = [[_UINavigationBarPalette alloc] initWithContentView:v25];
  palette = self->_palette;
  self->_palette = v34;

  [(_UINavigationBarPalette *)self->_palette setPreferredHeight:v24];
  v36 = [(RootNavigationController *)self->_rootNavigationController paletteView];
  [v36 setDelegate:self];

  [(CalWindowRootViewController *)self hideColumn:0];
  [(CalWindowRootViewController *)self hideColumn:4];
  [(RootNavigationController *)self->_rootNavigationController setAvatarViewVisible:0];
  v37 = [objc_opt_class() shouldHideInlineFocusBannerForSidebarState:self->_currentSidebarState];
  v38 = [(RootNavigationController *)self->_rootNavigationController paletteView];
  [v38 setShouldHideInlineFocusBanner:v37];

  [(CalWindowRootViewController *)self updateNavigationBarButtons];
}

- (id)largeCalendarBarButtonItem
{
  v3 = [(RootNavigationController *)self->_rootNavigationController model];
  v4 = [(RootNavigationController *)self->_rootNavigationController model];
  v5 = [v4 sourceForSelectedIdentity];
  v6 = [v3 displayableAccountErrorsForSource:v5];

  v7 = [(CalWindowRootViewController *)self currentSidebarState];
  if (v6 < 1)
  {
    largeCalendarBarButtonItem = self->_largeCalendarBarButtonItem;
    if (!largeCalendarBarButtonItem)
    {
      v17 = [UIImageSymbolConfiguration configurationWithPointSize:4 weight:3 scale:17.0];
      v18 = [UIBarButtonItem alloc];
      v19 = [UIImage systemImageNamed:@"calendar" withConfiguration:v17];
      v20 = [v19 imageFlippedForRightToLeftLayoutDirection];
      v21 = [v18 initWithImage:v20 style:0 target:self action:"calendarButtonTapped"];
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

    [(UIBarButtonItem *)largeCalendarBarButtonItem setSelected:v7 == 1];
    v15 = self->_largeCalendarBarButtonItem;
  }

  else
  {
    largeBadgedCalendarBarButtonItem = self->_largeBadgedCalendarBarButtonItem;
    if (!largeBadgedCalendarBarButtonItem)
    {
      v9 = [MainWindowControlHeaderView badgedCalendarIcon:v7 == 1];
      v10 = [MainWindowControlHeaderView customBadgedButtonWithImage:v9 target:self selected:v7 == 1 insets:"calendarButtonTapped" action:-8.0, -10.0, -8.0, -10.0];
      v11 = [[UIBarButtonItem alloc] initWithCustomView:v10];
      v12 = self->_largeBadgedCalendarBarButtonItem;
      self->_largeBadgedCalendarBarButtonItem = v11;

      [(UIBarButtonItem *)self->_largeBadgedCalendarBarButtonItem setAccessibilityIdentifier:@"calendars-button"];
      largeBadgedCalendarBarButtonItem = self->_largeBadgedCalendarBarButtonItem;
    }

    v13 = [(UIBarButtonItem *)largeBadgedCalendarBarButtonItem customView];
    v14 = [MainWindowControlHeaderView badgedCalendarIcon:v7 == 1];
    [v13 setImage:v14 forState:0];

    v15 = self->_largeBadgedCalendarBarButtonItem;
  }

  return v15;
}

- (id)largeInboxBarButtonItem
{
  v3 = [(RootNavigationController *)self->_rootNavigationController model];
  v4 = [v3 eventNotificationsForCurrentIdentityCount];

  v5 = [(CalWindowRootViewController *)self currentSidebarState];
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

  if (v4 < 1)
  {
    [(UIBarButtonItem *)self->_largeInboxBarButtonItem setSelected:v5 == 2];
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

    v16 = [MainWindowControlHeaderView inboxImageForCount:v4 selected:v5 == 2 forToolbar:0 bold:0];
    v17 = [(UIBarButtonItem *)self->_largeBadgedInboxBarButtonItem customView];
    [v17 setImage:v16 forState:0];

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
    v6 = [v5 imageFlippedForRightToLeftLayoutDirection];
    v7 = [v4 initWithImage:v6 style:0 target:self action:"listButtonTapped"];
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
    v6 = [(CalWindowRootViewController *)self largeCalendarBarButtonItem];
    v15[0] = v6;
    v7 = [(CalWindowRootViewController *)self largeInboxBarButtonItem];
    v15[1] = v7;
    v8 = [(CalWindowRootViewController *)self largeListViewBarButtonItem];
    v15[2] = v8;
    v9 = [NSArray arrayWithObjects:v15 count:3];
    v10 = [v5 initWithBarButtonItems:v9 representativeItem:0];

    v14 = v10;
    v11 = [NSArray arrayWithObjects:&v14 count:1];
    v12 = [(CalWindowRootViewController *)self navigationItem];
    [v12 setLeadingItemGroups:v11];
  }

  else
  {
    v13 = [(CalWindowRootViewController *)self navigationItem];
    [v13 setLeadingItemGroups:&__NSArray0__struct];
  }
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
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
  [(CalWindowRootViewController *)&v5 viewDidAppear:v3];
}

- (BOOL)_viewControllerExistsInPresentationChainThatShouldNotRotate
{
  v3 = +[NSMutableSet set];
  v4 = objc_opt_class();
  if (v4)
  {
    [v3 addObject:v4];
  }

  v5 = [(CalWindowRootViewController *)self presentedViewController];
  if (v5)
  {
    v6 = v5;
    do
    {
      v7 = [v3 containsObject:objc_opt_class()];
      if (v7)
      {
        break;
      }

      v8 = [v6 presentedViewController];

      v6 = v8;
    }

    while (v8);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)supportedInterfaceOrientations
{
  v3 = [(CalWindowRootViewController *)self presentedViewController];
  v4 = EKUIUseLargeFormatPhoneUI();
  objc_opt_class();
  if (((objc_opt_isKindOfClass() & 1) != 0 || v4 && self->_isSearching || -[CalWindowRootViewController _viewControllerExistsInPresentationChainThatShouldNotRotate](self, "_viewControllerExistsInPresentationChainThatShouldNotRotate")) && (-[CalWindowRootViewController view](self, "view"), v5 = objc_claimAutoreleasedReturnValue(), [v5 window], v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "windowScene"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "interfaceOrientation"), v7, v6, v5, v8))
  {
    v9 = 1 << v8;
  }

  else
  {
    v11.receiver = self;
    v11.super_class = CalWindowRootViewController;
    v9 = [(CalWindowRootViewController *)&v11 supportedInterfaceOrientations];
  }

  return v9;
}

- (id)traitCollectionToUseWhileLoadingViewsDuringTransitioningToTraitCollection:(id)a3
{
  v3 = a3;
  if ([v3 horizontalSizeClass] == 1 && objc_msgSend(v3, "verticalSizeClass") == 1)
  {
    v4 = [v3 traitCollectionByModifyingTraits:&stru_100211830];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)willTransitionToTraitCollection:(id)a3 withTransitionCoordinator:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (([(CalWindowRootViewController *)self isViewLoaded]& 1) == 0)
  {
    v8 = [(CalWindowRootViewController *)self traitCollectionToUseWhileLoadingViewsDuringTransitioningToTraitCollection:v6];
    if (v8)
    {
      [(CalWindowRootViewController *)self setEkui_futureTraitCollection:v8];
      v9 = [(CalWindowRootViewController *)self view];
      [v9 setNeedsLayout];

      [(CalWindowRootViewController *)self setEkui_futureTraitCollection:0];
    }

    else
    {
      v10 = [(CalWindowRootViewController *)self view];
      [v10 setNeedsLayout];
    }
  }

  v11 = [v6 horizontalSizeClass];
  v12 = [(CalWindowRootViewController *)self traitCollection];
  v13 = [v12 horizontalSizeClass];

  v14 = [v6 horizontalSizeClass];
  v38 = v14 == 2;
  v15 = [(CalWindowRootViewController *)self view];
  v16 = [v15 window];
  v17 = [v16 windowScene];
  v18 = [v17 activationState];

  v19 = 0;
  v53 = 0;
  v54 = &v53;
  v55 = 0x2020000000;
  v56 = 0;
  v20 = v18 == 2;
  if (!v20)
  {
    v19 = [(CalWindowRootViewController *)self firstResponder];
  }

  if (v11 == v13 || v14 != 2)
  {
    if (v11 == v13)
    {
      v25 = 0;
      goto LABEL_26;
    }

    v21 = [(CalWindowRootViewController *)self presentedViewController];
    if ([(CalWindowRootViewController *)self currentSidebarState]!= 1)
    {
      goto LABEL_24;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_24;
    }

    v26 = [v21 viewControllers];
    v27 = [v26 firstObject];
    NSClassFromString(@"EKCalendarEditor");
    if (objc_opt_isKindOfClass())
    {
    }

    else
    {
      v28 = [v21 viewControllers];
      v29 = [v28 firstObject];
      NSClassFromString(@"EKSubscribedCalendarEditor");
      isKindOfClass = objc_opt_isKindOfClass();

      if ((isKindOfClass & 1) == 0)
      {
        goto LABEL_24;
      }
    }

    v30 = [(UINavigationController *)self->_primaryVC topViewController];
    v31 = [v30 preservedState];
    calendarsPreservedState = self->_calendarsPreservedState;
    self->_calendarsPreservedState = v31;

    [(CalWindowRootViewController *)self dismissViewControllerAnimated:0 completion:0];
    goto LABEL_24;
  }

  v21 = [(RootNavigationController *)self->_rootNavigationController presentedViewController];
  if (!v21)
  {
    v21 = [(CalWindowRootViewController *)self presentedViewController];
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(RootNavigationController *)self->_rootNavigationController dismissViewControllerAnimated:0 completion:0];
      v54[3] = 2;
      objc_storeStrong(&self->_presentedInboxVC, v21);
      v25 = [(InboxViewController *)self->_presentedInboxVC displayedDetailViewControllers];
      goto LABEL_25;
    }

LABEL_24:
    v25 = 0;
    goto LABEL_25;
  }

  v22 = [v21 preservedState];
  v23 = self->_calendarsPreservedState;
  self->_calendarsPreservedState = v22;

  v24 = [v21 presentingViewController];
  [v24 dismissViewControllerAnimated:0 completion:0];

  v25 = 0;
  v54[3] = 1;
LABEL_25:

LABEL_26:
  v33 = [(SearchResultsViewController *)self->_searchResultsController searchBar];
  v34 = [v33 text];

  if (v34)
  {
    v51[0] = _NSConcreteStackBlock;
    v51[1] = 3221225472;
    v51[2] = sub_1000FF670;
    v51[3] = &unk_10020F1F0;
    v51[4] = self;
    v52 = v34;
    [v7 animateAlongsideTransition:0 completion:v51];
  }

  v50.receiver = self;
  v50.super_class = CalWindowRootViewController;
  [(CalWindowRootViewController *)&v50 willTransitionToTraitCollection:v6 withTransitionCoordinator:v7];
  if (v7)
  {
    [v7 targetTransform];
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
  v35 = v19;
  v43 = &v53;
  v40 = v35;
  v41 = self;
  v44 = v20;
  v36 = v25;
  v42 = v36;
  [v7 animateAlongsideTransition:v45 completion:v39];

  _Block_object_dispose(&v53, 8);
}

- (CGSize)mainContentSize
{
  v2 = [(RootNavigationController *)self->_rootNavigationController view];
  [v2 bounds];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

+ (id)sanitizeCalSubCal:(id)a3
{
  v3 = a3;
  v4 = [v3 scheme];
  v5 = [v4 isEqualToString:@"calsubcal"];

  if (v5)
  {
    v6 = [v3 resourceSpecifier];
    v7 = [v6 stringByRemovingPercentEncoding];

    if (v7)
    {
      v8 = [NSURL URLWithString:v7];
    }

    else
    {
      v8 = v3;
    }

    v9 = v8;
  }

  else
  {
    v9 = v3;
  }

  return v9;
}

- (void)handleURL:(id)a3 context:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 scheme];
  v9 = [(CalWindowRootViewController *)self traitCollection];
  v10 = [v9 horizontalSizeClass];

  if (v10 == 2)
  {
    if ([v8 isEqualToString:@"calinvitelist"])
    {
      v11 = [(RootNavigationController *)self->_rootNavigationController model];
      v12 = [v11 allEventNotificationsCount];

      if (v12)
      {
        [(CalWindowRootViewController *)self setCurrentSidebarState:2];
        goto LABEL_23;
      }
    }
  }

  v13 = [(CalWindowRootViewController *)self traitCollection];
  if ([v13 horizontalSizeClass] == 2)
  {
    if ([v8 isEqualToString:@"calsubcal"])
    {

LABEL_18:
      if (self->_currentSidebarState != 1)
      {
        [(CalWindowRootViewController *)self setCurrentSidebarState:1];
      }

      v17 = [(UINavigationController *)self->_primaryVC topViewController];
      v18 = [CalWindowRootViewController sanitizeCalSubCal:v6];
      if (v18)
      {
        [(CalWindowRootViewController *)self cancelSearch];
        [v17 showAddSubscribedCalendarWithURL:v18];
      }

      goto LABEL_23;
    }

    v16 = [v8 isEqualToString:@"webcal"];

    if (v16)
    {
      goto LABEL_18;
    }
  }

  else
  {
  }

  if (v10 == 2 && [v8 isEqualToString:@"calshow"] && (objc_msgSend(v6, "host"), v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "isEqualToString:", @"familyCalendar"), v14, v15))
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
    [(RootNavigationController *)self->_rootNavigationController handleURL:v6 context:v7];
  }

LABEL_23:
}

- (void)continueSearchWithTerm:(id)a3
{
  v11 = a3;
  v4 = [(CalWindowRootViewController *)self ekui_futureTraitCollection];
  v5 = [v4 horizontalSizeClass];

  rootNavigationController = self->_rootNavigationController;
  if (v5 == 1)
  {
    [(RootNavigationController *)rootNavigationController continueSearchWithTerm:v11 animated:1 removeViewControllersIncapableOfSearchIfNeeded:1];
  }

  else
  {
    v7 = [(RootNavigationController *)rootNavigationController largeSearchController];
    v8 = [v7 searchBar];
    [v8 setText:v11];

    [(CalWindowRootViewController *)self showSearch];
    v9 = [(RootNavigationController *)self->_rootNavigationController largeSearchController];
    v10 = [v9 searchBar];
    [(CalWindowRootViewController *)self searchBar:v10 textDidChange:v11];
  }
}

- (void)updatePrimaryViewControllerNavBar
{
  v8 = [(UINavigationController *)self->_primaryVC topViewController];
  v3 = [(CalWindowRootViewController *)self traitCollection];
  v4 = [v3 horizontalSizeClass];

  if (v4 == 2)
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

  v7 = [v8 navigationItem];
  [v7 _setBottomPalette:palette];
}

- (BOOL)canShowAvatarViewWithTraitCollection:(id)a3
{
  v4 = a3;
  v5 = [(RootNavigationController *)self->_rootNavigationController model];
  if ([v5 containsDelegateSources])
  {
    v6 = [v4 horizontalSizeClass] == 2;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)viewControllerForSidebarState:(unint64_t)a3
{
  switch(a3)
  {
    case 3uLL:
      v12 = [CompactListViewController alloc];
      v13 = [(RootNavigationController *)self->_rootNavigationController model];
      v14 = [(CalWindowRootViewController *)self view];
      v15 = [v14 window];
      v6 = [(ListViewController *)v12 initWithModel:v13 window:v15];

      [(ListViewController *)v6 setDelegate:self];
      [(ListViewController *)v6 setOverrideExtendedEdges:0];
      [(ListViewController *)v6 setDestination:2];
      v7 = 0;
      v8 = @"Today";
      goto LABEL_11;
    case 2uLL:
      presentedInboxVC = self->_presentedInboxVC;
      if (presentedInboxVC)
      {
        v6 = [(InboxViewController *)presentedInboxVC switcherViewController];
        [(CompactListViewController *)v6 willMoveToParentViewController:0];
        v10 = [(CompactListViewController *)v6 view];
        [v10 removeFromSuperview];

        [(CompactListViewController *)v6 removeFromParentViewController];
        [(CompactListViewController *)v6 setSwitcherDelegate:self];
        [(ListViewController *)v6 setDestination:2];
        v11 = self->_presentedInboxVC;
        self->_presentedInboxVC = 0;
      }

      else
      {
        v17 = [InboxSwitcherViewController alloc];
        v18 = [(RootNavigationController *)self->_rootNavigationController model];
        v6 = [(InboxSwitcherViewController *)v17 initWithModel:v18 destination:2];

        [(CompactListViewController *)v6 setSwitcherDelegate:self];
      }

      v7 = [(CompactListViewController *)v6 segmentedControl];
      v8 = @"Inbox";
      goto LABEL_11;
    case 1uLL:
      v4 = [CalendarsViewController alloc];
      v5 = [(RootNavigationController *)self->_rootNavigationController model];
      v6 = [(CalendarsViewController *)v4 initWithModel:v5 destination:2];

      v7 = 0;
      v8 = @"Calendars";
LABEL_11:
      v19 = +[NSBundle mainBundle];
      v16 = [v19 localizedStringForKey:v8 value:&stru_1002133B8 table:0];

      goto LABEL_12;
  }

  v16 = 0;
  v7 = 0;
  v6 = 0;
LABEL_12:
  [(SidebarPaletteView *)self->_paletteView setTitle:v16];
  [(SidebarPaletteView *)self->_paletteView setSegmentedControl:v7];
  [(SidebarPaletteView *)self->_paletteView setNeedsLayout];
  [(SidebarPaletteView *)self->_paletteView layoutIfNeeded];
  paletteView = self->_paletteView;
  v21 = [(UINavigationController *)self->_primaryVC view];
  [v21 bounds];
  [(SidebarPaletteView *)paletteView sizeThatFits:v22, v23];

  [(_UINavigationBarPalette *)self->_palette frame];
  [(_UINavigationBarPalette *)self->_palette setFrame:?];
  v24 = [(CompactListViewController *)v6 navigationItem];
  [v24 _setAutoScrollEdgeTransitionDistance:16.0];

  v25 = [(CompactListViewController *)v6 navigationItem];
  [v25 _setManualScrollEdgeAppearanceEnabled:1];

  v26 = v6;
  return v6;
}

- (void)setCurrentSidebarState:(unint64_t)a3 completion:(id)a4
{
  v6 = a4;
  if (a3)
  {
    self->_lastOpenSidebarState = a3;
  }

  if (!self->_didAppear || [(CalWindowRootViewController *)self isCollapsed])
  {
    if (self->_currentSidebarState != a3)
    {
      self->_needsSidebarSetup = 1;
      self->_pendingState = a3;
      [(CalWindowRootViewController *)self updateNavigationBarButtons];
    }

    if (v6)
    {
      v6[2](v6, 0);
    }

    goto LABEL_42;
  }

  if (a3 != 1)
  {
    if (!a3)
    {
      goto LABEL_19;
    }

    currentSidebarState = self->_currentSidebarState;
LABEL_18:
    if (currentSidebarState != a3)
    {
      v11 = [(CalWindowRootViewController *)self viewControllerForSidebarState:a3];
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
          v14 = [objc_opt_class() shouldHideInlineFocusBannerForSidebarState:a3];
          v15 = [(RootNavigationController *)self->_rootNavigationController paletteView];
          [v15 setShouldHideInlineFocusBanner:v14];
        }

        else
        {
          v24 = [(CalWindowRootViewController *)self transitionCoordinator];

          if (v24)
          {

            goto LABEL_41;
          }

          self->_animatingSidebar = [(CalWindowRootViewController *)self splitBehavior]== 1;
          [(CalWindowRootViewController *)self showColumn:0];
          [(CalWindowRootViewController *)self cancelSearch];
          v25 = [(CalWindowRootViewController *)self transitionCoordinator];
          v28[0] = _NSConcreteStackBlock;
          v28[1] = 3221225472;
          v28[2] = sub_100100CB8;
          v28[3] = &unk_10020F488;
          v28[4] = self;
          v28[5] = a3;
          v26[0] = _NSConcreteStackBlock;
          v26[1] = 3221225472;
          v26[2] = sub_100100D2C;
          v26[3] = &unk_10020F1F0;
          v26[4] = self;
          v27 = v11;
          [v25 animateAlongsideTransition:v28 completion:v26];
        }

        if (a3 == 3)
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

      self->_currentSidebarState = a3;

LABEL_31:
      [(CalWindowRootViewController *)self updateNavigationBarButtons];
      self->_animatingSidebar = 0;
      if (v6)
      {
        (v6)[2](v6, v11);
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

    v21 = [(CalWindowRootViewController *)self transitionCoordinator];

    if (!v21)
    {
      if (self->_currentSidebarState == 2)
      {
        [(CalWindowRootViewController *)self inboxWillDismiss];
      }

      self->_animatingSidebar = [(CalWindowRootViewController *)self splitBehavior]== 1;
      [(CalWindowRootViewController *)self hideColumn:0];
      v22 = [(CalWindowRootViewController *)self transitionCoordinator];
      if (v22)
      {
        v23 = v22;
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

  v8 = [(UINavigationController *)self->_primaryVC topViewController];
  [v8 restorePreservedState:self->_calendarsPreservedState];
  calendarsPreservedState = self->_calendarsPreservedState;
  self->_calendarsPreservedState = 0;

  if (v6)
  {
    v6[2](v6, 0);
  }

LABEL_42:
}

- (void)showCalendarsSideBarWithCompletion:(id)a3
{
  v4 = a3;
  if ([(CalWindowRootViewController *)self currentSidebarState]== 1)
  {
    v5 = [(UINavigationController *)self->_primaryVC topViewController];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (v4)
    {
      if (isKindOfClass)
      {
        v7 = v5;
      }

      else
      {
        v7 = 0;
      }

      (v4)[2](v4, v7);
    }
  }

  else
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100100ECC;
    v8[3] = &unk_10020F4B0;
    v9 = v4;
    [(CalWindowRootViewController *)self setCurrentSidebarState:1 completion:v8];
  }
}

- (void)showInboxSideBarWithCompletion:(id)a3
{
  v4 = a3;
  if ([(CalWindowRootViewController *)self currentSidebarState]== 2)
  {
    v5 = [(UINavigationController *)self->_primaryVC topViewController];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (v4)
    {
      if (isKindOfClass)
      {
        v7 = v5;
      }

      else
      {
        v7 = 0;
      }

      (v4)[2](v4, v7);
    }
  }

  else
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100101050;
    v8[3] = &unk_10020F4B0;
    v9 = v4;
    [(CalWindowRootViewController *)self setCurrentSidebarState:2 completion:v8];
  }
}

- (void)showListSideBarWithCompletion:(id)a3
{
  v4 = a3;
  if ([(CalWindowRootViewController *)self currentSidebarState]== 3)
  {
    v5 = [(UINavigationController *)self->_primaryVC topViewController];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (v4)
    {
      if (isKindOfClass)
      {
        v7 = v5;
      }

      else
      {
        v7 = 0;
      }

      (v4)[2](v4, v7);
    }
  }

  else
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1001011D4;
    v8[3] = &unk_10020F4B0;
    v9 = v4;
    [(CalWindowRootViewController *)self setCurrentSidebarState:3 completion:v8];
  }
}

- (void)todayToolbarItemPressed
{
  v3 = [(UINavigationController *)self->_primaryVC topViewController];
  v2 = CUIKTodayDate();
  [v3 scrollToDate:v2 animated:1];
}

- (void)showEventAndCloseSidebarIfNeeded:(id)a3 animated:(BOOL)a4 showMode:(unint64_t)a5
{
  v6 = a4;
  v8 = a3;
  if (self->_currentSidebarState && [(CalWindowRootViewController *)self splitBehavior]== 2 && ([(CalWindowRootViewController *)self setCurrentSidebarState:0], [(CalWindowRootViewController *)self transitionCoordinator], (v9 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v10 = v9;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1001013EC;
    v11[3] = &unk_10020F4D8;
    v11[4] = self;
    v14 = v6;
    v12 = v8;
    v13 = a5;
    [v10 animateAlongsideTransition:v11 completion:0];
  }

  else
  {
    [(RootNavigationController *)self->_rootNavigationController showEvent:v8 animated:v6 showMode:a5 context:0];
  }
}

- (void)splitViewController:(id)a3 willHideColumn:(int64_t)a4
{
  v6 = a3;
  v7 = v6;
  if (!a4)
  {
    if (self->_currentSidebarState)
    {
      v12 = v6;
      v6 = [(CalWindowRootViewController *)self isCollapsed];
      v7 = v12;
      if ((v6 & 1) == 0)
      {
        v8 = [(CalWindowRootViewController *)self view];
        v9 = [v8 window];
        v10 = [v9 windowScene];
        v11 = [v10 activationState];

        v7 = v12;
        if (v11 != 2)
        {
          if (self->_currentSidebarState == 2)
          {
            v6 = [(CalWindowRootViewController *)self inboxWillDismiss];
            v7 = v12;
          }

          self->_currentSidebarState = 0;
        }
      }
    }
  }

  _objc_release_x1(v6, v7);
}

- (void)inboxWillDismiss
{
  v3 = [(UINavigationController *)self->_primaryVC topViewController];
  v2 = [v3 view];
  [v2 endEditing:1];

  [v3 inboxWillDismiss];
}

- (void)attemptDisplayReviewPrompt
{
  v6 = [(CalWindowRootViewController *)self view];
  v3 = [v6 window];
  v4 = [v3 windowScene];
  v5 = [(RootNavigationController *)self->_rootNavigationController model];
  [EKUIAppReviewUtils displayReviewPromptIfNeededInScene:v4 calendarModel:v5];
}

- (void)showIdentitySwitcherFromSourceView:(id)a3
{
  v4 = a3;
  v5 = [IdentitySwitcherViewController alloc];
  v6 = [(RootNavigationController *)self->_rootNavigationController model];
  v7 = [(IdentitySwitcherViewController *)v5 initWithModel:v6];

  [(IdentitySwitcherViewController *)v7 setModalPresentationStyle:7];
  v8 = [(IdentitySwitcherViewController *)v7 popoverPresentationController];
  [v8 setSourceView:v4];

  if (CalInterfaceIsLeftToRight())
  {
    v9 = 4;
  }

  else
  {
    v9 = 8;
  }

  [v8 setPermittedArrowDirections:v9];
  v10 = kCalUILogHandle;
  if (os_log_type_enabled(kCalUILogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[83058884] Showing identity switcher", v11, 2u);
  }

  [(CalWindowRootViewController *)self presentViewController:v7 animated:1 completion:0];
}

- (void)paletteTodayButtonTapped:(id)a3
{
  [(RootNavigationController *)self->_rootNavigationController todayPressed];
  if (self->_currentSidebarState == 3)
  {
    v4 = [(UINavigationController *)self->_primaryVC topViewController];
    [v4 scrollToTodayAnimated:1];
  }

  searchResultsController = self->_searchResultsController;
  v6 = CUIKTodayDate();
  [(SearchResultsViewController *)searchResultsController scrollToDate:v6 animated:1];
}

- (void)paletteAvatarViewTapped:(id)a3
{
  v4 = [a3 avatarView];
  [(CalWindowRootViewController *)self showIdentitySwitcherFromSourceView:v4];
}

- (BOOL)paletteShouldShowAvatarView
{
  v3 = [(RootNavigationController *)self->_rootNavigationController ekui_futureTraitCollection];
  if ([(CalWindowRootViewController *)self canShowAvatarViewWithTraitCollection:v3])
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
  v2 = [(RootNavigationController *)self->_rootNavigationController model];
  v3 = [v2 focusFilterMode];

  return v3;
}

- (void)setFocusFilterMode:(unint64_t)a3
{
  v4 = [(RootNavigationController *)self->_rootNavigationController model];
  [v4 setFocusFilterMode:a3];
}

- (void)_identityChanged:(id)a3
{
  paletteView = self->_paletteView;
  v5 = [(RootNavigationController *)self->_rootNavigationController model];
  v4 = [v5 sourceForSelectedIdentity];
  [(SidebarPaletteView *)paletteView updateIdentity:v4];
}

- (void)_delegatesChanged:(id)a3
{
  v4 = [(RootNavigationController *)self->_rootNavigationController model];
  -[SidebarPaletteView setShowIdentity:](self->_paletteView, "setShowIdentity:", [v4 containsDelegateSources]);

  rootNavigationController = self->_rootNavigationController;

  [(RootNavigationController *)rootNavigationController setAvatarViewVisible:0];
}

- (void)_updateAfterExtendedLaunch:(id)a3
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100101B28;
  block[3] = &unk_10020EB00;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4
{
  rootNavigationController = self->_rootNavigationController;
  v7 = a4;
  if ([(RootNavigationController *)rootNavigationController shouldHandleCanPerformActionForSelector:a3])
  {
    v8 = [(RootNavigationController *)self->_rootNavigationController canPerformAction:a3 withSender:v7];
  }

  else
  {
    v11.receiver = self;
    v11.super_class = CalWindowRootViewController;
    v8 = [(CalWindowRootViewController *)&v11 canPerformAction:a3 withSender:v7];
  }

  v9 = v8;

  return v9;
}

- (void)routeNewEventKeyCommand
{
  v3 = [(CalWindowRootViewController *)self traitCollection];
  if ([v3 horizontalSizeClass] != 2)
  {
    goto LABEL_4;
  }

  v4 = [(CalWindowRootViewController *)self presentedViewController];
  if (v4)
  {

LABEL_4:
LABEL_5:
    rootNavigationController = self->_rootNavigationController;

    [(RootNavigationController *)rootNavigationController handleNewEventKeyCommand];
    return;
  }

  v6 = [(RootNavigationController *)self->_rootNavigationController presentedViewController];

  if (v6)
  {
    goto LABEL_5;
  }

  v7 = [(RootNavigationController *)self->_rootNavigationController addEventBarButtonItem];
  v8 = [v7 isEnabled];

  if (v8)
  {

    [(CalWindowRootViewController *)self showAddEvent];
  }
}

- (void)routeSearchKeyCommand
{
  v3 = [(CalWindowRootViewController *)self traitCollection];
  if ([v3 horizontalSizeClass] != 2)
  {
    goto LABEL_4;
  }

  v4 = [(CalWindowRootViewController *)self presentedViewController];
  if (v4)
  {

LABEL_4:
LABEL_5:
    rootNavigationController = self->_rootNavigationController;

    [(RootNavigationController *)rootNavigationController handleSearchKeyCommand];
    return;
  }

  v6 = [(RootNavigationController *)self->_rootNavigationController presentedViewController];

  if (v6)
  {
    goto LABEL_5;
  }

  [(CalWindowRootViewController *)self showSearch];
}

- (void)toggleSidebar:(id)a3
{
  if ([(CalWindowRootViewController *)self currentSidebarState])
  {
    v4 = self;
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

    v4 = self;
  }

  [(CalWindowRootViewController *)v4 setCurrentSidebarState:lastOpenSidebarState];
}

- (BOOL)_shouldUseSideBar
{
  v2 = [(CalWindowRootViewController *)self traitCollection];
  v3 = [v2 horizontalSizeClass] == 2;

  return v3;
}

- (void)showCalendarsViewWithCompletion:(id)a3
{
  v4 = a3;
  if ([(CalWindowRootViewController *)self _shouldUseSideBar])
  {
    [(CalWindowRootViewController *)self showCalendarsSideBarWithCompletion:v4];
  }

  else
  {
    [(RootNavigationController *)self->_rootNavigationController showCalendarsAnimated:1 completion:v4];
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
    v3 = [(RootNavigationController *)self->_rootNavigationController resetToDayView];

    if (v3)
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
  v3 = [(RootNavigationController *)self->_rootNavigationController resetToMonthView];

  if (v3)
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
  v3 = [(RootNavigationController *)self->_rootNavigationController resetToDayView];

  if (v3)
  {
    rootNavigationController = self->_rootNavigationController;

    [(RootNavigationController *)rootNavigationController toggleDayViewMode:0];
  }
}

- (void)showInspectorForCalendar:(id)a3 enableDoneInitially:(BOOL)a4
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001024B8;
  v7[3] = &unk_10020F528;
  v8 = a3;
  v9 = a4;
  v6 = v8;
  [(CalWindowRootViewController *)self showCalendarsViewWithCompletion:v7];
}

- (void)pressesBegan:(id)a3 withEvent:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [(CalWindowRootViewController *)self isFirstResponder];
  v48 = self;
  v10 = [(RootNavigationController *)self->_rootNavigationController topMainViewControllerContainer];
  v11 = [v10 wantsToRespondToLinearNavigationCommandsWhenNotFirstResponder];

  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v12 = v7;
  v13 = [v12 countByEnumeratingWithState:&v51 objects:v55 count:16];
  if (v13)
  {
    v14 = v13;
    v44 = v8;
    v49 = *v52;
    v15 = v9 | v11;
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
          v21 = [v20 modifierFlags];

          v4 = v19;
          if (!v21)
          {
            [(RootNavigationController *)v48->_rootNavigationController handleSpaceBarKeyCommand];
          }
        }

        else
        {
        }

        if (v15)
        {
          v22 = [(CalWindowRootViewController *)v48 presentedViewController];

          if (!v22)
          {
            v23 = [v17 key];
            if ([v23 keyCode] == 43)
            {
              [v17 key];
              v25 = v24 = v4;
              v26 = [v25 modifierFlags];

              v4 = v24;
              if (v26 == 0x20000)
              {
                v27 = [(CalWindowRootViewController *)v48 targetForAction:"handleSelectPreviousEventCommand" withSender:0];
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
              v32 = [v31 modifierFlags];

              v4 = v30;
              if (!v32)
              {
                v33 = [(CalWindowRootViewController *)v48 targetForAction:"handleSelectNextEventCommand" withSender:0];
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
            v35 = [v34 keyCode];
            if (v35 == 82 || ([v17 key], v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "keyCode") == 80))
            {
              v36 = v4;
              v37 = [v17 key];
              v38 = [v37 modifierFlags];

              if (v35 != 82)
              {
              }

              v12 = v47;
              if (!v38)
              {
                v39 = [(CalWindowRootViewController *)v48 targetForAction:"handleSelectPreviousEventCommand" withSender:0];
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
            v40 = [v28 keyCode];
            if (v40 == 81 || ([v17 key], v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "keyCode") == 79))
            {
              v46 = v4;
              v41 = [v17 key];
              v42 = [v41 modifierFlags];

              if (v40 != 81)
              {
              }

              v12 = v47;
              if (v42)
              {
                v4 = v46;
                continue;
              }

              v43 = [(CalWindowRootViewController *)v48 targetForAction:"handleSelectNextEventCommand" withSender:0];
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

        v8 = v44;
        if ((v45 & 1) == 0)
        {
          goto LABEL_50;
        }

        goto LABEL_49;
      }
    }
  }

LABEL_49:
  v50.receiver = v48;
  v50.super_class = CalWindowRootViewController;
  [(CalWindowRootViewController *)&v50 pressesBegan:v12 withEvent:v8];
LABEL_50:
}

- (void)dismissPresentedViewControllerAnimated:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [(CalWindowRootViewController *)self presentedViewController];

  if (v7)
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100102A30;
    v8[3] = &unk_10020F550;
    v8[4] = self;
    v10 = v4;
    v9 = v6;
    [(CalWindowRootViewController *)self dismissViewControllerAnimated:v4 completion:v8];
  }

  else
  {
    [(RootNavigationController *)self->_rootNavigationController dismissPresentedViewControllerAnimated:v4 completion:v6];
  }
}

- (void)searchBarTextDidBeginEditing:(id)a3
{
  v4 = a3;
  [(SearchResultsViewController *)self->_searchResultsController setSearchBar:v4];
  [(CalWindowRootViewController *)self showSearch];
  [v4 setShowsCancelButton:1 animated:1];
  v5 = dispatch_time(0, 250000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100102B50;
  block[3] = &unk_10020EB00;
  v8 = v4;
  v6 = v4;
  dispatch_after(v5, &_dispatch_main_q, block);
}

- (void)searchBarCancelButtonClicked:(id)a3
{
  v4 = a3;
  [v4 setShowsCancelButton:0 animated:1];
  [v4 setText:0];
  [v4 resignFirstResponder];

  [(CalWindowRootViewController *)self endSearch];
}

- (void)searchBarSearchButtonClicked:(id)a3
{
  v4 = a3;
  [(CalWindowRootViewController *)self showSearch];
  [(SearchResultsViewController *)self->_searchResultsController searchBarSearchButtonClicked:v4];
}

- (void)cancelSearch
{
  v3 = [(SearchResultsViewController *)self->_searchResultsController searchBar];
  [(CalWindowRootViewController *)self searchBarCancelButtonClicked:v3];
}

- (void)showSearch
{
  self->_isSearching = 1;
  [(CalWindowRootViewController *)self setCurrentSidebarState:0];

  [(CalWindowRootViewController *)self showColumn:4];
}

@end