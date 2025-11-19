@interface BKExpandedContentViewController
+ (Class)classForResource:(id)a3;
+ (id)expandedContentControllerForResource:(id)a3;
- (BEDragDismissGestureManager)dragDismissManager;
- (BEExpandedContentDelegate)delegate;
- (BKExpandedContentViewController)initWithResource:(id)a3;
- (BOOL)allowsDismissGesture;
- (BOOL)isCurrentlyZoomed;
- (CGRect)animationRect;
- (CGRect)getAnimationRect;
- (UIScrollView)scrollView;
- (id)animationControllerForPresentedController:(id)a3 presentingController:(id)a4 sourceController:(id)a5;
- (id)keyCommands;
- (id)rightToolbarItems;
- (void)dealloc;
- (void)dismissViewControllerAnimated:(BOOL)a3 completion:(id)a4;
- (void)done:(id)a3;
- (void)handleSingleTap:(id)a3;
- (void)releaseViews;
- (void)setActivityIndicatorVisible:(BOOL)a3 animated:(BOOL)a4 afterDelay:(double)a5;
- (void)setBackgroundColor:(id)a3;
- (void)setInnerView:(id)a3;
- (void)setToolBarHidden:(BOOL)a3 animated:(BOOL)a4;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation BKExpandedContentViewController

+ (Class)classForResource:(id)a3
{
  v3 = a3;
  [objc_opt_class() supportsResource:v3];

  v4 = objc_opt_class();

  return v4;
}

+ (id)expandedContentControllerForResource:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(objc_msgSend(a1 classForResource:{v4)), "initWithResource:", v4}];

  return v5;
}

- (BKExpandedContentViewController)initWithResource:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = BKExpandedContentViewController;
  v6 = [(BKExpandedContentViewController *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_resource, a3);
    v8 = +[UIColor clearColor];
    contentBackgroundColor = v7->_contentBackgroundColor;
    v7->_contentBackgroundColor = v8;

    v10 = [IMTheme themeWithIdentifier:kIMThemeIdentifierDynamicTheme];
    [(BKExpandedContentViewController *)v7 setTheme:v10];

    [(BKExpandedContentViewController *)v7 setModalPresentationStyle:5];
    [(BKExpandedContentViewController *)v7 setToolbarHidden:0];
  }

  return v7;
}

- (void)releaseViews
{
  v9.receiver = self;
  v9.super_class = BKExpandedContentViewController;
  [(BKViewController *)&v9 releaseViews];
  toolbar = self->_toolbar;
  self->_toolbar = 0;

  contentContainer = self->_contentContainer;
  self->_contentContainer = 0;

  [(UITapGestureRecognizer *)self->_doubleTapRecognizer setDelegate:0];
  [(UITapGestureRecognizer *)self->_doubleTapRecognizer removeTarget:0 action:0];
  doubleTapRecognizer = self->_doubleTapRecognizer;
  self->_doubleTapRecognizer = 0;

  animationImageView = self->_animationImageView;
  self->_animationImageView = 0;

  contentObscuringView = self->_contentObscuringView;
  self->_contentObscuringView = 0;

  activityIndicator = self->_activityIndicator;
  self->_activityIndicator = 0;
}

- (void)dealloc
{
  [(BKExpandedContentViewController *)self releaseViews];
  objc_storeWeak(&self->_delegate, 0);
  v3.receiver = self;
  v3.super_class = BKExpandedContentViewController;
  [(BKViewController *)&v3 dealloc];
}

