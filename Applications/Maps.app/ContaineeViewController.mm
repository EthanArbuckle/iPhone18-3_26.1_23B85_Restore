@interface ContaineeViewController
+ (BOOL)shouldDismissKeyboardOnSwipe;
+ (BOOL)shouldDismissKeyboardOnSwipeToDismiss;
- (BOOL)wantsScrollPocket;
- (CardPresentationController)cardPresentationController;
- (ContaineeViewControllerDelegate)containeeDelegate;
- (MacMenuPresentationController)macMenuPresentationController;
- (double)headerHeight;
- (double)heightForLayout:(unint64_t)layout;
- (double)topSpaceForScrollPocket;
- (id)keyCommands;
- (id)macPopoverPresentationController;
- (int64_t)preferredUserInterfaceStyle;
- (void)_maps_setShowActionBar:(BOOL)bar;
- (void)_updateActionBarVisibility;
- (void)_updateBlurCornerRadius;
- (void)_updateHeaderPocketInteraction:(id)interaction;
- (void)_updateScrollInsets;
- (void)applyAlphaToContent:(double)content;
- (void)didChangeContainerStyle:(unint64_t)style;
- (void)didChangeLayout:(unint64_t)layout;
- (void)didDismissByGesture;
- (void)didInvalidateVisibleFrameByGesture;
- (void)handleDismissAction:(id)action;
- (void)loadView;
- (void)setCardColor:(id)color;
- (void)setContentScrollView:(id)view forEdge:(unint64_t)edge;
- (void)setNeedsUserInterfaceAppearanceUpdate;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)appearing;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
- (void)willBecomeCurrent:(BOOL)current;
- (void)willDismissByGesture;
- (void)willResignCurrent:(BOOL)current;
@end

@implementation ContaineeViewController

- (CardPresentationController)cardPresentationController
{
  cardPresentationController = self->_cardPresentationController;
  if (!cardPresentationController)
  {
    v4 = [[CardPresentationController alloc] initWithViewController:self];
    v5 = self->_cardPresentationController;
    self->_cardPresentationController = v4;

    cardPresentationController = self->_cardPresentationController;
  }

  return cardPresentationController;
}

- (int64_t)preferredUserInterfaceStyle
{
  cardPresentationController = [(ContaineeViewController *)self cardPresentationController];
  containerViewController = [cardPresentationController containerViewController];
  preferredUserInterfaceStyle = [containerViewController preferredUserInterfaceStyle];

  return preferredUserInterfaceStyle;
}

- (double)headerHeight
{
  headerView = [(ContaineeViewController *)self headerView];

  if (headerView)
  {
    forceCurrentWidthForHeaderHeightCalculations = [(ContaineeViewController *)self forceCurrentWidthForHeaderHeightCalculations];
    headerView2 = [(ContaineeViewController *)self headerView];
    v6 = headerView2;
    if (forceCurrentWidthForHeaderHeightCalculations)
    {
      view = [(ContaineeViewController *)self view];
      [view bounds];
      [v6 _maps_compressedSizeForWidth:0 withBlock:CGRectGetWidth(v14)];
      v9 = v8;
    }

    else
    {
      [headerView2 systemLayoutSizeFittingSize:{UILayoutFittingCompressedSize.width, UILayoutFittingCompressedSize.height}];
      v9 = v10;
    }

    if (v9 == 0.0)
    {
      headerView3 = [(ContaineeViewController *)self headerView];
      [headerView3 intrinsicContentSize];
      v9 = v12;
    }
  }

  else
  {
    v9 = 0.0;
  }

  return fmax(v9, 60.0);
}

