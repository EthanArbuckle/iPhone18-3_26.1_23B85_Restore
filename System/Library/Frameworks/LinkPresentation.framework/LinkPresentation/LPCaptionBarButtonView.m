@interface LPCaptionBarButtonView
- (BOOL)_menuButtonShowsChevron;
- (BOOL)_menuButtonShowsIndicator;
- (BOOL)_menuButtonShowsSingleImage;
- (BOOL)hasAnyText;
- (BOOL)shouldShowDownloadingIndicator;
- (CGSize)collapsedSizeThatFits:(CGSize)a3;
- (CGSize)sizeThatFits:(CGSize)a3;
- (LPCaptionBarButtonView)initWithHost:(id)a3 properties:(id)a4 style:(id)a5;
- (id)createButton;
- (id)createCollapsedButton;
- (id)createMenu;
- (id)createSegmentedControl;
- (id)createUIActionsFromLPActionsWithHandler:(id)a3;
- (void)addTarget:(id)a3 action:(SEL)a4;
- (void)configureMenuButton:(id)a3;
- (void)configurePillButton:(id)a3;
- (void)createProgressIndicator;
- (void)layoutComponentView;
- (void)performAction:(id)a3;
- (void)removeTarget:(id)a3 action:(SEL)a4;
- (void)selectAction:(id)a3;
- (void)updateProgressIndicator;
@end

@implementation LPCaptionBarButtonView

- (LPCaptionBarButtonView)initWithHost:(id)a3 properties:(id)a4 style:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v25.receiver = self;
  v25.super_class = LPCaptionBarButtonView;
  v11 = [(LPComponentView *)&v25 initWithHost:v8];
  v12 = v11;
  v13 = v11;
  if (!v11)
  {
    goto LABEL_12;
  }

  objc_storeStrong(&v11->_properties, a4);
  objc_storeStrong(&v12->_style, a5);
  v14 = [(LPCaptionButtonPresentationProperties *)v12->_properties actions];
  if ([v14 count] < 2)
  {

    goto LABEL_6;
  }

  v15 = [(LPButtonStyle *)v12->_style useSegmentedControl];

  if (!v15)
  {
LABEL_6:
    v16 = [(LPCaptionBarButtonView *)v13 createButton];
    v17 = &OBJC_IVAR___LPCaptionBarButtonView__button;
    goto LABEL_7;
  }

  v16 = [(LPCaptionBarButtonView *)v13 createSegmentedControl];
  v17 = &OBJC_IVAR___LPCaptionBarButtonView__segmentedControl;
