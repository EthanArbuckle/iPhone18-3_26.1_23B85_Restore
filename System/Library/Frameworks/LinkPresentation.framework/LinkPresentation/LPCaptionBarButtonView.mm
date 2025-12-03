@interface LPCaptionBarButtonView
- (BOOL)_menuButtonShowsChevron;
- (BOOL)_menuButtonShowsIndicator;
- (BOOL)_menuButtonShowsSingleImage;
- (BOOL)hasAnyText;
- (BOOL)shouldShowDownloadingIndicator;
- (CGSize)collapsedSizeThatFits:(CGSize)fits;
- (CGSize)sizeThatFits:(CGSize)fits;
- (LPCaptionBarButtonView)initWithHost:(id)host properties:(id)properties style:(id)style;
- (id)createButton;
- (id)createCollapsedButton;
- (id)createMenu;
- (id)createSegmentedControl;
- (id)createUIActionsFromLPActionsWithHandler:(id)handler;
- (void)addTarget:(id)target action:(SEL)action;
- (void)configureMenuButton:(id)button;
- (void)configurePillButton:(id)button;
- (void)createProgressIndicator;
- (void)layoutComponentView;
- (void)performAction:(id)action;
- (void)removeTarget:(id)target action:(SEL)action;
- (void)selectAction:(id)action;
- (void)updateProgressIndicator;
@end

@implementation LPCaptionBarButtonView

- (LPCaptionBarButtonView)initWithHost:(id)host properties:(id)properties style:(id)style
{
  hostCopy = host;
  propertiesCopy = properties;
  styleCopy = style;
  v25.receiver = self;
  v25.super_class = LPCaptionBarButtonView;
  v11 = [(LPComponentView *)&v25 initWithHost:hostCopy];
  v12 = v11;
  v13 = v11;
  if (!v11)
  {
    goto LABEL_12;
  }

  objc_storeStrong(&v11->_properties, properties);
  objc_storeStrong(&v12->_style, style);
  actions = [(LPCaptionButtonPresentationProperties *)v12->_properties actions];
  if ([actions count] < 2)
  {

    goto LABEL_6;
  }

  useSegmentedControl = [(LPButtonStyle *)v12->_style useSegmentedControl];

  if (!useSegmentedControl)
  {
LABEL_6:
    createButton = [(LPCaptionBarButtonView *)v13 createButton];
    v17 = &OBJC_IVAR___LPCaptionBarButtonView__button;
    goto LABEL_7;
  }

  createButton = [(LPCaptionBarButtonView *)v13 createSegmentedControl];
  v17 = &OBJC_IVAR___LPCaptionBarButtonView__segmentedControl;
LABEL_7:
  v18 = *v17;
  v19 = *(&v13->super.super.super.super.isa + v18);
  *(&v13->super.super.super.super.isa + v18) = createButton;

  [(LPCaptionBarButtonView *)v13 addSubview:*(&v13->super.super.super.super.isa + v18)];
  collapsedButton = [(LPCaptionButtonPresentationProperties *)v12->_properties collapsedButton];

  if (collapsedButton)
  {
    createCollapsedButton = [(LPCaptionBarButtonView *)v13 createCollapsedButton];
    collapsedButton = v13->_collapsedButton;
    v13->_collapsedButton = createCollapsedButton;

    [(LPCaptionBarButtonView *)v13 addSubview:v13->_collapsedButton];
  }

  if ([(LPCaptionBarButtonView *)v13 shouldShowDownloadingIndicator])
  {
    [(LPCaptionBarButtonView *)v13 createProgressIndicator];
  }

  [(UIView *)v13 _lp_setClipsToBounds:0];
  v23 = v13;
LABEL_12:

  return v13;
}

