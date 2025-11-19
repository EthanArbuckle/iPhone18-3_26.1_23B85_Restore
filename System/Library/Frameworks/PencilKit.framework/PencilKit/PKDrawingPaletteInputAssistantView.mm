@interface PKDrawingPaletteInputAssistantView
- (BOOL)_useThreeButtonLayout;
- (BOOL)hasInputAssistantItems;
- (CGSize)intrinsicContentSize;
- (PKDrawingPaletteInputAssistantView)initWithFrame:(CGRect)a3;
- (double)_contentStackViewSpacing;
- (id)_topOrTrailingGroupViewButtons;
- (int64_t)_contentStackViewAlignment;
- (void)_notifyViewStateDidChange;
- (void)_updateContentOrientation;
- (void)_updateContentScalingFactor;
- (void)_updateContentViewSpacing;
- (void)_updateGroupViewContents;
- (void)_updateUI;
- (void)addViewStateObserver:(id)a3;
- (void)buttonDidChangeIntrinsicContentSize:(id)a3;
- (void)removeViewStateObserver:(id)a3;
- (void)setButtons:(id)a3;
- (void)setEdgeLocation:(unint64_t)a3;
- (void)setEnableKeyboardButtons:(BOOL)a3;
- (void)setScalingFactor:(double)a3;
- (void)setShouldShowKeyboardButton:(BOOL)a3;
- (void)setShouldShowReturnKeyButton:(BOOL)a3;
- (void)setUseCompactLayout:(BOOL)a3;
@end

@implementation PKDrawingPaletteInputAssistantView

- (PKDrawingPaletteInputAssistantView)initWithFrame:(CGRect)a3
{
  v23[2] = *MEMORY[0x1E69E9840];
  v22.receiver = self;
  v22.super_class = PKDrawingPaletteInputAssistantView;
  v3 = [(PKDrawingPaletteInputAssistantView *)&v22 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v3->_scalingFactor = 1.0;
    v5 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    viewStateObservers = v4->_viewStateObservers;
    v4->_viewStateObservers = v5;

    v7 = objc_alloc_init(MEMORY[0x1E69DCF90]);
    contentStackView = v4->_contentStackView;
    v4->_contentStackView = v7;

    [(UIStackView *)v4->_contentStackView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIStackView *)v4->_contentStackView setAlignment:1];
    [(PKDrawingPaletteInputAssistantView *)v4 addSubview:v4->_contentStackView];
    v9 = objc_alloc_init(PKPaletteButtonGroupView);
    topOrTrailingGroupView = v4->_topOrTrailingGroupView;
    v4->_topOrTrailingGroupView = v9;

    [(PKPaletteButtonGroupView *)v4->_topOrTrailingGroupView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIStackView *)v4->_contentStackView addArrangedSubview:v4->_topOrTrailingGroupView];
    v11 = objc_alloc_init(PKPaletteButtonGroupView);
    bottomOrLeadingGroupView = v4->_bottomOrLeadingGroupView;
    v4->_bottomOrLeadingGroupView = v11;

    [(PKPaletteButtonGroupView *)v4->_bottomOrLeadingGroupView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIStackView *)v4->_contentStackView addArrangedSubview:v4->_bottomOrLeadingGroupView];
    v13 = MEMORY[0x1E696ACD8];
    v14 = [(UIStackView *)v4->_contentStackView centerXAnchor];
    v15 = [(PKDrawingPaletteInputAssistantView *)v4 centerXAnchor];
    v16 = [v14 constraintEqualToAnchor:v15];
    v23[0] = v16;
    v17 = [(UIStackView *)v4->_contentStackView centerYAnchor];
    v18 = [(PKDrawingPaletteInputAssistantView *)v4 centerYAnchor];
    v19 = [v17 constraintEqualToAnchor:v18];
    v23[1] = v19;
    v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:2];
    [v13 activateConstraints:v20];

    [(PKDrawingPaletteInputAssistantView *)v4 _updateUI];
  }

  return v4;
}

