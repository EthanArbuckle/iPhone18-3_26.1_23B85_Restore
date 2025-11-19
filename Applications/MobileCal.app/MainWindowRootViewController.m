@interface MainWindowRootViewController
+ (double)sidebarWidthForViewHierarchy:(id)a3;
+ (id)sanitizeCalSubCal:(id)a3;
- (BOOL)_shouldUseSideBar;
- (BOOL)_viewControllerExistsInPresentationChainThatShouldNotRotate;
- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4;
- (BOOL)canShowAvatarViewWithTraitCollection:(id)a3;
- (BOOL)paletteShouldShowAvatarView;
- (BOOL)showsSearchBarForTraitCollection:(id)a3;
- (CGSize)mainContentSize;
- (MainWindowRootViewController)initWithRootNavigationController:(id)a3;
- (double)searchFieldWidth;
- (id)traitCollectionToUseWhileLoadingViewsDuringTransitioningToTraitCollection:(id)a3;
- (id)viewControllerForSidebarState:(unint64_t)a3;
- (unint64_t)focusFilterMode;
- (unint64_t)supportedInterfaceOrientations;
- (void)_delegatesChanged:(id)a3;
- (void)_identityChanged:(id)a3;
- (void)_updateAfterExtendedLaunch:(id)a3;
- (void)attemptDisplayReviewPrompt;
- (void)calendarButtonTapped;
- (void)continueSearchWithTerm:(id)a3;
- (void)createSearchBarIfNeeded;
- (void)dealloc;
- (void)dismissPresentedViewControllerAnimated:(BOOL)a3 completion:(id)a4;
- (void)handleURL:(id)a3 context:(id)a4;
- (void)inboxButtonTapped;
- (void)inboxWillDismiss;
- (void)layoutSearchControl;
- (void)newEventButtonTapped:(id)a3;
- (void)paletteAvatarViewTapped:(id)a3;
- (void)paletteTodayButtonTapped:(id)a3;
- (void)pressesBegan:(id)a3 withEvent:(id)a4;
- (void)routeNewEventKeyCommand;
- (void)routeSearchKeyCommand;
- (void)searchBegan;
- (void)searchButtonTappedCreateAndAddSearchBar:(BOOL)a3;
- (void)searchEnded;
- (void)searchEnding;
- (void)searchTapped;
- (void)setCurrentSidebarState:(unint64_t)a3 completion:(id)a4;
- (void)setFocusFilterMode:(unint64_t)a3;
- (void)setupSearchControlForTraitCollection:(id)a3;
- (void)showAddEvent;
- (void)showAddEventWithTitle:(id)a3 startDate:(id)a4 endDate:(id)a5 location:(id)a6 suggestionsKey:(id)a7 allDay:(BOOL)a8;
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
- (void)showSearchView;
- (void)showSplitMonthView;
- (void)splitViewController:(id)a3 willExpandToProposedDisplayMode:(int64_t *)a4;
- (void)splitViewController:(id)a3 willHideColumn:(int64_t)a4;
- (void)todayToolbarItemPressed;
- (void)toggleSidebar:(id)a3;
- (void)updateErrorState;
- (void)updateInboxCount;
- (void)updateNewEventButtonEnabledness;
- (void)updatePrimaryViewControllerNavBar;
- (void)updatePrimaryViewControllerToolbar;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
- (void)willEnterForeground;
- (void)willTransitionToTraitCollection:(id)a3 withTransitionCoordinator:(id)a4;
@end

@implementation MainWindowRootViewController

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

- (MainWindowRootViewController)initWithRootNavigationController:(id)a3
{
  v5 = a3;
  v22.receiver = self;
  v22.super_class = MainWindowRootViewController;
  v6 = [(MainWindowRootViewController *)&v22 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_rootNavigationController, a3);
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
  }

  return v7;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = MainWindowRootViewController;
  [(MainWindowRootViewController *)&v4 dealloc];
}