- (void)layoutComponentView
{
  if (self->_collapsed)
  {
    [(UIButton *)self->_button setFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    v3 = 1;
    if (!self->_collapsed)
    {
      v3 = self->_progressIndicator != 0;
    }

    [(UIButton *)self->_button setHidden:v3];
    [(LPCaptionBarButtonView *)self bounds];
    [(UIButton *)self->_collapsedButton setFrame:?];
    [(UIButton *)self->_collapsedButton setHidden:!self->_collapsed];
    collapsedButton = self->_collapsedButton;
    [(UIButton *)collapsedButton frame];
    [(UIButton *)collapsedButton _lp_setCornerRadius:v5 * 0.5];
  }

  else
  {
    v6 = *MEMORY[0x1E69DDCE0];
    v7 = *(MEMORY[0x1E69DDCE0] + 8);
    v8 = *(MEMORY[0x1E69DDCE0] + 16);
    v9 = *(MEMORY[0x1E69DDCE0] + 24);
    [(LPCaptionBarButtonView *)self bounds];
    [(UIButton *)self->_button setFrame:v10 - v7, v11 - v6, v12 - (-v9 - v7), v13 - (-v8 - v6)];
    v14 = 1;
    if (!self->_collapsed)
    {
      v14 = self->_progressIndicator != 0;
    }

    [(UIButton *)self->_button setHidden:v14];
    [(UIButton *)self->_collapsedButton setFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    [(UIButton *)self->_collapsedButton setHidden:!self->_collapsed];
    [(LPCaptionBarButtonView *)self bounds];
    [(UISegmentedControl *)self->_segmentedControl setFrame:?];
    if (self->_progressIndicator)
    {
      [(UIButton *)self->_button frame];
      [(LPCircularProgressIndicator *)self->_progressIndicator setFrame:?];
    }

    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __45__LPCaptionBarButtonView_layoutComponentView__block_invoke;
    v18[3] = &unk_1E7A377C8;
    v18[4] = self;
    v15 = __45__LPCaptionBarButtonView_layoutComponentView__block_invoke(v18);
    button = self->_button;
    [(UIButton *)button frame];
    [(UIButton *)button _lp_setCornerRadius:v17 / v15];
  }

  [(UIButton *)self->_button _lp_layoutIfNeeded];
  [(UIButton *)self->_collapsedButton _lp_layoutIfNeeded];
  [(UISegmentedControl *)self->_segmentedControl _lp_layoutIfNeeded];
  [(UIView *)self->_progressIndicator _lp_layoutIfNeeded];
}

uint64_t __45__LPCaptionBarButtonView_layoutComponentView__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 416) shape];
  if (v2 == 2)
  {
    return 4;
  }

  if (v2 == 1)
  {
    return 2;
  }

  v3 = [*(*(a1 + 32) + 416) actions];

  if (!v3)
  {
    return 2;
  }

  v4 = [*(*(a1 + 32) + 432) configuration];
  if (!v4)
  {
    return 4;
  }

  v5 = v4;
  v6 = [*(*(a1 + 32) + 432) configuration];
  v7 = [v6 attributedTitle];

  if (v7)
  {
    return 4;
  }

  else
  {
    return 2;
  }
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  segmentedControl = self->_segmentedControl;
  if (segmentedControl)
  {
    [(UISegmentedControl *)segmentedControl systemLayoutSizeFittingSize:fits.width, fits.height];
    v6 = v5;
    v8 = v7;
  }

  else
  {
    [(UIButton *)self->_button systemLayoutSizeFittingSize:fits.width, fits.height];
    v6 = v9;
    v8 = v10;
    menu = [(UIButton *)self->_button menu];

    if (menu)
    {
      indicatorSpacing = [(LPButtonStyle *)self->_style indicatorSpacing];
      [indicatorSpacing value];
      v14 = v13;

      menuMinimumWidth = [(LPButtonStyle *)self->_style menuMinimumWidth];
      [menuMinimumWidth value];
      v6 = fmax(v6 + v14, v16);
    }

    configuration = [(UIButton *)self->_button configuration];

    if (configuration)
    {
      if (![(LPCaptionBarButtonView *)self _menuButtonShowsSingleImage])
      {
        additionalVerticalPadding = [(LPButtonStyle *)self->_style additionalVerticalPadding];
        [additionalVerticalPadding value];
        v8 = v8 + v19;
      }

      configuration2 = [(UIButton *)self->_button configuration];
      attributedTitle = [configuration2 attributedTitle];

      if (attributedTitle)
      {
        [(LPCaptionButtonPresentationProperties *)self->_properties minimumWidth];
        if (v22 == 0.0)
        {
          minimumWidth = [(LPButtonStyle *)self->_style minimumWidth];
          [minimumWidth value];
          v6 = fmax(v6, v24);
        }

        else
        {
          v6 = fmax(v6, v22);
        }
      }

      else
      {
        v6 = v8;
      }
    }

    if ([(LPCaptionBarButtonView *)self hasAnyText])
    {
      minimumWidth2 = [(LPButtonStyle *)self->_style minimumWidth];
      [minimumWidth2 value];
      v27 = v26;

      height = [(LPButtonStyle *)self->_style height];
      [height value];
      v30 = v29;
      if (v29 == 0.0)
      {
        minimumHeight = [(LPButtonStyle *)self->_style minimumHeight];
        [minimumHeight value];
        v30 = v32;
      }

      v6 = fmax(v6, v27);

      if (v30 != 0.0)
      {
        v8 = fmax(v8, v30);
      }
    }
  }

  v33 = v6;
  v34 = v8;
  result.height = v34;
  result.width = v33;
  return result;
}

