@interface SplitViewWindowRootViewController
+ (double)sidebarWidthForViewHierarchy:(id)hierarchy;
+ (id)sanitizeCalSubCal:(id)cal;
- (BOOL)_shouldUseSideBar;
- (BOOL)_viewControllerExistsInPresentationChainThatShouldNotRotate;
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender;
- (BOOL)canShowAvatarViewWithTraitCollection:(id)collection;
- (BOOL)isPopoverCurrentlyVisible;
- (BOOL)paletteShouldShowAvatarView;
- (BOOL)showsSearchBarForTraitCollection:(id)collection;
- (CGSize)mainContentSize;
- (SplitViewWindowRootViewController)initWithRootNavigationController:(id)controller;
- (double)searchFieldWidth;
- (id)primarySidebarViewController;
- (id)startSearch;
- (id)traitCollectionToUseWhileLoadingViewsDuringTransitioningToTraitCollection:(id)collection;
- (id)viewControllerForSidebarState:(unint64_t)state;
- (int64_t)preferredSplitBehaviorForSize:(CGSize)size;
- (int64_t)splitViewController:(id)controller displayModeForExpandingToProposedDisplayMode:(int64_t)mode;
- (unint64_t)focusFilterMode;
- (unint64_t)supportedInterfaceOrientations;
- (void)_delegatesChanged:(id)changed;
- (void)_identityChanged:(id)changed;
- (void)_updateAfterExtendedLaunch:(id)launch;
- (void)_updateNavigationAdditionalBarButtonsWithTraitCollection:(id)collection;
- (void)_updateNavigationBarButtonsWithTraitCollection:(id)collection;
- (void)_updatePreferredSplitBehaviorForSize:(CGSize)size;
- (void)activateSearchBarConstraints;
- (void)activateSearchButtonConstraints;
- (void)attemptDisplayReviewPrompt;
- (void)continueSearchWithTerm:(id)term;
- (void)createSearchBarIfNeeded;
- (void)dealloc;
- (void)dismissPresentedViewControllerAnimated:(BOOL)animated completion:(id)completion;
- (void)emptySearchBarNeedsResign:(id)resign;
- (void)endSearch:(BOOL)search;
- (void)handleURL:(id)l context:(id)context;
- (void)hideColumn:(int64_t)column;
- (void)hideInspectorColumnWithoutLosingSearchBarFocus;
- (void)inboxWillDismiss;
- (void)keyboardWillShow:(id)show;
- (void)layoutSearchControl;
- (void)layoutSegmentedControl;
- (void)newEventButtonTapped:(id)tapped;
- (void)paletteAvatarViewTapped:(id)tapped;
- (void)paletteTodayButtonTapped:(id)tapped;
- (void)pressesBegan:(id)began withEvent:(id)event;
- (void)resetSearchBar;
- (void)routeNewEventKeyCommand;
- (void)routeSearchKeyCommand;
- (void)searchBar:(id)bar textDidChange:(id)change;
- (void)searchBegan;
- (void)searchButtonTappedCreateAndAddSearchBar:(BOOL)bar;
- (void)searchEnded;
- (void)searchEnding;
- (void)searchResultsViewController:(id)controller didSelectEvent:(id)event;
- (void)searchTapped;
- (void)segmentedControlAddedToWindow;
- (void)setCurrentSidebarState:(unint64_t)state completion:(id)completion;
- (void)setFocusFilterMode:(unint64_t)mode;
- (void)setNavigationItems:(id)items additionalItems:(id)additionalItems;
- (void)setSearchStateToSearching:(BOOL)searching;
- (void)setupSearch:(BOOL)search;
- (void)setupSearchControlForTraitCollection:(id)collection;
- (void)setupSearchNavBarHeight;
- (void)showAddEvent;
- (void)showAddEventWithTitle:(id)title startDate:(id)date endDate:(id)endDate location:(id)location suggestionsKey:(id)key allDay:(BOOL)day;
- (void)showCalendarsSideBarWithCompletion:(id)completion;
- (void)showCalendarsViewWithCompletion:(id)completion;
- (void)showColumn:(int64_t)column;
- (void)showDayView;
- (void)showEventAndCloseSidebarIfNeeded:(id)needed animated:(BOOL)animated showMode:(unint64_t)mode;
- (void)showIdentitySwitcherFromSourceView:(id)view;
- (void)showInboxSideBarWithCompletion:(id)completion;
- (void)showInboxView;
- (void)showInspectorForCalendar:(id)calendar enableDoneInitially:(BOOL)initially;
- (void)showListSideBarWithCompletion:(id)completion;
- (void)showListView;
- (void)showSearchView;
- (void)showSplitMonthView;
- (void)splitViewController:(id)controller willChangeToProposedDisplayMode:(int64_t *)mode;
- (void)splitViewController:(id)controller willHideColumn:(int64_t)column;
- (void)splitViewController:(id)controller willShowColumn:(int64_t)column;
- (void)teardownSearch;
- (void)todayToolbarItemPressed;
- (void)toggleSidebar:(id)sidebar;
- (void)updateErrorState;
- (void)updateInboxCount;
- (void)updateNavigationAdditionalBarButtons;
- (void)updateNavigationBarButtons;
- (void)updateNewEventButtonEnabledness;
- (void)updatePrimaryViewControllerNavBar;
- (void)updatePrimaryViewControllerToolbar;
- (void)updateSidebarPalette;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
- (void)willEnterForeground;
- (void)willTransitionToTraitCollection:(id)collection withTransitionCoordinator:(id)coordinator;
@end

@implementation SplitViewWindowRootViewController