- (CGSize)intrinsicContentSize
{
  if ([(PKDrawingPaletteInputAssistantView *)self useCompactLayout])
  {
    v3 = [(PKDrawingPaletteInputAssistantView *)self contentStackView];
    [v3 systemLayoutSizeFittingSize:{*MEMORY[0x1E69DE090], *(MEMORY[0x1E69DE090] + 8)}];
    v5 = v4;
    v7 = v6;

    v8 = v5;
    v9 = v7;
  }

  else
  {
    v10 = [(PKDrawingPaletteInputAssistantView *)self _useThreeButtonLayout];
    v11 = [(PKDrawingPaletteInputAssistantView *)self edgeLocation];
    if (v10)
    {
      v12 = v11 == 2 || v11 == 8;
      if (v12)
      {
        v13 = 84.0;
      }

      else
      {
        v13 = 132.0;
      }

      if (v12)
      {
        v14 = 132.0;
      }

      else
      {
        v14 = 84.0;
      }

      [(PKDrawingPaletteInputAssistantView *)self scalingFactor];
      v16 = v13 * v15;
      v9 = v14 * v15;
    }

    else
    {
      [(PKDrawingPaletteInputAssistantView *)self scalingFactor];
      v16 = v17 * 84.0;
      [(PKDrawingPaletteInputAssistantView *)self scalingFactor];
      v9 = v18 * 84.0;
    }

    v8 = v16;
  }

  result.height = v9;
  result.width = v8;
  return result;
}

- (void)addViewStateObserver:(id)a3
{
  v4 = a3;
  v5 = [(PKDrawingPaletteInputAssistantView *)self viewStateObservers];
  [v5 addObject:v4];
}

- (void)removeViewStateObserver:(id)a3
{
  v4 = a3;
  v5 = [(PKDrawingPaletteInputAssistantView *)self viewStateObservers];
  [v5 removeObject:v4];
}

- (void)_notifyViewStateDidChange
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = [(PKDrawingPaletteInputAssistantView *)self viewStateObservers];
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v8 + 1) + 8 * v7++) paletteInputAssistantViewDidChangeViewState:self];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (BOOL)hasInputAssistantItems
{
  v3 = [(PKDrawingPaletteInputAssistantView *)self buttons];
  v4 = [v3 count] || -[PKDrawingPaletteInputAssistantView shouldShowKeyboardButton](self, "shouldShowKeyboardButton") || -[PKDrawingPaletteInputAssistantView shouldShowReturnKeyButton](self, "shouldShowReturnKeyButton");

  return v4;
}

- (void)setButtons:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = a3;
  buttons = self->_buttons;
  if (buttons != v4)
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v6 = buttons;
    v7 = [(NSArray *)v6 countByEnumeratingWithState:&v24 objects:v29 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v25;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v25 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v24 + 1) + 8 * i);
          [v11 removeIntrinsicContentSizeObserver:self];
          [v11 removeFromSuperview];
        }

        v8 = [(NSArray *)v6 countByEnumeratingWithState:&v24 objects:v29 count:16];
      }

      while (v8);
    }

    v12 = [(NSArray *)v4 copy];
    v13 = self->_buttons;
    self->_buttons = v12;

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v14 = self->_buttons;
    v15 = [(NSArray *)v14 countByEnumeratingWithState:&v20 objects:v28 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v21;
      do
      {
        for (j = 0; j != v16; ++j)
        {
          if (*v21 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v20 + 1) + 8 * j);
          [v19 removeFromSuperview];
          [v19 addIntrinsicContentSizeObserver:self];
        }

        v16 = [(NSArray *)v14 countByEnumeratingWithState:&v20 objects:v28 count:16];
      }

      while (v16);
    }

    [(PKDrawingPaletteInputAssistantView *)self _updateUI];
    [(PKDrawingPaletteInputAssistantView *)self _notifyViewStateDidChange];
  }
}

- (void)setUseCompactLayout:(BOOL)a3
{
  if (self->_useCompactLayout != a3)
  {
    self->_useCompactLayout = a3;
    [(PKDrawingPaletteInputAssistantView *)self _updateUI];

    [(PKDrawingPaletteInputAssistantView *)self _notifyViewStateDidChange];
  }
}

- (void)setShouldShowKeyboardButton:(BOOL)a3
{
  if (self->_shouldShowKeyboardButton != a3)
  {
    self->_shouldShowKeyboardButton = a3;
    [(PKDrawingPaletteInputAssistantView *)self _updateUI];

    [(PKDrawingPaletteInputAssistantView *)self _notifyViewStateDidChange];
  }
}

