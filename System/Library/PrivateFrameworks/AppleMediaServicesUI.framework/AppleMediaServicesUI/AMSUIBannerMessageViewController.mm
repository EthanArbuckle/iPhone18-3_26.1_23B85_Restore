@interface AMSUIBannerMessageViewController
- (AMSUIBannerMessageViewController)initWithRequest:(id)request;
- (AMSUIBannerMessageViewController)initWithRequest:(id)request bag:(id)bag account:(id)account;
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

@implementation AMSUIBannerMessageViewController

- (AMSUIBannerMessageViewController)initWithRequest:(id)request
{
  requestCopy = request;
  v13.receiver = self;
  v13.super_class = AMSUIBannerMessageViewController;
  v5 = [(AMSUIBaseMessageViewController *)&v13 initWithRequest:requestCopy];
  if (v5)
  {
    v6 = objc_alloc_init(AMSUIBannerAppearance);
    preferredAppearance = v5->_preferredAppearance;
    v5->_preferredAppearance = v6;

    v8 = [AMSUIBannerAppearance alloc];
    appearanceInfo = [requestCopy appearanceInfo];
    v10 = [(AMSUIBannerAppearance *)v8 initWithDictionary:appearanceInfo];
    requestAppearance = v5->_requestAppearance;
    v5->_requestAppearance = v10;
  }

  return v5;
}

- (AMSUIBannerMessageViewController)initWithRequest:(id)request bag:(id)bag account:(id)account
{
  v6.receiver = self;
  v6.super_class = AMSUIBannerMessageViewController;
  return [(AMSUIBaseMessageViewController *)&v6 initWithRequest:request bag:bag account:account];
}

- (void)_setDialogRequest:(id)request
{
  v11.receiver = self;
  v11.super_class = AMSUIBannerMessageViewController;
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
  requestAppearance = [(AMSUIBannerMessageViewController *)self requestAppearance];
  _messageFontDictionary = [requestAppearance _messageFontDictionary];
  v7 = [AMSUIFontParser fontWithDictionary:_messageFontDictionary compatibleWith:withCopy];
  v8 = v7;
  if (v7)
  {
    messageFont = v7;
  }

  else
  {
    requestAppearance2 = [(AMSUIBannerMessageViewController *)self requestAppearance];
    messageFont = [requestAppearance2 messageFont];
  }

  if (!messageFont)
  {
    preferredAppearance = [(AMSUIBannerMessageViewController *)self preferredAppearance];
    _messageFontDictionary2 = [preferredAppearance _messageFontDictionary];
    v13 = [AMSUIFontParser fontWithDictionary:_messageFontDictionary2 compatibleWith:withCopy];
    v14 = v13;
    if (v13)
    {
      messageFont = v13;
    }

    else
    {
      preferredAppearance2 = [(AMSUIBannerMessageViewController *)self preferredAppearance];
      messageFont = [preferredAppearance2 messageFont];
    }
  }

  return messageFont;
}

- (id)_messageTextColor
{
  requestAppearance = [(AMSUIBannerMessageViewController *)self requestAppearance];
  messageTextColor = [requestAppearance messageTextColor];
  v5 = messageTextColor;
  if (messageTextColor)
  {
    messageTextColor2 = messageTextColor;
  }

  else
  {
    preferredAppearance = [(AMSUIBannerMessageViewController *)self preferredAppearance];
    messageTextColor2 = [preferredAppearance messageTextColor];
  }

  return messageTextColor2;
}

- (id)_titleFontCompatibleWith:(id)with
{
  withCopy = with;
  requestAppearance = [(AMSUIBannerMessageViewController *)self requestAppearance];
  _titleFontDictionary = [requestAppearance _titleFontDictionary];
  v7 = [AMSUIFontParser fontWithDictionary:_titleFontDictionary compatibleWith:withCopy];
  v8 = v7;
  if (v7)
  {
    titleFont = v7;
  }

  else
  {
    requestAppearance2 = [(AMSUIBannerMessageViewController *)self requestAppearance];
    titleFont = [requestAppearance2 titleFont];
  }

  if (!titleFont)
  {
    preferredAppearance = [(AMSUIBannerMessageViewController *)self preferredAppearance];
    _titleFontDictionary2 = [preferredAppearance _titleFontDictionary];
    v13 = [AMSUIFontParser fontWithDictionary:_titleFontDictionary2 compatibleWith:withCopy];
    v14 = v13;
    if (v13)
    {
      titleFont = v13;
    }

    else
    {
      preferredAppearance2 = [(AMSUIBannerMessageViewController *)self preferredAppearance];
      titleFont = [preferredAppearance2 titleFont];
    }
  }

  return titleFont;
}

