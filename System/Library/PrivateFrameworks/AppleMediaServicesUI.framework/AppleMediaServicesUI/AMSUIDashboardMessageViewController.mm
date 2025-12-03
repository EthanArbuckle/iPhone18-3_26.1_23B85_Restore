@interface AMSUIDashboardMessageViewController
- (AMSUIDashboardMessageViewController)initWithRequest:(id)request;
- (AMSUIDashboardMessageViewController)initWithRequest:(id)request bag:(id)bag account:(id)account;
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

@implementation AMSUIDashboardMessageViewController

- (AMSUIDashboardMessageViewController)initWithRequest:(id)request
{
  requestCopy = request;
  v13.receiver = self;
  v13.super_class = AMSUIDashboardMessageViewController;
  v5 = [(AMSUIBaseMessageViewController *)&v13 initWithRequest:requestCopy];
  if (v5)
  {
    v6 = objc_alloc_init(AMSUIDashboardMessageAppearance);
    preferredAppearance = v5->_preferredAppearance;
    v5->_preferredAppearance = v6;

    v8 = [AMSUIDashboardMessageAppearance alloc];
    appearanceInfo = [requestCopy appearanceInfo];
    v10 = [(AMSUIDashboardMessageAppearance *)v8 initWithDictionary:appearanceInfo];
    requestAppearance = v5->_requestAppearance;
    v5->_requestAppearance = v10;
  }

  return v5;
}

- (AMSUIDashboardMessageViewController)initWithRequest:(id)request bag:(id)bag account:(id)account
{
  v6.receiver = self;
  v6.super_class = AMSUIDashboardMessageViewController;
  return [(AMSUIBaseMessageViewController *)&v6 initWithRequest:request bag:bag account:account];
}

- (void)_setDialogRequest:(id)request
{
  requestCopy = request;
  v12.receiver = self;
  v12.super_class = AMSUIDashboardMessageViewController;
  [(AMSUIBaseMessageViewController *)&v12 _setDialogRequest:requestCopy];
  _messageView = [(AMSUIBaseMessageViewController *)self _messageView];
  defaultAction = [requestCopy defaultAction];
  if (defaultAction)
  {
    [_messageView setBodyDialogAction:defaultAction target:self action:sel__didTapActionButton_];
  }

  buttonActions = [requestCopy buttonActions];
  if (buttonActions)
  {
    v8 = buttonActions;
    buttonActions2 = [requestCopy buttonActions];
    v10 = [buttonActions2 count];

    if (v10)
    {
      buttonActions3 = [requestCopy buttonActions];
      [_messageView setButtonsForDialogActions:buttonActions3 target:self action:sel__didTapActionButton_];
    }
  }
}

- (id)_messageFontCompatibleWith:(id)with
{
  withCopy = with;
  requestAppearance = [(AMSUIDashboardMessageViewController *)self requestAppearance];
  _messageFontDictionary = [requestAppearance _messageFontDictionary];
  v7 = [AMSUIFontParser fontWithDictionary:_messageFontDictionary compatibleWith:withCopy];
  v8 = v7;
  if (v7)
  {
    messageFont = v7;
  }

  else
  {
    requestAppearance2 = [(AMSUIDashboardMessageViewController *)self requestAppearance];
    messageFont = [requestAppearance2 messageFont];
  }

  if (!messageFont)
  {
    preferredAppearance = [(AMSUIDashboardMessageViewController *)self preferredAppearance];
    _messageFontDictionary2 = [preferredAppearance _messageFontDictionary];
    v13 = [AMSUIFontParser fontWithDictionary:_messageFontDictionary2 compatibleWith:withCopy];
    v14 = v13;
    if (v13)
    {
      messageFont = v13;
    }

    else
    {
      preferredAppearance2 = [(AMSUIDashboardMessageViewController *)self preferredAppearance];
      messageFont = [preferredAppearance2 messageFont];
    }
  }

  return messageFont;
}

- (id)_messageTextColor
{
  requestAppearance = [(AMSUIDashboardMessageViewController *)self requestAppearance];
  messageTextColor = [requestAppearance messageTextColor];
  v5 = messageTextColor;
  if (messageTextColor)
  {
    messageTextColor2 = messageTextColor;
  }

  else
  {
    preferredAppearance = [(AMSUIDashboardMessageViewController *)self preferredAppearance];
    messageTextColor2 = [preferredAppearance messageTextColor];
  }

  return messageTextColor2;
}

