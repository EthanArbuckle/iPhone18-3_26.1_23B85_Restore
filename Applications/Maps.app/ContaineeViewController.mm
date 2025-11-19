@interface ContaineeViewController
+ (BOOL)shouldDismissKeyboardOnSwipe;
+ (BOOL)shouldDismissKeyboardOnSwipeToDismiss;
- (BOOL)wantsScrollPocket;
- (CardPresentationController)cardPresentationController;
- (ContaineeViewControllerDelegate)containeeDelegate;
- (MacMenuPresentationController)macMenuPresentationController;
- (double)headerHeight;
- (double)heightForLayout:(unint64_t)a3;
- (double)topSpaceForScrollPocket;
- (id)keyCommands;
- (id)macPopoverPresentationController;
- (int64_t)preferredUserInterfaceStyle;
- (void)_maps_setShowActionBar:(BOOL)a3;
- (void)_updateActionBarVisibility;
- (void)_updateBlurCornerRadius;
- (void)_updateHeaderPocketInteraction:(id)a3;
- (void)_updateScrollInsets;
- (void)applyAlphaToContent:(double)a3;
- (void)didChangeContainerStyle:(unint64_t)a3;
- (void)didChangeLayout:(unint64_t)a3;
- (void)didDismissByGesture;
- (void)didInvalidateVisibleFrameByGesture;
- (void)handleDismissAction:(id)a3;
- (void)loadView;
- (void)setCardColor:(id)a3;
- (void)setContentScrollView:(id)a3 forEdge:(unint64_t)a4;
- (void)setNeedsUserInterfaceAppearanceUpdate;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)a3;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
- (void)willBecomeCurrent:(BOOL)a3;
- (void)willDismissByGesture;
- (void)willResignCurrent:(BOOL)a3;
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
  v2 = [(ContaineeViewController *)self cardPresentationController];
  v3 = [v2 containerViewController];
  v4 = [v3 preferredUserInterfaceStyle];

  return v4;
}