- (void)viewDidLoad
{
  v55.receiver = self;
  v55.super_class = BKExpandedContentViewController;
  [(BKExpandedContentViewController *)&v55 viewDidLoad];
  v3 = [(BKExpandedContentViewController *)self themePage];
  v4 = [(BKExpandedContentViewController *)self view];
  v5 = [BCNavigationBar alloc];
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v9 = [v5 initWithFrame:{CGRectZero.origin.x, y, width, height}];
  toolbar = self->_toolbar;
  self->_toolbar = v9;

  v11 = self->_toolbar;
  v53 = v3;
  v12 = [v3 headerTextColor];
  v13 = [NSDictionary dictionaryWithObject:v12 forKey:NSForegroundColorAttributeName];
  [(BCNavigationBar *)v11 setTitleTextAttributes:v13];

  [(BCNavigationBar *)self->_toolbar setTranslatesAutoresizingMaskIntoConstraints:0];
  [(BCNavigationBar *)self->_toolbar setDelegate:self];
  [(BCNavigationBar *)self->_toolbar setAlpha:0.0];
  v14 = [(BKExpandedContentViewController *)self theme];
  [v14 stylizeBCNavigationBar:self->_toolbar];

  [v4 addSubview:self->_toolbar];
  v51 = [(BCNavigationBar *)self->_toolbar leadingAnchor];
  v49 = [v4 leadingAnchor];
  v47 = [v51 constraintEqualToAnchor:v49];
  v57[0] = v47;
  v15 = [(BCNavigationBar *)self->_toolbar trailingAnchor];
  v54 = v4;
  v16 = [v4 trailingAnchor];
  v17 = [v15 constraintEqualToAnchor:v16];
  v57[1] = v17;
  v18 = [(BCNavigationBar *)self->_toolbar topAnchor];
  v19 = [v4 safeAreaLayoutGuide];
  v20 = [v19 topAnchor];
  v21 = [v18 constraintEqualToAnchor:v20];
  v57[2] = v21;
  v22 = [NSArray arrayWithObjects:v57 count:3];
  [NSLayoutConstraint activateConstraints:v22];

  v23 = self->_toolbar;
  v24 = [(BKExpandedContentViewController *)self leftToolbarItems];
  v25 = [(BKExpandedContentViewController *)self rightToolbarItems];
  [(BCNavigationBar *)v23 setLeftItems:v24 rightItems:v25 title:0 animated:0];

  v26 = self->_toolbar;
  v27 = [(BKExpandedContentResource *)self->_resource title];
  [(BCNavigationBar *)v26 setTitle:v27];

  v28 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  contentContainer = self->_contentContainer;
  self->_contentContainer = v28;

  [(UIView *)self->_contentContainer setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIView *)self->_contentContainer setClipsToBounds:1];
  [v54 addSubview:self->_contentContainer];
  v50 = [(UIView *)self->_contentContainer leadingAnchor];
  v52 = [v54 safeAreaLayoutGuide];
  v48 = [v52 leadingAnchor];
  v46 = [v50 constraintEqualToAnchor:v48];
  v56[0] = v46;
  v30 = [(UIView *)self->_contentContainer trailingAnchor];
  v31 = [v54 safeAreaLayoutGuide];
  v32 = [v31 trailingAnchor];
  v33 = [v30 constraintEqualToAnchor:v32];
  v56[1] = v33;
  v34 = [(UIView *)self->_contentContainer bottomAnchor];
  v35 = [v54 bottomAnchor];
  v36 = [v34 constraintEqualToAnchor:v35];
  v56[2] = v36;
  v37 = [NSArray arrayWithObjects:v56 count:3];
  [NSLayoutConstraint activateConstraints:v37];

  v38 = [(BKExpandedContentViewController *)self contentView];
  if (v38)
  {
    [(BKExpandedContentViewController *)self setInnerView:v38];
  }

  v39 = [BKActivityIndicatorOverlayView alloc];
  v40 = [v53 contentTextColor];
  v41 = [v40 colorWithAlphaComponent:0.7];
  v42 = [v53 backgroundColorForTraitEnvironment:self];
  v43 = [(BKActivityIndicatorOverlayView *)v39 initWithBackgroundColor:v41 foregroundColor:v42];
  activityIndicator = self->_activityIndicator;
  self->_activityIndicator = v43;

  v45 = [v53 backgroundColorForTraitEnvironment:self];
  [(BKExpandedContentViewController *)self setBackgroundColor:v45];

  [v54 bringSubviewToFront:self->_toolbar];
}