- (BOOL)hasAnyText
{
  v16 = *MEMORY[0x1E69E9840];
  text = [(LPCaptionButtonPresentationProperties *)self->_properties text];
  if (text)
  {

    return 1;
  }

  attributedText = [(LPCaptionButtonPresentationProperties *)self->_properties attributedText];

  if (attributedText)
  {
    return 1;
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  actions = [(LPCaptionButtonPresentationProperties *)self->_properties actions];
  v6 = [actions countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = *v12;
    while (2)
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(actions);
        }

        visibleTitle = [*(*(&v11 + 1) + 8 * v8) visibleTitle];

        if (visibleTitle)
        {

          return 1;
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [actions countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  return 0;
}

- (CGSize)collapsedSizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  fixedCollapsedSize = [(LPButtonStyle *)self->_style fixedCollapsedSize];

  if (fixedCollapsedSize)
  {
    fixedCollapsedSize2 = [(LPButtonStyle *)self->_style fixedCollapsedSize];
    [fixedCollapsedSize2 asSize];
    v9 = v8;
    v11 = v10;

    v12 = v9;
    v13 = v11;
  }

  else
  {
    collapsedButton = self->_collapsedButton;

    [(UIButton *)collapsedButton systemLayoutSizeFittingSize:width, height];
  }

  result.height = v13;
  result.width = v12;
  return result;
}

- (void)addTarget:(id)target action:(SEL)action
{
  targetCopy = target;
  [UIButton addTarget:"addTarget:action:forControlEvents:" action:? forControlEvents:?];
  [(UIButton *)self->_collapsedButton addTarget:targetCopy action:action forControlEvents:0x2000];
}

- (void)removeTarget:(id)target action:(SEL)action
{
  targetCopy = target;
  [UIButton removeTarget:"removeTarget:action:forControlEvents:" action:? forControlEvents:?];
  [(UIButton *)self->_collapsedButton removeTarget:targetCopy action:action forControlEvents:0x2000];
}

- (void)createProgressIndicator
{
  v3 = [LPCircularProgressIndicator alloc];
  host = [(LPComponentView *)self host];
  progressIndicatorStyle = [(LPButtonStyle *)self->_style progressIndicatorStyle];
  v6 = [(LPCircularProgressIndicator *)v3 initWithHost:host style:progressIndicatorStyle];
  progressIndicator = self->_progressIndicator;
  self->_progressIndicator = v6;

  [(LPCaptionBarButtonView *)self addSubview:self->_progressIndicator];

  [(LPCaptionBarButtonView *)self updateProgressIndicator];
}

- (void)updateProgressIndicator
{
  if (self->_progressIndicator)
  {
    host = [(LPComponentView *)self host];
    v5 = [host downloadProgressForComponentView:self];

    progressIndicator = self->_progressIndicator;
    [v5 progress];
    [(LPCircularProgressIndicator *)progressIndicator setProgress:?];
  }
}

- (BOOL)shouldShowDownloadingIndicator
{
  host = [(LPComponentView *)self host];
  v4 = [host sharedObjectDownloadStateForComponentView:self];

  return v4 == 1;
}

- (void)selectAction:(id)action
{
  v14 = *MEMORY[0x1E69E9840];
  actionCopy = action;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  actions = [(LPCaptionButtonPresentationProperties *)self->_properties actions];
  v6 = [actions countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v6)
  {
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(actions);
        }

        [*(*(&v9 + 1) + 8 * v8++) setSelected:0];
      }

      while (v6 != v8);
      v6 = [actions countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }

  [actionCopy setSelected:1];
}

- (void)performAction:(id)action
{
  actionCopy = action;
  handler = [actionCopy handler];

  if (handler)
  {
    handler2 = [actionCopy handler];
    handler2[2]();
  }
}

- (id)createSegmentedControl
{
  v30 = *MEMORY[0x1E69E9840];
  actions = [(LPCaptionButtonPresentationProperties *)self->_properties actions];
  v3 = [actions count];

  if (v3 < 2)
  {
    v18 = 0;
  }

  else
  {
    v4 = MEMORY[0x1E695DF70];
    actions2 = [(LPCaptionButtonPresentationProperties *)self->_properties actions];
    v6 = [v4 arrayWithCapacity:{objc_msgSend(actions2, "count")}];

    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    actions3 = [(LPCaptionButtonPresentationProperties *)self->_properties actions];
    v8 = 0;
    v9 = [actions3 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v9)
    {
      v10 = *v26;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v26 != v10)
          {
            objc_enumerationMutation(actions3);
          }

          v12 = *(*(&v25 + 1) + 8 * i);
          visibleTitle = [v12 visibleTitle];
          v14 = visibleTitle == 0;

          if (!v14)
          {
            if ([v12 isSelected])
            {
              v8 = [v6 count];
            }

            v15 = MEMORY[0x1E69DC628];
            visibleTitle2 = [v12 visibleTitle];
            v24[0] = MEMORY[0x1E69E9820];
            v24[1] = 3221225472;
            v24[2] = __48__LPCaptionBarButtonView_createSegmentedControl__block_invoke;
            v24[3] = &unk_1E7A377F0;
            v24[4] = self;
            v24[5] = v12;
            v17 = [v15 actionWithTitle:visibleTitle2 image:0 identifier:0 handler:v24];
            [v6 addObject:v17];
          }
        }

        v9 = [actions3 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v9);
    }

    v18 = [objc_alloc(MEMORY[0x1E69DCF38]) initWithItems:v6];
    [v18 setSelectedSegmentIndex:v8];
    [(LPCaptionBarButtonView *)self configureSegmentedControl:v18];
  }

  [v18 setAccessibilityIgnoresInvertColors:{-[LPButtonStyle ignoresInvertColors](self->_style, "ignoresInvertColors")}];
  [v18 _setAutosizeText:1];
  [v18 setTranslatesAutoresizingMaskIntoConstraints:0];
  widthAnchor = [v18 widthAnchor];
  minimumWidth = [(LPButtonStyle *)self->_style minimumWidth];
  [minimumWidth value];
  v21 = [widthAnchor constraintGreaterThanOrEqualToConstant:?];
  [v21 setActive:1];

  return v18;
}

