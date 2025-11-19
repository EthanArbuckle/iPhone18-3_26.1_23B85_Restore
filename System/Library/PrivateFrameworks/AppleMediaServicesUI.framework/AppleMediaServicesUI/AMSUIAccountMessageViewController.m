@interface AMSUIAccountMessageViewController
- (AMSUIAccountMessageViewController)initWithRequest:(id)a3;
- (AMSUIAccountMessageViewController)initWithRequest:(id)a3 bag:(id)a4 account:(id)a5;
- (id)_defaultPreferredImageSymbolConfiguration;
- (id)_effectiveImageSymbolConfiguration;
- (id)_messageFontCompatibleWith:(id)a3;
- (id)_messageTextColor;
- (id)_titleFontCompatibleWith:(id)a3;
- (id)_titleTextColor;
- (int64_t)_iconAnimationPlayCount;
- (int64_t)_impressionAnimationStyle;
- (int64_t)_primaryImageRenderingMode;
- (void)_commitAnimationLaunch;
- (void)_commitAppearance;
- (void)_prepareAnimationLaunch;
- (void)_setDialogRequest:(id)a3;
- (void)setPreferredAppearance:(id)a3;
@end

@implementation AMSUIAccountMessageViewController

- (AMSUIAccountMessageViewController)initWithRequest:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = AMSUIAccountMessageViewController;
  v5 = [(AMSUIBaseMessageViewController *)&v14 initWithRequest:v4];
  v6 = v5;
  if (v5)
  {
    v5->_didAnimateFirstImpression = 0;
    v7 = objc_alloc_init(AMSUIAccountMessageAppearance);
    preferredAppearance = v6->_preferredAppearance;
    v6->_preferredAppearance = v7;

    v9 = [AMSUIAccountMessageAppearance alloc];
    v10 = [v4 appearanceInfo];
    v11 = [(AMSUIAccountMessageAppearance *)v9 initWithDictionary:v10];
    requestAppearance = v6->_requestAppearance;
    v6->_requestAppearance = v11;
  }

  return v6;
}

- (AMSUIAccountMessageViewController)initWithRequest:(id)a3 bag:(id)a4 account:(id)a5
{
  v6.receiver = self;
  v6.super_class = AMSUIAccountMessageViewController;
  return [(AMSUIBaseMessageViewController *)&v6 initWithRequest:a3 bag:a4 account:a5];
}

- (void)_setDialogRequest:(id)a3
{
  v11.receiver = self;
  v11.super_class = AMSUIAccountMessageViewController;
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

- (void)_prepareAnimationLaunch
{
  if ([(AMSUIAccountMessageViewController *)self _impressionAnimationStyle]!= -1)
  {
    if (UIAccessibilityIsReduceMotionEnabled())
    {
      v3 = [(AMSUIBaseMessageViewController *)self _messageView];
      v4 = [v3 imageView];
      v5 = [v4 layer];
      [v5 setOpacity:0.0];
    }

    else
    {
      v6 = *(MEMORY[0x1E695EFD0] + 16);
      *&v12.a = *MEMORY[0x1E695EFD0];
      *&v12.c = v6;
      *&v12.tx = *(MEMORY[0x1E695EFD0] + 32);
      CGAffineTransformScale(&v13, &v12, 0.25, 0.25);
      v3 = [(AMSUIBaseMessageViewController *)self _messageView];
      v4 = [v3 imageView];
      v12 = v13;
      [v4 setTransform:&v12];
    }

    v7 = [(AMSUIBaseMessageViewController *)self _messageView];
    v8 = [v7 textView];
    v9 = [v8 layer];
    [v9 setOpacity:0.0];

    v10 = [(AMSUIBaseMessageViewController *)self _messageView];
    v11 = [v10 buttons];
    [v11 enumerateObjectsUsingBlock:&__block_literal_global_0];
  }
}

void __60__AMSUIAccountMessageViewController__prepareAnimationLaunch__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 layer];
  [v2 setOpacity:0.0];
}