- (void)setShouldShowReturnKeyButton:(BOOL)a3
{
  if (self->_shouldShowReturnKeyButton != a3)
  {
    self->_shouldShowReturnKeyButton = a3;
    [(PKDrawingPaletteInputAssistantView *)self _updateUI];

    [(PKDrawingPaletteInputAssistantView *)self _notifyViewStateDidChange];
  }
}

- (void)setEnableKeyboardButtons:(BOOL)a3
{
  if (self->_enableKeyboardButtons != a3)
  {
    self->_enableKeyboardButtons = a3;
    [(PKDrawingPaletteInputAssistantView *)self _updateUI];

    [(PKDrawingPaletteInputAssistantView *)self _notifyViewStateDidChange];
  }
}

- (void)_updateUI
{
  if ([(PKDrawingPaletteInputAssistantView *)self shouldShowKeyboardButton]&& ([(PKDrawingPaletteInputAssistantView *)self keyboardButton], v3 = objc_claimAutoreleasedReturnValue(), v3, !v3))
  {
    v6 = +[PKPaletteButton keyboardButton];
    [(PKDrawingPaletteInputAssistantView *)self setKeyboardButton:v6];

    v7 = [(PKDrawingPaletteInputAssistantView *)self keyboardButton];
    [v7 addIntrinsicContentSizeObserver:self];
  }

  else if (![(PKDrawingPaletteInputAssistantView *)self shouldShowKeyboardButton])
  {
    v4 = [(PKDrawingPaletteInputAssistantView *)self keyboardButton];

    if (v4)
    {
      v5 = [(PKDrawingPaletteInputAssistantView *)self keyboardButton];
      [v5 removeFromSuperview];

      [(PKDrawingPaletteInputAssistantView *)self setKeyboardButton:0];
    }
  }

  v8 = [(PKDrawingPaletteInputAssistantView *)self keyboardButton];

  if (v8)
  {
    v9 = [(PKDrawingPaletteInputAssistantView *)self useCompactLayout];
    v10 = [(PKDrawingPaletteInputAssistantView *)self keyboardButton];
    [v10 setUseCompactLayout:v9];

    v11 = [(PKDrawingPaletteInputAssistantView *)self enableKeyboardButtons];
    v12 = [(PKDrawingPaletteInputAssistantView *)self keyboardButton];
    [v12 setEnableKeyboardToggle:v11];
  }

  if ([(PKDrawingPaletteInputAssistantView *)self shouldShowReturnKeyButton]&& ([(PKDrawingPaletteInputAssistantView *)self returnKeyButton], v13 = objc_claimAutoreleasedReturnValue(), v13, !v13))
  {
    v16 = +[PKPaletteButton returnKeyButton];
    [(PKDrawingPaletteInputAssistantView *)self setReturnKeyButton:v16];

    v17 = [(PKDrawingPaletteInputAssistantView *)self returnKeyButton];
    [v17 addIntrinsicContentSizeObserver:self];
  }

  else if (![(PKDrawingPaletteInputAssistantView *)self shouldShowReturnKeyButton])
  {
    v14 = [(PKDrawingPaletteInputAssistantView *)self returnKeyButton];

    if (v14)
    {
      v15 = [(PKDrawingPaletteInputAssistantView *)self returnKeyButton];
      [v15 removeFromSuperview];

      [(PKDrawingPaletteInputAssistantView *)self setReturnKeyButton:0];
    }
  }

  v18 = [(PKDrawingPaletteInputAssistantView *)self returnKeyButton];

  if (v18)
  {
    v19 = [(PKDrawingPaletteInputAssistantView *)self useCompactLayout];
    v20 = [(PKDrawingPaletteInputAssistantView *)self returnKeyButton];
    [v20 setUseCompactLayout:v19];

    v21 = [(PKDrawingPaletteInputAssistantView *)self enableKeyboardButtons];
    v22 = [(PKDrawingPaletteInputAssistantView *)self returnKeyButton];
    [v22 setEnabled:v21];
  }

  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __47__PKDrawingPaletteInputAssistantView__updateUI__block_invoke;
  v23[3] = &unk_1E82D7148;
  v23[4] = self;
  [MEMORY[0x1E69DD250] performWithoutAnimation:v23];
  [(PKDrawingPaletteInputAssistantView *)self invalidateIntrinsicContentSize];
  UIAccessibilityPostNotification(*MEMORY[0x1E69DD8E8], 0);
}

