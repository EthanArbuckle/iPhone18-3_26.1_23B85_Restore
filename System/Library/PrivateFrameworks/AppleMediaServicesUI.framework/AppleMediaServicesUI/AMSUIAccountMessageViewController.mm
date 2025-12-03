@interface AMSUIAccountMessageViewController
- (AMSUIAccountMessageViewController)initWithRequest:(id)request;
- (AMSUIAccountMessageViewController)initWithRequest:(id)request bag:(id)bag account:(id)account;
- (id)_defaultPreferredImageSymbolConfiguration;
- (id)_effectiveImageSymbolConfiguration;
- (id)_messageFontCompatibleWith:(id)with;
- (id)_messageTextColor;
- (id)_titleFontCompatibleWith:(id)with;
- (id)_titleTextColor;
- (int64_t)_iconAnimationPlayCount;
- (int64_t)_impressionAnimationStyle;
- (int64_t)_primaryImageRenderingMode;
- (void)_commitAnimationLaunch;
- (void)_commitAppearance;
- (void)_prepareAnimationLaunch;
- (void)_setDialogRequest:(id)request;
- (void)setPreferredAppearance:(id)appearance;
@end

@implementation AMSUIAccountMessageViewController

- (AMSUIAccountMessageViewController)initWithRequest:(id)request
{
  requestCopy = request;
  v14.receiver = self;
  v14.super_class = AMSUIAccountMessageViewController;
  v5 = [(AMSUIBaseMessageViewController *)&v14 initWithRequest:requestCopy];
  v6 = v5;
  if (v5)
  {
    v5->_didAnimateFirstImpression = 0;
    v7 = objc_alloc_init(AMSUIAccountMessageAppearance);
    preferredAppearance = v6->_preferredAppearance;
    v6->_preferredAppearance = v7;

    v9 = [AMSUIAccountMessageAppearance alloc];
    appearanceInfo = [requestCopy appearanceInfo];
    v11 = [(AMSUIAccountMessageAppearance *)v9 initWithDictionary:appearanceInfo];
    requestAppearance = v6->_requestAppearance;
    v6->_requestAppearance = v11;
  }

  return v6;
}

- (AMSUIAccountMessageViewController)initWithRequest:(id)request bag:(id)bag account:(id)account
{
  v6.receiver = self;
  v6.super_class = AMSUIAccountMessageViewController;
  return [(AMSUIBaseMessageViewController *)&v6 initWithRequest:request bag:bag account:account];
}