- (void)viewDidLoad
{
  v126.receiver = self;
  v126.super_class = SplitViewWindowRootViewController;
  [(SplitViewWindowRootViewController *)&v126 viewDidLoad];
  view = [(SplitViewWindowRootViewController *)self view];
  [view setAutoresizingMask:18];

  v4 = [[UISplitViewController alloc] initWithStyle:1];
  splitViewController = self->_splitViewController;
  self->_splitViewController = v4;

  [(UISplitViewController *)self->_splitViewController setDelegate:self];
  [(UISplitViewController *)self->_splitViewController setPresentsWithGesture:0];
  [(UISplitViewController *)self->_splitViewController setDisplayModeButtonVisibility:1];
  [(SplitViewWindowRootViewController *)self addChildViewController:self->_splitViewController];
  view2 = [(SplitViewWindowRootViewController *)self view];
  view3 = [(UISplitViewController *)self->_splitViewController view];
  [view2 addSubview:view3];

  [(UISplitViewController *)self->_splitViewController didMoveToParentViewController:self];
  view4 = [(UISplitViewController *)self->_splitViewController view];
  [view4 setTranslatesAutoresizingMaskIntoConstraints:0];

  view5 = [(UISplitViewController *)self->_splitViewController view];
  topAnchor = [view5 topAnchor];
  view6 = [(SplitViewWindowRootViewController *)self view];
  topAnchor2 = [view6 topAnchor];
  v115 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v131[0] = v115;
  view7 = [(UISplitViewController *)self->_splitViewController view];
  bottomAnchor = [view7 bottomAnchor];
  view8 = [(SplitViewWindowRootViewController *)self view];
  bottomAnchor2 = [view8 bottomAnchor];
  v101 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v131[1] = v101;
  view9 = [(UISplitViewController *)self->_splitViewController view];
  leadingAnchor = [view9 leadingAnchor];
  view10 = [(SplitViewWindowRootViewController *)self view];
  leadingAnchor2 = [view10 leadingAnchor];
  v10 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v131[2] = v10;
  view11 = [(UISplitViewController *)self->_splitViewController view];
  trailingAnchor = [view11 trailingAnchor];
  view12 = [(SplitViewWindowRootViewController *)self view];
  trailingAnchor2 = [view12 trailingAnchor];
  v15 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v131[3] = v15;
  v16 = [NSArray arrayWithObjects:v131 count:4];
  [NSLayoutConstraint activateConstraints:v16];

  v17 = objc_alloc_init(UINavigationController);
  primaryVC = self->_primaryVC;
  self->_primaryVC = v17;

  v19 = +[UIColor secondarySystemBackgroundColor];
  navigationBar = [(UINavigationController *)self->_primaryVC navigationBar];
  [navigationBar setBarTintColor:v19];

  navigationBar2 = [(UINavigationController *)self->_primaryVC navigationBar];
  [navigationBar2 setForceFullHeightInLandscape:1];

  [(UISplitViewController *)self->_splitViewController setViewController:self->_primaryVC forColumn:0];
  [(UISplitViewController *)self->_splitViewController hideColumn:0];
  eKUI_viewHierarchy = [(SplitViewWindowRootViewController *)self EKUI_viewHierarchy];
  [SplitViewWindowRootViewController sidebarWidthForViewHierarchy:eKUI_viewHierarchy];
  [(UISplitViewController *)self->_splitViewController setMinimumPrimaryColumnWidth:?];
  v125 = eKUI_viewHierarchy;
  [SplitViewWindowRootViewController sidebarWidthForViewHierarchy:eKUI_viewHierarchy];
  [(UISplitViewController *)self->_splitViewController setMaximumPrimaryColumnWidth:?];
  v23 = objc_alloc_init(UIViewController);
  containerViewController = self->_containerViewController;
  self->_containerViewController = v23;

  view13 = [(UIViewController *)self->_containerViewController view];
  [view13 setAutoresizingMask:18];

  v26 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"keyboardBackgroundTapped:"];
  [v26 setCancelsTouchesInView:0];
  view14 = [(UIViewController *)self->_containerViewController view];
  v122 = v26;
  [view14 addGestureRecognizer:v26];

  [(UIViewController *)self->_containerViewController addChildViewController:self->_rootNavigationController];
  view15 = [(UIViewController *)self->_containerViewController view];
  view16 = [(RootNavigationController *)self->_rootNavigationController view];
  [view15 addSubview:view16];

  [(RootNavigationController *)self->_rootNavigationController didMoveToParentViewController:self->_containerViewController];
  if (CalUIKitNavBarEnabled())
  {
    [(UISplitViewController *)self->_splitViewController setViewController:self->_containerViewController forColumn:2];
    v30 = [(SplitViewWindowRootViewController *)self viewControllerForSidebarState:2];
    v31 = self->_primaryVC;
    v130 = v30;
    v32 = [NSArray arrayWithObjects:&v130 count:1];
    [(UINavigationController *)v31 setViewControllers:v32];
  }

  else
  {
    v30 = [[MainWindowWrapperNavigationController alloc] initWithRootViewController:self->_containerViewController];
    [(MainWindowWrapperNavigationController *)v30 setNavigationBarHidden:1 animated:0];
    [(UISplitViewController *)self->_splitViewController setViewController:v30 forColumn:2];
  }

  view17 = [(RootNavigationController *)self->_rootNavigationController view];
  [view17 setTranslatesAutoresizingMaskIntoConstraints:0];

  LOBYTE(view17) = CalUIKitNavBarEnabled();
  view18 = [(RootNavigationController *)self->_rootNavigationController view];
  topAnchor3 = [view18 topAnchor];
  view19 = [(UIViewController *)self->_containerViewController view];
  [view19 topAnchor];
  v110 = v116 = topAnchor3;
  v35 = [topAnchor3 constraintEqualToAnchor:?];
  v107 = v35;
  if (view17)
  {
    v128[0] = v35;
    view20 = [(RootNavigationController *)self->_rootNavigationController view];
    bottomAnchor3 = [view20 bottomAnchor];
    view21 = [(UIViewController *)self->_containerViewController view];
    [view21 bottomAnchor];
    v100 = v103 = bottomAnchor3;
    v98 = [bottomAnchor3 constraintEqualToAnchor:?];
    v128[1] = v98;
    view22 = [(RootNavigationController *)self->_rootNavigationController view];
    leadingAnchor3 = [view22 leadingAnchor];
    view23 = [(UIViewController *)self->_containerViewController view];
    [view23 leadingAnchor];
    safeAreaLayoutGuide = v94 = leadingAnchor3;
    v91 = [leadingAnchor3 constraintEqualToAnchor:?];
    v128[2] = v91;
    view24 = [(RootNavigationController *)self->_rootNavigationController view];
    trailingAnchor3 = [view24 trailingAnchor];
    view25 = [(UIViewController *)self->_containerViewController view];
    trailingAnchor4 = [view25 trailingAnchor];
    safeAreaLayoutGuide2 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
    v128[3] = safeAreaLayoutGuide2;
    trailingAnchor5 = [NSArray arrayWithObjects:v128 count:4];
    [NSLayoutConstraint activateConstraints:trailingAnchor5];
  }

  else
  {
    v129[0] = v35;
    view20 = [(RootNavigationController *)self->_rootNavigationController view];
    bottomAnchor4 = [view20 bottomAnchor];
    view21 = [(UIViewController *)self->_containerViewController view];
    [view21 bottomAnchor];
    v100 = v103 = bottomAnchor4;
    v98 = [bottomAnchor4 constraintEqualToAnchor:?];
    v129[1] = v98;
    view22 = [(RootNavigationController *)self->_rootNavigationController view];
    leadingAnchor4 = [view22 leadingAnchor];
    view23 = [(UIViewController *)self->_containerViewController view];
    safeAreaLayoutGuide = [view23 safeAreaLayoutGuide];
    [safeAreaLayoutGuide leadingAnchor];
    v91 = v94 = leadingAnchor4;
    view24 = [leadingAnchor4 constraintEqualToAnchor:?];
    v129[2] = view24;
    trailingAnchor3 = [(RootNavigationController *)self->_rootNavigationController view];
    view25 = [trailingAnchor3 trailingAnchor];
    trailingAnchor4 = [(UIViewController *)self->_containerViewController view];
    safeAreaLayoutGuide2 = [trailingAnchor4 safeAreaLayoutGuide];
    trailingAnchor5 = [safeAreaLayoutGuide2 trailingAnchor];
    v45 = [view25 constraintEqualToAnchor:trailingAnchor5];
    v129[3] = v45;
    v46 = [NSArray arrayWithObjects:v129 count:4];
    [NSLayoutConstraint activateConstraints:v46];
  }

  traitCollection = [(SplitViewWindowRootViewController *)self traitCollection];
  horizontalSizeClass = [traitCollection horizontalSizeClass];

  if (horizontalSizeClass == 2)
  {
    viewSwitcher = [(RootNavigationController *)self->_rootNavigationController viewSwitcher];
    segmentedControl = self->_segmentedControl;
    self->_segmentedControl = viewSwitcher;

    if ((CalUIKitNavBarEnabled() & 1) == 0)
    {
      view26 = [(UIViewController *)self->_containerViewController view];
      [view26 addSubview:self->_segmentedControl];
    }
  }

  [(UISplitViewController *)self->_splitViewController setViewController:self->_searchResultsController forColumn:4, 24];
  [(UISplitViewController *)self->_splitViewController hideColumn:4];
  [SplitViewWindowRootViewController sidebarWidthForViewHierarchy:v125];
  [(UISplitViewController *)self->_splitViewController setMinimumInspectorColumnWidth:?];
  [SplitViewWindowRootViewController sidebarWidthForViewHierarchy:v125];
  [(UISplitViewController *)self->_splitViewController setMaximumInspectorColumnWidth:?];
  v52 = [MainWindowControlHeaderView alloc];
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  height = [(MainWindowControlHeaderView *)v52 initWithFrame:CGRectZero.origin.x, y, width, height];
  headerView = self->_headerView;
  self->_headerView = height;

  [(MainWindowControlHeaderView *)self->_headerView setDelegate:self];
  [(SplitViewWindowRootViewController *)self updateInboxCount];
  height2 = [[MasterNavigationPaletteView alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
  paletteView = self->_paletteView;
  self->_paletteView = height2;

  [(MasterNavigationPaletteView *)self->_paletteView setTranslatesAutoresizingMaskIntoConstraints:0];
  model = [(RootNavigationController *)self->_rootNavigationController model];
  [(MasterNavigationPaletteView *)self->_paletteView setModel:model];

  [(MasterNavigationPaletteView *)self->_paletteView setDelegate:self];
  model2 = [(RootNavigationController *)self->_rootNavigationController model];
  -[MasterNavigationPaletteView setShowIdentity:](self->_paletteView, "setShowIdentity:", [model2 containsDelegateSources]);

  [(MasterNavigationPaletteView *)self->_paletteView setHideTitle:1];
  v62 = self->_paletteView;
  view27 = [(SplitViewWindowRootViewController *)self view];
  [view27 bounds];
  [(MasterNavigationPaletteView *)v62 sizeThatFits:v64, v65];
  v67 = v66;
  v69 = v68;

  v70 = [[UIView alloc] initWithFrame:{0.0, 0.0, v67, v69}];
  [v70 addSubview:self->_paletteView];
  leadingAnchor5 = [(MasterNavigationPaletteView *)self->_paletteView leadingAnchor];
  leadingAnchor6 = [v70 leadingAnchor];
  v114 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
  v127[0] = v114;
  trailingAnchor6 = [(MasterNavigationPaletteView *)self->_paletteView trailingAnchor];
  trailingAnchor7 = [v70 trailingAnchor];
  v71 = [trailingAnchor6 constraintEqualToAnchor:trailingAnchor7];
  v127[1] = v71;
  topAnchor4 = [(MasterNavigationPaletteView *)self->_paletteView topAnchor];
  topAnchor5 = [v70 topAnchor];
  v74 = [topAnchor4 constraintEqualToAnchor:topAnchor5];
  v127[2] = v74;
  bottomAnchor5 = [(MasterNavigationPaletteView *)self->_paletteView bottomAnchor];
  bottomAnchor6 = [v70 bottomAnchor];
  v77 = [bottomAnchor5 constraintEqualToAnchor:bottomAnchor6];
  v127[3] = v77;
  v78 = [NSArray arrayWithObjects:v127 count:4];
  [NSLayoutConstraint activateConstraints:v78];

  v79 = [[_UINavigationBarPalette alloc] initWithContentView:v70];
  palette = self->_palette;
  self->_palette = v79;

  [(_UINavigationBarPalette *)self->_palette setPreferredHeight:v69];
  paletteView = [(RootNavigationController *)self->_rootNavigationController paletteView];
  [paletteView setDelegate:self];

  ekui_futureTraitCollection = [(SplitViewWindowRootViewController *)self ekui_futureTraitCollection];
  horizontalSizeClass2 = [ekui_futureTraitCollection horizontalSizeClass];

  if (horizontalSizeClass2 == 2)
  {
    if ((CalUIKitNavBarEnabled() & 1) == 0)
    {
      view28 = [(SplitViewWindowRootViewController *)self view];
      [view28 addSubview:self->_headerView];
    }

    rootNavigationController = self->_rootNavigationController;
    ekui_futureTraitCollection2 = [(SplitViewWindowRootViewController *)self ekui_futureTraitCollection];
    [(RootNavigationController *)rootNavigationController setAvatarViewVisible:[(SplitViewWindowRootViewController *)self canShowAvatarViewWithTraitCollection:ekui_futureTraitCollection2]];
  }

  else
  {
    [*(&self->super.super.super.isa + v89) setNavigationBarHidden:1 animated:0];
    [(RootNavigationController *)self->_rootNavigationController setAvatarViewVisible:0];
  }

  v87 = [objc_opt_class() shouldHideInlineFocusBannerForSidebarState:self->_currentSidebarState];
  paletteView2 = [(RootNavigationController *)self->_rootNavigationController paletteView];
  [paletteView2 setShouldHideInlineFocusBanner:v87];
}

- (void)updateNavigationBarButtons
{
  ekui_futureTraitCollection = [(RootNavigationController *)self->_rootNavigationController ekui_futureTraitCollection];
  [(SplitViewWindowRootViewController *)self _updateNavigationBarButtonsWithTraitCollection:ekui_futureTraitCollection];
}

- (void)updateInboxCount
{
  notificationQ = self->_notificationQ;
  if (!notificationQ)
  {
    v4 = dispatch_queue_create("com.apple.mobilecal.notificationUpdateQ", 0);
    v5 = self->_notificationQ;
    self->_notificationQ = v4;

    notificationQ = self->_notificationQ;
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100007780;
  block[3] = &unk_10020EB00;
  block[4] = self;
  dispatch_async(notificationQ, block);
}

- (void)updateNavigationAdditionalBarButtons
{
  ekui_futureTraitCollection = [(RootNavigationController *)self->_rootNavigationController ekui_futureTraitCollection];
  [(SplitViewWindowRootViewController *)self _updateNavigationAdditionalBarButtonsWithTraitCollection:ekui_futureTraitCollection];
}

- (unint64_t)supportedInterfaceOrientations
{
  presentedViewController = [(SplitViewWindowRootViewController *)self presentedViewController];
  v4 = EKUIUseLargeFormatPhoneUI();
  objc_opt_class();
  if (((objc_opt_isKindOfClass() & 1) != 0 || v4 && self->_isSearching || -[SplitViewWindowRootViewController _viewControllerExistsInPresentationChainThatShouldNotRotate](self, "_viewControllerExistsInPresentationChainThatShouldNotRotate")) && (-[SplitViewWindowRootViewController view](self, "view"), v5 = objc_claimAutoreleasedReturnValue(), [v5 window], v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "windowScene"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "interfaceOrientation"), v7, v6, v5, v8))
  {
    supportedInterfaceOrientations = 1 << v8;
  }

  else
  {
    v11.receiver = self;
    v11.super_class = SplitViewWindowRootViewController;
    supportedInterfaceOrientations = [(SplitViewWindowRootViewController *)&v11 supportedInterfaceOrientations];
  }

  return supportedInterfaceOrientations;
}

- (BOOL)_viewControllerExistsInPresentationChainThatShouldNotRotate
{
  v3 = +[NSMutableSet set];
  v4 = objc_opt_class();
  if (v4)
  {
    [v3 addObject:v4];
  }

  presentedViewController = [(SplitViewWindowRootViewController *)self presentedViewController];
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

- (void)viewWillLayoutSubviews
{
  if (CalUIKitNavBarEnabled())
  {
    v24.receiver = self;
    v24.super_class = SplitViewWindowRootViewController;
    [(SplitViewWindowRootViewController *)&v24 viewWillLayoutSubviews];
    [(SplitViewWindowRootViewController *)self layoutSegmentedControl];
    [(SplitViewWindowRootViewController *)self layoutSearchControl];
  }

  else
  {
    [(SplitViewWindowRootViewController *)self layoutSegmentedControl];
    superview = [(MainWindowControlHeaderView *)self->_headerView superview];

    if (superview)
    {
      viewSwitcher = [(RootNavigationController *)self->_rootNavigationController viewSwitcher];
      view = [(SplitViewWindowRootViewController *)self view];
      [viewSwitcher bounds];
      [view convertRect:viewSwitcher fromView:?];
      MidY = CGRectGetMidY(v26);

      view2 = [(SplitViewWindowRootViewController *)self view];
      [view2 bounds];
      v8 = v7;
      +[SplitViewWindowRootViewController minimumStandardWindowWidth];
      v10 = dbl_1001F81B0[v8 < v9];

      LODWORD(view2) = CalInterfaceIsLeftToRight();
      view3 = [(SplitViewWindowRootViewController *)self view];
      [view3 safeAreaInsets];
      v13 = v12;
      v15 = v14;

      if (view2)
      {
        v16 = v13;
      }

      else
      {
        v16 = v15;
      }

      v17 = v10 + v16;
      [(MainWindowControlHeaderView *)self->_headerView sizeThatFits:CGSizeZero.width, CGSizeZero.height];
      v19 = v18;
      IsLeftToRight = CalInterfaceIsLeftToRight();
      if (IsLeftToRight)
      {
        v21 = 0.0;
      }

      else
      {
        view3 = [(SplitViewWindowRootViewController *)self view];
        [view3 bounds];
        v21 = v22 - v17;
      }

      [(MainWindowControlHeaderView *)self->_headerView setFrame:v21, MidY + v19 * -0.5, v17, v19];
      if ((IsLeftToRight & 1) == 0)
      {
      }

      if (!self->_isEndingSearch)
      {
        [(SplitViewWindowRootViewController *)self layoutSearchControl];
      }
    }
  }
}

- (void)layoutSegmentedControl
{
  if ((CalUIKitNavBarEnabled() & 1) == 0)
  {
    segmentedControl = self->_segmentedControl;
    view = [(UIViewController *)self->_containerViewController view];
    [view bounds];
    [(UISegmentedControl *)segmentedControl sizeThatFits:v5, v6];
    v8 = v7;
    v10 = v9;

    view2 = [(SplitViewWindowRootViewController *)self view];
    window = [view2 window];
    view3 = [(UIViewController *)self->_containerViewController view];
    [window bounds];
    [view3 convertPoint:window fromView:{CGRectGetWidth(v24) * 0.5, 0.0}];
    v15 = v14;

    IsCompact = EKUICurrentHeightSizeClassIsCompact();
    v17 = 33.0;
    if (IsCompact)
    {
      v17 = 5.0;
    }

    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_100041AF8;
    v23[3] = &unk_10020F1A0;
    v23[4] = self;
    v23[5] = v15;
    v23[6] = v8;
    v23[7] = v10;
    *&v23[8] = v17;
    v23[9] = 0x4042000000000000;
    v18 = objc_retainBlock(v23);
    if (self->_animatingSidebar && ([(UISplitViewController *)self->_splitViewController transitionCoordinator], v19 = objc_claimAutoreleasedReturnValue(), v19, v19))
    {
      transitionCoordinator = [(UISplitViewController *)self->_splitViewController transitionCoordinator];
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_100041B24;
      v21[3] = &unk_10020F1C8;
      v22 = v18;
      [transitionCoordinator animateAlongsideTransition:v21 completion:0];
    }

    else
    {
      (v18[2])(v18);
    }
  }
}

- (void)layoutSearchControl
{
  p_searchBar = &self->_searchBar;
  superview = [(MainWindowSearchBar *)self->_searchBar superview];
  if (superview)
  {
  }

  else
  {
    superview2 = [(UIButton *)self->_searchButton superview];

    if (!superview2)
    {
      return;
    }
  }

  if ((CalUIKitNavBarEnabled() & 1) == 0)
  {
    viewSwitcher = [(RootNavigationController *)self->_rootNavigationController viewSwitcher];
    [viewSwitcher frame];
    MidY = CGRectGetMidY(v41);

    LODWORD(viewSwitcher) = CalInterfaceIsLeftToRight();
    view = [(SplitViewWindowRootViewController *)self view];
    [view safeAreaInsets];
    v10 = v9;
    v12 = v11;

    if (viewSwitcher)
    {
      v13 = v12;
    }

    else
    {
      v13 = v10;
    }

    v14 = v13 + 16.0;
    if (*p_searchBar && ([*p_searchBar superview], v15 = objc_claimAutoreleasedReturnValue(), v15, v15))
    {
      [*p_searchBar sizeToFit];
      [(SplitViewWindowRootViewController *)self searchFieldWidth];
      v17 = v16;
      [*p_searchBar layoutMargins];
      v19 = v18;
      v21 = v20;
      if (self->_isSearching)
      {
        eKUI_viewHierarchy = [(SplitViewWindowRootViewController *)self EKUI_viewHierarchy];
        [SplitViewWindowRootViewController sidebarWidthForViewHierarchy:eKUI_viewHierarchy];
        v17 = v23 - (v14 + 16.0);
      }

      if (CalUIKitNavBarEnabled())
      {
        return;
      }

      v24 = v21 + v19 + v17;
      [*p_searchBar frame];
      v26 = v25;
      if (CalInterfaceIsLeftToRight())
      {
        view2 = [(SplitViewWindowRootViewController *)self view];
        [view2 bounds];
        v14 = v28 - v24 - (v14 - v21);
      }

      else
      {
        v14 = v14 - v19;
      }

      traitCollection = [(SplitViewWindowRootViewController *)self traitCollection];
      if (EKUIUsesLargeTextLayout())
      {
        view3 = [(SplitViewWindowRootViewController *)self view];
        [view3 safeAreaInsets];
        v35 = v38;
      }

      else
      {
        v35 = MidY + v26 * -0.5;
      }
    }

    else
    {
      p_searchBar = &self->_searchButton;
      searchButton = self->_searchButton;
      if (!searchButton)
      {
        return;
      }

      superview3 = [(UIButton *)searchButton superview];

      if (!superview3)
      {
        return;
      }

      [*p_searchBar sizeToFit];
      [*p_searchBar frame];
      v24 = v31;
      v26 = v32;
      if (CalInterfaceIsLeftToRight())
      {
        view4 = [(SplitViewWindowRootViewController *)self view];
        [view4 bounds];
        v14 = v34 - v24 - v14;
      }

      v35 = MidY + v26 * -0.5;
    }

    v39 = *p_searchBar;

    [v39 setFrame:{v14, v35, v24, v26}];
  }
}

- (unint64_t)focusFilterMode
{
  model = [(RootNavigationController *)self->_rootNavigationController model];
  focusFilterMode = [model focusFilterMode];

  return focusFilterMode;
}

+ (double)sidebarWidthForViewHierarchy:(id)hierarchy
{
  v3 = EKUICurrentWindowInterfaceParadigm_RequiresPageSheetEventEditors();
  result = 320.0;
  if (v3)
  {
    return 375.0;
  }

  return result;
}

- (SplitViewWindowRootViewController)initWithRootNavigationController:(id)controller
{
  controllerCopy = controller;
  v22.receiver = self;
  v22.super_class = SplitViewWindowRootViewController;
  v6 = [(SplitViewWindowRootViewController *)&v22 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_rootNavigationController, controller);
    [(RootNavigationController *)v7->_rootNavigationController setSplitViewRootDelegate:v7];
    v8 = +[NSNotificationCenter defaultCenter];
    v9 = CUIKCalendarModelNotificationCountsChangedNotification;
    model = [(RootNavigationController *)v7->_rootNavigationController model];
    [v8 addObserver:v7 selector:"_notificationCountChanged:" name:v9 object:model];

    v11 = CUIKCalendarModelIdentityChangedNotification;
    model2 = [(RootNavigationController *)v7->_rootNavigationController model];
    [v8 addObserver:v7 selector:"_identityChanged:" name:v11 object:model2];

    v13 = CUIKCalendarModelDelegatesChangedNotification;
    model3 = [(RootNavigationController *)v7->_rootNavigationController model];
    [v8 addObserver:v7 selector:"_delegatesChanged:" name:v13 object:model3];

    v15 = CUIKCalendarModelCalendarsChangedNotification;
    model4 = [(RootNavigationController *)v7->_rootNavigationController model];
    [v8 addObserver:v7 selector:"_calendarsChanged:" name:v15 object:model4];

    v17 = CUIKCalendarModelAccountErrorCountChangedNotification;
    model5 = [(RootNavigationController *)v7->_rootNavigationController model];
    [v8 addObserver:v7 selector:"_calendarErrorCountChanged:" name:v17 object:model5];

    v19 = CUIKCalendarModelDisplayedOccurrencesChangedForTheFirstTimeNotification;
    model6 = [(RootNavigationController *)v7->_rootNavigationController model];
    [v8 addObserver:v7 selector:"_updateAfterExtendedLaunch:" name:v19 object:model6];

    [v8 addObserver:v7 selector:"_updateAfterExtendedLaunch:" name:@"MainViewControllerDidCompleteExtendedLaunchNotification" object:0];
    [v8 addObserver:v7 selector:"_focusModeChanged:" name:CUIKCalendarModelFocusModeConfigurationChangedNotification object:0];
    [v8 addObserver:v7 selector:"keyboardWillShow:" name:UIKeyboardWillShowNotification object:0];
    [v8 addObserver:v7 selector:"emptySearchBarNeedsResign:" name:@"EmptySearchBarNeedsResignFirstResponderNotification" object:0];
  }

  return v7;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = SplitViewWindowRootViewController;
  [(SplitViewWindowRootViewController *)&v4 dealloc];
}

- (void)emptySearchBarNeedsResign:(id)resign
{
  text = [(MainWindowSearchBar *)self->_searchBar text];
  v5 = [text isEqual:&stru_1002133B8];

  if (v5)
  {
    searchBar = self->_searchBar;

    [(MainWindowSearchBar *)searchBar resignFirstResponder];
  }
}

- (void)_updateNavigationBarButtonsWithTraitCollection:(id)collection
{
  collectionCopy = collection;
  v5 = collectionCopy;
  if (self->_splitViewButtonGroup && [collectionCopy horizontalSizeClass] != 1)
  {
    splitViewButtonGroup = self->_splitViewButtonGroup;
    v9 = [NSArray arrayWithObjects:&splitViewButtonGroup count:1];
    [(UISplitViewController *)self->_splitViewController _setPrimaryEdgeAdditionalBarButtonItemGroups:v9];

    navigationController = [(UISplitViewController *)self->_splitViewController navigationController];
    v7 = navigationController;
    v8 = 0;
  }

  else
  {
    [(UISplitViewController *)self->_splitViewController _setPrimaryEdgeAdditionalBarButtonItemGroups:&__NSArray0__struct];
    navigationController = [(UISplitViewController *)self->_splitViewController navigationController];
    v7 = navigationController;
    v8 = 1;
  }

  [navigationController setNavigationBarHidden:v8];

  [(SplitViewWindowRootViewController *)self _updateNavigationAdditionalBarButtonsWithTraitCollection:v5];
}

- (void)_updateNavigationAdditionalBarButtonsWithTraitCollection:(id)collection
{
  collectionCopy = collection;
  if (CalUIKitNavBarEnabled())
  {
    topViewController = [(RootNavigationController *)self->_rootNavigationController topViewController];
    navigationItem = [topViewController navigationItem];
  }

  else
  {
    navigationItem = [(UIViewController *)self->_containerViewController navigationItem];
  }

  if (self->_additionalItemsButtonGroup && [collectionCopy horizontalSizeClass] != 1)
  {
    additionalItemsButtonGroup = self->_additionalItemsButtonGroup;
    v10 = [NSArray arrayWithObjects:&additionalItemsButtonGroup count:1];
    [navigationItem setLeadingItemGroups:v10];

    navigationController = [(UIViewController *)self->_containerViewController navigationController];
    v8 = navigationController;
    v9 = 0;
  }

  else
  {
    [navigationItem setLeadingItemGroups:&__NSArray0__struct];
    navigationController = [(UIViewController *)self->_containerViewController navigationController];
    v8 = navigationController;
    v9 = 1;
  }

  [navigationController setNavigationBarHidden:v9];
}

- (void)willEnterForeground
{
  traitCollection = [(SplitViewWindowRootViewController *)self traitCollection];
  [(SplitViewWindowRootViewController *)self setupSearchControlForTraitCollection:traitCollection];

  [(SplitViewWindowRootViewController *)self layoutSegmentedControl];
}

- (void)viewWillAppear:(BOOL)appear
{
  view = [(SplitViewWindowRootViewController *)self view];
  [view bounds];
  [(SplitViewWindowRootViewController *)self _updatePreferredSplitBehaviorForSize:v4, v5];
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  self->_didAppear = 1;
  if (self->_needsSidebarSetup)
  {
    if (([(UISplitViewController *)self->_splitViewController _isCollapsed]& 1) == 0)
    {
      [(SplitViewWindowRootViewController *)self setCurrentSidebarState:self->_pendingState];
    }

    self->_needsSidebarSetup = 0;
  }

  urlToLaunch = self->_urlToLaunch;
  if (urlToLaunch)
  {
    [(SplitViewWindowRootViewController *)self handleURL:urlToLaunch context:self->_urlLaunchContext];
    v6 = self->_urlToLaunch;
    self->_urlToLaunch = 0;

    urlLaunchContext = self->_urlLaunchContext;
    self->_urlLaunchContext = 0;
  }

  traitCollection = [(SplitViewWindowRootViewController *)self traitCollection];
  [(SplitViewWindowRootViewController *)self setupSearchControlForTraitCollection:traitCollection];

  [(SplitViewWindowRootViewController *)self layoutSearchControl];
  if ((CalUIKitNavBarEnabled() & 1) == 0)
  {
    headerView = self->_headerView;
    view = [(SplitViewWindowRootViewController *)self view];
    [view bounds];
    [(MainWindowControlHeaderView *)headerView layoutForWidth:v11];
  }

  [(SplitViewWindowRootViewController *)self updateNewEventButtonEnabledness];
  v12.receiver = self;
  v12.super_class = SplitViewWindowRootViewController;
  [(SplitViewWindowRootViewController *)&v12 viewDidAppear:appearCopy];
}

- (id)traitCollectionToUseWhileLoadingViewsDuringTransitioningToTraitCollection:(id)collection
{
  collectionCopy = collection;
  if ([collectionCopy horizontalSizeClass] == 1 && objc_msgSend(collectionCopy, "verticalSizeClass") == 1)
  {
    v4 = [collectionCopy traitCollectionByModifyingTraits:&stru_10020F348];
  }

  else
  {
    v4 = collectionCopy;
  }

  v5 = v4;

  return v5;
}

- (void)willTransitionToTraitCollection:(id)collection withTransitionCoordinator:(id)coordinator
{
  collectionCopy = collection;
  coordinatorCopy = coordinator;
  if (([(SplitViewWindowRootViewController *)self isViewLoaded]& 1) == 0)
  {
    v7 = collectionCopy;
    v8 = [(SplitViewWindowRootViewController *)self traitCollectionToUseWhileLoadingViewsDuringTransitioningToTraitCollection:collectionCopy];
    if (v8)
    {
      [(SplitViewWindowRootViewController *)self setEkui_futureTraitCollection:v8];
      view = [(SplitViewWindowRootViewController *)self view];
      [view setNeedsLayout];

      [(SplitViewWindowRootViewController *)self setEkui_futureTraitCollection:0];
    }

    else
    {
      view2 = [(SplitViewWindowRootViewController *)self view];
      [view2 setNeedsLayout];
    }

    collectionCopy = v7;
  }

  v73 = collectionCopy;
  horizontalSizeClass = [collectionCopy horizontalSizeClass];
  traitCollection = [(SplitViewWindowRootViewController *)self traitCollection];
  horizontalSizeClass2 = [traitCollection horizontalSizeClass];

  horizontalSizeClass3 = [v73 horizontalSizeClass];
  view3 = [(SplitViewWindowRootViewController *)self view];
  window = [view3 window];
  windowScene = [window windowScene];
  activationState = [windowScene activationState];

  v89 = 0;
  v90 = &v89;
  v91 = 0x2020000000;
  v92 = 0;
  [(UINavigationController *)self->_primaryVC setNavigationBarHidden:horizontalSizeClass3 != 2 animated:0];
  if (activationState == 2)
  {
    firstResponder = 0;
  }

  else
  {
    firstResponder = [(SplitViewWindowRootViewController *)self firstResponder];
  }

  if (horizontalSizeClass == horizontalSizeClass2 || horizontalSizeClass3 != 2)
  {
    if (horizontalSizeClass == horizontalSizeClass2)
    {
      displayedDetailViewControllers = 0;
      goto LABEL_32;
    }

    presentedViewController = [(SplitViewWindowRootViewController *)self presentedViewController];
    if ([(SplitViewWindowRootViewController *)self currentSidebarState]!= 1)
    {
      goto LABEL_28;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_28;
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
LABEL_28:
        if ((CalUIKitNavBarEnabled() & 1) == 0)
        {
          [(MainWindowControlHeaderView *)self->_headerView removeFromSuperview];
        }

        displayedDetailViewControllers = 0;
        goto LABEL_31;
      }
    }

    primarySidebarViewController = [(SplitViewWindowRootViewController *)self primarySidebarViewController];
    preservedState = [primarySidebarViewController preservedState];
    calendarsPreservedState = self->_calendarsPreservedState;
    self->_calendarsPreservedState = preservedState;

    [(SplitViewWindowRootViewController *)self dismissViewControllerAnimated:0 completion:0];
    goto LABEL_28;
  }

  presentedViewController = [(RootNavigationController *)self->_rootNavigationController presentedViewController];
  if (!presentedViewController)
  {
    presentedViewController = [(SplitViewWindowRootViewController *)self presentedViewController];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    preservedState2 = [presentedViewController preservedState];
    v20 = self->_calendarsPreservedState;
    self->_calendarsPreservedState = preservedState2;

    presentingViewController = [presentedViewController presentingViewController];
    [presentingViewController dismissViewControllerAnimated:0 completion:0];

    displayedDetailViewControllers = 0;
    v90[3] = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(RootNavigationController *)self->_rootNavigationController dismissViewControllerAnimated:0 completion:0];
      v90[3] = 2;
      objc_storeStrong(&self->_presentedInboxVC, presentedViewController);
      displayedDetailViewControllers = [(InboxViewController *)self->_presentedInboxVC displayedDetailViewControllers];
    }

    else
    {
      displayedDetailViewControllers = 0;
    }
  }

  if ((CalUIKitNavBarEnabled() & 1) == 0)
  {
    view4 = [(SplitViewWindowRootViewController *)self view];
    [view4 addSubview:self->_headerView];
  }

