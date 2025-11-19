@interface AMSUIMessageButton
+ (id)_platterBackgroundForBaseColor:(id)a3 style:(unint64_t)a4;
- (AMSUIMessageButton)initWithDialogAction:(id)a3 messageStyle:(unint64_t)a4;
- (BOOL)isDefaultCloseButton;
- (id)_chevronImage;
- (id)_symbolConfiguration;
- (void)_setAccessibilityIdentifier;
- (void)_setupWithDialogAction:(id)a3;
- (void)setPreferredBackgroundColor:(id)a3;
- (void)setPreferredForegroundColor:(id)a3;
@end

@implementation AMSUIMessageButton

- (AMSUIMessageButton)initWithDialogAction:(id)a3 messageStyle:(unint64_t)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = AMSUIMessageButton;
  v8 = [(AMSUICommonButton *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_dialogAction, a3);
    v9->_messageStyle = a4;
    [(AMSUIMessageButton *)v9 _setupWithDialogAction:v7];
    [(AMSUIMessageButton *)v9 _setAccessibilityIdentifier];
    if (![(AMSUIMessageButton *)v9 messageStyle]&& (!_os_feature_enabled_impl() || (_os_feature_enabled_impl() & 1) == 0))
    {
      [(AMSUIMessageButton *)v9 _setOverrideUserInterfaceRenderingMode:1];
    }
  }

  return v9;
}

