@interface BSUINavigationController
+ (NSDictionary)navigationBarFontAttributes;
+ (id)largeNavigationBarFontAttributesWithTraitCollection:(id)collection;
- (BOOL)accessibilityPerformEscape;
- (BOOL)bc_analyticsVisibilityOfChild:(id)child;
- (BOOL)bc_analyticsVisibilityOfSelf;
- (BOOL)useConcentricBarButtons;
- (BSUINavigationController)initWithNavigationBarClass:(Class)class toolbarClass:(Class)toolbarClass;
- (BSUINavigationController)initWithNibName:(id)name bundle:(id)bundle;
- (BSUINavigationController)initWithOptions:(id)options;
- (BSUINavigationController)initWithRootViewController:(id)controller;
- (UIView)wrapperView;
- (id)popToRootViewControllerAnimated:(BOOL)animated;
- (id)popToViewController:(id)controller animated:(BOOL)animated;
- (id)popViewControllerAnimated:(BOOL)animated;
- (unint64_t)supportedInterfaceOrientations;
- (void)_updateLayoutMarginsForViewController:(id)controller forInteractiveTransition:(BOOL)transition;
- (void)_updateManualScrollEdgeAppearanceProgressForScrollView:(id)view navigationItem:(id)item;
- (void)applyThemeBasedOnCurrentUserInterfaceStyle;
- (void)bc_analyticsVisibilityDidAppear;
- (void)bc_analyticsVisibilityWillDisappear;
- (void)pushViewController:(id)controller animated:(BOOL)animated;
- (void)setViewControllers:(id)controllers animated:(BOOL)animated;
- (void)updateLayoutMetrics;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewDidMoveToWindow:(id)window shouldAppearOrDisappear:(BOOL)disappear;
- (void)viewSafeAreaInsetsDidChange;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillLayoutSubviews;
@end

@implementation BSUINavigationController

- (BSUINavigationController)initWithNavigationBarClass:(Class)class toolbarClass:(Class)toolbarClass
{
  v8.receiver = self;
  v8.super_class = BSUINavigationController;
  v4 = [(BSUINavigationController *)&v8 initWithNavigationBarClass:class toolbarClass:toolbarClass];
  if (v4)
  {
    v5 = +[UITraitCollection bc_allAPITraits];
    v6 = [(BSUINavigationController *)v4 registerForTraitChanges:v5 withAction:"_traitCollectionDidChange:previousTraitCollection:"];
  }

  return v4;
}

- (BSUINavigationController)initWithNibName:(id)name bundle:(id)bundle
{
  v4 = [(BSUINavigationController *)self initWithNavigationBarClass:objc_opt_class() toolbarClass:0];
  v5 = v4;
  if (v4)
  {
    navigationBar = [(BSUINavigationController *)v4 navigationBar];
    [navigationBar setPrefersLargeTitles:1];
  }

  return v5;
}

- (BSUINavigationController)initWithRootViewController:(id)controller
{
  controllerCopy = controller;
  v5 = [(BSUINavigationController *)self init];
  v6 = v5;
  if (v5)
  {
    [(BSUINavigationController *)v5 pushViewController:controllerCopy animated:0];
  }

  return v6;
}

- (BSUINavigationController)initWithOptions:(id)options
{
  optionsCopy = options;
  v5 = [(BSUINavigationController *)self init];
  if (v5)
  {
    v6 = [optionsCopy objectForKeyedSubscript:@"prefersLargeTitles"];
    if (objc_opt_respondsToSelector())
    {
      bOOLValue = [v6 BOOLValue];
      navigationBar = [(BSUINavigationController *)v5 navigationBar];
      [navigationBar setPrefersLargeTitles:bOOLValue];
    }
  }

  return v5;
}