- (void)viewDidLoad
{
  v102.receiver = self;
  v102.super_class = ContaineeViewController;
  [(ContaineeViewController *)&v102 viewDidLoad];
  view = [(ContaineeViewController *)self view];
  [view setLayoutMargins:{0.0, 16.0, 0.0, 16.0}];

  view2 = [(ContaineeViewController *)self view];
  [view2 setPreservesSuperviewLayoutMargins:0];

  [(ContaineeViewController *)self setViewRespectsSystemMinimumLayoutMargins:0];
  if ([objc_opt_class() wantsDefaultHeaderContentViews])
  {
    v5 = +[UIColor clearColor];
    view3 = [(ContaineeViewController *)self view];
    [view3 setBackgroundColor:v5];

    v7 = [UIView alloc];
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
    v11 = [v7 initWithFrame:{CGRectZero.origin.x, y, width, height}];
    defaultContentView = self->_defaultContentView;
    self->_defaultContentView = v11;

    [(UIView *)self->_defaultContentView setTranslatesAutoresizingMaskIntoConstraints:0];
    layer = [(UIView *)self->_defaultContentView layer];
    [layer setAllowsGroupOpacity:0];

    v14 = +[UIColor clearColor];
    [(UIView *)self->_defaultContentView setBackgroundColor:v14];

    [(UIView *)self->_defaultContentView setPreservesSuperviewLayoutMargins:1];
    view4 = [(ContaineeViewController *)self view];
    [view4 addSubview:self->_defaultContentView];

    v16 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    defaultHeaderView = self->_defaultHeaderView;
    self->_defaultHeaderView = v16;

    [(UIView *)self->_defaultHeaderView setTranslatesAutoresizingMaskIntoConstraints:0];
    v18 = +[UIColor clearColor];
    [(UIView *)self->_defaultHeaderView setBackgroundColor:v18];

    [(UIView *)self->_defaultHeaderView setPreservesSuperviewLayoutMargins:1];
    view5 = [(ContaineeViewController *)self view];
    [view5 addSubview:self->_defaultHeaderView];

    v20 = [[MKViewWithHairline alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    homeIndicatorSafeAreaView = self->_homeIndicatorSafeAreaView;
    self->_homeIndicatorSafeAreaView = v20;

    [(MKViewWithHairline *)self->_homeIndicatorSafeAreaView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(MKViewWithHairline *)self->_homeIndicatorSafeAreaView setBottomHairlineHidden:1];
    [(MKViewWithHairline *)self->_homeIndicatorSafeAreaView setTopHairlineHidden:0];
    v22 = +[UIColor clearColor];
    [(MKViewWithHairline *)self->_homeIndicatorSafeAreaView setBackgroundColor:v22];

    [(MKViewWithHairline *)self->_homeIndicatorSafeAreaView setPreservesSuperviewLayoutMargins:1];
    view6 = [(ContaineeViewController *)self view];
    [view6 addSubview:self->_homeIndicatorSafeAreaView];

    v24 = objc_alloc_init(NSMutableArray);
    heightAnchor = [(MKViewWithHairline *)self->_homeIndicatorSafeAreaView heightAnchor];
    v26 = [heightAnchor constraintEqualToConstant:0.0];
    homeIndicatorSafeAreaHeightConstraint = self->_homeIndicatorSafeAreaHeightConstraint;
    self->_homeIndicatorSafeAreaHeightConstraint = v26;

    [v24 addObject:self->_homeIndicatorSafeAreaHeightConstraint];
    if ([objc_opt_class() wantsScrollPocketForDefaultHeader] && _UISolariumEnabled())
    {
      leadingAnchor = [(UIView *)self->_defaultHeaderView leadingAnchor];
      view7 = [(ContaineeViewController *)self view];
      leadingAnchor2 = [view7 leadingAnchor];
      view17 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
      v104[0] = view17;
      trailingAnchor = [(UIView *)self->_defaultHeaderView trailingAnchor];
      view8 = [(ContaineeViewController *)self view];
      [view8 trailingAnchor];
      v98 = leadingAnchor7 = trailingAnchor;
      view18 = [trailingAnchor constraintEqualToAnchor:?];
      v104[1] = view18;
      topAnchor = [(UIView *)self->_defaultHeaderView topAnchor];
      view9 = [(ContaineeViewController *)self view];
      topAnchor2 = [view9 topAnchor];
      v96 = topAnchor;
      view19 = [topAnchor constraintEqualToAnchor:topAnchor2];
      v104[2] = view19;
      bottomAnchor = [(UIView *)self->_defaultHeaderView bottomAnchor];
      bottomAnchor2 = [(UIView *)self->_defaultContentView bottomAnchor];
      topAnchor7 = bottomAnchor;
      v91 = [bottomAnchor constraintLessThanOrEqualToAnchor:?];
      v104[3] = v91;
      leadingAnchor3 = [(UIView *)self->_defaultContentView leadingAnchor];
      view10 = [(ContaineeViewController *)self view];
      [view10 leadingAnchor];
      v88 = view20 = leadingAnchor3;
      v87 = [leadingAnchor3 constraintEqualToAnchor:?];
      v104[4] = v87;
      trailingAnchor2 = [(UIView *)self->_defaultContentView trailingAnchor];
      view11 = [(ContaineeViewController *)self view];
      [view11 trailingAnchor];
      v84 = view21 = trailingAnchor2;
      v83 = [trailingAnchor2 constraintEqualToAnchor:?];
      v104[5] = v83;
      topAnchor3 = [(UIView *)self->_defaultContentView topAnchor];
      view12 = [(ContaineeViewController *)self view];
      [view12 topAnchor];
      v80 = topAnchor8 = topAnchor3;
      view22 = [topAnchor3 constraintEqualToAnchor:?];
      v104[6] = view22;
      bottomAnchor3 = [(UIView *)self->_defaultContentView bottomAnchor];
      topAnchor4 = [(MKViewWithHairline *)self->_homeIndicatorSafeAreaView topAnchor];
      v78 = bottomAnchor3;
      v72 = [bottomAnchor3 constraintEqualToAnchor:?];
      v104[7] = v72;
      leadingAnchor4 = [(MKViewWithHairline *)self->_homeIndicatorSafeAreaView leadingAnchor];
      view13 = [(ContaineeViewController *)self view];
      leadingAnchor5 = [view13 leadingAnchor];
      v38 = [leadingAnchor4 constraintEqualToAnchor:leadingAnchor5];
      v104[8] = v38;
      trailingAnchor3 = [(MKViewWithHairline *)self->_homeIndicatorSafeAreaView trailingAnchor];
      view14 = [(ContaineeViewController *)self view];
      trailingAnchor4 = [view14 trailingAnchor];
      v68 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
      v104[9] = v68;
      bottomAnchor4 = [(MKViewWithHairline *)self->_homeIndicatorSafeAreaView bottomAnchor];
      view15 = [(ContaineeViewController *)self view];
      bottomAnchor5 = [view15 bottomAnchor];
      v42 = [bottomAnchor4 constraintEqualToAnchor:bottomAnchor5];
      v104[10] = v42;
      [NSArray arrayWithObjects:v104 count:11];
      v44 = v43 = v24;
      [v43 addObjectsFromArray:v44];

      v24 = v43;
      v45 = leadingAnchor;

      topAnchor6 = topAnchor2;
      trailingAnchor7 = v72;

      v48 = view7;
      leadingAnchor6 = leadingAnchor2;
    }

    else
    {
      [objc_opt_class() contentViewTopConstraintPriority];
      v51 = v50;
      bottomAnchor6 = [(UIView *)self->_defaultHeaderView bottomAnchor];
      topAnchor5 = [(UIView *)self->_defaultContentView topAnchor];
      v45 = [bottomAnchor6 constraintEqualToAnchor:topAnchor5];

      LODWORD(v54) = v51;
      [v45 setPriority:v54];
      [objc_opt_class() contentViewBottomConstraintPriority];
      v56 = v55;
      bottomAnchor7 = [(MKViewWithHairline *)self->_homeIndicatorSafeAreaView bottomAnchor];
      view16 = [(ContaineeViewController *)self view];
      bottomAnchor8 = [view16 bottomAnchor];
      v60 = [bottomAnchor7 constraintEqualToAnchor:bottomAnchor8];

      LODWORD(v61) = v56;
      [v60 setPriority:v61];
      leadingAnchor6 = [(UIView *)self->_defaultHeaderView leadingAnchor];
      view17 = [(ContaineeViewController *)self view];
      leadingAnchor7 = [view17 leadingAnchor];
      view8 = [leadingAnchor6 constraintEqualToAnchor:?];
      v103[0] = view8;
      trailingAnchor5 = [(UIView *)self->_defaultHeaderView trailingAnchor];
      view18 = [(ContaineeViewController *)self view];
      [view18 trailingAnchor];
      v96 = v98 = trailingAnchor5;
      view9 = [trailingAnchor5 constraintEqualToAnchor:?];
      v103[1] = view9;
      topAnchor6 = [(UIView *)self->_defaultHeaderView topAnchor];
      view19 = [(ContaineeViewController *)self view];
      topAnchor7 = [view19 topAnchor];
      bottomAnchor2 = [topAnchor6 constraintEqualToAnchor:?];
      v103[2] = bottomAnchor2;
      v103[3] = v45;
      leadingAnchor8 = [(UIView *)self->_defaultContentView leadingAnchor];
      view20 = [(ContaineeViewController *)self view];
      [view20 leadingAnchor];
      view10 = v91 = leadingAnchor8;
      v88 = [leadingAnchor8 constraintEqualToAnchor:?];
      v103[4] = v88;
      trailingAnchor6 = [(UIView *)self->_defaultContentView trailingAnchor];
      view21 = [(ContaineeViewController *)self view];
      [view21 trailingAnchor];
      view11 = v87 = trailingAnchor6;
      v84 = [trailingAnchor6 constraintEqualToAnchor:?];
      v103[5] = v84;
      bottomAnchor9 = [(UIView *)self->_defaultContentView bottomAnchor];
      topAnchor8 = [(MKViewWithHairline *)self->_homeIndicatorSafeAreaView topAnchor];
      v83 = bottomAnchor9;
      view12 = [bottomAnchor9 constraintEqualToAnchor:?];
      v103[6] = view12;
      leadingAnchor9 = [(MKViewWithHairline *)self->_homeIndicatorSafeAreaView leadingAnchor];
      view22 = [(ContaineeViewController *)self view];
      [view22 leadingAnchor];
      v78 = v80 = leadingAnchor9;
      topAnchor4 = [leadingAnchor9 constraintEqualToAnchor:?];
      v103[7] = topAnchor4;
      trailingAnchor7 = [(MKViewWithHairline *)self->_homeIndicatorSafeAreaView trailingAnchor];
      selfCopy = self;
      v48 = v60;
      leadingAnchor4 = [(ContaineeViewController *)selfCopy view];
      view13 = [leadingAnchor4 trailingAnchor];
      leadingAnchor5 = [trailingAnchor7 constraintEqualToAnchor:view13];
      v103[8] = leadingAnchor5;
      v103[9] = v48;
      v38 = [NSArray arrayWithObjects:v103 count:10];
      [v24 addObjectsFromArray:v38];
    }

    [NSLayoutConstraint activateConstraints:v24];
  }
}

- (void)_updateScrollInsets
{
  if ([(ContaineeViewController *)self wantsScrollPocket])
  {
    v11 = [(ContaineeViewController *)self contentScrollViewForEdge:1];
    [v11 contentInset];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    [(ContaineeViewController *)self topSpaceForScrollPocket];
    v10 = v9;
    [v11 setContentInset:?];
    [v11 setScrollIndicatorInsets:{v10, v4, v6, v8}];
  }
}

- (void)_maps_setShowActionBar:(BOOL)bar
{
  v4 = type metadata accessor for UITraitOverrides();
  __chkstk_darwin(v4);
  selfCopy = self;
  UIViewController.traitOverrides.getter();
  UIMutableTraits.shouldShowActionBar.setter();
  UIViewController.traitOverrides.setter();
}

- (ContaineeViewControllerDelegate)containeeDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_containeeDelegate);

  return WeakRetained;
}

