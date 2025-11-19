@interface AMSUIBannerMessageViewController
- (AMSUIBannerMessageViewController)initWithRequest:(id)a3;
- (AMSUIBannerMessageViewController)initWithRequest:(id)a3 bag:(id)a4 account:(id)a5;
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

@implementation AMSUIBannerMessageViewController

- (AMSUIBannerMessageViewController)initWithRequest:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = AMSUIBannerMessageViewController;
  v5 = [(AMSUIBaseMessageViewController *)&v13 initWithRequest:v4];
  if (v5)
  {
    v6 = objc_alloc_init(AMSUIBannerAppearance);
    preferredAppearance = v5->_preferredAppearance;
    v5->_preferredAppearance = v6;

    v8 = [AMSUIBannerAppearance alloc];
    v9 = [v4 appearanceInfo];
    v10 = [(AMSUIBannerAppearance *)v8 initWithDictionary:v9];
    requestAppearance = v5->_requestAppearance;
    v5->_requestAppearance = v10;
  }

  return v5;
}

- (AMSUIBannerMessageViewController)initWithRequest:(id)a3 bag:(id)a4 account:(id)a5
{
  v6.receiver = self;
  v6.super_class = AMSUIBannerMessageViewController;
  return [(AMSUIBaseMessageViewController *)&v6 initWithRequest:a3 bag:a4 account:a5];
}

- (void)_setDialogRequest:(id)a3
{
  v11.receiver = self;
  v11.super_class = AMSUIBannerMessageViewController;
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
  v5 = [(AMSUIBannerMessageViewController *)self requestAppearance];
  v6 = [v5 _messageFontDictionary];
  v7 = [AMSUIFontParser fontWithDictionary:v6 compatibleWith:v4];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v10 = [(AMSUIBannerMessageViewController *)self requestAppearance];
    v9 = [v10 messageFont];
  }

  if (!v9)
  {
    v11 = [(AMSUIBannerMessageViewController *)self preferredAppearance];
    v12 = [v11 _messageFontDictionary];
    v13 = [AMSUIFontParser fontWithDictionary:v12 compatibleWith:v4];
    v14 = v13;
    if (v13)
    {
      v9 = v13;
    }

    else
    {
      v15 = [(AMSUIBannerMessageViewController *)self preferredAppearance];
      v9 = [v15 messageFont];
    }
  }

  return v9;
}

- (id)_messageTextColor
{
  v3 = [(AMSUIBannerMessageViewController *)self requestAppearance];
  v4 = [v3 messageTextColor];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v7 = [(AMSUIBannerMessageViewController *)self preferredAppearance];
    v6 = [v7 messageTextColor];
  }

  return v6;
}

- (id)_titleFontCompatibleWith:(id)a3
{
  v4 = a3;
  v5 = [(AMSUIBannerMessageViewController *)self requestAppearance];
  v6 = [v5 _titleFontDictionary];
  v7 = [AMSUIFontParser fontWithDictionary:v6 compatibleWith:v4];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v10 = [(AMSUIBannerMessageViewController *)self requestAppearance];
    v9 = [v10 titleFont];
  }

  if (!v9)
  {
    v11 = [(AMSUIBannerMessageViewController *)self preferredAppearance];
    v12 = [v11 _titleFontDictionary];
    v13 = [AMSUIFontParser fontWithDictionary:v12 compatibleWith:v4];
    v14 = v13;
    if (v13)
    {
      v9 = v13;
    }

    else
    {
      v15 = [(AMSUIBannerMessageViewController *)self preferredAppearance];
      v9 = [v15 titleFont];
    }
  }

  return v9;
}

- (id)_titleTextColor
{
  v3 = [(AMSUIBannerMessageViewController *)self requestAppearance];
  v4 = [v3 titleTextColor];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v7 = [(AMSUIBannerMessageViewController *)self preferredAppearance];
    v6 = [v7 titleTextColor];
  }

  return v6;
}

