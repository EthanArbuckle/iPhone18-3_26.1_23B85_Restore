@interface AMSUIDashboardMessageViewController
- (AMSUIDashboardMessageViewController)initWithRequest:(id)a3;
- (AMSUIDashboardMessageViewController)initWithRequest:(id)a3 bag:(id)a4 account:(id)a5;
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

@implementation AMSUIDashboardMessageViewController

- (AMSUIDashboardMessageViewController)initWithRequest:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = AMSUIDashboardMessageViewController;
  v5 = [(AMSUIBaseMessageViewController *)&v13 initWithRequest:v4];
  if (v5)
  {
    v6 = objc_alloc_init(AMSUIDashboardMessageAppearance);
    preferredAppearance = v5->_preferredAppearance;
    v5->_preferredAppearance = v6;

    v8 = [AMSUIDashboardMessageAppearance alloc];
    v9 = [v4 appearanceInfo];
    v10 = [(AMSUIDashboardMessageAppearance *)v8 initWithDictionary:v9];
    requestAppearance = v5->_requestAppearance;
    v5->_requestAppearance = v10;
  }

  return v5;
}

- (AMSUIDashboardMessageViewController)initWithRequest:(id)a3 bag:(id)a4 account:(id)a5
{
  v6.receiver = self;
  v6.super_class = AMSUIDashboardMessageViewController;
  return [(AMSUIBaseMessageViewController *)&v6 initWithRequest:a3 bag:a4 account:a5];
}

- (void)_setDialogRequest:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = AMSUIDashboardMessageViewController;
  [(AMSUIBaseMessageViewController *)&v12 _setDialogRequest:v4];
  v5 = [(AMSUIBaseMessageViewController *)self _messageView];
  v6 = [v4 defaultAction];
  if (v6)
  {
    [v5 setBodyDialogAction:v6 target:self action:sel__didTapActionButton_];
  }

  v7 = [v4 buttonActions];
  if (v7)
  {
    v8 = v7;
    v9 = [v4 buttonActions];
    v10 = [v9 count];

    if (v10)
    {
      v11 = [v4 buttonActions];
      [v5 setButtonsForDialogActions:v11 target:self action:sel__didTapActionButton_];
    }
  }
}

- (id)_messageFontCompatibleWith:(id)a3
{
  v4 = a3;
  v5 = [(AMSUIDashboardMessageViewController *)self requestAppearance];
  v6 = [v5 _messageFontDictionary];
  v7 = [AMSUIFontParser fontWithDictionary:v6 compatibleWith:v4];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v10 = [(AMSUIDashboardMessageViewController *)self requestAppearance];
    v9 = [v10 messageFont];
  }

  if (!v9)
  {
    v11 = [(AMSUIDashboardMessageViewController *)self preferredAppearance];
    v12 = [v11 _messageFontDictionary];
    v13 = [AMSUIFontParser fontWithDictionary:v12 compatibleWith:v4];
    v14 = v13;
    if (v13)
    {
      v9 = v13;
    }

    else
    {
      v15 = [(AMSUIDashboardMessageViewController *)self preferredAppearance];
      v9 = [v15 messageFont];
    }
  }

  return v9;
}

- (id)_messageTextColor
{
  v3 = [(AMSUIDashboardMessageViewController *)self requestAppearance];
  v4 = [v3 messageTextColor];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v7 = [(AMSUIDashboardMessageViewController *)self preferredAppearance];
    v6 = [v7 messageTextColor];
  }

  return v6;
}

- (id)_titleFontCompatibleWith:(id)a3
{
  v4 = a3;
  v5 = [(AMSUIDashboardMessageViewController *)self requestAppearance];
  v6 = [v5 _titleFontDictionary];
  v7 = [AMSUIFontParser fontWithDictionary:v6 compatibleWith:v4];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v10 = [(AMSUIDashboardMessageViewController *)self requestAppearance];
    v9 = [v10 titleFont];
  }

  if (!v9)
  {
    v11 = [(AMSUIDashboardMessageViewController *)self preferredAppearance];
    v12 = [v11 _titleFontDictionary];
    v13 = [AMSUIFontParser fontWithDictionary:v12 compatibleWith:v4];
    v14 = v13;
    if (v13)
    {
      v9 = v13;
    }

    else
    {
      v15 = [(AMSUIDashboardMessageViewController *)self preferredAppearance];
      v9 = [v15 titleFont];
    }
  }

  return v9;
}

- (id)_titleTextColor
{
  v3 = [(AMSUIDashboardMessageViewController *)self requestAppearance];
  v4 = [v3 titleTextColor];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v7 = [(AMSUIDashboardMessageViewController *)self preferredAppearance];
    v6 = [v7 titleTextColor];
  }

  return v6;
}

