@interface AMSUIWebSnapshotView
+ (id)_imageViewForImage:(id)image;
+ (void)_screenCapFromView:(id)view completion:(id)completion;
- (AMSUIWebSnapshotView)initWithView:(id)view completion:(id)completion;
- (id)removeSnapshot;
- (void)layoutSubviews;
- (void)traitCollectionDidChange:(id)change;
- (void)updateSnapshot:(id)snapshot;
@end

@implementation AMSUIWebSnapshotView

- (AMSUIWebSnapshotView)initWithView:(id)view completion:(id)completion
{
  viewCopy = view;
  completionCopy = completion;
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
    v13 = completionCopy;
    [v9 _screenCapFromView:viewCopy completion:v12];
    traitCollection = [(AMSUIWebSnapshotView *)v8 traitCollection];
    v8->_originalInterfaceStyle = [traitCollection userInterfaceStyle];

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

- (void)updateSnapshot:(id)snapshot
{
  [(AMSUIWebSnapshotView *)self setSnapshot:snapshot];
  snapshot = [(AMSUIWebSnapshotView *)self snapshot];

  if (snapshot)
  {
    snapshot2 = [(AMSUIWebSnapshotView *)self snapshot];
    [(AMSUIWebSnapshotView *)self addSubview:snapshot2];

    [(AMSUIWebSnapshotView *)self setNeedsLayout];
  }
}

- (id)removeSnapshot
{
  snapshot = [(AMSUIWebSnapshotView *)self snapshot];
  snapshot2 = [(AMSUIWebSnapshotView *)self snapshot];
  [snapshot2 removeFromSuperview];

  [(AMSUIWebSnapshotView *)self setSnapshot:0];

  return snapshot;
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
    mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedWebUIConfig];
    if (!mEMORY[0x1E698C968])
    {
      mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
    }

    oSLogObject = [mEMORY[0x1E698C968] OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v20 = objc_opt_class();
      v21 = AMSLogKey();
      *buf = 138543618;
      v29 = v20;
      v30 = 2114;
      v31 = v21;
      _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Adding layout visibility modifier and hiding snapshot.", buf, 0x16u);
    }

    [(AMSUIWebSnapshotView *)self setVisibilityModifiers:[(AMSUIWebSnapshotView *)self visibilityModifiers]| 1];
    snapshot = [(AMSUIWebSnapshotView *)self snapshot];
    [snapshot setHidden:0];

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
    mEMORY[0x1E698C968]2 = [MEMORY[0x1E698C968] sharedWebUIConfig];
    if (!mEMORY[0x1E698C968]2)
    {
      mEMORY[0x1E698C968]2 = [MEMORY[0x1E698C968] sharedConfig];
    }

    oSLogObject2 = [mEMORY[0x1E698C968]2 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
    {
      v14 = objc_opt_class();
      v15 = AMSLogKey();
      *buf = 138543618;
      v29 = v14;
      v30 = 2114;
      v31 = v15;
      _os_log_impl(&dword_1BB036000, oSLogObject2, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Unhiding snapshot.", buf, 0x16u);
    }

    snapshot2 = [(AMSUIWebSnapshotView *)self snapshot];
    [snapshot2 setHidden:0];

    v17 = 1.0;
LABEL_17:
    snapshot3 = [(AMSUIWebSnapshotView *)self snapshot];
    [snapshot3 setAlpha:v17];
  }

  v26 = *MEMORY[0x1E69E9840];
}

+ (id)_imageViewForImage:(id)image
{
  v3 = MEMORY[0x1E69DCAE0];
  imageCopy = image;
  v5 = [[v3 alloc] initWithImage:imageCopy];

  return v5;
}

+ (void)_screenCapFromView:(id)view completion:(id)completion
{
  v30 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  completionCopy = completion;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v21 = viewCopy;
  subviews = [viewCopy subviews];
  v9 = [subviews countByEnumeratingWithState:&v25 objects:v29 count:16];
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
          objc_enumerationMutation(subviews);
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

        underlyingWebView = [v11 underlyingWebView];
        if (underlyingWebView)
        {
          v17 = underlyingWebView;

          v22[0] = MEMORY[0x1E69E9820];
          v22[1] = 3221225472;
          v22[2] = __54__AMSUIWebSnapshotView__screenCapFromView_completion___block_invoke;
          v22[3] = &unk_1E7F26B60;
          v24 = completionCopy;
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
      v10 = [subviews countByEnumeratingWithState:&v25 objects:v29 count:16];
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
  v18 = [self _imageViewForImage:v17];
  (*(completionCopy + 2))(completionCopy, v11, v18, 0);
LABEL_16:

  v20 = *MEMORY[0x1E69E9840];
}

- (void)traitCollectionDidChange:(id)change
{
  v22 = *MEMORY[0x1E69E9840];
  v17.receiver = self;
  v17.super_class = AMSUIWebSnapshotView;
  [(AMSUIWebSnapshotView *)&v17 traitCollectionDidChange:change];
  traitCollection = [(AMSUIWebSnapshotView *)self traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];
  originalInterfaceStyle = [(AMSUIWebSnapshotView *)self originalInterfaceStyle];

  if (userInterfaceStyle != originalInterfaceStyle)
  {
    mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedWebUIConfig];
    if (!mEMORY[0x1E698C968])
    {
      mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
    }

    oSLogObject = [mEMORY[0x1E698C968] OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v9 = objc_opt_class();
      v10 = AMSLogKey();
      *buf = 138543618;
      v19 = v9;
      v20 = 2114;
      v21 = v10;
      _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Adding interface style visibility modifier and hiding snapshot.", buf, 0x16u);
    }

    [(AMSUIWebSnapshotView *)self setVisibilityModifiers:[(AMSUIWebSnapshotView *)self visibilityModifiers]| 2];
LABEL_13:
    snapshot = [(AMSUIWebSnapshotView *)self snapshot];
    [snapshot setHidden:userInterfaceStyle != originalInterfaceStyle];

    goto LABEL_14;
  }

  [(AMSUIWebSnapshotView *)self setVisibilityModifiers:[(AMSUIWebSnapshotView *)self visibilityModifiers]& 0xFFFFFFFFFFFFFFFDLL];
  if ([(AMSUIWebSnapshotView *)self _visibilityUnmodified])
  {
    mEMORY[0x1E698C968]2 = [MEMORY[0x1E698C968] sharedWebUIConfig];
    if (!mEMORY[0x1E698C968]2)
    {
      mEMORY[0x1E698C968]2 = [MEMORY[0x1E698C968] sharedConfig];
    }

    oSLogObject2 = [mEMORY[0x1E698C968]2 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
    {
      v13 = objc_opt_class();
      v14 = AMSLogKey();
      *buf = 138543618;
      v19 = v13;
      v20 = 2114;
      v21 = v14;
      _os_log_impl(&dword_1BB036000, oSLogObject2, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Unhiding snapshot.", buf, 0x16u);
    }

    goto LABEL_13;
  }

LABEL_14:
  v16 = *MEMORY[0x1E69E9840];
}

@end