uint64_t __48__LPCaptionBarButtonView_createSegmentedControl__block_invoke(uint64_t a1)
{
  [*(a1 + 32) selectAction:*(a1 + 40)];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v2 performAction:v3];
}

- (id)createButton
{
  actions = [(LPCaptionButtonPresentationProperties *)self->_properties actions];

  v4 = [MEMORY[0x1E69DC738] buttonWithType:1];
  if (actions)
  {
    [(LPCaptionBarButtonView *)self configureMenuButton:v4];
  }

  else
  {
    [(LPCaptionBarButtonView *)self configurePillButton:v4];
  }

  padding = [(LPButtonStyle *)self->_style padding];
  v6 = [padding copy];

  icon = [(LPCaptionButtonPresentationProperties *)self->_properties icon];
  if (icon)
  {
    text = [(LPCaptionButtonPresentationProperties *)self->_properties text];
    if (text && v6)
    {
      imagePadding = [(LPButtonStyle *)self->_style imagePadding];

      if (!imagePadding)
      {
        goto LABEL_10;
      }

      v10 = [LPPointUnit alloc];
      icon = [v6 leading];
      [icon value];
      v12 = v11;
      text = [(LPButtonStyle *)self->_style imagePadding];
      [text value];
      v14 = [(LPPointUnit *)v10 initWithValue:v12 + v13];
      [v6 setLeading:v14];
    }
  }

LABEL_10:
  [v6 asInsetsForLTR:{-[UIView _lp_isLTR](self, "_lp_isLTR")}];
  [v4 setContentEdgeInsets:?];
  [v4 setAccessibilityIgnoresInvertColors:{-[LPButtonStyle ignoresInvertColors](self->_style, "ignoresInvertColors")}];

  return v4;
}

