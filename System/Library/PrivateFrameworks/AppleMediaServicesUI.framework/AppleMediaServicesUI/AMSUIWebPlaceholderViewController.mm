@interface AMSUIWebPlaceholderViewController
- (AMSUIWebPlaceholderViewController)initWithContext:(id)a3;
- (AMSUIWebPlaceholderViewController)initWithModel:(id)a3 context:(id)a4 appearance:(id)a5;
- (AMSUIWebPlaceholderViewController)initWithSnapshot:(id)a3 context:(id)a4 appearance:(id)a5;
- (id)removeSnapshot;
- (void)_animateTransition;
- (void)_applyAppearance;
- (void)_replacePrimaryViewWithView:(id)a3 animated:(BOOL)a4;
- (void)_replacePrimaryViewWithViewController:(id)a3 animated:(BOOL)a4;
- (void)_startReappearTransitionTimerAnimated:(BOOL)a3;
- (void)_transitionToSnapshot;
- (void)awaitSnapshotWithCompletion:(id)a3;
- (void)dealloc;
- (void)loadView;
- (void)viewWillLayoutSubviews;
- (void)willPresentPageModel:(id)a3 appearance:(id)a4;
@end

@implementation AMSUIWebPlaceholderViewController

- (AMSUIWebPlaceholderViewController)initWithContext:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = AMSUIWebPlaceholderViewController;
  v6 = [(AMSUICommonViewController *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_context, a3);
    v8 = [MEMORY[0x1E698C7F0] promiseWithSuccess];
    snapshotPromise = v7->_snapshotPromise;
    v7->_snapshotPromise = v8;
  }

  return v7;
}

- (AMSUIWebPlaceholderViewController)initWithModel:(id)a3 context:(id)a4 appearance:(id)a5
{
  v9 = a3;
  v10 = a5;
  v11 = [(AMSUIWebPlaceholderViewController *)self initWithContext:a4];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_appearance, a5);
    objc_storeStrong(&v12->_model, a3);
  }

  return v12;
}

- (AMSUIWebPlaceholderViewController)initWithSnapshot:(id)a3 context:(id)a4 appearance:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(AMSUIWebPlaceholderViewController *)self initWithContext:v9];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_appearance, a5);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = objc_alloc_init(MEMORY[0x1E698C7F0]);
      snapshotPromise = v12->_snapshotPromise;
      v12->_snapshotPromise = v13;

      objc_initWeak(&location, v12);
      v15 = [AMSUIWebSnapshotView alloc];
      v16 = [v8 view];
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __73__AMSUIWebPlaceholderViewController_initWithSnapshot_context_appearance___block_invoke;
      v20[3] = &unk_1E7F24968;
      objc_copyWeak(&v21, &location);
      v17 = [(AMSUIWebSnapshotView *)v15 initWithView:v16 completion:v20];
      snapshotView = v12->_snapshotView;
      v12->_snapshotView = v17;

      objc_destroyWeak(&v21);
      objc_destroyWeak(&location);
    }
  }

  return v12;
}

void __73__AMSUIWebPlaceholderViewController_initWithSnapshot_context_appearance___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained snapshotPromise];
  [v1 finishWithSuccess];
}

- (void)awaitSnapshotWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(AMSUIWebPlaceholderViewController *)self snapshotPromise];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __65__AMSUIWebPlaceholderViewController_awaitSnapshotWithCompletion___block_invoke;
  v7[3] = &unk_1E7F26A48;
  v8 = v4;
  v6 = v4;
  [v5 addFinishBlock:v7];
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = AMSUIWebPlaceholderViewController;
  [(AMSUIWebPlaceholderViewController *)&v4 dealloc];
}

- (void)loadView
{
  v14.receiver = self;
  v14.super_class = AMSUIWebPlaceholderViewController;
  [(AMSUICommonViewController *)&v14 loadView];
  v3 = +[AMSUIWebAppearance defaultPlatformBackgroundColor];
  v4 = [(AMSUICommonViewController *)self view];
  [v4 ams_setBackgroundColor:v3];

  v5 = objc_opt_class();
  v6 = [(AMSUIWebPlaceholderViewController *)self model];
  v7 = [v6 message];
  v8 = [v5 placeholderStyleLoadingControllerWithMessage:v7];
  [(AMSUIWebPlaceholderViewController *)self setLoadingController:v8];

  v9 = [(AMSUIWebPlaceholderViewController *)self loadingController];
  v10 = [v9 view];
  [v10 ams_setBackgroundColor:v3];

  v11 = [(AMSUIWebPlaceholderViewController *)self model];
  LODWORD(v10) = [v11 disableDelay];

  if (v10)
  {
    [(AMSUIWebPlaceholderViewController *)self _transitionToLoadingAnimated:0];
  }

  else
  {
    [(AMSUIWebPlaceholderViewController *)self _transitionToSnapshot];
  }

  v12 = [(AMSUIWebPlaceholderViewController *)self snapshotID];

  if (!v12)
  {
    v13 = objc_opt_new();
    [(AMSUIWebPlaceholderViewController *)self setSnapshotID:v13];
  }
}