LABEL_31:

LABEL_32:
  if (!self->_searchResultsController)
  {
    presentedViewController2 = [(RootNavigationController *)self->_rootNavigationController presentedViewController];
    objc_opt_class();
    v33 = objc_opt_isKindOfClass();

    if (v33)
    {
      presentedViewController3 = [(RootNavigationController *)self->_rootNavigationController presentedViewController];
      searchResultsUpdater = [presentedViewController3 searchResultsUpdater];

      [searchResultsUpdater setShouldLeaveSearchString:1];
      presentedViewController4 = [(RootNavigationController *)self->_rootNavigationController presentedViewController];
      searchBar = [presentedViewController4 searchBar];
      text = [searchBar text];

      [(RootNavigationController *)self->_rootNavigationController dismissViewControllerAnimated:0 completion:0];
      goto LABEL_39;
    }

    goto LABEL_37;
  }

  if (self->_animatingSidebar)
  {
    [(UISplitViewController *)self->_splitViewController setViewController:0 forColumn:4];
LABEL_37:
    text = 0;
    goto LABEL_39;
  }

  text = [(MainWindowSearchBar *)self->_searchBar text];
  [(SplitViewWindowRootViewController *)self endSearch:0];
LABEL_39:
  v39 = [(UISplitViewController *)self->_splitViewController overrideTraitCollectionForChildViewController:self->_primaryVC];
  [(UISplitViewController *)self->_splitViewController setOverrideTraitCollection:0 forChildViewController:self->_primaryVC];
  v88.receiver = self;
  v88.super_class = SplitViewWindowRootViewController;
  [(SplitViewWindowRootViewController *)&v88 willTransitionToTraitCollection:v73 withTransitionCoordinator:coordinatorCopy];
  if (coordinatorCopy)
  {
    [coordinatorCopy targetTransform];
  }

  else
  {
    memset(&v87, 0, sizeof(v87));
  }

  v83[0] = _NSConcreteStackBlock;
  v83[1] = 3221225472;
  v83[2] = sub_10003BA40;
  v83[3] = &unk_10020F398;
  v84 = horizontalSizeClass3 == 2;
  v85 = !CGAffineTransformIsIdentity(&v87);
  v86 = activationState == 2;
  v83[4] = self;
  v83[5] = &v89;
  v74[0] = _NSConcreteStackBlock;
  v74[1] = 3221225472;
  v74[2] = sub_10003BC08;
  v74[3] = &unk_10020F3E8;
  v69 = firstResponder;
  v75 = v69;
  selfCopy = self;
  v40 = v39;
  v77 = v40;
  v80 = &v89;
  v81 = activationState == 2;
  v70 = displayedDetailViewControllers;
  v78 = v70;
  v41 = text;
  v79 = v41;
  v82 = horizontalSizeClass3 == 2;
  [coordinatorCopy animateAlongsideTransition:v83 completion:v74];
  if (horizontalSizeClass3 == 2)
  {
    if (!self->_segmentedControl)
    {
      viewSwitcher = [(RootNavigationController *)self->_rootNavigationController viewSwitcher];
      segmentedControl = self->_segmentedControl;
      self->_segmentedControl = viewSwitcher;
    }

    v44 = CalUIKitNavBarEnabled();
    v45 = self->_segmentedControl;
    if (!v44)
    {
      [(UISegmentedControl *)v45 setTranslatesAutoresizingMaskIntoConstraints:0];
      view5 = [(UISplitViewController *)self->_splitViewController view];
      topAnchor = [view5 topAnchor];
      view6 = [(SplitViewWindowRootViewController *)self view];
      topAnchor2 = [view6 topAnchor];
      v63 = [topAnchor constraintEqualToAnchor:topAnchor2];
      v93[0] = v63;
      view7 = [(UISplitViewController *)self->_splitViewController view];
      bottomAnchor = [view7 bottomAnchor];
      view8 = [(SplitViewWindowRootViewController *)self view];
      bottomAnchor2 = [view8 bottomAnchor];
      v58 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
      v93[1] = v58;
      view9 = [(UISplitViewController *)self->_splitViewController view];
      leadingAnchor = [view9 leadingAnchor];
      view10 = [(SplitViewWindowRootViewController *)self view];
      leadingAnchor2 = [view10 leadingAnchor];
      v46 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
      v93[2] = v46;
      view11 = [(UISplitViewController *)self->_splitViewController view];
      trailingAnchor = [view11 trailingAnchor];
      view12 = [(SplitViewWindowRootViewController *)self view];
      trailingAnchor2 = [view12 trailingAnchor];
      v51 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
      v93[3] = v51;
      v52 = [NSArray arrayWithObjects:v93 count:4];
      [NSLayoutConstraint activateConstraints:v52];

      view13 = [(UIViewController *)self->_containerViewController view];
      [view13 addSubview:self->_segmentedControl];

      goto LABEL_51;
    }

    [(UISegmentedControl *)v45 _setUseGlass:1];
  }

  else if (!CalUIKitNavBarEnabled())
  {
    [(UISegmentedControl *)self->_segmentedControl removeFromSuperview];
    goto LABEL_51;
  }

  [(SplitViewWindowRootViewController *)self _updateNavigationBarButtonsWithTraitCollection:v73];
