@interface InfoCardViewController
- (KeyboardProxyingView)keyboardProxyView;
- (MUInfoCardAnalyticsDelegate)analyticsDelegate;
- (double)heightForLayout:(unint64_t)layout;
- (double)placeViewControllerPlaceCardHeaderTitleTrailingConstant:(id)constant;
- (id)_createActionMenu;
- (id)headerMenuSortOrderByActionType;
- (id)menuElementForActionItem:(id)item;
- (id)preferredFocusEnvironments;
- (void)_headerView:(id)view handleCardButtonType:(unint64_t)type withPresentationOptions:(id)options;
- (void)_updateFixedHeaderViewPosition;
- (void)_updatePocketInteraction;
- (void)applyAlphaToContent:(double)content;
- (void)applyLayoutToContent:(unint64_t)content;
- (void)dealloc;
- (void)fixedHeaderViewTapped:(id)tapped;
- (void)fixedHeaderViewWithHeaderView:(id)view didSelect:(unint64_t)select;
- (void)handleDismissAction:(id)action;
- (void)instrumentDismissAction;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)scrollViewDidScroll:(id)scroll;
- (void)setContaineeDelegate:(id)delegate;
- (void)setContentViewController:(id)controller;
- (void)setHeaderTitle:(id)title;
- (void)setShowFixedHeader:(BOOL)header;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)willBecomeCurrent:(BOOL)current;
- (void)willChangeLayout:(unint64_t)layout;
@end

@implementation InfoCardViewController

- (void)scrollViewDidScroll:(id)scroll
{
  v9.receiver = self;
  v9.super_class = InfoCardViewController;
  [(ContaineeViewController *)&v9 scrollViewDidScroll:scroll];
  scrollView = [(MUInfoCardContentProtocol *)self->_contentViewController scrollView];
  [scrollView contentOffset];
  v6 = v5;
  contentViewController = [(InfoCardViewController *)self contentViewController];
  [contentViewController heightForContentAboveTitle];
  [(InfoCardViewController *)self setShowFixedHeader:v6 > v8];

  if ([(InfoCardViewController *)self showFixedHeader]|| sub_10000FA08(self) == 5)
  {
    [(InfoCardViewController *)self didScrollPastTransition];
  }
}

- (void)_headerView:(id)view handleCardButtonType:(unint64_t)type withPresentationOptions:(id)options
{
  if (type == 4)
  {
    [(InfoCardViewController *)self handleShareWithPresentationOptions:options];
  }

  else
  {
    [(InfoCardViewController *)self _handleDismissActionWithHeaderView:view];
  }
}

- (void)applyLayoutToContent:(unint64_t)content
{
  if (content - 1 > 4)
  {
    v3 = 0;
  }

  else
  {
    v3 = qword_101212E50[content - 1];
  }

  contentViewController = [(InfoCardViewController *)self contentViewController];
  [contentViewController set_mapkit_contentVisibility:v3];
}

- (void)setShowFixedHeader:(BOOL)header
{
  if (self->_showFixedHeader != header)
  {
    self->_showFixedHeader = header;
    [(InfoCardFixedHeaderView *)self->_fixedHeaderView setShowTitle:?];

    [(InfoCardViewController *)self _updatePocketInteraction];
  }
}

- (void)applyAlphaToContent:(double)content
{
  contentViewController = [(InfoCardViewController *)self contentViewController];
  [contentViewController setContentAlpha:content];

  cardPresentationController = [(ContaineeViewController *)self cardPresentationController];
  -[InfoCardViewController applyLayoutToContent:](self, "applyLayoutToContent:", [cardPresentationController containeeLayout]);
}

- (void)willBecomeCurrent:(BOOL)current
{
  v4.receiver = self;
  v4.super_class = InfoCardViewController;
  [(ContaineeViewController *)&v4 willBecomeCurrent:current];
  v3 = +[DeviceRecentLocations sharedInstance];
  [v3 updateLocationsWithCompletionHandler:0];
}

- (void)willChangeLayout:(unint64_t)layout
{
  v6.receiver = self;
  v6.super_class = InfoCardViewController;
  [(ContaineeViewController *)&v6 willChangeLayout:?];
  if (layout - 1 <= 1)
  {
    contentViewController = [(InfoCardViewController *)self contentViewController];
    [contentViewController scrollToTopAnimated:1];
  }
}