- (id)createCollapsedButton
{
  v3 = [MEMORY[0x1E69DC738] buttonWithType:1];
  [v3 setAccessibilityIdentifier:@"LPCaptionBarPillButton"];
  collapsedButton = [(LPCaptionButtonPresentationProperties *)self->_properties collapsedButton];
  backgroundColor = [collapsedButton backgroundColor];
  backgroundColor2 = backgroundColor;
  if (!backgroundColor)
  {
    backgroundColor2 = [(LPCaptionButtonPresentationProperties *)self->_properties backgroundColor];
  }

  [v3 setBackgroundColor:backgroundColor2];
  if (!backgroundColor)
  {
  }

  collapsedButton2 = [(LPCaptionButtonPresentationProperties *)self->_properties collapsedButton];
  attributedText = [collapsedButton2 attributedText];

  collapsedButton3 = [(LPCaptionButtonPresentationProperties *)self->_properties collapsedButton];
  if (attributedText)
  {
    attributedText2 = [collapsedButton3 attributedText];
    [v3 setAttributedTitle:attributedText2 forState:0];
  }

  else
  {
    attributedText2 = [collapsedButton3 icon];
    platformImage = [attributedText2 platformImage];
    [v3 setImage:platformImage forState:0];
  }

  return v3;
}

- (void)configurePillButton:(id)button
{
  buttonCopy = button;
  backgroundColor = [(LPCaptionButtonPresentationProperties *)self->_properties backgroundColor];
  backgroundColor2 = backgroundColor;
  if (!backgroundColor)
  {
    backgroundColor2 = [(LPButtonStyle *)self->_style backgroundColor];
  }

  [buttonCopy setBackgroundColor:backgroundColor2];
  if (!backgroundColor)
  {
  }

  attributedText = [(LPCaptionButtonPresentationProperties *)self->_properties attributedText];

  if (attributedText)
  {
    attributedText2 = [(LPCaptionButtonPresentationProperties *)self->_properties attributedText];
    [buttonCopy setAttributedTitle:attributedText2 forState:0];
  }

  else
  {
    font = [(LPButtonStyle *)self->_style font];
    titleLabel = [buttonCopy titleLabel];
    [titleLabel setFont:font];

    text = [(LPCaptionButtonPresentationProperties *)self->_properties text];
    [buttonCopy setTitle:text forState:0];

    attributedText2 = [(LPButtonStyle *)self->_style foregroundColor];
    [buttonCopy setTitleColor:attributedText2 forState:0];
  }

  [buttonCopy setAccessibilityIdentifier:@"LPCaptionBarPillButton"];
  icon = [(LPCaptionButtonPresentationProperties *)self->_properties icon];

  if (icon)
  {
    icon2 = [(LPCaptionButtonPresentationProperties *)self->_properties icon];
    platformImage = [icon2 platformImage];
    [buttonCopy setImage:platformImage forState:0];

    imagePadding = [(LPButtonStyle *)self->_style imagePadding];
    [imagePadding value];
    v16 = v15;

    _lp_isLTR = [(UIView *)self _lp_isLTR];
    if (_lp_isLTR)
    {
      v18 = -v16;
    }

    else
    {
      v18 = 0.0;
    }

    if (_lp_isLTR)
    {
      v19 = 0.0;
    }

    else
    {
      v19 = -v16;
    }

    [buttonCopy setImageEdgeInsets:{2.0, v18, 2.0, v19}];
    imageView = [buttonCopy imageView];
    [imageView setContentMode:1];
  }

  if ([(LPCaptionButtonPresentationProperties *)self->_properties disabled])
  {
    [buttonCopy setEnabled:0];
    +[LPTheme disabledButtonOpacity];
    [buttonCopy _lp_setOpacity:?];
  }
}