- (void)_setDialogRequest:(id)request
{
  v11.receiver = self;
  v11.super_class = AMSUIAccountMessageViewController;
  requestCopy = request;
  [(AMSUIBaseMessageViewController *)&v11 _setDialogRequest:requestCopy];
  v5 = [(AMSUIBaseMessageViewController *)self _messageView:v11.receiver];
  defaultAction = [requestCopy defaultAction];
  v7 = MEMORY[0x1E695DF70];
  buttonActions = [requestCopy buttonActions];

  v9 = [v7 arrayWithArray:buttonActions];

  if (defaultAction)
  {
    title = [defaultAction title];

    if (title)
    {
      [v9 addObject:defaultAction];
    }

    else
    {
      [v5 setBodyDialogAction:defaultAction target:self action:sel__didTapActionButton_];
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
      _messageView = [(AMSUIBaseMessageViewController *)self _messageView];
      imageView = [_messageView imageView];
      layer = [imageView layer];
      [layer setOpacity:0.0];
    }

    else
    {
      v6 = *(MEMORY[0x1E695EFD0] + 16);
      *&v12.a = *MEMORY[0x1E695EFD0];
      *&v12.c = v6;
      *&v12.tx = *(MEMORY[0x1E695EFD0] + 32);
      CGAffineTransformScale(&v13, &v12, 0.25, 0.25);
      _messageView = [(AMSUIBaseMessageViewController *)self _messageView];
      imageView = [_messageView imageView];
      v12 = v13;
      [imageView setTransform:&v12];
    }

    _messageView2 = [(AMSUIBaseMessageViewController *)self _messageView];
    textView = [_messageView2 textView];
    layer2 = [textView layer];
    [layer2 setOpacity:0.0];

    _messageView3 = [(AMSUIBaseMessageViewController *)self _messageView];
    buttons = [_messageView3 buttons];
    [buttons enumerateObjectsUsingBlock:&__block_literal_global_0];
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
  requestAppearance = [(AMSUIAccountMessageViewController *)self requestAppearance];
  if (!requestAppearance || (v4 = requestAppearance, -[AMSUIAccountMessageViewController requestAppearance](self, "requestAppearance"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 impressionAnimationStyle], v5, v4, v6 == -1))
  {
    impressionAnimationStyle = -1;
  }

  else
  {
    requestAppearance2 = [(AMSUIAccountMessageViewController *)self requestAppearance];
    impressionAnimationStyle = [requestAppearance2 impressionAnimationStyle];
  }

  preferredAppearance = [(AMSUIAccountMessageViewController *)self preferredAppearance];
  impressionAnimationStyle2 = [preferredAppearance impressionAnimationStyle];

  if (impressionAnimationStyle2 != -1)
  {
    preferredAppearance2 = [(AMSUIAccountMessageViewController *)self preferredAppearance];
    impressionAnimationStyle = [preferredAppearance2 impressionAnimationStyle];
  }

  return impressionAnimationStyle;
}

- (id)_messageFontCompatibleWith:(id)with
{
  withCopy = with;
  requestAppearance = [(AMSUIAccountMessageViewController *)self requestAppearance];
  _messageFontDictionary = [requestAppearance _messageFontDictionary];
  v7 = [AMSUIFontParser fontWithDictionary:_messageFontDictionary compatibleWith:withCopy];
  v8 = v7;
  if (v7)
  {
    messageFont = v7;
  }

  else
  {
    requestAppearance2 = [(AMSUIAccountMessageViewController *)self requestAppearance];
    messageFont = [requestAppearance2 messageFont];
  }

  if (!messageFont)
  {
    preferredAppearance = [(AMSUIAccountMessageViewController *)self preferredAppearance];
    _messageFontDictionary2 = [preferredAppearance _messageFontDictionary];
    v13 = [AMSUIFontParser fontWithDictionary:_messageFontDictionary2 compatibleWith:withCopy];
    v14 = v13;
    if (v13)
    {
      messageFont = v13;
    }

    else
    {
      preferredAppearance2 = [(AMSUIAccountMessageViewController *)self preferredAppearance];
      messageFont = [preferredAppearance2 messageFont];
    }
  }

  return messageFont;
}

- (id)_messageTextColor
{
  requestAppearance = [(AMSUIAccountMessageViewController *)self requestAppearance];
  messageTextColor = [requestAppearance messageTextColor];
  v5 = messageTextColor;
  if (messageTextColor)
  {
    messageTextColor2 = messageTextColor;
  }

  else
  {
    preferredAppearance = [(AMSUIAccountMessageViewController *)self preferredAppearance];
    messageTextColor2 = [preferredAppearance messageTextColor];
  }

  return messageTextColor2;
}

- (id)_titleFontCompatibleWith:(id)with
{
  withCopy = with;
  requestAppearance = [(AMSUIAccountMessageViewController *)self requestAppearance];
  _titleFontDictionary = [requestAppearance _titleFontDictionary];
  v7 = [AMSUIFontParser fontWithDictionary:_titleFontDictionary compatibleWith:withCopy];
  v8 = v7;
  if (v7)
  {
    titleFont = v7;
  }

  else
  {
    requestAppearance2 = [(AMSUIAccountMessageViewController *)self requestAppearance];
    titleFont = [requestAppearance2 titleFont];
  }

  if (!titleFont)
  {
    preferredAppearance = [(AMSUIAccountMessageViewController *)self preferredAppearance];
    _titleFontDictionary2 = [preferredAppearance _titleFontDictionary];
    v13 = [AMSUIFontParser fontWithDictionary:_titleFontDictionary2 compatibleWith:withCopy];
    v14 = v13;
    if (v13)
    {
      titleFont = v13;
    }

    else
    {
      preferredAppearance2 = [(AMSUIAccountMessageViewController *)self preferredAppearance];
      titleFont = [preferredAppearance2 titleFont];
    }
  }

  return titleFont;
}

- (id)_titleTextColor
{
  requestAppearance = [(AMSUIAccountMessageViewController *)self requestAppearance];
  titleTextColor = [requestAppearance titleTextColor];
  v5 = titleTextColor;
  if (titleTextColor)
  {
    titleTextColor2 = titleTextColor;
  }

  else
  {
    preferredAppearance = [(AMSUIAccountMessageViewController *)self preferredAppearance];
    titleTextColor2 = [preferredAppearance titleTextColor];
  }

  return titleTextColor2;
}

- (int64_t)_primaryImageRenderingMode
{
  preferredAppearance = [(AMSUIAccountMessageViewController *)self preferredAppearance];
  primaryImageRenderingMode = [preferredAppearance primaryImageRenderingMode];

  requestAppearance = [(AMSUIAccountMessageViewController *)self requestAppearance];
  primaryImageRenderingMode2 = [requestAppearance primaryImageRenderingMode];

  if (primaryImageRenderingMode2)
  {
    requestAppearance2 = [(AMSUIAccountMessageViewController *)self requestAppearance];
    primaryImageRenderingMode = [requestAppearance2 primaryImageRenderingMode];
  }

  return primaryImageRenderingMode;
}

- (void)_commitAppearance
{
  v73 = *MEMORY[0x1E69E9840];
  v71.receiver = self;
  v71.super_class = AMSUIAccountMessageViewController;
  [(AMSUIBaseMessageViewController *)&v71 _commitAppearance];
  viewIfLoaded = [(AMSUIAccountMessageViewController *)self viewIfLoaded];

  if (!viewIfLoaded)
  {
    goto LABEL_61;
  }

  _messageView = [(AMSUIBaseMessageViewController *)self _messageView];
  accessoryView = [_messageView accessoryView];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = accessoryView;
  }

  else
  {
    v7 = 0;
  }

  requestAppearance = [(AMSUIAccountMessageViewController *)self requestAppearance];
  accessoryButtonBackgroundColor = [requestAppearance accessoryButtonBackgroundColor];
  v10 = accessoryButtonBackgroundColor;
  if (accessoryButtonBackgroundColor)
  {
    accessoryButtonBackgroundColor2 = accessoryButtonBackgroundColor;
  }

  else
  {
    preferredAppearance = [(AMSUIAccountMessageViewController *)self preferredAppearance];
    accessoryButtonBackgroundColor2 = [preferredAppearance accessoryButtonBackgroundColor];
  }

  if (v7 && accessoryButtonBackgroundColor2)
  {
    [v7 setPreferredBackgroundColor:accessoryButtonBackgroundColor2];
  }

  v65 = accessoryButtonBackgroundColor2;
  requestAppearance2 = [(AMSUIAccountMessageViewController *)self requestAppearance];
  accessoryButtonColor = [requestAppearance2 accessoryButtonColor];
  v15 = accessoryButtonColor;
  if (accessoryButtonColor)
  {
    accessoryButtonColor2 = accessoryButtonColor;
  }

  else
  {
    preferredAppearance2 = [(AMSUIAccountMessageViewController *)self preferredAppearance];
    accessoryButtonColor2 = [preferredAppearance2 accessoryButtonColor];
  }

  if (v7 && accessoryButtonColor2)
  {
    [v7 setPreferredForegroundColor:accessoryButtonColor2];
  }

  requestAppearance3 = [(AMSUIAccountMessageViewController *)self requestAppearance];
  accessoryButtonFont = [requestAppearance3 accessoryButtonFont];
  if (accessoryButtonFont)
  {
    accessoryButtonFont2 = accessoryButtonFont;
  }

  else
  {
    preferredAppearance3 = [(AMSUIAccountMessageViewController *)self preferredAppearance];
    accessoryButtonFont2 = [preferredAppearance3 accessoryButtonFont];

    if (!accessoryButtonFont2)
    {
      goto LABEL_21;
    }
  }

  [v7 setPreferredFont:accessoryButtonFont2];

LABEL_21:
  requestAppearance4 = [(AMSUIAccountMessageViewController *)self requestAppearance];
  imageStyle = [requestAppearance4 imageStyle];

  if (imageStyle)
  {
    [(AMSUIAccountMessageViewController *)self requestAppearance];
  }

  else
  {
    [(AMSUIAccountMessageViewController *)self preferredAppearance];
  }
  v24 = ;
  [_messageView setImageStyle:{objc_msgSend(v24, "imageStyle")}];

  requestAppearance5 = [(AMSUIAccountMessageViewController *)self requestAppearance];
  backgroundColor = [requestAppearance5 backgroundColor];
  if (backgroundColor)
  {
    backgroundColor2 = backgroundColor;
  }

  else
  {
    preferredAppearance4 = [(AMSUIAccountMessageViewController *)self preferredAppearance];
    backgroundColor2 = [preferredAppearance4 backgroundColor];

    if (!backgroundColor2)
    {
      goto LABEL_28;
    }
  }

  [_messageView set_ams_backgroundColor:backgroundColor2];

LABEL_28:
  requestAppearance6 = [(AMSUIAccountMessageViewController *)self requestAppearance];
  backgroundImage = [requestAppearance6 backgroundImage];
  backgroundImage2 = backgroundImage;
  if (!backgroundImage)
  {
    preferredAppearance5 = [(AMSUIAccountMessageViewController *)self preferredAppearance];
    backgroundImage2 = [preferredAppearance5 backgroundImage];
  }

  backgroundImageView = [_messageView backgroundImageView];
  [backgroundImageView setImage:backgroundImage2];

  if (!backgroundImage)
  {
  }

  requestAppearance7 = [(AMSUIAccountMessageViewController *)self requestAppearance];
  footerButtonBackgroundColor = [requestAppearance7 footerButtonBackgroundColor];
  v35 = footerButtonBackgroundColor;
  if (footerButtonBackgroundColor)
  {
    footerButtonBackgroundColor2 = footerButtonBackgroundColor;
  }

  else
  {
    preferredAppearance6 = [(AMSUIAccountMessageViewController *)self preferredAppearance];
    footerButtonBackgroundColor2 = [preferredAppearance6 footerButtonBackgroundColor];
  }

  requestAppearance8 = [(AMSUIAccountMessageViewController *)self requestAppearance];
  footerButtonColor = [requestAppearance8 footerButtonColor];
  v40 = footerButtonColor;
  if (footerButtonColor)
  {
    footerButtonColor2 = footerButtonColor;
  }

  else
  {
    preferredAppearance7 = [(AMSUIAccountMessageViewController *)self preferredAppearance];
    footerButtonColor2 = [preferredAppearance7 footerButtonColor];
  }

  v64 = accessoryButtonColor2;
  v66 = v7;

  requestAppearance9 = [(AMSUIAccountMessageViewController *)self requestAppearance];
  footerButtonFont = [requestAppearance9 footerButtonFont];
  v45 = footerButtonFont;
  if (footerButtonFont)
  {
    footerButtonFont2 = footerButtonFont;
  }

  else
  {
    preferredAppearance8 = [(AMSUIAccountMessageViewController *)self preferredAppearance];
    footerButtonFont2 = [preferredAppearance8 footerButtonFont];
  }

  footerButtons = [_messageView footerButtons];
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v49 = [footerButtons countByEnumeratingWithState:&v67 objects:v72 count:16];
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
          objc_enumerationMutation(footerButtons);
        }

        v53 = *(*(&v67 + 1) + 8 * i);
        if (footerButtonColor2)
        {
          [*(*(&v67 + 1) + 8 * i) setPreferredForegroundColor:footerButtonColor2];
        }

        if (footerButtonFont2)
        {
          [v53 setPreferredFont:footerButtonFont2];
        }

        if (footerButtonBackgroundColor2)
        {
          [v53 setPreferredBackgroundColor:footerButtonBackgroundColor2];
        }
      }

      v50 = [footerButtons countByEnumeratingWithState:&v67 objects:v72 count:16];
    }

    while (v50);
  }

  requestAppearance10 = [(AMSUIAccountMessageViewController *)self requestAppearance];
  imageTintColor = [requestAppearance10 imageTintColor];
  if (imageTintColor)
  {
    imageTintColor2 = imageTintColor;

    v57 = v66;
LABEL_57:
    [_messageView setIconColor:imageTintColor2];

    goto LABEL_58;
  }

  preferredAppearance9 = [(AMSUIAccountMessageViewController *)self preferredAppearance];
  imageTintColor2 = [preferredAppearance9 imageTintColor];

  v57 = v66;
  if (imageTintColor2)
  {
    goto LABEL_57;
  }

