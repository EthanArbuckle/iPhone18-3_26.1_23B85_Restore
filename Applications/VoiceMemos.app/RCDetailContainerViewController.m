@interface RCDetailContainerViewController
- (void)_addHostedViewToHierarchy;
- (void)setHostedViewController:(id)a3;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation RCDetailContainerViewController

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = RCDetailContainerViewController;
  [(RCDetailContainerViewController *)&v3 viewDidLoad];
  [(RCDetailContainerViewController *)self _addHostedViewToHierarchy];
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v9.receiver = self;
  v9.super_class = RCDetailContainerViewController;
  v7 = a4;
  [(RCDetailContainerViewController *)&v9 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  self->_transitionSize.width = width;
  self->_transitionSize.height = height;
  self->_isTransitioningSizes = 1;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100045B58;
  v8[3] = &unk_10028A488;
  v8[4] = self;
  [v7 animateAlongsideTransition:&stru_10028AB08 completion:v8];
}

- (void)setHostedViewController:(id)a3
{
  v5 = a3;
  hostedViewController = self->_hostedViewController;
  if (hostedViewController != v5)
  {
    v9 = v5;
    if (hostedViewController)
    {
      [(UIViewController *)hostedViewController willMoveToParentViewController:0];
      v7 = [(UIViewController *)self->_hostedViewController view];
      [v7 removeFromSuperview];

      [(UIViewController *)self->_hostedViewController removeFromParentViewController];
    }

    objc_storeStrong(&self->_hostedViewController, a3);
    v8 = [(RCDetailContainerViewController *)self isViewLoaded];
    v5 = v9;
    if (v8)
    {
      [(RCDetailContainerViewController *)self _addHostedViewToHierarchy];
      v5 = v9;
    }
  }
}

- (void)_addHostedViewToHierarchy
{
  if (self->_hostedViewController)
  {
    [(RCDetailContainerViewController *)self addChildViewController:?];
    v3 = [(RCDetailContainerViewController *)self view];
    v4 = [(UIViewController *)self->_hostedViewController view];
    [v3 addSubview:v4];

    [(UIViewController *)self->_hostedViewController didMoveToParentViewController:self];
    v5 = [(UIViewController *)self->_hostedViewController view];
    [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
    v21 = [v5 topAnchor];
    v22 = [(RCDetailContainerViewController *)self view];
    v20 = [v22 topAnchor];
    v19 = [v21 constraintEqualToAnchor:v20];
    v23[0] = v19;
    v17 = [v5 bottomAnchor];
    v18 = [(RCDetailContainerViewController *)self view];
    v16 = [v18 bottomAnchor];
    v15 = [v17 constraintEqualToAnchor:v16];
    v23[1] = v15;
    v6 = [v5 leadingAnchor];
    v7 = [(RCDetailContainerViewController *)self view];
    v8 = [v7 leadingAnchor];
    v9 = [v6 constraintEqualToAnchor:v8];
    v23[2] = v9;
    v10 = [v5 trailingAnchor];
    v11 = [(RCDetailContainerViewController *)self view];
    v12 = [v11 trailingAnchor];
    v13 = [v10 constraintEqualToAnchor:v12];
    v23[3] = v13;
    v14 = [NSArray arrayWithObjects:v23 count:4];
    [NSLayoutConstraint activateConstraints:v14];
  }
}

@end