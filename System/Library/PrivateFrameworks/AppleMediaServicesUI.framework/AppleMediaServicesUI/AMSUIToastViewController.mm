@interface AMSUIToastViewController
- (AMSUIToastViewController)initWithRequest:(id)request;
- (AMSUIToastViewController)initWithRequest:(id)request bag:(id)bag account:(id)account;
- (id)_defaultPreferredImageSymbolConfiguration;
- (id)_effectiveImageSymbolConfiguration;
- (id)_messageFontCompatibleWith:(id)with;
- (id)_messageTextColor;
- (id)_titleFontCompatibleWith:(id)with;
- (id)_titleTextColor;
- (int64_t)_iconAnimationPlayCount;
- (int64_t)_primaryImageRenderingMode;
- (void)_commitAppearance;
- (void)_setDialogRequest:(id)request;
- (void)setPreferredAppearance:(id)appearance;
@end

@implementation AMSUIToastViewController

- (AMSUIToastViewController)initWithRequest:(id)request
{
  requestCopy = request;
  v16.receiver = self;
  v16.super_class = AMSUIToastViewController;
  v5 = [(AMSUIBaseMessageViewController *)&v16 initWithRequest:requestCopy];
  if (v5)
  {
    v6 = objc_alloc_init(AMSUIToastAppearance);
    preferredAppearance = v5->_preferredAppearance;
    v5->_preferredAppearance = v6;

    v8 = [AMSUIToastAppearance alloc];
    appearanceInfo = [requestCopy appearanceInfo];
    v10 = [(AMSUIToastAppearance *)v8 initWithDictionary:appearanceInfo];
    requestAppearance = v5->_requestAppearance;
    v5->_requestAppearance = v10;

    v12 = objc_alloc_init(AMSUIToastTransitioningDelegate);
    transitionDelegate = v5->_transitionDelegate;
    v5->_transitionDelegate = v12;

    [(AMSUIToastViewController *)v5 setModalPresentationStyle:4];
    transitionDelegate = [(AMSUIToastViewController *)v5 transitionDelegate];
    [(AMSUIToastViewController *)v5 setTransitioningDelegate:transitionDelegate];

    [(AMSUIToastViewController *)v5 setViewRespectsSystemMinimumLayoutMargins:0];
  }

  return v5;
}

- (AMSUIToastViewController)initWithRequest:(id)request bag:(id)bag account:(id)account
{
  v6.receiver = self;
  v6.super_class = AMSUIToastViewController;
  return [(AMSUIBaseMessageViewController *)&v6 initWithRequest:request bag:bag account:account];
}

