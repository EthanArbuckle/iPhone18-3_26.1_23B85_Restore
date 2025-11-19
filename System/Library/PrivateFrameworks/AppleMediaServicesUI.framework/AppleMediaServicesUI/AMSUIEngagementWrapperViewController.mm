@interface AMSUIEngagementWrapperViewController
- (AMSUIEngagementWrapperViewController)initWithViewController:(id)a3;
- (BOOL)isInViewServiceProcess;
- (void)_setContentOverlayInsets:(UIEdgeInsets)a3;
- (void)dealloc;
- (void)loadView;
- (void)presentationControllerDidDismiss:(id)a3;
- (void)updateContentOverlayInsetsOnTraitCollectionChange;
- (void)viewWillLayoutSubviews;
@end

@implementation AMSUIEngagementWrapperViewController

- (AMSUIEngagementWrapperViewController)initWithViewController:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = AMSUIEngagementWrapperViewController;
  v6 = [(AMSUIEngagementWrapperViewController *)&v9 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_viewController, a3);
    [(AMSUIEngagementWrapperViewController *)v7 _setup];
  }

  return v7;
}

- (void)dealloc
{
  v3 = [(AMSUIEngagementWrapperViewController *)self dismissBlock];

  if (v3)
  {
    v4 = [MEMORY[0x1E698C968] sharedConfig];
    if (!v4)
    {
      v4 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v5 = [v4 OSLogObject];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_1BB036000, v5, OS_LOG_TYPE_DEBUG, "dismissing via dealloc", buf, 2u);
    }

    v6 = [(AMSUIEngagementWrapperViewController *)self dismissBlock];
    v6[2]();

    [(AMSUIEngagementWrapperViewController *)self setDismissBlock:0];
  }

  v7.receiver = self;
  v7.super_class = AMSUIEngagementWrapperViewController;
  [(AMSUIEngagementWrapperViewController *)&v7 dealloc];
}

- (void)_setContentOverlayInsets:(UIEdgeInsets)a3
{
  right = a3.right;
  bottom = a3.bottom;
  left = a3.left;
  top = a3.top;
  if (-[AMSUIEngagementWrapperViewController isInViewServiceProcess](self, "isInViewServiceProcess") && (-[AMSUIEngagementWrapperViewController traitCollection](self, "traitCollection"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 verticalSizeClass], v8, v9 == 1))
  {
    if (left >= right)
    {
      v10 = left;
    }

    else
    {
      v10 = right;
    }

    [(AMSUIEngagementWrapperViewController *)&v12 _setContentOverlayInsets:0.0, v10, bottom, v10, v11.receiver, v11.super_class, self, AMSUIEngagementWrapperViewController];
  }

  else
  {
    [(AMSUIEngagementWrapperViewController *)&v11 _setContentOverlayInsets:top, left, bottom, right, self, AMSUIEngagementWrapperViewController, v12.receiver, v12.super_class];
  }
}

- (void)loadView
{
  v5.receiver = self;
  v5.super_class = AMSUIEngagementWrapperViewController;
  [(AMSUICommonViewController *)&v5 loadView];
  v3 = [(AMSUIEngagementWrapperViewController *)self viewController];
  v4.receiver = self;
  v4.super_class = AMSUIEngagementWrapperViewController;
  [(AMSUICommonViewController *)&v4 setChildViewController:v3];

  [(AMSUIEngagementWrapperViewController *)self updateContentOverlayInsetsOnTraitCollectionChange];
}

- (void)updateContentOverlayInsetsOnTraitCollectionChange
{
  v8[1] = *MEMORY[0x1E69E9840];
  if ([(AMSUIEngagementWrapperViewController *)self isInViewServiceProcess])
  {
    v3 = [(AMSUICommonViewController *)self view];
    v8[0] = objc_opt_class();
    v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __89__AMSUIEngagementWrapperViewController_updateContentOverlayInsetsOnTraitCollectionChange__block_invoke;
    v7[3] = &unk_1E7F24D50;
    v7[4] = self;
    v5 = [v3 registerForTraitChanges:v4 withHandler:v7];
  }

  v6 = *MEMORY[0x1E69E9840];
}

uint64_t __89__AMSUIEngagementWrapperViewController_updateContentOverlayInsetsOnTraitCollectionChange__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  [v1 _contentOverlayInsets];

  return [v1 _setContentOverlayInsets:?];
}

- (BOOL)isInViewServiceProcess
{
  v2 = [MEMORY[0x1E698CAC8] currentProcess];
  v3 = [v2 executableName];
  v4 = [v3 isEqual:@"AMSEngagementViewService"];

  return v4;
}

- (void)viewWillLayoutSubviews
{
  v14.receiver = self;
  v14.super_class = AMSUIEngagementWrapperViewController;
  [(AMSUIEngagementWrapperViewController *)&v14 viewWillLayoutSubviews];
  v3 = [(AMSUICommonViewController *)self view];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [(AMSUIEngagementWrapperViewController *)self viewController];
  v13 = [v12 view];
  [v13 setFrame:{v5, v7, v9, v11}];
}

- (void)presentationControllerDidDismiss:(id)a3
{
  v4 = [(AMSUIEngagementWrapperViewController *)self dismissBlock];

  if (v4)
  {
    v5 = [MEMORY[0x1E698C968] sharedConfig];
    if (!v5)
    {
      v5 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v6 = [v5 OSLogObject];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      *v8 = 0;
      _os_log_impl(&dword_1BB036000, v6, OS_LOG_TYPE_DEBUG, "dismissing from presentation controller did dismiss.", v8, 2u);
    }

    v7 = [(AMSUIEngagementWrapperViewController *)self dismissBlock];
    v7[2]();

    [(AMSUIEngagementWrapperViewController *)self setDismissBlock:0];
  }
}

@end