- (void)viewDidAppear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = BKExpandedContentViewController;
  [(BKExpandedContentViewController *)&v6 viewDidAppear:a3];
  [(BKExpandedContentViewController *)self setToolBarHidden:[(BKExpandedContentViewController *)self toolbarHidden] animated:1];
  v4 = [(BKExpandedContentViewController *)self scrollView];
  v5 = v4;
  if (v4)
  {
    [v4 zoomScale];
    [(BKExpandedContentViewController *)self setInitialZoomScale:?];
  }
}

- (void)viewDidLayoutSubviews
{
  v21.receiver = self;
  v21.super_class = BKExpandedContentViewController;
  [(BKExpandedContentViewController *)&v21 viewDidLayoutSubviews];
  v3 = [(BKExpandedContentViewController *)self contentToViewTopAnchorConstraint];

  if (!v3)
  {
    if ([(BKExpandedContentViewController *)self wantsTapToHideToolbarGestureRecognizer])
    {
      v4 = [(UIView *)self->_contentContainer topAnchor];
      v5 = [(BKExpandedContentViewController *)self view];
      v6 = [v5 topAnchor];
      v7 = [v4 constraintEqualToAnchor:v6];
      [(BKExpandedContentViewController *)self setContentToViewTopAnchorConstraint:v7];

      v8 = [(BKExpandedContentViewController *)self contentToViewTopAnchorConstraint];
      v22 = v8;
      v9 = &v22;
    }

    else
    {
      v10 = [(BKExpandedContentViewController *)self contentToViewTopAnchorConstraint];
      v11 = [v10 isActive];

      if (v11)
      {
        v12 = [(BKExpandedContentViewController *)self contentToViewTopAnchorConstraint];
        v24 = v12;
        v13 = [NSArray arrayWithObjects:&v24 count:1];
        [NSLayoutConstraint deactivateConstraints:v13];
      }

      v14 = [(UIView *)self->_contentContainer topAnchor];
      v15 = [(BKExpandedContentViewController *)self view];
      v16 = [v15 safeAreaLayoutGuide];
      v17 = [v16 topAnchor];
      [(BCNavigationBar *)self->_toolbar bounds];
      v19 = [v14 constraintEqualToAnchor:v17 constant:v18];
      [(BKExpandedContentViewController *)self setContentToViewTopAnchorConstraint:v19];

      v8 = [(BKExpandedContentViewController *)self contentToViewTopAnchorConstraint];
      v23 = v8;
      v9 = &v23;
    }

    v20 = [NSArray arrayWithObjects:v9 count:1];
    [NSLayoutConstraint activateConstraints:v20];
  }
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  [(BKExpandedContentViewController *)self setActivityIndicatorVisible:0 animated:a3 afterDelay:0.0];
  v5.receiver = self;
  v5.super_class = BKExpandedContentViewController;
  [(BKExpandedContentViewController *)&v5 viewWillDisappear:v3];
}

- (id)keyCommands
{
  v9.receiver = self;
  v9.super_class = BKExpandedContentViewController;
  v2 = [(BKExpandedContentViewController *)&v9 keyCommands];
  v3 = [v2 mutableCopy];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = +[NSMutableArray array];
  }

  v6 = v5;

  v7 = [UIKeyCommand keyCommandWithInput:UIKeyInputEscape modifierFlags:0 action:"handleEscapeKey:"];
  [v6 addObject:v7];

  return v6;
}

- (id)rightToolbarItems
{
  v3 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:0 target:self action:"done:"];
  v4 = [(BKExpandedContentViewController *)self themePage];
  v5 = [v4 tintColorForNavbarButtons];
  [v3 setTintColor:v5];

  v8 = v3;
  v6 = [NSArray arrayWithObjects:&v8 count:1];

  return v6;
}

- (void)done:(id)a3
{
  if ([(BKExpandedContentViewController *)self isViewLoaded])
  {

    [(BKExpandedContentViewController *)self close:1];
  }
}

- (void)dismissViewControllerAnimated:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = self;
  [(BKExpandedContentViewController *)v7 delegate];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_7028C;
  v12[3] = &unk_1E2F78;
  v14 = v7;
  v13 = v15 = v6;
  v11.receiver = v7;
  v11.super_class = BKExpandedContentViewController;
  v8 = v7;
  v9 = v13;
  v10 = v6;
  [(BKExpandedContentViewController *)&v11 dismissViewControllerAnimated:v4 completion:v12];
}