- (UIView)wrapperView
{
  wrapperView = self->_wrapperView;
  if (!wrapperView)
  {
    view = [(BSUINavigationController *)self view];
    v5 = [UIView alloc];
    [view frame];
    v6 = [v5 initWithFrame:?];
    v7 = self->_wrapperView;
    self->_wrapperView = v6;

    [(UIView *)self->_wrapperView setAutoresizingMask:18];
    [(UIView *)self->_wrapperView bounds];
    [view setFrame:?];
    [view setAutoresizingMask:18];
    [(UIView *)self->_wrapperView addSubview:view];

    wrapperView = self->_wrapperView;
  }

  return wrapperView;
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = BSUINavigationController;
  [(BSUINavigationController *)&v4 viewDidAppear:appear];
  [(BSUINavigationController *)self bc_analyticsVisibilityUpdateSubtree];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = BSUINavigationController;
  [(BSUINavigationController *)&v4 viewWillDisappear:disappear];
  [(BSUINavigationController *)self bc_analyticsVisibilitySubtreeWillDisappear];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = BSUINavigationController;
  [(BSUINavigationController *)&v4 viewDidDisappear:disappear];
  [(BSUINavigationController *)self bc_analyticsVisibilitySubtreeDidDisappear];
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = BSUINavigationController;
  [(BSUINavigationController *)&v4 viewDidLoad];
  view = [(BSUINavigationController *)self view];
  [view setAutoresizingMask:0];
}

- (void)viewWillLayoutSubviews
{
  v4.receiver = self;
  v4.super_class = BSUINavigationController;
  [(BSUINavigationController *)&v4 viewWillLayoutSubviews];
  [(BSUINavigationController *)self applyThemeBasedOnCurrentUserInterfaceStyle];
  topViewController = [(BSUINavigationController *)self topViewController];
  [(BSUINavigationController *)self _updateLayoutMarginsForViewController:topViewController];
}

- (void)viewSafeAreaInsetsDidChange
{
  v5.receiver = self;
  v5.super_class = BSUINavigationController;
  [(BSUINavigationController *)&v5 viewSafeAreaInsetsDidChange];
  objc_opt_class();
  presentedViewController = [(BSUINavigationController *)self presentedViewController];
  v4 = BUDynamicCast();

  [v4 presentingViewControllerSafeAreaInsetsDidChange:self];
}

