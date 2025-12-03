@interface BKExpandedContentViewController
+ (Class)classForResource:(id)resource;
+ (id)expandedContentControllerForResource:(id)resource;
- (BEDragDismissGestureManager)dragDismissManager;
- (BEExpandedContentDelegate)delegate;
- (BKExpandedContentViewController)initWithResource:(id)resource;
- (BOOL)allowsDismissGesture;
- (BOOL)isCurrentlyZoomed;
- (CGRect)animationRect;
- (CGRect)getAnimationRect;
- (UIScrollView)scrollView;
- (id)animationControllerForPresentedController:(id)controller presentingController:(id)presentingController sourceController:(id)sourceController;
- (id)keyCommands;
- (id)rightToolbarItems;
- (void)dealloc;
- (void)dismissViewControllerAnimated:(BOOL)animated completion:(id)completion;
- (void)done:(id)done;
- (void)handleSingleTap:(id)tap;
- (void)releaseViews;
- (void)setActivityIndicatorVisible:(BOOL)visible animated:(BOOL)animated afterDelay:(double)delay;
- (void)setBackgroundColor:(id)color;
- (void)setInnerView:(id)view;
- (void)setToolBarHidden:(BOOL)hidden animated:(BOOL)animated;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation BKExpandedContentViewController

+ (Class)classForResource:(id)resource
{
  resourceCopy = resource;
  [objc_opt_class() supportsResource:resourceCopy];

  v4 = objc_opt_class();

  return v4;
}

+ (id)expandedContentControllerForResource:(id)resource
{
  resourceCopy = resource;
  v5 = [objc_alloc(objc_msgSend(self classForResource:{resourceCopy)), "initWithResource:", resourceCopy}];

  return v5;
}