uint64_t __47__PKDrawingPaletteInputAssistantView__updateUI__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _updateContentViewSpacing];
  [*(a1 + 32) _updateGroupViewContents];
  [*(a1 + 32) _updateContentOrientation];
  [*(a1 + 32) _updateContentScalingFactor];
  v2 = *(a1 + 32);

  return [v2 layoutIfNeeded];
}

- (BOOL)_useThreeButtonLayout
{
  v3 = [MEMORY[0x1E696AAE8] mainBundle];
  v4 = [v3 bundleIdentifier];
  v5 = [v4 isEqualToString:@"com.apple.mobilenotes"];

  if (!v5 || [(PKDrawingPaletteInputAssistantView *)self useCompactLayout]|| ![(PKDrawingPaletteInputAssistantView *)self shouldShowKeyboardButton]|| ![(PKDrawingPaletteInputAssistantView *)self shouldShowReturnKeyButton])
  {
    return 0;
  }

  v6 = [(PKDrawingPaletteInputAssistantView *)self buttons];
  v7 = [v6 count] == 1;

  return v7;
}

- (void)_updateGroupViewContents
{
  v106 = *MEMORY[0x1E69E9840];
  v3 = [(PKDrawingPaletteInputAssistantView *)self buttons];
  v4 = [v3 count];

  if (v4)
  {
    v97 = 0u;
    v98 = 0u;
    v95 = 0u;
    v96 = 0u;
    v5 = [(PKDrawingPaletteInputAssistantView *)self buttons];
    v6 = [v5 countByEnumeratingWithState:&v95 objects:v105 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v96;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v96 != v8)
          {
            objc_enumerationMutation(v5);
          }

          [*(*(&v95 + 1) + 8 * i) setUseCompactLayout:{-[PKDrawingPaletteInputAssistantView useCompactLayout](self, "useCompactLayout")}];
        }

        v7 = [v5 countByEnumeratingWithState:&v95 objects:v105 count:16];
      }

      while (v7);
    }

    v10 = [(PKDrawingPaletteInputAssistantView *)self topOrTrailingGroupView];
    [v10 removeAllButtons];

    v11 = [(PKDrawingPaletteInputAssistantView *)self bottomOrLeadingGroupView];
    [v11 removeAllButtons];

    v12 = [(PKDrawingPaletteInputAssistantView *)self keyboardButton];
    [v12 removeFromSuperview];

    v13 = [(PKDrawingPaletteInputAssistantView *)self returnKeyButton];
    [v13 removeFromSuperview];

    v14 = [(PKDrawingPaletteInputAssistantView *)self topOrTrailingGroupView];
    v15 = [(PKDrawingPaletteInputAssistantView *)self _topOrTrailingGroupViewButtons];
    [v14 addButtonsFromArray:v15];

    if ([(PKDrawingPaletteInputAssistantView *)self useCompactLayout])
    {
      v16 = [(PKDrawingPaletteInputAssistantView *)self bottomOrLeadingGroupView];
      v17 = [(PKDrawingPaletteInputAssistantView *)self buttons];
      [v16 addButtonsFromArray:v17];
LABEL_29:

      goto LABEL_30;
    }

    v18 = [(PKDrawingPaletteInputAssistantView *)self _useThreeButtonLayout];
    v19 = [(PKDrawingPaletteInputAssistantView *)self topOrTrailingGroupView];
    v20 = v19;
    if (v18)
    {
      [v19 removeAllButtons];

      v21 = [(PKDrawingPaletteInputAssistantView *)self keyboardButton];
      [(PKDrawingPaletteInputAssistantView *)self addSubview:v21];

      v22 = [(PKDrawingPaletteInputAssistantView *)self keyboardButton];
      [v22 setTranslatesAutoresizingMaskIntoConstraints:0];

      v23 = [(PKDrawingPaletteInputAssistantView *)self returnKeyButton];
      [(PKDrawingPaletteInputAssistantView *)self addSubview:v23];

      v24 = [(PKDrawingPaletteInputAssistantView *)self returnKeyButton];
      [v24 setTranslatesAutoresizingMaskIntoConstraints:0];

      v25 = [(PKDrawingPaletteInputAssistantView *)self buttons];
      v16 = [v25 lastObject];

      [v16 removeFromSuperview];
      [(PKDrawingPaletteInputAssistantView *)self addSubview:v16];
      [v16 setTranslatesAutoresizingMaskIntoConstraints:0];
      [(PKDrawingPaletteInputAssistantView *)self scalingFactor];
      v27 = v26 * 12.0;
      v28 = [(PKDrawingPaletteInputAssistantView *)self edgeLocation];
      if (v28 == 8 || v28 == 2)
      {
        v69 = MEMORY[0x1E696ACD8];
        v70 = [(PKDrawingPaletteInputAssistantView *)self returnKeyButton];
        v67 = [v70 topAnchor];
        v68 = [(PKDrawingPaletteInputAssistantView *)self topAnchor];
        v94 = [v67 constraintGreaterThanOrEqualToAnchor:v68];
        v104[0] = v94;
        v93 = [(PKDrawingPaletteInputAssistantView *)self returnKeyButton];
        v29 = [v93 centerXAnchor];
        v91 = [(PKDrawingPaletteInputAssistantView *)self centerXAnchor];
        v92 = v29;
        v90 = [v29 constraintEqualToAnchor:v91];
        v104[1] = v90;
        v89 = [(PKDrawingPaletteInputAssistantView *)self returnKeyButton];
        v30 = [v89 bottomAnchor];
        v87 = [(PKDrawingPaletteInputAssistantView *)self keyboardButton];
        [v87 topAnchor];
        v86 = v88 = v30;
        v85 = [v30 constraintEqualToAnchor:-v27 constant:?];
        v104[2] = v85;
        v31 = [v16 leadingAnchor];
        v83 = [(PKDrawingPaletteInputAssistantView *)self leadingAnchor];
        v84 = v31;
        v82 = [v31 constraintEqualToAnchor:v83];
        v104[3] = v82;
        v32 = [v16 trailingAnchor];
        v80 = [(PKDrawingPaletteInputAssistantView *)self centerXAnchor];
        v81 = v32;
        v79 = [v32 constraintEqualToAnchor:v80 constant:-(v27 * 0.5)];
        v104[4] = v79;
        v33 = [v16 bottomAnchor];
        v77 = [(PKDrawingPaletteInputAssistantView *)self bottomAnchor];
        v78 = v33;
        v76 = [v33 constraintEqualToAnchor:v77];
        v104[5] = v76;
        v75 = [(PKDrawingPaletteInputAssistantView *)self keyboardButton];
        v34 = [v75 leadingAnchor];
        v73 = [(PKDrawingPaletteInputAssistantView *)self centerXAnchor];
        v74 = v34;
        v72 = [v34 constraintEqualToAnchor:v73 constant:v27 * 0.5];
        v104[6] = v72;
        v35 = [(PKDrawingPaletteInputAssistantView *)self keyboardButton];
        v36 = [v35 trailingAnchor];
        v37 = [(PKDrawingPaletteInputAssistantView *)self trailingAnchor];
        v38 = [v36 constraintEqualToAnchor:v37];
        v104[7] = v38;
        v39 = [(PKDrawingPaletteInputAssistantView *)self keyboardButton];
        v40 = [v39 bottomAnchor];
        v41 = [(PKDrawingPaletteInputAssistantView *)self bottomAnchor];
        v42 = [v40 constraintEqualToAnchor:v41];
        v104[8] = v42;
        v43 = [MEMORY[0x1E695DEC8] arrayWithObjects:v104 count:9];
        [v69 activateConstraints:v43];

        v44 = v67;
        v45 = v70;

        v46 = v68;
      }

      else
      {
        v71 = MEMORY[0x1E696ACD8];
        v45 = [(PKDrawingPaletteInputAssistantView *)self keyboardButton];
        v44 = [v45 topAnchor];
        v46 = [(PKDrawingPaletteInputAssistantView *)self topAnchor];
        v94 = [v44 constraintGreaterThanOrEqualToAnchor:v46];
        v103[0] = v94;
        v93 = [(PKDrawingPaletteInputAssistantView *)self keyboardButton];
        v55 = [v93 bottomAnchor];
        v91 = [(PKDrawingPaletteInputAssistantView *)self centerYAnchor];
        v92 = v55;
        v90 = [v55 constraintEqualToAnchor:v91 constant:-(v27 * 0.5)];
        v103[1] = v90;
        v89 = [(PKDrawingPaletteInputAssistantView *)self keyboardButton];
        v56 = [v89 trailingAnchor];
        v87 = [(PKDrawingPaletteInputAssistantView *)self trailingAnchor];
        v88 = v56;
        v86 = [v56 constraintEqualToAnchor:v87];
        v103[2] = v86;
        v57 = [v16 topAnchor];
        v84 = [(PKDrawingPaletteInputAssistantView *)self centerYAnchor];
        v85 = v57;
        v83 = [v57 constraintEqualToAnchor:v84 constant:v27 * 0.5];
        v103[3] = v83;
        v58 = [v16 trailingAnchor];
        v81 = [(PKDrawingPaletteInputAssistantView *)self trailingAnchor];
        v82 = v58;
        v80 = [v58 constraintEqualToAnchor:v81];
        v103[4] = v80;
        v59 = [v16 bottomAnchor];
        v78 = [(PKDrawingPaletteInputAssistantView *)self bottomAnchor];
        v79 = v59;
        v77 = [v59 constraintLessThanOrEqualToAnchor:v78];
        v103[5] = v77;
        v76 = [(PKDrawingPaletteInputAssistantView *)self returnKeyButton];
        v60 = [v76 trailingAnchor];
        v74 = [(PKDrawingPaletteInputAssistantView *)self keyboardButton];
        [v74 leadingAnchor];
        v73 = v75 = v60;
        v72 = [v60 constraintEqualToAnchor:-v27 constant:?];
        v103[6] = v72;
        v35 = [(PKDrawingPaletteInputAssistantView *)self returnKeyButton];
        v36 = [v35 centerYAnchor];
        v37 = [(PKDrawingPaletteInputAssistantView *)self centerYAnchor];
        v38 = [v36 constraintEqualToAnchor:v37];
        v103[7] = v38;
        v39 = [MEMORY[0x1E695DEC8] arrayWithObjects:v103 count:8];
        [v71 activateConstraints:v39];
      }

      goto LABEL_30;
    }

    v47 = [(PKDrawingPaletteInputAssistantView *)self buttons];
    v48 = v47;
    if (v4 > 2)
    {
      if (v4 == 3)
      {
        v65 = [v47 subarrayWithRange:{0, 2}];
        [v20 addButtonsFromArray:v65];

        v16 = [(PKDrawingPaletteInputAssistantView *)self bottomOrLeadingGroupView];
        v17 = [(PKDrawingPaletteInputAssistantView *)self buttons];
        v51 = [v17 lastObject];
        v100 = v51;
        v52 = MEMORY[0x1E695DEC8];
        v53 = &v100;
        goto LABEL_27;
      }

      if (v4 == 4)
      {
        v54 = [v47 subarrayWithRange:{0, 2}];
        [v20 addButtonsFromArray:v54];

        v16 = [(PKDrawingPaletteInputAssistantView *)self bottomOrLeadingGroupView];
        v17 = [(PKDrawingPaletteInputAssistantView *)self buttons];
        v51 = [v17 subarrayWithRange:{2, 2}];
        [v16 addButtonsFromArray:v51];
LABEL_28:

        goto LABEL_29;
      }
    }

    else
    {
      if (v4 == 1)
      {
        [v20 addButtonsFromArray:v47];

        v16 = [(PKDrawingPaletteInputAssistantView *)self bottomOrLeadingGroupView];
        [v16 removeAllButtons];
LABEL_30:

        return;
      }

      if (v4 == 2)
      {
        v49 = [v47 firstObject];
        v102 = v49;
        v50 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v102 count:1];
        [v20 addButtonsFromArray:v50];

        v16 = [(PKDrawingPaletteInputAssistantView *)self bottomOrLeadingGroupView];
        v17 = [(PKDrawingPaletteInputAssistantView *)self buttons];
        v51 = [v17 lastObject];
        v101 = v51;
        v52 = MEMORY[0x1E695DEC8];
        v53 = &v101;
LABEL_27:
        v66 = [v52 arrayWithObjects:v53 count:1];
        [v16 addButtonsFromArray:v66];

        goto LABEL_28;
      }
    }

    v61 = [v47 subarrayWithRange:{0, 2}];
    [v20 addButtonsFromArray:v61];

    v62 = [(PKDrawingPaletteInputAssistantView *)self bottomOrLeadingGroupView];
    v63 = [(PKDrawingPaletteInputAssistantView *)self buttons];
    v64 = [v63 subarrayWithRange:{2, 1}];
    [v62 addButtonsFromArray:v64];

    v16 = [(PKDrawingPaletteInputAssistantView *)self bottomOrLeadingGroupView];
    v17 = [(PKDrawingPaletteInputAssistantView *)self buttons];
    v51 = [v17 lastObject];
    v99 = v51;
    v52 = MEMORY[0x1E695DEC8];
    v53 = &v99;
    goto LABEL_27;
  }
}