- (void)_updateActionBarVisibility
{
  cardPresentationController = [(ContaineeViewController *)self cardPresentationController];
  v4 = [cardPresentationController containeeLayout] != 1;

  [(ContaineeViewController *)self _maps_setShowActionBar:v4];
}

- (id)macPopoverPresentationController
{
  popoverPresentationController = self->_popoverPresentationController;
  if (!popoverPresentationController)
  {
    v4 = [[MacPopoverPresentationController alloc] initWithContaineeViewController:self];
    v5 = self->_popoverPresentationController;
    self->_popoverPresentationController = v4;

    popoverPresentationController = self->_popoverPresentationController;
  }

  return popoverPresentationController;
}

- (MacMenuPresentationController)macMenuPresentationController
{
  menuPresentationController = self->_menuPresentationController;
  if (!menuPresentationController)
  {
    v4 = [[MacMenuPresentationController alloc] initWithContaineeViewController:self];
    v5 = self->_menuPresentationController;
    self->_menuPresentationController = v4;

    menuPresentationController = self->_menuPresentationController;
  }

  return menuPresentationController;
}

- (id)keyCommands
{
  v2 = [UIKeyCommand keyCommandWithInput:UIKeyInputEscape modifierFlags:0 action:"handleDismissAction:"];
  v5 = v2;
  v3 = [NSArray arrayWithObjects:&v5 count:1];

  return v3;
}