LABEL_51:
  [(SplitViewWindowRootViewController *)self setupSearchControlForTraitCollection:v73];

  _Block_object_dispose(&v89, 8);
}

- (int64_t)preferredSplitBehaviorForSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  eKUI_viewHierarchy = [(SplitViewWindowRootViewController *)self EKUI_viewHierarchy];
  [SplitViewWindowRootViewController sidebarWidthForViewHierarchy:eKUI_viewHierarchy];
  v8 = v7;

  if (CalUIKitNavBarEnabled())
  {
    [MainWindowControlHeaderView spacerWidthForWindowWidth:width];
    v10 = v8 + v9 * 2.0;
    newEventBarButtonItem = [(MainWindowControlHeaderView *)self->_headerView newEventBarButtonItem];
    image = [newEventBarButtonItem image];
    [image size];
    v14 = v10 + v13 > width * 0.5 - v8 * 0.5;
  }

  else
  {
    v14 = width < height;
  }

  if (v14)
  {
    return 2;
  }

  else
  {
    return 0;
  }
}

- (void)_updatePreferredSplitBehaviorForSize:(CGSize)size
{
  v4 = [(SplitViewWindowRootViewController *)self preferredSplitBehaviorForSize:size.width, size.height];
  if (v4 != [(UISplitViewController *)self->_splitViewController preferredSplitBehavior])
  {
    [(UISplitViewController *)self->_splitViewController setPreferredSplitBehavior:v4];
  }

  if (v4 != 2)
  {
    text = [(MainWindowSearchBar *)self->_searchBar text];
    v6 = [text isEqual:&stru_1002133B8];

    if (v6)
    {
      [(SplitViewWindowRootViewController *)self hideInspectorColumnWithoutLosingSearchBarFocus];
    }
  }

  rootNavigationController = self->_rootNavigationController;
  paletteShouldShowAvatarView = [(SplitViewWindowRootViewController *)self paletteShouldShowAvatarView];

  [(RootNavigationController *)rootNavigationController setAvatarViewVisible:paletteShouldShowAvatarView];
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  coordinatorCopy = coordinator;
  v8 = coordinatorCopy;
  if (coordinatorCopy)
  {
    [coordinatorCopy targetTransform];
    IsIdentity = CGAffineTransformIsIdentity(&v22);
    [v8 targetTransform];
    v10 = *(&v19 + 1);
    [v8 targetTransform];
    v11 = *&v16;
  }

  else
  {
    memset(&v22, 0, sizeof(v22));
    IsIdentity = CGAffineTransformIsIdentity(&v22);
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v16 = 0u;
    v17 = 0u;
    v11 = 0.0;
    v10 = 0.0;
  }

  v12 = atan2(v10, v11) * 57.2957795;
  [(SplitViewWindowRootViewController *)self _updatePreferredSplitBehaviorForSize:width, height];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10003C2C0;
  v14[3] = &unk_10020F410;
  v15 = !IsIdentity;
  *&v14[5] = v12;
  v14[4] = self;
  [v8 animateAlongsideTransition:v14 completion:0];
  v13.receiver = self;
  v13.super_class = SplitViewWindowRootViewController;
  [(SplitViewWindowRootViewController *)&v13 viewWillTransitionToSize:v8 withTransitionCoordinator:width, height];
}

- (int64_t)splitViewController:(id)controller displayModeForExpandingToProposedDisplayMode:(int64_t)mode
{
  if (!self->_currentSidebarState && !self->_preferredSidebarState)
  {
    return 1;
  }

  if ([(UISplitViewController *)self->_splitViewController preferredSplitBehavior]== 2 && mode == 2)
  {
    return 3;
  }

  else
  {
    return mode;
  }
}

- (void)splitViewController:(id)controller willChangeToProposedDisplayMode:(int64_t *)mode
{
  if (self->_currentSidebarState)
  {
    [(SplitViewWindowRootViewController *)self updatePrimaryViewControllerToolbar:controller];
  }
}

- (void)splitViewController:(id)controller willShowColumn:(int64_t)column
{
  if (!column && ![(SplitViewWindowRootViewController *)self currentSidebarState])
  {
    ekui_futureTraitCollection = [(SplitViewWindowRootViewController *)self ekui_futureTraitCollection];
    horizontalSizeClass = [ekui_futureTraitCollection horizontalSizeClass];

    if (horizontalSizeClass == 2)
    {
      self->_currentSidebarState = self->_lastOpenSidebarState;
      [(MainWindowControlHeaderView *)self->_headerView updateButtonStateForSidebar:?];
      if (CalUIKitNavBarEnabled())
      {
        v7 = [(UINavigationController *)self->_primaryVC popToRootViewControllerAnimated:0];
      }
    }
  }
}

- (void)splitViewController:(id)controller willHideColumn:(int64_t)column
{
  controllerCopy = controller;
  if (column == 4)
  {
    v14 = controllerCopy;
    [(SplitViewWindowRootViewController *)self searchEnding];
    [(SplitViewWindowRootViewController *)self teardownSearch];
    [(SplitViewWindowRootViewController *)self searchEnded];
LABEL_10:
    controllerCopy = v14;
    goto LABEL_11;
  }

  if (!column && self->_currentSidebarState)
  {
    v14 = controllerCopy;
    view = [(SplitViewWindowRootViewController *)self view];
    window = [view window];
    windowScene = [window windowScene];
    activationState = [windowScene activationState];

    currentSidebarState = self->_currentSidebarState;
    if (activationState != 2)
    {
      if (currentSidebarState == 2)
      {
        [(SplitViewWindowRootViewController *)self inboxWillDismiss];
      }

      currentSidebarState = 0;
      self->_currentSidebarState = 0;
    }

    [(MainWindowControlHeaderView *)self->_headerView updateButtonStateForSidebar:currentSidebarState];
    [(RootNavigationController *)self->_rootNavigationController setAvatarViewVisible:[(SplitViewWindowRootViewController *)self paletteShouldShowAvatarView]];
    v12 = [objc_opt_class() shouldHideInlineFocusBannerForSidebarState:0];
    paletteView = [(RootNavigationController *)self->_rootNavigationController paletteView];
    [paletteView setShouldHideInlineFocusBanner:v12];

    goto LABEL_10;
  }

LABEL_11:
}

- (CGSize)mainContentSize
{
  v3 = +[UIDevice currentDevice];
  if (![v3 userInterfaceIdiom])
  {

    goto LABEL_5;
  }

  topMainViewControllerContainer = [(RootNavigationController *)self->_rootNavigationController topMainViewControllerContainer];
  currentChildViewController = [topMainViewControllerContainer currentChildViewController];
  view = [currentChildViewController view];
  [view frame];
  v8 = v7;

  if (v8 <= 0.0)
  {
LABEL_5:
    view2 = [(RootNavigationController *)self->_rootNavigationController view];
    [view2 bounds];
    v13 = v16;
    v15 = v17;
    goto LABEL_6;
  }

  view2 = [(RootNavigationController *)self->_rootNavigationController topMainViewControllerContainer];
  currentChildViewController2 = [view2 currentChildViewController];
  view3 = [currentChildViewController2 view];
  [view3 bounds];
  v13 = v12;
  v15 = v14;

LABEL_6:
  v18 = v13;
  v19 = v15;
  result.height = v19;
  result.width = v18;
  return result;
}