- (void)_commitAnimationLaunch
{
  if ([(AMSUIAccountMessageViewController *)self _impressionAnimationStyle]!= -1)
  {
    v3 = [objc_alloc(MEMORY[0x1E69DCF88]) initWithMass:1.0 stiffness:65.0 damping:12.0 initialVelocity:{0.0, 0.0}];
    v4 = [MEMORY[0x1E69794A8] animationWithKeyPath:@"keyPath"];
    [v4 setMass:1.0];
    [v4 setStiffness:65.0];
    [v4 setDamping:12.0];
    [v4 setInitialVelocity:0.0];
    v5 = objc_alloc(MEMORY[0x1E69793D0]);
    LODWORD(v6) = 1036831949;
    LODWORD(v7) = 1.0;
    LODWORD(v8) = 1.0;
    v9 = [v5 initWithControlPoints:v6 :0.0 :v7 :v8];
    [v4 setTimingFunction:v9];

    [v4 settlingDuration];
    [v4 setDuration:?];
    v10 = objc_alloc(MEMORY[0x1E69DD278]);
    [v4 settlingDuration];
    v11 = [v10 initWithDuration:v3 timingParameters:?];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __59__AMSUIAccountMessageViewController__commitAnimationLaunch__block_invoke;
    v12[3] = &unk_1E7F242D0;
    v12[4] = self;
    [v11 addAnimations:v12];
    [v11 startAnimation];
    [(AMSUIAccountMessageViewController *)self setDidAnimateFirstImpression:1];
  }
}

void __59__AMSUIAccountMessageViewController__commitAnimationLaunch__block_invoke(uint64_t a1)
{
  IsReduceMotionEnabled = UIAccessibilityIsReduceMotionEnabled();
  v3 = [*(a1 + 32) _messageView];
  v4 = [v3 imageView];
  v5 = v4;
  if (IsReduceMotionEnabled)
  {
    v6 = [v4 layer];
    LODWORD(v7) = 1.0;
    [v6 setOpacity:v7];
  }

  else
  {
    v8 = *(MEMORY[0x1E695EFD0] + 16);
    v15[0] = *MEMORY[0x1E695EFD0];
    v15[1] = v8;
    v15[2] = *(MEMORY[0x1E695EFD0] + 32);
    [v4 setTransform:v15];
  }

  v9 = [*(a1 + 32) _messageView];
  v10 = [v9 textView];
  v11 = [v10 layer];
  LODWORD(v12) = 1.0;
  [v11 setOpacity:v12];

  v13 = [*(a1 + 32) _messageView];
  v14 = [v13 buttons];
  [v14 enumerateObjectsUsingBlock:&__block_literal_global_18];
}

void __59__AMSUIAccountMessageViewController__commitAnimationLaunch__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 layer];
  LODWORD(v2) = 1.0;
  [v3 setOpacity:v2];
}

- (int64_t)_impressionAnimationStyle
{
  v3 = [(AMSUIAccountMessageViewController *)self requestAppearance];
  if (!v3 || (v4 = v3, -[AMSUIAccountMessageViewController requestAppearance](self, "requestAppearance"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 impressionAnimationStyle], v5, v4, v6 == -1))
  {
    v8 = -1;
  }

  else
  {
    v7 = [(AMSUIAccountMessageViewController *)self requestAppearance];
    v8 = [v7 impressionAnimationStyle];
  }

  v9 = [(AMSUIAccountMessageViewController *)self preferredAppearance];
  v10 = [v9 impressionAnimationStyle];

  if (v10 != -1)
  {
    v11 = [(AMSUIAccountMessageViewController *)self preferredAppearance];
    v8 = [v11 impressionAnimationStyle];
  }

  return v8;
}

- (id)_messageFontCompatibleWith:(id)a3
{
  v4 = a3;
  v5 = [(AMSUIAccountMessageViewController *)self requestAppearance];
  v6 = [v5 _messageFontDictionary];
  v7 = [AMSUIFontParser fontWithDictionary:v6 compatibleWith:v4];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v10 = [(AMSUIAccountMessageViewController *)self requestAppearance];
    v9 = [v10 messageFont];
  }

  if (!v9)
  {
    v11 = [(AMSUIAccountMessageViewController *)self preferredAppearance];
    v12 = [v11 _messageFontDictionary];
    v13 = [AMSUIFontParser fontWithDictionary:v12 compatibleWith:v4];
    v14 = v13;
    if (v13)
    {
      v9 = v13;
    }

    else
    {
      v15 = [(AMSUIAccountMessageViewController *)self preferredAppearance];
      v9 = [v15 messageFont];
    }
  }

  return v9;
}

- (id)_messageTextColor
{
  v3 = [(AMSUIAccountMessageViewController *)self requestAppearance];
  v4 = [v3 messageTextColor];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v7 = [(AMSUIAccountMessageViewController *)self preferredAppearance];
    v6 = [v7 messageTextColor];
  }

  return v6;
}