- (void)_setDialogRequest:(id)request
{
  v11.receiver = self;
  v11.super_class = AMSUIToastViewController;
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

- (id)_messageFontCompatibleWith:(id)with
{
  withCopy = with;
  requestAppearance = [(AMSUIToastViewController *)self requestAppearance];
  _messageFontDictionary = [requestAppearance _messageFontDictionary];
  v7 = [AMSUIFontParser fontWithDictionary:_messageFontDictionary compatibleWith:withCopy];
  v8 = v7;
  if (v7)
  {
    messageFont = v7;
  }

  else
  {
    requestAppearance2 = [(AMSUIToastViewController *)self requestAppearance];
    messageFont = [requestAppearance2 messageFont];
  }

  if (!messageFont)
  {
    preferredAppearance = [(AMSUIToastViewController *)self preferredAppearance];
    _messageFontDictionary2 = [preferredAppearance _messageFontDictionary];
    v13 = [AMSUIFontParser fontWithDictionary:_messageFontDictionary2 compatibleWith:withCopy];
    v14 = v13;
    if (v13)
    {
      messageFont = v13;
    }

    else
    {
      preferredAppearance2 = [(AMSUIToastViewController *)self preferredAppearance];
      messageFont = [preferredAppearance2 messageFont];
    }
  }

  return messageFont;
}

- (id)_messageTextColor
{
  requestAppearance = [(AMSUIToastViewController *)self requestAppearance];
  messageTextColor = [requestAppearance messageTextColor];
  v5 = messageTextColor;
  if (messageTextColor)
  {
    messageTextColor2 = messageTextColor;
  }

  else
  {
    preferredAppearance = [(AMSUIToastViewController *)self preferredAppearance];
    messageTextColor2 = [preferredAppearance messageTextColor];
  }

  return messageTextColor2;
}

- (id)_titleFontCompatibleWith:(id)with
{
  withCopy = with;
  requestAppearance = [(AMSUIToastViewController *)self requestAppearance];
  _titleFontDictionary = [requestAppearance _titleFontDictionary];
  v7 = [AMSUIFontParser fontWithDictionary:_titleFontDictionary compatibleWith:withCopy];
  v8 = v7;
  if (v7)
  {
    titleFont = v7;
  }

  else
  {
    requestAppearance2 = [(AMSUIToastViewController *)self requestAppearance];
    titleFont = [requestAppearance2 titleFont];
  }

  if (!titleFont)
  {
    preferredAppearance = [(AMSUIToastViewController *)self preferredAppearance];
    _titleFontDictionary2 = [preferredAppearance _titleFontDictionary];
    v13 = [AMSUIFontParser fontWithDictionary:_titleFontDictionary2 compatibleWith:withCopy];
    v14 = v13;
    if (v13)
    {
      titleFont = v13;
    }

    else
    {
      preferredAppearance2 = [(AMSUIToastViewController *)self preferredAppearance];
      titleFont = [preferredAppearance2 titleFont];
    }
  }

  return titleFont;
}

- (id)_titleTextColor
{
  requestAppearance = [(AMSUIToastViewController *)self requestAppearance];
  titleTextColor = [requestAppearance titleTextColor];
  v5 = titleTextColor;
  if (titleTextColor)
  {
    titleTextColor2 = titleTextColor;
  }

  else
  {
    preferredAppearance = [(AMSUIToastViewController *)self preferredAppearance];
    titleTextColor2 = [preferredAppearance titleTextColor];
  }

  return titleTextColor2;
}

- (void)_commitAppearance
{
  v64 = *MEMORY[0x1E69E9840];
  v62.receiver = self;
  v62.super_class = AMSUIToastViewController;
  [(AMSUIBaseMessageViewController *)&v62 _commitAppearance];
  viewIfLoaded = [(AMSUIToastViewController *)self viewIfLoaded];

  if (!viewIfLoaded)
  {
    goto LABEL_57;
  }

  _messageView = [(AMSUIBaseMessageViewController *)self _messageView];
  accessoryView = [_messageView accessoryView];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = accessoryView;
  }

  else
  {
    v6 = 0;
  }

  requestAppearance = [(AMSUIToastViewController *)self requestAppearance];
  accessoryButtonBackgroundColor = [requestAppearance accessoryButtonBackgroundColor];
  v9 = accessoryButtonBackgroundColor;
  if (accessoryButtonBackgroundColor)
  {
    accessoryButtonBackgroundColor2 = accessoryButtonBackgroundColor;
  }

  else
  {
    preferredAppearance = [(AMSUIToastViewController *)self preferredAppearance];
    accessoryButtonBackgroundColor2 = [preferredAppearance accessoryButtonBackgroundColor];
  }

  if (v6 && accessoryButtonBackgroundColor2)
  {
    [v6 setPreferredBackgroundColor:accessoryButtonBackgroundColor2];
  }

  requestAppearance2 = [(AMSUIToastViewController *)self requestAppearance];
  accessoryButtonColor = [requestAppearance2 accessoryButtonColor];
  v14 = accessoryButtonColor;
  if (accessoryButtonColor)
  {
    accessoryButtonColor2 = accessoryButtonColor;
  }

  else
  {
    preferredAppearance2 = [(AMSUIToastViewController *)self preferredAppearance];
    accessoryButtonColor2 = [preferredAppearance2 accessoryButtonColor];
  }

  if (v6 && accessoryButtonColor2)
  {
    [v6 setPreferredForegroundColor:accessoryButtonColor2];
  }

  requestAppearance3 = [(AMSUIToastViewController *)self requestAppearance];
  accessoryButtonFont = [requestAppearance3 accessoryButtonFont];
  if (accessoryButtonFont)
  {
    accessoryButtonFont2 = accessoryButtonFont;
  }

  else
  {
    preferredAppearance3 = [(AMSUIToastViewController *)self preferredAppearance];
    accessoryButtonFont2 = [preferredAppearance3 accessoryButtonFont];

    if (!accessoryButtonFont2)
    {
      goto LABEL_21;
    }
  }

  [v6 setPreferredFont:accessoryButtonFont2];

LABEL_21:
  requestAppearance4 = [(AMSUIToastViewController *)self requestAppearance];
  backgroundColor = [requestAppearance4 backgroundColor];
  if (backgroundColor)
  {
    backgroundColor2 = backgroundColor;

LABEL_24:
    [_messageView set_ams_backgroundColor:backgroundColor2];

    goto LABEL_25;
  }

  preferredAppearance4 = [(AMSUIToastViewController *)self preferredAppearance];
  backgroundColor2 = [preferredAppearance4 backgroundColor];

  if (backgroundColor2)
  {
    goto LABEL_24;
  }

LABEL_25:
  if (_os_feature_enabled_impl() && _os_feature_enabled_impl())
  {
    v56 = accessoryButtonBackgroundColor2;
    requestAppearance5 = [(AMSUIToastViewController *)self requestAppearance];
    footerButtonBackgroundColor = [requestAppearance5 footerButtonBackgroundColor];
    v27 = footerButtonBackgroundColor;
    if (footerButtonBackgroundColor)
    {
      footerButtonBackgroundColor2 = footerButtonBackgroundColor;
    }

    else
    {
      preferredAppearance5 = [(AMSUIToastViewController *)self preferredAppearance];
      footerButtonBackgroundColor2 = [preferredAppearance5 footerButtonBackgroundColor];
    }

    requestAppearance6 = [(AMSUIToastViewController *)self requestAppearance];
    footerButtonColor = [requestAppearance6 footerButtonColor];
    v32 = footerButtonColor;
    if (footerButtonColor)
    {
      footerButtonColor2 = footerButtonColor;
    }

    else
    {
      preferredAppearance6 = [(AMSUIToastViewController *)self preferredAppearance];
      footerButtonColor2 = [preferredAppearance6 footerButtonColor];
    }

    v55 = accessoryButtonColor2;

    requestAppearance7 = [(AMSUIToastViewController *)self requestAppearance];
    footerButtonFont = [requestAppearance7 footerButtonFont];
    v37 = footerButtonFont;
    if (footerButtonFont)
    {
      footerButtonFont2 = footerButtonFont;
    }

    else
    {
      preferredAppearance7 = [(AMSUIToastViewController *)self preferredAppearance];
      footerButtonFont2 = [preferredAppearance7 footerButtonFont];
    }

    v57 = _messageView;
    footerButtons = [_messageView footerButtons];
    v58 = 0u;
    v59 = 0u;
    v60 = 0u;
    v61 = 0u;
    v41 = [footerButtons countByEnumeratingWithState:&v58 objects:v63 count:16];
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
            objc_enumerationMutation(footerButtons);
          }

          v45 = *(*(&v58 + 1) + 8 * i);
          if (footerButtonColor2)
          {
            [*(*(&v58 + 1) + 8 * i) setPreferredForegroundColor:footerButtonColor2];
          }

          if (footerButtonFont2)
          {
            [v45 setPreferredFont:footerButtonFont2];
          }

          if (footerButtonBackgroundColor2)
          {
            [v45 setPreferredBackgroundColor:footerButtonBackgroundColor2];
          }
        }

        v42 = [footerButtons countByEnumeratingWithState:&v58 objects:v63 count:16];
      }

      while (v42);
    }

    accessoryButtonBackgroundColor2 = v56;
    _messageView = v57;
    accessoryButtonColor2 = v55;
  }

  requestAppearance8 = [(AMSUIToastViewController *)self requestAppearance];
  imageTintColor = [requestAppearance8 imageTintColor];
  if (imageTintColor)
  {
    imageTintColor2 = imageTintColor;

LABEL_53:
    [_messageView setIconColor:imageTintColor2];

    goto LABEL_54;
  }

  preferredAppearance8 = [(AMSUIToastViewController *)self preferredAppearance];
  imageTintColor2 = [preferredAppearance8 imageTintColor];

  if (imageTintColor2)
  {
    goto LABEL_53;
  }