- (void)viewDidLoad
{
  v65.receiver = self;
  v65.super_class = MainWindowRootViewController;
  [(MainWindowRootViewController *)&v65 viewDidLoad];
  v3 = [(MainWindowRootViewController *)self view];
  [v3 setAutoresizingMask:18];

  v4 = +[UIColor systemBackgroundColor];
  v5 = [(MainWindowRootViewController *)self view];
  [v5 setBackgroundColor:v4];

  v6 = [[UISplitViewController alloc] initWithStyle:1];
  splitViewController = self->_splitViewController;
  self->_splitViewController = v6;

  v8 = objc_alloc_init(UINavigationController);
  primaryVC = self->_primaryVC;
  self->_primaryVC = v8;

  v10 = +[UIColor systemBackgroundColor];
  v11 = [(UINavigationController *)self->_primaryVC view];
  [v11 setBackgroundColor:v10];

  v12 = +[UIColor secondarySystemBackgroundColor];
  v13 = [(UINavigationController *)self->_primaryVC navigationBar];
  [v13 setBarTintColor:v12];

  v14 = [(UINavigationController *)self->_primaryVC navigationBar];
  [v14 setForceFullHeightInLandscape:1];

  v15 = [[MainWindowContentContainerViewController alloc] initWithRootNavigationController:self->_rootNavigationController];
  secondaryContainerVC = self->_secondaryContainerVC;
  self->_secondaryContainerVC = v15;

  [(MainWindowContentContainerViewController *)self->_secondaryContainerVC setDelegate:self];
  v17 = [[MainWindowWrapperNavigationController alloc] initWithRootViewController:self->_secondaryContainerVC];
  [(MainWindowWrapperNavigationController *)v17 setNavigationBarHidden:1 animated:0];
  [(UISplitViewController *)self->_splitViewController setDelegate:self];
  [(UISplitViewController *)self->_splitViewController setPreferredDisplayMode:1];
  [(UISplitViewController *)self->_splitViewController setPresentsWithGesture:0];
  v18 = [(MainWindowRootViewController *)self EKUI_viewHierarchy];
  [MainWindowRootViewController sidebarWidthForViewHierarchy:v18];
  [(UISplitViewController *)self->_splitViewController setMinimumPrimaryColumnWidth:?];
  v63 = v18;
  [MainWindowRootViewController sidebarWidthForViewHierarchy:v18];
  [(UISplitViewController *)self->_splitViewController setMaximumPrimaryColumnWidth:?];
  [(UISplitViewController *)self->_splitViewController setViewController:self->_primaryVC forColumn:0];
  v64 = v17;
  [(UISplitViewController *)self->_splitViewController setViewController:v17 forColumn:2];
  [(MainWindowRootViewController *)self addChildViewController:self->_splitViewController];
  v19 = [(MainWindowRootViewController *)self view];
  v20 = [(UISplitViewController *)self->_splitViewController view];
  [v19 addSubview:v20];

  [(UISplitViewController *)self->_splitViewController didMoveToParentViewController:self];
  v21 = [MainWindowControlHeaderView alloc];
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v25 = [(MainWindowControlHeaderView *)v21 initWithFrame:CGRectZero.origin.x, y, width, height];
  headerView = self->_headerView;
  self->_headerView = v25;

  [(MainWindowControlHeaderView *)self->_headerView setDelegate:self];
  [(MainWindowRootViewController *)self updateInboxCount];
  v27 = [[MasterNavigationPaletteView alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
  paletteView = self->_paletteView;
  self->_paletteView = v27;

  [(MasterNavigationPaletteView *)self->_paletteView setTranslatesAutoresizingMaskIntoConstraints:0];
  v29 = [(RootNavigationController *)self->_rootNavigationController model];
  [(MasterNavigationPaletteView *)self->_paletteView setModel:v29];

  [(MasterNavigationPaletteView *)self->_paletteView setDelegate:self];
  v30 = [(RootNavigationController *)self->_rootNavigationController model];
  -[MasterNavigationPaletteView setShowIdentity:](self->_paletteView, "setShowIdentity:", [v30 containsDelegateSources]);

  v31 = self->_paletteView;
  v32 = [(MainWindowRootViewController *)self view];
  [v32 bounds];
  [(MasterNavigationPaletteView *)v31 sizeThatFits:v33, v34];
  v36 = v35;
  v38 = v37;

  v39 = [[UIView alloc] initWithFrame:{0.0, 0.0, v36, v38}];
  [v39 addSubview:self->_paletteView];
  v62 = [(MasterNavigationPaletteView *)self->_paletteView leadingAnchor];
  v61 = [v39 leadingAnchor];
  v60 = [v62 constraintEqualToAnchor:v61];
  v66[0] = v60;
  v59 = [(MasterNavigationPaletteView *)self->_paletteView trailingAnchor];
  v58 = [v39 trailingAnchor];
  v40 = [v59 constraintEqualToAnchor:v58];
  v66[1] = v40;
  v41 = [(MasterNavigationPaletteView *)self->_paletteView topAnchor];
  v42 = [v39 topAnchor];
  v43 = [v41 constraintEqualToAnchor:v42];
  v66[2] = v43;
  v44 = [(MasterNavigationPaletteView *)self->_paletteView bottomAnchor];
  v45 = [v39 bottomAnchor];
  v46 = [v44 constraintEqualToAnchor:v45];
  v66[3] = v46;
  v47 = [NSArray arrayWithObjects:v66 count:4];
  [NSLayoutConstraint activateConstraints:v47];

  v48 = [[_UINavigationBarPalette alloc] initWithContentView:v39];
  palette = self->_palette;
  self->_palette = v48;

  [(_UINavigationBarPalette *)self->_palette setPreferredHeight:v38];
  v50 = [(RootNavigationController *)self->_rootNavigationController paletteView];
  [v50 setDelegate:self];

  v51 = [(MainWindowRootViewController *)self traitCollection];
  v52 = [v51 horizontalSizeClass];

  if (v52 == 2)
  {
    v53 = [(MainWindowRootViewController *)self view];
    [v53 addSubview:self->_headerView];

    rootNavigationController = self->_rootNavigationController;
    v55 = [(MainWindowRootViewController *)self traitCollection];
    [(RootNavigationController *)rootNavigationController setAvatarViewVisible:[(MainWindowRootViewController *)self canShowAvatarViewWithTraitCollection:v55]];
  }

  else
  {
    [(UINavigationController *)self->_primaryVC setNavigationBarHidden:1 animated:0];
    [(RootNavigationController *)self->_rootNavigationController setAvatarViewVisible:0];
  }

  v56 = [objc_opt_class() shouldHideInlineFocusBannerForSidebarState:self->_currentSidebarState];
  v57 = [(RootNavigationController *)self->_rootNavigationController paletteView];
  [v57 setShouldHideInlineFocusBanner:v56];
}

- (void)willEnterForeground
{
  v3 = [(MainWindowRootViewController *)self traitCollection];
  [(MainWindowRootViewController *)self setupSearchControlForTraitCollection:v3];

  secondaryContainerVC = self->_secondaryContainerVC;

  [(MainWindowContentContainerViewController *)secondaryContainerVC layoutSegmentedControl];
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  self->_didAppear = 1;
  if (self->_needsSidebarSetup)
  {
    if (([(UISplitViewController *)self->_splitViewController _isCollapsed]& 1) == 0)
    {
      [(MainWindowRootViewController *)self setCurrentSidebarState:self->_pendingState];
    }

    self->_needsSidebarSetup = 0;
  }

  v5 = [(MainWindowRootViewController *)self traitCollection];
  [(MainWindowRootViewController *)self setupSearchControlForTraitCollection:v5];

  [(MainWindowRootViewController *)self layoutSearchControl];
  headerView = self->_headerView;
  v7 = [(MainWindowRootViewController *)self view];
  [v7 bounds];
  [(MainWindowControlHeaderView *)headerView layoutForWidth:v8];

  [(MainWindowRootViewController *)self updateNewEventButtonEnabledness];
  v9.receiver = self;
  v9.super_class = MainWindowRootViewController;
  [(MainWindowRootViewController *)&v9 viewDidAppear:v3];
}

- (BOOL)_viewControllerExistsInPresentationChainThatShouldNotRotate
{
  v3 = +[NSMutableSet set];
  v4 = objc_opt_class();
  if (v4)
  {
    [v3 addObject:v4];
  }

  v5 = [(MainWindowRootViewController *)self presentedViewController];
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
  v3 = [(MainWindowRootViewController *)self presentedViewController];
  v4 = EKUIUseLargeFormatPhoneUI();
  objc_opt_class();
  if (((objc_opt_isKindOfClass() & 1) != 0 || v4 && self->_isSearching || -[MainWindowRootViewController _viewControllerExistsInPresentationChainThatShouldNotRotate](self, "_viewControllerExistsInPresentationChainThatShouldNotRotate")) && (-[MainWindowRootViewController view](self, "view"), v5 = objc_claimAutoreleasedReturnValue(), [v5 window], v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "windowScene"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "interfaceOrientation"), v7, v6, v5, v8))
  {
    v9 = 1 << v8;
  }

  else
  {
    v11.receiver = self;
    v11.super_class = MainWindowRootViewController;
    v9 = [(MainWindowRootViewController *)&v11 supportedInterfaceOrientations];
  }

  return v9;
}

- (void)viewWillLayoutSubviews
{
  [(MainWindowContentContainerViewController *)self->_secondaryContainerVC layoutSegmentedControl];
  v3 = [(MainWindowControlHeaderView *)self->_headerView superview];

  if (v3)
  {
    v23 = [(RootNavigationController *)self->_rootNavigationController viewSwitcher];
    v4 = [(MainWindowRootViewController *)self view];
    [v23 bounds];
    [v4 convertRect:v23 fromView:?];
    MidY = CGRectGetMidY(v25);

    v6 = [(MainWindowRootViewController *)self view];
    [v6 bounds];
    v8 = v7;
    +[MainWindowRootViewController minimumStandardWindowWidth];
    v10 = dbl_1001F81B0[v8 < v9];

    LODWORD(v6) = CalInterfaceIsLeftToRight();
    v11 = [(MainWindowRootViewController *)self view];
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
      v11 = [(MainWindowRootViewController *)self view];
      [v11 bounds];
      v21 = v22 - v17;
    }

    [(MainWindowControlHeaderView *)self->_headerView setFrame:v21, MidY + v19 * -0.5, v17, v19];
    if ((IsLeftToRight & 1) == 0)
    {
    }

    if (!self->_isEndingSearch)
    {
      [(MainWindowRootViewController *)self layoutSearchControl];
    }
  }
}

