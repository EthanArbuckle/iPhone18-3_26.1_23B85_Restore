@interface AMSUIToastViewController
- (AMSUIToastViewController)initWithRequest:(id)a3;
- (AMSUIToastViewController)initWithRequest:(id)a3 bag:(id)a4 account:(id)a5;
- (id)_defaultPreferredImageSymbolConfiguration;
- (id)_effectiveImageSymbolConfiguration;
- (id)_messageFontCompatibleWith:(id)a3;
- (id)_messageTextColor;
- (id)_titleFontCompatibleWith:(id)a3;
- (id)_titleTextColor;
- (int64_t)_iconAnimationPlayCount;
- (int64_t)_primaryImageRenderingMode;
- (void)_commitAppearance;
- (void)_setDialogRequest:(id)a3;
- (void)setPreferredAppearance:(id)a3;
@end

@implementation AMSUIToastViewController

- (AMSUIToastViewController)initWithRequest:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = AMSUIToastViewController;
  v5 = [(AMSUIBaseMessageViewController *)&v16 initWithRequest:v4];
  if (v5)
  {
    v6 = objc_alloc_init(AMSUIToastAppearance);
    preferredAppearance = v5->_preferredAppearance;
    v5->_preferredAppearance = v6;

    v8 = [AMSUIToastAppearance alloc];
    v9 = [v4 appearanceInfo];
    v10 = [(AMSUIToastAppearance *)v8 initWithDictionary:v9];
    requestAppearance = v5->_requestAppearance;
    v5->_requestAppearance = v10;

    v12 = objc_alloc_init(AMSUIToastTransitioningDelegate);
    transitionDelegate = v5->_transitionDelegate;
    v5->_transitionDelegate = v12;

    [(AMSUIToastViewController *)v5 setModalPresentationStyle:4];
    v14 = [(AMSUIToastViewController *)v5 transitionDelegate];
    [(AMSUIToastViewController *)v5 setTransitioningDelegate:v14];

    [(AMSUIToastViewController *)v5 setViewRespectsSystemMinimumLayoutMargins:0];
  }

  return v5;
}

- (AMSUIToastViewController)initWithRequest:(id)a3 bag:(id)a4 account:(id)a5
{
  v6.receiver = self;
  v6.super_class = AMSUIToastViewController;
  return [(AMSUIBaseMessageViewController *)&v6 initWithRequest:a3 bag:a4 account:a5];
}

- (void)_setDialogRequest:(id)a3
{
  v11.receiver = self;
  v11.super_class = AMSUIToastViewController;
  v4 = a3;
  [(AMSUIBaseMessageViewController *)&v11 _setDialogRequest:v4];
  v5 = [(AMSUIBaseMessageViewController *)self _messageView:v11.receiver];
  v6 = [v4 defaultAction];
  v7 = MEMORY[0x1E695DF70];
  v8 = [v4 buttonActions];

  v9 = [v7 arrayWithArray:v8];

  if (v6)
  {
    v10 = [v6 title];

    if (v10)
    {
      [v9 addObject:v6];
    }

    else
    {
      [v5 setBodyDialogAction:v6 target:self action:sel__didTapActionButton_];
    }
  }

  if ([v9 count])
  {
    [v5 setButtonsForDialogActions:v9 target:self action:sel__didTapActionButton_];
  }
}

- (id)_messageFontCompatibleWith:(id)a3
{
  v4 = a3;
  v5 = [(AMSUIToastViewController *)self requestAppearance];
  v6 = [v5 _messageFontDictionary];
  v7 = [AMSUIFontParser fontWithDictionary:v6 compatibleWith:v4];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v10 = [(AMSUIToastViewController *)self requestAppearance];
    v9 = [v10 messageFont];
  }

  if (!v9)
  {
    v11 = [(AMSUIToastViewController *)self preferredAppearance];
    v12 = [v11 _messageFontDictionary];
    v13 = [AMSUIFontParser fontWithDictionary:v12 compatibleWith:v4];
    v14 = v13;
    if (v13)
    {
      v9 = v13;
    }

    else
    {
      v15 = [(AMSUIToastViewController *)self preferredAppearance];
      v9 = [v15 messageFont];
    }
  }

  return v9;
}

- (id)_messageTextColor
{
  v3 = [(AMSUIToastViewController *)self requestAppearance];
  v4 = [v3 messageTextColor];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v7 = [(AMSUIToastViewController *)self preferredAppearance];
    v6 = [v7 messageTextColor];
  }

  return v6;
}