- (void)configureMenuButton:(id)button
{
  v74 = *MEMORY[0x1E69E9840];
  buttonCopy = button;
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  actions = [(LPCaptionButtonPresentationProperties *)self->_properties actions];
  v5 = [actions countByEnumeratingWithState:&v67 objects:v73 count:16];
  if (v5)
  {
    v6 = *v68;
LABEL_3:
    v7 = 0;
    while (1)
    {
      if (*v68 != v6)
      {
        objc_enumerationMutation(actions);
      }

      v8 = *(*(&v67 + 1) + 8 * v7);
      if ([v8 isSelected])
      {
        break;
      }

      if (v5 == ++v7)
      {
        v5 = [actions countByEnumeratingWithState:&v67 objects:v73 count:16];
        if (v5)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    firstObject = v8;

    if (firstObject)
    {
      goto LABEL_12;
    }
  }

  else
  {
LABEL_9:
  }

  actions2 = [(LPCaptionButtonPresentationProperties *)self->_properties actions];
  firstObject = [actions2 firstObject];

LABEL_12:
  if ([(LPButtonStyle *)self->_style useGlassButtonAppearance])
  {
    +[LPButtonConfiguration _glassButtonConfiguration];
  }

  else
  {
    +[LPButtonConfiguration filledButtonConfiguration];
  }
  v10 = ;
  visibleTitle = [firstObject visibleTitle];
  if (visibleTitle && (v12 = [(LPButtonStyle *)self->_style behavior]== 0, visibleTitle, v12))
  {
    v16 = objc_alloc(MEMORY[0x1E696AAB0]);
    visibleTitle2 = [firstObject visibleTitle];
    v71 = *MEMORY[0x1E69DB648];
    menuFont = [(LPButtonStyle *)self->_style menuFont];
    v72 = menuFont;
    v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v72 forKeys:&v71 count:1];
    v15 = [v16 initWithString:visibleTitle2 attributes:v19];

    [v10 setAttributedTitle:v15];
  }

  else
  {
    if ([(LPButtonStyle *)self->_style behavior]!= 1)
    {
      goto LABEL_24;
    }

    attributedText = [(LPCaptionButtonPresentationProperties *)self->_properties attributedText];
    v14 = attributedText;
    if (attributedText)
    {
      v15 = attributedText;
    }

    else
    {
      v20 = objc_alloc(MEMORY[0x1E696AAB0]);
      text = [(LPCaptionButtonPresentationProperties *)self->_properties text];
      v15 = [v20 initWithString:text];
    }

    [v10 setAttributedTitle:v15];
  }

LABEL_24:
  secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
  if ([(LPCaptionBarButtonView *)self _menuButtonShowsIndicator])
  {
    [v10 _dci_setIndicator:2];
    [buttonCopy setContentHorizontalAlignment:4];
  }

  else if ([(LPCaptionBarButtonView *)self _menuButtonShowsChevron])
  {
    attributedTitle = [v10 attributedTitle];
    v24 = attributedTitle == 0;

    if (!v24)
    {
      menuFont2 = [(LPButtonStyle *)self->_style menuFont];
      fontDescriptor = [menuFont2 fontDescriptor];
      v61 = [fontDescriptor objectForKey:*MEMORY[0x1E69DB8E8]];

      v60 = [MEMORY[0x1E69DCAD8] _lp_configurationWithTextStyle:v61 weight:6 scale:1];
      v27 = objc_alloc(MEMORY[0x1E696AD40]);
      attributedTitle2 = [v10 attributedTitle];
      v29 = [v27 initWithAttributedString:attributedTitle2];

      v62 = objc_alloc_init(MEMORY[0x1E69DB7F0]);
      v30 = +[LPResources chevron];
      platformImage = [v30 platformImage];
      v32 = [platformImage imageWithConfiguration:v60];
      v33 = [v32 imageWithTintColor:secondaryLabelColor];
      [v62 setImage:v33];

      v34 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:@" "];
      [v29 appendAttributedString:v34];

      v35 = [MEMORY[0x1E696AAB0] attributedStringWithAttachment:v62];
      [v29 appendAttributedString:v35];

      [v10 setAttributedTitle:v29];
    }
  }

  if (![(LPButtonStyle *)self->_style useSystemButtonAppearance])
  {
    [v10 setButtonSize:0];
    labelColor = [MEMORY[0x1E69DC888] labelColor];
    [v10 setBaseForegroundColor:labelColor];

    menuBackgroundColor = [(LPButtonStyle *)self->_style menuBackgroundColor];
    [v10 setBaseBackgroundColor:menuBackgroundColor];

    baseBackgroundColor = [v10 baseBackgroundColor];
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    v40 = [baseBackgroundColor isEqual:clearColor];

    if (v40)
    {
      tertiaryLabelColor = [MEMORY[0x1E69DC888] tertiaryLabelColor];

      layer = [buttonCopy layer];
      [layer setBorderWidth:1.0];

      _lp_systemFillColor = [MEMORY[0x1E69DC888] _lp_systemFillColor];
      v44 = _lp_systemFillColor;
      cGColor = [_lp_systemFillColor CGColor];
      layer2 = [buttonCopy layer];
      [layer2 setBorderColor:cGColor];

      secondaryLabelColor = tertiaryLabelColor;
    }

    if ([(LPCaptionBarButtonView *)self _menuButtonShowsIndicator])
    {
      [v10 set_lp_indicatorColor:secondaryLabelColor];
      v65[0] = MEMORY[0x1E69E9820];
      v65[1] = 3221225472;
      v65[2] = __46__LPCaptionBarButtonView_configureMenuButton___block_invoke;
      v65[3] = &unk_1E7A37180;
      secondaryLabelColor = secondaryLabelColor;
      v66 = secondaryLabelColor;
      [v10 _dci_setIndicatorColorTransformer:v65];
    }
  }

  if ([(LPCaptionBarButtonView *)self _menuButtonShowsImages])
  {
    visibleImage = [firstObject visibleImage];
    platformImage2 = [visibleImage platformImage];
    [v10 setImage:platformImage2];

    if (![(LPButtonStyle *)self->_style useSystemButtonAppearance])
    {
      _menuButtonShowsSingleImage = [(LPCaptionBarButtonView *)self _menuButtonShowsSingleImage];
      style = self->_style;
      if (_menuButtonShowsSingleImage)
      {
        symbolConfiguration = [(LPButtonStyle *)style symbolConfiguration];
        [v10 setPreferredSymbolConfigurationForImage:symbolConfiguration];
      }

      else
      {
        menuFont3 = [(LPButtonStyle *)style menuFont];
        fontDescriptor2 = [menuFont3 fontDescriptor];
        symbolConfiguration = [fontDescriptor2 objectForKey:*MEMORY[0x1E69DB8E8]];

        v54 = [MEMORY[0x1E69DCAD8] configurationWithTextStyle:symbolConfiguration scale:1];
        [v10 setPreferredSymbolConfigurationForImage:v54];
      }
    }

    [v10 setImagePadding:4.0];
  }

  [buttonCopy setConfiguration:v10];
  if ([(LPCaptionBarButtonView *)self _menuButtonShowsSingleImage]|| [(LPButtonStyle *)self->_style prefersBehavioralStylePad])
  {
    [buttonCopy setPreferredBehavioralStyle:1];
  }

  actions3 = [(LPCaptionButtonPresentationProperties *)self->_properties actions];
  v56 = [actions3 count] > 1;

  if (v56)
  {
    createMenu = [(LPCaptionBarButtonView *)self createMenu];
    [buttonCopy setMenu:createMenu];

    [buttonCopy setShowsMenuAsPrimaryAction:1];
    [buttonCopy setPreferredMenuElementOrder:2];
  }

  else
  {
    handler = [firstObject handler];
    v59 = handler == 0;

    if (v59)
    {
      [buttonCopy setUserInteractionEnabled:{-[LPButtonStyle enableUserInteractionForDecorativeButton](self->_style, "enableUserInteractionForDecorativeButton")}];
    }
  }
}

