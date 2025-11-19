@interface AMSUIAlertDialogHeaderViewController
- (AMSUIAlertDialogHeaderViewController)initWithURL:(id)a3;
- (void)loadImage;
- (void)viewDidLoad;
@end

@implementation AMSUIAlertDialogHeaderViewController

- (AMSUIAlertDialogHeaderViewController)initWithURL:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = AMSUIAlertDialogHeaderViewController;
  v6 = [(AMSUIAlertDialogHeaderViewController *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_url, a3);
    v8 = objc_alloc(MEMORY[0x1E69DCAE0]);
    v9 = [v8 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    imageView = v7->_imageView;
    v7->_imageView = v9;

    [(AMSUIAlertDialogHeaderViewController *)v7 loadImage];
  }

  return v7;
}

- (void)viewDidLoad
{
  v34[5] = *MEMORY[0x1E69E9840];
  v33.receiver = self;
  v33.super_class = AMSUIAlertDialogHeaderViewController;
  [(AMSUIAlertDialogHeaderViewController *)&v33 viewDidLoad];
  v3 = [(AMSUIAlertDialogHeaderViewController *)self imageView];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];

  v4 = [(AMSUIAlertDialogHeaderViewController *)self imageView];
  [v4 setContentMode:1];

  v5 = [(AMSUIAlertDialogHeaderViewController *)self view];
  v6 = [(AMSUIAlertDialogHeaderViewController *)self imageView];
  [v5 addSubview:v6];

  v22 = MEMORY[0x1E696ACD8];
  v32 = [(AMSUIAlertDialogHeaderViewController *)self imageView];
  v30 = [v32 topAnchor];
  v31 = [(AMSUIAlertDialogHeaderViewController *)self view];
  v29 = [v31 topAnchor];
  v28 = [v30 constraintEqualToAnchor:v29 constant:20.0];
  v34[0] = v28;
  v27 = [(AMSUIAlertDialogHeaderViewController *)self imageView];
  v25 = [v27 bottomAnchor];
  v26 = [(AMSUIAlertDialogHeaderViewController *)self view];
  v24 = [v26 bottomAnchor];
  v23 = [v25 constraintEqualToAnchor:v24];
  v34[1] = v23;
  v21 = [(AMSUIAlertDialogHeaderViewController *)self imageView];
  v19 = [v21 leadingAnchor];
  v20 = [(AMSUIAlertDialogHeaderViewController *)self view];
  v18 = [v20 leadingAnchor];
  v7 = [v19 constraintEqualToAnchor:v18];
  v34[2] = v7;
  v8 = [(AMSUIAlertDialogHeaderViewController *)self imageView];
  v9 = [v8 trailingAnchor];
  v10 = [(AMSUIAlertDialogHeaderViewController *)self view];
  v11 = [v10 trailingAnchor];
  v12 = [v9 constraintEqualToAnchor:v11];
  v34[3] = v12;
  v13 = [(AMSUIAlertDialogHeaderViewController *)self imageView];
  v14 = [v13 heightAnchor];
  v15 = [v14 constraintEqualToConstant:44.0];
  v34[4] = v15;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:5];
  [v22 activateConstraints:v16];

  v17 = *MEMORY[0x1E69E9840];
}

- (void)loadImage
{
  v3 = [(AMSUIAlertDialogHeaderViewController *)self url];

  if (v3)
  {
    v4 = +[AMSUIImageLoader defaultLoader];
    v5 = [(AMSUIAlertDialogHeaderViewController *)self url];
    v6 = [v4 fetchImageWithURL:v5];

    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __49__AMSUIAlertDialogHeaderViewController_loadImage__block_invoke;
    v8[3] = &unk_1E7F243E8;
    v8[4] = self;
    [v6 addSuccessBlock:v8];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __49__AMSUIAlertDialogHeaderViewController_loadImage__block_invoke_2;
    v7[3] = &unk_1E7F24410;
    v7[4] = self;
    [v6 addErrorBlock:v7];
  }
}

void __49__AMSUIAlertDialogHeaderViewController_loadImage__block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [MEMORY[0x1E698C968] sharedConfig];
  if (!v4)
  {
    v4 = [MEMORY[0x1E698C968] sharedConfig];
  }

  v5 = [v4 OSLogObject];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = *(a1 + 32);
    *buf = 138543362;
    v13 = objc_opt_class();
    v7 = v13;
    _os_log_impl(&dword_1BB036000, v5, OS_LOG_TYPE_DEBUG, "%{public}@: Successfully loaded image asset", buf, 0xCu);
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __49__AMSUIAlertDialogHeaderViewController_loadImage__block_invoke_7;
  v10[3] = &unk_1E7F243C0;
  v10[4] = *(a1 + 32);
  v11 = v3;
  v8 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v10);

  v9 = *MEMORY[0x1E69E9840];
}

void __49__AMSUIAlertDialogHeaderViewController_loadImage__block_invoke_7(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) imageView];
  [v2 setImage:v1];
}

void __49__AMSUIAlertDialogHeaderViewController_loadImage__block_invoke_2(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [MEMORY[0x1E698C968] sharedConfig];
  if (!v4)
  {
    v4 = [MEMORY[0x1E698C968] sharedConfig];
  }

  v5 = [v4 OSLogObject];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = *(a1 + 32);
    v9 = 138543618;
    v10 = objc_opt_class();
    v11 = 2114;
    v12 = v3;
    v7 = v10;
    _os_log_impl(&dword_1BB036000, v5, OS_LOG_TYPE_ERROR, "%{public}@: Failed to load image %{public}@", &v9, 0x16u);
  }

  v8 = *MEMORY[0x1E69E9840];
}

@end