LABEL_58:
  _loadedImage = [(AMSUIBaseMessageViewController *)self _loadedImage];

  if (_loadedImage)
  {
    _loadedImage2 = [(AMSUIBaseMessageViewController *)self _loadedImage];
    v61 = [_loadedImage2 ams_imageWithRenderingMode:{-[AMSUIAccountMessageViewController _primaryImageRenderingMode](self, "_primaryImageRenderingMode")}];
    imageView = [_messageView imageView];
    [imageView setImage:v61];
  }

  [(AMSUIBaseMessageViewController *)self _updateTextWithAttributes];

LABEL_61:
  v63 = *MEMORY[0x1E69E9840];
}

- (int64_t)_iconAnimationPlayCount
{
  iconAnimationPlayCount2 = 1;
  preferredAppearance = [(AMSUIAccountMessageViewController *)self preferredAppearance];
  if (preferredAppearance)
  {
    v5 = preferredAppearance;
    preferredAppearance2 = [(AMSUIAccountMessageViewController *)self preferredAppearance];
    iconAnimationPlayCount = [preferredAppearance2 iconAnimationPlayCount];

    if (iconAnimationPlayCount != -90)
    {
      preferredAppearance3 = [(AMSUIAccountMessageViewController *)self preferredAppearance];
      iconAnimationPlayCount2 = [preferredAppearance3 iconAnimationPlayCount];
    }
  }

  requestAppearance = [(AMSUIAccountMessageViewController *)self requestAppearance];
  if (requestAppearance)
  {
    v10 = requestAppearance;
    requestAppearance2 = [(AMSUIAccountMessageViewController *)self requestAppearance];
    iconAnimationPlayCount3 = [requestAppearance2 iconAnimationPlayCount];

    if (iconAnimationPlayCount3 != -90)
    {
      requestAppearance3 = [(AMSUIAccountMessageViewController *)self requestAppearance];
      iconAnimationPlayCount2 = [requestAppearance3 iconAnimationPlayCount];
    }
  }

  return iconAnimationPlayCount2;
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
  _defaultPreferredImageSymbolConfiguration = [(AMSUIAccountMessageViewController *)self _defaultPreferredImageSymbolConfiguration];
  preferredAppearance = [(AMSUIAccountMessageViewController *)self preferredAppearance];
  imageSymbolConfiguration = [preferredAppearance imageSymbolConfiguration];
  v6 = [_defaultPreferredImageSymbolConfiguration configurationByApplyingConfiguration:imageSymbolConfiguration];
  requestAppearance = [(AMSUIAccountMessageViewController *)self requestAppearance];
  imageSymbolConfiguration2 = [requestAppearance imageSymbolConfiguration];
  v9 = [v6 configurationByApplyingConfiguration:imageSymbolConfiguration2];

  return v9;
}

- (void)setPreferredAppearance:(id)appearance
{
  objc_storeStrong(&self->_preferredAppearance, appearance);

  [(AMSUIAccountMessageViewController *)self _commitAppearance];
}

@end