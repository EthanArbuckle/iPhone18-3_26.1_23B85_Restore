@interface AMSUIWebAppViewModel
+ (BOOL)validateJSObject:(id)a3;
- (AMSUIWebAppViewModel)initWithJSObject:(id)a3 context:(id)a4;
- (NSString)description;
- (id)_makeBarButtonItemView;
- (id)iconWithSize:(CGSize)a3 scale:(double)a4;
@end

@implementation AMSUIWebAppViewModel

- (AMSUIWebAppViewModel)initWithJSObject:(id)a3 context:(id)a4
{
  v38 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v33.receiver = self;
  v33.super_class = AMSUIWebAppViewModel;
  v8 = [(AMSUIWebAppViewModel *)&v33 init];
  if (v8)
  {
    v9 = [v6 objectForKeyedSubscript:@"accessibilityLabel"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    accessibilityLabel = v8->_accessibilityLabel;
    v8->_accessibilityLabel = v10;

    v12 = [v6 objectForKeyedSubscript:@"bundleIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    bundleIdentifier = v8->_bundleIdentifier;
    v8->_bundleIdentifier = v13;

    v15 = [v6 objectForKeyedSubscript:@"iconURL"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }

    if (v16)
    {
      v17 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:v16];
      iconURL = v8->_iconURL;
      v8->_iconURL = v17;
    }

    v19 = [v6 objectForKeyedSubscript:@"title"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v20 = v19;
    }

    else
    {
      v20 = 0;
    }

    title = v8->_title;
    v8->_title = v20;

    if (!v8->_title)
    {
      v22 = v8->_bundleIdentifier;
      v32 = 0;
      v23 = [MEMORY[0x1E6963620] bundleRecordWithBundleIdentifier:v22 allowPlaceholder:1 error:&v32];
      v24 = v32;
      if (v23)
      {
        v25 = [v23 localizedName];
        v26 = v8->_title;
        v8->_title = v25;
      }

      else
      {
        v26 = [MEMORY[0x1E698C968] sharedWebUIConfig];
        if (!v26)
        {
          v26 = [MEMORY[0x1E698C968] sharedConfig];
        }

        v27 = [v26 OSLogObject];
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          v28 = objc_opt_class();
          v29 = [v7 logKey];
          *buf = 138543618;
          v35 = v28;
          v36 = 2114;
          v37 = v29;
          _os_log_impl(&dword_1BB036000, v27, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to get bundle record", buf, 0x16u);
        }
      }
    }
  }

  v30 = *MEMORY[0x1E69E9840];
  return v8;
}

- (id)_makeBarButtonItemView
{
  v30[2] = *MEMORY[0x1E69E9840];
  if (!_os_feature_enabled_impl() || (v3 = 28.0, (_os_feature_enabled_impl() & 1) == 0))
  {
    v3 = 30.0;
  }

  v4 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  v5 = [v4 heightAnchor];
  v6 = [v5 constraintEqualToConstant:v3];
  [v6 setActive:1];

  v7 = [v4 widthAnchor];
  v8 = [v7 constraintEqualToConstant:v3];
  [v8 setActive:1];

  +[AMSUICommonScreen scale];
  v10 = [(AMSUIWebAppViewModel *)self iconWithSize:v3 scale:v3, v9];
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __46__AMSUIWebAppViewModel__makeBarButtonItemView__block_invoke;
  v28[3] = &unk_1E7F243E8;
  v11 = v4;
  v29 = v11;
  [v10 addSuccessBlock:v28];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __46__AMSUIWebAppViewModel__makeBarButtonItemView__block_invoke_2;
  v27[3] = &unk_1E7F24410;
  v27[4] = self;
  [v10 addErrorBlock:v27];
  v12 = objc_alloc_init(AMSUICommonLabel);
  v13 = [(AMSUIWebAppViewModel *)self title];
  [(AMSUICommonLabel *)v12 setText:v13];

  [(AMSUICommonLabel *)v12 setTextAlignment:1];
  v14 = [MEMORY[0x1E69DC888] ams_primaryText];
  [(AMSUICommonLabel *)v12 setTextColor:v14];

  v15 = objc_alloc_init(AMSUICommonStackView);
  v16 = _os_feature_enabled_impl();
  v17 = 8.0;
  if (v16)
  {
    v18 = _os_feature_enabled_impl();
    v17 = 8.0;
    if (v18)
    {
      v17 = 6.0;
    }
  }

  [(AMSUICommonStackView *)v15 setSpacing:v17];
  [(AMSUICommonStackView *)v15 setTranslatesAutoresizingMaskIntoConstraints:0];
  v30[0] = v11;
  v30[1] = v12;
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:2];
  [(AMSUICommonStackView *)v15 addArrangedSubviews:v19];

  v20 = [MEMORY[0x1E69DC888] ams_appTint];
  [v11 setTintColor:v20];

  v21 = *MEMORY[0x1E69DDD80];
  if (_os_feature_enabled_impl() && _os_feature_enabled_impl())
  {
    v22 = *MEMORY[0x1E69DDD40];

    v21 = v22;
  }

  v23 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:v21 addingSymbolicTraits:2 options:0];
  v24 = [MEMORY[0x1E69DB878] fontWithDescriptor:v23 size:0.0];
  [(AMSUICommonLabel *)v12 setFont:v24];

  [(AMSUICommonStackView *)v15 setAxis:0];
  v25 = *MEMORY[0x1E69E9840];

  return v15;
}