- (void)showAddEvent
{
  rootNavigationController = self->_rootNavigationController;
  newEventBarButtonItem = [(MainWindowControlHeaderView *)self->_headerView newEventBarButtonItem];
  [(RootNavigationController *)rootNavigationController showAddEventAnimated:0 fromBarButtonItem:newEventBarButtonItem];
}

- (void)showAddEventWithTitle:(id)title startDate:(id)date endDate:(id)endDate location:(id)location suggestionsKey:(id)key allDay:(BOOL)day
{
  keyCopy = key;
  locationCopy = location;
  endDateCopy = endDate;
  dateCopy = date;
  titleCopy = title;
  traitCollection = [(SplitViewWindowRootViewController *)self traitCollection];
  if ([traitCollection horizontalSizeClass] == 2)
  {
    newEventBarButtonItem = [(MainWindowControlHeaderView *)self->_headerView newEventBarButtonItem];
  }

  else
  {
    newEventBarButtonItem = 0;
  }

  LOBYTE(v20) = day;
  [(RootNavigationController *)self->_rootNavigationController showAddEventAnimated:1 fromBarButtonItem:newEventBarButtonItem withTitle:titleCopy startDate:0 exactStartDate:dateCopy endDate:endDateCopy location:locationCopy suggestionKey:keyCopy allDay:v20 completion:0];
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
  if (self->_didAppear)
  {
    scheme = [lCopy scheme];
    traitCollection = [(SplitViewWindowRootViewController *)self traitCollection];
    horizontalSizeClass = [traitCollection horizontalSizeClass];

    if (horizontalSizeClass == 2)
    {
      if ([scheme isEqualToString:@"calinvitelist"])
      {
        model = [(RootNavigationController *)self->_rootNavigationController model];
        allEventNotificationsCount = [model allEventNotificationsCount];

        if (allEventNotificationsCount)
        {
          [(SplitViewWindowRootViewController *)self setCurrentSidebarState:2];
LABEL_17:

          goto LABEL_18;
        }
      }

      if (([scheme isEqualToString:@"calsubcal"] & 1) != 0 || objc_msgSend(scheme, "isEqualToString:", @"webcal"))
      {
        v17[0] = _NSConcreteStackBlock;
        v17[1] = 3221225472;
        v17[2] = sub_10003CC08;
        v17[3] = &unk_10020F438;
        v18 = lCopy;
        selfCopy = self;
        [(SplitViewWindowRootViewController *)self showCalendarsViewWithCompletion:v17];

        goto LABEL_17;
      }

      if ([scheme isEqualToString:@"calshow"])
      {
        host = [lCopy host];
        v15 = [host isEqualToString:@"familyCalendar"];

        if (v15)
        {
          v16[0] = _NSConcreteStackBlock;
          v16[1] = 3221225472;
          v16[2] = sub_10003CC80;
          v16[3] = &unk_10020F370;
          v16[4] = self;
          [(SplitViewWindowRootViewController *)self showCalendarsViewWithCompletion:v16];
          goto LABEL_17;
        }
      }
    }

    if (self->_currentSidebarState && [(UISplitViewController *)self->_splitViewController preferredSplitBehavior]== 2)
    {
      [(SplitViewWindowRootViewController *)self setCurrentSidebarState:0];
    }

    [(SplitViewWindowRootViewController *)self cancelSearch];
    [(RootNavigationController *)self->_rootNavigationController handleURL:lCopy context:contextCopy];
    goto LABEL_17;
  }

  objc_storeStrong(&self->_urlToLaunch, l);
  objc_storeStrong(&self->_urlLaunchContext, context);
LABEL_18:
}

- (BOOL)showsSearchBarForTraitCollection:(id)collection
{
  collectionCopy = collection;
  view = [(SplitViewWindowRootViewController *)self view];
  EKUICurrentWindowWidthWithViewHierarchy();
  v7 = v6;

  v8 = v7 > 750.0 && (EKUIUsesLargeTextLayout() & 1) == 0 && [collectionCopy userInterfaceIdiom] != 0;
  return v8;
}

- (void)createSearchBarIfNeeded
{
  if (!self->_searchBar)
  {
    v3 = [[MainWindowSearchBar alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
    searchBar = self->_searchBar;
    self->_searchBar = v3;

    v5 = [NSBundle bundleForClass:objc_opt_class()];
    v6 = [v5 localizedStringForKey:@"Placeholder used in the search bar in the calendar occurrences list" value:@"Search" table:0];
    [(MainWindowSearchBar *)self->_searchBar setPlaceholder:v6];

    [(MainWindowSearchBar *)self->_searchBar setDrawsBackground:0];
    [(MainWindowSearchBar *)self->_searchBar setDelegate:self];
    [(MainWindowSearchBar *)self->_searchBar _setAutoDisableCancelButton:0];
    searchField = [(MainWindowSearchBar *)self->_searchBar searchField];
    [searchField setAccessibilityIdentifier:@"searchbar-button"];

    [(MainWindowSearchBar *)self->_searchBar setHeightObserver:self];
    if (CalUIKitNavBarEnabled())
    {
      searchField2 = [(MainWindowSearchBar *)self->_searchBar searchField];
      [searchField2 setClearButtonMode:3];

      [(MainWindowSearchBar *)self->_searchBar setTranslatesAutoresizingMaskIntoConstraints:0];
      widthAnchor = [(MainWindowSearchBar *)self->_searchBar widthAnchor];
      v10 = [widthAnchor constraintEqualToConstant:223.0];
      searchBarWidthConstraint = self->_searchBarWidthConstraint;
      self->_searchBarWidthConstraint = v10;

      LODWORD(v12) = 1140457472;
      [(NSLayoutConstraint *)self->_searchBarWidthConstraint setPriority:v12];
      v13 = self->_searchBarWidthConstraint;

      [(NSLayoutConstraint *)v13 setActive:1];
    }
  }
}

- (void)activateSearchBarConstraints
{
  window = [(MainWindowSearchBar *)self->_searchBar window];
  if (window)
  {
    v4 = window;
    window2 = [(UISegmentedControl *)self->_segmentedControl window];

    if (window2)
    {
      if (!self->_searchBarLeadingConstraint)
      {
        leadingAnchor = [(MainWindowSearchBar *)self->_searchBar leadingAnchor];
        trailingAnchor = [(UISegmentedControl *)self->_segmentedControl trailingAnchor];
        v9 = [leadingAnchor constraintGreaterThanOrEqualToAnchor:trailingAnchor];
        searchBarLeadingConstraint = self->_searchBarLeadingConstraint;
        self->_searchBarLeadingConstraint = v9;
      }

      if (self->_isSearching)
      {
        *&v6 = 1000.0;
      }

      else
      {
        *&v6 = 500.0;
      }

      [(NSLayoutConstraint *)self->_searchBarWidthConstraint setPriority:v6];
      if (self->_isSearching)
      {
        *&v11 = 500.0;
      }

      else
      {
        *&v11 = 1000.0;
      }

      [(NSLayoutConstraint *)self->_searchBarLeadingConstraint setPriority:v11];
      trailingAnchor2 = [(MainWindowSearchBar *)self->_searchBar trailingAnchor];
      view = [(SplitViewWindowRootViewController *)self view];
      safeAreaLayoutGuide = [view safeAreaLayoutGuide];
      trailingAnchor3 = [safeAreaLayoutGuide trailingAnchor];
      v13 = [trailingAnchor2 constraintEqualToAnchor:trailingAnchor3 constant:-1.5];
      v24[0] = v13;
      heightAnchor = [(MainWindowSearchBar *)self->_searchBar heightAnchor];
      v15 = [heightAnchor constraintEqualToConstant:44.0];
      v24[1] = v15;
      centerYAnchor = [(MainWindowSearchBar *)self->_searchBar centerYAnchor];
      centerYAnchor2 = [(UISegmentedControl *)self->_segmentedControl centerYAnchor];
      v18 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
      v19 = self->_searchBarLeadingConstraint;
      v24[2] = v18;
      v24[3] = v19;
      v20 = [NSArray arrayWithObjects:v24 count:4];
      [NSLayoutConstraint activateConstraints:v20];
    }
  }
}

- (void)activateSearchButtonConstraints
{
  window = [(UIToolbar *)self->_searchToolBarButton window];
  if (window)
  {
    v4 = window;
    window2 = [(UISegmentedControl *)self->_segmentedControl window];

    if (window2)
    {
      v6 = CalUIKitNavBarEnabled();
      trailingAnchor = [(UIToolbar *)self->_searchToolBarButton trailingAnchor];
      view = [(SplitViewWindowRootViewController *)self view];
      safeAreaLayoutGuide = [view safeAreaLayoutGuide];
      trailingAnchor2 = [safeAreaLayoutGuide trailingAnchor];
      if (v6)
      {
        v11 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-1.5];
        v31[0] = v11;
        heightAnchor = [(UIToolbar *)self->_searchToolBarButton heightAnchor];
        navigationBar = [heightAnchor constraintEqualToConstant:60.0];
        v31[1] = navigationBar;
        widthAnchor = [(UIToolbar *)self->_searchToolBarButton widthAnchor];
        v27 = [widthAnchor constraintEqualToConstant:60.0];
        v31[2] = v27;
        topAnchor = [(UIToolbar *)self->_searchToolBarButton topAnchor];
        topAnchor2 = [(UISegmentedControl *)self->_segmentedControl topAnchor];
        topAnchor3 = [topAnchor constraintEqualToAnchor:topAnchor2];
        v31[3] = topAnchor3;
        navigationBar2 = [NSArray arrayWithObjects:v31 count:4];
        [NSLayoutConstraint activateConstraints:navigationBar2];
      }

      else
      {
        v26 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-10.0];
        v30[0] = v26;
        heightAnchor2 = [(UIToolbar *)self->_searchToolBarButton heightAnchor];
        navigationBar = [(RootNavigationController *)self->_rootNavigationController navigationBar];
        widthAnchor = [navigationBar heightAnchor];
        v27 = [heightAnchor2 constraintEqualToAnchor:?];
        v30[1] = v27;
        widthAnchor2 = [(UIToolbar *)self->_searchToolBarButton widthAnchor];
        topAnchor2 = [widthAnchor2 constraintEqualToConstant:60.0];
        v30[2] = topAnchor2;
        topAnchor3 = [(UIToolbar *)self->_searchToolBarButton topAnchor];
        navigationBar2 = [(RootNavigationController *)self->_rootNavigationController navigationBar];
        topAnchor4 = [navigationBar2 topAnchor];
        [topAnchor3 constraintEqualToAnchor:topAnchor4];
        v18 = trailingAnchor2;
        v19 = safeAreaLayoutGuide;
        v21 = v20 = trailingAnchor;
        v30[3] = v21;
        [NSArray arrayWithObjects:v30 count:4];
        v23 = v22 = view;
        [NSLayoutConstraint activateConstraints:v23];

        view = v22;
        heightAnchor = heightAnchor2;

        trailingAnchor = v20;
        safeAreaLayoutGuide = v19;
        trailingAnchor2 = v18;
        v11 = v26;

        topAnchor = widthAnchor2;
      }
    }
  }
}

- (void)segmentedControlAddedToWindow
{
  if (CalUIKitNavBarEnabled())
  {
    window = [(UISegmentedControl *)self->_segmentedControl window];

    if (window)
    {
      traitCollection = [(SplitViewWindowRootViewController *)self traitCollection];
      [(SplitViewWindowRootViewController *)self setupSearchControlForTraitCollection:traitCollection];

      traitCollection2 = [(SplitViewWindowRootViewController *)self traitCollection];
      horizontalSizeClass = [traitCollection2 horizontalSizeClass];

      if (horizontalSizeClass == 2)
      {
        window2 = [(MainWindowSearchBar *)self->_searchBar window];

        if (window2)
        {

          [(SplitViewWindowRootViewController *)self activateSearchBarConstraints];
        }

        else
        {

          [(SplitViewWindowRootViewController *)self activateSearchButtonConstraints];
        }
      }
    }
  }
}

- (void)setupSearchControlForTraitCollection:(id)collection
{
  collectionCopy = collection;
  if (CalUIKitNavBarEnabled())
  {
    window = [(UISegmentedControl *)self->_segmentedControl window];
    if (window)
    {
    }

    else if ([collectionCopy horizontalSizeClass] == 2)
    {
      v6 = 0;
      v7 = 0;
      goto LABEL_24;
    }
  }

  if ([(SplitViewWindowRootViewController *)self showsSearchBarForTraitCollection:collectionCopy]|| self->_isSearching)
  {
    [(SplitViewWindowRootViewController *)self createSearchBarIfNeeded];
    v7 = self->_searchBar;
    v8 = CalUIKitNavBarEnabled();
    v9 = &OBJC_IVAR___SplitViewWindowRootViewController__searchButton;
    if (v8)
    {
      v9 = &OBJC_IVAR___SplitViewWindowRootViewController__searchToolBarButton;
    }

    v10 = *v9;
    goto LABEL_18;
  }

  if (CalUIKitNavBarEnabled())
  {
    p_searchToolBarButton = &self->_searchToolBarButton;
    searchToolBarButton = self->_searchToolBarButton;
    if (!searchToolBarButton)
    {
      v13 = objc_opt_new();
      v14 = *p_searchToolBarButton;
      *p_searchToolBarButton = v13;

      v15 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:12 target:self action:"searchButtonTapped:"];
      v24 = v15;
      v16 = [NSArray arrayWithObjects:&v24 count:1];
      [*p_searchToolBarButton setItems:v16];

      [*p_searchToolBarButton setTranslatesAutoresizingMaskIntoConstraints:0];
LABEL_16:

      searchToolBarButton = *p_searchToolBarButton;
    }
  }

  else
  {
    p_searchToolBarButton = &self->_searchButton;
    searchToolBarButton = self->_searchButton;
    if (!searchToolBarButton)
    {
      v15 = [UIImageSymbolConfiguration configurationWithScale:3];
      v17 = [UIImage systemImageNamed:@"magnifyingglass" withConfiguration:v15];
      v18 = [UIButton buttonWithType:0];
      v19 = *p_searchToolBarButton;
      *p_searchToolBarButton = v18;

      [*p_searchToolBarButton addTarget:self action:"searchButtonTapped:" forControlEvents:64];
      [*p_searchToolBarButton setImage:v17 forState:0];
      [*p_searchToolBarButton setShowsLargeContentViewer:1];
      v20 = *p_searchToolBarButton;
      v21 = objc_opt_new();
      [v20 addInteraction:v21];

      [*p_searchToolBarButton setAccessibilityIdentifier:@"searchbar-button"];
      goto LABEL_16;
    }
  }

  v7 = searchToolBarButton;
  v10 = 88;