LABEL_7:
  v18 = *v17;
  v19 = *(&v13->super.super.super.super.isa + v18);
  *(&v13->super.super.super.super.isa + v18) = v16;

  [(LPCaptionBarButtonView *)v13 addSubview:*(&v13->super.super.super.super.isa + v18)];
  v20 = [(LPCaptionButtonPresentationProperties *)v12->_properties collapsedButton];

  if (v20)
  {
    v21 = [(LPCaptionBarButtonView *)v13 createCollapsedButton];
    collapsedButton = v13->_collapsedButton;
    v13->_collapsedButton = v21;

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

- (CGSize)sizeThatFits:(CGSize)a3
{
  segmentedControl = self->_segmentedControl;
  if (segmentedControl)
  {
    [(UISegmentedControl *)segmentedControl systemLayoutSizeFittingSize:a3.width, a3.height];
    v6 = v5;
    v8 = v7;
  }

  else
  {
    [(UIButton *)self->_button systemLayoutSizeFittingSize:a3.width, a3.height];
    v6 = v9;
    v8 = v10;
    v11 = [(UIButton *)self->_button menu];

    if (v11)
    {
      v12 = [(LPButtonStyle *)self->_style indicatorSpacing];
      [v12 value];
      v14 = v13;

      v15 = [(LPButtonStyle *)self->_style menuMinimumWidth];
      [v15 value];
      v6 = fmax(v6 + v14, v16);
    }

    v17 = [(UIButton *)self->_button configuration];

    if (v17)
    {
      if (![(LPCaptionBarButtonView *)self _menuButtonShowsSingleImage])
      {
        v18 = [(LPButtonStyle *)self->_style additionalVerticalPadding];
        [v18 value];
        v8 = v8 + v19;
      }

      v20 = [(UIButton *)self->_button configuration];
      v21 = [v20 attributedTitle];

      if (v21)
      {
        [(LPCaptionButtonPresentationProperties *)self->_properties minimumWidth];
        if (v22 == 0.0)
        {
          v23 = [(LPButtonStyle *)self->_style minimumWidth];
          [v23 value];
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
      v25 = [(LPButtonStyle *)self->_style minimumWidth];
      [v25 value];
      v27 = v26;

      v28 = [(LPButtonStyle *)self->_style height];
      [v28 value];
      v30 = v29;
      if (v29 == 0.0)
      {
        v31 = [(LPButtonStyle *)self->_style minimumHeight];
        [v31 value];
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
  v3 = [(LPCaptionButtonPresentationProperties *)self->_properties text];
  if (v3)
  {

    return 1;
  }

  v4 = [(LPCaptionButtonPresentationProperties *)self->_properties attributedText];

  if (v4)
  {
    return 1;
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [(LPCaptionButtonPresentationProperties *)self->_properties actions];
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(v5);
        }

        v9 = [*(*(&v11 + 1) + 8 * v8) visibleTitle];

        if (v9)
        {

          return 1;
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  return 0;
}

- (CGSize)collapsedSizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = [(LPButtonStyle *)self->_style fixedCollapsedSize];

  if (v6)
  {
    v7 = [(LPButtonStyle *)self->_style fixedCollapsedSize];
    [v7 asSize];
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

- (void)addTarget:(id)a3 action:(SEL)a4
{
  v6 = a3;
  [UIButton addTarget:"addTarget:action:forControlEvents:" action:? forControlEvents:?];
  [(UIButton *)self->_collapsedButton addTarget:v6 action:a4 forControlEvents:0x2000];
}

- (void)removeTarget:(id)a3 action:(SEL)a4
{
  v6 = a3;
  [UIButton removeTarget:"removeTarget:action:forControlEvents:" action:? forControlEvents:?];
  [(UIButton *)self->_collapsedButton removeTarget:v6 action:a4 forControlEvents:0x2000];
}

- (void)createProgressIndicator
{
  v3 = [LPCircularProgressIndicator alloc];
  v4 = [(LPComponentView *)self host];
  v5 = [(LPButtonStyle *)self->_style progressIndicatorStyle];
  v6 = [(LPCircularProgressIndicator *)v3 initWithHost:v4 style:v5];
  progressIndicator = self->_progressIndicator;
  self->_progressIndicator = v6;

  [(LPCaptionBarButtonView *)self addSubview:self->_progressIndicator];

  [(LPCaptionBarButtonView *)self updateProgressIndicator];
}

- (void)updateProgressIndicator
{
  if (self->_progressIndicator)
  {
    v3 = [(LPComponentView *)self host];
    v5 = [v3 downloadProgressForComponentView:self];

    progressIndicator = self->_progressIndicator;
    [v5 progress];
    [(LPCircularProgressIndicator *)progressIndicator setProgress:?];
  }
}

- (BOOL)shouldShowDownloadingIndicator
{
  v3 = [(LPComponentView *)self host];
  v4 = [v3 sharedObjectDownloadStateForComponentView:self];

  return v4 == 1;
}

- (void)selectAction:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [(LPCaptionButtonPresentationProperties *)self->_properties actions];
  v6 = [v5 countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(v5);
        }

        [*(*(&v9 + 1) + 8 * v8++) setSelected:0];
      }

      while (v6 != v8);
      v6 = [v5 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }

  [v4 setSelected:1];
}

- (void)performAction:(id)a3
{
  v5 = a3;
  v3 = [v5 handler];

  if (v3)
  {
    v4 = [v5 handler];
    v4[2]();
  }
}

- (id)createSegmentedControl
{
  v30 = *MEMORY[0x1E69E9840];
  v2 = [(LPCaptionButtonPresentationProperties *)self->_properties actions];
  v3 = [v2 count];

  if (v3 < 2)
  {
    v18 = 0;
  }

  else
  {
    v4 = MEMORY[0x1E695DF70];
    v5 = [(LPCaptionButtonPresentationProperties *)self->_properties actions];
    v6 = [v4 arrayWithCapacity:{objc_msgSend(v5, "count")}];

    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v7 = [(LPCaptionButtonPresentationProperties *)self->_properties actions];
    v8 = 0;
    v9 = [v7 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v9)
    {
      v10 = *v26;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v26 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v25 + 1) + 8 * i);
          v13 = [v12 visibleTitle];
          v14 = v13 == 0;

          if (!v14)
          {
            if ([v12 isSelected])
            {
              v8 = [v6 count];
            }

            v15 = MEMORY[0x1E69DC628];
            v16 = [v12 visibleTitle];
            v24[0] = MEMORY[0x1E69E9820];
            v24[1] = 3221225472;
            v24[2] = __48__LPCaptionBarButtonView_createSegmentedControl__block_invoke;
            v24[3] = &unk_1E7A377F0;
            v24[4] = self;
            v24[5] = v12;
            v17 = [v15 actionWithTitle:v16 image:0 identifier:0 handler:v24];
            [v6 addObject:v17];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v25 objects:v29 count:16];
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
  v19 = [v18 widthAnchor];
  v20 = [(LPButtonStyle *)self->_style minimumWidth];
  [v20 value];
  v21 = [v19 constraintGreaterThanOrEqualToConstant:?];
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
  v3 = [(LPCaptionButtonPresentationProperties *)self->_properties actions];

  v4 = [MEMORY[0x1E69DC738] buttonWithType:1];
  if (v3)
  {
    [(LPCaptionBarButtonView *)self configureMenuButton:v4];
  }

  else
  {
    [(LPCaptionBarButtonView *)self configurePillButton:v4];
  }

  v5 = [(LPButtonStyle *)self->_style padding];
  v6 = [v5 copy];

  v7 = [(LPCaptionButtonPresentationProperties *)self->_properties icon];
  if (v7)
  {
    v8 = [(LPCaptionButtonPresentationProperties *)self->_properties text];
    if (v8 && v6)
    {
      v9 = [(LPButtonStyle *)self->_style imagePadding];

      if (!v9)
      {
        goto LABEL_10;
      }

      v10 = [LPPointUnit alloc];
      v7 = [v6 leading];
      [v7 value];
      v12 = v11;
      v8 = [(LPButtonStyle *)self->_style imagePadding];
      [v8 value];
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
  v4 = [(LPCaptionButtonPresentationProperties *)self->_properties collapsedButton];
  v5 = [v4 backgroundColor];
  v6 = v5;
  if (!v5)
  {
    v6 = [(LPCaptionButtonPresentationProperties *)self->_properties backgroundColor];
  }

  [v3 setBackgroundColor:v6];
  if (!v5)
  {
  }

  v7 = [(LPCaptionButtonPresentationProperties *)self->_properties collapsedButton];
  v8 = [v7 attributedText];

  v9 = [(LPCaptionButtonPresentationProperties *)self->_properties collapsedButton];
  if (v8)
  {
    v10 = [v9 attributedText];
    [v3 setAttributedTitle:v10 forState:0];
  }

  else
  {
    v10 = [v9 icon];
    v11 = [v10 platformImage];
    [v3 setImage:v11 forState:0];
  }

  return v3;
}

- (void)configurePillButton:(id)a3
{
  v21 = a3;
  v4 = [(LPCaptionButtonPresentationProperties *)self->_properties backgroundColor];
  v5 = v4;
  if (!v4)
  {
    v5 = [(LPButtonStyle *)self->_style backgroundColor];
  }

  [v21 setBackgroundColor:v5];
  if (!v4)
  {
  }

  v6 = [(LPCaptionButtonPresentationProperties *)self->_properties attributedText];

  if (v6)
  {
    v7 = [(LPCaptionButtonPresentationProperties *)self->_properties attributedText];
    [v21 setAttributedTitle:v7 forState:0];
  }

  else
  {
    v8 = [(LPButtonStyle *)self->_style font];
    v9 = [v21 titleLabel];
    [v9 setFont:v8];

    v10 = [(LPCaptionButtonPresentationProperties *)self->_properties text];
    [v21 setTitle:v10 forState:0];

    v7 = [(LPButtonStyle *)self->_style foregroundColor];
    [v21 setTitleColor:v7 forState:0];
  }

  [v21 setAccessibilityIdentifier:@"LPCaptionBarPillButton"];
  v11 = [(LPCaptionButtonPresentationProperties *)self->_properties icon];

  if (v11)
  {
    v12 = [(LPCaptionButtonPresentationProperties *)self->_properties icon];
    v13 = [v12 platformImage];
    [v21 setImage:v13 forState:0];

    v14 = [(LPButtonStyle *)self->_style imagePadding];
    [v14 value];
    v16 = v15;

    v17 = [(UIView *)self _lp_isLTR];
    if (v17)
    {
      v18 = -v16;
    }

    else
    {
      v18 = 0.0;
    }

    if (v17)
    {
      v19 = 0.0;
    }

    else
    {
      v19 = -v16;
    }

    [v21 setImageEdgeInsets:{2.0, v18, 2.0, v19}];
    v20 = [v21 imageView];
    [v20 setContentMode:1];
  }

  if ([(LPCaptionButtonPresentationProperties *)self->_properties disabled])
  {
    [v21 setEnabled:0];
    +[LPTheme disabledButtonOpacity];
    [v21 _lp_setOpacity:?];
  }
}

- (void)configureMenuButton:(id)a3
{
  v74 = *MEMORY[0x1E69E9840];
  v64 = a3;
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v4 = [(LPCaptionButtonPresentationProperties *)self->_properties actions];
  v5 = [v4 countByEnumeratingWithState:&v67 objects:v73 count:16];
  if (v5)
  {
    v6 = *v68;
LABEL_3:
    v7 = 0;
    while (1)
    {
      if (*v68 != v6)
      {
        objc_enumerationMutation(v4);
      }

      v8 = *(*(&v67 + 1) + 8 * v7);
      if ([v8 isSelected])
      {
        break;
      }

      if (v5 == ++v7)
      {
        v5 = [v4 countByEnumeratingWithState:&v67 objects:v73 count:16];
        if (v5)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v63 = v8;

    if (v63)
    {
      goto LABEL_12;
    }
  }

  else
  {
LABEL_9:
  }

  v9 = [(LPCaptionButtonPresentationProperties *)self->_properties actions];
  v63 = [v9 firstObject];

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
  v11 = [v63 visibleTitle];
  if (v11 && (v12 = [(LPButtonStyle *)self->_style behavior]== 0, v11, v12))
  {
    v16 = objc_alloc(MEMORY[0x1E696AAB0]);
    v17 = [v63 visibleTitle];
    v71 = *MEMORY[0x1E69DB648];
    v18 = [(LPButtonStyle *)self->_style menuFont];
    v72 = v18;
    v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v72 forKeys:&v71 count:1];
    v15 = [v16 initWithString:v17 attributes:v19];

    [v10 setAttributedTitle:v15];
  }

  else
  {
    if ([(LPButtonStyle *)self->_style behavior]!= 1)
    {
      goto LABEL_24;
    }

    v13 = [(LPCaptionButtonPresentationProperties *)self->_properties attributedText];
    v14 = v13;
    if (v13)
    {
      v15 = v13;
    }

    else
    {
      v20 = objc_alloc(MEMORY[0x1E696AAB0]);
      v21 = [(LPCaptionButtonPresentationProperties *)self->_properties text];
      v15 = [v20 initWithString:v21];
    }

    [v10 setAttributedTitle:v15];
  }

LABEL_24:
  v22 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  if ([(LPCaptionBarButtonView *)self _menuButtonShowsIndicator])
  {
    [v10 _dci_setIndicator:2];
    [v64 setContentHorizontalAlignment:4];
  }

  else if ([(LPCaptionBarButtonView *)self _menuButtonShowsChevron])
  {
    v23 = [v10 attributedTitle];
    v24 = v23 == 0;

    if (!v24)
    {
      v25 = [(LPButtonStyle *)self->_style menuFont];
      v26 = [v25 fontDescriptor];
      v61 = [v26 objectForKey:*MEMORY[0x1E69DB8E8]];

      v60 = [MEMORY[0x1E69DCAD8] _lp_configurationWithTextStyle:v61 weight:6 scale:1];
      v27 = objc_alloc(MEMORY[0x1E696AD40]);
      v28 = [v10 attributedTitle];
      v29 = [v27 initWithAttributedString:v28];

      v62 = objc_alloc_init(MEMORY[0x1E69DB7F0]);
      v30 = +[LPResources chevron];
      v31 = [v30 platformImage];
      v32 = [v31 imageWithConfiguration:v60];
      v33 = [v32 imageWithTintColor:v22];
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
    v36 = [MEMORY[0x1E69DC888] labelColor];
    [v10 setBaseForegroundColor:v36];

    v37 = [(LPButtonStyle *)self->_style menuBackgroundColor];
    [v10 setBaseBackgroundColor:v37];

    v38 = [v10 baseBackgroundColor];
    v39 = [MEMORY[0x1E69DC888] clearColor];
    v40 = [v38 isEqual:v39];

    if (v40)
    {
      v41 = [MEMORY[0x1E69DC888] tertiaryLabelColor];

      v42 = [v64 layer];
      [v42 setBorderWidth:1.0];

      v43 = [MEMORY[0x1E69DC888] _lp_systemFillColor];
      v44 = v43;
      v45 = [v43 CGColor];
      v46 = [v64 layer];
      [v46 setBorderColor:v45];

      v22 = v41;
    }

    if ([(LPCaptionBarButtonView *)self _menuButtonShowsIndicator])
    {
      [v10 set_lp_indicatorColor:v22];
      v65[0] = MEMORY[0x1E69E9820];
      v65[1] = 3221225472;
      v65[2] = __46__LPCaptionBarButtonView_configureMenuButton___block_invoke;
      v65[3] = &unk_1E7A37180;
      v22 = v22;
      v66 = v22;
      [v10 _dci_setIndicatorColorTransformer:v65];
    }
  }

  if ([(LPCaptionBarButtonView *)self _menuButtonShowsImages])
  {
    v47 = [v63 visibleImage];
    v48 = [v47 platformImage];
    [v10 setImage:v48];

    if (![(LPButtonStyle *)self->_style useSystemButtonAppearance])
    {
      v49 = [(LPCaptionBarButtonView *)self _menuButtonShowsSingleImage];
      style = self->_style;
      if (v49)
      {
        v51 = [(LPButtonStyle *)style symbolConfiguration];
        [v10 setPreferredSymbolConfigurationForImage:v51];
      }

      else
      {
        v52 = [(LPButtonStyle *)style menuFont];
        v53 = [v52 fontDescriptor];
        v51 = [v53 objectForKey:*MEMORY[0x1E69DB8E8]];

        v54 = [MEMORY[0x1E69DCAD8] configurationWithTextStyle:v51 scale:1];
        [v10 setPreferredSymbolConfigurationForImage:v54];
      }
    }

    [v10 setImagePadding:4.0];
  }

  [v64 setConfiguration:v10];
  if ([(LPCaptionBarButtonView *)self _menuButtonShowsSingleImage]|| [(LPButtonStyle *)self->_style prefersBehavioralStylePad])
  {
    [v64 setPreferredBehavioralStyle:1];
  }

  v55 = [(LPCaptionButtonPresentationProperties *)self->_properties actions];
  v56 = [v55 count] > 1;

  if (v56)
  {
    v57 = [(LPCaptionBarButtonView *)self createMenu];
    [v64 setMenu:v57];

    [v64 setShowsMenuAsPrimaryAction:1];
    [v64 setPreferredMenuElementOrder:2];
  }

  else
  {
    v58 = [v63 handler];
    v59 = v58 == 0;

    if (v59)
    {
      [v64 setUserInteractionEnabled:{-[LPButtonStyle enableUserInteractionForDecorativeButton](self->_style, "enableUserInteractionForDecorativeButton")}];
    }
  }
}

- (id)createUIActionsFromLPActionsWithHandler:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v19 = a3;
  v4 = MEMORY[0x1E695DF70];
  v5 = [(LPCaptionButtonPresentationProperties *)self->_properties actions];
  v6 = [v4 arrayWithCapacity:{objc_msgSend(v5, "count")}];

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
          v11 = [v10 image];
          v12 = [v11 platformImage];
        }

        else
        {
          v12 = 0;
        }

        v13 = MEMORY[0x1E69DC628];
        v14 = [v10 title];
        v20[0] = MEMORY[0x1E69E9820];
        v20[1] = 3221225472;
        v20[2] = __66__LPCaptionBarButtonView_createUIActionsFromLPActionsWithHandler___block_invoke;
        v20[3] = &unk_1E7A37818;
        v15 = v19;
        v20[4] = v10;
        v21 = v15;
        v16 = [v13 actionWithTitle:v14 image:v12 identifier:0 handler:v20];

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
  v2 = [(LPCaptionButtonPresentationProperties *)self->_properties actions];
  v3 = [v2 count] > 1;

  return v3;
}

- (BOOL)_menuButtonShowsChevron
{
  if (![(LPButtonStyle *)self->_style showsChevronForSingleAction])
  {
    return 0;
  }

  v3 = [(LPCaptionButtonPresentationProperties *)self->_properties actions];
  if ([v3 count] == 1)
  {
    v4 = [(LPCaptionButtonPresentationProperties *)self->_properties actions];
    v5 = [v4 firstObject];
    v6 = [v5 handler];
    v7 = v6 != 0;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)_menuButtonShowsSingleImage
{
  v3 = [(LPCaptionButtonPresentationProperties *)self->_properties actions];
  v4 = [v3 count];

  if (v4 != 1)
  {
    return 0;
  }

  v5 = [(LPCaptionButtonPresentationProperties *)self->_properties actions];
  v6 = [v5 firstObject];

  v7 = [v6 image];
  if (v7)
  {
    v8 = [v6 title];
    v9 = v8 == 0;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end