void __46__AMSUIWebAppViewModel__makeBarButtonItemView__block_invoke_2(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [MEMORY[0x1E698C968] sharedWebUIConfig];
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

- (id)iconWithSize:(CGSize)a3 scale:(double)a4
{
  height = a3.height;
  width = a3.width;
  v8 = [(AMSUIWebAppViewModel *)self iconURL];
  if (v8)
  {
    v9 = +[AMSUIImageLoader defaultLoader];
    v10 = [v9 fetchImageWithURL:v8];
  }

  else
  {
    v11 = objc_alloc_init(MEMORY[0x1E698CAD0]);
    v12 = objc_alloc(MEMORY[0x1E69A8A00]);
    v13 = [(AMSUIWebAppViewModel *)self bundleIdentifier];
    v9 = [v12 initWithBundleIdentifier:v13];

    v14 = [objc_alloc(MEMORY[0x1E69A8A30]) initWithSize:width scale:{height, a4}];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __43__AMSUIWebAppViewModel_iconWithSize_scale___block_invoke;
    v16[3] = &unk_1E7F25A88;
    v10 = v11;
    v17 = v10;
    [v9 getCGImageForImageDescriptor:v14 completion:v16];
  }

  return v10;
}

void __43__AMSUIWebAppViewModel_iconWithSize_scale___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v4 = [objc_alloc(MEMORY[0x1E69DCAB8]) initWithCGImage:a2];
    [*(a1 + 32) finishWithResult:?];
  }

  else
  {
    v3 = *(a1 + 32);
    v4 = AMSError();
    [v3 finishWithError:?];
  }
}

- (NSString)description
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = [(AMSUIWebAppViewModel *)self accessibilityLabel];

  if (v4)
  {
    v5 = [(AMSUIWebAppViewModel *)self accessibilityLabel];
    [v3 setObject:v5 forKey:@"accessibilityLabel"];
  }

  v6 = [(AMSUIWebAppViewModel *)self bundleIdentifier];

  if (v6)
  {
    v7 = [(AMSUIWebAppViewModel *)self bundleIdentifier];
    [v3 setObject:v7 forKey:@"bundleIdentifier"];
  }

  v8 = [(AMSUIWebAppViewModel *)self iconURL];

  if (v8)
  {
    v9 = [(AMSUIWebAppViewModel *)self iconURL];
    v10 = [v9 absoluteString];
    [v3 setObject:v10 forKey:@"iconURL"];
  }

  v11 = [(AMSUIWebAppViewModel *)self title];

  if (v11)
  {
    v12 = [(AMSUIWebAppViewModel *)self title];
    [v3 setObject:v12 forKey:@"title"];
  }

  v13 = [v3 description];

  return v13;
}

+ (BOOL)validateJSObject:(id)a3
{
  v3 = [a3 objectForKeyedSubscript:@"bundleIdentifier"];
  v4 = v3 != 0;

  return v4;
}

@end