- (void)_setupWithDialogAction:(id)a3
{
  v5 = a3;
  v6 = [MEMORY[0x1E69DC740] filledButtonConfiguration];
  v7 = [(AMSUIMessageButton *)self dialogAction];
  v8 = [v7 style];

  if (v8 == 2)
  {
    v9 = [(AMSUIMessageButton *)self _closeImage];
    v10 = [MEMORY[0x1E69DC740] filledButtonConfiguration];

    [v10 setCornerStyle:4];
    if ([(AMSUIMessageButton *)self isBubbleTipStyle:[(AMSUIMessageButton *)self messageStyle]])
    {
      v11 = [(AMSUIMessageButton *)self traitCollection];
      v12 = [v11 userInterfaceIdiom];

      if (v12 == 6)
      {
        [v10 setButtonSize:2];
      }
    }

    [v10 setContentInsets:{6.0, 6.0, 6.0, 6.0}];
    v13 = 0;
    goto LABEL_25;
  }

  v13 = [v5 title];
  v14 = [v5 iconURL];
  v15 = [v14 host];

  if (v15)
  {
    v9 = [MEMORY[0x1E69DCAB8] ams_imageWithSystemSymbolName:v15];
  }

  else
  {
    v9 = 0;
  }

  if (!(v9 | v13))
  {
    v9 = [(AMSUIMessageButton *)self _chevronImage];
  }

  if ([(AMSUIMessageButton *)self messageStyle]== 5)
  {
    v10 = [MEMORY[0x1E69DC740] grayButtonConfiguration];
  }

  else
  {
    if ([(AMSUIMessageButton *)self isBannerStyle:[(AMSUIMessageButton *)self messageStyle]])
    {
      [v6 setContentInsets:{6.0, 8.0, 6.0, 8.0}];
    }

    else if ([(AMSUIMessageButton *)self messageStyle]== 2 || [(AMSUIMessageButton *)self messageStyle]== 3)
    {
      v16 = [(AMSUIMessageButton *)self traitCollection];
      v17 = [v16 userInterfaceIdiom];

      if (v17 == 6)
      {
        [(AMSUIMessageButton *)self setContentHorizontalAlignment:4];
        v18 = v6;
        v19 = 1;
      }

      else
      {
        v18 = v6;
        v19 = 3;
      }

      [v18 setButtonSize:v19];
    }

    else if ([(AMSUIMessageButton *)self messageStyle]== 6)
    {
      v10 = [MEMORY[0x1E69DC740] plainButtonConfiguration];

      [v10 setContentInsets:{*MEMORY[0x1E69DC5C0], *(MEMORY[0x1E69DC5C0] + 8), *(MEMORY[0x1E69DC5C0] + 16), *(MEMORY[0x1E69DC5C0] + 24)}];
      [(AMSUIMessageButton *)self setContentHorizontalAlignment:4];
      goto LABEL_22;
    }

    v10 = v6;
  }

LABEL_22:
  if ([(AMSUIMessageButton *)self messageStyle]!= 6)
  {
    [v10 setCornerStyle:4];
  }

  [v10 setTitleLineBreakMode:4];

LABEL_25:
  v20 = [(AMSUIMessageButton *)self messageStyle];
  v21 = [(AMSUIMessageButton *)self traitCollection];
  v22 = [AMSUIAppearance _defaultButtonBackgroundColorForStyle:v20 withTraitCollection:v21];

  if (v22)
  {
    [v10 setBaseBackgroundColor:v22];
  }

  v23 = [(AMSUIMessageButton *)self dialogAction];
  v24 = [v23 style];

  if (v24 == 2)
  {
    v25 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [v10 setBaseForegroundColor:v25];

    v26 = [MEMORY[0x1E69DC888] tertiarySystemFillColor];
    [v10 setBaseBackgroundColor:v26];
  }

  if ([(AMSUIMessageButton *)self isDefaultCloseButton]&& [(AMSUIMessageButton *)self isBubbleTipStyle:[(AMSUIMessageButton *)self messageStyle]])
  {
    v27 = *MEMORY[0x1E69DDC78];
    [(AMSUIMessageButton *)self setMinimumContentSizeCategory:*MEMORY[0x1E69DDC78]];
    [(AMSUIMessageButton *)self setMaximumContentSizeCategory:v27];
  }

  [(AMSUIMessageButton *)self setPreservesSuperviewLayoutMargins:0];
  objc_initWeak(&location, self);
  if (v9)
  {
    [v10 setImage:v9];
    if (![(AMSUIMessageButton *)self isDefaultCloseButton])
    {
      v28 = [AMSUIAppearance _defaultButtonIconColorForStyle:[(AMSUIMessageButton *)self messageStyle]];
      [v10 setBaseForegroundColor:v28];
    }

    v42[0] = MEMORY[0x1E69E9820];
    v42[1] = 3221225472;
    v42[2] = __45__AMSUIMessageButton__setupWithDialogAction___block_invoke;
    v42[3] = &unk_1E7F25000;
    objc_copyWeak(&v43, &location);
    [v10 setImageColorTransformer:v42];
    v29 = [(AMSUIMessageButton *)self _symbolConfiguration];
    [v10 setPreferredSymbolConfigurationForImage:v29];

    v30 = [v10 background];
    [v30 setBackgroundInsets:{*MEMORY[0x1E69DC5C0], *(MEMORY[0x1E69DC5C0] + 8), *(MEMORY[0x1E69DC5C0] + 16), *(MEMORY[0x1E69DC5C0] + 24)}];

    objc_destroyWeak(&v43);
  }

  if (v13)
  {
    v31 = [MEMORY[0x1E695DF90] dictionary];
    v32 = [(AMSUIMessageButton *)self preferredFont];
    v33 = v32;
    if (!v32)
    {
      v34 = [(AMSUIMessageButton *)self messageStyle];
      v3 = [(AMSUIMessageButton *)self traitCollection];
      v33 = [AMSUIAppearance _defaultButtonTextFontForStyle:v34 withTraitCollection:v3];
    }

    [v31 setObject:v33 forKeyedSubscript:*MEMORY[0x1E69DB648]];
    if (!v32)
    {
    }

    v35 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v13 attributes:v31];
    [v10 setAttributedTitle:v35];
    v36 = [(AMSUIMessageButton *)self messageStyle];
    v37 = [(AMSUIMessageButton *)self traitCollection];
    v38 = [AMSUIAppearance _defaultButtonTextColorForStyle:v36 withTraitCollection:v37];
    [v10 setBaseForegroundColor:v38];

    v40[0] = MEMORY[0x1E69E9820];
    v40[1] = 3221225472;
    v40[2] = __45__AMSUIMessageButton__setupWithDialogAction___block_invoke_2;
    v40[3] = &unk_1E7F25028;
    objc_copyWeak(&v41, &location);
    [v10 setTitleTextAttributesTransformer:v40];
    objc_destroyWeak(&v41);
  }

  [(AMSUIMessageButton *)self setConfiguration:v10];
  [(AMSUIMessageButton *)self setNeedsUpdateConfiguration];
  [(AMSUIMessageButton *)self _setAccessibilityIdentifier];
  objc_destroyWeak(&location);
}

void *__45__AMSUIMessageButton__setupWithDialogAction___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained preferredForegroundColor];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v3;
  }

  v8 = v7;

  return v7;
}

id __45__AMSUIMessageButton__setupWithDialogAction___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained preferredForegroundColor];

  if (v5)
  {
    v6 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v3];
    v7 = [WeakRetained preferredForegroundColor];
    [v6 setValue:v7 forKey:*MEMORY[0x1E69DB650]];

    v8 = [MEMORY[0x1E695DF20] dictionaryWithDictionary:v6];
  }

  else
  {
    v8 = v3;
  }

  return v8;
}

- (void)_setAccessibilityIdentifier
{
  if ([(AMSUIMessageButton *)self isDefaultCloseButton])
  {
    v3 = @"closeActionButton";
  }

  else
  {
    v3 = @"actionButton";
  }

  [(AMSUIMessageButton *)self setAccessibilityIdentifier:v3];
}