- (MUInfoCardAnalyticsDelegate)analyticsDelegate
{
  contentViewController = [(InfoCardViewController *)self contentViewController];
  v4 = [contentViewController conformsToProtocol:&OBJC_PROTOCOL___MUInfoCardAnalyticsDelegate];

  if (v4)
  {
    contentViewController2 = [(InfoCardViewController *)self contentViewController];
  }

  else
  {
    contentViewController2 = 0;
  }

  return contentViewController2;
}

- (void)fixedHeaderViewWithHeaderView:(id)view didSelect:(unint64_t)select
{
  viewCopy = view;
  v7 = objc_alloc_init(MUPresentationOptions);
  [v7 setSourceView:viewCopy];
  [viewCopy frame];
  [v7 setSourceRect:?];
  [(InfoCardViewController *)self _headerView:viewCopy handleCardButtonType:select withPresentationOptions:v7];
}

- (void)fixedHeaderViewTapped:(id)tapped
{
  analyticsDelegate = [(InfoCardViewController *)self analyticsDelegate];
  [analyticsDelegate infoCardAnalyticsDidSelectAction:6042 eventValue:0 feedbackDelegateSelector:0 classification:0];

  cardPresentationController = [(ContaineeViewController *)self cardPresentationController];
  [cardPresentationController wantsExpandLayout];
}

- (double)placeViewControllerPlaceCardHeaderTitleTrailingConstant:(id)constant
{
  fixedHeaderView = [(InfoCardViewController *)self fixedHeaderView];
  [fixedHeaderView trailingButtonsWidth];
  v5 = v4 + 8.0;

  return v5;
}

- (id)menuElementForActionItem:(id)item
{
  itemCopy = item;
  resolvedActionItem = [itemCopy resolvedActionItem];
  v6 = [resolvedActionItem titleForDisplayStyle:0];

  objc_initWeak(&location, self);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10057BDA0;
  v10[3] = &unk_101660418;
  v7 = itemCopy;
  v11 = v7;
  objc_copyWeak(&v12, &location);
  v8 = [UIAction actionWithTitle:v6 image:0 identifier:0 handler:v10];
  [v8 setAttributes:{objc_msgSend(v7, "enabled") ^ 1}];
  objc_destroyWeak(&v12);

  objc_destroyWeak(&location);

  return v8;
}

- (id)_createActionMenu
{
  v3 = [MKPlaceCardMenuBuildingOptions alloc];
  headerMenuSortOrderByActionType = [(InfoCardViewController *)self headerMenuSortOrderByActionType];
  v5 = [v3 initWithRequestedActionTypes:headerMenuSortOrderByActionType];

  [v5 setAddMismatchedItems:0];
  objc_initWeak(&location, self);
  headerActionItems = [(InfoCardViewController *)self headerActionItems];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10057BFAC;
  v9[3] = &unk_101622228;
  objc_copyWeak(&v10, &location);
  v7 = [MKPlaceCardActionItem buildActionMenuForItems:headerActionItems buildingOptions:v5 menuElementCreationBlock:v9];
  objc_destroyWeak(&v10);

  objc_destroyWeak(&location);

  return v7;
}