- (id)createUIActionsFromLPActionsWithHandler:(id)handler
{
  v27 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v4 = MEMORY[0x1E695DF70];
  actions = [(LPCaptionButtonPresentationProperties *)self->_properties actions];
  v6 = [v4 arrayWithCapacity:{objc_msgSend(actions, "count")}];

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = [(LPCaptionButtonPresentationProperties *)self->_properties actions];
  v7 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v7)
  {
    v8 = *v23;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v23 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v22 + 1) + 8 * i);
        if ([(LPCaptionBarButtonView *)self _menuButtonShowsImages])
        {
          image = [v10 image];
          platformImage = [image platformImage];
        }

        else
        {
          platformImage = 0;
        }

        v13 = MEMORY[0x1E69DC628];
        title = [v10 title];
        v20[0] = MEMORY[0x1E69E9820];
        v20[1] = 3221225472;
        v20[2] = __66__LPCaptionBarButtonView_createUIActionsFromLPActionsWithHandler___block_invoke;
        v20[3] = &unk_1E7A37818;
        v15 = handlerCopy;
        v20[4] = v10;
        v21 = v15;
        v16 = [v13 actionWithTitle:title image:platformImage identifier:0 handler:v20];

        if ([v10 isSelected])
        {
          [v16 setState:1];
        }

        [v6 addObject:v16];
      }

      v7 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v7);
  }

  return v6;
}