- (id)traitCollectionToUseWhileLoadingViewsDuringTransitioningToTraitCollection:(id)a3
{
  v3 = a3;
  if ([v3 horizontalSizeClass] == 1 && objc_msgSend(v3, "verticalSizeClass") == 1)
  {
    v4 = [v3 traitCollectionByModifyingTraits:&stru_100211878];
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
  if (([(MainWindowRootViewController *)self isViewLoaded]& 1) == 0)
  {
    v8 = [(MainWindowRootViewController *)self traitCollectionToUseWhileLoadingViewsDuringTransitioningToTraitCollection:v6];
    if (v8)
    {
      [(MainWindowRootViewController *)self setEkui_futureTraitCollection:v8];
      v9 = [(MainWindowRootViewController *)self view];
      [v9 setNeedsLayout];

      [(MainWindowRootViewController *)self setEkui_futureTraitCollection:0];
    }

    else
    {
      v10 = [(MainWindowRootViewController *)self view];
      [v10 setNeedsLayout];
    }
  }

  v40 = v7;
  v11 = [v6 horizontalSizeClass];
  v12 = [(MainWindowRootViewController *)self traitCollection];
  v13 = [v12 horizontalSizeClass];

  v14 = [v6 horizontalSizeClass];
  v38 = v14 == 2;
  v15 = [(MainWindowRootViewController *)self view];
  v16 = [v15 window];
  v17 = [v16 windowScene];
  v18 = [v17 activationState];
  v39 = v18 == 2;

  v54 = 0;
  v55 = &v54;
  v56 = 0x2020000000;
  v57 = 0;
  [(UINavigationController *)self->_primaryVC setNavigationBarHidden:v14 != 2 animated:0];
  [(MainWindowRootViewController *)self setupSearchControlForTraitCollection:v6];
  if (v18 == 2)
  {
    v19 = 0;
  }

  else
  {
    v19 = [(MainWindowRootViewController *)self firstResponder];
  }

  if (v11 != v13 && v14 == 2)
  {
    v20 = [(RootNavigationController *)self->_rootNavigationController presentedViewController];
    if (!v20)
    {
      v20 = [(MainWindowRootViewController *)self presentedViewController];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = [v20 preservedState];
      calendarsPreservedState = self->_calendarsPreservedState;
      self->_calendarsPreservedState = v21;

      v23 = [v20 presentingViewController];
      [v23 dismissViewControllerAnimated:0 completion:0];

      v24 = 0;
      v55[3] = 1;
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(RootNavigationController *)self->_rootNavigationController dismissViewControllerAnimated:0 completion:0];
        v55[3] = 2;
        objc_storeStrong(&self->_presentedInboxVC, v20);
        v24 = [(InboxViewController *)self->_presentedInboxVC displayedDetailViewControllers];
      }

      else
      {
        v24 = 0;
      }
    }

    v27 = [(MainWindowRootViewController *)self view];
    [v27 addSubview:self->_headerView];

    goto LABEL_28;
  }

  if (v11 == v13)
  {
    v24 = 0;
    goto LABEL_29;
  }

  v20 = [(MainWindowRootViewController *)self presentedViewController];
  if ([(MainWindowRootViewController *)self currentSidebarState]== 1)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v25 = [v20 viewControllers];
      v26 = [v25 firstObject];
      NSClassFromString(@"EKCalendarEditor");
      if (objc_opt_isKindOfClass())
      {

LABEL_26:
        v31 = [(UINavigationController *)self->_primaryVC topViewController];
        v32 = [v31 preservedState];
        v33 = self->_calendarsPreservedState;
        self->_calendarsPreservedState = v32;

        [(MainWindowRootViewController *)self dismissViewControllerAnimated:0 completion:0];
        goto LABEL_27;
      }

      v28 = [v20 viewControllers];
      v29 = [v28 firstObject];
      NSClassFromString(@"EKSubscribedCalendarEditor");
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        goto LABEL_26;
      }
    }
  }

LABEL_27:
  [(MainWindowControlHeaderView *)self->_headerView removeFromSuperview];
  v24 = 0;
LABEL_28:

