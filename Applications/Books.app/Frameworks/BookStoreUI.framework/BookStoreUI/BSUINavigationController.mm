@interface BSUINavigationController
+ (NSDictionary)navigationBarFontAttributes;
+ (id)largeNavigationBarFontAttributesWithTraitCollection:(id)a3;
- (BOOL)accessibilityPerformEscape;
- (BOOL)bc_analyticsVisibilityOfChild:(id)a3;
- (BOOL)bc_analyticsVisibilityOfSelf;
- (BOOL)useConcentricBarButtons;
- (BSUINavigationController)initWithNavigationBarClass:(Class)a3 toolbarClass:(Class)a4;
- (BSUINavigationController)initWithNibName:(id)a3 bundle:(id)a4;
- (BSUINavigationController)initWithOptions:(id)a3;
- (BSUINavigationController)initWithRootViewController:(id)a3;
- (UIView)wrapperView;
- (id)popToRootViewControllerAnimated:(BOOL)a3;
- (id)popToViewController:(id)a3 animated:(BOOL)a4;
- (id)popViewControllerAnimated:(BOOL)a3;
- (unint64_t)supportedInterfaceOrientations;
- (void)_updateLayoutMarginsForViewController:(id)a3 forInteractiveTransition:(BOOL)a4;
- (void)_updateManualScrollEdgeAppearanceProgressForScrollView:(id)a3 navigationItem:(id)a4;
- (void)applyThemeBasedOnCurrentUserInterfaceStyle;
- (void)bc_analyticsVisibilityDidAppear;
- (void)bc_analyticsVisibilityWillDisappear;
- (void)pushViewController:(id)a3 animated:(BOOL)a4;
- (void)setViewControllers:(id)a3 animated:(BOOL)a4;
- (void)updateLayoutMetrics;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewDidMoveToWindow:(id)a3 shouldAppearOrDisappear:(BOOL)a4;
- (void)viewSafeAreaInsetsDidChange;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
@end

@implementation BSUINavigationController

- (BSUINavigationController)initWithNavigationBarClass:(Class)a3 toolbarClass:(Class)a4
{
  v8.receiver = self;
  v8.super_class = BSUINavigationController;
  v4 = [(BSUINavigationController *)&v8 initWithNavigationBarClass:a3 toolbarClass:a4];
  if (v4)
  {
    v5 = +[UITraitCollection bc_allAPITraits];
    v6 = [(BSUINavigationController *)v4 registerForTraitChanges:v5 withAction:"_traitCollectionDidChange:previousTraitCollection:"];
  }

  return v4;
}

- (BSUINavigationController)initWithNibName:(id)a3 bundle:(id)a4
{
  v4 = [(BSUINavigationController *)self initWithNavigationBarClass:objc_opt_class() toolbarClass:0];
  v5 = v4;
  if (v4)
  {
    v6 = [(BSUINavigationController *)v4 navigationBar];
    [v6 setPrefersLargeTitles:1];
  }

  return v5;
}

- (BSUINavigationController)initWithRootViewController:(id)a3
{
  v4 = a3;
  v5 = [(BSUINavigationController *)self init];
  v6 = v5;
  if (v5)
  {
    [(BSUINavigationController *)v5 pushViewController:v4 animated:0];
  }

  return v6;
}

- (BSUINavigationController)initWithOptions:(id)a3
{
  v4 = a3;
  v5 = [(BSUINavigationController *)self init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"prefersLargeTitles"];
    if (objc_opt_respondsToSelector())
    {
      v7 = [v6 BOOLValue];
      v8 = [(BSUINavigationController *)v5 navigationBar];
      [v8 setPrefersLargeTitles:v7];
    }
  }

  return v5;
}

- (UIView)wrapperView
{
  wrapperView = self->_wrapperView;
  if (!wrapperView)
  {
    v4 = [(BSUINavigationController *)self view];
    v5 = [UIView alloc];
    [v4 frame];
    v6 = [v5 initWithFrame:?];
    v7 = self->_wrapperView;
    self->_wrapperView = v6;

    [(UIView *)self->_wrapperView setAutoresizingMask:18];
    [(UIView *)self->_wrapperView bounds];
    [v4 setFrame:?];
    [v4 setAutoresizingMask:18];
    [(UIView *)self->_wrapperView addSubview:v4];

    wrapperView = self->_wrapperView;
  }

  return wrapperView;
}