- (void)didChangeContainerStyle:(unint64_t)style
{
  cardPresentationController = [(ContaineeViewController *)self cardPresentationController];
  [cardPresentationController updateGrabber];

  [(ContaineeViewController *)self _updateBlurCornerRadius];
  cardPresentationController2 = [(ContaineeViewController *)self cardPresentationController];
  [cardPresentationController2 updateDimmingBehavior];

  [(ContaineeViewController *)self _updateActionBarVisibility];
  cardPresentationController3 = [(ContaineeViewController *)self cardPresentationController];
  [cardPresentationController3 grabberSafeAreaHeight];
  [(NSLayoutConstraint *)self->_homeIndicatorSafeAreaHeightConstraint setConstant:?];
}

- (void)didChangeLayout:(unint64_t)layout
{
  [(ContaineeViewController *)self _updateActionBarVisibility];
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 postNotificationName:@"ContaineeViewControllerLayoutDidChangeNotification" object:self];
}

- (void)didDismissByGesture
{
  containeeDelegate = [(ContaineeViewController *)self containeeDelegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    containeeDelegate2 = [(ContaineeViewController *)self containeeDelegate];
    [containeeDelegate2 containeeViewControllerDidDismissExternally:self];
  }
}

- (void)didInvalidateVisibleFrameByGesture
{
  if ([objc_opt_class() shouldDismissKeyboardOnSwipe])
  {
    view = [(ContaineeViewController *)self view];
    [view endEditing:1];
  }
}