- (id)_titleFontCompatibleWith:(id)with
{
  withCopy = with;
  requestAppearance = [(AMSUIDashboardMessageViewController *)self requestAppearance];
  _titleFontDictionary = [requestAppearance _titleFontDictionary];
  v7 = [AMSUIFontParser fontWithDictionary:_titleFontDictionary compatibleWith:withCopy];
  v8 = v7;
  if (v7)
  {
    titleFont = v7;
  }

  else
  {
    requestAppearance2 = [(AMSUIDashboardMessageViewController *)self requestAppearance];
    titleFont = [requestAppearance2 titleFont];
  }

  if (!titleFont)
  {
    preferredAppearance = [(AMSUIDashboardMessageViewController *)self preferredAppearance];
    _titleFontDictionary2 = [preferredAppearance _titleFontDictionary];
    v13 = [AMSUIFontParser fontWithDictionary:_titleFontDictionary2 compatibleWith:withCopy];
    v14 = v13;
    if (v13)
    {
      titleFont = v13;
    }

    else
    {
      preferredAppearance2 = [(AMSUIDashboardMessageViewController *)self preferredAppearance];
      titleFont = [preferredAppearance2 titleFont];
    }
  }

  return titleFont;
}

- (id)_titleTextColor
{
  requestAppearance = [(AMSUIDashboardMessageViewController *)self requestAppearance];
  titleTextColor = [requestAppearance titleTextColor];
  v5 = titleTextColor;
  if (titleTextColor)
  {
    titleTextColor2 = titleTextColor;
  }

  else
  {
    preferredAppearance = [(AMSUIDashboardMessageViewController *)self preferredAppearance];
    titleTextColor2 = [preferredAppearance titleTextColor];
  }

  return titleTextColor2;
}

