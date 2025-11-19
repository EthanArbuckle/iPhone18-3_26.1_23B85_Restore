@interface SplitViewWindowRootViewController
+ (double)sidebarWidthForViewHierarchy:(id)a3;
+ (id)sanitizeCalSubCal:(id)a3;
- (BOOL)_shouldUseSideBar;
- (BOOL)_viewControllerExistsInPresentationChainThatShouldNotRotate;
- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4;
- (BOOL)canShowAvatarViewWithTraitCollection:(id)a3;
- (BOOL)isPopoverCurrentlyVisible;
- (BOOL)paletteShouldShowAvatarView;
- (BOOL)showsSearchBarForTraitCollection:(id)a3;
- (CGSize)mainContentSize;
- (SplitViewWindowRootViewController)initWithRootNavigationController:(id)a3;
- (double)searchFieldWidth;
- (id)primarySidebarViewController;
- (id)startSearch;
- (id)traitCollectionToUseWhileLoadingViewsDuringTransitioningToTraitCollection:(id)a3;
- (id)viewControllerForSidebarState:(unint64_t)a3;
- (int64_t)preferredSplitBehaviorForSize:(CGSize)a3;
- (int64_t)splitViewController:(id)a3 displayModeForExpandingToProposedDisplayMode:(int64_t)a4;
- (unint64_t)focusFilterMode;
- (unint64_t)supportedInterfaceOrientations;
- (void)_delegatesChanged:(id)a3;
- (void)_identityChanged:(id)a3;
- (void)_updateAfterExtendedLaunch:(id)a3;
- (void)_updateNavigationAdditionalBarButtonsWithTraitCollection:(id)a3;
- (void)_updateNavigationBarButtonsWithTraitCollection:(id)a3;
- (void)_updatePreferredSplitBehaviorForSize:(CGSize)a3;
- (void)activateSearchBarConstraints;
- (void)activateSearchButtonConstraints;
- (void)attemptDisplayReviewPrompt;
- (void)continueSearchWithTerm:(id)a3;
- (void)createSearchBarIfNeeded;
- (void)dealloc;
- (void)dismissPresentedViewControllerAnimated:(BOOL)a3 completion:(id)a4;
- (void)emptySearchBarNeedsResign:(id)a3;
- (void)endSearch:(BOOL)a3;
- (void)handleURL:(id)a3 context:(id)a4;
- (void)hideColumn:(int64_t)a3;
- (void)hideInspectorColumnWithoutLosingSearchBarFocus;
- (void)inboxWillDismiss;
- (void)keyboardWillShow:(id)a3;
- (void)layoutSearchControl;
- (void)layoutSegmentedControl;
- (void)newEventButtonTapped:(id)a3;
- (void)paletteAvatarViewTapped:(id)a3;
- (void)paletteTodayButtonTapped:(id)a3;
- (void)pressesBegan:(id)a3 withEvent:(id)a4;
- (void)resetSearchBar;
- (void)routeNewEventKeyCommand;
- (void)routeSearchKeyCommand;
- (void)searchBar:(id)a3 textDidChange:(id)a4;
- (void)searchBegan;
- (void)searchButtonTappedCreateAndAddSearchBar:(BOOL)a3;
- (void)searchEnded;
- (void)searchEnding;
- (void)searchResultsViewController:(id)a3 didSelectEvent:(id)a4;
- (void)searchTapped;
- (void)segmentedControlAddedToWindow;
- (void)setCurrentSidebarState:(unint64_t)a3 completion:(id)a4;
- (void)setFocusFilterMode:(unint64_t)a3;
- (void)setNavigationItems:(id)a3 additionalItems:(id)a4;
- (void)setSearchStateToSearching:(BOOL)a3;
- (void)setupSearch:(BOOL)a3;
- (void)setupSearchControlForTraitCollection:(id)a3;
- (void)setupSearchNavBarHeight;
- (void)showAddEvent;
- (void)showAddEventWithTitle:(id)a3 startDate:(id)a4 endDate:(id)a5 location:(id)a6 suggestionsKey:(id)a7 allDay:(BOOL)a8;
- (void)showCalendarsSideBarWithCompletion:(id)a3;
- (void)showCalendarsViewWithCompletion:(id)a3;
- (void)showColumn:(int64_t)a3;
- (void)showDayView;
- (void)showEventAndCloseSidebarIfNeeded:(id)a3 animated:(BOOL)a4 showMode:(unint64_t)a5;
- (void)showIdentitySwitcherFromSourceView:(id)a3;
- (void)showInboxSideBarWithCompletion:(id)a3;
- (void)showInboxView;
- (void)showInspectorForCalendar:(id)a3 enableDoneInitially:(BOOL)a4;
- (void)showListSideBarWithCompletion:(id)a3;
- (void)showListView;
- (void)showSearchView;
- (void)showSplitMonthView;
- (void)splitViewController:(id)a3 willChangeToProposedDisplayMode:(int64_t *)a4;
- (void)splitViewController:(id)a3 willHideColumn:(int64_t)a4;
- (void)splitViewController:(id)a3 willShowColumn:(int64_t)a4;
- (void)teardownSearch;
- (void)todayToolbarItemPressed;
- (void)toggleSidebar:(id)a3;
- (void)updateErrorState;
- (void)updateInboxCount;
- (void)updateNavigationAdditionalBarButtons;
- (void)updateNavigationBarButtons;
- (void)updateNewEventButtonEnabledness;
- (void)updatePrimaryViewControllerNavBar;
- (void)updatePrimaryViewControllerToolbar;
- (void)updateSidebarPalette;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
- (void)willEnterForeground;
- (void)willTransitionToTraitCollection:(id)a3 withTransitionCoordinator:(id)a4;
@end

@implementation SplitViewWindowRootViewController