LABEL_29:
  v34 = [(UISplitViewController *)self->_splitViewController overrideTraitCollectionForChildViewController:self->_primaryVC];
  [(UISplitViewController *)self->_splitViewController setOverrideTraitCollection:0 forChildViewController:self->_primaryVC];
  v53.receiver = self;
  v53.super_class = MainWindowRootViewController;
  [(MainWindowRootViewController *)&v53 willTransitionToTraitCollection:v6 withTransitionCoordinator:v40];
  if (v40)
  {
    [v40 targetTransform];
  }

  else
  {
    memset(&v52, 0, sizeof(v52));
  }

  v48[0] = _NSConcreteStackBlock;
  v48[1] = 3221225472;
  v48[2] = sub_10010714C;
  v48[3] = &unk_10020F398;
  v49 = v38;
  v50 = !CGAffineTransformIsIdentity(&v52);
  v51 = v39;
  v48[4] = self;
  v48[5] = &v54;
  v41[0] = _NSConcreteStackBlock;
  v41[1] = 3221225472;
  v41[2] = sub_100107314;
  v41[3] = &unk_1002118A0;
  v35 = v19;
  v42 = v35;
  v43 = self;
  v36 = v34;
  v44 = v36;
  v46 = &v54;
  v47 = v39;
  v37 = v24;
  v45 = v37;
  [v40 animateAlongsideTransition:v48 completion:v41];

  _Block_object_dispose(&v54, 8);
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
    IsIdentity = CGAffineTransformIsIdentity(&v47);
    [v8 targetTransform];
    v10 = *(&v44 + 1);
    [v8 targetTransform];
    v11 = *&v41;
  }

  else
  {
    memset(&v47, 0, sizeof(v47));
    IsIdentity = CGAffineTransformIsIdentity(&v47);
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v41 = 0u;
    v42 = 0u;
    v11 = 0.0;
    v10 = 0.0;
  }

  v12 = atan2(v10, v11) * 57.2957795;
  if (!self->_currentSidebarState)
  {
    v37 = 1;
    goto LABEL_34;
  }

  v13 = [(UISplitViewController *)self->_splitViewController splitBehavior];
  v14 = [(MainWindowRootViewController *)self view];
  v15 = [v14 window];
  v16 = [v15 windowScene];
  v17 = [v16 activationState];

  v18 = [(MainWindowRootViewController *)self ekui_futureTraitCollection];
  v19 = [v18 horizontalSizeClass];
  v20 = [(MainWindowRootViewController *)self traitCollection];
  v21 = [v20 horizontalSizeClass];

  if (v19 != v21 || v17 == 2)
  {
    if (v19 == v21)
    {
      goto LABEL_8;
    }

LABEL_33:
    v37 = 0;
    goto LABEL_34;
  }

  v22 = [(MainWindowRootViewController *)self presentedViewController];

  if (!v22)
  {
    goto LABEL_33;
  }

LABEL_8:
  v23 = +[UIScreen mainScreen];
  [v23 bounds];
  v25 = v24;
  v27 = v26;

  v28 = [(MainWindowRootViewController *)self EKUI_viewHierarchy];
  v29 = [v28 ekui_interfaceOrientation] - 3 < 2 && v17 == 2;
  if (v29)
  {
    v30 = 1;
  }

  else
  {
    v30 = v13;
  }

  v31 = fabs(v12);
  if (width >= height)
  {
    v32 = height;
  }

  else
  {
    v32 = width;
  }

  if (v25 >= v27)
  {
    v33 = v27;
  }

  else
  {
    v33 = v25;
  }

  v34 = v32 == v33 && v30 == 2;
  v35 = 2;
  if (!v34)
  {
    v35 = 3;
  }

  v29 = v30 == 2;
  v36 = 2;
  if (v29)
  {
    v36 = 3;
  }

  if (v31 == 180.0)
  {
    v37 = v36;
  }

  else
  {
    v37 = v35;
  }

LABEL_34:
  [(UISplitViewController *)self->_splitViewController setPreferredDisplayMode:v37];
  v39[0] = _NSConcreteStackBlock;
  v39[1] = 3221225472;
  v39[2] = sub_1001078E4;
  v39[3] = &unk_10020F410;
  v40 = !IsIdentity;
  *&v39[5] = v12;
  v39[4] = self;
  [v8 animateAlongsideTransition:v39 completion:0];
  v38.receiver = self;
  v38.super_class = MainWindowRootViewController;
  [(MainWindowRootViewController *)&v38 viewWillTransitionToSize:v8 withTransitionCoordinator:width, height];
}

- (void)splitViewController:(id)a3 willExpandToProposedDisplayMode:(int64_t *)a4
{
  if (self->_currentSidebarState)
  {
    v6 = [(UISplitViewController *)self->_splitViewController splitBehavior];
    v7 = 2;
    if (v6 == UISplitViewControllerSplitBehaviorOverlay)
    {
      v7 = 3;
    }

    *a4 = v7;

    [(MainWindowRootViewController *)self updatePrimaryViewControllerToolbar];
  }
}