- (void)_commitAppearance
{
  v89 = *MEMORY[0x1E69E9840];
  v87.receiver = self;
  v87.super_class = AMSUIBannerMessageViewController;
  [(AMSUIBaseMessageViewController *)&v87 _commitAppearance];
  v4 = [(AMSUIBannerMessageViewController *)self viewIfLoaded];

  if (!v4)
  {
    goto LABEL_81;
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

  v8 = [(AMSUIBannerMessageViewController *)self requestAppearance];
  v9 = [v8 accessoryButtonBackgroundColor];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v12 = [(AMSUIBannerMessageViewController *)self preferredAppearance];
    v11 = [v12 accessoryButtonBackgroundColor];
  }

  if (v7 && v11)
  {
    [v7 setPreferredBackgroundColor:v11];
  }

  v13 = [(AMSUIBannerMessageViewController *)self requestAppearance];
  v14 = [v13 accessoryButtonColor];
  v15 = v14;
  if (v14)
  {
    v16 = v14;
  }

  else
  {
    v17 = [(AMSUIBannerMessageViewController *)self preferredAppearance];
    v16 = [v17 accessoryButtonColor];
  }

  if (v7 && v16)
  {
    [v7 setPreferredForegroundColor:v16];
  }

  v18 = [(AMSUIBannerMessageViewController *)self requestAppearance];
  v19 = [v18 accessoryButtonFont];
  if (v19)
  {
    v20 = v19;
  }

  else
  {
    v21 = [(AMSUIBannerMessageViewController *)self preferredAppearance];
    v20 = [v21 accessoryButtonFont];

    if (!v20)
    {
      goto LABEL_21;
    }
  }

  [v7 setPreferredFont:v20];

LABEL_21:
  v22 = [v5 accessorySecondaryView];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v23 = v22;
  }

  else
  {
    v23 = 0;
  }

  v24 = [(AMSUIBannerMessageViewController *)self requestAppearance];
  v25 = [v24 accessorySecondaryButtonBackgroundColor];
  v26 = v25;
  if (v25)
  {
    v27 = v25;
  }

  else
  {
    v2 = [(AMSUIBannerMessageViewController *)self preferredAppearance];
    v27 = [v2 accessorySecondaryButtonBackgroundColor];
  }

  if (v23 && v27)
  {
    [v23 setPreferredBackgroundColor:v27];
  }

  v28 = [(AMSUIBannerMessageViewController *)self requestAppearance];
  v29 = [v28 accessorySecondaryButtonColor];
  v30 = v29;
  if (v29)
  {
    v82 = v29;
  }

  else
  {
    v2 = [(AMSUIBannerMessageViewController *)self preferredAppearance];
    v82 = [v2 accessorySecondaryButtonColor];
  }

  if (v23 && v82)
  {
    [v23 setPreferredForegroundColor:v82];
  }

  v31 = [(AMSUIBannerMessageViewController *)self requestAppearance];
  v32 = [v31 accessorySecondaryButtonFont];
  if (v32)
  {
    v33 = v32;
  }

  else
  {
    v2 = [(AMSUIBannerMessageViewController *)self preferredAppearance];
    v33 = [v2 accessorySecondaryButtonFont];

    if (!v33)
    {
      goto LABEL_40;
    }
  }

  [v23 setPreferredFont:v33];

LABEL_40:
  v34 = [(AMSUIBannerMessageViewController *)self requestAppearance];
  v35 = [v34 backgroundColor];
  v80 = v11;
  if (v35)
  {
    v36 = v35;
  }

  else
  {
    v2 = [(AMSUIBannerMessageViewController *)self preferredAppearance];
    v36 = [v2 backgroundColor];

    if (!v36)
    {
      goto LABEL_44;
    }
  }

  [v5 set_ams_backgroundColor:v36];

LABEL_44:
  v81 = v7;
  v37 = [(AMSUIBannerMessageViewController *)self requestAppearance];
  v38 = [v37 backgroundImage];
  v39 = v38;
  if (!v38)
  {
    v2 = [(AMSUIBannerMessageViewController *)self preferredAppearance];
    v39 = [v2 backgroundImage];
  }

  v40 = [v5 backgroundImageView];
  [v40 setImage:v39];

  if (!v38)
  {
  }

  v41 = [(AMSUIBannerMessageViewController *)self requestAppearance];
  v42 = [v41 footerButtonBackgroundColor];
  v43 = v42;
  if (v42)
  {
    v44 = v42;
  }

  else
  {
    v45 = [(AMSUIBannerMessageViewController *)self preferredAppearance];
    v44 = [v45 footerButtonBackgroundColor];
  }

  v79 = v16;

  v46 = [(AMSUIBannerMessageViewController *)self requestAppearance];
  v47 = [v46 footerButtonColor];
  v48 = v47;
  if (v47)
  {
    v49 = v47;
  }

  else
  {
    v50 = [(AMSUIBannerMessageViewController *)self preferredAppearance];
    v49 = [v50 footerButtonColor];
  }

  v76 = v27;

  v51 = [(AMSUIBannerMessageViewController *)self requestAppearance];
  v52 = [v51 footerButtonFont];
  v53 = v52;
  v78 = v23;
  if (v52)
  {
    v54 = v52;
  }

  else
  {
    v55 = [(AMSUIBannerMessageViewController *)self preferredAppearance];
    v54 = [v55 footerButtonFont];
  }

  v56 = [v5 footerButtons];
  v83 = 0u;
  v84 = 0u;
  v85 = 0u;
  v86 = 0u;
  v57 = [v56 countByEnumeratingWithState:&v83 objects:v88 count:16];
  if (v57)
  {
    v58 = v57;
    v59 = *v84;
    do
    {
      for (i = 0; i != v58; ++i)
      {
        if (*v84 != v59)
        {
          objc_enumerationMutation(v56);
        }

        v61 = *(*(&v83 + 1) + 8 * i);
        if (v49)
        {
          [*(*(&v83 + 1) + 8 * i) setPreferredForegroundColor:v49];
        }

        if (v54)
        {
          [v61 setPreferredFont:v54];
        }

        if (v44)
        {
          [v61 setPreferredBackgroundColor:v44];
        }
      }

      v58 = [v56 countByEnumeratingWithState:&v83 objects:v88 count:16];
    }

    while (v58);
  }

  v62 = [(AMSUIBannerMessageViewController *)self requestAppearance];
  v63 = [v62 imageTintColor];
  if (v63)
  {
    v64 = v63;

    v65 = v77;
  }

  else
  {
    v66 = [(AMSUIBannerMessageViewController *)self preferredAppearance];
    v64 = [v66 imageTintColor];

    v65 = v77;
    if (!v64)
    {
      goto LABEL_74;
    }
  }

  [v5 setIconColor:v64];