- (BKExpandedContentViewController)initWithResource:(id)resource
{
  resourceCopy = resource;
  v12.receiver = self;
  v12.super_class = BKExpandedContentViewController;
  v6 = [(BKExpandedContentViewController *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_resource, resource);
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
  themePage = [(BKExpandedContentViewController *)self themePage];
  view = [(BKExpandedContentViewController *)self view];
  v5 = [BCNavigationBar alloc];
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v9 = [v5 initWithFrame:{CGRectZero.origin.x, y, width, height}];
  toolbar = self->_toolbar;
  self->_toolbar = v9;

  v11 = self->_toolbar;
  v53 = themePage;
  headerTextColor = [themePage headerTextColor];
  v13 = [NSDictionary dictionaryWithObject:headerTextColor forKey:NSForegroundColorAttributeName];
  [(BCNavigationBar *)v11 setTitleTextAttributes:v13];

  [(BCNavigationBar *)self->_toolbar setTranslatesAutoresizingMaskIntoConstraints:0];
  [(BCNavigationBar *)self->_toolbar setDelegate:self];
  [(BCNavigationBar *)self->_toolbar setAlpha:0.0];
  theme = [(BKExpandedContentViewController *)self theme];
  [theme stylizeBCNavigationBar:self->_toolbar];

  [view addSubview:self->_toolbar];
  leadingAnchor = [(BCNavigationBar *)self->_toolbar leadingAnchor];
  leadingAnchor2 = [view leadingAnchor];
  v47 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v57[0] = v47;
  trailingAnchor = [(BCNavigationBar *)self->_toolbar trailingAnchor];
  v54 = view;
  trailingAnchor2 = [view trailingAnchor];
  v17 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v57[1] = v17;
  topAnchor = [(BCNavigationBar *)self->_toolbar topAnchor];
  safeAreaLayoutGuide = [view safeAreaLayoutGuide];
  topAnchor2 = [safeAreaLayoutGuide topAnchor];
  v21 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v57[2] = v21;
  v22 = [NSArray arrayWithObjects:v57 count:3];
  [NSLayoutConstraint activateConstraints:v22];

  v23 = self->_toolbar;
  leftToolbarItems = [(BKExpandedContentViewController *)self leftToolbarItems];
  rightToolbarItems = [(BKExpandedContentViewController *)self rightToolbarItems];
  [(BCNavigationBar *)v23 setLeftItems:leftToolbarItems rightItems:rightToolbarItems title:0 animated:0];

  v26 = self->_toolbar;
  title = [(BKExpandedContentResource *)self->_resource title];
  [(BCNavigationBar *)v26 setTitle:title];

  v28 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  contentContainer = self->_contentContainer;
  self->_contentContainer = v28;

  [(UIView *)self->_contentContainer setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIView *)self->_contentContainer setClipsToBounds:1];
  [v54 addSubview:self->_contentContainer];
  leadingAnchor3 = [(UIView *)self->_contentContainer leadingAnchor];
  safeAreaLayoutGuide2 = [v54 safeAreaLayoutGuide];
  leadingAnchor4 = [safeAreaLayoutGuide2 leadingAnchor];
  v46 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  v56[0] = v46;
  trailingAnchor3 = [(UIView *)self->_contentContainer trailingAnchor];
  safeAreaLayoutGuide3 = [v54 safeAreaLayoutGuide];
  trailingAnchor4 = [safeAreaLayoutGuide3 trailingAnchor];
  v33 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  v56[1] = v33;
  bottomAnchor = [(UIView *)self->_contentContainer bottomAnchor];
  bottomAnchor2 = [v54 bottomAnchor];
  v36 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v56[2] = v36;
  v37 = [NSArray arrayWithObjects:v56 count:3];
  [NSLayoutConstraint activateConstraints:v37];

  contentView = [(BKExpandedContentViewController *)self contentView];
  if (contentView)
  {
    [(BKExpandedContentViewController *)self setInnerView:contentView];
  }

  v39 = [BKActivityIndicatorOverlayView alloc];
  contentTextColor = [v53 contentTextColor];
  v41 = [contentTextColor colorWithAlphaComponent:0.7];
  v42 = [v53 backgroundColorForTraitEnvironment:self];
  v43 = [(BKActivityIndicatorOverlayView *)v39 initWithBackgroundColor:v41 foregroundColor:v42];
  activityIndicator = self->_activityIndicator;
  self->_activityIndicator = v43;

  v45 = [v53 backgroundColorForTraitEnvironment:self];
  [(BKExpandedContentViewController *)self setBackgroundColor:v45];

  [v54 bringSubviewToFront:self->_toolbar];
}

- (void)viewDidAppear:(BOOL)appear
{
  v6.receiver = self;
  v6.super_class = BKExpandedContentViewController;
  [(BKExpandedContentViewController *)&v6 viewDidAppear:appear];
  [(BKExpandedContentViewController *)self setToolBarHidden:[(BKExpandedContentViewController *)self toolbarHidden] animated:1];
  scrollView = [(BKExpandedContentViewController *)self scrollView];
  v5 = scrollView;
  if (scrollView)
  {
    [scrollView zoomScale];
    [(BKExpandedContentViewController *)self setInitialZoomScale:?];
  }
}