- (void)viewDidLoad
{
  v126.receiver = self;
  v126.super_class = SplitViewWindowRootViewController;
  [(SplitViewWindowRootViewController *)&v126 viewDidLoad];
  v3 = [(SplitViewWindowRootViewController *)self view];
  [v3 setAutoresizingMask:18];

  v4 = [[UISplitViewController alloc] initWithStyle:1];
  splitViewController = self->_splitViewController;
  self->_splitViewController = v4;

  [(UISplitViewController *)self->_splitViewController setDelegate:self];
  [(UISplitViewController *)self->_splitViewController setPresentsWithGesture:0];
  [(UISplitViewController *)self->_splitViewController setDisplayModeButtonVisibility:1];
  [(SplitViewWindowRootViewController *)self addChildViewController:self->_splitViewController];
  v6 = [(SplitViewWindowRootViewController *)self view];
  v7 = [(UISplitViewController *)self->_splitViewController view];
  [v6 addSubview:v7];

  [(UISplitViewController *)self->_splitViewController didMoveToParentViewController:self];
  v8 = [(UISplitViewController *)self->_splitViewController view];
  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];

  v124 = [(UISplitViewController *)self->_splitViewController view];
  v121 = [v124 topAnchor];
  v123 = [(SplitViewWindowRootViewController *)self view];
  v118 = [v123 topAnchor];
  v115 = [v121 constraintEqualToAnchor:v118];
  v131[0] = v115;
  v112 = [(UISplitViewController *)self->_splitViewController view];
  v106 = [v112 bottomAnchor];
  v109 = [(SplitViewWindowRootViewController *)self view];
  v104 = [v109 bottomAnchor];
  v101 = [v106 constraintEqualToAnchor:v104];
  v131[1] = v101;
  v99 = [(UISplitViewController *)self->_splitViewController view];
  v96 = [v99 leadingAnchor];
  v97 = [(SplitViewWindowRootViewController *)self view];
  v9 = [v97 leadingAnchor];
  v10 = [v96 constraintEqualToAnchor:v9];
  v131[2] = v10;
  v11 = [(UISplitViewController *)self->_splitViewController view];
  v12 = [v11 trailingAnchor];
  v13 = [(SplitViewWindowRootViewController *)self view];
  v14 = [v13 trailingAnchor];
  v15 = [v12 constraintEqualToAnchor:v14];
  v131[3] = v15;
  v16 = [NSArray arrayWithObjects:v131 count:4];
  [NSLayoutConstraint activateConstraints:v16];

  v17 = objc_alloc_init(UINavigationController);
  primaryVC = self->_primaryVC;
  self->_primaryVC = v17;

  v19 = +[UIColor secondarySystemBackgroundColor];
  v20 = [(UINavigationController *)self->_primaryVC navigationBar];
  [v20 setBarTintColor:v19];

  v21 = [(UINavigationController *)self->_primaryVC navigationBar];
  [v21 setForceFullHeightInLandscape:1];

  [(UISplitViewController *)self->_splitViewController setViewController:self->_primaryVC forColumn:0];
  [(UISplitViewController *)self->_splitViewController hideColumn:0];
  v22 = [(SplitViewWindowRootViewController *)self EKUI_viewHierarchy];
  [SplitViewWindowRootViewController sidebarWidthForViewHierarchy:v22];
  [(UISplitViewController *)self->_splitViewController setMinimumPrimaryColumnWidth:?];
  v125 = v22;
  [SplitViewWindowRootViewController sidebarWidthForViewHierarchy:v22];
  [(UISplitViewController *)self->_splitViewController setMaximumPrimaryColumnWidth:?];
  v23 = objc_alloc_init(UIViewController);
  containerViewController = self->_containerViewController;
  self->_containerViewController = v23;

  v25 = [(UIViewController *)self->_containerViewController view];
  [v25 setAutoresizingMask:18];

  v26 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"keyboardBackgroundTapped:"];
  [v26 setCancelsTouchesInView:0];
  v27 = [(UIViewController *)self->_containerViewController view];
  v122 = v26;
  [v27 addGestureRecognizer:v26];

  [(UIViewController *)self->_containerViewController addChildViewController:self->_rootNavigationController];
  v28 = [(UIViewController *)self->_containerViewController view];
  v29 = [(RootNavigationController *)self->_rootNavigationController view];
  [v28 addSubview:v29];

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

  v33 = [(RootNavigationController *)self->_rootNavigationController view];
  [v33 setTranslatesAutoresizingMaskIntoConstraints:0];

  LOBYTE(v33) = CalUIKitNavBarEnabled();
  v119 = [(RootNavigationController *)self->_rootNavigationController view];
  v34 = [v119 topAnchor];
  v113 = [(UIViewController *)self->_containerViewController view];
  [v113 topAnchor];
  v110 = v116 = v34;
  v35 = [v34 constraintEqualToAnchor:?];
  v107 = v35;
  if (v33)
  {
    v128[0] = v35;
    v105 = [(RootNavigationController *)self->_rootNavigationController view];
    v36 = [v105 bottomAnchor];
    v102 = [(UIViewController *)self->_containerViewController view];
    [v102 bottomAnchor];
    v100 = v103 = v36;
    v98 = [v36 constraintEqualToAnchor:?];
    v128[1] = v98;
    v95 = [(RootNavigationController *)self->_rootNavigationController view];
    v37 = [v95 leadingAnchor];
    v93 = [(UIViewController *)self->_containerViewController view];
    [v93 leadingAnchor];
    v92 = v94 = v37;
    v91 = [v37 constraintEqualToAnchor:?];
    v128[2] = v91;
    v90 = [(RootNavigationController *)self->_rootNavigationController view];
    v38 = [v90 trailingAnchor];
    v39 = [(UIViewController *)self->_containerViewController view];
    v40 = [v39 trailingAnchor];
    v41 = [v38 constraintEqualToAnchor:v40];
    v128[3] = v41;
    v42 = [NSArray arrayWithObjects:v128 count:4];
    [NSLayoutConstraint activateConstraints:v42];
  }

  else
  {
    v129[0] = v35;
    v105 = [(RootNavigationController *)self->_rootNavigationController view];
    v43 = [v105 bottomAnchor];
    v102 = [(UIViewController *)self->_containerViewController view];
    [v102 bottomAnchor];
    v100 = v103 = v43;
    v98 = [v43 constraintEqualToAnchor:?];
    v129[1] = v98;
    v95 = [(RootNavigationController *)self->_rootNavigationController view];
    v44 = [v95 leadingAnchor];
    v93 = [(UIViewController *)self->_containerViewController view];
    v92 = [v93 safeAreaLayoutGuide];
    [v92 leadingAnchor];
    v91 = v94 = v44;
    v90 = [v44 constraintEqualToAnchor:?];
    v129[2] = v90;
    v38 = [(RootNavigationController *)self->_rootNavigationController view];
    v39 = [v38 trailingAnchor];
    v40 = [(UIViewController *)self->_containerViewController view];
    v41 = [v40 safeAreaLayoutGuide];
    v42 = [v41 trailingAnchor];
    v45 = [v39 constraintEqualToAnchor:v42];
    v129[3] = v45;
    v46 = [NSArray arrayWithObjects:v129 count:4];
    [NSLayoutConstraint activateConstraints:v46];
  }

  v47 = [(SplitViewWindowRootViewController *)self traitCollection];
  v48 = [v47 horizontalSizeClass];

  if (v48 == 2)
  {
    v49 = [(RootNavigationController *)self->_rootNavigationController viewSwitcher];
    segmentedControl = self->_segmentedControl;
    self->_segmentedControl = v49;

    if ((CalUIKitNavBarEnabled() & 1) == 0)
    {
      v51 = [(UIViewController *)self->_containerViewController view];
      [v51 addSubview:self->_segmentedControl];
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
  v56 = [(MainWindowControlHeaderView *)v52 initWithFrame:CGRectZero.origin.x, y, width, height];
  headerView = self->_headerView;
  self->_headerView = v56;

  [(MainWindowControlHeaderView *)self->_headerView setDelegate:self];
  [(SplitViewWindowRootViewController *)self updateInboxCount];
  v58 = [[MasterNavigationPaletteView alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
  paletteView = self->_paletteView;
  self->_paletteView = v58;

  [(MasterNavigationPaletteView *)self->_paletteView setTranslatesAutoresizingMaskIntoConstraints:0];
  v60 = [(RootNavigationController *)self->_rootNavigationController model];
  [(MasterNavigationPaletteView *)self->_paletteView setModel:v60];

  [(MasterNavigationPaletteView *)self->_paletteView setDelegate:self];
  v61 = [(RootNavigationController *)self->_rootNavigationController model];
  -[MasterNavigationPaletteView setShowIdentity:](self->_paletteView, "setShowIdentity:", [v61 containsDelegateSources]);

  [(MasterNavigationPaletteView *)self->_paletteView setHideTitle:1];
  v62 = self->_paletteView;
  v63 = [(SplitViewWindowRootViewController *)self view];
  [v63 bounds];
  [(MasterNavigationPaletteView *)v62 sizeThatFits:v64, v65];
  v67 = v66;
  v69 = v68;

  v70 = [[UIView alloc] initWithFrame:{0.0, 0.0, v67, v69}];
  [v70 addSubview:self->_paletteView];
  v120 = [(MasterNavigationPaletteView *)self->_paletteView leadingAnchor];
  v117 = [v70 leadingAnchor];
  v114 = [v120 constraintEqualToAnchor:v117];
  v127[0] = v114;
  v111 = [(MasterNavigationPaletteView *)self->_paletteView trailingAnchor];
  v108 = [v70 trailingAnchor];
  v71 = [v111 constraintEqualToAnchor:v108];
  v127[1] = v71;
  v72 = [(MasterNavigationPaletteView *)self->_paletteView topAnchor];
  v73 = [v70 topAnchor];
  v74 = [v72 constraintEqualToAnchor:v73];
  v127[2] = v74;
  v75 = [(MasterNavigationPaletteView *)self->_paletteView bottomAnchor];
  v76 = [v70 bottomAnchor];
  v77 = [v75 constraintEqualToAnchor:v76];
  v127[3] = v77;
  v78 = [NSArray arrayWithObjects:v127 count:4];
  [NSLayoutConstraint activateConstraints:v78];

  v79 = [[_UINavigationBarPalette alloc] initWithContentView:v70];
  palette = self->_palette;
  self->_palette = v79;

  [(_UINavigationBarPalette *)self->_palette setPreferredHeight:v69];
  v81 = [(RootNavigationController *)self->_rootNavigationController paletteView];
  [v81 setDelegate:self];

  v82 = [(SplitViewWindowRootViewController *)self ekui_futureTraitCollection];
  v83 = [v82 horizontalSizeClass];

  if (v83 == 2)
  {
    if ((CalUIKitNavBarEnabled() & 1) == 0)
    {
      v84 = [(SplitViewWindowRootViewController *)self view];
      [v84 addSubview:self->_headerView];
    }

    rootNavigationController = self->_rootNavigationController;
    v86 = [(SplitViewWindowRootViewController *)self ekui_futureTraitCollection];
    [(RootNavigationController *)rootNavigationController setAvatarViewVisible:[(SplitViewWindowRootViewController *)self canShowAvatarViewWithTraitCollection:v86]];
  }

  else
  {
    [*(&self->super.super.super.isa + v89) setNavigationBarHidden:1 animated:0];
    [(RootNavigationController *)self->_rootNavigationController setAvatarViewVisible:0];
  }

  v87 = [objc_opt_class() shouldHideInlineFocusBannerForSidebarState:self->_currentSidebarState];
  v88 = [(RootNavigationController *)self->_rootNavigationController paletteView];
  [v88 setShouldHideInlineFocusBanner:v87];
}

- (void)updateNavigationBarButtons
{
  v3 = [(RootNavigationController *)self->_rootNavigationController ekui_futureTraitCollection];
  [(SplitViewWindowRootViewController *)self _updateNavigationBarButtonsWithTraitCollection:v3];
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
  v3 = [(RootNavigationController *)self->_rootNavigationController ekui_futureTraitCollection];
  [(SplitViewWindowRootViewController *)self _updateNavigationAdditionalBarButtonsWithTraitCollection:v3];
}

- (unint64_t)supportedInterfaceOrientations
{
  v3 = [(SplitViewWindowRootViewController *)self presentedViewController];
  v4 = EKUIUseLargeFormatPhoneUI();
  objc_opt_class();
  if (((objc_opt_isKindOfClass() & 1) != 0 || v4 && self->_isSearching || -[SplitViewWindowRootViewController _viewControllerExistsInPresentationChainThatShouldNotRotate](self, "_viewControllerExistsInPresentationChainThatShouldNotRotate")) && (-[SplitViewWindowRootViewController view](self, "view"), v5 = objc_claimAutoreleasedReturnValue(), [v5 window], v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "windowScene"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "interfaceOrientation"), v7, v6, v5, v8))
  {
    v9 = 1 << v8;
  }

  else
  {
    v11.receiver = self;
    v11.super_class = SplitViewWindowRootViewController;
    v9 = [(SplitViewWindowRootViewController *)&v11 supportedInterfaceOrientations];
  }

  return v9;
}

- (BOOL)_viewControllerExistsInPresentationChainThatShouldNotRotate
{
  v3 = +[NSMutableSet set];
  v4 = objc_opt_class();
  if (v4)
  {
    [v3 addObject:v4];
  }

  v5 = [(SplitViewWindowRootViewController *)self presentedViewController];
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
    v3 = [(MainWindowControlHeaderView *)self->_headerView superview];

    if (v3)
    {
      v23 = [(RootNavigationController *)self->_rootNavigationController viewSwitcher];
      v4 = [(SplitViewWindowRootViewController *)self view];
      [v23 bounds];
      [v4 convertRect:v23 fromView:?];
      MidY = CGRectGetMidY(v26);

      v6 = [(SplitViewWindowRootViewController *)self view];
      [v6 bounds];
      v8 = v7;
      +[SplitViewWindowRootViewController minimumStandardWindowWidth];
      v10 = dbl_1001F81B0[v8 < v9];

      LODWORD(v6) = CalInterfaceIsLeftToRight();
      v11 = [(SplitViewWindowRootViewController *)self view];
      [v11 safeAreaInsets];
      v13 = v12;
      v15 = v14;

      if (v6)
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
        v11 = [(SplitViewWindowRootViewController *)self view];
        [v11 bounds];
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
    v4 = [(UIViewController *)self->_containerViewController view];
    [v4 bounds];
    [(UISegmentedControl *)segmentedControl sizeThatFits:v5, v6];
    v8 = v7;
    v10 = v9;

    v11 = [(SplitViewWindowRootViewController *)self view];
    v12 = [v11 window];
    v13 = [(UIViewController *)self->_containerViewController view];
    [v12 bounds];
    [v13 convertPoint:v12 fromView:{CGRectGetWidth(v24) * 0.5, 0.0}];
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
      v20 = [(UISplitViewController *)self->_splitViewController transitionCoordinator];
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_100041B24;
      v21[3] = &unk_10020F1C8;
      v22 = v18;
      [v20 animateAlongsideTransition:v21 completion:0];
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
  v4 = [(MainWindowSearchBar *)self->_searchBar superview];
  if (v4)
  {
  }

  else
  {
    v5 = [(UIButton *)self->_searchButton superview];

    if (!v5)
    {
      return;
    }
  }

  if ((CalUIKitNavBarEnabled() & 1) == 0)
  {
    v6 = [(RootNavigationController *)self->_rootNavigationController viewSwitcher];
    [v6 frame];
    MidY = CGRectGetMidY(v41);

    LODWORD(v6) = CalInterfaceIsLeftToRight();
    v8 = [(SplitViewWindowRootViewController *)self view];
    [v8 safeAreaInsets];
    v10 = v9;
    v12 = v11;

    if (v6)
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
        v22 = [(SplitViewWindowRootViewController *)self EKUI_viewHierarchy];
        [SplitViewWindowRootViewController sidebarWidthForViewHierarchy:v22];
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
        v27 = [(SplitViewWindowRootViewController *)self view];
        [v27 bounds];
        v14 = v28 - v24 - (v14 - v21);
      }

      else
      {
        v14 = v14 - v19;
      }

      v36 = [(SplitViewWindowRootViewController *)self traitCollection];
      if (EKUIUsesLargeTextLayout())
      {
        v37 = [(SplitViewWindowRootViewController *)self view];
        [v37 safeAreaInsets];
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

      v30 = [(UIButton *)searchButton superview];

      if (!v30)
      {
        return;
      }

      [*p_searchBar sizeToFit];
      [*p_searchBar frame];
      v24 = v31;
      v26 = v32;
      if (CalInterfaceIsLeftToRight())
      {
        v33 = [(SplitViewWindowRootViewController *)self view];
        [v33 bounds];
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
  v2 = [(RootNavigationController *)self->_rootNavigationController model];
  v3 = [v2 focusFilterMode];

  return v3;
}

+ (double)sidebarWidthForViewHierarchy:(id)a3
{
  v3 = EKUICurrentWindowInterfaceParadigm_RequiresPageSheetEventEditors();
  result = 320.0;
  if (v3)
  {
    return 375.0;
  }

  return result;
}

- (SplitViewWindowRootViewController)initWithRootNavigationController:(id)a3
{
  v5 = a3;
  v22.receiver = self;
  v22.super_class = SplitViewWindowRootViewController;
  v6 = [(SplitViewWindowRootViewController *)&v22 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_rootNavigationController, a3);
    [(RootNavigationController *)v7->_rootNavigationController setSplitViewRootDelegate:v7];
    v8 = +[NSNotificationCenter defaultCenter];
    v9 = CUIKCalendarModelNotificationCountsChangedNotification;
    v10 = [(RootNavigationController *)v7->_rootNavigationController model];
    [v8 addObserver:v7 selector:"_notificationCountChanged:" name:v9 object:v10];

    v11 = CUIKCalendarModelIdentityChangedNotification;
    v12 = [(RootNavigationController *)v7->_rootNavigationController model];
    [v8 addObserver:v7 selector:"_identityChanged:" name:v11 object:v12];

    v13 = CUIKCalendarModelDelegatesChangedNotification;
    v14 = [(RootNavigationController *)v7->_rootNavigationController model];
    [v8 addObserver:v7 selector:"_delegatesChanged:" name:v13 object:v14];

    v15 = CUIKCalendarModelCalendarsChangedNotification;
    v16 = [(RootNavigationController *)v7->_rootNavigationController model];
    [v8 addObserver:v7 selector:"_calendarsChanged:" name:v15 object:v16];

    v17 = CUIKCalendarModelAccountErrorCountChangedNotification;
    v18 = [(RootNavigationController *)v7->_rootNavigationController model];
    [v8 addObserver:v7 selector:"_calendarErrorCountChanged:" name:v17 object:v18];

    v19 = CUIKCalendarModelDisplayedOccurrencesChangedForTheFirstTimeNotification;
    v20 = [(RootNavigationController *)v7->_rootNavigationController model];
    [v8 addObserver:v7 selector:"_updateAfterExtendedLaunch:" name:v19 object:v20];

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

- (void)emptySearchBarNeedsResign:(id)a3
{
  v4 = [(MainWindowSearchBar *)self->_searchBar text];
  v5 = [v4 isEqual:&stru_1002133B8];

  if (v5)
  {
    searchBar = self->_searchBar;

    [(MainWindowSearchBar *)searchBar resignFirstResponder];
  }
}

- (void)_updateNavigationBarButtonsWithTraitCollection:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_splitViewButtonGroup && [v4 horizontalSizeClass] != 1)
  {
    splitViewButtonGroup = self->_splitViewButtonGroup;
    v9 = [NSArray arrayWithObjects:&splitViewButtonGroup count:1];
    [(UISplitViewController *)self->_splitViewController _setPrimaryEdgeAdditionalBarButtonItemGroups:v9];

    v6 = [(UISplitViewController *)self->_splitViewController navigationController];
    v7 = v6;
    v8 = 0;
  }

  else
  {
    [(UISplitViewController *)self->_splitViewController _setPrimaryEdgeAdditionalBarButtonItemGroups:&__NSArray0__struct];
    v6 = [(UISplitViewController *)self->_splitViewController navigationController];
    v7 = v6;
    v8 = 1;
  }

  [v6 setNavigationBarHidden:v8];

  [(SplitViewWindowRootViewController *)self _updateNavigationAdditionalBarButtonsWithTraitCollection:v5];
}

- (void)_updateNavigationAdditionalBarButtonsWithTraitCollection:(id)a3
{
  v4 = a3;
  if (CalUIKitNavBarEnabled())
  {
    v5 = [(RootNavigationController *)self->_rootNavigationController topViewController];
    v6 = [v5 navigationItem];
  }

  else
  {
    v6 = [(UIViewController *)self->_containerViewController navigationItem];
  }

  if (self->_additionalItemsButtonGroup && [v4 horizontalSizeClass] != 1)
  {
    additionalItemsButtonGroup = self->_additionalItemsButtonGroup;
    v10 = [NSArray arrayWithObjects:&additionalItemsButtonGroup count:1];
    [v6 setLeadingItemGroups:v10];

    v7 = [(UIViewController *)self->_containerViewController navigationController];
    v8 = v7;
    v9 = 0;
  }

  else
  {
    [v6 setLeadingItemGroups:&__NSArray0__struct];
    v7 = [(UIViewController *)self->_containerViewController navigationController];
    v8 = v7;
    v9 = 1;
  }

  [v7 setNavigationBarHidden:v9];
}

- (void)willEnterForeground
{
  v3 = [(SplitViewWindowRootViewController *)self traitCollection];
  [(SplitViewWindowRootViewController *)self setupSearchControlForTraitCollection:v3];

  [(SplitViewWindowRootViewController *)self layoutSegmentedControl];
}

- (void)viewWillAppear:(BOOL)a3
{
  v6 = [(SplitViewWindowRootViewController *)self view];
  [v6 bounds];
  [(SplitViewWindowRootViewController *)self _updatePreferredSplitBehaviorForSize:v4, v5];
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
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

  v8 = [(SplitViewWindowRootViewController *)self traitCollection];
  [(SplitViewWindowRootViewController *)self setupSearchControlForTraitCollection:v8];

  [(SplitViewWindowRootViewController *)self layoutSearchControl];
  if ((CalUIKitNavBarEnabled() & 1) == 0)
  {
    headerView = self->_headerView;
    v10 = [(SplitViewWindowRootViewController *)self view];
    [v10 bounds];
    [(MainWindowControlHeaderView *)headerView layoutForWidth:v11];
  }

  [(SplitViewWindowRootViewController *)self updateNewEventButtonEnabledness];
  v12.receiver = self;
  v12.super_class = SplitViewWindowRootViewController;
  [(SplitViewWindowRootViewController *)&v12 viewDidAppear:v3];
}

- (id)traitCollectionToUseWhileLoadingViewsDuringTransitioningToTraitCollection:(id)a3
{
  v3 = a3;
  if ([v3 horizontalSizeClass] == 1 && objc_msgSend(v3, "verticalSizeClass") == 1)
  {
    v4 = [v3 traitCollectionByModifyingTraits:&stru_10020F348];
  }

  else
  {
    v4 = v3;
  }

  v5 = v4;

  return v5;
}

- (void)willTransitionToTraitCollection:(id)a3 withTransitionCoordinator:(id)a4
{
  v6 = a3;
  v72 = a4;
  if (([(SplitViewWindowRootViewController *)self isViewLoaded]& 1) == 0)
  {
    v7 = v6;
    v8 = [(SplitViewWindowRootViewController *)self traitCollectionToUseWhileLoadingViewsDuringTransitioningToTraitCollection:v6];
    if (v8)
    {
      [(SplitViewWindowRootViewController *)self setEkui_futureTraitCollection:v8];
      v9 = [(SplitViewWindowRootViewController *)self view];
      [v9 setNeedsLayout];

      [(SplitViewWindowRootViewController *)self setEkui_futureTraitCollection:0];
    }

    else
    {
      v10 = [(SplitViewWindowRootViewController *)self view];
      [v10 setNeedsLayout];
    }

    v6 = v7;
  }

  v73 = v6;
  v11 = [v6 horizontalSizeClass];
  v12 = [(SplitViewWindowRootViewController *)self traitCollection];
  v13 = [v12 horizontalSizeClass];

  v71 = [v73 horizontalSizeClass];
  v14 = [(SplitViewWindowRootViewController *)self view];
  v15 = [v14 window];
  v16 = [v15 windowScene];
  v17 = [v16 activationState];

  v89 = 0;
  v90 = &v89;
  v91 = 0x2020000000;
  v92 = 0;
  [(UINavigationController *)self->_primaryVC setNavigationBarHidden:v71 != 2 animated:0];
  if (v17 == 2)
  {
    v68 = 0;
  }

  else
  {
    v68 = [(SplitViewWindowRootViewController *)self firstResponder];
  }

  if (v11 == v13 || v71 != 2)
  {
    if (v11 == v13)
    {
      v22 = 0;
      goto LABEL_32;
    }

    v18 = [(SplitViewWindowRootViewController *)self presentedViewController];
    if ([(SplitViewWindowRootViewController *)self currentSidebarState]!= 1)
    {
      goto LABEL_28;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_28;
    }

    v23 = [v18 viewControllers];
    v24 = [v23 firstObject];
    NSClassFromString(@"EKCalendarEditor");
    if (objc_opt_isKindOfClass())
    {
    }

    else
    {
      v26 = [v18 viewControllers];
      v27 = [v26 firstObject];
      NSClassFromString(@"EKSubscribedCalendarEditor");
      isKindOfClass = objc_opt_isKindOfClass();

      if ((isKindOfClass & 1) == 0)
      {
LABEL_28:
        if ((CalUIKitNavBarEnabled() & 1) == 0)
        {
          [(MainWindowControlHeaderView *)self->_headerView removeFromSuperview];
        }

        v22 = 0;
        goto LABEL_31;
      }
    }

    v29 = [(SplitViewWindowRootViewController *)self primarySidebarViewController];
    v30 = [v29 preservedState];
    calendarsPreservedState = self->_calendarsPreservedState;
    self->_calendarsPreservedState = v30;

    [(SplitViewWindowRootViewController *)self dismissViewControllerAnimated:0 completion:0];
    goto LABEL_28;
  }

  v18 = [(RootNavigationController *)self->_rootNavigationController presentedViewController];
  if (!v18)
  {
    v18 = [(SplitViewWindowRootViewController *)self presentedViewController];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v19 = [v18 preservedState];
    v20 = self->_calendarsPreservedState;
    self->_calendarsPreservedState = v19;

    v21 = [v18 presentingViewController];
    [v21 dismissViewControllerAnimated:0 completion:0];

    v22 = 0;
    v90[3] = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(RootNavigationController *)self->_rootNavigationController dismissViewControllerAnimated:0 completion:0];
      v90[3] = 2;
      objc_storeStrong(&self->_presentedInboxVC, v18);
      v22 = [(InboxViewController *)self->_presentedInboxVC displayedDetailViewControllers];
    }

    else
    {
      v22 = 0;
    }
  }

  if ((CalUIKitNavBarEnabled() & 1) == 0)
  {
    v25 = [(SplitViewWindowRootViewController *)self view];
    [v25 addSubview:self->_headerView];
  }

LABEL_31:

LABEL_32:
  if (!self->_searchResultsController)
  {
    v32 = [(RootNavigationController *)self->_rootNavigationController presentedViewController];
    objc_opt_class();
    v33 = objc_opt_isKindOfClass();

    if (v33)
    {
      v34 = [(RootNavigationController *)self->_rootNavigationController presentedViewController];
      v35 = [v34 searchResultsUpdater];

      [v35 setShouldLeaveSearchString:1];
      v36 = [(RootNavigationController *)self->_rootNavigationController presentedViewController];
      v37 = [v36 searchBar];
      v38 = [v37 text];

      [(RootNavigationController *)self->_rootNavigationController dismissViewControllerAnimated:0 completion:0];
      goto LABEL_39;
    }

    goto LABEL_37;
  }

  if (self->_animatingSidebar)
  {
    [(UISplitViewController *)self->_splitViewController setViewController:0 forColumn:4];
LABEL_37:
    v38 = 0;
    goto LABEL_39;
  }

  v38 = [(MainWindowSearchBar *)self->_searchBar text];
  [(SplitViewWindowRootViewController *)self endSearch:0];
LABEL_39:
  v39 = [(UISplitViewController *)self->_splitViewController overrideTraitCollectionForChildViewController:self->_primaryVC];
  [(UISplitViewController *)self->_splitViewController setOverrideTraitCollection:0 forChildViewController:self->_primaryVC];
  v88.receiver = self;
  v88.super_class = SplitViewWindowRootViewController;
  [(SplitViewWindowRootViewController *)&v88 willTransitionToTraitCollection:v73 withTransitionCoordinator:v72];
  if (v72)
  {
    [v72 targetTransform];
  }

  else
  {
    memset(&v87, 0, sizeof(v87));
  }

  v83[0] = _NSConcreteStackBlock;
  v83[1] = 3221225472;
  v83[2] = sub_10003BA40;
  v83[3] = &unk_10020F398;
  v84 = v71 == 2;
  v85 = !CGAffineTransformIsIdentity(&v87);
  v86 = v17 == 2;
  v83[4] = self;
  v83[5] = &v89;
  v74[0] = _NSConcreteStackBlock;
  v74[1] = 3221225472;
  v74[2] = sub_10003BC08;
  v74[3] = &unk_10020F3E8;
  v69 = v68;
  v75 = v69;
  v76 = self;
  v40 = v39;
  v77 = v40;
  v80 = &v89;
  v81 = v17 == 2;
  v70 = v22;
  v78 = v70;
  v41 = v38;
  v79 = v41;
  v82 = v71 == 2;
  [v72 animateAlongsideTransition:v83 completion:v74];
  if (v71 == 2)
  {
    if (!self->_segmentedControl)
    {
      v42 = [(RootNavigationController *)self->_rootNavigationController viewSwitcher];
      segmentedControl = self->_segmentedControl;
      self->_segmentedControl = v42;
    }

    v44 = CalUIKitNavBarEnabled();
    v45 = self->_segmentedControl;
    if (!v44)
    {
      [(UISegmentedControl *)v45 setTranslatesAutoresizingMaskIntoConstraints:0];
      v67 = [(UISplitViewController *)self->_splitViewController view];
      v65 = [v67 topAnchor];
      v66 = [(SplitViewWindowRootViewController *)self view];
      v64 = [v66 topAnchor];
      v63 = [v65 constraintEqualToAnchor:v64];
      v93[0] = v63;
      v62 = [(UISplitViewController *)self->_splitViewController view];
      v60 = [v62 bottomAnchor];
      v61 = [(SplitViewWindowRootViewController *)self view];
      v59 = [v61 bottomAnchor];
      v58 = [v60 constraintEqualToAnchor:v59];
      v93[1] = v58;
      v57 = [(UISplitViewController *)self->_splitViewController view];
      v55 = [v57 leadingAnchor];
      v56 = [(SplitViewWindowRootViewController *)self view];
      v54 = [v56 leadingAnchor];
      v46 = [v55 constraintEqualToAnchor:v54];
      v93[2] = v46;
      v47 = [(UISplitViewController *)self->_splitViewController view];
      v48 = [v47 trailingAnchor];
      v49 = [(SplitViewWindowRootViewController *)self view];
      v50 = [v49 trailingAnchor];
      v51 = [v48 constraintEqualToAnchor:v50];
      v93[3] = v51;
      v52 = [NSArray arrayWithObjects:v93 count:4];
      [NSLayoutConstraint activateConstraints:v52];

      v53 = [(UIViewController *)self->_containerViewController view];
      [v53 addSubview:self->_segmentedControl];

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

- (int64_t)preferredSplitBehaviorForSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = [(SplitViewWindowRootViewController *)self EKUI_viewHierarchy];
  [SplitViewWindowRootViewController sidebarWidthForViewHierarchy:v6];
  v8 = v7;

  if (CalUIKitNavBarEnabled())
  {
    [MainWindowControlHeaderView spacerWidthForWindowWidth:width];
    v10 = v8 + v9 * 2.0;
    v11 = [(MainWindowControlHeaderView *)self->_headerView newEventBarButtonItem];
    v12 = [v11 image];
    [v12 size];
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

- (void)_updatePreferredSplitBehaviorForSize:(CGSize)a3
{
  v4 = [(SplitViewWindowRootViewController *)self preferredSplitBehaviorForSize:a3.width, a3.height];
  if (v4 != [(UISplitViewController *)self->_splitViewController preferredSplitBehavior])
  {
    [(UISplitViewController *)self->_splitViewController setPreferredSplitBehavior:v4];
  }

  if (v4 != 2)
  {
    v5 = [(MainWindowSearchBar *)self->_searchBar text];
    v6 = [v5 isEqual:&stru_1002133B8];

    if (v6)
    {
      [(SplitViewWindowRootViewController *)self hideInspectorColumnWithoutLosingSearchBarFocus];
    }
  }

  rootNavigationController = self->_rootNavigationController;
  v8 = [(SplitViewWindowRootViewController *)self paletteShouldShowAvatarView];

  [(RootNavigationController *)rootNavigationController setAvatarViewVisible:v8];
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = a4;
  v8 = v7;
  if (v7)
  {
    [v7 targetTransform];
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

- (int64_t)splitViewController:(id)a3 displayModeForExpandingToProposedDisplayMode:(int64_t)a4
{
  if (!self->_currentSidebarState && !self->_preferredSidebarState)
  {
    return 1;
  }

  if ([(UISplitViewController *)self->_splitViewController preferredSplitBehavior]== 2 && a4 == 2)
  {
    return 3;
  }

  else
  {
    return a4;
  }
}

- (void)splitViewController:(id)a3 willChangeToProposedDisplayMode:(int64_t *)a4
{
  if (self->_currentSidebarState)
  {
    [(SplitViewWindowRootViewController *)self updatePrimaryViewControllerToolbar:a3];
  }
}

- (void)splitViewController:(id)a3 willShowColumn:(int64_t)a4
{
  if (!a4 && ![(SplitViewWindowRootViewController *)self currentSidebarState])
  {
    v5 = [(SplitViewWindowRootViewController *)self ekui_futureTraitCollection];
    v6 = [v5 horizontalSizeClass];

    if (v6 == 2)
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

- (void)splitViewController:(id)a3 willHideColumn:(int64_t)a4
{
  v6 = a3;
  if (a4 == 4)
  {
    v14 = v6;
    [(SplitViewWindowRootViewController *)self searchEnding];
    [(SplitViewWindowRootViewController *)self teardownSearch];
    [(SplitViewWindowRootViewController *)self searchEnded];
LABEL_10:
    v6 = v14;
    goto LABEL_11;
  }

  if (!a4 && self->_currentSidebarState)
  {
    v14 = v6;
    v7 = [(SplitViewWindowRootViewController *)self view];
    v8 = [v7 window];
    v9 = [v8 windowScene];
    v10 = [v9 activationState];

    currentSidebarState = self->_currentSidebarState;
    if (v10 != 2)
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
    v13 = [(RootNavigationController *)self->_rootNavigationController paletteView];
    [v13 setShouldHideInlineFocusBanner:v12];

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

  v4 = [(RootNavigationController *)self->_rootNavigationController topMainViewControllerContainer];
  v5 = [v4 currentChildViewController];
  v6 = [v5 view];
  [v6 frame];
  v8 = v7;

  if (v8 <= 0.0)
  {
LABEL_5:
    v9 = [(RootNavigationController *)self->_rootNavigationController view];
    [v9 bounds];
    v13 = v16;
    v15 = v17;
    goto LABEL_6;
  }

  v9 = [(RootNavigationController *)self->_rootNavigationController topMainViewControllerContainer];
  v10 = [v9 currentChildViewController];
  v11 = [v10 view];
  [v11 bounds];
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
  v3 = [(MainWindowControlHeaderView *)self->_headerView newEventBarButtonItem];
  [(RootNavigationController *)rootNavigationController showAddEventAnimated:0 fromBarButtonItem:v3];
}

- (void)showAddEventWithTitle:(id)a3 startDate:(id)a4 endDate:(id)a5 location:(id)a6 suggestionsKey:(id)a7 allDay:(BOOL)a8
{
  v14 = a7;
  v15 = a6;
  v16 = a5;
  v17 = a4;
  v18 = a3;
  v19 = [(SplitViewWindowRootViewController *)self traitCollection];
  if ([v19 horizontalSizeClass] == 2)
  {
    v21 = [(MainWindowControlHeaderView *)self->_headerView newEventBarButtonItem];
  }

  else
  {
    v21 = 0;
  }

  LOBYTE(v20) = a8;
  [(RootNavigationController *)self->_rootNavigationController showAddEventAnimated:1 fromBarButtonItem:v21 withTitle:v18 startDate:0 exactStartDate:v17 endDate:v16 location:v15 suggestionKey:v14 allDay:v20 completion:0];
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
  v7 = a3;
  v8 = a4;
  if (self->_didAppear)
  {
    v9 = [v7 scheme];
    v10 = [(SplitViewWindowRootViewController *)self traitCollection];
    v11 = [v10 horizontalSizeClass];

    if (v11 == 2)
    {
      if ([v9 isEqualToString:@"calinvitelist"])
      {
        v12 = [(RootNavigationController *)self->_rootNavigationController model];
        v13 = [v12 allEventNotificationsCount];

        if (v13)
        {
          [(SplitViewWindowRootViewController *)self setCurrentSidebarState:2];
LABEL_17:

          goto LABEL_18;
        }
      }

      if (([v9 isEqualToString:@"calsubcal"] & 1) != 0 || objc_msgSend(v9, "isEqualToString:", @"webcal"))
      {
        v17[0] = _NSConcreteStackBlock;
        v17[1] = 3221225472;
        v17[2] = sub_10003CC08;
        v17[3] = &unk_10020F438;
        v18 = v7;
        v19 = self;
        [(SplitViewWindowRootViewController *)self showCalendarsViewWithCompletion:v17];

        goto LABEL_17;
      }

      if ([v9 isEqualToString:@"calshow"])
      {
        v14 = [v7 host];
        v15 = [v14 isEqualToString:@"familyCalendar"];

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
    [(RootNavigationController *)self->_rootNavigationController handleURL:v7 context:v8];
    goto LABEL_17;
  }

  objc_storeStrong(&self->_urlToLaunch, a3);
  objc_storeStrong(&self->_urlLaunchContext, a4);
LABEL_18:
}

- (BOOL)showsSearchBarForTraitCollection:(id)a3
{
  v4 = a3;
  v5 = [(SplitViewWindowRootViewController *)self view];
  EKUICurrentWindowWidthWithViewHierarchy();
  v7 = v6;

  v8 = v7 > 750.0 && (EKUIUsesLargeTextLayout() & 1) == 0 && [v4 userInterfaceIdiom] != 0;
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
    v7 = [(MainWindowSearchBar *)self->_searchBar searchField];
    [v7 setAccessibilityIdentifier:@"searchbar-button"];

    [(MainWindowSearchBar *)self->_searchBar setHeightObserver:self];
    if (CalUIKitNavBarEnabled())
    {
      v8 = [(MainWindowSearchBar *)self->_searchBar searchField];
      [v8 setClearButtonMode:3];

      [(MainWindowSearchBar *)self->_searchBar setTranslatesAutoresizingMaskIntoConstraints:0];
      v9 = [(MainWindowSearchBar *)self->_searchBar widthAnchor];
      v10 = [v9 constraintEqualToConstant:223.0];
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
  v3 = [(MainWindowSearchBar *)self->_searchBar window];
  if (v3)
  {
    v4 = v3;
    v5 = [(UISegmentedControl *)self->_segmentedControl window];

    if (v5)
    {
      if (!self->_searchBarLeadingConstraint)
      {
        v7 = [(MainWindowSearchBar *)self->_searchBar leadingAnchor];
        v8 = [(UISegmentedControl *)self->_segmentedControl trailingAnchor];
        v9 = [v7 constraintGreaterThanOrEqualToAnchor:v8];
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
      v22 = [(MainWindowSearchBar *)self->_searchBar trailingAnchor];
      v23 = [(SplitViewWindowRootViewController *)self view];
      v21 = [v23 safeAreaLayoutGuide];
      v12 = [v21 trailingAnchor];
      v13 = [v22 constraintEqualToAnchor:v12 constant:-1.5];
      v24[0] = v13;
      v14 = [(MainWindowSearchBar *)self->_searchBar heightAnchor];
      v15 = [v14 constraintEqualToConstant:44.0];
      v24[1] = v15;
      v16 = [(MainWindowSearchBar *)self->_searchBar centerYAnchor];
      v17 = [(UISegmentedControl *)self->_segmentedControl centerYAnchor];
      v18 = [v16 constraintEqualToAnchor:v17];
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
  v3 = [(UIToolbar *)self->_searchToolBarButton window];
  if (v3)
  {
    v4 = v3;
    v5 = [(UISegmentedControl *)self->_segmentedControl window];

    if (v5)
    {
      v6 = CalUIKitNavBarEnabled();
      v7 = [(UIToolbar *)self->_searchToolBarButton trailingAnchor];
      v8 = [(SplitViewWindowRootViewController *)self view];
      v9 = [v8 safeAreaLayoutGuide];
      v10 = [v9 trailingAnchor];
      if (v6)
      {
        v11 = [v7 constraintEqualToAnchor:v10 constant:-1.5];
        v31[0] = v11;
        v12 = [(UIToolbar *)self->_searchToolBarButton heightAnchor];
        v29 = [v12 constraintEqualToConstant:60.0];
        v31[1] = v29;
        v28 = [(UIToolbar *)self->_searchToolBarButton widthAnchor];
        v27 = [v28 constraintEqualToConstant:60.0];
        v31[2] = v27;
        v13 = [(UIToolbar *)self->_searchToolBarButton topAnchor];
        v14 = [(UISegmentedControl *)self->_segmentedControl topAnchor];
        v15 = [v13 constraintEqualToAnchor:v14];
        v31[3] = v15;
        v16 = [NSArray arrayWithObjects:v31 count:4];
        [NSLayoutConstraint activateConstraints:v16];
      }

      else
      {
        v26 = [v7 constraintEqualToAnchor:v10 constant:-10.0];
        v30[0] = v26;
        v25 = [(UIToolbar *)self->_searchToolBarButton heightAnchor];
        v29 = [(RootNavigationController *)self->_rootNavigationController navigationBar];
        v28 = [v29 heightAnchor];
        v27 = [v25 constraintEqualToAnchor:?];
        v30[1] = v27;
        v24 = [(UIToolbar *)self->_searchToolBarButton widthAnchor];
        v14 = [v24 constraintEqualToConstant:60.0];
        v30[2] = v14;
        v15 = [(UIToolbar *)self->_searchToolBarButton topAnchor];
        v16 = [(RootNavigationController *)self->_rootNavigationController navigationBar];
        v17 = [v16 topAnchor];
        [v15 constraintEqualToAnchor:v17];
        v18 = v10;
        v19 = v9;
        v21 = v20 = v7;
        v30[3] = v21;
        [NSArray arrayWithObjects:v30 count:4];
        v23 = v22 = v8;
        [NSLayoutConstraint activateConstraints:v23];

        v8 = v22;
        v12 = v25;

        v7 = v20;
        v9 = v19;
        v10 = v18;
        v11 = v26;

        v13 = v24;
      }
    }
  }
}

- (void)segmentedControlAddedToWindow
{
  if (CalUIKitNavBarEnabled())
  {
    v3 = [(UISegmentedControl *)self->_segmentedControl window];

    if (v3)
    {
      v4 = [(SplitViewWindowRootViewController *)self traitCollection];
      [(SplitViewWindowRootViewController *)self setupSearchControlForTraitCollection:v4];

      v5 = [(SplitViewWindowRootViewController *)self traitCollection];
      v6 = [v5 horizontalSizeClass];

      if (v6 == 2)
      {
        v7 = [(MainWindowSearchBar *)self->_searchBar window];

        if (v7)
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

- (void)setupSearchControlForTraitCollection:(id)a3
{
  v4 = a3;
  if (CalUIKitNavBarEnabled())
  {
    v5 = [(UISegmentedControl *)self->_segmentedControl window];
    if (v5)
    {
    }

    else if ([v4 horizontalSizeClass] == 2)
    {
      v6 = 0;
      v7 = 0;
      goto LABEL_24;
    }
  }

  if ([(SplitViewWindowRootViewController *)self showsSearchBarForTraitCollection:v4]|| self->_isSearching)
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
  if ([v4 horizontalSizeClass] == 2)
  {
    [v6 removeFromSuperview];
    v22 = [(MainWindowSearchBar *)v7 superview];

    if (!v22)
    {
      v23 = [(SplitViewWindowRootViewController *)self view];
      [v23 addSubview:v7];

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
  v2 = [(SplitViewWindowRootViewController *)self view];
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

- (void)setSearchStateToSearching:(BOOL)a3
{
  if (self->_isSearching != a3)
  {
    self->_isSearching = a3;
    searchBarWidthConstraint = self->_searchBarWidthConstraint;
    if (a3)
    {
      LODWORD(v3) = 1148846080;
      [(NSLayoutConstraint *)searchBarWidthConstraint setPriority:v3];
      LODWORD(v6) = 1140457472;
      [(NSLayoutConstraint *)self->_searchBarLeadingConstraint setPriority:v6];
      v9 = [(SplitViewWindowRootViewController *)self EKUI_viewHierarchy];
      [SplitViewWindowRootViewController sidebarWidthForViewHierarchy:v9];
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

- (void)searchButtonTappedCreateAndAddSearchBar:(BOOL)a3
{
  if (!self->_isEndingSearch)
  {
    v3 = a3;
    [(UIButton *)self->_searchButton removeFromSuperview];
    [(UIToolbar *)self->_searchToolBarButton removeFromSuperview];
    if (v3)
    {
      [(SplitViewWindowRootViewController *)self createSearchBarIfNeeded];
      v5 = [(SplitViewWindowRootViewController *)self view];
      [v5 addSubview:self->_searchBar];

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
          v12 = [(SplitViewWindowRootViewController *)self view];
          [v12 bounds];
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

    v15 = [(SplitViewWindowRootViewController *)self startSearch];
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
    [v15 animateAlongsideTransition:v17 completion:v16];
  }
}

- (void)updatePrimaryViewControllerNavBar
{
  v3 = [(SplitViewWindowRootViewController *)self primarySidebarViewController];
  v4 = [(SplitViewWindowRootViewController *)self traitCollection];
  v5 = [v4 horizontalSizeClass];

  if (v5 == 2)
  {
    [(MasterNavigationPaletteView *)self->_paletteView sizeToFit];
    [(MasterNavigationPaletteView *)self->_paletteView frame];
    [(_UINavigationBarPalette *)self->_palette setPreferredHeight:v6];
    palette = self->_palette;
    v8 = [v3 navigationItem];
    [v8 _setBottomPalette:palette];

    v9 = objc_opt_new();
    [v9 configureWithDefaultBackground];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10003DFA4;
      block[3] = &unk_10020EB00;
      v13 = v3;
      dispatch_async(&_dispatch_main_q, block);
    }

    v10 = [v3 navigationItem];
    [v10 setStandardAppearance:v9];

    v11 = [v3 navigationItem];
    [v11 setScrollEdgeAppearance:v9];
  }

  else
  {
    v9 = [v3 navigationItem];
    [v9 _setBottomPalette:0];
  }
}

- (void)updatePrimaryViewControllerToolbar
{
  v5 = [(SplitViewWindowRootViewController *)self primarySidebarViewController];
  if ([v5 conformsToProtocol:&OBJC_PROTOCOL___SideBarViewController] && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v3 = [v5 toolbarVisibleInSplitBehavior:{-[UISplitViewController preferredSplitBehavior](self->_splitViewController, "preferredSplitBehavior")}];
  }

  else
  {
    v4 = [v5 toolbarItems];
    v3 = v4 != 0;
  }

  [(UINavigationController *)self->_primaryVC setToolbarHidden:v3 ^ 1];
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
      v10 = [CompactListViewController alloc];
      v11 = [(RootNavigationController *)self->_rootNavigationController model];
      v12 = [(SplitViewWindowRootViewController *)self view];
      v13 = [v12 window];
      v6 = [(ListViewController *)v10 initWithModel:v11 window:v13];

      [(ListViewController *)v6 setDelegate:self];
      [(ListViewController *)v6 setOverrideExtendedEdges:0];
      [(ListViewController *)v6 setDestination:2];
      goto LABEL_8;
    case 2uLL:
      presentedInboxVC = self->_presentedInboxVC;
      if (presentedInboxVC)
      {
        v6 = [(InboxViewController *)presentedInboxVC switcherViewController];
        [(CompactListViewController *)v6 willMoveToParentViewController:0];
        v8 = [(CompactListViewController *)v6 view];
        [v8 removeFromSuperview];

        [(CompactListViewController *)v6 removeFromParentViewController];
        [(CompactListViewController *)v6 setSwitcherDelegate:self];
        [(ListViewController *)v6 setDestination:2];
        v9 = self->_presentedInboxVC;
        self->_presentedInboxVC = 0;
      }

      else
      {
        v15 = [InboxSwitcherViewController alloc];
        v16 = [(RootNavigationController *)self->_rootNavigationController model];
        v6 = [(InboxSwitcherViewController *)v15 initWithModel:v16 destination:2];

        [(CompactListViewController *)v6 setSwitcherDelegate:self];
      }

      v14 = [(CompactListViewController *)v6 segmentedControl];
      goto LABEL_12;
    case 1uLL:
      v4 = [CalendarsViewController alloc];
      v5 = [(RootNavigationController *)self->_rootNavigationController model];
      v6 = [(CalendarsViewController *)v4 initWithModel:v5 destination:2];

LABEL_8:
      v14 = 0;
      goto LABEL_12;
  }

  v14 = 0;
  v6 = 0;
LABEL_12:
  [(MasterNavigationPaletteView *)self->_paletteView setSegmentedControl:v14];
  [(SplitViewWindowRootViewController *)self updateSidebarPalette];
  v17 = [(CompactListViewController *)v6 navigationItem];
  [v17 _setAutoScrollEdgeTransitionDistance:16.0];

  v18 = [(CompactListViewController *)v6 navigationItem];
  [v18 _setManualScrollEdgeAppearanceEnabled:1];

  return v6;
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

- (void)showColumn:(int64_t)a3
{
  [(UISplitViewController *)self->_splitViewController showColumn:?];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10003E668;
  v20[3] = &unk_10020F488;
  v20[4] = self;
  v20[5] = a3;
  v5 = objc_retainBlock(v20);
  v6 = [(UISplitViewController *)self->_splitViewController transitionCoordinator];
  if (v6)
  {
    self->_animatingSidebar = [(UISplitViewController *)self->_splitViewController splitBehavior]== 1;
    self->_primaryColumnAnimationInProgress = a3 == 0;
    v7 = [(SplitViewWindowRootViewController *)self EKUI_viewHierarchy];
    v8 = [(RootNavigationController *)self->_rootNavigationController view];
    [v8 bounds];
    v10 = v9;
    [SplitViewWindowRootViewController sidebarWidthForViewHierarchy:v7];
    v12 = v10 - v11;
    v13 = [(RootNavigationController *)self->_rootNavigationController view];
    [v13 bounds];
    v15 = v14;

    v16 = [(RootNavigationController *)self->_rootNavigationController topViewController];
    v17 = [(UISplitViewController *)self->_splitViewController transitionCoordinator];
    [v16 viewWillTransitionToSize:v17 withTransitionCoordinator:{v12, v15}];

    v18 = [(UISplitViewController *)self->_splitViewController transitionCoordinator];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_10003E750;
    v19[3] = &unk_10020F488;
    v19[4] = self;
    v19[5] = a3;
    [v18 animateAlongsideTransition:v5 completion:v19];
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

- (void)hideColumn:(int64_t)a3
{
  if (a3 != 4 || !self->_isHidingInspectorColumn)
  {
    self->_isHidingInspectorColumn = a3 == 4;
    [(UISplitViewController *)self->_splitViewController hideColumn:a3];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10003EAB4;
    v16[3] = &unk_10020F488;
    v16[4] = self;
    v16[5] = a3;
    v5 = objc_retainBlock(v16);
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10003EBB8;
    v15[3] = &unk_10020F488;
    v15[4] = self;
    v15[5] = a3;
    v6 = objc_retainBlock(v15);
    v7 = [(UISplitViewController *)self->_splitViewController transitionCoordinator];
    if (v7)
    {
      self->_animatingSidebar = [(UISplitViewController *)self->_splitViewController splitBehavior]== 1;
      self->_primaryColumnAnimationInProgress = a3 == 0;
      v8 = [(RootNavigationController *)self->_rootNavigationController topViewController];
      v9 = [(RootNavigationController *)self->_rootNavigationController view];
      [v9 bounds];
      v11 = v10;
      v13 = v12;
      v14 = [(UISplitViewController *)self->_splitViewController transitionCoordinator];
      [v8 viewWillTransitionToSize:v14 withTransitionCoordinator:{v11, v13}];

      [v7 animateAlongsideTransition:v5 completion:v6];
    }

    else
    {
      (v5[2])(v5, 0);
      (v6[2])(v6, 0);
    }
  }
}

- (void)keyboardWillShow:(id)a3
{
  if ([(SplitViewWindowRootViewController *)self isPopoverCurrentlyVisible])
  {
    searchBar = self->_searchBar;

    [(MainWindowSearchBar *)searchBar resignFirstResponder];
  }
}

- (BOOL)isPopoverCurrentlyVisible
{
  v2 = [(SplitViewWindowRootViewController *)self presentedViewController];
  v3 = [v2 modalPresentationStyle] == 7;

  return v3;
}

- (void)setCurrentSidebarState:(unint64_t)a3 completion:(id)a4
{
  v6 = a4;
  if (a3)
  {
    self->_lastOpenSidebarState = a3;
  }

  if (!self->_didAppear || [(UISplitViewController *)self->_splitViewController isCollapsed])
  {
    if (self->_currentSidebarState != a3)
    {
      self->_needsSidebarSetup = 1;
      self->_pendingState = a3;
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
      v10 = [(SplitViewWindowRootViewController *)self viewControllerForSidebarState:a3];
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
          v13 = [objc_opt_class() shouldHideInlineFocusBannerForSidebarState:a3];
          v14 = [(RootNavigationController *)self->_rootNavigationController paletteView];
          [v14 setShouldHideInlineFocusBanner:v13];
        }

        else
        {
          if (self->_primaryColumnAnimationInProgress)
          {
            [(MainWindowControlHeaderView *)self->_headerView updateButtonStateForSidebar:a3];

            goto LABEL_41;
          }

          [(SplitViewWindowRootViewController *)self showColumn:0];
        }

        if (a3 == 3)
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

      self->_preferredSidebarState = a3;
      self->_currentSidebarState = a3;

      v15 = self->_currentSidebarState;
LABEL_39:
      self->_animatingSidebar = 0;
      [(MainWindowControlHeaderView *)self->_headerView updateButtonStateForSidebar:v15];
      if (v6)
      {
        (v6)[2](v6, v10);
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

  v8 = [(SplitViewWindowRootViewController *)self primarySidebarViewController];
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
  if ([(SplitViewWindowRootViewController *)self currentSidebarState]== 1)
  {
    v5 = [(SplitViewWindowRootViewController *)self primarySidebarViewController];
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
    v8[2] = sub_10003F204;
    v8[3] = &unk_10020F4B0;
    v9 = v4;
    [(SplitViewWindowRootViewController *)self setCurrentSidebarState:1 completion:v8];
  }
}

- (void)showInboxSideBarWithCompletion:(id)a3
{
  v4 = a3;
  if ([(SplitViewWindowRootViewController *)self currentSidebarState]== 2)
  {
    v5 = [(SplitViewWindowRootViewController *)self primarySidebarViewController];
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
    v8[2] = sub_10003F380;
    v8[3] = &unk_10020F4B0;
    v9 = v4;
    [(SplitViewWindowRootViewController *)self setCurrentSidebarState:2 completion:v8];
  }
}

- (void)showListSideBarWithCompletion:(id)a3
{
  v4 = a3;
  if ([(SplitViewWindowRootViewController *)self currentSidebarState]== 3)
  {
    v5 = [(SplitViewWindowRootViewController *)self primarySidebarViewController];
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
    v8[2] = sub_10003F4FC;
    v8[3] = &unk_10020F4B0;
    v9 = v4;
    [(SplitViewWindowRootViewController *)self setCurrentSidebarState:3 completion:v8];
  }
}

- (void)newEventButtonTapped:(id)a3
{
  v4 = a3;
  if (self->_isSearching)
  {
    [(SplitViewWindowRootViewController *)self cancelSearch];
  }

  [(RootNavigationController *)self->_rootNavigationController showAddEventAnimated:1 fromBarButtonItem:v4];
}

- (void)setNavigationItems:(id)a3 additionalItems:(id)a4
{
  v11 = a3;
  v6 = a4;
  v7 = [v11 count];
  if (v7)
  {
    v7 = [[UIBarButtonItemGroup alloc] initWithBarButtonItems:v11 representativeItem:0];
  }

  splitViewButtonGroup = self->_splitViewButtonGroup;
  self->_splitViewButtonGroup = v7;

  v9 = [v6 count];
  if (v9)
  {
    v9 = [[UIBarButtonItemGroup alloc] initWithBarButtonItems:v6 representativeItem:0];
  }

  additionalItemsButtonGroup = self->_additionalItemsButtonGroup;
  self->_additionalItemsButtonGroup = v9;

  [(SplitViewWindowRootViewController *)self updateNavigationBarButtons];
}

- (void)todayToolbarItemPressed
{
  if (self->_currentSidebarState == 3)
  {
    v4 = [(SplitViewWindowRootViewController *)self primarySidebarViewController];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = v4;
      v2 = CUIKTodayDate();
      [v4 scrollToDate:v2 animated:1];
    }
  }

  else
  {
    searchResultsController = self->_searchResultsController;
    v4 = CUIKTodayDate();
    [SearchResultsViewController scrollToDate:"scrollToDate:animated:" animated:?];
  }
}

- (void)showEventAndCloseSidebarIfNeeded:(id)a3 animated:(BOOL)a4 showMode:(unint64_t)a5
{
  v6 = a4;
  v8 = a3;
  if (self->_currentSidebarState && [(UISplitViewController *)self->_splitViewController preferredSplitBehavior]== 2 && ([(SplitViewWindowRootViewController *)self setCurrentSidebarState:0], [(UISplitViewController *)self->_splitViewController transitionCoordinator], (v9 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v10 = v9;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10003F8C8;
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

- (void)inboxWillDismiss
{
  v3 = [(SplitViewWindowRootViewController *)self primarySidebarViewController];
  v2 = [v3 view];
  [v2 endEditing:1];

  [v3 inboxWillDismiss];
}

- (void)attemptDisplayReviewPrompt
{
  v6 = [(SplitViewWindowRootViewController *)self view];
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

  [(SplitViewWindowRootViewController *)self presentViewController:v7 animated:1 completion:0];
}

- (void)paletteTodayButtonTapped:(id)a3
{
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 postNotificationName:@"EmptySearchBarNeedsResignFirstResponderNotification" object:self];

  [(RootNavigationController *)self->_rootNavigationController todayPressed];

  [(SplitViewWindowRootViewController *)self todayToolbarItemPressed];
}

- (void)paletteAvatarViewTapped:(id)a3
{
  v4 = [a3 avatarView];
  [(SplitViewWindowRootViewController *)self showIdentitySwitcherFromSourceView:v4];
}

- (BOOL)paletteShouldShowAvatarView
{
  v3 = [(RootNavigationController *)self->_rootNavigationController ekui_futureTraitCollection];
  if ([(SplitViewWindowRootViewController *)self canShowAvatarViewWithTraitCollection:v3])
  {
    v4 = self->_currentSidebarState == 0;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setFocusFilterMode:(unint64_t)a3
{
  v4 = [(RootNavigationController *)self->_rootNavigationController model];
  [v4 setFocusFilterMode:a3];
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
  v3 = [(RootNavigationController *)self->_rootNavigationController model];
  v4 = [(RootNavigationController *)self->_rootNavigationController model];
  v5 = [v4 sourceForSelectedIdentity];
  v6 = [v3 displayableAccountErrorsForSource:v5] > 0;

  headerView = self->_headerView;

  [(MainWindowControlHeaderView *)headerView updateErrorState:v6];
}

- (void)_identityChanged:(id)a3
{
  paletteView = self->_paletteView;
  v5 = [(RootNavigationController *)self->_rootNavigationController model];
  v6 = [v5 sourceForSelectedIdentity];
  [(MasterNavigationPaletteView *)paletteView updateIdentity:v6];

  [(SplitViewWindowRootViewController *)self updateSidebarPalette];
  [(SplitViewWindowRootViewController *)self updateNewEventButtonEnabledness];
  [(SplitViewWindowRootViewController *)self updateErrorState];

  [(SplitViewWindowRootViewController *)self updateInboxCount];
}

- (void)_delegatesChanged:(id)a3
{
  v4 = [(RootNavigationController *)self->_rootNavigationController model];
  -[MasterNavigationPaletteView setShowIdentity:](self->_paletteView, "setShowIdentity:", [v4 containsDelegateSources]);

  rootNavigationController = self->_rootNavigationController;
  v6 = [(SplitViewWindowRootViewController *)self traitCollection];
  [(RootNavigationController *)rootNavigationController setAvatarViewVisible:[(SplitViewWindowRootViewController *)self canShowAvatarViewWithTraitCollection:v6]];

  [(SplitViewWindowRootViewController *)self updateNewEventButtonEnabledness];
}

- (void)_updateAfterExtendedLaunch:(id)a3
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000400B4;
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
    v11.super_class = SplitViewWindowRootViewController;
    v8 = [(SplitViewWindowRootViewController *)&v11 canPerformAction:a3 withSender:v7];
  }

  v9 = v8;

  return v9;
}

- (void)routeNewEventKeyCommand
{
  v3 = [(SplitViewWindowRootViewController *)self traitCollection];
  if ([v3 horizontalSizeClass] != 2)
  {
    goto LABEL_4;
  }

  v4 = [(SplitViewWindowRootViewController *)self presentedViewController];
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

    [(SplitViewWindowRootViewController *)self showAddEvent];
  }
}

- (void)routeSearchKeyCommand
{
  v3 = [(SplitViewWindowRootViewController *)self traitCollection];
  if ([v3 horizontalSizeClass] != 2)
  {
    goto LABEL_4;
  }

  v4 = [(SplitViewWindowRootViewController *)self presentedViewController];
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

  [(SplitViewWindowRootViewController *)self searchTapped];
  searchBar = self->_searchBar;

  [(MainWindowSearchBar *)searchBar becomeFirstResponder];
}

- (void)toggleSidebar:(id)a3
{
  if ([(SplitViewWindowRootViewController *)self currentSidebarState])
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

  [(SplitViewWindowRootViewController *)v4 setCurrentSidebarState:lastOpenSidebarState];
}

- (BOOL)_shouldUseSideBar
{
  v2 = [(SplitViewWindowRootViewController *)self traitCollection];
  v3 = [v2 horizontalSizeClass] == 2;

  return v3;
}

- (void)showCalendarsViewWithCompletion:(id)a3
{
  v4 = a3;
  if ([(SplitViewWindowRootViewController *)self _shouldUseSideBar])
  {
    [(SplitViewWindowRootViewController *)self showCalendarsSideBarWithCompletion:v4];
  }

  else
  {
    [(RootNavigationController *)self->_rootNavigationController showCalendarsAnimated:1 completion:v4];
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
  v3 = [(RootNavigationController *)self->_rootNavigationController resetToMonthView];

  if (v3)
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
  v7[2] = sub_100040A48;
  v7[3] = &unk_10020F528;
  v8 = a3;
  v9 = a4;
  v6 = v8;
  [(SplitViewWindowRootViewController *)self showCalendarsViewWithCompletion:v7];
}

- (void)pressesBegan:(id)a3 withEvent:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [(SplitViewWindowRootViewController *)self isFirstResponder];
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
          v22 = [(SplitViewWindowRootViewController *)v48 presentedViewController];

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
                v27 = [(SplitViewWindowRootViewController *)v48 targetForAction:"handleSelectPreviousEventCommand" withSender:0];
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
                v33 = [(SplitViewWindowRootViewController *)v48 targetForAction:"handleSelectNextEventCommand" withSender:0];
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
                v39 = [(SplitViewWindowRootViewController *)v48 targetForAction:"handleSelectPreviousEventCommand" withSender:0];
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

              v43 = [(SplitViewWindowRootViewController *)v48 targetForAction:"handleSelectNextEventCommand" withSender:0];
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
  v50.super_class = SplitViewWindowRootViewController;
  [(SplitViewWindowRootViewController *)&v50 pressesBegan:v12 withEvent:v8];
LABEL_50:
}

- (void)dismissPresentedViewControllerAnimated:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [(SplitViewWindowRootViewController *)self presentedViewController];

  if (v7)
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100040FC0;
    v8[3] = &unk_10020F550;
    v8[4] = self;
    v10 = v4;
    v9 = v6;
    [(SplitViewWindowRootViewController *)self dismissViewControllerAnimated:v4 completion:v8];
  }

  else
  {
    [(RootNavigationController *)self->_rootNavigationController dismissPresentedViewControllerAnimated:v4 completion:v6];
  }
}

- (id)primarySidebarViewController
{
  v2 = [(UINavigationController *)self->_primaryVC viewControllers];
  v3 = [v2 firstObject];

  return v3;
}

- (void)setupSearch:(BOOL)a3
{
  if (!self->_searchResultsNavController)
  {
    v4 = [SearchResultsViewController alloc];
    v5 = [(RootNavigationController *)self->_rootNavigationController model];
    v6 = [(RootNavigationController *)self->_rootNavigationController window];
    v7 = [(SearchResultsViewController *)v4 initWithModel:v5 window:v6];
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
    v18 = [(UINavigationController *)self->_searchResultsNavController toolbar];
    [v18 setTintColor:v17];

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

  v6 = [(SearchResultsViewController *)self->_searchResultsController navigationItem];
  [v6 _setMinimumDesiredHeight:0 forBarMetrics:v3];

  v7 = [(SearchResultsViewController *)self->_searchResultsController navigationItem];
  [v7 _setMinimumDesiredHeight:1 forBarMetrics:v3];
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
  v3 = [(MainWindowSearchBar *)self->_searchBar superview];
  [(SplitViewWindowRootViewController *)self searchButtonTappedCreateAndAddSearchBar:v3 == 0];
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
  v3 = [(SplitViewWindowRootViewController *)self traitCollection];
  v4 = [(SplitViewWindowRootViewController *)self showsSearchBarForTraitCollection:v3];

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
        v11 = [(SplitViewWindowRootViewController *)self view];
        [v11 bounds];
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
  v3 = [(SplitViewWindowRootViewController *)self traitCollection];
  v4 = [(SplitViewWindowRootViewController *)self showsSearchBarForTraitCollection:v3];

  if ((v4 & 1) == 0)
  {
    [(NSLayoutConstraint *)self->_searchBarWidthConstraint setConstant:223.0];
    [(MainWindowSearchBar *)self->_searchBar setAlpha:1.0];
    v5 = [(SplitViewWindowRootViewController *)self traitCollection];
    [(SplitViewWindowRootViewController *)self setupSearchControlForTraitCollection:v5];
  }
}

- (void)searchBar:(id)a3 textDidChange:(id)a4
{
  v11 = a3;
  v6 = a4;
  if ([v6 length])
  {
    [(SplitViewWindowRootViewController *)self setupSearch:1];
    [(SearchResultsViewController *)self->_searchResultsController searchBar:v11 textDidChange:v6];
  }

  else
  {
    v7 = [(SplitViewWindowRootViewController *)self view];
    [v7 bounds];
    v10 = [(SplitViewWindowRootViewController *)self preferredSplitBehaviorForSize:v8, v9];

    if (v10 != 2)
    {
      [(SplitViewWindowRootViewController *)self hideInspectorColumnWithoutLosingSearchBarFocus];
    }
  }
}

- (void)endSearch:(BOOL)a3
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

- (void)continueSearchWithTerm:(id)a3
{
  v6 = a3;
  v4 = [(SplitViewWindowRootViewController *)self ekui_futureTraitCollection];
  v5 = [v4 horizontalSizeClass];

  if (v5 == 1)
  {
    [(RootNavigationController *)self->_rootNavigationController continueSearchWithTerm:v6 animated:1 removeViewControllersIncapableOfSearchIfNeeded:1];
  }

  else
  {
    [(SplitViewWindowRootViewController *)self searchTapped];
    [(MainWindowSearchBar *)self->_searchBar setText:v6];
    [(SplitViewWindowRootViewController *)self searchBar:self->_searchBar textDidChange:v6];
  }
}

- (void)searchResultsViewController:(id)a3 didSelectEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(UISplitViewController *)self->_splitViewController preferredSplitBehavior]== 2)
  {
    [(SplitViewWindowRootViewController *)self cancelSearch];
    v8 = [(UISplitViewController *)self->_splitViewController transitionCoordinator];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100041C48;
    v9[3] = &unk_10020F268;
    v9[4] = self;
    v10 = v6;
    v11 = v7;
    [v8 animateAlongsideTransition:v9 completion:0];
  }

  else
  {
    [(RootNavigationController *)self->_rootNavigationController searchResultsViewController:v6 didSelectEvent:v7];
  }
}

@end