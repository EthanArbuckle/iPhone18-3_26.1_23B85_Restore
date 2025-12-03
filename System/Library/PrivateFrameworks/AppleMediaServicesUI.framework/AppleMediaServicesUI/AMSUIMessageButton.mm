@interface AMSUIMessageButton
+ (id)_platterBackgroundForBaseColor:(id)color style:(unint64_t)style;
- (AMSUIMessageButton)initWithDialogAction:(id)action messageStyle:(unint64_t)style;
- (BOOL)isDefaultCloseButton;
- (id)_chevronImage;
- (id)_symbolConfiguration;
- (void)_setAccessibilityIdentifier;
- (void)_setupWithDialogAction:(id)action;
- (void)setPreferredBackgroundColor:(id)color;
- (void)setPreferredForegroundColor:(id)color;
@end

@implementation AMSUIMessageButton

- (AMSUIMessageButton)initWithDialogAction:(id)action messageStyle:(unint64_t)style
{
  actionCopy = action;
  v11.receiver = self;
  v11.super_class = AMSUIMessageButton;
  v8 = [(AMSUICommonButton *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_dialogAction, action);
    v9->_messageStyle = style;
    [(AMSUIMessageButton *)v9 _setupWithDialogAction:actionCopy];
    [(AMSUIMessageButton *)v9 _setAccessibilityIdentifier];
    if (![(AMSUIMessageButton *)v9 messageStyle]&& (!_os_feature_enabled_impl() || (_os_feature_enabled_impl() & 1) == 0))
    {
      [(AMSUIMessageButton *)v9 _setOverrideUserInterfaceRenderingMode:1];
    }
  }

  return v9;
}