- (void)viewWillLayoutSubviews
{
  v13.receiver = self;
  v13.super_class = AMSUIWebPlaceholderViewController;
  [(AMSUIWebPlaceholderViewController *)&v13 viewWillLayoutSubviews];
  v3 = [(AMSUICommonViewController *)self view];
  [v3 frame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [(AMSUIWebPlaceholderViewController *)self visibleView];
  [v12 setFrame:{v5, v7, v9, v11}];
}

- (id)removeSnapshot
{
  v2 = [(AMSUIWebPlaceholderViewController *)self snapshotView];
  v3 = [v2 removeSnapshot];

  return v3;
}

- (void)willPresentPageModel:(id)a3 appearance:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = v6;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  if (v9)
  {
    objc_storeStrong(&self->_model, v9);
    objc_storeStrong(&self->_appearance, a4);
    [(AMSUIWebPlaceholderViewController *)self _applyAppearance];
  }

  else
  {
    v10 = [MEMORY[0x1E698C968] sharedWebUIConfig];
    if (!v10)
    {
      v10 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v11 = [v10 OSLogObject];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = objc_opt_class();
      v13 = [(AMSUIWebPlaceholderViewController *)self context];
      v14 = [v13 logKey];
      v16 = 138543874;
      v17 = v12;
      v18 = 2114;
      v19 = v14;
      v20 = 2114;
      v21 = v8;
      _os_log_impl(&dword_1BB036000, v11, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Invalid loading page model: %{public}@", &v16, 0x20u);
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)_applyAppearance
{
  v13 = [(AMSUIWebPlaceholderViewController *)self appearance];
  v3 = +[AMSUIWebAppearance defaultPlatformBackgroundColor];
  v4 = [v13 backgroundColor];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = v3;
  }

  v7 = [(AMSUICommonViewController *)self view];
  [v7 ams_setBackgroundColor:v6];

  v8 = [v13 backgroundColor];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = v3;
  }

  v11 = [(AMSUIWebPlaceholderViewController *)self loadingController];
  v12 = [v11 view];
  [v12 ams_setBackgroundColor:v10];
}

- (void)_startReappearTransitionTimerAnimated:(BOOL)a3
{
  v5 = [(AMSUIWebPlaceholderViewController *)self visibleView];
  v6 = [(AMSUIWebPlaceholderViewController *)self loadingController];
  v7 = [v6 view];

  if (v5 != v7)
  {
    objc_initWeak(&location, self);
    v8 = MEMORY[0x1E69E96A0];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __75__AMSUIWebPlaceholderViewController__startReappearTransitionTimerAnimated___block_invoke;
    v14[3] = &unk_1E7F26A70;
    objc_copyWeak(&v15, &location);
    v16 = a3;
    v9 = v14;
    v10 = AMSLogKey();
    v11 = dispatch_time(0, 1500000000);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __AMSDispatchAfter_block_invoke_1;
    block[3] = &unk_1E7F245E0;
    v19 = v10;
    v20 = v9;
    v12 = v10;
    v13 = MEMORY[0x1E69E96A0];
    dispatch_after(v11, MEMORY[0x1E69E96A0], block);

    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }
}

void __75__AMSUIWebPlaceholderViewController__startReappearTransitionTimerAnimated___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _transitionToLoadingAnimated:*(a1 + 40)];
  [WeakRetained setSnapshotView:0];
}

- (void)_replacePrimaryViewWithView:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v15 = a3;
  v6 = [(AMSUIWebPlaceholderViewController *)self visibleView];

  v7 = v15;
  if (v6 != v15)
  {
    v8 = [(AMSUIWebPlaceholderViewController *)self visibleView];
    v9 = [(AMSUIWebPlaceholderViewController *)self loadingController];
    v10 = [v9 view];

    if (v8 == v10)
    {
      v11 = [(AMSUIWebPlaceholderViewController *)self loadingController];
      [(AMSUICommonViewController *)self unsetChildViewController:v11];
    }

    v12 = [(AMSUIWebPlaceholderViewController *)self visibleView];
    [v12 removeFromSuperview];

    v13 = [(AMSUICommonViewController *)self view];
    [v13 bounds];
    [v15 setFrame:?];

    v14 = [(AMSUICommonViewController *)self view];
    [v14 addSubview:v15];

    [(AMSUIWebPlaceholderViewController *)self setVisibleView:v15];
    v7 = v15;
    if (v4)
    {
      [(AMSUIWebPlaceholderViewController *)self _animateTransition];
      v7 = v15;
    }
  }
}

- (void)_replacePrimaryViewWithViewController:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v10 = a3;
  v6 = [(AMSUIWebPlaceholderViewController *)self visibleView];
  v7 = [v10 view];

  if (v6 != v7)
  {
    v8 = [(AMSUIWebPlaceholderViewController *)self visibleView];
    [v8 removeFromSuperview];

    [(AMSUICommonViewController *)self setChildViewController:v10];
    v9 = [v10 view];
    [(AMSUIWebPlaceholderViewController *)self setVisibleView:v9];

    if (v4)
    {
      [(AMSUIWebPlaceholderViewController *)self _animateTransition];
    }
  }
}

- (void)_animateTransition
{
  v3 = [(AMSUIWebPlaceholderViewController *)self visibleView];
  [v3 setAlpha:0.0];

  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __55__AMSUIWebPlaceholderViewController__animateTransition__block_invoke;
  v4[3] = &unk_1E7F242D0;
  v4[4] = self;
  [MEMORY[0x1E69DD250] animateWithDuration:0 delay:v4 options:0 animations:0.5 completion:0.0];
}

void __55__AMSUIWebPlaceholderViewController__animateTransition__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) visibleView];
  [v1 setAlpha:1.0];
}

- (void)_transitionToSnapshot
{
  v3 = [(AMSUIWebPlaceholderViewController *)self snapshotView];

  if (v3)
  {
    v4 = [(AMSUIWebPlaceholderViewController *)self snapshotView];
    [(AMSUIWebPlaceholderViewController *)self _replacePrimaryViewWithView:v4 animated:0];
  }
}

@end