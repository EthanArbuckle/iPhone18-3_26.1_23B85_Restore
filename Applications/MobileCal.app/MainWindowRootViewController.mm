@interface MainWindowRootViewController
+ (double)sidebarWidthForViewHierarchy:(id)hierarchy;
+ (id)sanitizeCalSubCal:(id)cal;
- (BOOL)_shouldUseSideBar;
- (BOOL)_viewControllerExistsInPresentationChainThatShouldNotRotate;
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender;
- (BOOL)canShowAvatarViewWithTraitCollection:(id)collection;
- (BOOL)paletteShouldShowAvatarView;
- (BOOL)showsSearchBarForTraitCollection:(id)collection;
- (CGSize)mainContentSize;
- (MainWindowRootViewController)initWithRootNavigationController:(id)controller;
- (double)searchFieldWidth;
- (id)traitCollectionToUseWhileLoadingViewsDuringTransitioningToTraitCollection:(id)collection;
- (id)viewControllerForSidebarState:(unint64_t)state;
- (unint64_t)focusFilterMode;
- (unint64_t)supportedInterfaceOrientations;
- (void)_delegatesChanged:(id)changed;
- (void)_identityChanged:(id)changed;
- (void)_updateAfterExtendedLaunch:(id)launch;
- (void)attemptDisplayReviewPrompt;
- (void)calendarButtonTapped;
- (void)continueSearchWithTerm:(id)term;
- (void)createSearchBarIfNeeded;
- (void)dealloc;
- (void)dismissPresentedViewControllerAnimated:(BOOL)animated completion:(id)completion;
- (void)handleURL:(id)l context:(id)context;
- (void)inboxButtonTapped;
- (void)inboxWillDismiss;
- (void)layoutSearchControl;
- (void)newEventButtonTapped:(id)tapped;
- (void)paletteAvatarViewTapped:(id)tapped;
- (void)paletteTodayButtonTapped:(id)tapped;
- (void)pressesBegan:(id)began withEvent:(id)event;
- (void)routeNewEventKeyCommand;
- (void)routeSearchKeyCommand;
- (void)searchBegan;
- (void)searchButtonTappedCreateAndAddSearchBar:(BOOL)bar;
- (void)searchEnded;
- (void)searchEnding;
- (void)searchTapped;
- (void)setCurrentSidebarState:(unint64_t)state completion:(id)completion;
- (void)setFocusFilterMode:(unint64_t)mode;
- (void)setupSearchControlForTraitCollection:(id)collection;
- (void)showAddEvent;
- (void)showAddEventWithTitle:(id)title startDate:(id)date endDate:(id)endDate location:(id)location suggestionsKey:(id)key allDay:(BOOL)day;
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
- (void)showSearchView;
- (void)showSplitMonthView;
- (void)splitViewController:(id)controller willExpandToProposedDisplayMode:(int64_t *)mode;
- (void)splitViewController:(id)controller willHideColumn:(int64_t)column;
- (void)todayToolbarItemPressed;
- (void)toggleSidebar:(id)sidebar;
- (void)updateErrorState;
- (void)updateInboxCount;
- (void)updateNewEventButtonEnabledness;
- (void)updatePrimaryViewControllerNavBar;
- (void)updatePrimaryViewControllerToolbar;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
- (void)willEnterForeground;
- (void)willTransitionToTraitCollection:(id)collection withTransitionCoordinator:(id)coordinator;
@end

@implementation MainWindowRootViewController

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