- (void)_commitAppearance
{
  v74 = *MEMORY[0x1E69E9840];
  v72.receiver = self;
  v72.super_class = AMSUIDashboardMessageViewController;
  [(AMSUIBaseMessageViewController *)&v72 _commitAppearance];
  viewIfLoaded = [(AMSUIDashboardMessageViewController *)self viewIfLoaded];

  if (!viewIfLoaded)
  {
    goto LABEL_62;
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

  requestAppearance = [(AMSUIDashboardMessageViewController *)self requestAppearance];
  accessoryButtonBackgroundColor = [requestAppearance accessoryButtonBackgroundColor];
  v10 = accessoryButtonBackgroundColor;
  if (accessoryButtonBackgroundColor)
  {
    accessoryButtonBackgroundColor2 = accessoryButtonBackgroundColor;
  }

  else
  {
    preferredAppearance = [(AMSUIDashboardMessageViewController *)self preferredAppearance];
    accessoryButtonBackgroundColor2 = [preferredAppearance accessoryButtonBackgroundColor];
  }

  if (v7 && accessoryButtonBackgroundColor2)
  {
    [v7 setPreferredBackgroundColor:accessoryButtonBackgroundColor2];
  }

  v66 = accessoryButtonBackgroundColor2;
  requestAppearance2 = [(AMSUIDashboardMessageViewController *)self requestAppearance];
  accessoryButtonColor = [requestAppearance2 accessoryButtonColor];
  v15 = accessoryButtonColor;
  if (accessoryButtonColor)
  {
    accessoryButtonColor2 = accessoryButtonColor;
  }

  else
  {
    preferredAppearance2 = [(AMSUIDashboardMessageViewController *)self preferredAppearance];
    accessoryButtonColor2 = [preferredAppearance2 accessoryButtonColor];
  }

  if (v7 && accessoryButtonColor2)
  {
    [v7 setPreferredForegroundColor:accessoryButtonColor2];
  }

  requestAppearance3 = [(AMSUIDashboardMessageViewController *)self requestAppearance];
  accessoryButtonFont = [requestAppearance3 accessoryButtonFont];
  if (accessoryButtonFont)
  {
    accessoryButtonFont2 = accessoryButtonFont;
  }

  else
  {
    preferredAppearance3 = [(AMSUIDashboardMessageViewController *)self preferredAppearance];
    accessoryButtonFont2 = [preferredAppearance3 accessoryButtonFont];

    if (!accessoryButtonFont2)
    {
      goto LABEL_21;
    }
  }

  [v7 setPreferredFont:accessoryButtonFont2];

LABEL_21:
  requestAppearance4 = [(AMSUIDashboardMessageViewController *)self requestAppearance];
  backgroundColor = [requestAppearance4 backgroundColor];
  v65 = accessoryButtonColor2;
  if (backgroundColor)
  {
    backgroundColor2 = backgroundColor;
  }

  else
  {
    preferredAppearance4 = [(AMSUIDashboardMessageViewController *)self preferredAppearance];
    backgroundColor2 = [preferredAppearance4 backgroundColor];

    if (!backgroundColor2)
    {
      goto LABEL_25;
    }
  }

  [_messageView set_ams_backgroundColor:backgroundColor2];

LABEL_25:
  requestAppearance5 = [(AMSUIDashboardMessageViewController *)self requestAppearance];
  backgroundImage = [requestAppearance5 backgroundImage];
  backgroundImage2 = backgroundImage;
  if (!backgroundImage)
  {
    preferredAppearance5 = [(AMSUIDashboardMessageViewController *)self preferredAppearance];
    backgroundImage2 = [preferredAppearance5 backgroundImage];
  }

  backgroundImageView = [_messageView backgroundImageView];
  [backgroundImageView setImage:backgroundImage2];

  if (!backgroundImage)
  {
  }

  requestAppearance6 = [(AMSUIDashboardMessageViewController *)self requestAppearance];
  footerButtonBackgroundColor = [requestAppearance6 footerButtonBackgroundColor];
  v32 = footerButtonBackgroundColor;
  if (footerButtonBackgroundColor)
  {
    footerButtonBackgroundColor2 = footerButtonBackgroundColor;
  }

  else
  {
    preferredAppearance6 = [(AMSUIDashboardMessageViewController *)self preferredAppearance];
    footerButtonBackgroundColor2 = [preferredAppearance6 footerButtonBackgroundColor];
  }

  requestAppearance7 = [(AMSUIDashboardMessageViewController *)self requestAppearance];
  footerButtonColor = [requestAppearance7 footerButtonColor];
  v37 = footerButtonColor;
  if (footerButtonColor)
  {
    footerButtonColor2 = footerButtonColor;
  }

  else
  {
    preferredAppearance7 = [(AMSUIDashboardMessageViewController *)self preferredAppearance];
    footerButtonColor2 = [preferredAppearance7 footerButtonColor];
  }

  v67 = v7;

  requestAppearance8 = [(AMSUIDashboardMessageViewController *)self requestAppearance];
  footerButtonFont = [requestAppearance8 footerButtonFont];
  v42 = footerButtonFont;
  if (footerButtonFont)
  {
    footerButtonFont2 = footerButtonFont;
  }

  else
  {
    preferredAppearance8 = [(AMSUIDashboardMessageViewController *)self preferredAppearance];
    footerButtonFont2 = [preferredAppearance8 footerButtonFont];
  }

  footerButtons = [_messageView footerButtons];
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v46 = [footerButtons countByEnumeratingWithState:&v68 objects:v73 count:16];
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
          objc_enumerationMutation(footerButtons);
        }

        v50 = *(*(&v68 + 1) + 8 * i);
        if (footerButtonColor2)
        {
          [*(*(&v68 + 1) + 8 * i) setPreferredForegroundColor:footerButtonColor2];
        }

        if (footerButtonFont2)
        {
          [v50 setPreferredFont:footerButtonFont2];
        }

        if (footerButtonBackgroundColor2)
        {
          [v50 setPreferredBackgroundColor:footerButtonBackgroundColor2];
        }
      }

      v47 = [footerButtons countByEnumeratingWithState:&v68 objects:v73 count:16];
    }

    while (v47);
  }

  requestAppearance9 = [(AMSUIDashboardMessageViewController *)self requestAppearance];
  imageTintColor = [requestAppearance9 imageTintColor];
  if (imageTintColor)
  {
    imageTintColor2 = imageTintColor;

    v54 = v67;
  }

  else
  {
    preferredAppearance9 = [(AMSUIDashboardMessageViewController *)self preferredAppearance];
    imageTintColor2 = [preferredAppearance9 imageTintColor];

    v54 = v67;
    if (!imageTintColor2)
    {
      goto LABEL_55;
    }
  }

  [_messageView setIconColor:imageTintColor2];