- (id)_titleFontCompatibleWith:(id)a3
{
  v4 = a3;
  v5 = [(AMSUIAccountMessageViewController *)self requestAppearance];
  v6 = [v5 _titleFontDictionary];
  v7 = [AMSUIFontParser fontWithDictionary:v6 compatibleWith:v4];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v10 = [(AMSUIAccountMessageViewController *)self requestAppearance];
    v9 = [v10 titleFont];
  }

  if (!v9)
  {
    v11 = [(AMSUIAccountMessageViewController *)self preferredAppearance];
    v12 = [v11 _titleFontDictionary];
    v13 = [AMSUIFontParser fontWithDictionary:v12 compatibleWith:v4];
    v14 = v13;
    if (v13)
    {
      v9 = v13;
    }

    else
    {
      v15 = [(AMSUIAccountMessageViewController *)self preferredAppearance];
      v9 = [v15 titleFont];
    }
  }

  return v9;
}

- (id)_titleTextColor
{
  v3 = [(AMSUIAccountMessageViewController *)self requestAppearance];
  v4 = [v3 titleTextColor];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v7 = [(AMSUIAccountMessageViewController *)self preferredAppearance];
    v6 = [v7 titleTextColor];
  }

  return v6;
}

- (int64_t)_primaryImageRenderingMode
{
  v3 = [(AMSUIAccountMessageViewController *)self preferredAppearance];
  v4 = [v3 primaryImageRenderingMode];

  v5 = [(AMSUIAccountMessageViewController *)self requestAppearance];
  v6 = [v5 primaryImageRenderingMode];

  if (v6)
  {
    v7 = [(AMSUIAccountMessageViewController *)self requestAppearance];
    v4 = [v7 primaryImageRenderingMode];
  }

  return v4;
}

- (void)_commitAppearance
{
  v73 = *MEMORY[0x1E69E9840];
  v71.receiver = self;
  v71.super_class = AMSUIAccountMessageViewController;
  [(AMSUIBaseMessageViewController *)&v71 _commitAppearance];
  v4 = [(AMSUIAccountMessageViewController *)self viewIfLoaded];

  if (!v4)
  {
    goto LABEL_61;
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

  v8 = [(AMSUIAccountMessageViewController *)self requestAppearance];
  v9 = [v8 accessoryButtonBackgroundColor];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v12 = [(AMSUIAccountMessageViewController *)self preferredAppearance];
    v11 = [v12 accessoryButtonBackgroundColor];
  }

  if (v7 && v11)
  {
    [v7 setPreferredBackgroundColor:v11];
  }

  v65 = v11;
  v13 = [(AMSUIAccountMessageViewController *)self requestAppearance];
  v14 = [v13 accessoryButtonColor];
  v15 = v14;
  if (v14)
  {
    v16 = v14;
  }

  else
  {
    v17 = [(AMSUIAccountMessageViewController *)self preferredAppearance];
    v16 = [v17 accessoryButtonColor];
  }

  if (v7 && v16)
  {
    [v7 setPreferredForegroundColor:v16];
  }

  v18 = [(AMSUIAccountMessageViewController *)self requestAppearance];
  v19 = [v18 accessoryButtonFont];
  if (v19)
  {
    v20 = v19;
  }

  else
  {
    v21 = [(AMSUIAccountMessageViewController *)self preferredAppearance];
    v20 = [v21 accessoryButtonFont];

    if (!v20)
    {
      goto LABEL_21;
    }
  }

  [v7 setPreferredFont:v20];

LABEL_21:
  v22 = [(AMSUIAccountMessageViewController *)self requestAppearance];
  v23 = [v22 imageStyle];

  if (v23)
  {
    [(AMSUIAccountMessageViewController *)self requestAppearance];
  }

  else
  {
    [(AMSUIAccountMessageViewController *)self preferredAppearance];
  }
  v24 = ;
  [v5 setImageStyle:{objc_msgSend(v24, "imageStyle")}];

  v25 = [(AMSUIAccountMessageViewController *)self requestAppearance];
  v26 = [v25 backgroundColor];
  if (v26)
  {
    v27 = v26;
  }

  else
  {
    v28 = [(AMSUIAccountMessageViewController *)self preferredAppearance];
    v27 = [v28 backgroundColor];

    if (!v27)
    {
      goto LABEL_28;
    }
  }

  [v5 set_ams_backgroundColor:v27];

LABEL_28:
  v29 = [(AMSUIAccountMessageViewController *)self requestAppearance];
  v30 = [v29 backgroundImage];
  v31 = v30;
  if (!v30)
  {
    v2 = [(AMSUIAccountMessageViewController *)self preferredAppearance];
    v31 = [v2 backgroundImage];
  }

  v32 = [v5 backgroundImageView];
  [v32 setImage:v31];

  if (!v30)
  {
  }

  v33 = [(AMSUIAccountMessageViewController *)self requestAppearance];
  v34 = [v33 footerButtonBackgroundColor];
  v35 = v34;
  if (v34)
  {
    v36 = v34;
  }

  else
  {
    v37 = [(AMSUIAccountMessageViewController *)self preferredAppearance];
    v36 = [v37 footerButtonBackgroundColor];
  }

  v38 = [(AMSUIAccountMessageViewController *)self requestAppearance];
  v39 = [v38 footerButtonColor];
  v40 = v39;
  if (v39)
  {
    v41 = v39;
  }

  else
  {
    v42 = [(AMSUIAccountMessageViewController *)self preferredAppearance];
    v41 = [v42 footerButtonColor];
  }

  v64 = v16;
  v66 = v7;

  v43 = [(AMSUIAccountMessageViewController *)self requestAppearance];
  v44 = [v43 footerButtonFont];
  v45 = v44;
  if (v44)
  {
    v46 = v44;
  }

  else
  {
    v47 = [(AMSUIAccountMessageViewController *)self preferredAppearance];
    v46 = [v47 footerButtonFont];
  }

  v48 = [v5 footerButtons];
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v49 = [v48 countByEnumeratingWithState:&v67 objects:v72 count:16];
  if (v49)
  {
    v50 = v49;
    v51 = *v68;
    do
    {
      for (i = 0; i != v50; ++i)
      {
        if (*v68 != v51)
        {
          objc_enumerationMutation(v48);
        }

        v53 = *(*(&v67 + 1) + 8 * i);
        if (v41)
        {
          [*(*(&v67 + 1) + 8 * i) setPreferredForegroundColor:v41];
        }

        if (v46)
        {
          [v53 setPreferredFont:v46];
        }

        if (v36)
        {
          [v53 setPreferredBackgroundColor:v36];
        }
      }

      v50 = [v48 countByEnumeratingWithState:&v67 objects:v72 count:16];
    }

    while (v50);
  }

  v54 = [(AMSUIAccountMessageViewController *)self requestAppearance];
  v55 = [v54 imageTintColor];
  if (v55)
  {
    v56 = v55;

    v57 = v66;
LABEL_57:
    [v5 setIconColor:v56];

    goto LABEL_58;
  }

  v58 = [(AMSUIAccountMessageViewController *)self preferredAppearance];
  v56 = [v58 imageTintColor];

  v57 = v66;
  if (v56)
  {
    goto LABEL_57;
  }

LABEL_58:
  v59 = [(AMSUIBaseMessageViewController *)self _loadedImage];

  if (v59)
  {
    v60 = [(AMSUIBaseMessageViewController *)self _loadedImage];
    v61 = [v60 ams_imageWithRenderingMode:{-[AMSUIAccountMessageViewController _primaryImageRenderingMode](self, "_primaryImageRenderingMode")}];
    v62 = [v5 imageView];
    [v62 setImage:v61];
  }

  [(AMSUIBaseMessageViewController *)self _updateTextWithAttributes];

LABEL_61:
  v63 = *MEMORY[0x1E69E9840];
}