LABEL_18:
  v6 = *(&self->super.super.super.isa + v10);
  if ([collectionCopy horizontalSizeClass] == 2)
  {
    [v6 removeFromSuperview];
    superview = [(MainWindowSearchBar *)v7 superview];

    if (!superview)
    {
      view = [(SplitViewWindowRootViewController *)self view];
      [view addSubview:v7];

      if (CalUIKitNavBarEnabled())
      {
        if (v7 == self->_searchBar)
        {
          [(SplitViewWindowRootViewController *)self activateSearchBarConstraints];
        }

        else
        {
          [(SplitViewWindowRootViewController *)self activateSearchButtonConstraints];
        }
      }
    }
  }

  else
  {
    [(MainWindowSearchBar *)self->_searchBar removeFromSuperview];
    [(UIButton *)self->_searchButton removeFromSuperview];
    [(UIToolbar *)self->_searchToolBarButton removeFromSuperview];
  }

LABEL_24:
}

- (double)searchFieldWidth
{
  view = [(SplitViewWindowRootViewController *)self view];
  EKUICurrentWindowWidthWithViewHierarchy();
  v4 = v3;

  v5 = CalUIKitNavBarEnabled();
  result = 223.0;
  if ((v5 & 1) == 0 && v4 <= 875.0)
  {
    if (v4 <= 800.0)
    {
      result = 0.0;
      if (v4 > 750.0)
      {
        return 172.0;
      }
    }

    else
    {
      return 193.0;
    }
  }

  return result;
}

- (void)setSearchStateToSearching:(BOOL)searching
{
  if (self->_isSearching != searching)
  {
    self->_isSearching = searching;
    searchBarWidthConstraint = self->_searchBarWidthConstraint;
    if (searching)
    {
      LODWORD(v3) = 1148846080;
      [(NSLayoutConstraint *)searchBarWidthConstraint setPriority:v3];
      LODWORD(v6) = 1140457472;
      [(NSLayoutConstraint *)self->_searchBarLeadingConstraint setPriority:v6];
      eKUI_viewHierarchy = [(SplitViewWindowRootViewController *)self EKUI_viewHierarchy];
      [SplitViewWindowRootViewController sidebarWidthForViewHierarchy:eKUI_viewHierarchy];
      [(NSLayoutConstraint *)self->_searchBarWidthConstraint setConstant:?];
    }

    else
    {
      LODWORD(v3) = 1140457472;
      [(NSLayoutConstraint *)searchBarWidthConstraint setPriority:v3];
      LODWORD(v7) = 1148846080;
      [(NSLayoutConstraint *)self->_searchBarLeadingConstraint setPriority:v7];
      v8 = self->_searchBarWidthConstraint;

      [(NSLayoutConstraint *)v8 setConstant:223.0];
    }
  }
}

- (void)searchButtonTappedCreateAndAddSearchBar:(BOOL)bar
{
  if (!self->_isEndingSearch)
  {
    barCopy = bar;
    [(UIButton *)self->_searchButton removeFromSuperview];
    [(UIToolbar *)self->_searchToolBarButton removeFromSuperview];
    if (barCopy)
    {
      [(SplitViewWindowRootViewController *)self createSearchBarIfNeeded];
      view = [(SplitViewWindowRootViewController *)self view];
      [view addSubview:self->_searchBar];

      [(SplitViewWindowRootViewController *)self activateSearchBarConstraints];
      [(SplitViewWindowRootViewController *)self setSearchStateToSearching:1];
      [(SplitViewWindowRootViewController *)self layoutSearchControl];
      [(MainWindowSearchBar *)self->_searchBar layoutIfNeeded];
      if ((CalUIKitNavBarEnabled() & 1) == 0)
      {
        [(MainWindowSearchBar *)self->_searchBar frame];
        v7 = v6;
        v9 = v8;
        v11 = v10;
        if (CalInterfaceIsLeftToRight())
        {
          view2 = [(SplitViewWindowRootViewController *)self view];
          [view2 bounds];
          v14 = v13;
        }

        else
        {
          v14 = -v9;
        }

        [(MainWindowSearchBar *)self->_searchBar setFrame:v14, v7, v9, v11];
      }
    }

    else
    {
      [(SplitViewWindowRootViewController *)self setSearchStateToSearching:1];
    }

    startSearch = [(SplitViewWindowRootViewController *)self startSearch];
    v16[4] = self;
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_10003DDB8;
    v17[3] = &unk_10020F240;
    v17[4] = self;
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10003DDC0;
    v16[3] = &unk_10020F240;
    [startSearch animateAlongsideTransition:v17 completion:v16];
  }
}

- (void)updatePrimaryViewControllerNavBar
{
  primarySidebarViewController = [(SplitViewWindowRootViewController *)self primarySidebarViewController];
  traitCollection = [(SplitViewWindowRootViewController *)self traitCollection];
  horizontalSizeClass = [traitCollection horizontalSizeClass];

  if (horizontalSizeClass == 2)
  {
    [(MasterNavigationPaletteView *)self->_paletteView sizeToFit];
    [(MasterNavigationPaletteView *)self->_paletteView frame];
    [(_UINavigationBarPalette *)self->_palette setPreferredHeight:v6];
    palette = self->_palette;
    navigationItem = [primarySidebarViewController navigationItem];
    [navigationItem _setBottomPalette:palette];

    navigationItem4 = objc_opt_new();
    [navigationItem4 configureWithDefaultBackground];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10003DFA4;
      block[3] = &unk_10020EB00;
      v13 = primarySidebarViewController;
      dispatch_async(&_dispatch_main_q, block);
    }

    navigationItem2 = [primarySidebarViewController navigationItem];
    [navigationItem2 setStandardAppearance:navigationItem4];

    navigationItem3 = [primarySidebarViewController navigationItem];
    [navigationItem3 setScrollEdgeAppearance:navigationItem4];
  }

  else
  {
    navigationItem4 = [primarySidebarViewController navigationItem];
    [navigationItem4 _setBottomPalette:0];
  }
}

- (void)updatePrimaryViewControllerToolbar
{
  primarySidebarViewController = [(SplitViewWindowRootViewController *)self primarySidebarViewController];
  if ([primarySidebarViewController conformsToProtocol:&OBJC_PROTOCOL___SideBarViewController] && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v3 = [primarySidebarViewController toolbarVisibleInSplitBehavior:{-[UISplitViewController preferredSplitBehavior](self->_splitViewController, "preferredSplitBehavior")}];
  }

  else
  {
    toolbarItems = [primarySidebarViewController toolbarItems];
    v3 = toolbarItems != 0;
  }

  [(UINavigationController *)self->_primaryVC setToolbarHidden:v3 ^ 1];
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
      v10 = [CompactListViewController alloc];
      model = [(RootNavigationController *)self->_rootNavigationController model];
      view = [(SplitViewWindowRootViewController *)self view];
      window = [view window];
      switcherViewController = [(ListViewController *)v10 initWithModel:model window:window];

      [(ListViewController *)switcherViewController setDelegate:self];
      [(ListViewController *)switcherViewController setOverrideExtendedEdges:0];
      [(ListViewController *)switcherViewController setDestination:2];
      goto LABEL_8;
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
        v9 = self->_presentedInboxVC;
        self->_presentedInboxVC = 0;
      }

      else
      {
        v15 = [InboxSwitcherViewController alloc];
        model2 = [(RootNavigationController *)self->_rootNavigationController model];
        switcherViewController = [(InboxSwitcherViewController *)v15 initWithModel:model2 destination:2];

        [(CompactListViewController *)switcherViewController setSwitcherDelegate:self];
      }

      segmentedControl = [(CompactListViewController *)switcherViewController segmentedControl];
      goto LABEL_12;
    case 1uLL:
      v4 = [CalendarsViewController alloc];
      model3 = [(RootNavigationController *)self->_rootNavigationController model];
      switcherViewController = [(CalendarsViewController *)v4 initWithModel:model3 destination:2];

LABEL_8:
      segmentedControl = 0;
      goto LABEL_12;
  }

  segmentedControl = 0;
  switcherViewController = 0;
LABEL_12:
  [(MasterNavigationPaletteView *)self->_paletteView setSegmentedControl:segmentedControl];
  [(SplitViewWindowRootViewController *)self updateSidebarPalette];
  navigationItem = [(CompactListViewController *)switcherViewController navigationItem];
  [navigationItem _setAutoScrollEdgeTransitionDistance:16.0];

  navigationItem2 = [(CompactListViewController *)switcherViewController navigationItem];
  [navigationItem2 _setManualScrollEdgeAppearanceEnabled:1];

  return switcherViewController;
}

- (void)updateSidebarPalette
{
  [(MasterNavigationPaletteView *)self->_paletteView setNeedsLayout];
  [(MasterNavigationPaletteView *)self->_paletteView layoutIfNeeded];
  [(MasterNavigationPaletteView *)self->_paletteView sizeToFit];
  [(MasterNavigationPaletteView *)self->_paletteView frame];
  palette = self->_palette;

  [(_UINavigationBarPalette *)palette setPreferredHeight:v3];
}

- (void)showColumn:(int64_t)column
{
  [(UISplitViewController *)self->_splitViewController showColumn:?];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10003E668;
  v20[3] = &unk_10020F488;
  v20[4] = self;
  v20[5] = column;
  v5 = objc_retainBlock(v20);
  transitionCoordinator = [(UISplitViewController *)self->_splitViewController transitionCoordinator];
  if (transitionCoordinator)
  {
    self->_animatingSidebar = [(UISplitViewController *)self->_splitViewController splitBehavior]== 1;
    self->_primaryColumnAnimationInProgress = column == 0;
    eKUI_viewHierarchy = [(SplitViewWindowRootViewController *)self EKUI_viewHierarchy];
    view = [(RootNavigationController *)self->_rootNavigationController view];
    [view bounds];
    v10 = v9;
    [SplitViewWindowRootViewController sidebarWidthForViewHierarchy:eKUI_viewHierarchy];
    v12 = v10 - v11;
    view2 = [(RootNavigationController *)self->_rootNavigationController view];
    [view2 bounds];
    v15 = v14;

    topViewController = [(RootNavigationController *)self->_rootNavigationController topViewController];
    transitionCoordinator2 = [(UISplitViewController *)self->_splitViewController transitionCoordinator];
    [topViewController viewWillTransitionToSize:transitionCoordinator2 withTransitionCoordinator:{v12, v15}];

    transitionCoordinator3 = [(UISplitViewController *)self->_splitViewController transitionCoordinator];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_10003E750;
    v19[3] = &unk_10020F488;
    v19[4] = self;
    v19[5] = column;
    [transitionCoordinator3 animateAlongsideTransition:v5 completion:v19];
  }

  else
  {
    (v5[2])(v5, 0);
  }
}

- (void)hideInspectorColumnWithoutLosingSearchBarFocus
{
  [(UISplitViewController *)self->_splitViewController hideColumn:4];
  [(SplitViewWindowRootViewController *)self searchEnding];
  [(UISplitViewController *)self->_splitViewController setViewController:0 forColumn:4];
  searchResultsNavController = self->_searchResultsNavController;
  self->_searchResultsNavController = 0;

  searchResultsController = self->_searchResultsController;
  self->_searchResultsController = 0;

  [(SplitViewWindowRootViewController *)self searchEnded];
}

- (void)hideColumn:(int64_t)column
{
  if (column != 4 || !self->_isHidingInspectorColumn)
  {
    self->_isHidingInspectorColumn = column == 4;
    [(UISplitViewController *)self->_splitViewController hideColumn:column];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10003EAB4;
    v16[3] = &unk_10020F488;
    v16[4] = self;
    v16[5] = column;
    v5 = objc_retainBlock(v16);
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10003EBB8;
    v15[3] = &unk_10020F488;
    v15[4] = self;
    v15[5] = column;
    v6 = objc_retainBlock(v15);
    transitionCoordinator = [(UISplitViewController *)self->_splitViewController transitionCoordinator];
    if (transitionCoordinator)
    {
      self->_animatingSidebar = [(UISplitViewController *)self->_splitViewController splitBehavior]== 1;
      self->_primaryColumnAnimationInProgress = column == 0;
      topViewController = [(RootNavigationController *)self->_rootNavigationController topViewController];
      view = [(RootNavigationController *)self->_rootNavigationController view];
      [view bounds];
      v11 = v10;
      v13 = v12;
      transitionCoordinator2 = [(UISplitViewController *)self->_splitViewController transitionCoordinator];
      [topViewController viewWillTransitionToSize:transitionCoordinator2 withTransitionCoordinator:{v11, v13}];

      [transitionCoordinator animateAlongsideTransition:v5 completion:v6];
    }

    else
    {
      (v5[2])(v5, 0);
      (v6[2])(v6, 0);
    }
  }
}