- (void)_commitAppearance
{
  v74 = *MEMORY[0x1E69E9840];
  v72.receiver = self;
  v72.super_class = AMSUIDashboardMessageViewController;
  [(AMSUIBaseMessageViewController *)&v72 _commitAppearance];
  v4 = [(AMSUIDashboardMessageViewController *)self viewIfLoaded];

  if (!v4)
  {
    goto LABEL_62;
  }

  v5 = [(AMSUIBaseMessageViewController *)self _messageView];
  v6 = [v5 accessoryView];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = [(AMSUIDashboardMessageViewController *)self requestAppearance];
  v9 = [v8 accessoryButtonBackgroundColor];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v12 = [(AMSUIDashboardMessageViewController *)self preferredAppearance];
    v11 = [v12 accessoryButtonBackgroundColor];
  }

  if (v7 && v11)
  {
    [v7 setPreferredBackgroundColor:v11];
  }

  v66 = v11;
  v13 = [(AMSUIDashboardMessageViewController *)self requestAppearance];
  v14 = [v13 accessoryButtonColor];
  v15 = v14;
  if (v14)
  {
    v16 = v14;
  }

  else
  {
    v17 = [(AMSUIDashboardMessageViewController *)self preferredAppearance];
    v16 = [v17 accessoryButtonColor];
  }

  if (v7 && v16)
  {
    [v7 setPreferredForegroundColor:v16];
  }

  v18 = [(AMSUIDashboardMessageViewController *)self requestAppearance];
  v19 = [v18 accessoryButtonFont];
  if (v19)
  {
    v20 = v19;
  }

  else
  {
    v21 = [(AMSUIDashboardMessageViewController *)self preferredAppearance];
    v20 = [v21 accessoryButtonFont];

    if (!v20)
    {
      goto LABEL_21;
    }
  }

  [v7 setPreferredFont:v20];

LABEL_21:
  v22 = [(AMSUIDashboardMessageViewController *)self requestAppearance];
  v23 = [v22 backgroundColor];
  v65 = v16;
  if (v23)
  {
    v24 = v23;
  }

  else
  {
    v25 = [(AMSUIDashboardMessageViewController *)self preferredAppearance];
    v24 = [v25 backgroundColor];

    if (!v24)
    {
      goto LABEL_25;
    }
  }

  [v5 set_ams_backgroundColor:v24];

LABEL_25:
  v26 = [(AMSUIDashboardMessageViewController *)self requestAppearance];
  v27 = [v26 backgroundImage];
  v28 = v27;
  if (!v27)
  {
    v2 = [(AMSUIDashboardMessageViewController *)self preferredAppearance];
    v28 = [v2 backgroundImage];
  }

  v29 = [v5 backgroundImageView];
  [v29 setImage:v28];

  if (!v27)
  {
  }

  v30 = [(AMSUIDashboardMessageViewController *)self requestAppearance];
  v31 = [v30 footerButtonBackgroundColor];
  v32 = v31;
  if (v31)
  {
    v33 = v31;
  }

  else
  {
    v34 = [(AMSUIDashboardMessageViewController *)self preferredAppearance];
    v33 = [v34 footerButtonBackgroundColor];
  }

  v35 = [(AMSUIDashboardMessageViewController *)self requestAppearance];
  v36 = [v35 footerButtonColor];
  v37 = v36;
  if (v36)
  {
    v38 = v36;
  }

  else
  {
    v39 = [(AMSUIDashboardMessageViewController *)self preferredAppearance];
    v38 = [v39 footerButtonColor];
  }

  v67 = v7;

  v40 = [(AMSUIDashboardMessageViewController *)self requestAppearance];
  v41 = [v40 footerButtonFont];
  v42 = v41;
  if (v41)
  {
    v43 = v41;
  }

  else
  {
    v44 = [(AMSUIDashboardMessageViewController *)self preferredAppearance];
    v43 = [v44 footerButtonFont];
  }

  v45 = [v5 footerButtons];
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v46 = [v45 countByEnumeratingWithState:&v68 objects:v73 count:16];
  if (v46)
  {
    v47 = v46;
    v48 = *v69;
    do
    {
      for (i = 0; i != v47; ++i)
      {
        if (*v69 != v48)
        {
          objc_enumerationMutation(v45);
        }

        v50 = *(*(&v68 + 1) + 8 * i);
        if (v38)
        {
          [*(*(&v68 + 1) + 8 * i) setPreferredForegroundColor:v38];
        }

        if (v43)
        {
          [v50 setPreferredFont:v43];
        }

        if (v33)
        {
          [v50 setPreferredBackgroundColor:v33];
        }
      }

      v47 = [v45 countByEnumeratingWithState:&v68 objects:v73 count:16];
    }

    while (v47);
  }

  v51 = [(AMSUIDashboardMessageViewController *)self requestAppearance];
  v52 = [v51 imageTintColor];
  if (v52)
  {
    v53 = v52;

    v54 = v67;
  }

  else
  {
    v55 = [(AMSUIDashboardMessageViewController *)self preferredAppearance];
    v53 = [v55 imageTintColor];

    v54 = v67;
    if (!v53)
    {
      goto LABEL_55;
    }
  }

  [v5 setIconColor:v53];