- (void)splitViewController:(id)a3 willHideColumn:(int64_t)a4
{
  v6 = a3;
  if (!a4 && self->_currentSidebarState && ![(UISplitViewController *)self->_splitViewController isCollapsed])
  {
    v7 = [(MainWindowRootViewController *)self view];
    v8 = [v7 window];
    v9 = [v8 windowScene];
    v10 = [v9 activationState];

    currentSidebarState = self->_currentSidebarState;
    if (v10 != 2)
    {
      if (currentSidebarState == 2)
      {
        [(MainWindowRootViewController *)self inboxWillDismiss];
      }

      currentSidebarState = 0;
      self->_currentSidebarState = 0;
    }

    [(MainWindowControlHeaderView *)self->_headerView updateButtonStateForSidebar:currentSidebarState];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100107BA8;
    v15[3] = &unk_10020EB00;
    v15[4] = self;
    v12 = objc_retainBlock(v15);
    v13 = [(UISplitViewController *)self->_splitViewController transitionCoordinator];

    if (v13)
    {
      v14 = [(UISplitViewController *)self->_splitViewController transitionCoordinator];
      [v14 animateAlongsideTransition:v12 completion:0];
    }

    else
    {
      (v12[2])(v12);
    }
  }
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

- (void)continueSearchWithTerm:(id)a3
{
  v6 = a3;
  v4 = [(MainWindowRootViewController *)self ekui_futureTraitCollection];
  v5 = [v4 horizontalSizeClass];

  if (v5 == 1)
  {
    [(RootNavigationController *)self->_rootNavigationController continueSearchWithTerm:v6 animated:1 removeViewControllersIncapableOfSearchIfNeeded:1];
  }

  else
  {
    [(MainWindowContentContainerViewController *)self->_secondaryContainerVC continueSearchWithTerm:v6];
  }
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
  v19 = [(MainWindowRootViewController *)self traitCollection];
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
  v6 = a3;
  v7 = a4;
  v8 = [v6 scheme];
  v9 = [(MainWindowRootViewController *)self traitCollection];
  v10 = [v9 horizontalSizeClass];

  if (v10 == 2)
  {
    if ([v8 isEqualToString:@"calinvitelist"])
    {
      v11 = [(RootNavigationController *)self->_rootNavigationController model];
      v12 = [v11 allEventNotificationsCount];

      if (v12)
      {
        [(MainWindowRootViewController *)self setCurrentSidebarState:2];
        goto LABEL_23;
      }
    }
  }

  v13 = [(MainWindowRootViewController *)self traitCollection];
  if ([v13 horizontalSizeClass] == 2)
  {
    if ([v8 isEqualToString:@"calsubcal"])
    {

LABEL_18:
      if (self->_currentSidebarState != 1)
      {
        [(MainWindowRootViewController *)self setCurrentSidebarState:1];
      }

      v17 = [(UINavigationController *)self->_primaryVC topViewController];
      v18 = [MainWindowRootViewController sanitizeCalSubCal:v6];
      if (v18)
      {
        [(MainWindowContentContainerViewController *)self->_secondaryContainerVC cancelSearch];
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
    v19[2] = sub_10010825C;
    v19[3] = &unk_10020F370;
    v19[4] = self;
    [(MainWindowRootViewController *)self showCalendarsViewWithCompletion:v19];
  }

  else
  {
    if (self->_currentSidebarState && [(UISplitViewController *)self->_splitViewController splitBehavior]== 2)
    {
      [(MainWindowRootViewController *)self setCurrentSidebarState:0];
    }

    [(MainWindowContentContainerViewController *)self->_secondaryContainerVC cancelSearch];
    [(RootNavigationController *)self->_rootNavigationController handleURL:v6 context:v7];
  }

LABEL_23:
}

- (BOOL)showsSearchBarForTraitCollection:(id)a3
{
  v4 = a3;
  v5 = [(MainWindowRootViewController *)self view];
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
    self->_searchBar = &v3->super;

    v5 = [NSBundle bundleForClass:objc_opt_class()];
    v6 = [v5 localizedStringForKey:@"Placeholder used in the search bar in the calendar occurrences list" value:@"Search" table:0];
    [(UISearchBar *)self->_searchBar setPlaceholder:v6];

    [(UISearchBar *)self->_searchBar setDrawsBackground:0];
    [(UISearchBar *)self->_searchBar setDelegate:self->_secondaryContainerVC];
    [(UISearchBar *)self->_searchBar _setAutoDisableCancelButton:0];
    v7 = [(UISearchBar *)self->_searchBar searchField];
    [v7 setAccessibilityIdentifier:@"searchbar-button"];

    v8 = self->_searchBar;
    secondaryContainerVC = self->_secondaryContainerVC;

    [(MainWindowContentContainerViewController *)secondaryContainerVC setSearchBar:v8];
  }
}

- (void)setupSearchControlForTraitCollection:(id)a3
{
  v16 = a3;
  if ([(MainWindowRootViewController *)self showsSearchBarForTraitCollection:?]|| self->_isSearching)
  {
    [(MainWindowRootViewController *)self createSearchBarIfNeeded];
    v4 = self->_searchBar;
    v5 = 72;
  }

  else
  {
    searchButton = self->_searchButton;
    if (!searchButton)
    {
      v7 = [UIImageSymbolConfiguration configurationWithScale:3];
      v8 = [UIImage systemImageNamed:@"magnifyingglass" withConfiguration:v7];
      v9 = [UIButton buttonWithType:0];
      v10 = self->_searchButton;
      self->_searchButton = v9;

      [(UIButton *)self->_searchButton addTarget:self action:"searchButtonTapped:" forControlEvents:64];
      [(UIButton *)self->_searchButton setImage:v8 forState:0];
      [(UIButton *)self->_searchButton setShowsLargeContentViewer:1];
      v11 = self->_searchButton;
      v12 = objc_opt_new();
      [(UIButton *)v11 addInteraction:v12];

      [(UIButton *)self->_searchButton setAccessibilityIdentifier:@"searchbar-button"];
      searchButton = self->_searchButton;
    }

    v4 = searchButton;
    v5 = 64;
  }

  v13 = *(&self->super.super.super.isa + v5);
  if ([v16 horizontalSizeClass] == 2)
  {
    [v13 removeFromSuperview];
    v14 = [(UISearchBar *)v4 superview];

    if (!v14)
    {
      v15 = [(MainWindowRootViewController *)self view];
      [v15 addSubview:v4];
    }
  }

  else
  {
    [(UISearchBar *)self->_searchBar removeFromSuperview];
    [(UIButton *)self->_searchButton removeFromSuperview];
  }
}

- (double)searchFieldWidth
{
  v2 = [(MainWindowRootViewController *)self view];
  EKUICurrentWindowWidthWithViewHierarchy();
  v4 = v3;

  if (v4 > 875.0)
  {
    return 223.0;
  }

  if (v4 > 800.0)
  {
    return 193.0;
  }

  result = 0.0;
  if (v4 > 750.0)
  {
    return 172.0;
  }

  return result;
}

- (void)layoutSearchControl
{
  p_searchBar = &self->_searchBar;
  v4 = [(UISearchBar *)self->_searchBar superview];
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

  v6 = [(RootNavigationController *)self->_rootNavigationController viewSwitcher];
  [v6 frame];
  MidY = CGRectGetMidY(v41);

  LODWORD(v6) = CalInterfaceIsLeftToRight();
  v8 = [(MainWindowRootViewController *)self view];
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
    [(MainWindowRootViewController *)self searchFieldWidth];
    v17 = v16;
    [*p_searchBar layoutMargins];
    v19 = v18;
    v21 = v20;
    if (self->_isSearching)
    {
      v22 = [(MainWindowRootViewController *)self EKUI_viewHierarchy];
      [MainWindowRootViewController sidebarWidthForViewHierarchy:v22];
      v17 = v23 - (v14 + 16.0);
    }

    v24 = v21 + v19 + v17;
    [*p_searchBar frame];
    v26 = v25;
    if (CalInterfaceIsLeftToRight())
    {
      v27 = [(MainWindowRootViewController *)self view];
      [v27 bounds];
      v14 = v28 - v24 - (v14 - v21);
    }

    else
    {
      v14 = v14 - v19;
    }

    v36 = [(MainWindowRootViewController *)self traitCollection];
    if (EKUIUsesLargeTextLayout())
    {
      v37 = [(MainWindowRootViewController *)self view];
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
      v33 = [(MainWindowRootViewController *)self view];
      [v33 bounds];
      v14 = v34 - v24 - v14;
    }

    v35 = MidY + v26 * -0.5;
  }

  v39 = *p_searchBar;

  [v39 setFrame:{v14, v35, v24, v26}];
}

- (void)searchButtonTappedCreateAndAddSearchBar:(BOOL)a3
{
  if (!self->_isEndingSearch)
  {
    v3 = a3;
    [(UIButton *)self->_searchButton removeFromSuperview];
    if (v3)
    {
      [(MainWindowRootViewController *)self createSearchBarIfNeeded];
      v5 = [(MainWindowRootViewController *)self view];
      [v5 addSubview:self->_searchBar];
    }

    self->_isSearching = 1;
    [(UISearchBar *)self->_searchBar setShowsCancelButton:1 animated:0];
    if (v3)
    {
      [(MainWindowRootViewController *)self layoutSearchControl];
      [(UISearchBar *)self->_searchBar layoutIfNeeded];
      [(UISearchBar *)self->_searchBar frame];
      v7 = v6;
      v9 = v8;
      v11 = v10;
      if (CalInterfaceIsLeftToRight())
      {
        v12 = [(MainWindowRootViewController *)self view];
        [v12 bounds];
        v14 = v13;
      }

      else
      {
        v14 = -v9;
      }

      [(UISearchBar *)self->_searchBar setFrame:v14, v7, v9, v11];
    }

    v15 = [(MainWindowContentContainerViewController *)self->_secondaryContainerVC startSearch];
    v16[4] = self;
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100108C80;
    v17[3] = &unk_10020F240;
    v17[4] = self;
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100108C88;
    v16[3] = &unk_10020F240;
    [v15 animateAlongsideTransition:v17 completion:v16];
  }
}

- (void)updatePrimaryViewControllerNavBar
{
  v8 = [(UINavigationController *)self->_primaryVC topViewController];
  v3 = [(MainWindowRootViewController *)self traitCollection];
  v4 = [v3 horizontalSizeClass];

  if (v4 == 2)
  {
    [(MasterNavigationPaletteView *)self->_paletteView sizeToFit];
    [(MasterNavigationPaletteView *)self->_paletteView frame];
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

- (void)updatePrimaryViewControllerToolbar
{
  v5 = [(UINavigationController *)self->_primaryVC topViewController];
  if ([v5 conformsToProtocol:&OBJC_PROTOCOL___SideBarViewController] && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v3 = [v5 toolbarVisibleInSplitBehavior:{-[UISplitViewController splitBehavior](self->_splitViewController, "splitBehavior")}];
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
      v12 = [CompactListViewController alloc];
      v13 = [(RootNavigationController *)self->_rootNavigationController model];
      v14 = [(MainWindowRootViewController *)self view];
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
  [(MasterNavigationPaletteView *)self->_paletteView setTitle:v16];
  [(MasterNavigationPaletteView *)self->_paletteView setSegmentedControl:v7];
  [(MasterNavigationPaletteView *)self->_paletteView setNeedsLayout];
  [(MasterNavigationPaletteView *)self->_paletteView layoutIfNeeded];
  paletteView = self->_paletteView;
  v21 = [(UINavigationController *)self->_primaryVC view];
  [v21 bounds];
  [(MasterNavigationPaletteView *)paletteView sizeThatFits:v22, v23];

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
      v11 = [(MainWindowRootViewController *)self viewControllerForSidebarState:a3];
      if (v11)
      {
        if (self->_currentSidebarState == 2)
        {
          [(MainWindowRootViewController *)self inboxWillDismiss];
        }

        primaryVC = self->_primaryVC;
        v34 = v11;
        v13 = [NSArray arrayWithObjects:&v34 count:1];
        [(UINavigationController *)primaryVC setViewControllers:v13];

        if (self->_currentSidebarState)
        {
          v14 = [objc_opt_class() shouldHideInlineFocusBannerForSidebarState:a3];
          v15 = [(RootNavigationController *)self->_rootNavigationController paletteView];
          [v15 setShouldHideInlineFocusBanner:v14];
        }

        else
        {
          v25 = [(UISplitViewController *)self->_splitViewController transitionCoordinator];

          if (v25)
          {

            goto LABEL_41;
          }

          self->_animatingSidebar = [(UISplitViewController *)self->_splitViewController splitBehavior]== 1;
          [(UISplitViewController *)self->_splitViewController showColumn:0];
          v26 = [(UISplitViewController *)self->_splitViewController transitionCoordinator];
          v29[0] = _NSConcreteStackBlock;
          v29[1] = 3221225472;
          v29[2] = sub_100109900;
          v29[3] = &unk_10020F488;
          v29[4] = self;
          v29[5] = a3;
          v27[0] = _NSConcreteStackBlock;
          v27[1] = 3221225472;
          v27[2] = sub_1001099B8;
          v27[3] = &unk_10020F1F0;
          v27[4] = self;
          v28 = v11;
          [v26 animateAlongsideTransition:v29 completion:v27];
        }

        if (a3 == 3)
        {
          v16 = [UIBarButtonItem alloc];
          v17 = +[NSBundle mainBundle];
          v18 = [v17 localizedStringForKey:@"Today" value:&stru_1002133B8 table:0];
          v19 = [v16 initWithTitle:v18 style:0 target:self action:"todayToolbarItemPressed"];

          v20 = CalendarAppTintColor();
          [v19 setTintColor:v20];

          v33 = v19;
          v21 = [NSArray arrayWithObjects:&v33 count:1];
          [v11 setToolbarItems:v21];
        }

        [(MainWindowRootViewController *)self updatePrimaryViewControllerNavBar];
        [(MainWindowRootViewController *)self updatePrimaryViewControllerToolbar];
      }

      self->_currentSidebarState = a3;

LABEL_31:
      self->_animatingSidebar = 0;
      [(MainWindowControlHeaderView *)self->_headerView updateButtonStateForSidebar:self->_currentSidebarState];
      if (v6)
      {
        (v6)[2](v6, v11);
      }

      goto LABEL_41;
    }

LABEL_19:
    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_100109818;
    v32[3] = &unk_10020EB00;
    v32[4] = self;
    v10 = objc_retainBlock(v32);
    if ([(UISplitViewController *)self->_splitViewController displayMode]== 1)
    {
      goto LABEL_20;
    }

    v22 = [(UISplitViewController *)self->_splitViewController transitionCoordinator];

    if (!v22)
    {
      if (self->_currentSidebarState == 2)
      {
        [(MainWindowRootViewController *)self inboxWillDismiss];
      }

      self->_animatingSidebar = [(UISplitViewController *)self->_splitViewController splitBehavior]== 1;
      [(UISplitViewController *)self->_splitViewController hideColumn:0];
      v23 = [(UISplitViewController *)self->_splitViewController transitionCoordinator];
      if (v23)
      {
        v24 = v23;
        v30[0] = _NSConcreteStackBlock;
        v30[1] = 3221225472;
        v30[2] = sub_1001098F0;
        v30[3] = &unk_10020F1C8;
        v31 = v10;
        [v24 animateAlongsideTransition:v30 completion:0];

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
  if ([(MainWindowRootViewController *)self currentSidebarState]== 1)
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
    v8[2] = sub_100109B58;
    v8[3] = &unk_10020F4B0;
    v9 = v4;
    [(MainWindowRootViewController *)self setCurrentSidebarState:1 completion:v8];
  }
}

- (void)calendarButtonTapped
{
  v3 = [(RootNavigationController *)self->_rootNavigationController currentViewType];
  v6 = @"currentView";
  v4 = [NSNumber numberWithInt:[(RootNavigationController *)self->_rootNavigationController currentViewTypeInt:v3]];
  v7 = v4;
  v5 = [NSDictionary dictionaryWithObjects:&v7 forKeys:&v6 count:1];

  CalAnalyticsSendEvent();
  [(MainWindowRootViewController *)self setCurrentSidebarState:1];
}

- (void)showInboxSideBarWithCompletion:(id)a3
{
  v4 = a3;
  if ([(MainWindowRootViewController *)self currentSidebarState]== 2)
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
    v8[2] = sub_100109DBC;
    v8[3] = &unk_10020F4B0;
    v9 = v4;
    [(MainWindowRootViewController *)self setCurrentSidebarState:2 completion:v8];
  }
}

- (void)inboxButtonTapped
{
  v3 = [(RootNavigationController *)self->_rootNavigationController currentViewType];
  v6 = @"currentView";
  v4 = [NSNumber numberWithInt:[(RootNavigationController *)self->_rootNavigationController currentViewTypeInt:v3]];
  v7 = v4;
  v5 = [NSDictionary dictionaryWithObjects:&v7 forKeys:&v6 count:1];

  CalAnalyticsSendEvent();
  [(MainWindowRootViewController *)self setCurrentSidebarState:2];
}

- (void)showListSideBarWithCompletion:(id)a3
{
  v4 = a3;
  if ([(MainWindowRootViewController *)self currentSidebarState]== 3)
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
    v8[2] = sub_10010A020;
    v8[3] = &unk_10020F4B0;
    v9 = v4;
    [(MainWindowRootViewController *)self setCurrentSidebarState:3 completion:v8];
  }
}

- (void)newEventButtonTapped:(id)a3
{
  v4 = a3;
  if (self->_isSearching)
  {
    [(MainWindowContentContainerViewController *)self->_secondaryContainerVC cancelSearch];
  }

  [(RootNavigationController *)self->_rootNavigationController showAddEventAnimated:1 fromBarButtonItem:v4];
  v5 = [(RootNavigationController *)self->_rootNavigationController currentViewType];
  v8[0] = @"view";
  v8[1] = @"triggerLocation";
  v9[0] = @"navigationBar";
  v9[1] = @"Button";
  v8[2] = @"currentView";
  v6 = [NSNumber numberWithInt:[(RootNavigationController *)self->_rootNavigationController currentViewTypeInt:v5]];
  v9[2] = v6;
  v7 = [NSDictionary dictionaryWithObjects:v9 forKeys:v8 count:3];

  CalAnalyticsSendEvent();
}

- (void)todayToolbarItemPressed
{
  v3 = [(UINavigationController *)self->_primaryVC topViewController];
  v2 = CUIKTodayDate();
  [v3 scrollToDate:v2 animated:1];
}

- (void)searchTapped
{
  [(MainWindowRootViewController *)self setCurrentSidebarState:0];
  v3 = [(UISearchBar *)self->_searchBar superview];
  [(MainWindowRootViewController *)self searchButtonTappedCreateAndAddSearchBar:v3 == 0];

  v4 = [(RootNavigationController *)self->_rootNavigationController currentViewType];
  v7 = @"currentView";
  v5 = [NSNumber numberWithInt:[(RootNavigationController *)self->_rootNavigationController currentViewTypeInt:v4]];
  v8 = v5;
  v6 = [NSDictionary dictionaryWithObjects:&v8 forKeys:&v7 count:1];

  CalAnalyticsSendEvent();
}

- (void)searchBegan
{
  self->_isSearching = 1;
  [(MainWindowRootViewController *)self layoutSearchControl];

  [(MainWindowRootViewController *)self setNeedsUpdateOfSupportedInterfaceOrientations];
}

- (void)searchEnding
{
  self->_isSearching = 0;
  self->_isEndingSearch = 1;
  v3 = [(MainWindowRootViewController *)self traitCollection];
  v4 = [(MainWindowRootViewController *)self showsSearchBarForTraitCollection:v3];

  if (v4)
  {
    [(MainWindowRootViewController *)self layoutSearchControl];
  }

  else
  {
    [(UISearchBar *)self->_searchBar frame];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    if (CalInterfaceIsLeftToRight())
    {
      v11 = [(MainWindowRootViewController *)self view];
      [v11 bounds];
      v13 = v12;
    }

    else
    {
      v13 = -v8;
    }

    [(UISearchBar *)self->_searchBar setFrame:v13, v6, v8, v10];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10010A55C;
    v16[3] = &unk_10020EB00;
    v16[4] = self;
    [UIView performWithoutAnimation:v16];
    v14 = dispatch_time(0, 100000000);
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10010A5C8;
    v15[3] = &unk_10020EB00;
    v15[4] = self;
    dispatch_after(v14, &_dispatch_main_q, v15);
  }

  [(MainWindowRootViewController *)self setNeedsUpdateOfSupportedInterfaceOrientations];
}

- (void)searchEnded
{
  self->_isEndingSearch = 0;
  v3 = [(MainWindowRootViewController *)self traitCollection];
  v4 = [(MainWindowRootViewController *)self showsSearchBarForTraitCollection:v3];

  if ((v4 & 1) == 0)
  {
    v5 = [(MainWindowRootViewController *)self traitCollection];
    [(MainWindowRootViewController *)self setupSearchControlForTraitCollection:v5];
  }
}

- (void)showEventAndCloseSidebarIfNeeded:(id)a3 animated:(BOOL)a4 showMode:(unint64_t)a5
{
  v6 = a4;
  v8 = a3;
  if (self->_currentSidebarState && [(UISplitViewController *)self->_splitViewController splitBehavior]== 2 && ([(MainWindowRootViewController *)self setCurrentSidebarState:0], [(UISplitViewController *)self->_splitViewController transitionCoordinator], (v9 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v10 = v9;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10010A82C;
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
  v3 = [(UINavigationController *)self->_primaryVC topViewController];
  v2 = [v3 view];
  [v2 endEditing:1];

  [v3 inboxWillDismiss];
}

- (void)attemptDisplayReviewPrompt
{
  v6 = [(MainWindowRootViewController *)self view];
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

  [(MainWindowRootViewController *)self presentViewController:v7 animated:1 completion:0];
}

- (void)paletteTodayButtonTapped:(id)a3
{
  [(RootNavigationController *)self->_rootNavigationController todayPressed];
  if (self->_currentSidebarState == 3)
  {
    v4 = [(UINavigationController *)self->_primaryVC topViewController];
    [v4 scrollToTodayAnimated:1];
  }

  secondaryContainerVC = self->_secondaryContainerVC;

  [(MainWindowContentContainerViewController *)secondaryContainerVC todayTapped];
}

- (void)paletteAvatarViewTapped:(id)a3
{
  v4 = [a3 avatarView];
  [(MainWindowRootViewController *)self showIdentitySwitcherFromSourceView:v4];
}

- (BOOL)paletteShouldShowAvatarView
{
  v3 = [(RootNavigationController *)self->_rootNavigationController ekui_futureTraitCollection];
  if ([(MainWindowRootViewController *)self canShowAvatarViewWithTraitCollection:v3])
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
  v6[2] = sub_10010ADC0;
  v6[3] = &unk_10020F500;
  v6[4] = self;
  v6[5] = v7;
  dispatch_async(buttonQ, v6);
  _Block_object_dispose(v7, 8);
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
  block[2] = sub_10010AF8C;
  block[3] = &unk_10020EB00;
  block[4] = self;
  dispatch_async(notificationQ, block);
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

  [(MainWindowRootViewController *)self updateNewEventButtonEnabledness];
  [(MainWindowRootViewController *)self updateErrorState];

  [(MainWindowRootViewController *)self updateInboxCount];
}

- (void)_delegatesChanged:(id)a3
{
  v4 = [(RootNavigationController *)self->_rootNavigationController model];
  -[MasterNavigationPaletteView setShowIdentity:](self->_paletteView, "setShowIdentity:", [v4 containsDelegateSources]);

  rootNavigationController = self->_rootNavigationController;
  v6 = [(MainWindowRootViewController *)self traitCollection];
  [(RootNavigationController *)rootNavigationController setAvatarViewVisible:[(MainWindowRootViewController *)self canShowAvatarViewWithTraitCollection:v6]];

  [(MainWindowRootViewController *)self updateNewEventButtonEnabledness];
}

- (void)_updateAfterExtendedLaunch:(id)a3
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10010B2A8;
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
    v11.super_class = MainWindowRootViewController;
    v8 = [(MainWindowRootViewController *)&v11 canPerformAction:a3 withSender:v7];
  }

  v9 = v8;

  return v9;
}

- (void)routeNewEventKeyCommand
{
  v3 = [(MainWindowRootViewController *)self traitCollection];
  if ([v3 horizontalSizeClass] != 2)
  {
    goto LABEL_4;
  }

  v4 = [(MainWindowRootViewController *)self presentedViewController];
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

    [(MainWindowRootViewController *)self showAddEvent];
  }
}

- (void)routeSearchKeyCommand
{
  v3 = [(MainWindowRootViewController *)self traitCollection];
  if ([v3 horizontalSizeClass] != 2)
  {
    goto LABEL_4;
  }

  v4 = [(MainWindowRootViewController *)self presentedViewController];
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

  [(MainWindowRootViewController *)self searchTapped];
  searchBar = self->_searchBar;

  [(UISearchBar *)searchBar becomeFirstResponder];
}

- (void)toggleSidebar:(id)a3
{
  if ([(MainWindowRootViewController *)self currentSidebarState])
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

  [(MainWindowRootViewController *)v4 setCurrentSidebarState:lastOpenSidebarState];
}

- (BOOL)_shouldUseSideBar
{
  v2 = [(MainWindowRootViewController *)self traitCollection];
  v3 = [v2 horizontalSizeClass] == 2;

  return v3;
}

- (void)showCalendarsViewWithCompletion:(id)a3
{
  v4 = a3;
  if ([(MainWindowRootViewController *)self _shouldUseSideBar])
  {
    [(MainWindowRootViewController *)self showCalendarsSideBarWithCompletion:v4];
  }

  else
  {
    [(RootNavigationController *)self->_rootNavigationController showCalendarsAnimated:1 completion:v4];
  }
}

- (void)showInboxView
{
  if ([(MainWindowRootViewController *)self _shouldUseSideBar])
  {

    [(MainWindowRootViewController *)self showInboxSideBarWithCompletion:0];
  }

  else
  {
    v3 = [(RootNavigationController *)self->_rootNavigationController showInboxAnimated:1];
  }
}

- (void)showListView
{
  if ([(MainWindowRootViewController *)self _shouldUseSideBar])
  {

    [(MainWindowRootViewController *)self showListSideBarWithCompletion:0];
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
  if ([(MainWindowRootViewController *)self _shouldUseSideBar])
  {

    [(MainWindowRootViewController *)self showSearchSideBar];
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
    if ([(MainWindowRootViewController *)self _shouldUseSideBar])
    {

      [(MainWindowRootViewController *)self showListView];
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
  v7[2] = sub_10010BC44;
  v7[3] = &unk_10020F528;
  v8 = a3;
  v9 = a4;
  v6 = v8;
  [(MainWindowRootViewController *)self showCalendarsViewWithCompletion:v7];
}

- (void)pressesBegan:(id)a3 withEvent:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [(MainWindowRootViewController *)self isFirstResponder];
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
          v22 = [(MainWindowRootViewController *)v48 presentedViewController];

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
                v27 = [(MainWindowRootViewController *)v48 targetForAction:"handleSelectPreviousEventCommand" withSender:0];
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
                v33 = [(MainWindowRootViewController *)v48 targetForAction:"handleSelectNextEventCommand" withSender:0];
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
                v39 = [(MainWindowRootViewController *)v48 targetForAction:"handleSelectPreviousEventCommand" withSender:0];
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

              v43 = [(MainWindowRootViewController *)v48 targetForAction:"handleSelectNextEventCommand" withSender:0];
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
  v50.super_class = MainWindowRootViewController;
  [(MainWindowRootViewController *)&v50 pressesBegan:v12 withEvent:v8];
LABEL_50:
}

- (void)dismissPresentedViewControllerAnimated:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [(MainWindowRootViewController *)self presentedViewController];

  if (v7)
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10010C1BC;
    v8[3] = &unk_10020F550;
    v8[4] = self;
    v10 = v4;
    v9 = v6;
    [(MainWindowRootViewController *)self dismissViewControllerAnimated:v4 completion:v8];
  }

  else
  {
    [(RootNavigationController *)self->_rootNavigationController dismissPresentedViewControllerAnimated:v4 completion:v6];
  }
}

@end