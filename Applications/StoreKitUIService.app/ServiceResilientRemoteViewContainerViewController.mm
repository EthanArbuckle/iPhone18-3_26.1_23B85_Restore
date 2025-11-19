@interface ServiceResilientRemoteViewContainerViewController
- (void)preferredContentSizeDidChangeForChildContentContainer:(id)a3;
- (void)setContainedViewController:(id)a3;
@end

@implementation ServiceResilientRemoteViewContainerViewController

- (void)setContainedViewController:(id)a3
{
  v4 = a3;
  otherContainedViewController = self->_otherContainedViewController;
  self->_otherContainedViewController = v4;
  v22 = v4;
  v6 = otherContainedViewController;

  [(UIViewController *)self->_otherContainedViewController preferredContentSize];
  [(ServiceResilientRemoteViewContainerViewController *)self setPreferredContentSize:?];
  [(ServiceResilientRemoteViewContainerViewController *)self addChildViewController:self->_otherContainedViewController];
  [(UIViewController *)v6 willMoveToParentViewController:0];
  [(UIViewController *)v6 removeFromParentViewController];
  v7 = [(ServiceResilientRemoteViewContainerViewController *)self view];
  v8 = [(UIViewController *)self->_otherContainedViewController view];
  [v7 addSubview:v8];

  v9 = [(UIViewController *)self->_otherContainedViewController view];
  [v9 setTranslatesAutoresizingMaskIntoConstraints:1];

  v10 = [(UIViewController *)self->_otherContainedViewController view];
  [v10 setAutoresizingMask:18];

  v11 = [(ServiceResilientRemoteViewContainerViewController *)self view];
  [v11 bounds];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v20 = [(UIViewController *)self->_otherContainedViewController view];
  [v20 setFrame:{v13, v15, v17, v19}];

  v21 = [(UIViewController *)v6 view];
  [v21 removeFromSuperview];

  [(UIViewController *)self->_otherContainedViewController didMoveToParentViewController:self];
}

- (void)preferredContentSizeDidChangeForChildContentContainer:(id)a3
{
  v4.receiver = self;
  v4.super_class = ServiceResilientRemoteViewContainerViewController;
  [(ServiceResilientRemoteViewContainerViewController *)&v4 preferredContentSizeDidChangeForChildContentContainer:a3];
  [(UIViewController *)self->_otherContainedViewController preferredContentSize];
  [(ServiceResilientRemoteViewContainerViewController *)self setPreferredContentSize:?];
}

@end