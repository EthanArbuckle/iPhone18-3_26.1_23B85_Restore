@interface AMSUIWebSnapshotView
+ (id)_imageViewForImage:(id)a3;
+ (void)_screenCapFromView:(id)a3 completion:(id)a4;
- (AMSUIWebSnapshotView)initWithView:(id)a3 completion:(id)a4;
- (id)removeSnapshot;
- (void)layoutSubviews;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateSnapshot:(id)a3;
@end

@implementation AMSUIWebSnapshotView

- (AMSUIWebSnapshotView)initWithView:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16.receiver = self;
  v16.super_class = AMSUIWebSnapshotView;
  v8 = [(AMSUICommonView *)&v16 init];
  if (v8)
  {
    objc_initWeak(&location, v8);
    v9 = objc_opt_class();
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __48__AMSUIWebSnapshotView_initWithView_completion___block_invoke;
    v12[3] = &unk_1E7F26B38;
    objc_copyWeak(&v14, &location);
    v13 = v7;
    [v9 _screenCapFromView:v6 completion:v12];
    v10 = [(AMSUIWebSnapshotView *)v8 traitCollection];
    v8->_originalInterfaceStyle = [v10 userInterfaceStyle];

    v8->_visibilityModifiers = 0;
    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }

  return v8;
}

void __48__AMSUIWebSnapshotView_initWithView_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (v6)
  {
    [WeakRetained updateSnapshot:v6];
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))();
  }
}

- (void)updateSnapshot:(id)a3
{
  [(AMSUIWebSnapshotView *)self setSnapshot:a3];
  v4 = [(AMSUIWebSnapshotView *)self snapshot];

  if (v4)
  {
    v5 = [(AMSUIWebSnapshotView *)self snapshot];
    [(AMSUIWebSnapshotView *)self addSubview:v5];

    [(AMSUIWebSnapshotView *)self setNeedsLayout];
  }
}

- (id)removeSnapshot
{
  v3 = [(AMSUIWebSnapshotView *)self snapshot];
  v4 = [(AMSUIWebSnapshotView *)self snapshot];
  [v4 removeFromSuperview];

  [(AMSUIWebSnapshotView *)self setSnapshot:0];

  return v3;
}