LABEL_55:
  requestAppearance10 = [(AMSUIDashboardMessageViewController *)self requestAppearance];
  separatorColor = [requestAppearance10 separatorColor];
  if (separatorColor)
  {
    separatorColor2 = separatorColor;

LABEL_58:
    [_messageView setSeparatorColor:separatorColor2];

    goto LABEL_59;
  }

  preferredAppearance10 = [(AMSUIDashboardMessageViewController *)self preferredAppearance];
  separatorColor2 = [preferredAppearance10 separatorColor];

  if (separatorColor2)
  {
    goto LABEL_58;
  }

LABEL_59:
  _loadedImage = [(AMSUIBaseMessageViewController *)self _loadedImage];

  if (_loadedImage)
  {
    _loadedImage2 = [(AMSUIBaseMessageViewController *)self _loadedImage];
    v62 = [_loadedImage2 ams_imageWithRenderingMode:{-[AMSUIDashboardMessageViewController _primaryImageRenderingMode](self, "_primaryImageRenderingMode")}];
    imageView = [_messageView imageView];
    [imageView setImage:v62];
  }

  [(AMSUIBaseMessageViewController *)self _updateTextWithAttributes];

LABEL_62:
  v64 = *MEMORY[0x1E69E9840];
}

- (int64_t)_iconAnimationPlayCount
{
  iconAnimationPlayCount2 = 1;
  preferredAppearance = [(AMSUIDashboardMessageViewController *)self preferredAppearance];
  if (preferredAppearance)
  {
    v5 = preferredAppearance;
    preferredAppearance2 = [(AMSUIDashboardMessageViewController *)self preferredAppearance];
    iconAnimationPlayCount = [preferredAppearance2 iconAnimationPlayCount];

    if (iconAnimationPlayCount != -90)
    {
      preferredAppearance3 = [(AMSUIDashboardMessageViewController *)self preferredAppearance];
      iconAnimationPlayCount2 = [preferredAppearance3 iconAnimationPlayCount];
    }
  }

  requestAppearance = [(AMSUIDashboardMessageViewController *)self requestAppearance];
  if (requestAppearance)
  {
    v10 = requestAppearance;
    requestAppearance2 = [(AMSUIDashboardMessageViewController *)self requestAppearance];
    iconAnimationPlayCount3 = [requestAppearance2 iconAnimationPlayCount];

    if (iconAnimationPlayCount3 != -90)
    {
      requestAppearance3 = [(AMSUIDashboardMessageViewController *)self requestAppearance];
      iconAnimationPlayCount2 = [requestAppearance3 iconAnimationPlayCount];
    }
  }

  return iconAnimationPlayCount2;
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
  _defaultPreferredImageSymbolConfiguration = [(AMSUIDashboardMessageViewController *)self _defaultPreferredImageSymbolConfiguration];
  preferredAppearance = [(AMSUIDashboardMessageViewController *)self preferredAppearance];
  imageSymbolConfiguration = [preferredAppearance imageSymbolConfiguration];
  v6 = [_defaultPreferredImageSymbolConfiguration configurationByApplyingConfiguration:imageSymbolConfiguration];
  requestAppearance = [(AMSUIDashboardMessageViewController *)self requestAppearance];
  imageSymbolConfiguration2 = [requestAppearance imageSymbolConfiguration];
  v9 = [v6 configurationByApplyingConfiguration:imageSymbolConfiguration2];

  return v9;
}

- (void)setPreferredAppearance:(id)appearance
{
  objc_storeStrong(&self->_preferredAppearance, appearance);

  [(AMSUIDashboardMessageViewController *)self _commitAppearance];
}

- (int64_t)_primaryImageRenderingMode
{
  preferredAppearance = [(AMSUIDashboardMessageViewController *)self preferredAppearance];
  primaryImageRenderingMode = [preferredAppearance primaryImageRenderingMode];

  requestAppearance = [(AMSUIDashboardMessageViewController *)self requestAppearance];
  primaryImageRenderingMode2 = [requestAppearance primaryImageRenderingMode];

  if (primaryImageRenderingMode2)
  {
    requestAppearance2 = [(AMSUIDashboardMessageViewController *)self requestAppearance];
    primaryImageRenderingMode = [requestAppearance2 primaryImageRenderingMode];
  }

  return primaryImageRenderingMode;
}

@end