- (void)willDismissByGesture
{
  if ([objc_opt_class() shouldDismissKeyboardOnSwipeToDismiss])
  {
    view = [(ContaineeViewController *)self view];
    [view endEditing:1];
  }
}

- (void)willBecomeCurrent:(BOOL)current
{
  if (sub_10000FA08(self) == 5)
  {
    view = [(ContaineeViewController *)self view];
    [view _setSafeAreaInsetsFrozen:1];
  }
}

- (void)willResignCurrent:(BOOL)current
{
  if (sub_10000FA08(self) == 5)
  {
    view = [(ContaineeViewController *)self view];
    [view _setSafeAreaInsetsFrozen:1];
  }
}

- (void)viewIsAppearing:(BOOL)appearing
{
  v6.receiver = self;
  v6.super_class = ContaineeViewController;
  [(ContaineeViewController *)&v6 viewIsAppearing:appearing];
  if ([(ContaineeViewController *)self wantsScrollPocket])
  {
    v4 = [(ContaineeViewController *)self contentScrollViewForEdge:1];
    if (v4 || ([(ContaineeViewController *)self contentScrollView], (v4 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v5 = v4;
      [(ContaineeViewController *)self setContentScrollView:v4 forEdge:1];
    }
  }
}

- (void)_updateHeaderPocketInteraction:(id)interaction
{
  interactionCopy = interaction;
  headerPocketInteraction = self->_headerPocketInteraction;
  v10 = interactionCopy;
  if (headerPocketInteraction)
  {
    [(UIScrollEdgeElementContainerInteraction *)headerPocketInteraction setScrollView:interactionCopy];
  }

  else
  {
    v6 = objc_alloc_init(UIScrollEdgeElementContainerInteraction);
    v7 = self->_headerPocketInteraction;
    self->_headerPocketInteraction = v6;

    [(UIScrollEdgeElementContainerInteraction *)self->_headerPocketInteraction setScrollView:v10];
    [(UIScrollEdgeElementContainerInteraction *)self->_headerPocketInteraction setEdge:1];
  }

  view = [(UIScrollEdgeElementContainerInteraction *)self->_headerPocketInteraction view];

  if (!view)
  {
    scrollPocketHeaderView = [(ContaineeViewController *)self scrollPocketHeaderView];
    [scrollPocketHeaderView addInteraction:self->_headerPocketInteraction];
  }
}

- (void)setContentScrollView:(id)view forEdge:(unint64_t)edge
{
  viewCopy = view;
  v7 = [(ContaineeViewController *)self contentScrollViewForEdge:edge];
  v8.receiver = self;
  v8.super_class = ContaineeViewController;
  [(ContaineeViewController *)&v8 setContentScrollView:viewCopy forEdge:edge];
  if ([(ContaineeViewController *)self wantsScrollPocket]&& v7 != viewCopy)
  {
    [(ContaineeViewController *)self _updateHeaderPocketInteraction:viewCopy];
    [(ContaineeViewController *)self _updateScrollInsets];
    [viewCopy _mapsui_scrollToTopAnimated:0];
  }
}

- (void)handleDismissAction:(id)action
{
  actionCopy = action;
  containeeDelegate = [(ContaineeViewController *)self containeeDelegate];
  [containeeDelegate containeeViewControllerGoToPreviousState:self withSender:actionCopy];
}

- (void)applyAlphaToContent:(double)content
{
  contentView = [(ContaineeViewController *)self contentView];
  [contentView setAlpha:content];
}

- (double)heightForLayout:(unint64_t)layout
{
  cardPresentationController = [(ContaineeViewController *)self cardPresentationController];
  takesAvailableHeight = [cardPresentationController takesAvailableHeight];

  if (takesAvailableHeight)
  {
    if (layout - 3 <= 2)
    {
LABEL_5:
      cardPresentationController2 = [(ContaineeViewController *)self cardPresentationController];
      [cardPresentationController2 availableHeight];
      v7 = v9;

      return v7;
    }

    v7 = -1.0;
    if (sub_10000FA08(self) == 5)
    {
      return v7;
    }
  }

  if (layout - 3 < 3)
  {
    goto LABEL_5;
  }

  if (layout != 2)
  {
    v7 = -1.0;
    if (layout == 1)
    {
      cardPresentationController3 = [(ContaineeViewController *)self cardPresentationController];
      [cardPresentationController3 bottomSafeOffset];
      v13 = v12;
      [(ContaineeViewController *)self headerHeight];
      v7 = v14 + v13;
    }

    return v7;
  }

  sub_100068BB8();
  return result;
}

- (void)setCardColor:(id)color
{
  colorCopy = color;
  objc_storeStrong(&self->_cardColor, color);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(UIVisualEffectView *)self->_effectView setCustomBackgroundColor:colorCopy];
  }
}