- (MainWindowRootViewController)initWithRootNavigationController:(id)controller
{
  controllerCopy = controller;
  v22.receiver = self;
  v22.super_class = MainWindowRootViewController;
  v6 = [(MainWindowRootViewController *)&v22 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_rootNavigationController, controller);
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
  view = [(MainWindowRootViewController *)self view];
  [view setAutoresizingMask:18];

  v4 = +[UIColor systemBackgroundColor];
  view2 = [(MainWindowRootViewController *)self view];
  [view2 setBackgroundColor:v4];

  v6 = [[UISplitViewController alloc] initWithStyle:1];
  splitViewController = self->_splitViewController;
  self->_splitViewController = v6;

  v8 = objc_alloc_init(UINavigationController);
  primaryVC = self->_primaryVC;
  self->_primaryVC = v8;

  v10 = +[UIColor systemBackgroundColor];
  view3 = [(UINavigationController *)self->_primaryVC view];
  [view3 setBackgroundColor:v10];

  v12 = +[UIColor secondarySystemBackgroundColor];
  navigationBar = [(UINavigationController *)self->_primaryVC navigationBar];
  [navigationBar setBarTintColor:v12];

  navigationBar2 = [(UINavigationController *)self->_primaryVC navigationBar];
  [navigationBar2 setForceFullHeightInLandscape:1];

  v15 = [[MainWindowContentContainerViewController alloc] initWithRootNavigationController:self->_rootNavigationController];
  secondaryContainerVC = self->_secondaryContainerVC;
  self->_secondaryContainerVC = v15;

  [(MainWindowContentContainerViewController *)self->_secondaryContainerVC setDelegate:self];
  v17 = [[MainWindowWrapperNavigationController alloc] initWithRootViewController:self->_secondaryContainerVC];
  [(MainWindowWrapperNavigationController *)v17 setNavigationBarHidden:1 animated:0];
  [(UISplitViewController *)self->_splitViewController setDelegate:self];
  [(UISplitViewController *)self->_splitViewController setPreferredDisplayMode:1];
  [(UISplitViewController *)self->_splitViewController setPresentsWithGesture:0];
  eKUI_viewHierarchy = [(MainWindowRootViewController *)self EKUI_viewHierarchy];
  [MainWindowRootViewController sidebarWidthForViewHierarchy:eKUI_viewHierarchy];
  [(UISplitViewController *)self->_splitViewController setMinimumPrimaryColumnWidth:?];
  v63 = eKUI_viewHierarchy;
  [MainWindowRootViewController sidebarWidthForViewHierarchy:eKUI_viewHierarchy];
  [(UISplitViewController *)self->_splitViewController setMaximumPrimaryColumnWidth:?];
  [(UISplitViewController *)self->_splitViewController setViewController:self->_primaryVC forColumn:0];
  v64 = v17;
  [(UISplitViewController *)self->_splitViewController setViewController:v17 forColumn:2];
  [(MainWindowRootViewController *)self addChildViewController:self->_splitViewController];
  view4 = [(MainWindowRootViewController *)self view];
  view5 = [(UISplitViewController *)self->_splitViewController view];
  [view4 addSubview:view5];

  [(UISplitViewController *)self->_splitViewController didMoveToParentViewController:self];
  v21 = [MainWindowControlHeaderView alloc];
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  height = [(MainWindowControlHeaderView *)v21 initWithFrame:CGRectZero.origin.x, y, width, height];
  headerView = self->_headerView;
  self->_headerView = height;

  [(MainWindowControlHeaderView *)self->_headerView setDelegate:self];
  [(MainWindowRootViewController *)self updateInboxCount];
  height2 = [[MasterNavigationPaletteView alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
  paletteView = self->_paletteView;
  self->_paletteView = height2;

  [(MasterNavigationPaletteView *)self->_paletteView setTranslatesAutoresizingMaskIntoConstraints:0];
  model = [(RootNavigationController *)self->_rootNavigationController model];
  [(MasterNavigationPaletteView *)self->_paletteView setModel:model];

  [(MasterNavigationPaletteView *)self->_paletteView setDelegate:self];
  model2 = [(RootNavigationController *)self->_rootNavigationController model];
  -[MasterNavigationPaletteView setShowIdentity:](self->_paletteView, "setShowIdentity:", [model2 containsDelegateSources]);

  v31 = self->_paletteView;
  view6 = [(MainWindowRootViewController *)self view];
  [view6 bounds];
  [(MasterNavigationPaletteView *)v31 sizeThatFits:v33, v34];
  v36 = v35;
  v38 = v37;

  v39 = [[UIView alloc] initWithFrame:{0.0, 0.0, v36, v38}];
  [v39 addSubview:self->_paletteView];
  leadingAnchor = [(MasterNavigationPaletteView *)self->_paletteView leadingAnchor];
  leadingAnchor2 = [v39 leadingAnchor];
  v60 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v66[0] = v60;
  trailingAnchor = [(MasterNavigationPaletteView *)self->_paletteView trailingAnchor];
  trailingAnchor2 = [v39 trailingAnchor];
  v40 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v66[1] = v40;
  topAnchor = [(MasterNavigationPaletteView *)self->_paletteView topAnchor];
  topAnchor2 = [v39 topAnchor];
  v43 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v66[2] = v43;
  bottomAnchor = [(MasterNavigationPaletteView *)self->_paletteView bottomAnchor];
  bottomAnchor2 = [v39 bottomAnchor];
  v46 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v66[3] = v46;
  v47 = [NSArray arrayWithObjects:v66 count:4];
  [NSLayoutConstraint activateConstraints:v47];

  v48 = [[_UINavigationBarPalette alloc] initWithContentView:v39];
  palette = self->_palette;
  self->_palette = v48;

  [(_UINavigationBarPalette *)self->_palette setPreferredHeight:v38];
  paletteView = [(RootNavigationController *)self->_rootNavigationController paletteView];
  [paletteView setDelegate:self];

  traitCollection = [(MainWindowRootViewController *)self traitCollection];
  horizontalSizeClass = [traitCollection horizontalSizeClass];

  if (horizontalSizeClass == 2)
  {
    view7 = [(MainWindowRootViewController *)self view];
    [view7 addSubview:self->_headerView];

    rootNavigationController = self->_rootNavigationController;
    traitCollection2 = [(MainWindowRootViewController *)self traitCollection];
    [(RootNavigationController *)rootNavigationController setAvatarViewVisible:[(MainWindowRootViewController *)self canShowAvatarViewWithTraitCollection:traitCollection2]];
  }

  else
  {
    [(UINavigationController *)self->_primaryVC setNavigationBarHidden:1 animated:0];
    [(RootNavigationController *)self->_rootNavigationController setAvatarViewVisible:0];
  }

  v56 = [objc_opt_class() shouldHideInlineFocusBannerForSidebarState:self->_currentSidebarState];
  paletteView2 = [(RootNavigationController *)self->_rootNavigationController paletteView];
  [paletteView2 setShouldHideInlineFocusBanner:v56];
}

- (void)willEnterForeground
{
  traitCollection = [(MainWindowRootViewController *)self traitCollection];
  [(MainWindowRootViewController *)self setupSearchControlForTraitCollection:traitCollection];

  secondaryContainerVC = self->_secondaryContainerVC;

  [(MainWindowContentContainerViewController *)secondaryContainerVC layoutSegmentedControl];
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  self->_didAppear = 1;
  if (self->_needsSidebarSetup)
  {
    if (([(UISplitViewController *)self->_splitViewController _isCollapsed]& 1) == 0)
    {
      [(MainWindowRootViewController *)self setCurrentSidebarState:self->_pendingState];
    }

    self->_needsSidebarSetup = 0;
  }

  traitCollection = [(MainWindowRootViewController *)self traitCollection];
  [(MainWindowRootViewController *)self setupSearchControlForTraitCollection:traitCollection];

  [(MainWindowRootViewController *)self layoutSearchControl];
  headerView = self->_headerView;
  view = [(MainWindowRootViewController *)self view];
  [view bounds];
  [(MainWindowControlHeaderView *)headerView layoutForWidth:v8];

  [(MainWindowRootViewController *)self updateNewEventButtonEnabledness];
  v9.receiver = self;
  v9.super_class = MainWindowRootViewController;
  [(MainWindowRootViewController *)&v9 viewDidAppear:appearCopy];
}

- (BOOL)_viewControllerExistsInPresentationChainThatShouldNotRotate
{
  v3 = +[NSMutableSet set];
  v4 = objc_opt_class();
  if (v4)
  {
    [v3 addObject:v4];
  }

  presentedViewController = [(MainWindowRootViewController *)self presentedViewController];
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
  presentedViewController = [(MainWindowRootViewController *)self presentedViewController];
  v4 = EKUIUseLargeFormatPhoneUI();
  objc_opt_class();
  if (((objc_opt_isKindOfClass() & 1) != 0 || v4 && self->_isSearching || -[MainWindowRootViewController _viewControllerExistsInPresentationChainThatShouldNotRotate](self, "_viewControllerExistsInPresentationChainThatShouldNotRotate")) && (-[MainWindowRootViewController view](self, "view"), v5 = objc_claimAutoreleasedReturnValue(), [v5 window], v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "windowScene"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "interfaceOrientation"), v7, v6, v5, v8))
  {
    supportedInterfaceOrientations = 1 << v8;
  }

  else
  {
    v11.receiver = self;
    v11.super_class = MainWindowRootViewController;
    supportedInterfaceOrientations = [(MainWindowRootViewController *)&v11 supportedInterfaceOrientations];
  }

  return supportedInterfaceOrientations;
}

- (void)viewWillLayoutSubviews
{
  [(MainWindowContentContainerViewController *)self->_secondaryContainerVC layoutSegmentedControl];
  superview = [(MainWindowControlHeaderView *)self->_headerView superview];

  if (superview)
  {
    viewSwitcher = [(RootNavigationController *)self->_rootNavigationController viewSwitcher];
    view = [(MainWindowRootViewController *)self view];
    [viewSwitcher bounds];
    [view convertRect:viewSwitcher fromView:?];
    MidY = CGRectGetMidY(v25);

    view2 = [(MainWindowRootViewController *)self view];
    [view2 bounds];
    v8 = v7;
    +[MainWindowRootViewController minimumStandardWindowWidth];
    v10 = dbl_1001F81B0[v8 < v9];

    LODWORD(view2) = CalInterfaceIsLeftToRight();
    view3 = [(MainWindowRootViewController *)self view];
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
      view3 = [(MainWindowRootViewController *)self view];
      [view3 bounds];
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

- (id)traitCollectionToUseWhileLoadingViewsDuringTransitioningToTraitCollection:(id)collection
{
  collectionCopy = collection;
  if ([collectionCopy horizontalSizeClass] == 1 && objc_msgSend(collectionCopy, "verticalSizeClass") == 1)
  {
    v4 = [collectionCopy traitCollectionByModifyingTraits:&stru_100211878];
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
  if (([(MainWindowRootViewController *)self isViewLoaded]& 1) == 0)
  {
    v8 = [(MainWindowRootViewController *)self traitCollectionToUseWhileLoadingViewsDuringTransitioningToTraitCollection:collectionCopy];
    if (v8)
    {
      [(MainWindowRootViewController *)self setEkui_futureTraitCollection:v8];
      view = [(MainWindowRootViewController *)self view];
      [view setNeedsLayout];

      [(MainWindowRootViewController *)self setEkui_futureTraitCollection:0];
    }

    else
    {
      view2 = [(MainWindowRootViewController *)self view];
      [view2 setNeedsLayout];
    }
  }

  v40 = coordinatorCopy;
  horizontalSizeClass = [collectionCopy horizontalSizeClass];
  traitCollection = [(MainWindowRootViewController *)self traitCollection];
  horizontalSizeClass2 = [traitCollection horizontalSizeClass];

  horizontalSizeClass3 = [collectionCopy horizontalSizeClass];
  v38 = horizontalSizeClass3 == 2;
  view3 = [(MainWindowRootViewController *)self view];
  window = [view3 window];
  windowScene = [window windowScene];
  activationState = [windowScene activationState];
  v39 = activationState == 2;

  v54 = 0;
  v55 = &v54;
  v56 = 0x2020000000;
  v57 = 0;
  [(UINavigationController *)self->_primaryVC setNavigationBarHidden:horizontalSizeClass3 != 2 animated:0];
  [(MainWindowRootViewController *)self setupSearchControlForTraitCollection:collectionCopy];
  if (activationState == 2)
  {
    firstResponder = 0;
  }

  else
  {
    firstResponder = [(MainWindowRootViewController *)self firstResponder];
  }

  if (horizontalSizeClass != horizontalSizeClass2 && horizontalSizeClass3 == 2)
  {
    presentedViewController = [(RootNavigationController *)self->_rootNavigationController presentedViewController];
    if (!presentedViewController)
    {
      presentedViewController = [(MainWindowRootViewController *)self presentedViewController];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      preservedState = [presentedViewController preservedState];
      calendarsPreservedState = self->_calendarsPreservedState;
      self->_calendarsPreservedState = preservedState;

      presentingViewController = [presentedViewController presentingViewController];
      [presentingViewController dismissViewControllerAnimated:0 completion:0];

      displayedDetailViewControllers = 0;
      v55[3] = 1;
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(RootNavigationController *)self->_rootNavigationController dismissViewControllerAnimated:0 completion:0];
        v55[3] = 2;
        objc_storeStrong(&self->_presentedInboxVC, presentedViewController);
        displayedDetailViewControllers = [(InboxViewController *)self->_presentedInboxVC displayedDetailViewControllers];
      }

      else
      {
        displayedDetailViewControllers = 0;
      }
    }

    view4 = [(MainWindowRootViewController *)self view];
    [view4 addSubview:self->_headerView];

    goto LABEL_28;
  }

  if (horizontalSizeClass == horizontalSizeClass2)
  {
    displayedDetailViewControllers = 0;
    goto LABEL_29;
  }

  presentedViewController = [(MainWindowRootViewController *)self presentedViewController];
  if ([(MainWindowRootViewController *)self currentSidebarState]== 1)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      viewControllers = [presentedViewController viewControllers];
      firstObject = [viewControllers firstObject];
      NSClassFromString(@"EKCalendarEditor");
      if (objc_opt_isKindOfClass())
      {

LABEL_26:
        topViewController = [(UINavigationController *)self->_primaryVC topViewController];
        preservedState2 = [topViewController preservedState];
        v33 = self->_calendarsPreservedState;
        self->_calendarsPreservedState = preservedState2;

        [(MainWindowRootViewController *)self dismissViewControllerAnimated:0 completion:0];
        goto LABEL_27;
      }

      viewControllers2 = [presentedViewController viewControllers];
      firstObject2 = [viewControllers2 firstObject];
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
  displayedDetailViewControllers = 0;
LABEL_28:

LABEL_29:
  v34 = [(UISplitViewController *)self->_splitViewController overrideTraitCollectionForChildViewController:self->_primaryVC];
  [(UISplitViewController *)self->_splitViewController setOverrideTraitCollection:0 forChildViewController:self->_primaryVC];
  v53.receiver = self;
  v53.super_class = MainWindowRootViewController;
  [(MainWindowRootViewController *)&v53 willTransitionToTraitCollection:collectionCopy withTransitionCoordinator:v40];
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
  v35 = firstResponder;
  v42 = v35;
  selfCopy = self;
  v36 = v34;
  v44 = v36;
  v46 = &v54;
  v47 = v39;
  v37 = displayedDetailViewControllers;
  v45 = v37;
  [v40 animateAlongsideTransition:v48 completion:v41];

  _Block_object_dispose(&v54, 8);
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

  splitBehavior = [(UISplitViewController *)self->_splitViewController splitBehavior];
  view = [(MainWindowRootViewController *)self view];
  window = [view window];
  windowScene = [window windowScene];
  activationState = [windowScene activationState];

  ekui_futureTraitCollection = [(MainWindowRootViewController *)self ekui_futureTraitCollection];
  horizontalSizeClass = [ekui_futureTraitCollection horizontalSizeClass];
  traitCollection = [(MainWindowRootViewController *)self traitCollection];
  horizontalSizeClass2 = [traitCollection horizontalSizeClass];

  if (horizontalSizeClass != horizontalSizeClass2 || activationState == 2)
  {
    if (horizontalSizeClass == horizontalSizeClass2)
    {
      goto LABEL_8;
    }

LABEL_33:
    v37 = 0;
    goto LABEL_34;
  }

  presentedViewController = [(MainWindowRootViewController *)self presentedViewController];

  if (!presentedViewController)
  {
    goto LABEL_33;
  }

LABEL_8:
  v23 = +[UIScreen mainScreen];
  [v23 bounds];
  v25 = v24;
  v27 = v26;

  eKUI_viewHierarchy = [(MainWindowRootViewController *)self EKUI_viewHierarchy];
  v29 = [eKUI_viewHierarchy ekui_interfaceOrientation] - 3 < 2 && activationState == 2;
  if (v29)
  {
    v30 = 1;
  }

  else
  {
    v30 = splitBehavior;
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

- (void)splitViewController:(id)controller willExpandToProposedDisplayMode:(int64_t *)mode
{
  if (self->_currentSidebarState)
  {
    splitBehavior = [(UISplitViewController *)self->_splitViewController splitBehavior];
    v7 = 2;
    if (splitBehavior == UISplitViewControllerSplitBehaviorOverlay)
    {
      v7 = 3;
    }

    *mode = v7;

    [(MainWindowRootViewController *)self updatePrimaryViewControllerToolbar];
  }
}

- (void)splitViewController:(id)controller willHideColumn:(int64_t)column
{
  controllerCopy = controller;
  if (!column && self->_currentSidebarState && ![(UISplitViewController *)self->_splitViewController isCollapsed])
  {
    view = [(MainWindowRootViewController *)self view];
    window = [view window];
    windowScene = [window windowScene];
    activationState = [windowScene activationState];

    currentSidebarState = self->_currentSidebarState;
    if (activationState != 2)
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
    transitionCoordinator = [(UISplitViewController *)self->_splitViewController transitionCoordinator];

    if (transitionCoordinator)
    {
      transitionCoordinator2 = [(UISplitViewController *)self->_splitViewController transitionCoordinator];
      [transitionCoordinator2 animateAlongsideTransition:v12 completion:0];
    }

    else
    {
      (v12[2])(v12);
    }
  }
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

- (void)continueSearchWithTerm:(id)term
{
  termCopy = term;
  ekui_futureTraitCollection = [(MainWindowRootViewController *)self ekui_futureTraitCollection];
  horizontalSizeClass = [ekui_futureTraitCollection horizontalSizeClass];

  if (horizontalSizeClass == 1)
  {
    [(RootNavigationController *)self->_rootNavigationController continueSearchWithTerm:termCopy animated:1 removeViewControllersIncapableOfSearchIfNeeded:1];
  }

  else
  {
    [(MainWindowContentContainerViewController *)self->_secondaryContainerVC continueSearchWithTerm:termCopy];
  }
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
  traitCollection = [(MainWindowRootViewController *)self traitCollection];
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
  scheme = [lCopy scheme];
  traitCollection = [(MainWindowRootViewController *)self traitCollection];
  horizontalSizeClass = [traitCollection horizontalSizeClass];

  if (horizontalSizeClass == 2)
  {
    if ([scheme isEqualToString:@"calinvitelist"])
    {
      model = [(RootNavigationController *)self->_rootNavigationController model];
      allEventNotificationsCount = [model allEventNotificationsCount];

      if (allEventNotificationsCount)
      {
        [(MainWindowRootViewController *)self setCurrentSidebarState:2];
        goto LABEL_23;
      }
    }
  }

  traitCollection2 = [(MainWindowRootViewController *)self traitCollection];
  if ([traitCollection2 horizontalSizeClass] == 2)
  {
    if ([scheme isEqualToString:@"calsubcal"])
    {

LABEL_18:
      if (self->_currentSidebarState != 1)
      {
        [(MainWindowRootViewController *)self setCurrentSidebarState:1];
      }

      topViewController = [(UINavigationController *)self->_primaryVC topViewController];
      v18 = [MainWindowRootViewController sanitizeCalSubCal:lCopy];
      if (v18)
      {
        [(MainWindowContentContainerViewController *)self->_secondaryContainerVC cancelSearch];
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
    [(RootNavigationController *)self->_rootNavigationController handleURL:lCopy context:contextCopy];
  }

LABEL_23:
}

- (BOOL)showsSearchBarForTraitCollection:(id)collection
{
  collectionCopy = collection;
  view = [(MainWindowRootViewController *)self view];
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
    self->_searchBar = &v3->super;

    v5 = [NSBundle bundleForClass:objc_opt_class()];
    v6 = [v5 localizedStringForKey:@"Placeholder used in the search bar in the calendar occurrences list" value:@"Search" table:0];
    [(UISearchBar *)self->_searchBar setPlaceholder:v6];

    [(UISearchBar *)self->_searchBar setDrawsBackground:0];
    [(UISearchBar *)self->_searchBar setDelegate:self->_secondaryContainerVC];
    [(UISearchBar *)self->_searchBar _setAutoDisableCancelButton:0];
    searchField = [(UISearchBar *)self->_searchBar searchField];
    [searchField setAccessibilityIdentifier:@"searchbar-button"];

    v8 = self->_searchBar;
    secondaryContainerVC = self->_secondaryContainerVC;

    [(MainWindowContentContainerViewController *)secondaryContainerVC setSearchBar:v8];
  }
}

- (void)setupSearchControlForTraitCollection:(id)collection
{
  collectionCopy = collection;
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
  if ([collectionCopy horizontalSizeClass] == 2)
  {
    [v13 removeFromSuperview];
    superview = [(UISearchBar *)v4 superview];

    if (!superview)
    {
      view = [(MainWindowRootViewController *)self view];
      [view addSubview:v4];
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
  view = [(MainWindowRootViewController *)self view];
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
  superview = [(UISearchBar *)self->_searchBar superview];
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

  viewSwitcher = [(RootNavigationController *)self->_rootNavigationController viewSwitcher];
  [viewSwitcher frame];
  MidY = CGRectGetMidY(v41);

  LODWORD(viewSwitcher) = CalInterfaceIsLeftToRight();
  view = [(MainWindowRootViewController *)self view];
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
    [(MainWindowRootViewController *)self searchFieldWidth];
    v17 = v16;
    [*p_searchBar layoutMargins];
    v19 = v18;
    v21 = v20;
    if (self->_isSearching)
    {
      eKUI_viewHierarchy = [(MainWindowRootViewController *)self EKUI_viewHierarchy];
      [MainWindowRootViewController sidebarWidthForViewHierarchy:eKUI_viewHierarchy];
      v17 = v23 - (v14 + 16.0);
    }

    v24 = v21 + v19 + v17;
    [*p_searchBar frame];
    v26 = v25;
    if (CalInterfaceIsLeftToRight())
    {
      view2 = [(MainWindowRootViewController *)self view];
      [view2 bounds];
      v14 = v28 - v24 - (v14 - v21);
    }

    else
    {
      v14 = v14 - v19;
    }

    traitCollection = [(MainWindowRootViewController *)self traitCollection];
    if (EKUIUsesLargeTextLayout())
    {
      view3 = [(MainWindowRootViewController *)self view];
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
      view4 = [(MainWindowRootViewController *)self view];
      [view4 bounds];
      v14 = v34 - v24 - v14;
    }

    v35 = MidY + v26 * -0.5;
  }

  v39 = *p_searchBar;

  [v39 setFrame:{v14, v35, v24, v26}];
}

- (void)searchButtonTappedCreateAndAddSearchBar:(BOOL)bar
{
  if (!self->_isEndingSearch)
  {
    barCopy = bar;
    [(UIButton *)self->_searchButton removeFromSuperview];
    if (barCopy)
    {
      [(MainWindowRootViewController *)self createSearchBarIfNeeded];
      view = [(MainWindowRootViewController *)self view];
      [view addSubview:self->_searchBar];
    }

    self->_isSearching = 1;
    [(UISearchBar *)self->_searchBar setShowsCancelButton:1 animated:0];
    if (barCopy)
    {
      [(MainWindowRootViewController *)self layoutSearchControl];
      [(UISearchBar *)self->_searchBar layoutIfNeeded];
      [(UISearchBar *)self->_searchBar frame];
      v7 = v6;
      v9 = v8;
      v11 = v10;
      if (CalInterfaceIsLeftToRight())
      {
        view2 = [(MainWindowRootViewController *)self view];
        [view2 bounds];
        v14 = v13;
      }

      else
      {
        v14 = -v9;
      }

      [(UISearchBar *)self->_searchBar setFrame:v14, v7, v9, v11];
    }

    startSearch = [(MainWindowContentContainerViewController *)self->_secondaryContainerVC startSearch];
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
    [startSearch animateAlongsideTransition:v17 completion:v16];
  }
}

- (void)updatePrimaryViewControllerNavBar
{
  topViewController = [(UINavigationController *)self->_primaryVC topViewController];
  traitCollection = [(MainWindowRootViewController *)self traitCollection];
  horizontalSizeClass = [traitCollection horizontalSizeClass];

  if (horizontalSizeClass == 2)
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

  navigationItem = [topViewController navigationItem];
  [navigationItem _setBottomPalette:palette];
}

- (void)updatePrimaryViewControllerToolbar
{
  topViewController = [(UINavigationController *)self->_primaryVC topViewController];
  if ([topViewController conformsToProtocol:&OBJC_PROTOCOL___SideBarViewController] && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v3 = [topViewController toolbarVisibleInSplitBehavior:{-[UISplitViewController splitBehavior](self->_splitViewController, "splitBehavior")}];
  }

  else
  {
    toolbarItems = [topViewController toolbarItems];
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
      v12 = [CompactListViewController alloc];
      model = [(RootNavigationController *)self->_rootNavigationController model];
      view = [(MainWindowRootViewController *)self view];
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
  [(MasterNavigationPaletteView *)self->_paletteView setTitle:v16];
  [(MasterNavigationPaletteView *)self->_paletteView setSegmentedControl:segmentedControl];
  [(MasterNavigationPaletteView *)self->_paletteView setNeedsLayout];
  [(MasterNavigationPaletteView *)self->_paletteView layoutIfNeeded];
  paletteView = self->_paletteView;
  view3 = [(UINavigationController *)self->_primaryVC view];
  [view3 bounds];
  [(MasterNavigationPaletteView *)paletteView sizeThatFits:v22, v23];

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
      v11 = [(MainWindowRootViewController *)self viewControllerForSidebarState:state];
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
          v14 = [objc_opt_class() shouldHideInlineFocusBannerForSidebarState:state];
          paletteView = [(RootNavigationController *)self->_rootNavigationController paletteView];
          [paletteView setShouldHideInlineFocusBanner:v14];
        }

        else
        {
          transitionCoordinator = [(UISplitViewController *)self->_splitViewController transitionCoordinator];

          if (transitionCoordinator)
          {

            goto LABEL_41;
          }

          self->_animatingSidebar = [(UISplitViewController *)self->_splitViewController splitBehavior]== 1;
          [(UISplitViewController *)self->_splitViewController showColumn:0];
          transitionCoordinator2 = [(UISplitViewController *)self->_splitViewController transitionCoordinator];
          v29[0] = _NSConcreteStackBlock;
          v29[1] = 3221225472;
          v29[2] = sub_100109900;
          v29[3] = &unk_10020F488;
          v29[4] = self;
          v29[5] = state;
          v27[0] = _NSConcreteStackBlock;
          v27[1] = 3221225472;
          v27[2] = sub_1001099B8;
          v27[3] = &unk_10020F1F0;
          v27[4] = self;
          v28 = v11;
          [transitionCoordinator2 animateAlongsideTransition:v29 completion:v27];
        }

        if (state == 3)
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

      self->_currentSidebarState = state;

LABEL_31:
      self->_animatingSidebar = 0;
      [(MainWindowControlHeaderView *)self->_headerView updateButtonStateForSidebar:self->_currentSidebarState];
      if (completionCopy)
      {
        (completionCopy)[2](completionCopy, v11);
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

    transitionCoordinator3 = [(UISplitViewController *)self->_splitViewController transitionCoordinator];

    if (!transitionCoordinator3)
    {
      if (self->_currentSidebarState == 2)
      {
        [(MainWindowRootViewController *)self inboxWillDismiss];
      }

      self->_animatingSidebar = [(UISplitViewController *)self->_splitViewController splitBehavior]== 1;
      [(UISplitViewController *)self->_splitViewController hideColumn:0];
      transitionCoordinator4 = [(UISplitViewController *)self->_splitViewController transitionCoordinator];
      if (transitionCoordinator4)
      {
        v24 = transitionCoordinator4;
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
  if ([(MainWindowRootViewController *)self currentSidebarState]== 1)
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
    v8[2] = sub_100109B58;
    v8[3] = &unk_10020F4B0;
    v9 = completionCopy;
    [(MainWindowRootViewController *)self setCurrentSidebarState:1 completion:v8];
  }
}

- (void)calendarButtonTapped
{
  currentViewType = [(RootNavigationController *)self->_rootNavigationController currentViewType];
  v6 = @"currentView";
  v4 = [NSNumber numberWithInt:[(RootNavigationController *)self->_rootNavigationController currentViewTypeInt:currentViewType]];
  v7 = v4;
  v5 = [NSDictionary dictionaryWithObjects:&v7 forKeys:&v6 count:1];

  CalAnalyticsSendEvent();
  [(MainWindowRootViewController *)self setCurrentSidebarState:1];
}

- (void)showInboxSideBarWithCompletion:(id)completion
{
  completionCopy = completion;
  if ([(MainWindowRootViewController *)self currentSidebarState]== 2)
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
    v8[2] = sub_100109DBC;
    v8[3] = &unk_10020F4B0;
    v9 = completionCopy;
    [(MainWindowRootViewController *)self setCurrentSidebarState:2 completion:v8];
  }
}

- (void)inboxButtonTapped
{
  currentViewType = [(RootNavigationController *)self->_rootNavigationController currentViewType];
  v6 = @"currentView";
  v4 = [NSNumber numberWithInt:[(RootNavigationController *)self->_rootNavigationController currentViewTypeInt:currentViewType]];
  v7 = v4;
  v5 = [NSDictionary dictionaryWithObjects:&v7 forKeys:&v6 count:1];

  CalAnalyticsSendEvent();
  [(MainWindowRootViewController *)self setCurrentSidebarState:2];
}

- (void)showListSideBarWithCompletion:(id)completion
{
  completionCopy = completion;
  if ([(MainWindowRootViewController *)self currentSidebarState]== 3)
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
    v8[2] = sub_10010A020;
    v8[3] = &unk_10020F4B0;
    v9 = completionCopy;
    [(MainWindowRootViewController *)self setCurrentSidebarState:3 completion:v8];
  }
}

- (void)newEventButtonTapped:(id)tapped
{
  tappedCopy = tapped;
  if (self->_isSearching)
  {
    [(MainWindowContentContainerViewController *)self->_secondaryContainerVC cancelSearch];
  }

  [(RootNavigationController *)self->_rootNavigationController showAddEventAnimated:1 fromBarButtonItem:tappedCopy];
  currentViewType = [(RootNavigationController *)self->_rootNavigationController currentViewType];
  v8[0] = @"view";
  v8[1] = @"triggerLocation";
  v9[0] = @"navigationBar";
  v9[1] = @"Button";
  v8[2] = @"currentView";
  v6 = [NSNumber numberWithInt:[(RootNavigationController *)self->_rootNavigationController currentViewTypeInt:currentViewType]];
  v9[2] = v6;
  v7 = [NSDictionary dictionaryWithObjects:v9 forKeys:v8 count:3];

  CalAnalyticsSendEvent();
}

- (void)todayToolbarItemPressed
{
  topViewController = [(UINavigationController *)self->_primaryVC topViewController];
  v2 = CUIKTodayDate();
  [topViewController scrollToDate:v2 animated:1];
}

- (void)searchTapped
{
  [(MainWindowRootViewController *)self setCurrentSidebarState:0];
  superview = [(UISearchBar *)self->_searchBar superview];
  [(MainWindowRootViewController *)self searchButtonTappedCreateAndAddSearchBar:superview == 0];

  currentViewType = [(RootNavigationController *)self->_rootNavigationController currentViewType];
  v7 = @"currentView";
  v5 = [NSNumber numberWithInt:[(RootNavigationController *)self->_rootNavigationController currentViewTypeInt:currentViewType]];
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
  traitCollection = [(MainWindowRootViewController *)self traitCollection];
  v4 = [(MainWindowRootViewController *)self showsSearchBarForTraitCollection:traitCollection];

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
      view = [(MainWindowRootViewController *)self view];
      [view bounds];
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
  traitCollection = [(MainWindowRootViewController *)self traitCollection];
  v4 = [(MainWindowRootViewController *)self showsSearchBarForTraitCollection:traitCollection];

  if ((v4 & 1) == 0)
  {
    traitCollection2 = [(MainWindowRootViewController *)self traitCollection];
    [(MainWindowRootViewController *)self setupSearchControlForTraitCollection:traitCollection2];
  }
}

- (void)showEventAndCloseSidebarIfNeeded:(id)needed animated:(BOOL)animated showMode:(unint64_t)mode
{
  animatedCopy = animated;
  neededCopy = needed;
  if (self->_currentSidebarState && [(UISplitViewController *)self->_splitViewController splitBehavior]== 2 && ([(MainWindowRootViewController *)self setCurrentSidebarState:0], [(UISplitViewController *)self->_splitViewController transitionCoordinator], (v9 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v10 = v9;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10010A82C;
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
  topViewController = [(UINavigationController *)self->_primaryVC topViewController];
  view = [topViewController view];
  [view endEditing:1];

  [topViewController inboxWillDismiss];
}

- (void)attemptDisplayReviewPrompt
{
  view = [(MainWindowRootViewController *)self view];
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

  [(MainWindowRootViewController *)self presentViewController:v7 animated:1 completion:0];
}

- (void)paletteTodayButtonTapped:(id)tapped
{
  [(RootNavigationController *)self->_rootNavigationController todayPressed];
  if (self->_currentSidebarState == 3)
  {
    topViewController = [(UINavigationController *)self->_primaryVC topViewController];
    [topViewController scrollToTodayAnimated:1];
  }

  secondaryContainerVC = self->_secondaryContainerVC;

  [(MainWindowContentContainerViewController *)secondaryContainerVC todayTapped];
}

- (void)paletteAvatarViewTapped:(id)tapped
{
  avatarView = [tapped avatarView];
  [(MainWindowRootViewController *)self showIdentitySwitcherFromSourceView:avatarView];
}

- (BOOL)paletteShouldShowAvatarView
{
  ekui_futureTraitCollection = [(RootNavigationController *)self->_rootNavigationController ekui_futureTraitCollection];
  if ([(MainWindowRootViewController *)self canShowAvatarViewWithTraitCollection:ekui_futureTraitCollection])
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

  [(MainWindowRootViewController *)self updateNewEventButtonEnabledness];
  [(MainWindowRootViewController *)self updateErrorState];

  [(MainWindowRootViewController *)self updateInboxCount];
}

- (void)_delegatesChanged:(id)changed
{
  model = [(RootNavigationController *)self->_rootNavigationController model];
  -[MasterNavigationPaletteView setShowIdentity:](self->_paletteView, "setShowIdentity:", [model containsDelegateSources]);

  rootNavigationController = self->_rootNavigationController;
  traitCollection = [(MainWindowRootViewController *)self traitCollection];
  [(RootNavigationController *)rootNavigationController setAvatarViewVisible:[(MainWindowRootViewController *)self canShowAvatarViewWithTraitCollection:traitCollection]];

  [(MainWindowRootViewController *)self updateNewEventButtonEnabledness];
}

- (void)_updateAfterExtendedLaunch:(id)launch
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10010B2A8;
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
    v11.super_class = MainWindowRootViewController;
    v8 = [(MainWindowRootViewController *)&v11 canPerformAction:action withSender:senderCopy];
  }

  v9 = v8;

  return v9;
}

- (void)routeNewEventKeyCommand
{
  traitCollection = [(MainWindowRootViewController *)self traitCollection];
  if ([traitCollection horizontalSizeClass] != 2)
  {
    goto LABEL_4;
  }

  presentedViewController = [(MainWindowRootViewController *)self presentedViewController];
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

    [(MainWindowRootViewController *)self showAddEvent];
  }
}

- (void)routeSearchKeyCommand
{
  traitCollection = [(MainWindowRootViewController *)self traitCollection];
  if ([traitCollection horizontalSizeClass] != 2)
  {
    goto LABEL_4;
  }

  presentedViewController = [(MainWindowRootViewController *)self presentedViewController];
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

  [(MainWindowRootViewController *)self searchTapped];
  searchBar = self->_searchBar;

  [(UISearchBar *)searchBar becomeFirstResponder];
}

- (void)toggleSidebar:(id)sidebar
{
  if ([(MainWindowRootViewController *)self currentSidebarState])
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

  [(MainWindowRootViewController *)selfCopy2 setCurrentSidebarState:lastOpenSidebarState];
}

- (BOOL)_shouldUseSideBar
{
  traitCollection = [(MainWindowRootViewController *)self traitCollection];
  v3 = [traitCollection horizontalSizeClass] == 2;

  return v3;
}

- (void)showCalendarsViewWithCompletion:(id)completion
{
  completionCopy = completion;
  if ([(MainWindowRootViewController *)self _shouldUseSideBar])
  {
    [(MainWindowRootViewController *)self showCalendarsSideBarWithCompletion:completionCopy];
  }

  else
  {
    [(RootNavigationController *)self->_rootNavigationController showCalendarsAnimated:1 completion:completionCopy];
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
  resetToMonthView = [(RootNavigationController *)self->_rootNavigationController resetToMonthView];

  if (resetToMonthView)
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
  v7[2] = sub_10010BC44;
  v7[3] = &unk_10020F528;
  calendarCopy = calendar;
  initiallyCopy = initially;
  v6 = calendarCopy;
  [(MainWindowRootViewController *)self showCalendarsViewWithCompletion:v7];
}

- (void)pressesBegan:(id)began withEvent:(id)event
{
  beganCopy = began;
  eventCopy = event;
  isFirstResponder = [(MainWindowRootViewController *)self isFirstResponder];
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
          presentedViewController = [(MainWindowRootViewController *)selfCopy presentedViewController];

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
                v27 = [(MainWindowRootViewController *)selfCopy targetForAction:"handleSelectPreviousEventCommand" withSender:0];
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
                v33 = [(MainWindowRootViewController *)selfCopy targetForAction:"handleSelectNextEventCommand" withSender:0];
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
                v39 = [(MainWindowRootViewController *)selfCopy targetForAction:"handleSelectPreviousEventCommand" withSender:0];
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

              v43 = [(MainWindowRootViewController *)selfCopy targetForAction:"handleSelectNextEventCommand" withSender:0];
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
  v50.super_class = MainWindowRootViewController;
  [(MainWindowRootViewController *)&v50 pressesBegan:v12 withEvent:eventCopy];
LABEL_50:
}

- (void)dismissPresentedViewControllerAnimated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  presentedViewController = [(MainWindowRootViewController *)self presentedViewController];

  if (presentedViewController)
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10010C1BC;
    v8[3] = &unk_10020F550;
    v8[4] = self;
    v10 = animatedCopy;
    v9 = completionCopy;
    [(MainWindowRootViewController *)self dismissViewControllerAnimated:animatedCopy completion:v8];
  }

  else
  {
    [(RootNavigationController *)self->_rootNavigationController dismissPresentedViewControllerAnimated:animatedCopy completion:completionCopy];
  }
}

@end