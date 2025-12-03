@interface ServiceResilientRemoteViewContainerViewController
- (void)preferredContentSizeDidChangeForChildContentContainer:(id)container;
- (void)setContainedViewController:(id)controller;
@end

@implementation ServiceResilientRemoteViewContainerViewController

- (void)setContainedViewController:(id)controller
{
  controllerCopy = controller;
  otherContainedViewController = self->_otherContainedViewController;
  self->_otherContainedViewController = controllerCopy;
  v22 = controllerCopy;
  v6 = otherContainedViewController;

  [(UIViewController *)self->_otherContainedViewController preferredContentSize];
  [(ServiceResilientRemoteViewContainerViewController *)self setPreferredContentSize:?];
  [(ServiceResilientRemoteViewContainerViewController *)self addChildViewController:self->_otherContainedViewController];
  [(UIViewController *)v6 willMoveToParentViewController:0];
  [(UIViewController *)v6 removeFromParentViewController];
  view = [(ServiceResilientRemoteViewContainerViewController *)self view];
  view2 = [(UIViewController *)self->_otherContainedViewController view];
  [view addSubview:view2];

  view3 = [(UIViewController *)self->_otherContainedViewController view];
  [view3 setTranslatesAutoresizingMaskIntoConstraints:1];

  view4 = [(UIViewController *)self->_otherContainedViewController view];
  [view4 setAutoresizingMask:18];

  view5 = [(ServiceResilientRemoteViewContainerViewController *)self view];
  [view5 bounds];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  view6 = [(UIViewController *)self->_otherContainedViewController view];
  [view6 setFrame:{v13, v15, v17, v19}];

  view7 = [(UIViewController *)v6 view];
  [view7 removeFromSuperview];

  [(UIViewController *)self->_otherContainedViewController didMoveToParentViewController:self];
}

- (void)preferredContentSizeDidChangeForChildContentContainer:(id)container
{
  v4.receiver = self;
  v4.super_class = ServiceResilientRemoteViewContainerViewController;
  [(ServiceResilientRemoteViewContainerViewController *)&v4 preferredContentSizeDidChangeForChildContentContainer:container];
  [(UIViewController *)self->_otherContainedViewController preferredContentSize];
  [(ServiceResilientRemoteViewContainerViewController *)self setPreferredContentSize:?];
}

@end