- (void)setNeedsUserInterfaceAppearanceUpdate
{
  v5.receiver = self;
  v5.super_class = ContaineeViewController;
  [(ContaineeViewController *)&v5 setNeedsUserInterfaceAppearanceUpdate];
  preferredUserInterfaceStyle = [(ContaineeViewController *)self preferredUserInterfaceStyle];
  cardPresentationController = [(ContaineeViewController *)self cardPresentationController];
  [cardPresentationController setPreferredUserInterfaceStyle:preferredUserInterfaceStyle];
}

- (BOOL)wantsScrollPocket
{
  wantsScrollPocketForDefaultHeader = [objc_opt_class() wantsScrollPocketForDefaultHeader];
  if (wantsScrollPocketForDefaultHeader)
  {

    LOBYTE(wantsScrollPocketForDefaultHeader) = _UISolariumEnabled();
  }

  return wantsScrollPocketForDefaultHeader;
}

- (double)topSpaceForScrollPocket
{
  [(UIView *)self->_defaultHeaderView frame];

  return CGRectGetHeight(*&v2);
}

- (void)viewDidLayoutSubviews
{
  v8.receiver = self;
  v8.super_class = ContaineeViewController;
  [(ContaineeViewController *)&v8 viewDidLayoutSubviews];
  view = [(ContaineeViewController *)self view];
  [view bounds];
  [(UIVisualEffectView *)self->_effectView setFrame:?];

  cardPresentationController = [(ContaineeViewController *)self cardPresentationController];
  usingSheetPresentation = [cardPresentationController usingSheetPresentation];

  if (usingSheetPresentation)
  {
    cardPresentationController2 = [(ContaineeViewController *)self cardPresentationController];
    [cardPresentationController2 sheetContentSize];
    [(ContaineeViewController *)self setPreferredContentSize:?];
  }

  cardPresentationController3 = [(ContaineeViewController *)self cardPresentationController];
  [cardPresentationController3 contentAlpha];
  [(ContaineeViewController *)self applyAlphaToContent:?];

  [(ContaineeViewController *)self _updateScrollInsets];
  [(ContaineeViewController *)self _updateActionBarVisibility];
}