- (id)_titleTextColor
{
  requestAppearance = [(AMSUIBannerMessageViewController *)self requestAppearance];
  titleTextColor = [requestAppearance titleTextColor];
  v5 = titleTextColor;
  if (titleTextColor)
  {
    titleTextColor2 = titleTextColor;
  }

  else
  {
    preferredAppearance = [(AMSUIBannerMessageViewController *)self preferredAppearance];
    titleTextColor2 = [preferredAppearance titleTextColor];
  }

  return titleTextColor2;
}

- (void)_commitAppearance
{
  v89 = *MEMORY[0x1E69E9840];
  v87.receiver = self;
  v87.super_class = AMSUIBannerMessageViewController;
  [(AMSUIBaseMessageViewController *)&v87 _commitAppearance];
  viewIfLoaded = [(AMSUIBannerMessageViewController *)self viewIfLoaded];

  if (!viewIfLoaded)
  {
    goto LABEL_81;
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

  requestAppearance = [(AMSUIBannerMessageViewController *)self requestAppearance];
  accessoryButtonBackgroundColor = [requestAppearance accessoryButtonBackgroundColor];
  v10 = accessoryButtonBackgroundColor;
  if (accessoryButtonBackgroundColor)
  {
    accessoryButtonBackgroundColor2 = accessoryButtonBackgroundColor;
  }

  else
  {
    preferredAppearance = [(AMSUIBannerMessageViewController *)self preferredAppearance];
    accessoryButtonBackgroundColor2 = [preferredAppearance accessoryButtonBackgroundColor];
  }

  if (v7 && accessoryButtonBackgroundColor2)
  {
    [v7 setPreferredBackgroundColor:accessoryButtonBackgroundColor2];
  }

  requestAppearance2 = [(AMSUIBannerMessageViewController *)self requestAppearance];
  accessoryButtonColor = [requestAppearance2 accessoryButtonColor];
  v15 = accessoryButtonColor;
  if (accessoryButtonColor)
  {
    accessoryButtonColor2 = accessoryButtonColor;
  }

  else
  {
    preferredAppearance2 = [(AMSUIBannerMessageViewController *)self preferredAppearance];
    accessoryButtonColor2 = [preferredAppearance2 accessoryButtonColor];
  }

  if (v7 && accessoryButtonColor2)
  {
    [v7 setPreferredForegroundColor:accessoryButtonColor2];
  }

  requestAppearance3 = [(AMSUIBannerMessageViewController *)self requestAppearance];
  accessoryButtonFont = [requestAppearance3 accessoryButtonFont];
  if (accessoryButtonFont)
  {
    accessoryButtonFont2 = accessoryButtonFont;
  }

  else
  {
    preferredAppearance3 = [(AMSUIBannerMessageViewController *)self preferredAppearance];
    accessoryButtonFont2 = [preferredAppearance3 accessoryButtonFont];

    if (!accessoryButtonFont2)
    {
      goto LABEL_21;
    }
  }

  [v7 setPreferredFont:accessoryButtonFont2];

LABEL_21:
  accessorySecondaryView = [_messageView accessorySecondaryView];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v23 = accessorySecondaryView;
  }

  else
  {
    v23 = 0;
  }

  requestAppearance4 = [(AMSUIBannerMessageViewController *)self requestAppearance];
  accessorySecondaryButtonBackgroundColor = [requestAppearance4 accessorySecondaryButtonBackgroundColor];
  v26 = accessorySecondaryButtonBackgroundColor;
  if (accessorySecondaryButtonBackgroundColor)
  {
    accessorySecondaryButtonBackgroundColor2 = accessorySecondaryButtonBackgroundColor;
  }

  else
  {
    preferredAppearance4 = [(AMSUIBannerMessageViewController *)self preferredAppearance];
    accessorySecondaryButtonBackgroundColor2 = [preferredAppearance4 accessorySecondaryButtonBackgroundColor];
  }

  if (v23 && accessorySecondaryButtonBackgroundColor2)
  {
    [v23 setPreferredBackgroundColor:accessorySecondaryButtonBackgroundColor2];
  }

  requestAppearance5 = [(AMSUIBannerMessageViewController *)self requestAppearance];
  accessorySecondaryButtonColor = [requestAppearance5 accessorySecondaryButtonColor];
  v30 = accessorySecondaryButtonColor;
  if (accessorySecondaryButtonColor)
  {
    accessorySecondaryButtonColor2 = accessorySecondaryButtonColor;
  }

  else
  {
    preferredAppearance4 = [(AMSUIBannerMessageViewController *)self preferredAppearance];
    accessorySecondaryButtonColor2 = [preferredAppearance4 accessorySecondaryButtonColor];
  }

  if (v23 && accessorySecondaryButtonColor2)
  {
    [v23 setPreferredForegroundColor:accessorySecondaryButtonColor2];
  }

  requestAppearance6 = [(AMSUIBannerMessageViewController *)self requestAppearance];
  accessorySecondaryButtonFont = [requestAppearance6 accessorySecondaryButtonFont];
  if (accessorySecondaryButtonFont)
  {
    accessorySecondaryButtonFont2 = accessorySecondaryButtonFont;
  }

  else
  {
    preferredAppearance4 = [(AMSUIBannerMessageViewController *)self preferredAppearance];
    accessorySecondaryButtonFont2 = [preferredAppearance4 accessorySecondaryButtonFont];

    if (!accessorySecondaryButtonFont2)
    {
      goto LABEL_40;
    }
  }

  [v23 setPreferredFont:accessorySecondaryButtonFont2];

LABEL_40:
  requestAppearance7 = [(AMSUIBannerMessageViewController *)self requestAppearance];
  backgroundColor = [requestAppearance7 backgroundColor];
  v80 = accessoryButtonBackgroundColor2;
  if (backgroundColor)
  {
    backgroundColor2 = backgroundColor;
  }

  else
  {
    preferredAppearance4 = [(AMSUIBannerMessageViewController *)self preferredAppearance];
    backgroundColor2 = [preferredAppearance4 backgroundColor];

    if (!backgroundColor2)
    {
      goto LABEL_44;
    }
  }

  [_messageView set_ams_backgroundColor:backgroundColor2];

LABEL_44:
  v81 = v7;
  requestAppearance8 = [(AMSUIBannerMessageViewController *)self requestAppearance];
  backgroundImage = [requestAppearance8 backgroundImage];
  backgroundImage2 = backgroundImage;
  if (!backgroundImage)
  {
    preferredAppearance4 = [(AMSUIBannerMessageViewController *)self preferredAppearance];
    backgroundImage2 = [preferredAppearance4 backgroundImage];
  }

  backgroundImageView = [_messageView backgroundImageView];
  [backgroundImageView setImage:backgroundImage2];

  if (!backgroundImage)
  {
  }

  requestAppearance9 = [(AMSUIBannerMessageViewController *)self requestAppearance];
  footerButtonBackgroundColor = [requestAppearance9 footerButtonBackgroundColor];
  v43 = footerButtonBackgroundColor;
  if (footerButtonBackgroundColor)
  {
    footerButtonBackgroundColor2 = footerButtonBackgroundColor;
  }

  else
  {
    preferredAppearance5 = [(AMSUIBannerMessageViewController *)self preferredAppearance];
    footerButtonBackgroundColor2 = [preferredAppearance5 footerButtonBackgroundColor];
  }

  v79 = accessoryButtonColor2;

  requestAppearance10 = [(AMSUIBannerMessageViewController *)self requestAppearance];
  footerButtonColor = [requestAppearance10 footerButtonColor];
  v48 = footerButtonColor;
  if (footerButtonColor)
  {
    footerButtonColor2 = footerButtonColor;
  }

  else
  {
    preferredAppearance6 = [(AMSUIBannerMessageViewController *)self preferredAppearance];
    footerButtonColor2 = [preferredAppearance6 footerButtonColor];
  }

  v76 = accessorySecondaryButtonBackgroundColor2;

  requestAppearance11 = [(AMSUIBannerMessageViewController *)self requestAppearance];
  footerButtonFont = [requestAppearance11 footerButtonFont];
  v53 = footerButtonFont;
  v78 = v23;
  if (footerButtonFont)
  {
    footerButtonFont2 = footerButtonFont;
  }

  else
  {
    preferredAppearance7 = [(AMSUIBannerMessageViewController *)self preferredAppearance];
    footerButtonFont2 = [preferredAppearance7 footerButtonFont];
  }

  footerButtons = [_messageView footerButtons];
  v83 = 0u;
  v84 = 0u;
  v85 = 0u;
  v86 = 0u;
  v57 = [footerButtons countByEnumeratingWithState:&v83 objects:v88 count:16];
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
          objc_enumerationMutation(footerButtons);
        }

        v61 = *(*(&v83 + 1) + 8 * i);
        if (footerButtonColor2)
        {
          [*(*(&v83 + 1) + 8 * i) setPreferredForegroundColor:footerButtonColor2];
        }

        if (footerButtonFont2)
        {
          [v61 setPreferredFont:footerButtonFont2];
        }

        if (footerButtonBackgroundColor2)
        {
          [v61 setPreferredBackgroundColor:footerButtonBackgroundColor2];
        }
      }

      v58 = [footerButtons countByEnumeratingWithState:&v83 objects:v88 count:16];
    }

    while (v58);
  }

  requestAppearance12 = [(AMSUIBannerMessageViewController *)self requestAppearance];
  imageTintColor = [requestAppearance12 imageTintColor];
  if (imageTintColor)
  {
    imageTintColor2 = imageTintColor;

    v65 = v77;
  }

  else
  {
    preferredAppearance8 = [(AMSUIBannerMessageViewController *)self preferredAppearance];
    imageTintColor2 = [preferredAppearance8 imageTintColor];

    v65 = v77;
    if (!imageTintColor2)
    {
      goto LABEL_74;
    }
  }

  [_messageView setIconColor:imageTintColor2];