- (id)_topOrTrailingGroupViewButtons
{
  v3 = [MEMORY[0x1E695DF70] array];
  if ([(PKDrawingPaletteInputAssistantView *)self useCompactLayout])
  {
    if ([(PKDrawingPaletteInputAssistantView *)self shouldShowKeyboardButton])
    {
      v4 = [(PKDrawingPaletteInputAssistantView *)self keyboardButton];

      if (v4)
      {
        v5 = [(PKDrawingPaletteInputAssistantView *)self keyboardButton];
        [v3 addObject:v5];
      }
    }

    if ([(PKDrawingPaletteInputAssistantView *)self shouldShowReturnKeyButton])
    {
      v6 = [(PKDrawingPaletteInputAssistantView *)self returnKeyButton];

      if (v6)
      {
        v7 = [(PKDrawingPaletteInputAssistantView *)self returnKeyButton];
        [v3 addObject:v7];
      }
    }
  }

  return v3;
}

- (void)_updateContentOrientation
{
  v36 = *MEMORY[0x1E69E9840];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v3 = [(PKDrawingPaletteInputAssistantView *)self contentStackView];
  v4 = [v3 arrangedSubviews];
  v5 = [v4 copy];

  v6 = [v5 countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v32;
    do
    {
      v9 = 0;
      do
      {
        if (*v32 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v31 + 1) + 8 * v9);
        v11 = [(PKDrawingPaletteInputAssistantView *)self contentStackView];
        [v11 removeArrangedSubview:v10];

        [v10 removeFromSuperview];
        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v7);
  }

  v12 = [(PKDrawingPaletteInputAssistantView *)self _contentStackViewAlignment];
  v13 = [(PKDrawingPaletteInputAssistantView *)self contentStackView];
  [v13 setAlignment:v12];

  LODWORD(v13) = [(PKDrawingPaletteInputAssistantView *)self useCompactLayout];
  v14 = [(PKDrawingPaletteInputAssistantView *)self contentStackView];
  v15 = v14;
  if (!v13)
  {
    [v14 setAxis:1];

    v28 = [(PKDrawingPaletteInputAssistantView *)self contentStackView];
    v29 = [(PKDrawingPaletteInputAssistantView *)self topOrTrailingGroupView];
    [v28 addArrangedSubview:v29];

    v26 = [(PKDrawingPaletteInputAssistantView *)self contentStackView];
    v27 = [(PKDrawingPaletteInputAssistantView *)self bottomOrLeadingGroupView];
    goto LABEL_14;
  }

  [v14 setAxis:0];

  v16 = [(PKDrawingPaletteInputAssistantView *)self topOrTrailingGroupView];
  [v16 setAxis:0];

  v17 = [(PKDrawingPaletteInputAssistantView *)self bottomOrLeadingGroupView];
  [v17 setAxis:0];

  v18 = [(PKDrawingPaletteInputAssistantView *)self bottomOrLeadingGroupView];
  v19 = [v18 buttons];
  v20 = [v19 count];

  if (v20)
  {
    v21 = [(PKDrawingPaletteInputAssistantView *)self contentStackView];
    v22 = [(PKDrawingPaletteInputAssistantView *)self bottomOrLeadingGroupView];
    [v21 addArrangedSubview:v22];
  }

  v23 = [(PKDrawingPaletteInputAssistantView *)self topOrTrailingGroupView];
  v24 = [v23 buttons];
  v25 = [v24 count];

  if (v25)
  {
    v26 = [(PKDrawingPaletteInputAssistantView *)self contentStackView];
    v27 = [(PKDrawingPaletteInputAssistantView *)self topOrTrailingGroupView];
LABEL_14:
    v30 = v27;
    [v26 addArrangedSubview:v27];
  }
}

