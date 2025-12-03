@interface RCDetailContainerViewController
- (void)_addHostedViewToHierarchy;
- (void)setHostedViewController:(id)controller;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation RCDetailContainerViewController

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = RCDetailContainerViewController;
  [(RCDetailContainerViewController *)&v3 viewDidLoad];
  [(RCDetailContainerViewController *)self _addHostedViewToHierarchy];
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v9.receiver = self;
  v9.super_class = RCDetailContainerViewController;
  coordinatorCopy = coordinator;
  [(RCDetailContainerViewController *)&v9 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  self->_transitionSize.width = width;
  self->_transitionSize.height = height;
  self->_isTransitioningSizes = 1;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100045B58;
  v8[3] = &unk_10028A488;
  v8[4] = self;
  [coordinatorCopy animateAlongsideTransition:&stru_10028AB08 completion:v8];
}

- (void)setHostedViewController:(id)controller
{
  controllerCopy = controller;
  hostedViewController = self->_hostedViewController;
  if (hostedViewController != controllerCopy)
  {
    v9 = controllerCopy;
    if (hostedViewController)
    {
      [(UIViewController *)hostedViewController willMoveToParentViewController:0];
      view = [(UIViewController *)self->_hostedViewController view];
      [view removeFromSuperview];

      [(UIViewController *)self->_hostedViewController removeFromParentViewController];
    }

    objc_storeStrong(&self->_hostedViewController, controller);
    isViewLoaded = [(RCDetailContainerViewController *)self isViewLoaded];
    controllerCopy = v9;
    if (isViewLoaded)
    {
      [(RCDetailContainerViewController *)self _addHostedViewToHierarchy];
      controllerCopy = v9;
    }
  }
}

- (void)_addHostedViewToHierarchy
{
  if (self->_hostedViewController)
  {
    [(RCDetailContainerViewController *)self addChildViewController:?];
    view = [(RCDetailContainerViewController *)self view];
    view2 = [(UIViewController *)self->_hostedViewController view];
    [view addSubview:view2];

    [(UIViewController *)self->_hostedViewController didMoveToParentViewController:self];
    view3 = [(UIViewController *)self->_hostedViewController view];
    [view3 setTranslatesAutoresizingMaskIntoConstraints:0];
    topAnchor = [view3 topAnchor];
    view4 = [(RCDetailContainerViewController *)self view];
    topAnchor2 = [view4 topAnchor];
    v19 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v23[0] = v19;
    bottomAnchor = [view3 bottomAnchor];
    view5 = [(RCDetailContainerViewController *)self view];
    bottomAnchor2 = [view5 bottomAnchor];
    v15 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v23[1] = v15;
    leadingAnchor = [view3 leadingAnchor];
    view6 = [(RCDetailContainerViewController *)self view];
    leadingAnchor2 = [view6 leadingAnchor];
    v9 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v23[2] = v9;
    trailingAnchor = [view3 trailingAnchor];
    view7 = [(RCDetailContainerViewController *)self view];
    trailingAnchor2 = [view7 trailingAnchor];
    v13 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v23[3] = v13;
    v14 = [NSArray arrayWithObjects:v23 count:4];
    [NSLayoutConstraint activateConstraints:v14];
  }
}

@end