- (BOOL)isDefaultCloseButton
{
  v3 = [(AMSUIMessageButton *)self dialogAction];
  if ([v3 style] == 2)
  {
    v4 = [(AMSUIMessageButton *)self dialogAction];
    v5 = [v4 title];
    if (v5)
    {
      v6 = 0;
    }

    else
    {
      v7 = [(AMSUIMessageButton *)self dialogAction];
      v8 = [v7 iconURL];
      v6 = v8 == 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_symbolConfiguration
{
  v3 = [(AMSUIMessageButton *)self preferredFont];

  if (v3)
  {
    v4 = MEMORY[0x1E69DCAD8];
    v5 = [(AMSUIMessageButton *)self preferredFont];
    v6 = [v4 configurationWithFont:v5 scale:2];
    goto LABEL_15;
  }

  v5 = *MEMORY[0x1E69DDCF8];
  if ([(AMSUIMessageButton *)self isBannerStyle:[(AMSUIMessageButton *)self messageStyle]])
  {
    v7 = MEMORY[0x1E69DDD28];
    v8 = 5;
    v9 = 1;
  }

  else
  {
    v9 = 2;
    if (![(AMSUIMessageButton *)self isBubbleTipStyle:[(AMSUIMessageButton *)self messageStyle]])
    {
      v8 = 0;
      v11 = 1;
      goto LABEL_9;
    }

    v7 = MEMORY[0x1E69DDD00];
    v8 = 7;
  }

  v10 = *v7;

  v11 = 0;
  v5 = v10;
LABEL_9:
  v12 = [(AMSUIMessageButton *)self traitCollection];
  v13 = [v12 userInterfaceIdiom];

  if (v13 == 6 && [(AMSUIMessageButton *)self isBubbleTipStyle:[(AMSUIMessageButton *)self messageStyle]]&& [(AMSUIMessageButton *)self isDefaultCloseButton])
  {
    v6 = 0;
  }

  else
  {
    v6 = [MEMORY[0x1E69DCAD8] configurationWithTextStyle:v5 scale:v9];
    if ((v11 & 1) == 0)
    {
      v14 = [MEMORY[0x1E69DCAD8] configurationWithWeight:v8];
      v15 = [v6 configurationByApplyingConfiguration:v14];

      v6 = v15;
    }
  }

LABEL_15:

  return v6;
}

- (id)_chevronImage
{
  v2 = [(AMSUIMessageButton *)self traitCollection];
  v3 = [v2 layoutDirection];

  if (v3 == 1)
  {
    [MEMORY[0x1E69DCAB8] ams_systemChevronLeft];
  }

  else
  {
    [MEMORY[0x1E69DCAB8] ams_systemChevronRight];
  }
  v4 = ;

  return v4;
}

+ (id)_platterBackgroundForBaseColor:(id)a3 style:(unint64_t)a4
{
  v4 = MEMORY[0x1E69DC888];
  v5 = a3;
  v6 = [v5 colorWithAlphaComponent:0.08];
  v7 = [v5 colorWithAlphaComponent:0.18];

  v8 = [v4 ams_dynamicColorWithLightColor:v6 darkColor:v7];

  return v8;
}

- (void)setPreferredForegroundColor:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a3;
  objc_storeStrong(&self->_preferredForegroundColor, a3);
  v6 = [MEMORY[0x1E698C968] sharedMessagingUIConfig];
  if (!v6)
  {
    v6 = [MEMORY[0x1E698C968] sharedConfig];
  }

  v7 = [v6 OSLogObject];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138543618;
    v12 = objc_opt_class();
    v13 = 2112;
    v14 = v5;
    v8 = v12;
    _os_log_impl(&dword_1BB036000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: (setPreferredForegroundColor: %@)", &v11, 0x16u);
  }

  v9 = [(AMSUIMessageButton *)self configuration];
  [v9 setBaseForegroundColor:v5];
  [(AMSUIMessageButton *)self setConfiguration:v9];
  [(AMSUIMessageButton *)self setNeedsUpdateConfiguration];

  v10 = *MEMORY[0x1E69E9840];
}

- (void)setPreferredBackgroundColor:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a3;
  objc_storeStrong(&self->_preferredBackgroundColor, a3);
  v6 = [MEMORY[0x1E698C968] sharedMessagingUIConfig];
  if (!v6)
  {
    v6 = [MEMORY[0x1E698C968] sharedConfig];
  }

  v7 = [v6 OSLogObject];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138543618;
    v12 = objc_opt_class();
    v13 = 2112;
    v14 = v5;
    v8 = v12;
    _os_log_impl(&dword_1BB036000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: (setPreferredBackgroundColor: %@)", &v11, 0x16u);
  }

  v9 = [(AMSUIMessageButton *)self configuration];
  [v9 setBaseBackgroundColor:v5];
  [(AMSUIMessageButton *)self setConfiguration:v9];
  [(AMSUIMessageButton *)self setNeedsUpdateConfiguration];

  v10 = *MEMORY[0x1E69E9840];
}

@end