LABEL_74:
  requestAppearance13 = [(AMSUIBannerMessageViewController *)self requestAppearance];
  separatorColor = [requestAppearance13 separatorColor];
  if (separatorColor)
  {
    separatorColor2 = separatorColor;

LABEL_77:
    [_messageView setSeparatorColor:separatorColor2];

    goto LABEL_78;
  }

  preferredAppearance9 = [(AMSUIBannerMessageViewController *)self preferredAppearance];
  separatorColor2 = [preferredAppearance9 separatorColor];

  if (separatorColor2)
  {
    goto LABEL_77;
  }

LABEL_78:
  _loadedImage = [(AMSUIBaseMessageViewController *)self _loadedImage];

  if (_loadedImage)
  {
    _loadedImage2 = [(AMSUIBaseMessageViewController *)self _loadedImage];
    v73 = [_loadedImage2 ams_imageWithRenderingMode:{-[AMSUIBannerMessageViewController _primaryImageRenderingMode](self, "_primaryImageRenderingMode")}];
    imageView = [_messageView imageView];
    [imageView setImage:v73];
  }

  [(AMSUIBaseMessageViewController *)self _updateTextWithAttributes];

LABEL_81:
  v75 = *MEMORY[0x1E69E9840];
}

- (int64_t)_iconAnimationPlayCount
{
  iconAnimationPlayCount2 = 1;
  preferredAppearance = [(AMSUIBannerMessageViewController *)self preferredAppearance];
  if (preferredAppearance)
  {
    v5 = preferredAppearance;
    preferredAppearance2 = [(AMSUIBannerMessageViewController *)self preferredAppearance];
    iconAnimationPlayCount = [preferredAppearance2 iconAnimationPlayCount];

    if (iconAnimationPlayCount != -90)
    {
      preferredAppearance3 = [(AMSUIBannerMessageViewController *)self preferredAppearance];
      iconAnimationPlayCount2 = [preferredAppearance3 iconAnimationPlayCount];
    }
  }

  requestAppearance = [(AMSUIBannerMessageViewController *)self requestAppearance];
  if (requestAppearance)
  {
    v10 = requestAppearance;
    requestAppearance2 = [(AMSUIBannerMessageViewController *)self requestAppearance];
    iconAnimationPlayCount3 = [requestAppearance2 iconAnimationPlayCount];

    if (iconAnimationPlayCount3 != -90)
    {
      requestAppearance3 = [(AMSUIBannerMessageViewController *)self requestAppearance];
      iconAnimationPlayCount2 = [requestAppearance3 iconAnimationPlayCount];
    }
  }

  return iconAnimationPlayCount2;
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
  _defaultPreferredImageSymbolConfiguration = [(AMSUIBannerMessageViewController *)self _defaultPreferredImageSymbolConfiguration];
  preferredAppearance = [(AMSUIBannerMessageViewController *)self preferredAppearance];
  imageSymbolConfiguration = [preferredAppearance imageSymbolConfiguration];
  v6 = [_defaultPreferredImageSymbolConfiguration configurationByApplyingConfiguration:imageSymbolConfiguration];
  requestAppearance = [(AMSUIBannerMessageViewController *)self requestAppearance];
  imageSymbolConfiguration2 = [requestAppearance imageSymbolConfiguration];
  v9 = [v6 configurationByApplyingConfiguration:imageSymbolConfiguration2];

  return v9;
}

- (void)setPreferredAppearance:(id)appearance
{
  objc_storeStrong(&self->_preferredAppearance, appearance);

  [(AMSUIBannerMessageViewController *)self _commitAppearance];
}

- (int64_t)_primaryImageRenderingMode
{
  preferredAppearance = [(AMSUIBannerMessageViewController *)self preferredAppearance];
  primaryImageRenderingMode = [preferredAppearance primaryImageRenderingMode];

  requestAppearance = [(AMSUIBannerMessageViewController *)self requestAppearance];
  primaryImageRenderingMode2 = [requestAppearance primaryImageRenderingMode];

  if (primaryImageRenderingMode2)
  {
    requestAppearance2 = [(AMSUIBannerMessageViewController *)self requestAppearance];
    primaryImageRenderingMode = [requestAppearance2 primaryImageRenderingMode];
  }

  return primaryImageRenderingMode;
}

@end