- (id)headerMenuSortOrderByActionType
{
  v2 = MKMenuSeperatorIdentifier;
  if (+[_TtC4Maps18LibraryUIUtilities isMyPlacesEnabled])
  {
    v39 = &off_1016E5FD8;
    v40 = &off_1016E5FF0;
    v41 = &off_1016E6008;
    v42 = &off_1016E6020;
    v43 = &off_1016E6038;
    v44 = v2;
    v45 = &off_1016E6050;
    v46 = &off_1016E6068;
    v47 = &off_1016E6080;
    v48 = v2;
    v49 = &off_1016E6098;
    v50 = &off_1016E60B0;
    v51 = &off_1016E60C8;
    v52 = &off_1016E60E0;
    v53 = &off_1016E60F8;
    v54 = v2;
    v55 = &off_1016E6110;
    v56 = v2;
    v57 = &off_1016E6128;
    v58 = &off_1016E6140;
    v59 = &off_1016E6158;
    v60 = &off_1016E6170;
    v61 = v2;
    v62 = &off_1016E6188;
    v63 = &off_1016E61A0;
    v64 = v2;
    v65 = &off_1016E61B8;
    v66 = v2;
    v67 = &off_1016E61D0;
    v68 = &off_1016E61E8;
    v69 = &off_1016E6200;
    v70 = v2;
    v71 = &off_1016E6218;
    v72 = &off_1016E6230;
    v73 = &off_1016E6248;
    v3 = &v39;
    v4 = 35;
  }

  else
  {
    v7 = &off_1016E6050;
    v8 = &off_1016E6068;
    v9 = &off_1016E6080;
    v10 = v2;
    v11 = &off_1016E6098;
    v12 = &off_1016E60B0;
    v13 = &off_1016E60C8;
    v14 = &off_1016E60E0;
    v15 = &off_1016E60F8;
    v16 = v2;
    v17 = &off_1016E6110;
    v18 = v2;
    v19 = &off_1016E6260;
    v20 = &off_1016E6278;
    v21 = &off_1016E6128;
    v22 = &off_1016E6140;
    v23 = &off_1016E6008;
    v24 = &off_1016E6158;
    v25 = &off_1016E6170;
    v26 = v2;
    v27 = &off_1016E6188;
    v28 = &off_1016E61A0;
    v29 = v2;
    v30 = &off_1016E61B8;
    v31 = v2;
    v32 = &off_1016E61D0;
    v33 = &off_1016E61E8;
    v34 = &off_1016E6200;
    v35 = v2;
    v36 = &off_1016E6218;
    v37 = &off_1016E6230;
    v38 = &off_1016E6248;
    v3 = &v7;
    v4 = 32;
  }

  v5 = [NSArray arrayWithObjects:v3 count:v4, v7, v8, v9, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65];

  return v5;
}

- (KeyboardProxyingView)keyboardProxyView
{
  if (!self->_keyboardProxyView && sub_10000FA08(self) == 5)
  {
    v3 = [[KeyboardProxyingView alloc] initWithFrame:0.0, 0.0, 10.0, 10.0];
    keyboardProxyView = self->_keyboardProxyView;
    self->_keyboardProxyView = v3;

    view = [(InfoCardViewController *)self view];
    [view addSubview:self->_keyboardProxyView];
  }

  v6 = self->_keyboardProxyView;

  return v6;
}

- (void)setContaineeDelegate:(id)delegate
{
  v8.receiver = self;
  v8.super_class = InfoCardViewController;
  [(ContaineeViewController *)&v8 setContaineeDelegate:delegate];
  containeeDelegate = [(ContaineeViewController *)self containeeDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    containeeDelegate2 = [(ContaineeViewController *)self containeeDelegate];
    keyboardProxyView = [(InfoCardViewController *)self keyboardProxyView];
    [containeeDelegate2 containeeViewController:self didCreateKeyboardProxy:keyboardProxyView];
  }
}

- (void)instrumentDismissAction
{
  analyticsDelegate = [(InfoCardViewController *)self analyticsDelegate];
  [analyticsDelegate infoCardAnalyticsDidSelectAction:4 target:201 eventValue:0 feedbackDelegateSelector:0 actionRichProviderId:0 classification:0];
}

- (void)handleDismissAction:(id)action
{
  actionCopy = action;
  [(InfoCardViewController *)self instrumentDismissAction];
  v5.receiver = self;
  v5.super_class = InfoCardViewController;
  [(ContaineeViewController *)&v5 handleDismissAction:actionCopy];
}