- (double)headerHeight
{
  v3 = [(ContaineeViewController *)self headerView];

  if (v3)
  {
    v4 = [(ContaineeViewController *)self forceCurrentWidthForHeaderHeightCalculations];
    v5 = [(ContaineeViewController *)self headerView];
    v6 = v5;
    if (v4)
    {
      v7 = [(ContaineeViewController *)self view];
      [v7 bounds];
      [v6 _maps_compressedSizeForWidth:0 withBlock:CGRectGetWidth(v14)];
      v9 = v8;
    }

    else
    {
      [v5 systemLayoutSizeFittingSize:{UILayoutFittingCompressedSize.width, UILayoutFittingCompressedSize.height}];
      v9 = v10;
    }

    if (v9 == 0.0)
    {
      v11 = [(ContaineeViewController *)self headerView];
      [v11 intrinsicContentSize];
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
  v3 = [(ContaineeViewController *)self view];
  [v3 setLayoutMargins:{0.0, 16.0, 0.0, 16.0}];

  v4 = [(ContaineeViewController *)self view];
  [v4 setPreservesSuperviewLayoutMargins:0];

  [(ContaineeViewController *)self setViewRespectsSystemMinimumLayoutMargins:0];
  if ([objc_opt_class() wantsDefaultHeaderContentViews])
  {
    v5 = +[UIColor clearColor];
    v6 = [(ContaineeViewController *)self view];
    [v6 setBackgroundColor:v5];

    v7 = [UIView alloc];
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
    v11 = [v7 initWithFrame:{CGRectZero.origin.x, y, width, height}];
    defaultContentView = self->_defaultContentView;
    self->_defaultContentView = v11;

    [(UIView *)self->_defaultContentView setTranslatesAutoresizingMaskIntoConstraints:0];
    v13 = [(UIView *)self->_defaultContentView layer];
    [v13 setAllowsGroupOpacity:0];

    v14 = +[UIColor clearColor];
    [(UIView *)self->_defaultContentView setBackgroundColor:v14];

    [(UIView *)self->_defaultContentView setPreservesSuperviewLayoutMargins:1];
    v15 = [(ContaineeViewController *)self view];
    [v15 addSubview:self->_defaultContentView];

    v16 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    defaultHeaderView = self->_defaultHeaderView;
    self->_defaultHeaderView = v16;

    [(UIView *)self->_defaultHeaderView setTranslatesAutoresizingMaskIntoConstraints:0];
    v18 = +[UIColor clearColor];
    [(UIView *)self->_defaultHeaderView setBackgroundColor:v18];

    [(UIView *)self->_defaultHeaderView setPreservesSuperviewLayoutMargins:1];
    v19 = [(ContaineeViewController *)self view];
    [v19 addSubview:self->_defaultHeaderView];

    v20 = [[MKViewWithHairline alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    homeIndicatorSafeAreaView = self->_homeIndicatorSafeAreaView;
    self->_homeIndicatorSafeAreaView = v20;

    [(MKViewWithHairline *)self->_homeIndicatorSafeAreaView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(MKViewWithHairline *)self->_homeIndicatorSafeAreaView setBottomHairlineHidden:1];
    [(MKViewWithHairline *)self->_homeIndicatorSafeAreaView setTopHairlineHidden:0];
    v22 = +[UIColor clearColor];
    [(MKViewWithHairline *)self->_homeIndicatorSafeAreaView setBackgroundColor:v22];

    [(MKViewWithHairline *)self->_homeIndicatorSafeAreaView setPreservesSuperviewLayoutMargins:1];
    v23 = [(ContaineeViewController *)self view];
    [v23 addSubview:self->_homeIndicatorSafeAreaView];

    v24 = objc_alloc_init(NSMutableArray);
    v25 = [(MKViewWithHairline *)self->_homeIndicatorSafeAreaView heightAnchor];
    v26 = [v25 constraintEqualToConstant:0.0];
    homeIndicatorSafeAreaHeightConstraint = self->_homeIndicatorSafeAreaHeightConstraint;
    self->_homeIndicatorSafeAreaHeightConstraint = v26;

    [v24 addObject:self->_homeIndicatorSafeAreaHeightConstraint];
    if ([objc_opt_class() wantsScrollPocketForDefaultHeader] && _UISolariumEnabled())
    {
      v74 = [(UIView *)self->_defaultHeaderView leadingAnchor];
      v76 = [(ContaineeViewController *)self view];
      v75 = [v76 leadingAnchor];
      v101 = [v74 constraintEqualToAnchor:v75];
      v104[0] = v101;
      v28 = [(UIView *)self->_defaultHeaderView trailingAnchor];
      v99 = [(ContaineeViewController *)self view];
      [v99 trailingAnchor];
      v98 = v100 = v28;
      v97 = [v28 constraintEqualToAnchor:?];
      v104[1] = v97;
      v29 = [(UIView *)self->_defaultHeaderView topAnchor];
      v95 = [(ContaineeViewController *)self view];
      v73 = [v95 topAnchor];
      v96 = v29;
      v94 = [v29 constraintEqualToAnchor:v73];
      v104[2] = v94;
      v30 = [(UIView *)self->_defaultHeaderView bottomAnchor];
      v92 = [(UIView *)self->_defaultContentView bottomAnchor];
      v93 = v30;
      v91 = [v30 constraintLessThanOrEqualToAnchor:?];
      v104[3] = v91;
      v31 = [(UIView *)self->_defaultContentView leadingAnchor];
      v89 = [(ContaineeViewController *)self view];
      [v89 leadingAnchor];
      v88 = v90 = v31;
      v87 = [v31 constraintEqualToAnchor:?];
      v104[4] = v87;
      v32 = [(UIView *)self->_defaultContentView trailingAnchor];
      v85 = [(ContaineeViewController *)self view];
      [v85 trailingAnchor];
      v84 = v86 = v32;
      v83 = [v32 constraintEqualToAnchor:?];
      v104[5] = v83;
      v33 = [(UIView *)self->_defaultContentView topAnchor];
      v81 = [(ContaineeViewController *)self view];
      [v81 topAnchor];
      v80 = v82 = v33;
      v79 = [v33 constraintEqualToAnchor:?];
      v104[6] = v79;
      v34 = [(UIView *)self->_defaultContentView bottomAnchor];
      v77 = [(MKViewWithHairline *)self->_homeIndicatorSafeAreaView topAnchor];
      v78 = v34;
      v72 = [v34 constraintEqualToAnchor:?];
      v104[7] = v72;
      v35 = [(MKViewWithHairline *)self->_homeIndicatorSafeAreaView leadingAnchor];
      v36 = [(ContaineeViewController *)self view];
      v37 = [v36 leadingAnchor];
      v38 = [v35 constraintEqualToAnchor:v37];
      v104[8] = v38;
      v70 = [(MKViewWithHairline *)self->_homeIndicatorSafeAreaView trailingAnchor];
      v71 = [(ContaineeViewController *)self view];
      v69 = [v71 trailingAnchor];
      v68 = [v70 constraintEqualToAnchor:v69];
      v104[9] = v68;
      v39 = [(MKViewWithHairline *)self->_homeIndicatorSafeAreaView bottomAnchor];
      v40 = [(ContaineeViewController *)self view];
      v41 = [v40 bottomAnchor];
      v42 = [v39 constraintEqualToAnchor:v41];
      v104[10] = v42;
      [NSArray arrayWithObjects:v104 count:11];
      v44 = v43 = v24;
      [v43 addObjectsFromArray:v44];

      v24 = v43;
      v45 = v74;

      v46 = v73;
      v47 = v72;

      v48 = v76;
      v49 = v75;
    }

    else
    {
      [objc_opt_class() contentViewTopConstraintPriority];
      v51 = v50;
      v52 = [(UIView *)self->_defaultHeaderView bottomAnchor];
      v53 = [(UIView *)self->_defaultContentView topAnchor];
      v45 = [v52 constraintEqualToAnchor:v53];

      LODWORD(v54) = v51;
      [v45 setPriority:v54];
      [objc_opt_class() contentViewBottomConstraintPriority];
      v56 = v55;
      v57 = [(MKViewWithHairline *)self->_homeIndicatorSafeAreaView bottomAnchor];
      v58 = [(ContaineeViewController *)self view];
      v59 = [v58 bottomAnchor];
      v60 = [v57 constraintEqualToAnchor:v59];

      LODWORD(v61) = v56;
      [v60 setPriority:v61];
      v49 = [(UIView *)self->_defaultHeaderView leadingAnchor];
      v101 = [(ContaineeViewController *)self view];
      v100 = [v101 leadingAnchor];
      v99 = [v49 constraintEqualToAnchor:?];
      v103[0] = v99;
      v62 = [(UIView *)self->_defaultHeaderView trailingAnchor];
      v97 = [(ContaineeViewController *)self view];
      [v97 trailingAnchor];
      v96 = v98 = v62;
      v95 = [v62 constraintEqualToAnchor:?];
      v103[1] = v95;
      v46 = [(UIView *)self->_defaultHeaderView topAnchor];
      v94 = [(ContaineeViewController *)self view];
      v93 = [v94 topAnchor];
      v92 = [v46 constraintEqualToAnchor:?];
      v103[2] = v92;
      v103[3] = v45;
      v63 = [(UIView *)self->_defaultContentView leadingAnchor];
      v90 = [(ContaineeViewController *)self view];
      [v90 leadingAnchor];
      v89 = v91 = v63;
      v88 = [v63 constraintEqualToAnchor:?];
      v103[4] = v88;
      v64 = [(UIView *)self->_defaultContentView trailingAnchor];
      v86 = [(ContaineeViewController *)self view];
      [v86 trailingAnchor];
      v85 = v87 = v64;
      v84 = [v64 constraintEqualToAnchor:?];
      v103[5] = v84;
      v65 = [(UIView *)self->_defaultContentView bottomAnchor];
      v82 = [(MKViewWithHairline *)self->_homeIndicatorSafeAreaView topAnchor];
      v83 = v65;
      v81 = [v65 constraintEqualToAnchor:?];
      v103[6] = v81;
      v66 = [(MKViewWithHairline *)self->_homeIndicatorSafeAreaView leadingAnchor];
      v79 = [(ContaineeViewController *)self view];
      [v79 leadingAnchor];
      v78 = v80 = v66;
      v77 = [v66 constraintEqualToAnchor:?];
      v103[7] = v77;
      v47 = [(MKViewWithHairline *)self->_homeIndicatorSafeAreaView trailingAnchor];
      v67 = self;
      v48 = v60;
      v35 = [(ContaineeViewController *)v67 view];
      v36 = [v35 trailingAnchor];
      v37 = [v47 constraintEqualToAnchor:v36];
      v103[8] = v37;
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

- (void)_maps_setShowActionBar:(BOOL)a3
{
  v4 = type metadata accessor for UITraitOverrides();
  __chkstk_darwin(v4);
  v5 = self;
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
  v3 = [(ContaineeViewController *)self cardPresentationController];
  v4 = [v3 containeeLayout] != 1;

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

- (void)didChangeContainerStyle:(unint64_t)a3
{
  v4 = [(ContaineeViewController *)self cardPresentationController];
  [v4 updateGrabber];

  [(ContaineeViewController *)self _updateBlurCornerRadius];
  v5 = [(ContaineeViewController *)self cardPresentationController];
  [v5 updateDimmingBehavior];

  [(ContaineeViewController *)self _updateActionBarVisibility];
  v6 = [(ContaineeViewController *)self cardPresentationController];
  [v6 grabberSafeAreaHeight];
  [(NSLayoutConstraint *)self->_homeIndicatorSafeAreaHeightConstraint setConstant:?];
}

- (void)didChangeLayout:(unint64_t)a3
{
  [(ContaineeViewController *)self _updateActionBarVisibility];
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 postNotificationName:@"ContaineeViewControllerLayoutDidChangeNotification" object:self];
}

- (void)didDismissByGesture
{
  v3 = [(ContaineeViewController *)self containeeDelegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(ContaineeViewController *)self containeeDelegate];
    [v5 containeeViewControllerDidDismissExternally:self];
  }
}

- (void)didInvalidateVisibleFrameByGesture
{
  if ([objc_opt_class() shouldDismissKeyboardOnSwipe])
  {
    v3 = [(ContaineeViewController *)self view];
    [v3 endEditing:1];
  }
}

- (void)willDismissByGesture
{
  if ([objc_opt_class() shouldDismissKeyboardOnSwipeToDismiss])
  {
    v3 = [(ContaineeViewController *)self view];
    [v3 endEditing:1];
  }
}

- (void)willBecomeCurrent:(BOOL)a3
{
  if (sub_10000FA08(self) == 5)
  {
    v4 = [(ContaineeViewController *)self view];
    [v4 _setSafeAreaInsetsFrozen:1];
  }
}

- (void)willResignCurrent:(BOOL)a3
{
  if (sub_10000FA08(self) == 5)
  {
    v4 = [(ContaineeViewController *)self view];
    [v4 _setSafeAreaInsetsFrozen:1];
  }
}

- (void)viewIsAppearing:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = ContaineeViewController;
  [(ContaineeViewController *)&v6 viewIsAppearing:a3];
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

- (void)_updateHeaderPocketInteraction:(id)a3
{
  v4 = a3;
  headerPocketInteraction = self->_headerPocketInteraction;
  v10 = v4;
  if (headerPocketInteraction)
  {
    [(UIScrollEdgeElementContainerInteraction *)headerPocketInteraction setScrollView:v4];
  }

  else
  {
    v6 = objc_alloc_init(UIScrollEdgeElementContainerInteraction);
    v7 = self->_headerPocketInteraction;
    self->_headerPocketInteraction = v6;

    [(UIScrollEdgeElementContainerInteraction *)self->_headerPocketInteraction setScrollView:v10];
    [(UIScrollEdgeElementContainerInteraction *)self->_headerPocketInteraction setEdge:1];
  }

  v8 = [(UIScrollEdgeElementContainerInteraction *)self->_headerPocketInteraction view];

  if (!v8)
  {
    v9 = [(ContaineeViewController *)self scrollPocketHeaderView];
    [v9 addInteraction:self->_headerPocketInteraction];
  }
}

- (void)setContentScrollView:(id)a3 forEdge:(unint64_t)a4
{
  v6 = a3;
  v7 = [(ContaineeViewController *)self contentScrollViewForEdge:a4];
  v8.receiver = self;
  v8.super_class = ContaineeViewController;
  [(ContaineeViewController *)&v8 setContentScrollView:v6 forEdge:a4];
  if ([(ContaineeViewController *)self wantsScrollPocket]&& v7 != v6)
  {
    [(ContaineeViewController *)self _updateHeaderPocketInteraction:v6];
    [(ContaineeViewController *)self _updateScrollInsets];
    [v6 _mapsui_scrollToTopAnimated:0];
  }
}

- (void)handleDismissAction:(id)a3
{
  v4 = a3;
  v5 = [(ContaineeViewController *)self containeeDelegate];
  [v5 containeeViewControllerGoToPreviousState:self withSender:v4];
}

- (void)applyAlphaToContent:(double)a3
{
  v4 = [(ContaineeViewController *)self contentView];
  [v4 setAlpha:a3];
}

- (double)heightForLayout:(unint64_t)a3
{
  v5 = [(ContaineeViewController *)self cardPresentationController];
  v6 = [v5 takesAvailableHeight];

  if (v6)
  {
    if (a3 - 3 <= 2)
    {
LABEL_5:
      v8 = [(ContaineeViewController *)self cardPresentationController];
      [v8 availableHeight];
      v7 = v9;

      return v7;
    }

    v7 = -1.0;
    if (sub_10000FA08(self) == 5)
    {
      return v7;
    }
  }

  if (a3 - 3 < 3)
  {
    goto LABEL_5;
  }

  if (a3 != 2)
  {
    v7 = -1.0;
    if (a3 == 1)
    {
      v11 = [(ContaineeViewController *)self cardPresentationController];
      [v11 bottomSafeOffset];
      v13 = v12;
      [(ContaineeViewController *)self headerHeight];
      v7 = v14 + v13;
    }

    return v7;
  }

  sub_100068BB8();
  return result;
}

- (void)setCardColor:(id)a3
{
  v5 = a3;
  objc_storeStrong(&self->_cardColor, a3);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(UIVisualEffectView *)self->_effectView setCustomBackgroundColor:v5];
  }
}

- (void)setNeedsUserInterfaceAppearanceUpdate
{
  v5.receiver = self;
  v5.super_class = ContaineeViewController;
  [(ContaineeViewController *)&v5 setNeedsUserInterfaceAppearanceUpdate];
  v3 = [(ContaineeViewController *)self preferredUserInterfaceStyle];
  v4 = [(ContaineeViewController *)self cardPresentationController];
  [v4 setPreferredUserInterfaceStyle:v3];
}

- (BOOL)wantsScrollPocket
{
  v2 = [objc_opt_class() wantsScrollPocketForDefaultHeader];
  if (v2)
  {

    LOBYTE(v2) = _UISolariumEnabled();
  }

  return v2;
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
  v3 = [(ContaineeViewController *)self view];
  [v3 bounds];
  [(UIVisualEffectView *)self->_effectView setFrame:?];

  v4 = [(ContaineeViewController *)self cardPresentationController];
  v5 = [v4 usingSheetPresentation];

  if (v5)
  {
    v6 = [(ContaineeViewController *)self cardPresentationController];
    [v6 sheetContentSize];
    [(ContaineeViewController *)self setPreferredContentSize:?];
  }

  v7 = [(ContaineeViewController *)self cardPresentationController];
  [v7 contentAlpha];
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
  v3 = [(ContaineeViewController *)self cardPresentationController];
  v4 = [v3 containerStyle];

  if (v4 == 6)
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

- (void)viewWillDisappear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = ContaineeViewController;
  [(ContaineeViewController *)&v5 viewWillDisappear:a3];
  v4 = [(ContaineeViewController *)self cardPresentationController];
  self->_retainedLayout = [v4 containeeLayout];
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = ContaineeViewController;
  [(ContaineeViewController *)&v11 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  v8 = [(ContaineeViewController *)self cardPresentationController];
  v9 = [v8 usingSheetPresentation];

  if (v9)
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100CE8FFC;
    v10[3] = &unk_101661710;
    v10[4] = self;
    [v7 animateAlongsideTransition:v10 completion:0];
  }
}

- (void)viewWillAppear:(BOOL)a3
{
  v18.receiver = self;
  v18.super_class = ContaineeViewController;
  [(ContaineeViewController *)&v18 viewWillAppear:a3];
  v4 = [(ContaineeViewController *)self cardPresentationController];
  [v4 grabberSafeAreaHeight];
  [(NSLayoutConstraint *)self->_homeIndicatorSafeAreaHeightConstraint setConstant:?];

  v5 = [(ContaineeViewController *)self cardPresentationController];
  v6 = [v5 usingSheetPresentation];

  if (qword_10195DF00 != -1)
  {
    dispatch_once(&qword_10195DF00, &stru_1016303F0);
  }

  if (byte_10195DF08 == 1)
  {
    v7 = [(ContaineeViewController *)self cardPresentationController];
    v8 = [v7 wantsFullscreen];
  }

  else
  {
    v8 = 0;
  }

  if (!self->_hasInsertedBackground && ((v6 | v8) & 1) != 0)
  {
    if (_UISolariumEnabled())
    {
      if (+[UIView _maps_sheetsNeedGlassBackground])
      {
        v9 = [(ContaineeViewController *)self view];
        [v9 _maps_applyGlassBackground];
      }
    }

    else
    {
      v10 = [(ContaineeViewController *)self cardPresentationController];
      v11 = +[MapsTheme visualEffectViewAllowingBlur:](MapsTheme, "visualEffectViewAllowingBlur:", [v10 blurInCardView]);

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v12 = v11;
        v13 = [(ContaineeViewController *)self cardPresentationController];
        v14 = [v13 cardColor];
        [(UIVisualEffectView *)v12 setCustomBackgroundColor:v14];
      }

      v15 = [(ContaineeViewController *)self view];
      [v15 addSubview:v11];

      v16 = [(ContaineeViewController *)self view];
      [v16 sendSubviewToBack:v11];

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