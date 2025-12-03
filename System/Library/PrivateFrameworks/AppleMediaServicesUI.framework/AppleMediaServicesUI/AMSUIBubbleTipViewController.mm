@interface AMSUIBubbleTipViewController
- (AMSUIBubbleTipViewController)initWithRequest:(id)request;
- (AMSUIBubbleTipViewController)initWithRequest:(id)request bag:(id)bag account:(id)account;
- (CGPoint)anchorPoint;
- (CGSize)preferredContentSize;
- (id)_defaultPreferredImageSymbolConfiguration;
- (id)_effectiveImageSymbolConfiguration;
- (id)_messageFontCompatibleWith:(id)with;
- (id)_messageTextColor;
- (id)_titleFontCompatibleWith:(id)with;
- (id)_titleTextColor;
- (int64_t)_iconAnimationPlayCount;
- (int64_t)_primaryImageRenderingMode;
- (unint64_t)_messageStyle;
- (unint64_t)directionForAMSUIPopoverArrowDirection:(unint64_t)direction;
- (void)_commitAppearance;
- (void)_preferredContentSizeCategoryDidChange:(id)change;
- (void)_setDialogRequest:(id)request;
- (void)_transferBackgroundColorForPopover;
- (void)_updateArrowProperties;
- (void)_updateSelfSizedContentSize;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)setInlineAnchorInfo:(id)info;
- (void)setModalPresentationStyle:(int64_t)style;
- (void)setPreferredAppearance:(id)appearance;
- (void)setPreferredContentSize:(CGSize)size;
- (void)viewDidLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation AMSUIBubbleTipViewController

- (AMSUIBubbleTipViewController)initWithRequest:(id)request
{
  requestCopy = request;
  v13.receiver = self;
  v13.super_class = AMSUIBubbleTipViewController;
  v5 = [(AMSUIBaseMessageViewController *)&v13 initWithRequest:requestCopy];
  if (v5)
  {
    v6 = objc_alloc_init(AMSUIBubbleTipAppearance);
    preferredAppearance = v5->_preferredAppearance;
    v5->_preferredAppearance = v6;

    v8 = [AMSUIBubbleTipAppearance alloc];
    appearanceInfo = [requestCopy appearanceInfo];
    v10 = [(AMSUIBubbleTipAppearance *)v8 initWithDictionary:appearanceInfo];
    requestAppearance = v5->_requestAppearance;
    v5->_requestAppearance = v10;

    v5->_isSelfSizing = 1;
    [(AMSUIBubbleTipViewController *)v5 _startObservations];
  }

  return v5;
}

- (AMSUIBubbleTipViewController)initWithRequest:(id)request bag:(id)bag account:(id)account
{
  v6.receiver = self;
  v6.super_class = AMSUIBubbleTipViewController;
  return [(AMSUIBaseMessageViewController *)&v6 initWithRequest:request bag:bag account:account];
}

- (void)dealloc
{
  [(AMSUIBubbleTipViewController *)self _endObservations];
  v3.receiver = self;
  v3.super_class = AMSUIBubbleTipViewController;
  [(AMSUIBubbleTipViewController *)&v3 dealloc];
}