- (void)_updatePocketInteraction
{
  scrollView = [(MUInfoCardContentProtocol *)self->_contentViewController scrollView];
  if (scrollView)
  {
    v4 = scrollView;
    pocketInteraction = self->_pocketInteraction;
    if (pocketInteraction)
    {
      view = [(UIScrollEdgeElementContainerInteraction *)pocketInteraction view];
      fixedHeaderView = self->_fixedHeaderView;

      if (view == fixedHeaderView)
      {
        return;
      }
    }

    else
    {
    }

    v8 = self->_pocketInteraction;
    if (v8)
    {
      view2 = [(UIScrollEdgeElementContainerInteraction *)v8 view];
      [view2 removeInteraction:self->_pocketInteraction];

      v10 = self->_pocketInteraction;
      self->_pocketInteraction = 0;
    }

    v11 = objc_alloc_init(UIScrollEdgeElementContainerInteraction);
    scrollView2 = [(MUInfoCardContentProtocol *)self->_contentViewController scrollView];
    [v11 setScrollView:scrollView2];

    [v11 setEdge:1];
    v13 = self->_pocketInteraction;
    self->_pocketInteraction = v11;
    v14 = v11;

    [(InfoCardFixedHeaderView *)self->_fixedHeaderView addInteraction:v14];
  }
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = InfoCardViewController;
  [(ContaineeViewController *)&v3 viewDidLayoutSubviews];
  [(InfoCardViewController *)self _updatePocketInteraction];
}

- (void)setContentViewController:(id)controller
{
  controllerCopy = controller;
  contentViewController = self->_contentViewController;
  if (contentViewController != controllerCopy)
  {
    view = [(MUInfoCardContentProtocol *)contentViewController view];
    [view removeFromSuperview];

    [(MUInfoCardContentProtocol *)self->_contentViewController removeFromParentViewController];
    objc_storeStrong(&self->_contentViewController, controller);
    v8 = [DrivePreferences alloc];
    v9 = +[NSUserDefaults standardUserDefaults];
    v10 = [(DrivePreferences *)v8 initWithDefaults:v9];
    automobileOptions = [(DrivePreferences *)v10 automobileOptions];
    [(MUInfoCardContentProtocol *)self->_contentViewController setAutomobileOptions:automobileOptions];

    v12 = [TransitPreferences alloc];
    v13 = +[NSUserDefaults standardUserDefaults];
    v14 = [(WatchSyncedPreferences *)v12 initWithDefaults:v13];
    transitOptions = [(TransitPreferences *)v14 transitOptions];
    [(MUInfoCardContentProtocol *)self->_contentViewController setTransitOptions:transitOptions];

    v16 = [CyclePreferences alloc];
    v17 = +[NSUserDefaults standardUserDefaults];
    v18 = [(CyclePreferences *)v16 initWithDefaults:v17];
    cyclingOptions = [(CyclePreferences *)v18 cyclingOptions];
    [(MUInfoCardContentProtocol *)self->_contentViewController setCyclingOptions:cyclingOptions];

    v20 = [WalkPreferences alloc];
    v21 = +[NSUserDefaults standardUserDefaults];
    v22 = [(WalkPreferences *)v20 initWithDefaults:v21];
    walkingOptions = [(WalkPreferences *)v22 walkingOptions];
    [(MUInfoCardContentProtocol *)self->_contentViewController setWalkingOptions:walkingOptions];

    if (controllerCopy)
    {
      [(MUInfoCardContentProtocol *)controllerCopy setScrollViewDelegate:self];
      cardPresentationController = [(ContaineeViewController *)self cardPresentationController];
      -[InfoCardViewController willChangeLayout:](self, "willChangeLayout:", [cardPresentationController containeeLayout]);

      v28 = _NSConcreteStackBlock;
      v29 = 3221225472;
      v30 = sub_10057C970;
      v31 = &unk_101661A90;
      v32 = controllerCopy;
      selfCopy = self;
      [UIView performWithoutAnimation:&v28];
      pocketInteraction = self->_pocketInteraction;
      if (pocketInteraction)
      {
        v26 = [(UIScrollEdgeElementContainerInteraction *)pocketInteraction view:v28];
        [v26 removeInteraction:self->_pocketInteraction];

        v27 = self->_pocketInteraction;
        self->_pocketInteraction = 0;
      }

      [(InfoCardViewController *)self _updatePocketInteraction:v28];
    }
  }
}