- (void)setInnerView:(id)a3
{
  v30 = a3;
  innerView = self->_innerView;
  v6 = [(UIView *)innerView constraints];
  [(UIView *)innerView removeConstraints:v6];

  [(UIView *)self->_innerView removeFromSuperview];
  if ([(BKExpandedContentViewController *)self wantsDoubleTapGestureRecognizer])
  {
    [(UIView *)self->_innerView removeGestureRecognizer:self->_doubleTapRecognizer];
  }

  objc_storeStrong(&self->_innerView, a3);
  [(UIView *)self->_innerView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIView *)self->_contentContainer addSubview:self->_innerView];
  v29 = [(UIView *)self->_innerView leadingAnchor];
  v28 = [(UIView *)self->_contentContainer leadingAnchor];
  v27 = [v29 constraintEqualToAnchor:v28];
  v31[0] = v27;
  v26 = [(UIView *)self->_innerView trailingAnchor];
  v25 = [(UIView *)self->_contentContainer trailingAnchor];
  v7 = [v26 constraintEqualToAnchor:v25];
  v31[1] = v7;
  v8 = [(UIView *)self->_innerView topAnchor];
  v9 = [(UIView *)self->_contentContainer topAnchor];
  v10 = [v8 constraintEqualToAnchor:v9];
  v31[2] = v10;
  v11 = [(UIView *)self->_innerView bottomAnchor];
  v12 = [(UIView *)self->_contentContainer bottomAnchor];
  v13 = [v11 constraintEqualToAnchor:v12];
  v31[3] = v13;
  v14 = [NSArray arrayWithObjects:v31 count:4];
  [NSLayoutConstraint activateConstraints:v14];

  if ([(BKExpandedContentViewController *)self wantsDoubleTapGestureRecognizer])
  {
    v15 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"handleDoubleTap:"];
    doubleTapRecognizer = self->_doubleTapRecognizer;
    self->_doubleTapRecognizer = v15;

    [(UITapGestureRecognizer *)self->_doubleTapRecognizer setDelegate:self];
    [(UITapGestureRecognizer *)self->_doubleTapRecognizer setNumberOfTapsRequired:2];
    [(UIView *)self->_innerView addGestureRecognizer:self->_doubleTapRecognizer];
  }

  if ([(BKExpandedContentViewController *)self wantsTapToHideToolbarGestureRecognizer])
  {
    v17 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"handleSingleTap:"];
    singleTapRecognizer = self->_singleTapRecognizer;
    self->_singleTapRecognizer = v17;

    [(UITapGestureRecognizer *)self->_singleTapRecognizer setDelegate:self];
    [(UIView *)self->_innerView addGestureRecognizer:self->_singleTapRecognizer];
  }

  if ([(BKExpandedContentViewController *)self enableSwipeToDismiss])
  {
    v19 = self->_innerView;
    v20 = [(BKExpandedContentViewController *)self dragDismissManager];
    v21 = [v20 swipeGesture];
    [(UIView *)v19 addGestureRecognizer:v21];
  }

  if ([(BKExpandedContentViewController *)self enablePullToDismiss])
  {
    v22 = self->_innerView;
    v23 = [(BKExpandedContentViewController *)self dragDismissManager];
    v24 = [v23 panGesture];
    [(UIView *)v22 addGestureRecognizer:v24];
  }
}

- (BEDragDismissGestureManager)dragDismissManager
{
  dragDismissManager = self->_dragDismissManager;
  if (!dragDismissManager)
  {
    v4 = objc_opt_new();
    v5 = self->_dragDismissManager;
    self->_dragDismissManager = v4;

    [(BEDragDismissGestureManager *)self->_dragDismissManager setDelegate:self];
    dragDismissManager = self->_dragDismissManager;
  }

  return dragDismissManager;
}