- (void)viewDidAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = BSUINavigationController;
  [(BSUINavigationController *)&v4 viewDidAppear:a3];
  [(BSUINavigationController *)self bc_analyticsVisibilityUpdateSubtree];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = BSUINavigationController;
  [(BSUINavigationController *)&v4 viewWillDisappear:a3];
  [(BSUINavigationController *)self bc_analyticsVisibilitySubtreeWillDisappear];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = BSUINavigationController;
  [(BSUINavigationController *)&v4 viewDidDisappear:a3];
  [(BSUINavigationController *)self bc_analyticsVisibilitySubtreeDidDisappear];
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = BSUINavigationController;
  [(BSUINavigationController *)&v4 viewDidLoad];
  v3 = [(BSUINavigationController *)self view];
  [v3 setAutoresizingMask:0];
}

- (void)viewWillLayoutSubviews
{
  v4.receiver = self;
  v4.super_class = BSUINavigationController;
  [(BSUINavigationController *)&v4 viewWillLayoutSubviews];
  [(BSUINavigationController *)self applyThemeBasedOnCurrentUserInterfaceStyle];
  v3 = [(BSUINavigationController *)self topViewController];
  [(BSUINavigationController *)self _updateLayoutMarginsForViewController:v3];
}

- (void)viewSafeAreaInsetsDidChange
{
  v5.receiver = self;
  v5.super_class = BSUINavigationController;
  [(BSUINavigationController *)&v5 viewSafeAreaInsetsDidChange];
  objc_opt_class();
  v3 = [(BSUINavigationController *)self presentedViewController];
  v4 = BUDynamicCast();

  [v4 presentingViewControllerSafeAreaInsetsDidChange:self];
}