- (int64_t)_iconAnimationPlayCount
{
  v3 = 1;
  v4 = [(AMSUIAccountMessageViewController *)self preferredAppearance];
  if (v4)
  {
    v5 = v4;
    v6 = [(AMSUIAccountMessageViewController *)self preferredAppearance];
    v7 = [v6 iconAnimationPlayCount];

    if (v7 != -90)
    {
      v8 = [(AMSUIAccountMessageViewController *)self preferredAppearance];
      v3 = [v8 iconAnimationPlayCount];
    }
  }

  v9 = [(AMSUIAccountMessageViewController *)self requestAppearance];
  if (v9)
  {
    v10 = v9;
    v11 = [(AMSUIAccountMessageViewController *)self requestAppearance];
    v12 = [v11 iconAnimationPlayCount];

    if (v12 != -90)
    {
      v13 = [(AMSUIAccountMessageViewController *)self requestAppearance];
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
    v4 = [MEMORY[0x1E69DCAD8] configurationWithTextStyle:*MEMORY[0x1E69DDCF8] scale:3];
  }

  return v4;
}

- (id)_effectiveImageSymbolConfiguration
{
  v3 = [(AMSUIAccountMessageViewController *)self _defaultPreferredImageSymbolConfiguration];
  v4 = [(AMSUIAccountMessageViewController *)self preferredAppearance];
  v5 = [v4 imageSymbolConfiguration];
  v6 = [v3 configurationByApplyingConfiguration:v5];
  v7 = [(AMSUIAccountMessageViewController *)self requestAppearance];
  v8 = [v7 imageSymbolConfiguration];
  v9 = [v6 configurationByApplyingConfiguration:v8];

  return v9;
}

- (void)setPreferredAppearance:(id)a3
{
  objc_storeStrong(&self->_preferredAppearance, a3);

  [(AMSUIAccountMessageViewController *)self _commitAppearance];
}

@end