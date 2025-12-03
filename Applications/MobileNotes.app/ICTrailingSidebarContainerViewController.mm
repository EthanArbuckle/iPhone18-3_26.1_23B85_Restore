@interface ICTrailingSidebarContainerViewController
- (ICTrailingSidebarContainerViewController)init;
- (UIStackView)stackView;
- (UIView)contentContainerView;
- (UIView)sidebarContainerView;
- (void)createLayout;
- (void)setContentViewController:(id)controller;
- (void)setPreferredSidebarWidth:(double)width;
- (void)setSidebarHidden:(BOOL)hidden;
- (void)setSidebarViewController:(id)controller;
@end

@implementation ICTrailingSidebarContainerViewController

- (ICTrailingSidebarContainerViewController)init
{
  v5.receiver = self;
  v5.super_class = ICTrailingSidebarContainerViewController;
  v2 = [(ICTrailingSidebarContainerViewController *)&v5 initWithNibName:0 bundle:0];
  v3 = v2;
  if (v2)
  {
    v2->_sidebarHidden = 1;
    v2->_resizesWindow = 1;
    v2->_preferredSidebarWidth = 300.0;
    [(ICTrailingSidebarContainerViewController *)v2 createLayout];
  }

  return v3;
}

- (void)setContentViewController:(id)controller
{
  controllerCopy = controller;
  [(UIViewController *)self->_contentViewController willMoveToParentViewController:0];
  [(UIViewController *)self->_contentViewController removeFromParentViewController];
  view = [(UIViewController *)self->_contentViewController view];
  [view removeFromSuperview];

  objc_storeStrong(&self->_contentViewController, controller);
  if (controllerCopy)
  {
    contentContainerView = [(ICTrailingSidebarContainerViewController *)self contentContainerView];
    view2 = [controllerCopy view];
    [contentContainerView addSubview:view2];

    [(ICTrailingSidebarContainerViewController *)self addChildViewController:controllerCopy];
    [controllerCopy didMoveToParentViewController:self];
    view3 = [controllerCopy view];
    [view3 ic_addConstraintsToFillSuperview];
  }
}

- (void)setSidebarViewController:(id)controller
{
  controllerCopy = controller;
  [(UIViewController *)self->_sidebarViewController willMoveToParentViewController:0];
  [(UIViewController *)self->_sidebarViewController removeFromParentViewController];
  view = [(UIViewController *)self->_sidebarViewController view];
  [view removeFromSuperview];

  objc_storeStrong(&self->_sidebarViewController, controller);
  if (controllerCopy)
  {
    sidebarContainerView = [(ICTrailingSidebarContainerViewController *)self sidebarContainerView];
    view2 = [controllerCopy view];
    [sidebarContainerView addSubview:view2];

    [(ICTrailingSidebarContainerViewController *)self addChildViewController:controllerCopy];
    [controllerCopy didMoveToParentViewController:self];
    view3 = [controllerCopy view];
    [view3 ic_addConstraintsToFillSuperview];
  }
}

- (void)setSidebarHidden:(BOOL)hidden
{
  if (self->_sidebarHidden != hidden)
  {
    hiddenCopy = hidden;
    [(ICTrailingSidebarContainerViewController *)self setTransitioning:1];
    self->_sidebarHidden = hiddenCopy;
    sidebarContainerView = [(ICTrailingSidebarContainerViewController *)self sidebarContainerView];
    [sidebarContainerView setHidden:hiddenCopy];

    v6 = 0.0;
    if (!hiddenCopy)
    {
      [(ICTrailingSidebarContainerViewController *)self preferredSidebarWidth];
    }

    [(ICTrailingSidebarContainerViewController *)self setSidebarWidth:v6];
    [(ICTrailingSidebarContainerViewController *)self sidebarWidth];
    v8 = v7;
    sidebarWidthConstraint = [(ICTrailingSidebarContainerViewController *)self sidebarWidthConstraint];
    [sidebarWidthConstraint setConstant:v8];

    [(ICTrailingSidebarContainerViewController *)self setTransitioning:0];
  }
}

- (UIView)contentContainerView
{
  contentContainerView = self->_contentContainerView;
  if (!contentContainerView)
  {
    v4 = objc_alloc_init(UIView);
    v5 = self->_contentContainerView;
    self->_contentContainerView = v4;

    [(UIView *)self->_contentContainerView setTranslatesAutoresizingMaskIntoConstraints:0];
    contentContainerView = self->_contentContainerView;
  }

  return contentContainerView;
}

- (UIView)sidebarContainerView
{
  sidebarContainerView = self->_sidebarContainerView;
  if (!sidebarContainerView)
  {
    v4 = objc_alloc_init(UIView);
    v5 = self->_sidebarContainerView;
    self->_sidebarContainerView = v4;

    [(UIView *)self->_sidebarContainerView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)self->_sidebarContainerView setHidden:[(ICTrailingSidebarContainerViewController *)self isSidebarHidden]];
    sidebarContainerView = self->_sidebarContainerView;
  }

  return sidebarContainerView;
}

- (UIStackView)stackView
{
  stackView = self->_stackView;
  if (!stackView)
  {
    v4 = [UIStackView alloc];
    contentContainerView = [(ICTrailingSidebarContainerViewController *)self contentContainerView];
    v11[0] = contentContainerView;
    sidebarContainerView = [(ICTrailingSidebarContainerViewController *)self sidebarContainerView];
    v11[1] = sidebarContainerView;
    v7 = [NSArray arrayWithObjects:v11 count:2];
    v8 = [v4 initWithArrangedSubviews:v7];
    v9 = self->_stackView;
    self->_stackView = v8;

    [(UIView *)self->_sidebarContainerView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIStackView *)self->_stackView setSpacing:9.0];
    stackView = self->_stackView;
  }

  return stackView;
}

- (void)createLayout
{
  view = [(ICTrailingSidebarContainerViewController *)self view];
  stackView = [(ICTrailingSidebarContainerViewController *)self stackView];
  [view addSubview:stackView];

  stackView2 = [(ICTrailingSidebarContainerViewController *)self stackView];
  [stackView2 ic_addConstraintsToFillSuperview];

  sidebarContainerView = [(ICTrailingSidebarContainerViewController *)self sidebarContainerView];
  widthAnchor = [sidebarContainerView widthAnchor];
  [(ICTrailingSidebarContainerViewController *)self sidebarWidth];
  v8 = [widthAnchor constraintEqualToConstant:?];
  sidebarWidthConstraint = self->_sidebarWidthConstraint;
  self->_sidebarWidthConstraint = v8;

  v11 = v8;
  v10 = [NSArray arrayWithObjects:&v11 count:1];
  [NSLayoutConstraint activateConstraints:v10];
}

- (void)setPreferredSidebarWidth:(double)width
{
  self->_preferredSidebarWidth = width;
  [(ICTrailingSidebarContainerViewController *)self sidebarWidth];
  v5 = v4;
  sidebarWidthConstraint = [(ICTrailingSidebarContainerViewController *)self sidebarWidthConstraint];
  [sidebarWidthConstraint setConstant:v5];
}

@end