- (void)keyboardWillShow:(id)show
{
  if ([(SplitViewWindowRootViewController *)self isPopoverCurrentlyVisible])
  {
    searchBar = self->_searchBar;

    [(MainWindowSearchBar *)searchBar resignFirstResponder];
  }
}

- (BOOL)isPopoverCurrentlyVisible
{
  presentedViewController = [(SplitViewWindowRootViewController *)self presentedViewController];
  v3 = [presentedViewController modalPresentationStyle] == 7;

  return v3;
}

- (void)setCurrentSidebarState:(unint64_t)state completion:(id)completion
{
  completionCopy = completion;
  if (state)
  {
    self->_lastOpenSidebarState = state;
  }

  if (!self->_didAppear || [(UISplitViewController *)self->_splitViewController isCollapsed])
  {
    if (self->_currentSidebarState != state)
    {
      self->_needsSidebarSetup = 1;
      self->_pendingState = state;
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
      v10 = [(SplitViewWindowRootViewController *)self viewControllerForSidebarState:state];
      if (v10)
      {
        if (self->_currentSidebarState == 2)
        {
          [(SplitViewWindowRootViewController *)self inboxWillDismiss];
        }

        primaryVC = self->_primaryVC;
        v23 = v10;
        v12 = [NSArray arrayWithObjects:&v23 count:1];
        [(UINavigationController *)primaryVC setViewControllers:v12];

        if (self->_currentSidebarState)
        {
          v13 = [objc_opt_class() shouldHideInlineFocusBannerForSidebarState:state];
          paletteView = [(RootNavigationController *)self->_rootNavigationController paletteView];
          [paletteView setShouldHideInlineFocusBanner:v13];
        }

        else
        {
          if (self->_primaryColumnAnimationInProgress)
          {
            [(MainWindowControlHeaderView *)self->_headerView updateButtonStateForSidebar:state];

            goto LABEL_41;
          }

          [(SplitViewWindowRootViewController *)self showColumn:0];
        }

        if (state == 3)
        {
          v16 = [UIBarButtonItem alloc];
          v17 = +[NSBundle mainBundle];
          v18 = [v17 localizedStringForKey:@"Today" value:&stru_1002133B8 table:0];
          v19 = [v16 initWithTitle:v18 style:0 target:self action:"todayToolbarItemPressed"];

          v20 = CalendarAppTintColor();
          [v19 setTintColor:v20];

          v22 = v19;
          v21 = [NSArray arrayWithObjects:&v22 count:1];
          [v10 setToolbarItems:v21];
        }

        [(SplitViewWindowRootViewController *)self updatePrimaryViewControllerNavBar];
        [(SplitViewWindowRootViewController *)self updatePrimaryViewControllerToolbar];
      }

      self->_preferredSidebarState = state;
      self->_currentSidebarState = state;

      v15 = self->_currentSidebarState;
LABEL_39:
      self->_animatingSidebar = 0;
      [(MainWindowControlHeaderView *)self->_headerView updateButtonStateForSidebar:v15];
      if (completionCopy)
      {
        (completionCopy)[2](completionCopy, v10);
      }

      goto LABEL_41;
    }

LABEL_19:
    if ([(UISplitViewController *)self->_splitViewController displayMode]== 1)
    {
LABEL_31:
      v15 = 0;
      v10 = 0;
      self->_preferredSidebarState = 0;
      self->_currentSidebarState = 0;
      goto LABEL_39;
    }

    if (!self->_primaryColumnAnimationInProgress)
    {
      if (self->_currentSidebarState == 2)
      {
        [(SplitViewWindowRootViewController *)self inboxWillDismiss];
      }

      self->_animatingSidebar = [(UISplitViewController *)self->_splitViewController splitBehavior]== 1;
      self->_primaryColumnAnimationInProgress = 1;
      [(SplitViewWindowRootViewController *)self hideColumn:0];
      goto LABEL_31;
    }

    v10 = 0;
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

  primarySidebarViewController = [(SplitViewWindowRootViewController *)self primarySidebarViewController];
  [primarySidebarViewController restorePreservedState:self->_calendarsPreservedState];
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
  if ([(SplitViewWindowRootViewController *)self currentSidebarState]== 1)
  {
    primarySidebarViewController = [(SplitViewWindowRootViewController *)self primarySidebarViewController];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (completionCopy)
    {
      if (isKindOfClass)
      {
        v7 = primarySidebarViewController;
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
    v8[2] = sub_10003F204;
    v8[3] = &unk_10020F4B0;
    v9 = completionCopy;
    [(SplitViewWindowRootViewController *)self setCurrentSidebarState:1 completion:v8];
  }
}

- (void)showInboxSideBarWithCompletion:(id)completion
{
  completionCopy = completion;
  if ([(SplitViewWindowRootViewController *)self currentSidebarState]== 2)
  {
    primarySidebarViewController = [(SplitViewWindowRootViewController *)self primarySidebarViewController];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (completionCopy)
    {
      if (isKindOfClass)
      {
        v7 = primarySidebarViewController;
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
    v8[2] = sub_10003F380;
    v8[3] = &unk_10020F4B0;
    v9 = completionCopy;
    [(SplitViewWindowRootViewController *)self setCurrentSidebarState:2 completion:v8];
  }
}

- (void)showListSideBarWithCompletion:(id)completion
{
  completionCopy = completion;
  if ([(SplitViewWindowRootViewController *)self currentSidebarState]== 3)
  {
    primarySidebarViewController = [(SplitViewWindowRootViewController *)self primarySidebarViewController];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (completionCopy)
    {
      if (isKindOfClass)
      {
        v7 = primarySidebarViewController;
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
    v8[2] = sub_10003F4FC;
    v8[3] = &unk_10020F4B0;
    v9 = completionCopy;
    [(SplitViewWindowRootViewController *)self setCurrentSidebarState:3 completion:v8];
  }
}

- (void)newEventButtonTapped:(id)tapped
{
  tappedCopy = tapped;
  if (self->_isSearching)
  {
    [(SplitViewWindowRootViewController *)self cancelSearch];
  }

  [(RootNavigationController *)self->_rootNavigationController showAddEventAnimated:1 fromBarButtonItem:tappedCopy];
}

- (void)setNavigationItems:(id)items additionalItems:(id)additionalItems
{
  itemsCopy = items;
  additionalItemsCopy = additionalItems;
  v7 = [itemsCopy count];
  if (v7)
  {
    v7 = [[UIBarButtonItemGroup alloc] initWithBarButtonItems:itemsCopy representativeItem:0];
  }

  splitViewButtonGroup = self->_splitViewButtonGroup;
  self->_splitViewButtonGroup = v7;

  v9 = [additionalItemsCopy count];
  if (v9)
  {
    v9 = [[UIBarButtonItemGroup alloc] initWithBarButtonItems:additionalItemsCopy representativeItem:0];
  }

  additionalItemsButtonGroup = self->_additionalItemsButtonGroup;
  self->_additionalItemsButtonGroup = v9;

  [(SplitViewWindowRootViewController *)self updateNavigationBarButtons];
}

- (void)todayToolbarItemPressed
{
  if (self->_currentSidebarState == 3)
  {
    primarySidebarViewController = [(SplitViewWindowRootViewController *)self primarySidebarViewController];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      primarySidebarViewController = primarySidebarViewController;
      v2 = CUIKTodayDate();
      [primarySidebarViewController scrollToDate:v2 animated:1];
    }
  }

  else
  {
    searchResultsController = self->_searchResultsController;
    primarySidebarViewController = CUIKTodayDate();
    [SearchResultsViewController scrollToDate:"scrollToDate:animated:" animated:?];
  }
}

- (void)showEventAndCloseSidebarIfNeeded:(id)needed animated:(BOOL)animated showMode:(unint64_t)mode
{
  animatedCopy = animated;
  neededCopy = needed;
  if (self->_currentSidebarState && [(UISplitViewController *)self->_splitViewController preferredSplitBehavior]== 2 && ([(SplitViewWindowRootViewController *)self setCurrentSidebarState:0], [(UISplitViewController *)self->_splitViewController transitionCoordinator], (v9 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v10 = v9;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10003F8C8;
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

- (void)inboxWillDismiss
{
  primarySidebarViewController = [(SplitViewWindowRootViewController *)self primarySidebarViewController];
  view = [primarySidebarViewController view];
  [view endEditing:1];

  [primarySidebarViewController inboxWillDismiss];
}

- (void)attemptDisplayReviewPrompt
{
  view = [(SplitViewWindowRootViewController *)self view];
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

  [(SplitViewWindowRootViewController *)self presentViewController:v7 animated:1 completion:0];
}

- (void)paletteTodayButtonTapped:(id)tapped
{
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 postNotificationName:@"EmptySearchBarNeedsResignFirstResponderNotification" object:self];

  [(RootNavigationController *)self->_rootNavigationController todayPressed];

  [(SplitViewWindowRootViewController *)self todayToolbarItemPressed];
}

- (void)paletteAvatarViewTapped:(id)tapped
{
  avatarView = [tapped avatarView];
  [(SplitViewWindowRootViewController *)self showIdentitySwitcherFromSourceView:avatarView];
}

- (BOOL)paletteShouldShowAvatarView
{
  ekui_futureTraitCollection = [(RootNavigationController *)self->_rootNavigationController ekui_futureTraitCollection];
  if ([(SplitViewWindowRootViewController *)self canShowAvatarViewWithTraitCollection:ekui_futureTraitCollection])
  {
    v4 = self->_currentSidebarState == 0;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setFocusFilterMode:(unint64_t)mode
{
  model = [(RootNavigationController *)self->_rootNavigationController model];
  [model setFocusFilterMode:mode];
}

- (void)updateNewEventButtonEnabledness
{
  buttonQ = self->_buttonQ;
  if (!buttonQ)
  {
    v4 = dispatch_queue_create("com.apple.mobilecal.buttonUpdateQ", 0);
    v5 = self->_buttonQ;
    self->_buttonQ = v4;

    buttonQ = self->_buttonQ;
  }

  v7[0] = 0;
  v7[1] = v7;
  v7[2] = 0x2020000000;
  v8 = 0;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10000F43C;
  v6[3] = &unk_10020F500;
  v6[4] = self;
  v6[5] = v7;
  dispatch_async(buttonQ, v6);
  _Block_object_dispose(v7, 8);
}

- (void)updateErrorState
{
  model = [(RootNavigationController *)self->_rootNavigationController model];
  model2 = [(RootNavigationController *)self->_rootNavigationController model];
  sourceForSelectedIdentity = [model2 sourceForSelectedIdentity];
  v6 = [model displayableAccountErrorsForSource:sourceForSelectedIdentity] > 0;

  headerView = self->_headerView;

  [(MainWindowControlHeaderView *)headerView updateErrorState:v6];
}

- (void)_identityChanged:(id)changed
{
  paletteView = self->_paletteView;
  model = [(RootNavigationController *)self->_rootNavigationController model];
  sourceForSelectedIdentity = [model sourceForSelectedIdentity];
  [(MasterNavigationPaletteView *)paletteView updateIdentity:sourceForSelectedIdentity];

  [(SplitViewWindowRootViewController *)self updateSidebarPalette];
  [(SplitViewWindowRootViewController *)self updateNewEventButtonEnabledness];
  [(SplitViewWindowRootViewController *)self updateErrorState];

  [(SplitViewWindowRootViewController *)self updateInboxCount];
}

- (void)_delegatesChanged:(id)changed
{
  model = [(RootNavigationController *)self->_rootNavigationController model];
  -[MasterNavigationPaletteView setShowIdentity:](self->_paletteView, "setShowIdentity:", [model containsDelegateSources]);

  rootNavigationController = self->_rootNavigationController;
  traitCollection = [(SplitViewWindowRootViewController *)self traitCollection];
  [(RootNavigationController *)rootNavigationController setAvatarViewVisible:[(SplitViewWindowRootViewController *)self canShowAvatarViewWithTraitCollection:traitCollection]];

  [(SplitViewWindowRootViewController *)self updateNewEventButtonEnabledness];
}

- (void)_updateAfterExtendedLaunch:(id)launch
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000400B4;
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
    v11.super_class = SplitViewWindowRootViewController;
    v8 = [(SplitViewWindowRootViewController *)&v11 canPerformAction:action withSender:senderCopy];
  }

  v9 = v8;

  return v9;
}

- (void)routeNewEventKeyCommand
{
  traitCollection = [(SplitViewWindowRootViewController *)self traitCollection];
  if ([traitCollection horizontalSizeClass] != 2)
  {
    goto LABEL_4;
  }

  presentedViewController = [(SplitViewWindowRootViewController *)self presentedViewController];
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

    [(SplitViewWindowRootViewController *)self showAddEvent];
  }
}

- (void)routeSearchKeyCommand
{
  traitCollection = [(SplitViewWindowRootViewController *)self traitCollection];
  if ([traitCollection horizontalSizeClass] != 2)
  {
    goto LABEL_4;
  }

  presentedViewController = [(SplitViewWindowRootViewController *)self presentedViewController];
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

  [(SplitViewWindowRootViewController *)self searchTapped];
  searchBar = self->_searchBar;

  [(MainWindowSearchBar *)searchBar becomeFirstResponder];
}

- (void)toggleSidebar:(id)sidebar
{
  if ([(SplitViewWindowRootViewController *)self currentSidebarState])
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

  [(SplitViewWindowRootViewController *)selfCopy2 setCurrentSidebarState:lastOpenSidebarState];
}

- (BOOL)_shouldUseSideBar
{
  traitCollection = [(SplitViewWindowRootViewController *)self traitCollection];
  v3 = [traitCollection horizontalSizeClass] == 2;

  return v3;
}

- (void)showCalendarsViewWithCompletion:(id)completion
{
  completionCopy = completion;
  if ([(SplitViewWindowRootViewController *)self _shouldUseSideBar])
  {
    [(SplitViewWindowRootViewController *)self showCalendarsSideBarWithCompletion:completionCopy];
  }

  else
  {
    [(RootNavigationController *)self->_rootNavigationController showCalendarsAnimated:1 completion:completionCopy];
  }
}

- (void)showInboxView
{
  if ([(SplitViewWindowRootViewController *)self _shouldUseSideBar])
  {

    [(SplitViewWindowRootViewController *)self showInboxSideBarWithCompletion:0];
  }

  else
  {
    v3 = [(RootNavigationController *)self->_rootNavigationController showInboxAnimated:1];
  }
}

- (void)showListView
{
  if ([(SplitViewWindowRootViewController *)self _shouldUseSideBar])
  {

    [(SplitViewWindowRootViewController *)self showListSideBarWithCompletion:0];
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
  if ([(SplitViewWindowRootViewController *)self _shouldUseSideBar])
  {

    [(SplitViewWindowRootViewController *)self showSearchSideBar];
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
    if ([(SplitViewWindowRootViewController *)self _shouldUseSideBar])
    {

      [(SplitViewWindowRootViewController *)self showListView];
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
  v7[2] = sub_100040A48;
  v7[3] = &unk_10020F528;
  calendarCopy = calendar;
  initiallyCopy = initially;
  v6 = calendarCopy;
  [(SplitViewWindowRootViewController *)self showCalendarsViewWithCompletion:v7];
}

- (void)pressesBegan:(id)began withEvent:(id)event
{
  beganCopy = began;
  eventCopy = event;
  isFirstResponder = [(SplitViewWindowRootViewController *)self isFirstResponder];
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
          presentedViewController = [(SplitViewWindowRootViewController *)selfCopy presentedViewController];

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
                v27 = [(SplitViewWindowRootViewController *)selfCopy targetForAction:"handleSelectPreviousEventCommand" withSender:0];
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
                v33 = [(SplitViewWindowRootViewController *)selfCopy targetForAction:"handleSelectNextEventCommand" withSender:0];
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
                v39 = [(SplitViewWindowRootViewController *)selfCopy targetForAction:"handleSelectPreviousEventCommand" withSender:0];
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

              v43 = [(SplitViewWindowRootViewController *)selfCopy targetForAction:"handleSelectNextEventCommand" withSender:0];
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
  v50.super_class = SplitViewWindowRootViewController;
  [(SplitViewWindowRootViewController *)&v50 pressesBegan:v12 withEvent:eventCopy];
LABEL_50:
}

- (void)dismissPresentedViewControllerAnimated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  presentedViewController = [(SplitViewWindowRootViewController *)self presentedViewController];

  if (presentedViewController)
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100040FC0;
    v8[3] = &unk_10020F550;
    v8[4] = self;
    v10 = animatedCopy;
    v9 = completionCopy;
    [(SplitViewWindowRootViewController *)self dismissViewControllerAnimated:animatedCopy completion:v8];
  }

  else
  {
    [(RootNavigationController *)self->_rootNavigationController dismissPresentedViewControllerAnimated:animatedCopy completion:completionCopy];
  }
}

- (id)primarySidebarViewController
{
  viewControllers = [(UINavigationController *)self->_primaryVC viewControllers];
  firstObject = [viewControllers firstObject];

  return firstObject;
}

- (void)setupSearch:(BOOL)search
{
  if (!self->_searchResultsNavController)
  {
    v4 = [SearchResultsViewController alloc];
    model = [(RootNavigationController *)self->_rootNavigationController model];
    window = [(RootNavigationController *)self->_rootNavigationController window];
    v7 = [(SearchResultsViewController *)v4 initWithModel:model window:window];
    searchResultsController = self->_searchResultsController;
    self->_searchResultsController = v7;

    [(SearchResultsViewController *)self->_searchResultsController setSearchResultsDelegate:self];
    [(SearchResultsViewController *)self->_searchResultsController setSearchBar:self->_searchBar];
    [(ListViewController *)self->_searchResultsController setDestination:2];
    [(ListViewController *)self->_searchResultsController setOverrideExtendedEdges:0];
    v9 = [UIBarButtonItem alloc];
    v10 = +[NSBundle mainBundle];
    v11 = [v10 localizedStringForKey:@"Today" value:&stru_1002133B8 table:0];
    v12 = [v9 initWithTitle:v11 style:0 target:self action:"todayToolbarItemPressed"];

    v13 = CalendarAppTintColor();
    [v12 setTintColor:v13];

    v19 = v12;
    v14 = [NSArray arrayWithObjects:&v19 count:1];
    [(SearchResultsViewController *)self->_searchResultsController setToolbarItems:v14];

    [(SplitViewWindowRootViewController *)self setupSearchNavBarHeight];
    v15 = [[UINavigationController alloc] initWithRootViewController:self->_searchResultsController];
    searchResultsNavController = self->_searchResultsNavController;
    self->_searchResultsNavController = v15;

    v17 = CalendarAppBarButtonItemTintColor();
    toolbar = [(UINavigationController *)self->_searchResultsNavController toolbar];
    [toolbar setTintColor:v17];

    [(SplitViewWindowRootViewController *)self setCurrentSidebarState:0];
    [(UISplitViewController *)self->_splitViewController setViewController:self->_searchResultsNavController forColumn:4];
    [(SplitViewWindowRootViewController *)self showColumn:4];
  }
}

- (void)setupSearchNavBarHeight
{
  [(MainWindowSearchBar *)self->_searchBar frame];
  v3 = 60.0;
  if (v4 > 60.0)
  {
    [(MainWindowSearchBar *)self->_searchBar frame];
    v3 = v5;
  }

  navigationItem = [(SearchResultsViewController *)self->_searchResultsController navigationItem];
  [navigationItem _setMinimumDesiredHeight:0 forBarMetrics:v3];

  navigationItem2 = [(SearchResultsViewController *)self->_searchResultsController navigationItem];
  [navigationItem2 _setMinimumDesiredHeight:1 forBarMetrics:v3];
}

- (id)startSearch
{
  [(SplitViewWindowRootViewController *)self setupSearch:0];
  splitViewController = self->_splitViewController;

  return [(UISplitViewController *)splitViewController transitionCoordinator];
}

- (void)searchTapped
{
  [(SplitViewWindowRootViewController *)self setCurrentSidebarState:0];
  superview = [(MainWindowSearchBar *)self->_searchBar superview];
  [(SplitViewWindowRootViewController *)self searchButtonTappedCreateAndAddSearchBar:superview == 0];
}

- (void)searchBegan
{
  [(SplitViewWindowRootViewController *)self setSearchStateToSearching:1];
  [(SplitViewWindowRootViewController *)self layoutSearchControl];

  [(SplitViewWindowRootViewController *)self setNeedsUpdateOfSupportedInterfaceOrientations];
}

- (void)searchEnding
{
  [(SplitViewWindowRootViewController *)self setSearchStateToSearching:0];
  self->_isEndingSearch = 1;
  traitCollection = [(SplitViewWindowRootViewController *)self traitCollection];
  v4 = [(SplitViewWindowRootViewController *)self showsSearchBarForTraitCollection:traitCollection];

  if (v4)
  {
    [(SplitViewWindowRootViewController *)self layoutSearchControl];
  }

  else
  {
    if (CalUIKitNavBarEnabled())
    {
      [(NSLayoutConstraint *)self->_searchBarWidthConstraint setConstant:44.0];
      [(MainWindowSearchBar *)self->_searchBar setAlpha:0.0];
      [(MainWindowSearchBar *)self->_searchBar layoutIfNeeded];
    }

    else
    {
      [(MainWindowSearchBar *)self->_searchBar frame];
      v6 = v5;
      v8 = v7;
      v10 = v9;
      if (CalInterfaceIsLeftToRight())
      {
        view = [(SplitViewWindowRootViewController *)self view];
        [view bounds];
        v13 = v12;
      }

      else
      {
        v13 = -v8;
      }

      [(MainWindowSearchBar *)self->_searchBar setFrame:v13, v6, v8, v10];
    }

    v14 = CalUIKitNavBarEnabled();
    v15 = &OBJC_IVAR___SplitViewWindowRootViewController__searchButton;
    if (v14)
    {
      v15 = &OBJC_IVAR___SplitViewWindowRootViewController__searchToolBarButton;
    }

    v16 = *(&self->super.super.super.isa + *v15);
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_100041698;
    v22[3] = &unk_10020EC68;
    v22[4] = self;
    v17 = v16;
    v23 = v17;
    [UIView performWithoutAnimation:v22];
    v18 = dispatch_time(0, 100000000);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100041708;
    block[3] = &unk_10020EB00;
    v21 = v17;
    v19 = v17;
    dispatch_after(v18, &_dispatch_main_q, block);
  }

  [(SplitViewWindowRootViewController *)self setNeedsUpdateOfSupportedInterfaceOrientations];
}

- (void)searchEnded
{
  self->_isEndingSearch = 0;
  traitCollection = [(SplitViewWindowRootViewController *)self traitCollection];
  v4 = [(SplitViewWindowRootViewController *)self showsSearchBarForTraitCollection:traitCollection];

  if ((v4 & 1) == 0)
  {
    [(NSLayoutConstraint *)self->_searchBarWidthConstraint setConstant:223.0];
    [(MainWindowSearchBar *)self->_searchBar setAlpha:1.0];
    traitCollection2 = [(SplitViewWindowRootViewController *)self traitCollection];
    [(SplitViewWindowRootViewController *)self setupSearchControlForTraitCollection:traitCollection2];
  }
}

- (void)searchBar:(id)bar textDidChange:(id)change
{
  barCopy = bar;
  changeCopy = change;
  if ([changeCopy length])
  {
    [(SplitViewWindowRootViewController *)self setupSearch:1];
    [(SearchResultsViewController *)self->_searchResultsController searchBar:barCopy textDidChange:changeCopy];
  }

  else
  {
    view = [(SplitViewWindowRootViewController *)self view];
    [view bounds];
    v10 = [(SplitViewWindowRootViewController *)self preferredSplitBehaviorForSize:v8, v9];

    if (v10 != 2)
    {
      [(SplitViewWindowRootViewController *)self hideInspectorColumnWithoutLosingSearchBarFocus];
    }
  }
}

- (void)endSearch:(BOOL)search
{
  [(SplitViewWindowRootViewController *)self hideColumn:4];

  [(SplitViewWindowRootViewController *)self resetSearchBar];
}

- (void)resetSearchBar
{
  [(MainWindowSearchBar *)self->_searchBar setText:0];
  searchBar = self->_searchBar;

  [(MainWindowSearchBar *)searchBar resignFirstResponder];
}

- (void)teardownSearch
{
  [(SplitViewWindowRootViewController *)self resetSearchBar];
  searchResultsNavController = self->_searchResultsNavController;
  self->_searchResultsNavController = 0;

  searchResultsController = self->_searchResultsController;
  self->_searchResultsController = 0;
}

- (void)continueSearchWithTerm:(id)term
{
  termCopy = term;
  ekui_futureTraitCollection = [(SplitViewWindowRootViewController *)self ekui_futureTraitCollection];
  horizontalSizeClass = [ekui_futureTraitCollection horizontalSizeClass];

  if (horizontalSizeClass == 1)
  {
    [(RootNavigationController *)self->_rootNavigationController continueSearchWithTerm:termCopy animated:1 removeViewControllersIncapableOfSearchIfNeeded:1];
  }

  else
  {
    [(SplitViewWindowRootViewController *)self searchTapped];
    [(MainWindowSearchBar *)self->_searchBar setText:termCopy];
    [(SplitViewWindowRootViewController *)self searchBar:self->_searchBar textDidChange:termCopy];
  }
}

- (void)searchResultsViewController:(id)controller didSelectEvent:(id)event
{
  controllerCopy = controller;
  eventCopy = event;
  if ([(UISplitViewController *)self->_splitViewController preferredSplitBehavior]== 2)
  {
    [(SplitViewWindowRootViewController *)self cancelSearch];
    transitionCoordinator = [(UISplitViewController *)self->_splitViewController transitionCoordinator];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100041C48;
    v9[3] = &unk_10020F268;
    v9[4] = self;
    v10 = controllerCopy;
    v11 = eventCopy;
    [transitionCoordinator animateAlongsideTransition:v9 completion:0];
  }

  else
  {
    [(RootNavigationController *)self->_rootNavigationController searchResultsViewController:controllerCopy didSelectEvent:eventCopy];
  }
}

@end