- (unint64_t)supportedInterfaceOrientations
{
  if (isPad())
  {
    supportedInterfaceOrientations = &dword_1C + 2;
  }

  else
  {
    supportedInterfaceOrientations = &dword_0 + 2;
  }

  presentedViewController = [(BSUINavigationController *)self presentedViewController];
  v5 = objc_opt_new();
  if (presentedViewController)
  {
    do
    {
      [v5 addObject:presentedViewController];
      v4PresentedViewController = [presentedViewController presentedViewController];

      presentedViewController = v4PresentedViewController;
    }

    while (v4PresentedViewController);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  reverseObjectEnumerator = [v5 reverseObjectEnumerator];
  v8 = [reverseObjectEnumerator countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = *v18;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(reverseObjectEnumerator);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        if ([v11 conformsToProtocol:&OBJC_PROTOCOL___BCOrientationControlling])
        {
          supportedInterfaceOrientations = [v11 supportedInterfaceOrientations];
          LOBYTE(v8) = 1;
          goto LABEL_16;
        }
      }

      v8 = [reverseObjectEnumerator countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_16:

  topViewController = [(BSUINavigationController *)self topViewController];
  v13 = topViewController;
  if ((v8 & 1) == 0)
  {
    if (topViewController)
    {
      supportedInterfaceOrientations2 = [topViewController supportedInterfaceOrientations];
    }

    else
    {
      v16.receiver = self;
      v16.super_class = BSUINavigationController;
      supportedInterfaceOrientations2 = [(BSUINavigationController *)&v16 supportedInterfaceOrientations];
    }

    supportedInterfaceOrientations = supportedInterfaceOrientations2;
  }

  return supportedInterfaceOrientations;
}

- (void)applyThemeBasedOnCurrentUserInterfaceStyle
{
  view = [(BSUINavigationController *)self view];
  im_isStyleDark = [view im_isStyleDark];

  if (im_isStyleDark && ([(BSUINavigationController *)self _isInPopoverPresentation]& 1) != 0)
  {
    v5 = +[UIColor bc_booksSecondaryBackground];
  }

  else
  {
    v5 = +[UIColor bc_booksBackground];
  }

  v23 = v5;
  navigationBar = [(BSUINavigationController *)self navigationBar];
  standardAppearance = [navigationBar standardAppearance];
  v8 = [standardAppearance copy];

  v9 = +[BSUINavigationController navigationBarFontAttributes];
  [v8 setTitleTextAttributes:v9];

  traitCollection = [(BSUINavigationController *)self traitCollection];
  v11 = [BSUINavigationController largeNavigationBarFontAttributesWithTraitCollection:traitCollection];
  [v8 setLargeTitleTextAttributes:v11];

  navigationBar2 = [(BSUINavigationController *)self navigationBar];
  [navigationBar2 setStandardAppearance:v8];

  topViewController = [(BSUINavigationController *)self topViewController];
  v14 = BUProtocolCast();

  preferredNavigationBarTintColor = [v14 preferredNavigationBarTintColor];
  v16 = preferredNavigationBarTintColor;
  if (preferredNavigationBarTintColor)
  {
    v17 = preferredNavigationBarTintColor;
  }

  else
  {
    v17 = +[UIColor bc_booksKeyColor];
  }

  v18 = v17;

  navigationBar3 = [(BSUINavigationController *)self navigationBar];
  [navigationBar3 setBarStyle:im_isStyleDark];

  navigationBar4 = [(BSUINavigationController *)self navigationBar];
  [navigationBar4 setBarTintColor:v23];

  navigationBar5 = [(BSUINavigationController *)self navigationBar];
  [navigationBar5 setTintColor:v18];

  toolbar = [(BSUINavigationController *)self toolbar];
  [toolbar setBarStyle:im_isStyleDark];
}

- (void)viewDidMoveToWindow:(id)window shouldAppearOrDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = BSUINavigationController;
  [(BSUINavigationController *)&v5 viewDidMoveToWindow:window shouldAppearOrDisappear:disappear];
  [(BSUINavigationController *)self applyThemeBasedOnCurrentUserInterfaceStyle];
}

- (BOOL)useConcentricBarButtons
{
  presentingViewController = [(BSUINavigationController *)self presentingViewController];
  presentedViewController = [presentingViewController presentedViewController];

  modalPresentationStyle = [presentedViewController modalPresentationStyle];
  v5 = _UISolariumEnabled();
  v6 = (modalPresentationStyle - 1) < 2;
  if (!presentedViewController)
  {
    v6 = 0;
  }

  if (v5)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_updateLayoutMarginsForViewController:(id)controller forInteractiveTransition:(BOOL)transition
{
  transitionCopy = transition;
  controllerCopy = controller;
  if (![(BSUINavigationController *)self useConcentricBarButtons])
  {
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_2834C;
    v14[3] = &unk_387078;
    v14[4] = self;
    v15 = controllerCopy;
    v7 = objc_retainBlock(v14);
    transitionCoordinator = [(BSUINavigationController *)self transitionCoordinator];
    v9 = transitionCoordinator;
    if (transitionCoordinator && [transitionCoordinator isInteractive] == transitionCopy)
    {
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_285BC;
      v12[3] = &unk_387B78;
      v13 = v7;
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_285D0;
      v10[3] = &unk_387B78;
      v11 = v13;
      [v9 animateAlongsideTransition:v12 completion:v10];
    }

    else
    {
      (v7[2])(v7, 0);
    }
  }
}

- (void)updateLayoutMetrics
{
  viewIfLoaded = [(BSUINavigationController *)self viewIfLoaded];
  [viewIfLoaded setNeedsLayout];
}

- (void)pushViewController:(id)controller animated:(BOOL)animated
{
  animatedCopy = animated;
  controllerCopy = controller;
  [(BSUINavigationController *)self _updateLayoutMarginsForViewController:controllerCopy];
  v7.receiver = self;
  v7.super_class = BSUINavigationController;
  [(BSUINavigationController *)&v7 pushViewController:controllerCopy animated:animatedCopy];
}

- (id)popViewControllerAnimated:(BOOL)animated
{
  v7.receiver = self;
  v7.super_class = BSUINavigationController;
  v4 = [(BSUINavigationController *)&v7 popViewControllerAnimated:animated];
  topViewController = [(BSUINavigationController *)self topViewController];
  [(BSUINavigationController *)self _updateLayoutMarginsForViewController:topViewController];

  return v4;
}

- (id)popToViewController:(id)controller animated:(BOOL)animated
{
  v8.receiver = self;
  v8.super_class = BSUINavigationController;
  v5 = [(BSUINavigationController *)&v8 popToViewController:controller animated:animated];
  topViewController = [(BSUINavigationController *)self topViewController];
  [(BSUINavigationController *)self _updateLayoutMarginsForViewController:topViewController];

  return v5;
}

- (id)popToRootViewControllerAnimated:(BOOL)animated
{
  v7.receiver = self;
  v7.super_class = BSUINavigationController;
  v4 = [(BSUINavigationController *)&v7 popToRootViewControllerAnimated:animated];
  topViewController = [(BSUINavigationController *)self topViewController];
  [(BSUINavigationController *)self _updateLayoutMarginsForViewController:topViewController];

  return v4;
}

- (void)setViewControllers:(id)controllers animated:(BOOL)animated
{
  v6.receiver = self;
  v6.super_class = BSUINavigationController;
  [(BSUINavigationController *)&v6 setViewControllers:controllers animated:animated];
  topViewController = [(BSUINavigationController *)self topViewController];
  [(BSUINavigationController *)self _updateLayoutMarginsForViewController:topViewController];
}

- (BOOL)bc_analyticsVisibilityOfChild:(id)child
{
  childCopy = child;
  topViewController = [(BSUINavigationController *)self topViewController];

  return topViewController == childCopy;
}

- (BOOL)accessibilityPerformEscape
{
  viewControllers = [(BSUINavigationController *)self viewControllers];
  v4 = [viewControllers count];

  if (v4 < 2)
  {
    [(BSUINavigationController *)self dismissViewControllerAnimated:1 completion:0];
  }

  else
  {
    v5 = [(BSUINavigationController *)self popViewControllerAnimated:1];
  }

  return 1;
}

- (void)_updateManualScrollEdgeAppearanceProgressForScrollView:(id)view navigationItem:(id)item
{
  itemCopy = item;
  viewCopy = view;
  objc_opt_class();
  v8 = BUDynamicCast();
  [v8 setIsUpdatingManualScrollEdgeAppearanceProgress:1];
  v9.receiver = self;
  v9.super_class = BSUINavigationController;
  [(BSUINavigationController *)&v9 _updateManualScrollEdgeAppearanceProgressForScrollView:viewCopy navigationItem:itemCopy];

  [v8 setIsUpdatingManualScrollEdgeAppearanceProgress:0];
}

- (BOOL)bc_analyticsVisibilityOfSelf
{
  visibleViewController = [(BSUINavigationController *)self visibleViewController];
  if (visibleViewController)
  {
    objc_opt_class();
    v3 = BUDynamicCast();
    v4 = v3 == 0;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)bc_analyticsVisibilityDidAppear
{
  v5.receiver = self;
  v5.super_class = BSUINavigationController;
  [(BSUINavigationController *)&v5 bc_analyticsVisibilityDidAppear];
  if ([(BSUINavigationController *)self isRoot])
  {
    v3 = +[NSDate date];
    appearDate = self->_appearDate;
    self->_appearDate = v3;
  }
}

- (void)bc_analyticsVisibilityWillDisappear
{
  v5.receiver = self;
  v5.super_class = BSUINavigationController;
  [(BSUINavigationController *)&v5 bc_analyticsVisibilityWillDisappear];
  if ([(BSUINavigationController *)self isRoot])
  {
    ba_analyticsTracker = [(BSUINavigationController *)self ba_analyticsTracker];
    if (ba_analyticsTracker)
    {
      v4 = +[BAEventReporter sharedReporter];
      [v4 emitTabViewEventWithTracker:ba_analyticsTracker startDate:self->_appearDate];
    }
  }
}

+ (NSDictionary)navigationBarFontAttributes
{
  _sSo24BSUINavigationControllerC11BookStoreUIE27navigationBarFontAttributesSDySo21NSAttributedStringKeyaypGvgZ_0();
  type metadata accessor for Key(0);
  sub_FED08();
  v2.super.isa = sub_2C57C8().super.isa;

  return v2.super.isa;
}

+ (id)largeNavigationBarFontAttributesWithTraitCollection:(id)collection
{
  collectionCopy = collection;
  _sSo24BSUINavigationControllerC11BookStoreUIE32largeNavigationBarFontAttributes4withSDySo21NSAttributedStringKeyaypGSo17UITraitCollectionC_tFZ_0(collectionCopy);

  type metadata accessor for Key(0);
  sub_FED08();
  v4.super.isa = sub_2C57C8().super.isa;

  return v4.super.isa;
}

@end