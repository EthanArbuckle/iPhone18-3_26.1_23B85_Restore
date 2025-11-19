@interface AMSUIEngagementCardWrapperViewController
- (AMSUIEngagementCardWrapperViewController)initWithViewController:(id)a3;
- (void)setPresentationStyle:(int64_t)a3;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation AMSUIEngagementCardWrapperViewController

- (AMSUIEngagementCardWrapperViewController)initWithViewController:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = AMSUIEngagementCardWrapperViewController;
  v6 = [(AMSUIEngagementCardWrapperViewController *)&v9 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_viewController, a3);
  }

  return v7;
}

- (void)viewDidLoad
{
  v8.receiver = self;
  v8.super_class = AMSUIEngagementCardWrapperViewController;
  [(AMSUIEngagementCardWrapperViewController *)&v8 viewDidLoad];
  v3 = objc_alloc(MEMORY[0x1E69DCCD8]);
  v4 = [(AMSUIEngagementCardWrapperViewController *)self viewController];
  v5 = [v3 initWithRootViewController:v4];

  v6 = [v5 navigationBar];
  [v6 setRequestedContentSize:3];

  [(AMSUIEngagementCardWrapperViewController *)self setChildNavigationController:v5];
  v7 = [(AMSUIEngagementCardWrapperViewController *)self childNavigationController];
  [(AMSUICommonViewController *)self setChildViewController:v7];
}

- (void)viewWillLayoutSubviews
{
  v14.receiver = self;
  v14.super_class = AMSUIEngagementCardWrapperViewController;
  [(AMSUIEngagementCardWrapperViewController *)&v14 viewWillLayoutSubviews];
  v3 = [(AMSUICommonViewController *)self view];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [(AMSUIEngagementCardWrapperViewController *)self childNavigationController];
  v13 = [v12 view];
  [v13 setFrame:{v5, v7, v9, v11}];
}

- (void)setPresentationStyle:(int64_t)a3
{
  self->_presentationStyle = a3;
  if (a3 == 5)
  {
    PRXIsPad();
    PRXExpectedCardWidthForStyle();
  }

  else
  {
    if (a3 != 4)
    {
      return;
    }

    PRXCardDefaultSize();
  }

  [(AMSUIEngagementCardWrapperViewController *)self setPreferredContentSize:?];
}

@end