- (void)viewDidLayoutSubviews
{
  v21.receiver = self;
  v21.super_class = BKExpandedContentViewController;
  [(BKExpandedContentViewController *)&v21 viewDidLayoutSubviews];
  contentToViewTopAnchorConstraint = [(BKExpandedContentViewController *)self contentToViewTopAnchorConstraint];

  if (!contentToViewTopAnchorConstraint)
  {
    if ([(BKExpandedContentViewController *)self wantsTapToHideToolbarGestureRecognizer])
    {
      topAnchor = [(UIView *)self->_contentContainer topAnchor];
      view = [(BKExpandedContentViewController *)self view];
      topAnchor2 = [view topAnchor];
      v7 = [topAnchor constraintEqualToAnchor:topAnchor2];
      [(BKExpandedContentViewController *)self setContentToViewTopAnchorConstraint:v7];

      contentToViewTopAnchorConstraint2 = [(BKExpandedContentViewController *)self contentToViewTopAnchorConstraint];
      v22 = contentToViewTopAnchorConstraint2;
      v9 = &v22;
    }

    else
    {
      contentToViewTopAnchorConstraint3 = [(BKExpandedContentViewController *)self contentToViewTopAnchorConstraint];
      isActive = [contentToViewTopAnchorConstraint3 isActive];

      if (isActive)
      {
        contentToViewTopAnchorConstraint4 = [(BKExpandedContentViewController *)self contentToViewTopAnchorConstraint];
        v24 = contentToViewTopAnchorConstraint4;
        v13 = [NSArray arrayWithObjects:&v24 count:1];
        [NSLayoutConstraint deactivateConstraints:v13];
      }

      topAnchor3 = [(UIView *)self->_contentContainer topAnchor];
      view2 = [(BKExpandedContentViewController *)self view];
      safeAreaLayoutGuide = [view2 safeAreaLayoutGuide];
      topAnchor4 = [safeAreaLayoutGuide topAnchor];
      [(BCNavigationBar *)self->_toolbar bounds];
      v19 = [topAnchor3 constraintEqualToAnchor:topAnchor4 constant:v18];
      [(BKExpandedContentViewController *)self setContentToViewTopAnchorConstraint:v19];

      contentToViewTopAnchorConstraint2 = [(BKExpandedContentViewController *)self contentToViewTopAnchorConstraint];
      v23 = contentToViewTopAnchorConstraint2;
      v9 = &v23;
    }

    v20 = [NSArray arrayWithObjects:v9 count:1];
    [NSLayoutConstraint activateConstraints:v20];
  }
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  [(BKExpandedContentViewController *)self setActivityIndicatorVisible:0 animated:disappear afterDelay:0.0];
  v5.receiver = self;
  v5.super_class = BKExpandedContentViewController;
  [(BKExpandedContentViewController *)&v5 viewWillDisappear:disappearCopy];
}

- (id)keyCommands
{
  v9.receiver = self;
  v9.super_class = BKExpandedContentViewController;
  keyCommands = [(BKExpandedContentViewController *)&v9 keyCommands];
  v3 = [keyCommands mutableCopy];
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
  themePage = [(BKExpandedContentViewController *)self themePage];
  tintColorForNavbarButtons = [themePage tintColorForNavbarButtons];
  [v3 setTintColor:tintColorForNavbarButtons];

  v8 = v3;
  v6 = [NSArray arrayWithObjects:&v8 count:1];

  return v6;
}

- (void)done:(id)done
{
  if ([(BKExpandedContentViewController *)self isViewLoaded])
  {

    [(BKExpandedContentViewController *)self close:1];
  }
}

- (void)dismissViewControllerAnimated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  selfCopy = self;
  [(BKExpandedContentViewController *)selfCopy delegate];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_7028C;
  v12[3] = &unk_1E2F78;
  v14 = selfCopy;
  v13 = v15 = completionCopy;
  v11.receiver = selfCopy;
  v11.super_class = BKExpandedContentViewController;
  v8 = selfCopy;
  v9 = v13;
  v10 = completionCopy;
  [(BKExpandedContentViewController *)&v11 dismissViewControllerAnimated:animatedCopy completion:v12];
}

