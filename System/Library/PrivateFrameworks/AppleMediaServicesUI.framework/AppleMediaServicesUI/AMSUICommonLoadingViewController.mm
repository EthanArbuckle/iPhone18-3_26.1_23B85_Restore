@interface AMSUICommonLoadingViewController
- (void)_setup;
- (void)loadView;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation AMSUICommonLoadingViewController

- (void)loadView
{
  v5.receiver = self;
  v5.super_class = AMSUICommonLoadingViewController;
  [(AMSUICommonViewController *)&v5 loadView];
  ams_defaultPlatformBackgroundColor = [MEMORY[0x1E69DC888] ams_defaultPlatformBackgroundColor];
  view = [(AMSUICommonViewController *)self view];
  [view ams_setBackgroundColor:ams_defaultPlatformBackgroundColor];
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = AMSUICommonLoadingViewController;
  [(AMSUICommonLoadingViewController *)&v3 viewDidLoad];
  [(AMSUICommonLoadingViewController *)self _setup];
}

- (void)viewWillLayoutSubviews
{
  v13.receiver = self;
  v13.super_class = AMSUICommonLoadingViewController;
  [(AMSUICommonLoadingViewController *)&v13 viewWillLayoutSubviews];
  view = [(AMSUICommonViewController *)self view];
  [view bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  loadingView = [(AMSUICommonLoadingViewController *)self loadingView];
  [loadingView setFrame:{v5, v7, v9, v11}];
}

- (void)_setup
{
  v3 = [AMSUILoadingView alloc];
  v4 = [(AMSUILoadingView *)v3 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  [(AMSUICommonLoadingViewController *)self setLoadingView:v4];

  ams_defaultPlatformBackgroundColor = [MEMORY[0x1E69DC888] ams_defaultPlatformBackgroundColor];
  loadingView = [(AMSUICommonLoadingViewController *)self loadingView];
  [loadingView setBackgroundColor:ams_defaultPlatformBackgroundColor];

  loadingView2 = [(AMSUICommonLoadingViewController *)self loadingView];
  [loadingView2 startAnimating];

  objc_initWeak(&location, self);
  v8 = MEMORY[0x1E69E96A0];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __42__AMSUICommonLoadingViewController__setup__block_invoke;
  v14[3] = &unk_1E7F24968;
  objc_copyWeak(&v15, &location);
  v9 = v14;
  v10 = AMSLogKey();
  v11 = dispatch_time(0, 1500000000);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __AMSDispatchAfter_block_invoke;
  block[3] = &unk_1E7F245E0;
  v18 = v10;
  v19 = v9;
  v12 = v10;
  v13 = MEMORY[0x1E69E96A0];
  dispatch_after(v11, MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

void __42__AMSUICommonLoadingViewController__setup__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained view];
  v3 = [WeakRetained loadingView];
  [v2 addSubview:v3];

  v4 = [WeakRetained view];
  [v4 setAlpha:0.0];

  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __42__AMSUICommonLoadingViewController__setup__block_invoke_2;
  v5[3] = &unk_1E7F242D0;
  v5[4] = WeakRetained;
  [MEMORY[0x1E69DD250] animateWithDuration:0 delay:v5 options:0 animations:0.5 completion:0.0];
}

void __42__AMSUICommonLoadingViewController__setup__block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) view];
  [v1 setAlpha:1.0];
}

@end