- (unint64_t)supportedInterfaceOrientations
{
  if (isPad())
  {
    v3 = &dword_1C + 2;
  }

  else
  {
    v3 = &dword_0 + 2;
  }

  v4 = [(BSUINavigationController *)self presentedViewController];
  v5 = objc_opt_new();
  if (v4)
  {
    do
    {
      [v5 addObject:v4];
      v6 = [v4 presentedViewController];

      v4 = v6;
    }

    while (v6);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = [v5 reverseObjectEnumerator];
  v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = *v18;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        if ([v11 conformsToProtocol:&OBJC_PROTOCOL___BCOrientationControlling])
        {
          v3 = [v11 supportedInterfaceOrientations];
          LOBYTE(v8) = 1;
          goto LABEL_16;
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_16:

  v12 = [(BSUINavigationController *)self topViewController];
  v13 = v12;
  if ((v8 & 1) == 0)
  {
    if (v12)
    {
      v14 = [v12 supportedInterfaceOrientations];
    }

    else
    {
      v16.receiver = self;
      v16.super_class = BSUINavigationController;
      v14 = [(BSUINavigationController *)&v16 supportedInterfaceOrientations];
    }

    v3 = v14;
  }

  return v3;
}

- (void)applyThemeBasedOnCurrentUserInterfaceStyle
{
  v3 = [(BSUINavigationController *)self view];
  v4 = [v3 im_isStyleDark];

  if (v4 && ([(BSUINavigationController *)self _isInPopoverPresentation]& 1) != 0)
  {
    v5 = +[UIColor bc_booksSecondaryBackground];
  }

  else
  {
    v5 = +[UIColor bc_booksBackground];
  }

  v23 = v5;
  v6 = [(BSUINavigationController *)self navigationBar];
  v7 = [v6 standardAppearance];
  v8 = [v7 copy];

  v9 = +[BSUINavigationController navigationBarFontAttributes];
  [v8 setTitleTextAttributes:v9];

  v10 = [(BSUINavigationController *)self traitCollection];
  v11 = [BSUINavigationController largeNavigationBarFontAttributesWithTraitCollection:v10];
  [v8 setLargeTitleTextAttributes:v11];

  v12 = [(BSUINavigationController *)self navigationBar];
  [v12 setStandardAppearance:v8];

  v13 = [(BSUINavigationController *)self topViewController];
  v14 = BUProtocolCast();

  v15 = [v14 preferredNavigationBarTintColor];
  v16 = v15;
  if (v15)
  {
    v17 = v15;
  }

  else
  {
    v17 = +[UIColor bc_booksKeyColor];
  }

  v18 = v17;

  v19 = [(BSUINavigationController *)self navigationBar];
  [v19 setBarStyle:v4];

  v20 = [(BSUINavigationController *)self navigationBar];
  [v20 setBarTintColor:v23];

  v21 = [(BSUINavigationController *)self navigationBar];
  [v21 setTintColor:v18];

  v22 = [(BSUINavigationController *)self toolbar];
  [v22 setBarStyle:v4];
}

- (void)viewDidMoveToWindow:(id)a3 shouldAppearOrDisappear:(BOOL)a4
{
  v5.receiver = self;
  v5.super_class = BSUINavigationController;
  [(BSUINavigationController *)&v5 viewDidMoveToWindow:a3 shouldAppearOrDisappear:a4];
  [(BSUINavigationController *)self applyThemeBasedOnCurrentUserInterfaceStyle];
}

- (BOOL)useConcentricBarButtons
{
  v2 = [(BSUINavigationController *)self presentingViewController];
  v3 = [v2 presentedViewController];

  v4 = [v3 modalPresentationStyle];
  v5 = _UISolariumEnabled();
  v6 = (v4 - 1) < 2;
  if (!v3)
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

- (void)_updateLayoutMarginsForViewController:(id)a3 forInteractiveTransition:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (![(BSUINavigationController *)self useConcentricBarButtons])
  {
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_2834C;
    v14[3] = &unk_387078;
    v14[4] = self;
    v15 = v6;
    v7 = objc_retainBlock(v14);
    v8 = [(BSUINavigationController *)self transitionCoordinator];
    v9 = v8;
    if (v8 && [v8 isInteractive] == v4)
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
  v2 = [(BSUINavigationController *)self viewIfLoaded];
  [v2 setNeedsLayout];
}

- (void)pushViewController:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  [(BSUINavigationController *)self _updateLayoutMarginsForViewController:v6];
  v7.receiver = self;
  v7.super_class = BSUINavigationController;
  [(BSUINavigationController *)&v7 pushViewController:v6 animated:v4];
}

- (id)popViewControllerAnimated:(BOOL)a3
{
  v7.receiver = self;
  v7.super_class = BSUINavigationController;
  v4 = [(BSUINavigationController *)&v7 popViewControllerAnimated:a3];
  v5 = [(BSUINavigationController *)self topViewController];
  [(BSUINavigationController *)self _updateLayoutMarginsForViewController:v5];

  return v4;
}

- (id)popToViewController:(id)a3 animated:(BOOL)a4
{
  v8.receiver = self;
  v8.super_class = BSUINavigationController;
  v5 = [(BSUINavigationController *)&v8 popToViewController:a3 animated:a4];
  v6 = [(BSUINavigationController *)self topViewController];
  [(BSUINavigationController *)self _updateLayoutMarginsForViewController:v6];

  return v5;
}

- (id)popToRootViewControllerAnimated:(BOOL)a3
{
  v7.receiver = self;
  v7.super_class = BSUINavigationController;
  v4 = [(BSUINavigationController *)&v7 popToRootViewControllerAnimated:a3];
  v5 = [(BSUINavigationController *)self topViewController];
  [(BSUINavigationController *)self _updateLayoutMarginsForViewController:v5];

  return v4;
}

- (void)setViewControllers:(id)a3 animated:(BOOL)a4
{
  v6.receiver = self;
  v6.super_class = BSUINavigationController;
  [(BSUINavigationController *)&v6 setViewControllers:a3 animated:a4];
  v5 = [(BSUINavigationController *)self topViewController];
  [(BSUINavigationController *)self _updateLayoutMarginsForViewController:v5];
}

- (BOOL)bc_analyticsVisibilityOfChild:(id)a3
{
  v4 = a3;
  v5 = [(BSUINavigationController *)self topViewController];

  return v5 == v4;
}

- (BOOL)accessibilityPerformEscape
{
  v3 = [(BSUINavigationController *)self viewControllers];
  v4 = [v3 count];

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

- (void)_updateManualScrollEdgeAppearanceProgressForScrollView:(id)a3 navigationItem:(id)a4
{
  v6 = a4;
  v7 = a3;
  objc_opt_class();
  v8 = BUDynamicCast();
  [v8 setIsUpdatingManualScrollEdgeAppearanceProgress:1];
  v9.receiver = self;
  v9.super_class = BSUINavigationController;
  [(BSUINavigationController *)&v9 _updateManualScrollEdgeAppearanceProgressForScrollView:v7 navigationItem:v6];

  [v8 setIsUpdatingManualScrollEdgeAppearanceProgress:0];
}

- (BOOL)bc_analyticsVisibilityOfSelf
{
  v2 = [(BSUINavigationController *)self visibleViewController];
  if (v2)
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
    v3 = [(BSUINavigationController *)self ba_analyticsTracker];
    if (v3)
    {
      v4 = +[BAEventReporter sharedReporter];
      [v4 emitTabViewEventWithTracker:v3 startDate:self->_appearDate];
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

+ (id)largeNavigationBarFontAttributesWithTraitCollection:(id)a3
{
  v3 = a3;
  _sSo24BSUINavigationControllerC11BookStoreUIE32largeNavigationBarFontAttributes4withSDySo21NSAttributedStringKeyaypGSo17UITraitCollectionC_tFZ_0(v3);

  type metadata accessor for Key(0);
  sub_FED08();
  v4.super.isa = sub_2C57C8().super.isa;

  return v4.super.isa;
}

@end