- (void)loadView
{
  v3 = objc_alloc([(ContaineeViewController *)self viewClass]);
  v4 = +[UIScreen mainScreen];
  [v4 bounds];
  v5 = [v3 initWithFrame:?];

  [v5 setAutoresizingMask:18];
  [(ContaineeViewController *)self setView:v5];
}

- (void)_updateBlurCornerRadius
{
  cardPresentationController = [(ContaineeViewController *)self cardPresentationController];
  containerStyle = [cardPresentationController containerStyle];

  if (containerStyle == 6)
  {
    v5 = 15;
  }

  else
  {
    v5 = 3;
  }

  effectView = self->_effectView;
  +[MapsTheme cardCornerRadius];

  [(UIVisualEffectView *)effectView _setCornerRadius:1 continuous:v5 maskedCorners:?];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = ContaineeViewController;
  [(ContaineeViewController *)&v5 viewWillDisappear:disappear];
  cardPresentationController = [(ContaineeViewController *)self cardPresentationController];
  self->_retainedLayout = [cardPresentationController containeeLayout];
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  coordinatorCopy = coordinator;
  v11.receiver = self;
  v11.super_class = ContaineeViewController;
  [(ContaineeViewController *)&v11 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  cardPresentationController = [(ContaineeViewController *)self cardPresentationController];
  usingSheetPresentation = [cardPresentationController usingSheetPresentation];

  if (usingSheetPresentation)
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100CE8FFC;
    v10[3] = &unk_101661710;
    v10[4] = self;
    [coordinatorCopy animateAlongsideTransition:v10 completion:0];
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  v18.receiver = self;
  v18.super_class = ContaineeViewController;
  [(ContaineeViewController *)&v18 viewWillAppear:appear];
  cardPresentationController = [(ContaineeViewController *)self cardPresentationController];
  [cardPresentationController grabberSafeAreaHeight];
  [(NSLayoutConstraint *)self->_homeIndicatorSafeAreaHeightConstraint setConstant:?];

  cardPresentationController2 = [(ContaineeViewController *)self cardPresentationController];
  usingSheetPresentation = [cardPresentationController2 usingSheetPresentation];

  if (qword_10195DF00 != -1)
  {
    dispatch_once(&qword_10195DF00, &stru_1016303F0);
  }

  if (byte_10195DF08 == 1)
  {
    cardPresentationController3 = [(ContaineeViewController *)self cardPresentationController];
    wantsFullscreen = [cardPresentationController3 wantsFullscreen];
  }

  else
  {
    wantsFullscreen = 0;
  }

  if (!self->_hasInsertedBackground && ((usingSheetPresentation | wantsFullscreen) & 1) != 0)
  {
    if (_UISolariumEnabled())
    {
      if (+[UIView _maps_sheetsNeedGlassBackground])
      {
        view = [(ContaineeViewController *)self view];
        [view _maps_applyGlassBackground];
      }
    }

    else
    {
      cardPresentationController4 = [(ContaineeViewController *)self cardPresentationController];
      v11 = +[MapsTheme visualEffectViewAllowingBlur:](MapsTheme, "visualEffectViewAllowingBlur:", [cardPresentationController4 blurInCardView]);

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v12 = v11;
        cardPresentationController5 = [(ContaineeViewController *)self cardPresentationController];
        cardColor = [cardPresentationController5 cardColor];
        [(UIVisualEffectView *)v12 setCustomBackgroundColor:cardColor];
      }

      view2 = [(ContaineeViewController *)self view];
      [view2 addSubview:v11];

      view3 = [(ContaineeViewController *)self view];
      [view3 sendSubviewToBack:v11];

      effectView = self->_effectView;
      self->_effectView = v11;

      [(ContaineeViewController *)self _updateBlurCornerRadius];
    }

    self->_hasInsertedBackground = 1;
  }
}

+ (BOOL)shouldDismissKeyboardOnSwipe
{
  if (qword_10195EF18 != -1)
  {
    dispatch_once(&qword_10195EF18, &stru_101650C60);
  }

  return byte_10195EF10;
}

+ (BOOL)shouldDismissKeyboardOnSwipeToDismiss
{
  if (qword_10195EF08 != -1)
  {
    dispatch_once(&qword_10195EF08, &stru_101650C40);
  }

  return byte_10195EF00;
}

@end