- (void)_updateContentScalingFactor
{
  v26 = *MEMORY[0x1E69E9840];
  [(PKDrawingPaletteInputAssistantView *)self scalingFactor];
  v4 = v3;
  v5 = [(PKDrawingPaletteInputAssistantView *)self topOrTrailingGroupView];
  [v5 setScalingFactor:v4];

  [(PKDrawingPaletteInputAssistantView *)self scalingFactor];
  v7 = v6;
  v8 = [(PKDrawingPaletteInputAssistantView *)self bottomOrLeadingGroupView];
  [v8 setScalingFactor:v7];

  [(PKDrawingPaletteInputAssistantView *)self scalingFactor];
  v10 = v9;
  v11 = [(PKDrawingPaletteInputAssistantView *)self returnKeyButton];
  [v11 setScalingFactor:v10];

  [(PKDrawingPaletteInputAssistantView *)self scalingFactor];
  v13 = v12;
  v14 = [(PKDrawingPaletteInputAssistantView *)self keyboardButton];
  [v14 setScalingFactor:v13];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v15 = [(PKDrawingPaletteInputAssistantView *)self buttons];
  v16 = [v15 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v22;
    do
    {
      v19 = 0;
      do
      {
        if (*v22 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v21 + 1) + 8 * v19);
        [(PKDrawingPaletteInputAssistantView *)self scalingFactor];
        [v20 setScalingFactor:?];
        ++v19;
      }

      while (v17 != v19);
      v17 = [v15 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v17);
  }
}

