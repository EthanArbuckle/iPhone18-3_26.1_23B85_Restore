@interface ICTrailingSidebarContainerViewController
- (ICTrailingSidebarContainerViewController)init;
- (UIStackView)stackView;
- (UIView)contentContainerView;
- (UIView)sidebarContainerView;
- (void)createLayout;
- (void)setContentViewController:(id)a3;
- (void)setPreferredSidebarWidth:(double)a3;
- (void)setSidebarHidden:(BOOL)a3;
- (void)setSidebarViewController:(id)a3;
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

- (void)setContentViewController:(id)a3
{
  v9 = a3;
  [(UIViewController *)self->_contentViewController willMoveToParentViewController:0];
  [(UIViewController *)self->_contentViewController removeFromParentViewController];
  v5 = [(UIViewController *)self->_contentViewController view];
  [v5 removeFromSuperview];

  objc_storeStrong(&self->_contentViewController, a3);
  if (v9)
  {
    v6 = [(ICTrailingSidebarContainerViewController *)self contentContainerView];
    v7 = [v9 view];
    [v6 addSubview:v7];

    [(ICTrailingSidebarContainerViewController *)self addChildViewController:v9];
    [v9 didMoveToParentViewController:self];
    v8 = [v9 view];
    [v8 ic_addConstraintsToFillSuperview];
  }
}

- (void)setSidebarViewController:(id)a3
{
  v9 = a3;
  [(UIViewController *)self->_sidebarViewController willMoveToParentViewController:0];
  [(UIViewController *)self->_sidebarViewController removeFromParentViewController];
  v5 = [(UIViewController *)self->_sidebarViewController view];
  [v5 removeFromSuperview];

  objc_storeStrong(&self->_sidebarViewController, a3);
  if (v9)
  {
    v6 = [(ICTrailingSidebarContainerViewController *)self sidebarContainerView];
    v7 = [v9 view];
    [v6 addSubview:v7];

    [(ICTrailingSidebarContainerViewController *)self addChildViewController:v9];
    [v9 didMoveToParentViewController:self];
    v8 = [v9 view];
    [v8 ic_addConstraintsToFillSuperview];
  }
}

- (void)setSidebarHidden:(BOOL)a3
{
  if (self->_sidebarHidden != a3)
  {
    v3 = a3;
    [(ICTrailingSidebarContainerViewController *)self setTransitioning:1];
    self->_sidebarHidden = v3;
    v5 = [(ICTrailingSidebarContainerViewController *)self sidebarContainerView];
    [v5 setHidden:v3];

    v6 = 0.0;
    if (!v3)
    {
      [(ICTrailingSidebarContainerViewController *)self preferredSidebarWidth];
    }

    [(ICTrailingSidebarContainerViewController *)self setSidebarWidth:v6];
    [(ICTrailingSidebarContainerViewController *)self sidebarWidth];
    v8 = v7;
    v9 = [(ICTrailingSidebarContainerViewController *)self sidebarWidthConstraint];
    [v9 setConstant:v8];

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
    v5 = [(ICTrailingSidebarContainerViewController *)self contentContainerView];
    v11[0] = v5;
    v6 = [(ICTrailingSidebarContainerViewController *)self sidebarContainerView];
    v11[1] = v6;
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
  v3 = [(ICTrailingSidebarContainerViewController *)self view];
  v4 = [(ICTrailingSidebarContainerViewController *)self stackView];
  [v3 addSubview:v4];

  v5 = [(ICTrailingSidebarContainerViewController *)self stackView];
  [v5 ic_addConstraintsToFillSuperview];

  v6 = [(ICTrailingSidebarContainerViewController *)self sidebarContainerView];
  v7 = [v6 widthAnchor];
  [(ICTrailingSidebarContainerViewController *)self sidebarWidth];
  v8 = [v7 constraintEqualToConstant:?];
  sidebarWidthConstraint = self->_sidebarWidthConstraint;
  self->_sidebarWidthConstraint = v8;

  v11 = v8;
  v10 = [NSArray arrayWithObjects:&v11 count:1];
  [NSLayoutConstraint activateConstraints:v10];
}

- (void)setPreferredSidebarWidth:(double)a3
{
  self->_preferredSidebarWidth = a3;
  [(ICTrailingSidebarContainerViewController *)self sidebarWidth];
  v5 = v4;
  v6 = [(ICTrailingSidebarContainerViewController *)self sidebarWidthConstraint];
  [v6 setConstant:v5];
}

@end