@interface AMSUIEngagementCardWrapperViewController
- (AMSUIEngagementCardWrapperViewController)initWithViewController:(id)controller;
- (void)setPresentationStyle:(int64_t)style;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation AMSUIEngagementCardWrapperViewController

- (AMSUIEngagementCardWrapperViewController)initWithViewController:(id)controller
{
  controllerCopy = controller;
  v9.receiver = self;
  v9.super_class = AMSUIEngagementCardWrapperViewController;
  v6 = [(AMSUIEngagementCardWrapperViewController *)&v9 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_viewController, controller);
  }

  return v7;
}

- (void)viewDidLoad
{
  v8.receiver = self;
  v8.super_class = AMSUIEngagementCardWrapperViewController;
  [(AMSUIEngagementCardWrapperViewController *)&v8 viewDidLoad];
  v3 = objc_alloc(MEMORY[0x1E69DCCD8]);
  viewController = [(AMSUIEngagementCardWrapperViewController *)self viewController];
  v5 = [v3 initWithRootViewController:viewController];

  navigationBar = [v5 navigationBar];
  [navigationBar setRequestedContentSize:3];

  [(AMSUIEngagementCardWrapperViewController *)self setChildNavigationController:v5];
  childNavigationController = [(AMSUIEngagementCardWrapperViewController *)self childNavigationController];
  [(AMSUICommonViewController *)self setChildViewController:childNavigationController];
}

- (void)viewWillLayoutSubviews
{
  v14.receiver = self;
  v14.super_class = AMSUIEngagementCardWrapperViewController;
  [(AMSUIEngagementCardWrapperViewController *)&v14 viewWillLayoutSubviews];
  view = [(AMSUICommonViewController *)self view];
  [view bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  childNavigationController = [(AMSUIEngagementCardWrapperViewController *)self childNavigationController];
  view2 = [childNavigationController view];
  [view2 setFrame:{v5, v7, v9, v11}];
}

- (void)setPresentationStyle:(int64_t)style
{
  self->_presentationStyle = style;
  if (style == 5)
  {
    PRXIsPad();
    PRXExpectedCardWidthForStyle();
  }

  else
  {
    if (style != 4)
    {
      return;
    }

    PRXCardDefaultSize();
  }

  [(AMSUIEngagementCardWrapperViewController *)self setPreferredContentSize:?];
}

@end