- (void)_updateContentViewSpacing
{
  [(PKDrawingPaletteInputAssistantView *)self _contentStackViewSpacing];
  v4 = v3;
  v5 = [(PKDrawingPaletteInputAssistantView *)self contentStackView];
  [v5 setSpacing:v4];
}

- (int64_t)_contentStackViewAlignment
{
  if ([(PKDrawingPaletteInputAssistantView *)self useCompactLayout])
  {
    return 3;
  }

  else
  {
    return 1;
  }
}

- (double)_contentStackViewSpacing
{
  if (-[PKDrawingPaletteInputAssistantView useCompactLayout](self, "useCompactLayout") || (-[PKDrawingPaletteInputAssistantView buttons](self, "buttons"), v3 = objc_claimAutoreleasedReturnValue(), v4 = [v3 count], v3, result = 0.0, v4 >= 2))
  {
    [(PKDrawingPaletteInputAssistantView *)self scalingFactor];
    return v6 * 12.0;
  }

  return result;
}

- (void)setEdgeLocation:(unint64_t)a3
{
  if (self->_edgeLocation != a3)
  {
    self->_edgeLocation = a3;
    [(PKDrawingPaletteInputAssistantView *)self _updateContentOrientation];

    [(PKDrawingPaletteInputAssistantView *)self invalidateIntrinsicContentSize];
  }
}

- (void)setScalingFactor:(double)a3
{
  scalingFactor = self->_scalingFactor;
  if (scalingFactor != a3 && vabdd_f64(scalingFactor, a3) >= fabs(a3 * 0.000000999999997))
  {
    self->_scalingFactor = a3;
    [(PKDrawingPaletteInputAssistantView *)self _updateUI];

    [(PKDrawingPaletteInputAssistantView *)self _notifyViewStateDidChange];
  }
}

- (void)buttonDidChangeIntrinsicContentSize:(id)a3
{
  [(PKDrawingPaletteInputAssistantView *)self _notifyViewStateDidChange];

  [(PKDrawingPaletteInputAssistantView *)self invalidateIntrinsicContentSize];
}

@end