LABEL_55:
  v56 = [(AMSUIDashboardMessageViewController *)self requestAppearance];
  v57 = [v56 separatorColor];
  if (v57)
  {
    v58 = v57;

LABEL_58:
    [v5 setSeparatorColor:v58];

    goto LABEL_59;
  }

  v59 = [(AMSUIDashboardMessageViewController *)self preferredAppearance];
  v58 = [v59 separatorColor];

  if (v58)
  {
    goto LABEL_58;
  }

LABEL_59:
  v60 = [(AMSUIBaseMessageViewController *)self _loadedImage];

  if (v60)
  {
    v61 = [(AMSUIBaseMessageViewController *)self _loadedImage];
    v62 = [v61 ams_imageWithRenderingMode:{-[AMSUIDashboardMessageViewController _primaryImageRenderingMode](self, "_primaryImageRenderingMode")}];
    v63 = [v5 imageView];
    [v63 setImage:v62];
  }

  [(AMSUIBaseMessageViewController *)self _updateTextWithAttributes];

LABEL_62:
  v64 = *MEMORY[0x1E69E9840];
}

- (int64_t)_iconAnimationPlayCount
{
  v3 = 1;
  v4 = [(AMSUIDashboardMessageViewController *)self preferredAppearance];
  if (v4)
  {
    v5 = v4;
    v6 = [(AMSUIDashboardMessageViewController *)self preferredAppearance];
    v7 = [v6 iconAnimationPlayCount];

    if (v7 != -90)
    {
      v8 = [(AMSUIDashboardMessageViewController *)self preferredAppearance];
      v3 = [v8 iconAnimationPlayCount];
    }
  }

  v9 = [(AMSUIDashboardMessageViewController *)self requestAppearance];
  if (v9)
  {
    v10 = v9;
    v11 = [(AMSUIDashboardMessageViewController *)self requestAppearance];
    v12 = [v11 iconAnimationPlayCount];

    if (v12 != -90)
    {
      v13 = [(AMSUIDashboardMessageViewController *)self requestAppearance];
      v3 = [v13 iconAnimationPlayCount];
    }
  }

  return v3;
}

- (id)_defaultPreferredImageSymbolConfiguration
{
  v2 = [MEMORY[0x1E69DCAD8] configurationWithTextStyle:*MEMORY[0x1E69DDD58] scale:2];
  v3 = [MEMORY[0x1E69DCAD8] configurationWithWeight:6];
  v4 = [v2 configurationByApplyingConfiguration:v3];

  return v4;
}

- (id)_effectiveImageSymbolConfiguration
{
  v3 = [(AMSUIDashboardMessageViewController *)self _defaultPreferredImageSymbolConfiguration];
  v4 = [(AMSUIDashboardMessageViewController *)self preferredAppearance];
  v5 = [v4 imageSymbolConfiguration];
  v6 = [v3 configurationByApplyingConfiguration:v5];
  v7 = [(AMSUIDashboardMessageViewController *)self requestAppearance];
  v8 = [v7 imageSymbolConfiguration];
  v9 = [v6 configurationByApplyingConfiguration:v8];

  return v9;
}

- (void)setPreferredAppearance:(id)a3
{
  objc_storeStrong(&self->_preferredAppearance, a3);

  [(AMSUIDashboardMessageViewController *)self _commitAppearance];
}

- (int64_t)_primaryImageRenderingMode
{
  v3 = [(AMSUIDashboardMessageViewController *)self preferredAppearance];
  v4 = [v3 primaryImageRenderingMode];

  v5 = [(AMSUIDashboardMessageViewController *)self requestAppearance];
  v6 = [v5 primaryImageRenderingMode];

  if (v6)
  {
    v7 = [(AMSUIDashboardMessageViewController *)self requestAppearance];
    v4 = [v7 primaryImageRenderingMode];
  }

  return v4;
}

@end