- (void)setInnerView:(id)view
{
  viewCopy = view;
  innerView = self->_innerView;
  constraints = [(UIView *)innerView constraints];
  [(UIView *)innerView removeConstraints:constraints];

  [(UIView *)self->_innerView removeFromSuperview];
  if ([(BKExpandedContentViewController *)self wantsDoubleTapGestureRecognizer])
  {
    [(UIView *)self->_innerView removeGestureRecognizer:self->_doubleTapRecognizer];
  }

  objc_storeStrong(&self->_innerView, view);
  [(UIView *)self->_innerView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIView *)self->_contentContainer addSubview:self->_innerView];
  leadingAnchor = [(UIView *)self->_innerView leadingAnchor];
  leadingAnchor2 = [(UIView *)self->_contentContainer leadingAnchor];
  v27 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v31[0] = v27;
  trailingAnchor = [(UIView *)self->_innerView trailingAnchor];
  trailingAnchor2 = [(UIView *)self->_contentContainer trailingAnchor];
  v7 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v31[1] = v7;
  topAnchor = [(UIView *)self->_innerView topAnchor];
  topAnchor2 = [(UIView *)self->_contentContainer topAnchor];
  v10 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v31[2] = v10;
  bottomAnchor = [(UIView *)self->_innerView bottomAnchor];
  bottomAnchor2 = [(UIView *)self->_contentContainer bottomAnchor];
  v13 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
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
    dragDismissManager = [(BKExpandedContentViewController *)self dragDismissManager];
    swipeGesture = [dragDismissManager swipeGesture];
    [(UIView *)v19 addGestureRecognizer:swipeGesture];
  }

  if ([(BKExpandedContentViewController *)self enablePullToDismiss])
  {
    v22 = self->_innerView;
    dragDismissManager2 = [(BKExpandedContentViewController *)self dragDismissManager];
    panGesture = [dragDismissManager2 panGesture];
    [(UIView *)v22 addGestureRecognizer:panGesture];
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
  presentingViewController = [(BKExpandedContentViewController *)self presentingViewController];
  view = [presentingViewController view];
  [view bounds];
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

- (void)setBackgroundColor:(id)color
{
  colorCopy = color;
  view = [(BKExpandedContentViewController *)self view];
  [view setBackgroundColor:colorCopy];

  contentContainer = [(BKExpandedContentViewController *)self contentContainer];
  [contentContainer setBackgroundColor:colorCopy];
}

- (BOOL)isCurrentlyZoomed
{
  scrollView = [(BKExpandedContentViewController *)self scrollView];
  v4 = scrollView;
  if (scrollView)
  {
    [scrollView zoomScale];
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
  innerView = [(BKExpandedContentViewController *)self innerView];
  v4 = BUDynamicCast();

  return v4;
}

- (void)setActivityIndicatorVisible:(BOOL)visible animated:(BOOL)animated afterDelay:(double)delay
{
  animatedCopy = animated;
  activityIndicator = self->_activityIndicator;
  if (visible)
  {
    view = [(BKExpandedContentViewController *)self view];
    [(BKActivityIndicatorOverlayView *)activityIndicator showIndicatorCenteredInView:view animated:animatedCopy animationDelay:delay];
  }

  else
  {
    v8 = self->_activityIndicator;

    [(BKActivityIndicatorOverlayView *)v8 hideIndicatorAnimated:animated animationDelay:?];
  }
}

- (void)handleSingleTap:(id)tap
{
  v4 = [(BKExpandedContentViewController *)self toolbarHidden]^ 1;

  [(BKExpandedContentViewController *)self setToolBarHidden:v4 animated:1];
}

- (void)setToolBarHidden:(BOOL)hidden animated:(BOOL)animated
{
  animatedCopy = animated;
  [(BKExpandedContentViewController *)self setToolbarHidden:?];
  if (!hidden)
  {
    [(BKExpandedContentViewController *)self setNeedsStatusBarAppearanceUpdate];
  }

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_70B80;
  v10[3] = &unk_1E3ED8;
  hiddenCopy = hidden;
  v10[4] = self;
  v7 = objc_retainBlock(v10);
  v8 = v7;
  if (animatedCopy)
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

- (id)animationControllerForPresentedController:(id)controller presentingController:(id)presentingController sourceController:(id)sourceController
{
  [(BKExpandedContentViewController *)self getAnimationRect:controller];
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
  scrollView = [(BKExpandedContentViewController *)self scrollView];
  v4 = scrollView;
  if (scrollView)
  {
    [scrollView contentOffset];
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