- (void)_setupWithDialogAction:(id)action
{
  actionCopy = action;
  filledButtonConfiguration = [MEMORY[0x1E69DC740] filledButtonConfiguration];
  dialogAction = [(AMSUIMessageButton *)self dialogAction];
  style = [dialogAction style];

  if (style == 2)
  {
    _closeImage = [(AMSUIMessageButton *)self _closeImage];
    filledButtonConfiguration2 = [MEMORY[0x1E69DC740] filledButtonConfiguration];

    [filledButtonConfiguration2 setCornerStyle:4];
    if ([(AMSUIMessageButton *)self isBubbleTipStyle:[(AMSUIMessageButton *)self messageStyle]])
    {
      traitCollection = [(AMSUIMessageButton *)self traitCollection];
      userInterfaceIdiom = [traitCollection userInterfaceIdiom];

      if (userInterfaceIdiom == 6)
      {
        [filledButtonConfiguration2 setButtonSize:2];
      }
    }

    [filledButtonConfiguration2 setContentInsets:{6.0, 6.0, 6.0, 6.0}];
    title = 0;
    goto LABEL_25;
  }

  title = [actionCopy title];
  iconURL = [actionCopy iconURL];
  host = [iconURL host];

  if (host)
  {
    _closeImage = [MEMORY[0x1E69DCAB8] ams_imageWithSystemSymbolName:host];
  }

  else
  {
    _closeImage = 0;
  }

  if (!(_closeImage | title))
  {
    _closeImage = [(AMSUIMessageButton *)self _chevronImage];
  }

  if ([(AMSUIMessageButton *)self messageStyle]== 5)
  {
    filledButtonConfiguration2 = [MEMORY[0x1E69DC740] grayButtonConfiguration];
  }

  else
  {
    if ([(AMSUIMessageButton *)self isBannerStyle:[(AMSUIMessageButton *)self messageStyle]])
    {
      [filledButtonConfiguration setContentInsets:{6.0, 8.0, 6.0, 8.0}];
    }

    else if ([(AMSUIMessageButton *)self messageStyle]== 2 || [(AMSUIMessageButton *)self messageStyle]== 3)
    {
      traitCollection2 = [(AMSUIMessageButton *)self traitCollection];
      userInterfaceIdiom2 = [traitCollection2 userInterfaceIdiom];

      if (userInterfaceIdiom2 == 6)
      {
        [(AMSUIMessageButton *)self setContentHorizontalAlignment:4];
        v18 = filledButtonConfiguration;
        v19 = 1;
      }

      else
      {
        v18 = filledButtonConfiguration;
        v19 = 3;
      }

      [v18 setButtonSize:v19];
    }

    else if ([(AMSUIMessageButton *)self messageStyle]== 6)
    {
      filledButtonConfiguration2 = [MEMORY[0x1E69DC740] plainButtonConfiguration];

      [filledButtonConfiguration2 setContentInsets:{*MEMORY[0x1E69DC5C0], *(MEMORY[0x1E69DC5C0] + 8), *(MEMORY[0x1E69DC5C0] + 16), *(MEMORY[0x1E69DC5C0] + 24)}];
      [(AMSUIMessageButton *)self setContentHorizontalAlignment:4];
      goto LABEL_22;
    }

    filledButtonConfiguration2 = filledButtonConfiguration;
  }

LABEL_22:
  if ([(AMSUIMessageButton *)self messageStyle]!= 6)
  {
    [filledButtonConfiguration2 setCornerStyle:4];
  }

  [filledButtonConfiguration2 setTitleLineBreakMode:4];

LABEL_25:
  messageStyle = [(AMSUIMessageButton *)self messageStyle];
  traitCollection3 = [(AMSUIMessageButton *)self traitCollection];
  v22 = [AMSUIAppearance _defaultButtonBackgroundColorForStyle:messageStyle withTraitCollection:traitCollection3];

  if (v22)
  {
    [filledButtonConfiguration2 setBaseBackgroundColor:v22];
  }

  dialogAction2 = [(AMSUIMessageButton *)self dialogAction];
  style2 = [dialogAction2 style];

  if (style2 == 2)
  {
    secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [filledButtonConfiguration2 setBaseForegroundColor:secondaryLabelColor];

    tertiarySystemFillColor = [MEMORY[0x1E69DC888] tertiarySystemFillColor];
    [filledButtonConfiguration2 setBaseBackgroundColor:tertiarySystemFillColor];
  }

  if ([(AMSUIMessageButton *)self isDefaultCloseButton]&& [(AMSUIMessageButton *)self isBubbleTipStyle:[(AMSUIMessageButton *)self messageStyle]])
  {
    v27 = *MEMORY[0x1E69DDC78];
    [(AMSUIMessageButton *)self setMinimumContentSizeCategory:*MEMORY[0x1E69DDC78]];
    [(AMSUIMessageButton *)self setMaximumContentSizeCategory:v27];
  }

  [(AMSUIMessageButton *)self setPreservesSuperviewLayoutMargins:0];
  objc_initWeak(&location, self);
  if (_closeImage)
  {
    [filledButtonConfiguration2 setImage:_closeImage];
    if (![(AMSUIMessageButton *)self isDefaultCloseButton])
    {
      v28 = [AMSUIAppearance _defaultButtonIconColorForStyle:[(AMSUIMessageButton *)self messageStyle]];
      [filledButtonConfiguration2 setBaseForegroundColor:v28];
    }

    v42[0] = MEMORY[0x1E69E9820];
    v42[1] = 3221225472;
    v42[2] = __45__AMSUIMessageButton__setupWithDialogAction___block_invoke;
    v42[3] = &unk_1E7F25000;
    objc_copyWeak(&v43, &location);
    [filledButtonConfiguration2 setImageColorTransformer:v42];
    _symbolConfiguration = [(AMSUIMessageButton *)self _symbolConfiguration];
    [filledButtonConfiguration2 setPreferredSymbolConfigurationForImage:_symbolConfiguration];

    background = [filledButtonConfiguration2 background];
    [background setBackgroundInsets:{*MEMORY[0x1E69DC5C0], *(MEMORY[0x1E69DC5C0] + 8), *(MEMORY[0x1E69DC5C0] + 16), *(MEMORY[0x1E69DC5C0] + 24)}];

    objc_destroyWeak(&v43);
  }

  if (title)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    preferredFont = [(AMSUIMessageButton *)self preferredFont];
    v33 = preferredFont;
    if (!preferredFont)
    {
      messageStyle2 = [(AMSUIMessageButton *)self messageStyle];
      traitCollection4 = [(AMSUIMessageButton *)self traitCollection];
      v33 = [AMSUIAppearance _defaultButtonTextFontForStyle:messageStyle2 withTraitCollection:traitCollection4];
    }

    [dictionary setObject:v33 forKeyedSubscript:*MEMORY[0x1E69DB648]];
    if (!preferredFont)
    {
    }

    v35 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:title attributes:dictionary];
    [filledButtonConfiguration2 setAttributedTitle:v35];
    messageStyle3 = [(AMSUIMessageButton *)self messageStyle];
    traitCollection5 = [(AMSUIMessageButton *)self traitCollection];
    v38 = [AMSUIAppearance _defaultButtonTextColorForStyle:messageStyle3 withTraitCollection:traitCollection5];
    [filledButtonConfiguration2 setBaseForegroundColor:v38];

    v40[0] = MEMORY[0x1E69E9820];
    v40[1] = 3221225472;
    v40[2] = __45__AMSUIMessageButton__setupWithDialogAction___block_invoke_2;
    v40[3] = &unk_1E7F25028;
    objc_copyWeak(&v41, &location);
    [filledButtonConfiguration2 setTitleTextAttributesTransformer:v40];
    objc_destroyWeak(&v41);
  }

  [(AMSUIMessageButton *)self setConfiguration:filledButtonConfiguration2];
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
  dialogAction = [(AMSUIMessageButton *)self dialogAction];
  if ([dialogAction style] == 2)
  {
    dialogAction2 = [(AMSUIMessageButton *)self dialogAction];
    title = [dialogAction2 title];
    if (title)
    {
      v6 = 0;
    }

    else
    {
      dialogAction3 = [(AMSUIMessageButton *)self dialogAction];
      iconURL = [dialogAction3 iconURL];
      v6 = iconURL == 0;
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
  preferredFont = [(AMSUIMessageButton *)self preferredFont];

  if (preferredFont)
  {
    v4 = MEMORY[0x1E69DCAD8];
    preferredFont2 = [(AMSUIMessageButton *)self preferredFont];
    v6 = [v4 configurationWithFont:preferredFont2 scale:2];
    goto LABEL_15;
  }

  preferredFont2 = *MEMORY[0x1E69DDCF8];
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
  preferredFont2 = v10;
LABEL_9:
  traitCollection = [(AMSUIMessageButton *)self traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  if (userInterfaceIdiom == 6 && [(AMSUIMessageButton *)self isBubbleTipStyle:[(AMSUIMessageButton *)self messageStyle]]&& [(AMSUIMessageButton *)self isDefaultCloseButton])
  {
    v6 = 0;
  }

  else
  {
    v6 = [MEMORY[0x1E69DCAD8] configurationWithTextStyle:preferredFont2 scale:v9];
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
  traitCollection = [(AMSUIMessageButton *)self traitCollection];
  layoutDirection = [traitCollection layoutDirection];

  if (layoutDirection == 1)
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

+ (id)_platterBackgroundForBaseColor:(id)color style:(unint64_t)style
{
  v4 = MEMORY[0x1E69DC888];
  colorCopy = color;
  v6 = [colorCopy colorWithAlphaComponent:0.08];
  v7 = [colorCopy colorWithAlphaComponent:0.18];

  v8 = [v4 ams_dynamicColorWithLightColor:v6 darkColor:v7];

  return v8;
}

- (void)setPreferredForegroundColor:(id)color
{
  v15 = *MEMORY[0x1E69E9840];
  colorCopy = color;
  objc_storeStrong(&self->_preferredForegroundColor, color);
  mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedMessagingUIConfig];
  if (!mEMORY[0x1E698C968])
  {
    mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
  }

  oSLogObject = [mEMORY[0x1E698C968] OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138543618;
    v12 = objc_opt_class();
    v13 = 2112;
    v14 = colorCopy;
    v8 = v12;
    _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: (setPreferredForegroundColor: %@)", &v11, 0x16u);
  }

  configuration = [(AMSUIMessageButton *)self configuration];
  [configuration setBaseForegroundColor:colorCopy];
  [(AMSUIMessageButton *)self setConfiguration:configuration];
  [(AMSUIMessageButton *)self setNeedsUpdateConfiguration];

  v10 = *MEMORY[0x1E69E9840];
}

- (void)setPreferredBackgroundColor:(id)color
{
  v15 = *MEMORY[0x1E69E9840];
  colorCopy = color;
  objc_storeStrong(&self->_preferredBackgroundColor, color);
  mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedMessagingUIConfig];
  if (!mEMORY[0x1E698C968])
  {
    mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
  }

  oSLogObject = [mEMORY[0x1E698C968] OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138543618;
    v12 = objc_opt_class();
    v13 = 2112;
    v14 = colorCopy;
    v8 = v12;
    _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: (setPreferredBackgroundColor: %@)", &v11, 0x16u);
  }

  configuration = [(AMSUIMessageButton *)self configuration];
  [configuration setBaseBackgroundColor:colorCopy];
  [(AMSUIMessageButton *)self setConfiguration:configuration];
  [(AMSUIMessageButton *)self setNeedsUpdateConfiguration];

  v10 = *MEMORY[0x1E69E9840];
}

@end