- (id)createMenu
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __36__LPCaptionBarButtonView_createMenu__block_invoke;
  aBlock[3] = &unk_1E7A37840;
  aBlock[4] = self;
  v3 = _Block_copy(aBlock);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __36__LPCaptionBarButtonView_createMenu__block_invoke_2;
  v10[3] = &unk_1E7A37890;
  v10[4] = self;
  v4 = v3;
  v11 = v4;
  v5 = __36__LPCaptionBarButtonView_createMenu__block_invoke_2(v10);
  v6 = MEMORY[0x1E69DCC60];
  v7 = [(LPCaptionBarButtonView *)self createUIActionsFromLPActionsWithHandler:v5];
  v8 = [v6 menuWithChildren:v7];

  return v8;
}

void __36__LPCaptionBarButtonView_createMenu__block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  [*(a1 + 32) performAction:?];
  v3 = [*(a1 + 32) createMenu];
  [*(*(a1 + 32) + 432) setMenu:v3];

  v4 = [*(a1 + 32) host];
  [v4 componentViewDidChangeIntrinsicContentSize:*(a1 + 32)];
}

id __36__LPCaptionBarButtonView_createMenu__block_invoke_2(uint64_t a1)
{
  v3 = [*(*(a1 + 32) + 424) behavior];
  if (v3 == 1)
  {
    v1 = _Block_copy(*(a1 + 40));
  }

  else if (!v3)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __36__LPCaptionBarButtonView_createMenu__block_invoke_3;
    v6[3] = &unk_1E7A37868;
    v4 = *(a1 + 40);
    v6[4] = *(a1 + 32);
    v7 = v4;
    v1 = _Block_copy(v6);
  }

  return v1;
}

void __36__LPCaptionBarButtonView_createMenu__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = MEMORY[0x1E69E9820];
  v7 = 3221225472;
  v8 = __36__LPCaptionBarButtonView_createMenu__block_invoke_4;
  v9 = &unk_1E7A35478;
  v10 = *(a1 + 32);
  v4 = v3;
  v11 = v4;
  v5 = _Block_copy(&v6);
  [MEMORY[0x1E69DD250] performWithoutAnimation:{v5, v6, v7, v8, v9, v10}];
  [*(a1 + 32) selectAction:v4];
  (*(*(a1 + 40) + 16))();
}

uint64_t __36__LPCaptionBarButtonView_createMenu__block_invoke_4(uint64_t a1)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v2 = (a1 + 32);
  v3 = *(*(a1 + 32) + 432);
  v4 = objc_alloc(MEMORY[0x1E696AAB0]);
  v5 = [v2[1] visibleTitle];
  v13 = *MEMORY[0x1E69DB648];
  v6 = [*(*v2 + 53) menuFont];
  v14[0] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
  v8 = [v4 initWithString:v5 attributes:v7];
  [v3 setAttributedTitle:v8 forState:0];

  if ([*(a1 + 32) _menuButtonShowsImages])
  {
    v9 = *(*(a1 + 32) + 432);
    v10 = [*(a1 + 40) visibleImage];
    v11 = [v10 platformImage];
    [v9 setImage:v11 forState:0];
  }

  return [*(*(a1 + 32) + 432) _lp_layoutIfNeeded];
}

- (BOOL)_menuButtonShowsIndicator
{
  actions = [(LPCaptionButtonPresentationProperties *)self->_properties actions];
  v3 = [actions count] > 1;

  return v3;
}

- (BOOL)_menuButtonShowsChevron
{
  if (![(LPButtonStyle *)self->_style showsChevronForSingleAction])
  {
    return 0;
  }

  actions = [(LPCaptionButtonPresentationProperties *)self->_properties actions];
  if ([actions count] == 1)
  {
    actions2 = [(LPCaptionButtonPresentationProperties *)self->_properties actions];
    firstObject = [actions2 firstObject];
    handler = [firstObject handler];
    v7 = handler != 0;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)_menuButtonShowsSingleImage
{
  actions = [(LPCaptionButtonPresentationProperties *)self->_properties actions];
  v4 = [actions count];

  if (v4 != 1)
  {
    return 0;
  }

  actions2 = [(LPCaptionButtonPresentationProperties *)self->_properties actions];
  firstObject = [actions2 firstObject];

  image = [firstObject image];
  if (image)
  {
    title = [firstObject title];
    v9 = title == 0;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end