- (void)setModalPresentationStyle:(int64_t)style
{
  v6.receiver = self;
  v6.super_class = AMSUIBubbleTipViewController;
  [(AMSUIBubbleTipViewController *)&v6 setModalPresentationStyle:?];
  if (style == 7)
  {
    popoverPresentationController = [(AMSUIBubbleTipViewController *)self popoverPresentationController];
    [popoverPresentationController _setPrefersZoomTransitions:0];
  }
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = AMSUIBubbleTipViewController;
  [(AMSUIBubbleTipViewController *)&v3 viewDidLayoutSubviews];
  [(AMSUIBubbleTipViewController *)self _updateArrowProperties];
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v9.receiver = self;
  v9.super_class = AMSUIBubbleTipViewController;
  coordinatorCopy = coordinator;
  [(AMSUIBubbleTipViewController *)&v9 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __83__AMSUIBubbleTipViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v8[3] = &unk_1E7F247A8;
  v8[4] = self;
  [coordinatorCopy animateAlongsideTransition:v8 completion:0];
}

- (void)_preferredContentSizeCategoryDidChange:(id)change
{
  [(AMSUIBaseMessageViewController *)self _updateTextWithAttributes:change];
  [(AMSUIBubbleTipViewController *)self updateTraitsIfNeeded];

  [(AMSUIBubbleTipViewController *)self _updateSelfSizedContentSize];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if (object == self)
  {
    if ([path isEqualToString:@"modalPresentationStyle"])
    {
      _messageStyle = [(AMSUIBubbleTipViewController *)self _messageStyle];
      viewIfLoaded = [(AMSUIBubbleTipViewController *)self viewIfLoaded];
      if (viewIfLoaded)
      {
        v9 = viewIfLoaded;
        _messageView = [(AMSUIBaseMessageViewController *)self _messageView];
        style = [_messageView style];

        if (style != _messageStyle)
        {
          _messageView2 = [(AMSUIBaseMessageViewController *)self _messageView];
          [_messageView2 setStyle:_messageStyle];

          _messageView3 = [(AMSUIBaseMessageViewController *)self _messageView];
          [_messageView3 setNeedsLayout];
        }
      }
    }
  }
}

- (void)_setDialogRequest:(id)request
{
  v25 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  v23.receiver = self;
  v23.super_class = AMSUIBubbleTipViewController;
  [(AMSUIBaseMessageViewController *)&v23 _setDialogRequest:requestCopy];
  _messageView = [(AMSUIBaseMessageViewController *)self _messageView];
  buttonActions = [requestCopy buttonActions];
  dialogRequest = [(AMSUIBaseMessageViewController *)self dialogRequest];
  if ([dialogRequest style] == 8)
  {
    v8 = [buttonActions count];

    if (v8 < 2)
    {
      goto LABEL_17;
    }

    dialogRequest = [MEMORY[0x1E695DF70] array];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    buttonActions = buttonActions;
    v9 = [buttonActions countByEnumeratingWithState:&v19 objects:v24 count:16];
    v10 = buttonActions;
    if (v9)
    {
      v11 = v9;
      v12 = 0;
      v13 = *v20;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v20 != v13)
          {
            objc_enumerationMutation(buttonActions);
          }

          v15 = *(*(&v19 + 1) + 8 * i);
          style = [v15 style];
          if (((style != 2) & v12) != 0)
          {
            v12 = 1;
          }

          else
          {
            v12 |= style != 2;
            [dialogRequest addObject:v15];
          }
        }

        v11 = [buttonActions countByEnumeratingWithState:&v19 objects:v24 count:16];
      }

      while (v11);

      if ((v12 & 1) == 0)
      {
        goto LABEL_16;
      }

      v10 = dialogRequest;
    }

    buttonActions = v10;
  }

LABEL_16:

LABEL_17:
  defaultAction = [requestCopy defaultAction];
  if (defaultAction)
  {
    [_messageView setBodyDialogAction:defaultAction target:self action:sel__didTapActionButton_];
  }

  if (buttonActions && [buttonActions count])
  {
    [_messageView setButtonsForDialogActions:buttonActions target:self action:sel__didTapActionButton_];
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (id)_messageFontCompatibleWith:(id)with
{
  withCopy = with;
  requestAppearance = [(AMSUIBubbleTipViewController *)self requestAppearance];
  _messageFontDictionary = [requestAppearance _messageFontDictionary];
  v7 = [AMSUIFontParser fontWithDictionary:_messageFontDictionary compatibleWith:withCopy];
  v8 = v7;
  if (v7)
  {
    messageFont = v7;
  }

  else
  {
    requestAppearance2 = [(AMSUIBubbleTipViewController *)self requestAppearance];
    messageFont = [requestAppearance2 messageFont];
  }

  if (!messageFont)
  {
    preferredAppearance = [(AMSUIBubbleTipViewController *)self preferredAppearance];
    _messageFontDictionary2 = [preferredAppearance _messageFontDictionary];
    v13 = [AMSUIFontParser fontWithDictionary:_messageFontDictionary2 compatibleWith:withCopy];
    v14 = v13;
    if (v13)
    {
      messageFont = v13;
    }

    else
    {
      preferredAppearance2 = [(AMSUIBubbleTipViewController *)self preferredAppearance];
      messageFont = [preferredAppearance2 messageFont];
    }
  }

  return messageFont;
}

- (id)_messageTextColor
{
  requestAppearance = [(AMSUIBubbleTipViewController *)self requestAppearance];
  messageTextColor = [requestAppearance messageTextColor];
  v5 = messageTextColor;
  if (messageTextColor)
  {
    messageTextColor2 = messageTextColor;
  }

  else
  {
    preferredAppearance = [(AMSUIBubbleTipViewController *)self preferredAppearance];
    messageTextColor2 = [preferredAppearance messageTextColor];
  }

  return messageTextColor2;
}

- (id)_titleFontCompatibleWith:(id)with
{
  withCopy = with;
  requestAppearance = [(AMSUIBubbleTipViewController *)self requestAppearance];
  _titleFontDictionary = [requestAppearance _titleFontDictionary];
  v7 = [AMSUIFontParser fontWithDictionary:_titleFontDictionary compatibleWith:withCopy];
  v8 = v7;
  if (v7)
  {
    titleFont = v7;
  }

  else
  {
    requestAppearance2 = [(AMSUIBubbleTipViewController *)self requestAppearance];
    titleFont = [requestAppearance2 titleFont];
  }

  if (!titleFont)
  {
    preferredAppearance = [(AMSUIBubbleTipViewController *)self preferredAppearance];
    _titleFontDictionary2 = [preferredAppearance _titleFontDictionary];
    v13 = [AMSUIFontParser fontWithDictionary:_titleFontDictionary2 compatibleWith:withCopy];
    v14 = v13;
    if (v13)
    {
      titleFont = v13;
    }

    else
    {
      preferredAppearance2 = [(AMSUIBubbleTipViewController *)self preferredAppearance];
      titleFont = [preferredAppearance2 titleFont];
    }
  }

  return titleFont;
}

- (id)_titleTextColor
{
  requestAppearance = [(AMSUIBubbleTipViewController *)self requestAppearance];
  titleTextColor = [requestAppearance titleTextColor];
  v5 = titleTextColor;
  if (titleTextColor)
  {
    titleTextColor2 = titleTextColor;
  }

  else
  {
    preferredAppearance = [(AMSUIBubbleTipViewController *)self preferredAppearance];
    titleTextColor2 = [preferredAppearance titleTextColor];
  }

  return titleTextColor2;
}

- (void)_commitAppearance
{
  v77 = *MEMORY[0x1E69E9840];
  v75.receiver = self;
  v75.super_class = AMSUIBubbleTipViewController;
  [(AMSUIBaseMessageViewController *)&v75 _commitAppearance];
  viewIfLoaded = [(AMSUIBubbleTipViewController *)self viewIfLoaded];

  if (!viewIfLoaded)
  {
    goto LABEL_65;
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

  requestAppearance = [(AMSUIBubbleTipViewController *)self requestAppearance];
  accessoryButtonBackgroundColor = [requestAppearance accessoryButtonBackgroundColor];
  v10 = accessoryButtonBackgroundColor;
  if (accessoryButtonBackgroundColor)
  {
    accessoryButtonBackgroundColor2 = accessoryButtonBackgroundColor;
  }

  else
  {
    preferredAppearance = [(AMSUIBubbleTipViewController *)self preferredAppearance];
    accessoryButtonBackgroundColor2 = [preferredAppearance accessoryButtonBackgroundColor];
  }

  if (v7 && accessoryButtonBackgroundColor2)
  {
    [v7 setPreferredBackgroundColor:accessoryButtonBackgroundColor2];
  }

  v69 = accessoryButtonBackgroundColor2;
  requestAppearance2 = [(AMSUIBubbleTipViewController *)self requestAppearance];
  accessoryButtonColor = [requestAppearance2 accessoryButtonColor];
  v15 = accessoryButtonColor;
  if (accessoryButtonColor)
  {
    accessoryButtonColor2 = accessoryButtonColor;
  }

  else
  {
    preferredAppearance2 = [(AMSUIBubbleTipViewController *)self preferredAppearance];
    accessoryButtonColor2 = [preferredAppearance2 accessoryButtonColor];
  }

  if (v7 && accessoryButtonColor2)
  {
    [v7 setPreferredForegroundColor:accessoryButtonColor2];
  }

  requestAppearance3 = [(AMSUIBubbleTipViewController *)self requestAppearance];
  accessoryButtonFont = [requestAppearance3 accessoryButtonFont];
  if (accessoryButtonFont)
  {
    accessoryButtonFont2 = accessoryButtonFont;
  }

  else
  {
    preferredAppearance3 = [(AMSUIBubbleTipViewController *)self preferredAppearance];
    accessoryButtonFont2 = [preferredAppearance3 accessoryButtonFont];

    if (!accessoryButtonFont2)
    {
      goto LABEL_21;
    }
  }

  [v7 setPreferredFont:accessoryButtonFont2];

LABEL_21:
  requestAppearance4 = [(AMSUIBubbleTipViewController *)self requestAppearance];
  imageStyle = [requestAppearance4 imageStyle];

  if (imageStyle)
  {
    [(AMSUIBubbleTipViewController *)self requestAppearance];
  }

  else
  {
    [(AMSUIBubbleTipViewController *)self preferredAppearance];
  }
  v24 = ;
  [_messageView setImageStyle:{objc_msgSend(v24, "imageStyle")}];

  requestAppearance5 = [(AMSUIBubbleTipViewController *)self requestAppearance];
  backgroundColor = [requestAppearance5 backgroundColor];
  v68 = accessoryButtonColor2;
  if (backgroundColor)
  {
    backgroundColor2 = backgroundColor;
  }

  else
  {
    preferredAppearance4 = [(AMSUIBubbleTipViewController *)self preferredAppearance];
    backgroundColor2 = [preferredAppearance4 backgroundColor];

    if (!backgroundColor2)
    {
      goto LABEL_28;
    }
  }

  [_messageView set_ams_backgroundColor:backgroundColor2];
  [(AMSUIBubbleTipViewController *)self _transferBackgroundColorForPopover];

LABEL_28:
  requestAppearance6 = [(AMSUIBubbleTipViewController *)self requestAppearance];
  backgroundImage = [requestAppearance6 backgroundImage];
  backgroundImage2 = backgroundImage;
  if (!backgroundImage)
  {
    preferredAppearance5 = [(AMSUIBubbleTipViewController *)self preferredAppearance];
    backgroundImage2 = [preferredAppearance5 backgroundImage];
  }

  backgroundImageView = [_messageView backgroundImageView];
  [backgroundImageView setImage:backgroundImage2];

  if (!backgroundImage)
  {
  }

  requestAppearance7 = [(AMSUIBubbleTipViewController *)self requestAppearance];
  footerButtonBackgroundColor = [requestAppearance7 footerButtonBackgroundColor];
  v35 = footerButtonBackgroundColor;
  if (footerButtonBackgroundColor)
  {
    footerButtonBackgroundColor2 = footerButtonBackgroundColor;
  }

  else
  {
    preferredAppearance6 = [(AMSUIBubbleTipViewController *)self preferredAppearance];
    footerButtonBackgroundColor2 = [preferredAppearance6 footerButtonBackgroundColor];
  }

  requestAppearance8 = [(AMSUIBubbleTipViewController *)self requestAppearance];
  footerButtonColor = [requestAppearance8 footerButtonColor];
  v40 = footerButtonColor;
  if (footerButtonColor)
  {
    footerButtonColor2 = footerButtonColor;
  }

  else
  {
    preferredAppearance7 = [(AMSUIBubbleTipViewController *)self preferredAppearance];
    footerButtonColor2 = [preferredAppearance7 footerButtonColor];
  }

  v70 = v7;

  requestAppearance9 = [(AMSUIBubbleTipViewController *)self requestAppearance];
  footerButtonFont = [requestAppearance9 footerButtonFont];
  v45 = footerButtonFont;
  if (footerButtonFont)
  {
    footerButtonFont2 = footerButtonFont;
  }

  else
  {
    preferredAppearance8 = [(AMSUIBubbleTipViewController *)self preferredAppearance];
    footerButtonFont2 = [preferredAppearance8 footerButtonFont];
  }

  footerButtons = [_messageView footerButtons];
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  v49 = [footerButtons countByEnumeratingWithState:&v71 objects:v76 count:16];
  if (v49)
  {
    v50 = v49;
    v51 = *v72;
    do
    {
      for (i = 0; i != v50; ++i)
      {
        if (*v72 != v51)
        {
          objc_enumerationMutation(footerButtons);
        }

        v53 = *(*(&v71 + 1) + 8 * i);
        if (footerButtonColor2)
        {
          [*(*(&v71 + 1) + 8 * i) setPreferredForegroundColor:footerButtonColor2];
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

      v50 = [footerButtons countByEnumeratingWithState:&v71 objects:v76 count:16];
    }

    while (v50);
  }

  requestAppearance10 = [(AMSUIBubbleTipViewController *)self requestAppearance];
  imageTintColor = [requestAppearance10 imageTintColor];
  if (imageTintColor)
  {
    imageTintColor2 = imageTintColor;

    v57 = v70;
  }

  else
  {
    preferredAppearance9 = [(AMSUIBubbleTipViewController *)self preferredAppearance];
    imageTintColor2 = [preferredAppearance9 imageTintColor];

    v57 = v70;
    if (!imageTintColor2)
    {
      goto LABEL_58;
    }
  }

  [_messageView setIconColor:imageTintColor2];

LABEL_58:
  requestAppearance11 = [(AMSUIBubbleTipViewController *)self requestAppearance];
  separatorColor = [requestAppearance11 separatorColor];
  if (separatorColor)
  {
    separatorColor2 = separatorColor;

LABEL_61:
    [_messageView setSeparatorColor:separatorColor2];

    goto LABEL_62;
  }

  preferredAppearance10 = [(AMSUIBubbleTipViewController *)self preferredAppearance];
  separatorColor2 = [preferredAppearance10 separatorColor];

  if (separatorColor2)
  {
    goto LABEL_61;
  }

LABEL_62:
  _loadedImage = [(AMSUIBaseMessageViewController *)self _loadedImage];

  if (_loadedImage)
  {
    _loadedImage2 = [(AMSUIBaseMessageViewController *)self _loadedImage];
    v65 = [_loadedImage2 ams_imageWithRenderingMode:{-[AMSUIBubbleTipViewController _primaryImageRenderingMode](self, "_primaryImageRenderingMode")}];
    imageView = [_messageView imageView];
    [imageView setImage:v65];
  }

  [(AMSUIBaseMessageViewController *)self _updateTextWithAttributes];

LABEL_65:
  v67 = *MEMORY[0x1E69E9840];
}

- (unint64_t)directionForAMSUIPopoverArrowDirection:(unint64_t)direction
{
  if (direction + 1 > 4)
  {
    return 1;
  }

  else
  {
    return qword_1BB1EF1B0[direction + 1];
  }
}

- (void)_transferBackgroundColorForPopover
{
  if ([(AMSUIBubbleTipViewController *)self modalPresentationStyle]== 7)
  {
    popoverPresentationController = [(AMSUIBubbleTipViewController *)self popoverPresentationController];

    if (popoverPresentationController)
    {
      _messageView = [(AMSUIBaseMessageViewController *)self _messageView];
      backgroundColor = [_messageView backgroundColor];

      _messageView2 = [(AMSUIBaseMessageViewController *)self _messageView];
      clearColor = [MEMORY[0x1E69DC888] clearColor];
      [_messageView2 set_ams_backgroundColor:clearColor];

      popoverPresentationController2 = [(AMSUIBubbleTipViewController *)self popoverPresentationController];
      [popoverPresentationController2 setBackgroundColor:backgroundColor];
    }
  }
}

- (void)_updateArrowProperties
{
  inlineAnchorInfo = [(AMSUIBubbleTipViewController *)self inlineAnchorInfo];

  if (inlineAnchorInfo)
  {
    inlineAnchorInfo2 = [(AMSUIBubbleTipViewController *)self inlineAnchorInfo];
    v5 = -[AMSUIBubbleTipViewController directionForAMSUIPopoverArrowDirection:](self, "directionForAMSUIPopoverArrowDirection:", [inlineAnchorInfo2 arrowDirection]);

    if (v5 + 1 < 2)
    {
      return;
    }

    inlineAnchorInfo3 = [(AMSUIBubbleTipViewController *)self inlineAnchorInfo];
    [inlineAnchorInfo3 arrowOffset];
    v8 = v7;

    inlineAnchorInfo4 = [(AMSUIBubbleTipViewController *)self inlineAnchorInfo];
    view = inlineAnchorInfo4;
    if (v8 == 2.22507386e-308)
    {
      [inlineAnchorInfo4 relativeArrowOffset];
      v17 = v16;

      if (v17 == 2.22507386e-308)
      {
        return;
      }

      inlineAnchorInfo5 = [(AMSUIBubbleTipViewController *)self inlineAnchorInfo];
      [inlineAnchorInfo5 relativeArrowOffset];
      v20 = v19;

      if (v5 - 1 < 2)
      {
        view = [(AMSUIBubbleTipViewController *)self view];
        [view frame];
        v12 = v20 * v27;
      }

      else
      {
        if (v5 != 4 && v5 != 8)
        {
          return;
        }

        view = [(AMSUIBubbleTipViewController *)self view];
        [view frame];
        v12 = v20 * v21;
      }
    }

    else
    {
      [inlineAnchorInfo4 arrowOffset];
      v12 = v11;
    }

    if (v5 - 1 < 2)
    {
      view2 = [(AMSUIBubbleTipViewController *)self view];
      [view2 frame];
      v15 = v22;
    }

    else
    {
      if (v5 != 4 && v5 != 8)
      {
        return;
      }

      view2 = [(AMSUIBubbleTipViewController *)self view];
      [view2 frame];
      v15 = v14;
    }

    _messageView = [(AMSUIBaseMessageViewController *)self _messageView];
    [_messageView setupBubbleArrowMaskView];

    _messageView2 = [(AMSUIBaseMessageViewController *)self _messageView];
    maskShapeView = [_messageView2 maskShapeView];
    [maskShapeView setArrowOffset:v12 + v15 * -0.5];

    _messageView3 = [(AMSUIBaseMessageViewController *)self _messageView];
    maskShapeView2 = [_messageView3 maskShapeView];
    [maskShapeView2 setArrowDirection:v5];
  }

  else
  {
    _messageView3 = [(AMSUIBaseMessageViewController *)self _messageView];
    [_messageView3 removeBubbleArrowMaskView];
  }
}

- (void)_updateSelfSizedContentSize
{
  if ([(AMSUIBubbleTipViewController *)self modalPresentationStyle]== 7)
  {
    popoverPresentationController = [(AMSUIBubbleTipViewController *)self popoverPresentationController];

    if (popoverPresentationController)
    {
      if ([(AMSUIBubbleTipViewController *)self isSelfSizing]|| ([(AMSUIBubbleTipViewController *)self viewIfLoaded], v4 = objc_claimAutoreleasedReturnValue(), v4, !v4))
      {
        presentingViewController = [(AMSUIBubbleTipViewController *)self presentingViewController];
        view = [presentingViewController view];
        [view directionalLayoutMargins];
        v8 = v7;
        v10 = v9;

        presentingViewController2 = [(AMSUIBubbleTipViewController *)self presentingViewController];
        view2 = [presentingViewController2 view];
        [view2 frame];
        v14 = v13;

        v15 = fmin(v14 - (v8 + v10), 327.0);
        presentingViewController3 = [(AMSUIBubbleTipViewController *)self presentingViewController];
        view3 = [presentingViewController3 view];
        window = [view3 window];
        [window frame];
        v20 = v19 * 0.5;

        view4 = [(AMSUIBubbleTipViewController *)self view];
        [view4 setNeedsLayout];

        view5 = [(AMSUIBubbleTipViewController *)self view];
        [view5 sizeThatFits:{v15, v20}];
        v24 = v23;
        v26 = v25;

        [(AMSUIBubbleTipViewController *)self preferredContentSize];
        if (v28 != v24 || v27 != v26)
        {
          [(AMSUIBubbleTipViewController *)self setPreferredContentSize:v24, v26];

          [(AMSUIBubbleTipViewController *)self setIsSelfSizing:1];
        }
      }
    }
  }
}

- (int64_t)_iconAnimationPlayCount
{
  iconAnimationPlayCount2 = 1;
  preferredAppearance = [(AMSUIBubbleTipViewController *)self preferredAppearance];
  if (preferredAppearance)
  {
    v5 = preferredAppearance;
    preferredAppearance2 = [(AMSUIBubbleTipViewController *)self preferredAppearance];
    iconAnimationPlayCount = [preferredAppearance2 iconAnimationPlayCount];

    if (iconAnimationPlayCount != -90)
    {
      preferredAppearance3 = [(AMSUIBubbleTipViewController *)self preferredAppearance];
      iconAnimationPlayCount2 = [preferredAppearance3 iconAnimationPlayCount];
    }
  }

  requestAppearance = [(AMSUIBubbleTipViewController *)self requestAppearance];
  if (requestAppearance)
  {
    v10 = requestAppearance;
    requestAppearance2 = [(AMSUIBubbleTipViewController *)self requestAppearance];
    iconAnimationPlayCount3 = [requestAppearance2 iconAnimationPlayCount];

    if (iconAnimationPlayCount3 != -90)
    {
      requestAppearance3 = [(AMSUIBubbleTipViewController *)self requestAppearance];
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
  _defaultPreferredImageSymbolConfiguration = [(AMSUIBubbleTipViewController *)self _defaultPreferredImageSymbolConfiguration];
  preferredAppearance = [(AMSUIBubbleTipViewController *)self preferredAppearance];
  imageSymbolConfiguration = [preferredAppearance imageSymbolConfiguration];
  v6 = [_defaultPreferredImageSymbolConfiguration configurationByApplyingConfiguration:imageSymbolConfiguration];
  requestAppearance = [(AMSUIBubbleTipViewController *)self requestAppearance];
  imageSymbolConfiguration2 = [requestAppearance imageSymbolConfiguration];
  v9 = [v6 configurationByApplyingConfiguration:imageSymbolConfiguration2];

  return v9;
}

- (unint64_t)_messageStyle
{
  dialogRequest = [(AMSUIBaseMessageViewController *)self dialogRequest];
  style = [dialogRequest style];

  if (style == 8)
  {
    v5 = 6;
  }

  else
  {
    v5 = 3;
  }

  if ([(AMSUIBubbleTipViewController *)self modalPresentationStyle]== 7)
  {
    return 2;
  }

  else
  {
    return v5;
  }
}

- (void)setInlineAnchorInfo:(id)info
{
  infoCopy = info;
  traitCollection = [(AMSUIBubbleTipViewController *)self traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  if (userInterfaceIdiom != 6)
  {
    objc_storeStrong(&self->_inlineAnchorInfo, info);
    [(AMSUIBubbleTipViewController *)self _updateArrowProperties];
  }
}

- (void)setPreferredAppearance:(id)appearance
{
  objc_storeStrong(&self->_preferredAppearance, appearance);

  [(AMSUIBubbleTipViewController *)self _commitAppearance];
}

- (CGSize)preferredContentSize
{
  v4.receiver = self;
  v4.super_class = AMSUIBubbleTipViewController;
  [(AMSUIBubbleTipViewController *)&v4 preferredContentSize];
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)setPreferredContentSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  [(AMSUIBubbleTipViewController *)self setIsSelfSizing:0];
  v6.receiver = self;
  v6.super_class = AMSUIBubbleTipViewController;
  [(AMSUIBubbleTipViewController *)&v6 setPreferredContentSize:width, height];
}

- (int64_t)_primaryImageRenderingMode
{
  preferredAppearance = [(AMSUIBubbleTipViewController *)self preferredAppearance];
  primaryImageRenderingMode = [preferredAppearance primaryImageRenderingMode];

  requestAppearance = [(AMSUIBubbleTipViewController *)self requestAppearance];
  primaryImageRenderingMode2 = [requestAppearance primaryImageRenderingMode];

  if (primaryImageRenderingMode2)
  {
    requestAppearance2 = [(AMSUIBubbleTipViewController *)self requestAppearance];
    primaryImageRenderingMode = [requestAppearance2 primaryImageRenderingMode];
  }

  return primaryImageRenderingMode;
}

- (CGPoint)anchorPoint
{
  objc_copyStruct(v4, &self->_anchorPoint, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.y = v3;
  result.x = v2;
  return result;
}

@end