- (void)layoutSubviews
{
  v32 = *MEMORY[0x1E69E9840];
  v27.receiver = self;
  v27.super_class = AMSUIWebSnapshotView;
  [(AMSUIWebSnapshotView *)&v27 layoutSubviews];
  [(AMSUIWebSnapshotView *)self bounds];
  v4 = v3;
  [(AMSUIWebSnapshotView *)self bounds];
  v6 = v4 / v5;
  [(AMSUIWebSnapshotView *)self originalRatio];
  if (v7 == 0.0)
  {
    [(AMSUIWebSnapshotView *)self bounds];
    v9 = v8;
    [(AMSUIWebSnapshotView *)self bounds];
    [(AMSUIWebSnapshotView *)self setOriginalRatio:v9 / v10];
  }

  [(AMSUIWebSnapshotView *)self originalRatio];
  if (v6 != v11)
  {
    v18 = [MEMORY[0x1E698C968] sharedWebUIConfig];
    if (!v18)
    {
      v18 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v19 = [v18 OSLogObject];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = objc_opt_class();
      v21 = AMSLogKey();
      *buf = 138543618;
      v29 = v20;
      v30 = 2114;
      v31 = v21;
      _os_log_impl(&dword_1BB036000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Adding layout visibility modifier and hiding snapshot.", buf, 0x16u);
    }

    [(AMSUIWebSnapshotView *)self setVisibilityModifiers:[(AMSUIWebSnapshotView *)self visibilityModifiers]| 1];
    v22 = [(AMSUIWebSnapshotView *)self snapshot];
    [v22 setHidden:0];

    [(AMSUIWebSnapshotView *)self originalRatio];
    v24 = v23 - v6;
    if (v24 >= 0.0)
    {
      v24 = -v24;
    }

    v17 = v24 * 100.0 + 1.0;
    goto LABEL_17;
  }

  [(AMSUIWebSnapshotView *)self setVisibilityModifiers:[(AMSUIWebSnapshotView *)self visibilityModifiers]& 0xFFFFFFFFFFFFFFFELL];
  if ([(AMSUIWebSnapshotView *)self _visibilityUnmodified])
  {
    v12 = [MEMORY[0x1E698C968] sharedWebUIConfig];
    if (!v12)
    {
      v12 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v13 = [v12 OSLogObject];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = objc_opt_class();
      v15 = AMSLogKey();
      *buf = 138543618;
      v29 = v14;
      v30 = 2114;
      v31 = v15;
      _os_log_impl(&dword_1BB036000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Unhiding snapshot.", buf, 0x16u);
    }

    v16 = [(AMSUIWebSnapshotView *)self snapshot];
    [v16 setHidden:0];

    v17 = 1.0;
LABEL_17:
    v25 = [(AMSUIWebSnapshotView *)self snapshot];
    [v25 setAlpha:v17];
  }

  v26 = *MEMORY[0x1E69E9840];
}

+ (id)_imageViewForImage:(id)a3
{
  v3 = MEMORY[0x1E69DCAE0];
  v4 = a3;
  v5 = [[v3 alloc] initWithImage:v4];

  return v5;
}

+ (void)_screenCapFromView:(id)a3 completion:(id)a4
{
  v30 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v21 = v6;
  v8 = [v6 subviews];
  v9 = [v8 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    v12 = *v26;
    while (2)
    {
      v13 = 0;
      v14 = v11;
      do
      {
        if (*v26 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v15 = *(*(&v25 + 1) + 8 * v13);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = v15;
        }

        else
        {
          v11 = 0;
        }

        v16 = [v11 underlyingWebView];
        if (v16)
        {
          v17 = v16;

          v22[0] = MEMORY[0x1E69E9820];
          v22[1] = 3221225472;
          v22[2] = __54__AMSUIWebSnapshotView__screenCapFromView_completion___block_invoke;
          v22[3] = &unk_1E7F26B60;
          v24 = v7;
          v11 = v11;
          v23 = v11;
          [v11 takeSnapshotWithCompletion:v22];

          v18 = v24;
          v19 = v21;
          goto LABEL_16;
        }

        ++v13;
        v14 = v11;
      }

      while (v10 != v13);
      v10 = [v8 countByEnumeratingWithState:&v25 objects:v29 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v11 = 0;
  }

  v19 = v21;
  v17 = [v21 snapshotViewAfterScreenUpdates:0];
  v18 = [a1 _imageViewForImage:v17];
  (*(v7 + 2))(v7, v11, v18, 0);
LABEL_16:

  v20 = *MEMORY[0x1E69E9840];
}

- (void)traitCollectionDidChange:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v17.receiver = self;
  v17.super_class = AMSUIWebSnapshotView;
  [(AMSUIWebSnapshotView *)&v17 traitCollectionDidChange:a3];
  v4 = [(AMSUIWebSnapshotView *)self traitCollection];
  v5 = [v4 userInterfaceStyle];
  v6 = [(AMSUIWebSnapshotView *)self originalInterfaceStyle];

  if (v5 != v6)
  {
    v7 = [MEMORY[0x1E698C968] sharedWebUIConfig];
    if (!v7)
    {
      v7 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v8 = [v7 OSLogObject];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = objc_opt_class();
      v10 = AMSLogKey();
      *buf = 138543618;
      v19 = v9;
      v20 = 2114;
      v21 = v10;
      _os_log_impl(&dword_1BB036000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Adding interface style visibility modifier and hiding snapshot.", buf, 0x16u);
    }

    [(AMSUIWebSnapshotView *)self setVisibilityModifiers:[(AMSUIWebSnapshotView *)self visibilityModifiers]| 2];
LABEL_13:
    v15 = [(AMSUIWebSnapshotView *)self snapshot];
    [v15 setHidden:v5 != v6];

    goto LABEL_14;
  }

  [(AMSUIWebSnapshotView *)self setVisibilityModifiers:[(AMSUIWebSnapshotView *)self visibilityModifiers]& 0xFFFFFFFFFFFFFFFDLL];
  if ([(AMSUIWebSnapshotView *)self _visibilityUnmodified])
  {
    v11 = [MEMORY[0x1E698C968] sharedWebUIConfig];
    if (!v11)
    {
      v11 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v12 = [v11 OSLogObject];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = objc_opt_class();
      v14 = AMSLogKey();
      *buf = 138543618;
      v19 = v13;
      v20 = 2114;
      v21 = v14;
      _os_log_impl(&dword_1BB036000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Unhiding snapshot.", buf, 0x16u);
    }

    goto LABEL_13;
  }

LABEL_14:
  v16 = *MEMORY[0x1E69E9840];
}

@end