- (double)heightForLayout:(unint64_t)layout
{
  if (layout == 3)
  {
    sub_10000FA08(self);
    goto LABEL_10;
  }

  if (layout != 2)
  {
    if (layout == 1)
    {
      cardPresentationController = [(ContaineeViewController *)self cardPresentationController];
      [cardPresentationController bottomSafeOffset];
      v6 = v5;
      contentViewController = [(InfoCardViewController *)self contentViewController];
      [objc_opt_class() headerHeightInMinimalMode];
      v9 = v8;
      headerView = [(InfoCardViewController *)self headerView];
      [headerView frame];
      if (v9 > CGRectGetHeight(v18))
      {
        contentViewController2 = [(InfoCardViewController *)self contentViewController];
        [objc_opt_class() headerHeightInMinimalMode];
      }

      else
      {
        contentViewController2 = [(InfoCardViewController *)self headerView];
        [contentViewController2 frame];
        Height = CGRectGetHeight(v19);
      }

      v16 = Height;

      v15 = v16 + v6;
      goto LABEL_13;
    }

LABEL_10:
    cardPresentationController = [(ContaineeViewController *)self cardPresentationController];
    [cardPresentationController availableHeight];
    v15 = v14;
LABEL_13:

    return v15;
  }

  sub_100068BB8();
  return result;
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  if (off_101927E60 == context)
  {
    if ([&off_1016ED970 containsObject:pathCopy])
    {
      v11 = [DrivePreferences alloc];
      v12 = +[NSUserDefaults standardUserDefaults];
      v13 = [(DrivePreferences *)v11 initWithDefaults:v12];
      automobileOptions = [(DrivePreferences *)v13 automobileOptions];

      contentViewController = [(InfoCardViewController *)self contentViewController];
      [contentViewController setAutomobileOptions:automobileOptions];
    }

    else
    {
      if (![pathCopy isEqualToString:@"DefaultDisabledTransitModesKey"])
      {
        goto LABEL_8;
      }

      v16 = [TransitPreferences alloc];
      v17 = +[NSUserDefaults standardUserDefaults];
      v18 = [(WatchSyncedPreferences *)v16 initWithDefaults:v17];
      automobileOptions = [(TransitPreferences *)v18 transitOptions];

      contentViewController = [(InfoCardViewController *)self contentViewController];
      [contentViewController setTransitOptions:automobileOptions];
    }

    goto LABEL_8;
  }

  v19.receiver = self;
  v19.super_class = InfoCardViewController;
  [(InfoCardViewController *)&v19 observeValueForKeyPath:pathCopy ofObject:object change:change context:context];
LABEL_8:
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  if (self->_isObservingUserDefaultsKVO)
  {
    v4 = +[NSUserDefaults standardUserDefaults];
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = &off_1016ED970;
    v6 = [&off_1016ED970 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v12;
      do
      {
        v9 = 0;
        do
        {
          if (*v12 != v8)
          {
            objc_enumerationMutation(&off_1016ED970);
          }

          [v4 removeObserver:self forKeyPath:*(*(&v11 + 1) + 8 * v9)];
          v9 = v9 + 1;
        }

        while (v7 != v9);
        v7 = [&off_1016ED970 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v7);
    }

    [v4 removeObserver:self forKeyPath:@"DefaultDisabledTransitModesKey"];
  }

  v10.receiver = self;
  v10.super_class = InfoCardViewController;
  [(InfoCardViewController *)&v10 dealloc];
}

- (id)preferredFocusEnvironments
{
  if (sub_10000FA08(self) == 5)
  {
    keyboardProxyView = [(InfoCardViewController *)self keyboardProxyView];
    v8[0] = keyboardProxyView;
    contentViewController = [(InfoCardViewController *)self contentViewController];
    v8[1] = contentViewController;
    preferredFocusEnvironments = [NSArray arrayWithObjects:v8 count:2];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = InfoCardViewController;
    preferredFocusEnvironments = [(InfoCardViewController *)&v7 preferredFocusEnvironments];
  }

  return preferredFocusEnvironments;
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = InfoCardViewController;
  [(InfoCardViewController *)&v5 viewDidDisappear:disappear];
  keyboardProxyView = self->_keyboardProxyView;
  self->_keyboardProxyView = 0;
}

- (void)viewDidAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = InfoCardViewController;
  [(InfoCardViewController *)&v5 viewDidAppear:appear];
  keyboardProxyView = [(InfoCardViewController *)self keyboardProxyView];
  [keyboardProxyView becomeFirstResponder];
}

