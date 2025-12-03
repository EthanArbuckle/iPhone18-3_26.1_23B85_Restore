@interface AMSUICommonViewController
- (AMSUICommonView)view;
- (AMSUICommonViewController)init;
- (void)loadView;
- (void)setChildViewController:(id)controller;
- (void)setView:(id)view;
- (void)unsetChildViewController:(id)controller;
@end

@implementation AMSUICommonViewController

- (AMSUICommonViewController)init
{
  v3.receiver = self;
  v3.super_class = AMSUICommonViewController;
  return [(AMSUICommonViewController *)&v3 initWithNibName:0 bundle:0];
}

- (AMSUICommonView)view
{
  v4.receiver = self;
  v4.super_class = AMSUICommonViewController;
  view = [(AMSUICommonViewController *)&v4 view];

  return view;
}

- (void)setView:(id)view
{
  v3.receiver = self;
  v3.super_class = AMSUICommonViewController;
  [(AMSUICommonViewController *)&v3 setView:view];
}

- (void)setChildViewController:(id)controller
{
  controllerCopy = controller;
  [(AMSUICommonViewController *)self addChildViewController:controllerCopy];
  view = [(AMSUICommonViewController *)self view];
  view2 = [controllerCopy view];
  [view addSubview:view2];

  view3 = [(AMSUICommonViewController *)self view];
  [view3 bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  view4 = [controllerCopy view];
  [view4 setFrame:{v8, v10, v12, v14}];

  [controllerCopy didMoveToParentViewController:self];
}

- (void)unsetChildViewController:(id)controller
{
  controllerCopy = controller;
  [controllerCopy willMoveToParentViewController:0];
  view = [controllerCopy view];
  [view removeFromSuperview];

  [controllerCopy removeFromParentViewController];
}

- (void)loadView
{
  v3 = objc_alloc_init(AMSUICommonView);
  [(AMSUICommonViewController *)self setView:v3];
}

@end