LABEL_74:
  v67 = [(AMSUIBannerMessageViewController *)self requestAppearance];
  v68 = [v67 separatorColor];
  if (v68)
  {
    v69 = v68;

LABEL_77:
    [v5 setSeparatorColor:v69];

    goto LABEL_78;
  }

  v70 = [(AMSUIBannerMessageViewController *)self preferredAppearance];
  v69 = [v70 separatorColor];

  if (v69)
  {
    goto LABEL_77;
  }

LABEL_78:
  v71 = [(AMSUIBaseMessageViewController *)self _loadedImage];

  if (v71)
  {
    v72 = [(AMSUIBaseMessageViewController *)self _loadedImage];
    v73 = [v72 ams_imageWithRenderingMode:{-[AMSUIBannerMessageViewController _primaryImageRenderingMode](self, "_primaryImageRenderingMode")}];
    v74 = [v5 imageView];
    [v74 setImage:v73];
  }

  [(AMSUIBaseMessageViewController *)self _updateTextWithAttributes];

LABEL_81:
  v75 = *MEMORY[0x1E69E9840];
}

- (int64_t)_iconAnimationPlayCount
{
  v3 = 1;
  v4 = [(AMSUIBannerMessageViewController *)self preferredAppearance];
  if (v4)
  {
    v5 = v4;
    v6 = [(AMSUIBannerMessageViewController *)self preferredAppearance];
    v7 = [v6 iconAnimationPlayCount];

    if (v7 != -90)
    {
      v8 = [(AMSUIBannerMessageViewController *)self preferredAppearance];
      v3 = [v8 iconAnimationPlayCount];
    }
  }

  v9 = [(AMSUIBannerMessageViewController *)self requestAppearance];
  if (v9)
  {
    v10 = v9;
    v11 = [(AMSUIBannerMessageViewController *)self requestAppearance];
    v12 = [v11 iconAnimationPlayCount];

    if (v12 != -90)
    {
      v13 = [(AMSUIBannerMessageViewController *)self requestAppearance];
      v3 = [v13 iconAnimationPlayCount];
    }
  }

  return v3;
}

- (id)_defaultPreferredImageSymbolConfiguration
{
  v2 = [MEMORY[0x1E69DCAD8] configurationWithTextStyle:*MEMORY[0x1E69DDCF8] scale:3];
  v3 = [MEMORY[0x1E69DCAD8] configurationWithWeight:5];
  v4 = [v2 configurationByApplyingConfiguration:v3];

  return v4;
}

- (id)_effectiveImageSymbolConfiguration
{
  v3 = [(AMSUIBannerMessageViewController *)self _defaultPreferredImageSymbolConfiguration];
  v4 = [(AMSUIBannerMessageViewController *)self preferredAppearance];
  v5 = [v4 imageSymbolConfiguration];
  v6 = [v3 configurationByApplyingConfiguration:v5];
  v7 = [(AMSUIBannerMessageViewController *)self requestAppearance];
  v8 = [v7 imageSymbolConfiguration];
  v9 = [v6 configurationByApplyingConfiguration:v8];

  return v9;
}

- (void)setPreferredAppearance:(id)a3
{
  objc_storeStrong(&self->_preferredAppearance, a3);

  [(AMSUIBannerMessageViewController *)self _commitAppearance];
}

- (int64_t)_primaryImageRenderingMode
{
  v3 = [(AMSUIBannerMessageViewController *)self preferredAppearance];
  v4 = [v3 primaryImageRenderingMode];

  v5 = [(AMSUIBannerMessageViewController *)self requestAppearance];
  v6 = [v5 primaryImageRenderingMode];

  if (v6)
  {
    v7 = [(AMSUIBannerMessageViewController *)self requestAppearance];
    v4 = [v7 primaryImageRenderingMode];
  }

  return v4;
}

@end