- (CGRect)getAnimationRect
{
  v2 = [(BKExpandedContentViewController *)self presentingViewController];
  v3 = [v2 view];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v19.origin.x = v5;
  v19.origin.y = v7;
  v19.size.width = v9;
  v19.size.height = v11;
  v12 = CGRectGetWidth(v19) * 0.25;
  v20.origin.x = v5;
  v20.origin.y = v7;
  v20.size.width = v9;
  v20.size.height = v11;
  v13 = CGRectGetHeight(v20) * 0.25;
  v14 = v5;
  v15 = v7;
  v16 = v9;
  v17 = v11;

  return CGRectInset(*&v14, v12, v13);
}

- (void)setBackgroundColor:(id)a3
{
  v4 = a3;
  v5 = [(BKExpandedContentViewController *)self view];
  [v5 setBackgroundColor:v4];

  v6 = [(BKExpandedContentViewController *)self contentContainer];
  [v6 setBackgroundColor:v4];
}

- (BOOL)isCurrentlyZoomed
{
  v3 = [(BKExpandedContentViewController *)self scrollView];
  v4 = v3;
  if (v3)
  {
    [v3 zoomScale];
    v6 = v5;
    [(BKExpandedContentViewController *)self initialZoomScale];
    v8 = v6 != v7;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (UIScrollView)scrollView
{
  objc_opt_class();
  v3 = [(BKExpandedContentViewController *)self innerView];
  v4 = BUDynamicCast();

  return v4;
}

- (void)setActivityIndicatorVisible:(BOOL)a3 animated:(BOOL)a4 afterDelay:(double)a5
{
  v6 = a4;
  activityIndicator = self->_activityIndicator;
  if (a3)
  {
    v9 = [(BKExpandedContentViewController *)self view];
    [(BKActivityIndicatorOverlayView *)activityIndicator showIndicatorCenteredInView:v9 animated:v6 animationDelay:a5];
  }

  else
  {
    v8 = self->_activityIndicator;

    [(BKActivityIndicatorOverlayView *)v8 hideIndicatorAnimated:a4 animationDelay:?];
  }
}

- (void)handleSingleTap:(id)a3
{
  v4 = [(BKExpandedContentViewController *)self toolbarHidden]^ 1;

  [(BKExpandedContentViewController *)self setToolBarHidden:v4 animated:1];
}

- (void)setToolBarHidden:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  [(BKExpandedContentViewController *)self setToolbarHidden:?];
  if (!a3)
  {
    [(BKExpandedContentViewController *)self setNeedsStatusBarAppearanceUpdate];
  }

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_70B80;
  v10[3] = &unk_1E3ED8;
  v11 = a3;
  v10[4] = self;
  v7 = objc_retainBlock(v10);
  v8 = v7;
  if (v4)
  {
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_70C50;
    v9[3] = &unk_1E2C20;
    v9[4] = self;
    [UIView animateWithDuration:v7 animations:v9 completion:0.2];
  }

  else
  {
    (v7[2])(v7);
  }
}

- (id)animationControllerForPresentedController:(id)a3 presentingController:(id)a4 sourceController:(id)a5
{
  [(BKExpandedContentViewController *)self getAnimationRect:a3];
  x = v12.origin.x;
  y = v12.origin.y;
  width = v12.size.width;
  height = v12.size.height;
  if (CGRectIsEmpty(v12))
  {
    v9 = 0;
  }

  else
  {
    v9 = objc_alloc_init(_BKExpandedContentViewControllerAnimator);
    [(_BKExpandedContentViewControllerAnimator *)v9 setSourceRect:x, y, width, height];
  }

  return v9;
}

- (BOOL)allowsDismissGesture
{
  v3 = [(BKExpandedContentViewController *)self scrollView];
  v4 = v3;
  if (v3)
  {
    [v3 contentOffset];
    if (v5 <= 0.0)
    {
      v6 = ![(BKExpandedContentViewController *)self isCurrentlyZoomed];
    }

    else
    {
      LOBYTE(v6) = 0;
    }
  }

  else
  {
    LOBYTE(v6) = 1;
  }

  return v6;
}

- (BEExpandedContentDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CGRect)animationRect
{
  x = self->_animationRect.origin.x;
  y = self->_animationRect.origin.y;
  width = self->_animationRect.size.width;
  height = self->_animationRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end