LABEL_54:
  _loadedImage = [(AMSUIBaseMessageViewController *)self _loadedImage];

  if (_loadedImage)
  {
    _loadedImage2 = [(AMSUIBaseMessageViewController *)self _loadedImage];
    v52 = [_loadedImage2 ams_imageWithRenderingMode:{-[AMSUIToastViewController _primaryImageRenderingMode](self, "_primaryImageRenderingMode")}];
    imageView = [_messageView imageView];
    [imageView setImage:v52];
  }

  [(AMSUIBaseMessageViewController *)self _updateTextWithAttributes];

LABEL_57:
  v54 = *MEMORY[0x1E69E9840];
}

- (int64_t)_iconAnimationPlayCount
{
  iconAnimationPlayCount2 = 1;
  preferredAppearance = [(AMSUIToastViewController *)self preferredAppearance];
  if (preferredAppearance)
  {
    v5 = preferredAppearance;
    preferredAppearance2 = [(AMSUIToastViewController *)self preferredAppearance];
    iconAnimationPlayCount = [preferredAppearance2 iconAnimationPlayCount];

    if (iconAnimationPlayCount != -90)
    {
      preferredAppearance3 = [(AMSUIToastViewController *)self preferredAppearance];
      iconAnimationPlayCount2 = [preferredAppearance3 iconAnimationPlayCount];
    }
  }

  requestAppearance = [(AMSUIToastViewController *)self requestAppearance];
  if (requestAppearance)
  {
    v10 = requestAppearance;
    requestAppearance2 = [(AMSUIToastViewController *)self requestAppearance];
    iconAnimationPlayCount3 = [requestAppearance2 iconAnimationPlayCount];

    if (iconAnimationPlayCount3 != -90)
    {
      requestAppearance3 = [(AMSUIToastViewController *)self requestAppearance];
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
    v4 = 0;
  }

  return v4;
}

- (id)_effectiveImageSymbolConfiguration
{
  _defaultPreferredImageSymbolConfiguration = [(AMSUIToastViewController *)self _defaultPreferredImageSymbolConfiguration];
  if (_defaultPreferredImageSymbolConfiguration)
  {
    imageSymbolConfiguration2 = _defaultPreferredImageSymbolConfiguration;
LABEL_4:
    requestAppearance = [(AMSUIToastViewController *)self requestAppearance];
    imageSymbolConfiguration = [requestAppearance imageSymbolConfiguration];
    imageSymbolConfiguration3 = [imageSymbolConfiguration2 configurationByApplyingConfiguration:imageSymbolConfiguration];

    goto LABEL_5;
  }

  preferredAppearance = [(AMSUIToastViewController *)self preferredAppearance];
  imageSymbolConfiguration2 = [preferredAppearance imageSymbolConfiguration];

  if (imageSymbolConfiguration2)
  {
    goto LABEL_4;
  }

  requestAppearance = [(AMSUIToastViewController *)self requestAppearance];
  imageSymbolConfiguration3 = [requestAppearance imageSymbolConfiguration];
LABEL_5:

  return imageSymbolConfiguration3;
}

- (void)setPreferredAppearance:(id)appearance
{
  objc_storeStrong(&self->_preferredAppearance, appearance);

  [(AMSUIToastViewController *)self _commitAppearance];
}

- (int64_t)_primaryImageRenderingMode
{
  preferredAppearance = [(AMSUIToastViewController *)self preferredAppearance];
  primaryImageRenderingMode = [preferredAppearance primaryImageRenderingMode];

  requestAppearance = [(AMSUIToastViewController *)self requestAppearance];
  primaryImageRenderingMode2 = [requestAppearance primaryImageRenderingMode];

  if (primaryImageRenderingMode2)
  {
    requestAppearance2 = [(AMSUIToastViewController *)self requestAppearance];
    primaryImageRenderingMode = [requestAppearance2 primaryImageRenderingMode];
  }

  return primaryImageRenderingMode;
}

@end