- (id)_titleFontCompatibleWith:(id)a3
{
  v4 = a3;
  v5 = [(AMSUIToastViewController *)self requestAppearance];
  v6 = [v5 _titleFontDictionary];
  v7 = [AMSUIFontParser fontWithDictionary:v6 compatibleWith:v4];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v10 = [(AMSUIToastViewController *)self requestAppearance];
    v9 = [v10 titleFont];
  }

  if (!v9)
  {
    v11 = [(AMSUIToastViewController *)self preferredAppearance];
    v12 = [v11 _titleFontDictionary];
    v13 = [AMSUIFontParser fontWithDictionary:v12 compatibleWith:v4];
    v14 = v13;
    if (v13)
    {
      v9 = v13;
    }

    else
    {
      v15 = [(AMSUIToastViewController *)self preferredAppearance];
      v9 = [v15 titleFont];
    }
  }

  return v9;
}

- (id)_titleTextColor
{
  v3 = [(AMSUIToastViewController *)self requestAppearance];
  v4 = [v3 titleTextColor];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v7 = [(AMSUIToastViewController *)self preferredAppearance];
    v6 = [v7 titleTextColor];
  }

  return v6;
}

- (void)_commitAppearance
{
  v64 = *MEMORY[0x1E69E9840];
  v62.receiver = self;
  v62.super_class = AMSUIToastViewController;
  [(AMSUIBaseMessageViewController *)&v62 _commitAppearance];
  v3 = [(AMSUIToastViewController *)self viewIfLoaded];

  if (!v3)
  {
    goto LABEL_57;
  }

  v4 = [(AMSUIBaseMessageViewController *)self _messageView];
  v5 = [v4 accessoryView];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = [(AMSUIToastViewController *)self requestAppearance];
  v8 = [v7 accessoryButtonBackgroundColor];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v11 = [(AMSUIToastViewController *)self preferredAppearance];
    v10 = [v11 accessoryButtonBackgroundColor];
  }

  if (v6 && v10)
  {
    [v6 setPreferredBackgroundColor:v10];
  }

  v12 = [(AMSUIToastViewController *)self requestAppearance];
  v13 = [v12 accessoryButtonColor];
  v14 = v13;
  if (v13)
  {
    v15 = v13;
  }

  else
  {
    v16 = [(AMSUIToastViewController *)self preferredAppearance];
    v15 = [v16 accessoryButtonColor];
  }

  if (v6 && v15)
  {
    [v6 setPreferredForegroundColor:v15];
  }

  v17 = [(AMSUIToastViewController *)self requestAppearance];
  v18 = [v17 accessoryButtonFont];
  if (v18)
  {
    v19 = v18;
  }

  else
  {
    v20 = [(AMSUIToastViewController *)self preferredAppearance];
    v19 = [v20 accessoryButtonFont];

    if (!v19)
    {
      goto LABEL_21;
    }
  }

  [v6 setPreferredFont:v19];

LABEL_21:
  v21 = [(AMSUIToastViewController *)self requestAppearance];
  v22 = [v21 backgroundColor];
  if (v22)
  {
    v23 = v22;

LABEL_24:
    [v4 set_ams_backgroundColor:v23];

    goto LABEL_25;
  }

  v24 = [(AMSUIToastViewController *)self preferredAppearance];
  v23 = [v24 backgroundColor];

  if (v23)
  {
    goto LABEL_24;
  }

LABEL_25:
  if (_os_feature_enabled_impl() && _os_feature_enabled_impl())
  {
    v56 = v10;
    v25 = [(AMSUIToastViewController *)self requestAppearance];
    v26 = [v25 footerButtonBackgroundColor];
    v27 = v26;
    if (v26)
    {
      v28 = v26;
    }

    else
    {
      v29 = [(AMSUIToastViewController *)self preferredAppearance];
      v28 = [v29 footerButtonBackgroundColor];
    }

    v30 = [(AMSUIToastViewController *)self requestAppearance];
    v31 = [v30 footerButtonColor];
    v32 = v31;
    if (v31)
    {
      v33 = v31;
    }

    else
    {
      v34 = [(AMSUIToastViewController *)self preferredAppearance];
      v33 = [v34 footerButtonColor];
    }

    v55 = v15;

    v35 = [(AMSUIToastViewController *)self requestAppearance];
    v36 = [v35 footerButtonFont];
    v37 = v36;
    if (v36)
    {
      v38 = v36;
    }

    else
    {
      v39 = [(AMSUIToastViewController *)self preferredAppearance];
      v38 = [v39 footerButtonFont];
    }

    v57 = v4;
    v40 = [v4 footerButtons];
    v58 = 0u;
    v59 = 0u;
    v60 = 0u;
    v61 = 0u;
    v41 = [v40 countByEnumeratingWithState:&v58 objects:v63 count:16];
    if (v41)
    {
      v42 = v41;
      v43 = *v59;
      do
      {
        for (i = 0; i != v42; ++i)
        {
          if (*v59 != v43)
          {
            objc_enumerationMutation(v40);
          }

          v45 = *(*(&v58 + 1) + 8 * i);
          if (v33)
          {
            [*(*(&v58 + 1) + 8 * i) setPreferredForegroundColor:v33];
          }

          if (v38)
          {
            [v45 setPreferredFont:v38];
          }

          if (v28)
          {
            [v45 setPreferredBackgroundColor:v28];
          }
        }

        v42 = [v40 countByEnumeratingWithState:&v58 objects:v63 count:16];
      }

      while (v42);
    }

    v10 = v56;
    v4 = v57;
    v15 = v55;
  }

  v46 = [(AMSUIToastViewController *)self requestAppearance];
  v47 = [v46 imageTintColor];
  if (v47)
  {
    v48 = v47;

LABEL_53:
    [v4 setIconColor:v48];

    goto LABEL_54;
  }

  v49 = [(AMSUIToastViewController *)self preferredAppearance];
  v48 = [v49 imageTintColor];

  if (v48)
  {
    goto LABEL_53;
  }

