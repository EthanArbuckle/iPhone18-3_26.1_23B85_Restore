@interface AMSUICommonViewController
- (AMSUICommonView)view;
- (AMSUICommonViewController)init;
- (void)loadView;
- (void)setChildViewController:(id)a3;
- (void)setView:(id)a3;
- (void)unsetChildViewController:(id)a3;
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
  v2 = [(AMSUICommonViewController *)&v4 view];

  return v2;
}

- (void)setView:(id)a3
{
  v3.receiver = self;
  v3.super_class = AMSUICommonViewController;
  [(AMSUICommonViewController *)&v3 setView:a3];
}

- (void)setChildViewController:(id)a3
{
  v16 = a3;
  [(AMSUICommonViewController *)self addChildViewController:v16];
  v4 = [(AMSUICommonViewController *)self view];
  v5 = [v16 view];
  [v4 addSubview:v5];

  v6 = [(AMSUICommonViewController *)self view];
  [v6 bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = [v16 view];
  [v15 setFrame:{v8, v10, v12, v14}];

  [v16 didMoveToParentViewController:self];
}

- (void)unsetChildViewController:(id)a3
{
  v4 = a3;
  [v4 willMoveToParentViewController:0];
  v3 = [v4 view];
  [v3 removeFromSuperview];

  [v4 removeFromParentViewController];
}

- (void)loadView
{
  v3 = objc_alloc_init(AMSUICommonView);
  [(AMSUICommonViewController *)self setView:v3];
}

@end