- (void)_updateFixedHeaderViewPosition
{
  leadingAnchor = [(InfoCardFixedHeaderView *)self->_fixedHeaderView leadingAnchor];
  view = [(InfoCardViewController *)self view];
  leadingAnchor2 = [view leadingAnchor];
  v3 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v16[0] = v3;
  trailingAnchor = [(InfoCardFixedHeaderView *)self->_fixedHeaderView trailingAnchor];
  view2 = [(InfoCardViewController *)self view];
  trailingAnchor2 = [view2 trailingAnchor];
  v7 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v16[1] = v7;
  topAnchor = [(InfoCardFixedHeaderView *)self->_fixedHeaderView topAnchor];
  view3 = [(InfoCardViewController *)self view];
  topAnchor2 = [view3 topAnchor];
  v11 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v16[2] = v11;
  v12 = [NSArray arrayWithObjects:v16 count:3];
  [NSLayoutConstraint activateConstraints:v12];
}

- (void)setHeaderTitle:(id)title
{
  titleCopy = title;
  if (([(NSString *)self->_headerTitle isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_headerTitle, title);
    [(InfoCardFixedHeaderView *)self->_fixedHeaderView setTitle:titleCopy];
  }
}

- (void)viewDidLoad
{
  v21.receiver = self;
  v21.super_class = InfoCardViewController;
  [(ContaineeViewController *)&v21 viewDidLoad];
  cardPresentationController = [(ContaineeViewController *)self cardPresentationController];
  [cardPresentationController setAlwaysUseDefaultContaineeLayout:1];

  if (sub_10000FA08(self) == 5)
  {
    [(ContaineeViewController *)self setKeepOriginalSafeInsets:1];
    v4 = &kMUPlaceHorizontalMarginSpacing;
  }

  else
  {
    v4 = &qword_1012163A8;
  }

  view = [(InfoCardViewController *)self view];
  [view setLayoutMargins:{0.0, *v4, 0.0, *v4}];

  v6 = [[_TtC4Maps23InfoCardFixedHeaderView alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  fixedHeaderView = self->_fixedHeaderView;
  self->_fixedHeaderView = v6;

  v8 = objc_alloc_init(_TtC4Maps42InfoCardFixedHeaderViewButtonConfiguration);
  if ([(InfoCardViewController *)self supportsSharing])
  {
    [(InfoCardFixedHeaderViewButtonConfiguration *)v8 setLeadingCardButtonType:4];
  }

  [(InfoCardFixedHeaderView *)self->_fixedHeaderView setButtonConfiguration:v8];
  [(InfoCardFixedHeaderView *)self->_fixedHeaderView setDelegate:self];
  headerTitle = [(InfoCardViewController *)self headerTitle];
  [(InfoCardFixedHeaderView *)self->_fixedHeaderView setTitle:headerTitle];

  [(InfoCardFixedHeaderView *)self->_fixedHeaderView setTranslatesAutoresizingMaskIntoConstraints:0];
  view2 = [(InfoCardViewController *)self view];
  [view2 addSubview:self->_fixedHeaderView];

  [(InfoCardViewController *)self _updateFixedHeaderViewPosition];
  v11 = +[NSUserDefaults standardUserDefaults];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v12 = &off_1016ED970;
  v13 = [&off_1016ED970 countByEnumeratingWithState:&v17 objects:v22 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v18;
    do
    {
      v16 = 0;
      do
      {
        if (*v18 != v15)
        {
          objc_enumerationMutation(&off_1016ED970);
        }

        [v11 addObserver:self forKeyPath:*(*(&v17 + 1) + 8 * v16) options:0 context:{off_101927E60, v17}];
        v16 = v16 + 1;
      }

      while (v14 != v16);
      v14 = [&off_1016ED970 countByEnumeratingWithState:&v17 objects:v22 count:16];
    }

    while (v14);
  }

  [v11 addObserver:self forKeyPath:@"DefaultDisabledTransitModesKey" options:0 context:off_101927E60];
  self->_isObservingUserDefaultsKVO = 1;
}

@end