LABEL_54:
  v50 = [(AMSUIBaseMessageViewController *)self _loadedImage];

  if (v50)
  {
    v51 = [(AMSUIBaseMessageViewController *)self _loadedImage];
    v52 = [v51 ams_imageWithRenderingMode:{-[AMSUIToastViewController _primaryImageRenderingMode](self, "_primaryImageRenderingMode")}];
    v53 = [v4 imageView];
    [v53 setImage:v52];
  }

  [(AMSUIBaseMessageViewController *)self _updateTextWithAttributes];

LABEL_57:
  v54 = *MEMORY[0x1E69E9840];
}

- (int64_t)_iconAnimationPlayCount
{
  v3 = 1;
  v4 = [(AMSUIToastViewController *)self preferredAppearance];
  if (v4)
  {
    v5 = v4;
    v6 = [(AMSUIToastViewController *)self preferredAppearance];
    v7 = [v6 iconAnimationPlayCount];

    if (v7 != -90)
    {
      v8 = [(AMSUIToastViewController *)self preferredAppearance];
      v3 = [v8 iconAnimationPlayCount];
    }
  }

  v9 = [(AMSUIToastViewController *)self requestAppearance];
  if (v9)
  {
    v10 = v9;
    v11 = [(AMSUIToastViewController *)self requestAppearance];
    v12 = [v11 iconAnimationPlayCount];

    if (v12 != -90)
    {
      v13 = [(AMSUIToastViewController *)self requestAppearance];
      v3 = [v13 iconAnimationPlayCount];
    }
  }

  return v3;
}

- (id)_defaultPreferredImageSymbolConfiguration
{
  if (_os_feature_enabled_impl() && _os_feature_enabled_impl())
  {
    v2 = [MEMORY[0x1E69DCAD8] configurationWithTextStyle:*MEMORY[0x1E69DDCF8] scale:3];
    v3 = [MEMORY[0x1E69DCAD8] configurationWithWeight:5];
    v4 = [v2 configurationByApplyingConfiguration:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_effectiveImageSymbolConfiguration
{
  v3 = [(AMSUIToastViewController *)self _defaultPreferredImageSymbolConfiguration];
  if (v3)
  {
    v4 = v3;
LABEL_4:
    v6 = [(AMSUIToastViewController *)self requestAppearance];
    v7 = [v6 imageSymbolConfiguration];
    v8 = [v4 configurationByApplyingConfiguration:v7];

    goto LABEL_5;
  }

  v5 = [(AMSUIToastViewController *)self preferredAppearance];
  v4 = [v5 imageSymbolConfiguration];

  if (v4)
  {
    goto LABEL_4;
  }

  v6 = [(AMSUIToastViewController *)self requestAppearance];
  v8 = [v6 imageSymbolConfiguration];
LABEL_5:

  return v8;
}

- (void)setPreferredAppearance:(id)a3
{
  objc_storeStrong(&self->_preferredAppearance, a3);

  [(AMSUIToastViewController *)self _commitAppearance];
}

- (int64_t)_primaryImageRenderingMode
{
  v3 = [(AMSUIToastViewController *)self preferredAppearance];
  v4 = [v3 primaryImageRenderingMode];

  v5 = [(AMSUIToastViewController *)self requestAppearance];
  v6 = [v5 primaryImageRenderingMode];

  if (v6)
  {
    v7 = [(AMSUIToastViewController *)self requestAppearance];
    v4 = [v7 primaryImageRenderingMode];
  }

  return v4;
}

@end