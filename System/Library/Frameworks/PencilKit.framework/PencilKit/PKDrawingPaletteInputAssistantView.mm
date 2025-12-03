@interface PKDrawingPaletteInputAssistantView
- (BOOL)_useThreeButtonLayout;
- (BOOL)hasInputAssistantItems;
- (CGSize)intrinsicContentSize;
- (PKDrawingPaletteInputAssistantView)initWithFrame:(CGRect)frame;
- (double)_contentStackViewSpacing;
- (id)_topOrTrailingGroupViewButtons;
- (int64_t)_contentStackViewAlignment;
- (void)_notifyViewStateDidChange;
- (void)_updateContentOrientation;
- (void)_updateContentScalingFactor;
- (void)_updateContentViewSpacing;
- (void)_updateGroupViewContents;
- (void)_updateUI;
- (void)addViewStateObserver:(id)observer;
- (void)buttonDidChangeIntrinsicContentSize:(id)size;
- (void)removeViewStateObserver:(id)observer;
- (void)setButtons:(id)buttons;
- (void)setEdgeLocation:(unint64_t)location;
- (void)setEnableKeyboardButtons:(BOOL)buttons;
- (void)setScalingFactor:(double)factor;
- (void)setShouldShowKeyboardButton:(BOOL)button;
- (void)setShouldShowReturnKeyButton:(BOOL)button;
- (void)setUseCompactLayout:(BOOL)layout;
@end

@implementation PKDrawingPaletteInputAssistantView

- (PKDrawingPaletteInputAssistantView)initWithFrame:(CGRect)frame
{
  v23[2] = *MEMORY[0x1E69E9840];
  v22.receiver = self;
  v22.super_class = PKDrawingPaletteInputAssistantView;
  v3 = [(PKDrawingPaletteInputAssistantView *)&v22 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    v3->_scalingFactor = 1.0;
    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    viewStateObservers = v4->_viewStateObservers;
    v4->_viewStateObservers = weakObjectsHashTable;

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
    centerXAnchor = [(UIStackView *)v4->_contentStackView centerXAnchor];
    centerXAnchor2 = [(PKDrawingPaletteInputAssistantView *)v4 centerXAnchor];
    v16 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v23[0] = v16;
    centerYAnchor = [(UIStackView *)v4->_contentStackView centerYAnchor];
    centerYAnchor2 = [(PKDrawingPaletteInputAssistantView *)v4 centerYAnchor];
    v19 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
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
    contentStackView = [(PKDrawingPaletteInputAssistantView *)self contentStackView];
    [contentStackView systemLayoutSizeFittingSize:{*MEMORY[0x1E69DE090], *(MEMORY[0x1E69DE090] + 8)}];
    v5 = v4;
    v7 = v6;

    v8 = v5;
    v9 = v7;
  }

  else
  {
    _useThreeButtonLayout = [(PKDrawingPaletteInputAssistantView *)self _useThreeButtonLayout];
    edgeLocation = [(PKDrawingPaletteInputAssistantView *)self edgeLocation];
    if (_useThreeButtonLayout)
    {
      v12 = edgeLocation == 2 || edgeLocation == 8;
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

- (void)addViewStateObserver:(id)observer
{
  observerCopy = observer;
  viewStateObservers = [(PKDrawingPaletteInputAssistantView *)self viewStateObservers];
  [viewStateObservers addObject:observerCopy];
}

- (void)removeViewStateObserver:(id)observer
{
  observerCopy = observer;
  viewStateObservers = [(PKDrawingPaletteInputAssistantView *)self viewStateObservers];
  [viewStateObservers removeObject:observerCopy];
}

- (void)_notifyViewStateDidChange
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  viewStateObservers = [(PKDrawingPaletteInputAssistantView *)self viewStateObservers];
  v4 = [viewStateObservers countByEnumeratingWithState:&v8 objects:v12 count:16];
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
          objc_enumerationMutation(viewStateObservers);
        }

        [*(*(&v8 + 1) + 8 * v7++) paletteInputAssistantViewDidChangeViewState:self];
      }

      while (v5 != v7);
      v5 = [viewStateObservers countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (BOOL)hasInputAssistantItems
{
  buttons = [(PKDrawingPaletteInputAssistantView *)self buttons];
  v4 = [buttons count] || -[PKDrawingPaletteInputAssistantView shouldShowKeyboardButton](self, "shouldShowKeyboardButton") || -[PKDrawingPaletteInputAssistantView shouldShowReturnKeyButton](self, "shouldShowReturnKeyButton");

  return v4;
}

- (void)setButtons:(id)buttons
{
  v30 = *MEMORY[0x1E69E9840];
  buttonsCopy = buttons;
  buttons = self->_buttons;
  if (buttons != buttonsCopy)
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    buttonsCopy2 = buttons;
    v7 = [(NSArray *)buttonsCopy2 countByEnumeratingWithState:&v24 objects:v29 count:16];
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
            objc_enumerationMutation(buttonsCopy2);
          }

          v11 = *(*(&v24 + 1) + 8 * i);
          [v11 removeIntrinsicContentSizeObserver:self];
          [v11 removeFromSuperview];
        }

        v8 = [(NSArray *)buttonsCopy2 countByEnumeratingWithState:&v24 objects:v29 count:16];
      }

      while (v8);
    }

    v12 = [(NSArray *)buttonsCopy copy];
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

- (void)setUseCompactLayout:(BOOL)layout
{
  if (self->_useCompactLayout != layout)
  {
    self->_useCompactLayout = layout;
    [(PKDrawingPaletteInputAssistantView *)self _updateUI];

    [(PKDrawingPaletteInputAssistantView *)self _notifyViewStateDidChange];
  }
}

- (void)setShouldShowKeyboardButton:(BOOL)button
{
  if (self->_shouldShowKeyboardButton != button)
  {
    self->_shouldShowKeyboardButton = button;
    [(PKDrawingPaletteInputAssistantView *)self _updateUI];

    [(PKDrawingPaletteInputAssistantView *)self _notifyViewStateDidChange];
  }
}

- (void)setShouldShowReturnKeyButton:(BOOL)button
{
  if (self->_shouldShowReturnKeyButton != button)
  {
    self->_shouldShowReturnKeyButton = button;
    [(PKDrawingPaletteInputAssistantView *)self _updateUI];

    [(PKDrawingPaletteInputAssistantView *)self _notifyViewStateDidChange];
  }
}

- (void)setEnableKeyboardButtons:(BOOL)buttons
{
  if (self->_enableKeyboardButtons != buttons)
  {
    self->_enableKeyboardButtons = buttons;
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

    keyboardButton = [(PKDrawingPaletteInputAssistantView *)self keyboardButton];
    [keyboardButton addIntrinsicContentSizeObserver:self];
  }

  else if (![(PKDrawingPaletteInputAssistantView *)self shouldShowKeyboardButton])
  {
    keyboardButton2 = [(PKDrawingPaletteInputAssistantView *)self keyboardButton];

    if (keyboardButton2)
    {
      keyboardButton3 = [(PKDrawingPaletteInputAssistantView *)self keyboardButton];
      [keyboardButton3 removeFromSuperview];

      [(PKDrawingPaletteInputAssistantView *)self setKeyboardButton:0];
    }
  }

  keyboardButton4 = [(PKDrawingPaletteInputAssistantView *)self keyboardButton];

  if (keyboardButton4)
  {
    useCompactLayout = [(PKDrawingPaletteInputAssistantView *)self useCompactLayout];
    keyboardButton5 = [(PKDrawingPaletteInputAssistantView *)self keyboardButton];
    [keyboardButton5 setUseCompactLayout:useCompactLayout];

    enableKeyboardButtons = [(PKDrawingPaletteInputAssistantView *)self enableKeyboardButtons];
    keyboardButton6 = [(PKDrawingPaletteInputAssistantView *)self keyboardButton];
    [keyboardButton6 setEnableKeyboardToggle:enableKeyboardButtons];
  }

  if ([(PKDrawingPaletteInputAssistantView *)self shouldShowReturnKeyButton]&& ([(PKDrawingPaletteInputAssistantView *)self returnKeyButton], v13 = objc_claimAutoreleasedReturnValue(), v13, !v13))
  {
    v16 = +[PKPaletteButton returnKeyButton];
    [(PKDrawingPaletteInputAssistantView *)self setReturnKeyButton:v16];

    returnKeyButton = [(PKDrawingPaletteInputAssistantView *)self returnKeyButton];
    [returnKeyButton addIntrinsicContentSizeObserver:self];
  }

  else if (![(PKDrawingPaletteInputAssistantView *)self shouldShowReturnKeyButton])
  {
    returnKeyButton2 = [(PKDrawingPaletteInputAssistantView *)self returnKeyButton];

    if (returnKeyButton2)
    {
      returnKeyButton3 = [(PKDrawingPaletteInputAssistantView *)self returnKeyButton];
      [returnKeyButton3 removeFromSuperview];

      [(PKDrawingPaletteInputAssistantView *)self setReturnKeyButton:0];
    }
  }

  returnKeyButton4 = [(PKDrawingPaletteInputAssistantView *)self returnKeyButton];

  if (returnKeyButton4)
  {
    useCompactLayout2 = [(PKDrawingPaletteInputAssistantView *)self useCompactLayout];
    returnKeyButton5 = [(PKDrawingPaletteInputAssistantView *)self returnKeyButton];
    [returnKeyButton5 setUseCompactLayout:useCompactLayout2];

    enableKeyboardButtons2 = [(PKDrawingPaletteInputAssistantView *)self enableKeyboardButtons];
    returnKeyButton6 = [(PKDrawingPaletteInputAssistantView *)self returnKeyButton];
    [returnKeyButton6 setEnabled:enableKeyboardButtons2];
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
  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];
  v5 = [bundleIdentifier isEqualToString:@"com.apple.mobilenotes"];

  if (!v5 || [(PKDrawingPaletteInputAssistantView *)self useCompactLayout]|| ![(PKDrawingPaletteInputAssistantView *)self shouldShowKeyboardButton]|| ![(PKDrawingPaletteInputAssistantView *)self shouldShowReturnKeyButton])
  {
    return 0;
  }

  buttons = [(PKDrawingPaletteInputAssistantView *)self buttons];
  v7 = [buttons count] == 1;

  return v7;
}

- (void)_updateGroupViewContents
{
  v106 = *MEMORY[0x1E69E9840];
  buttons = [(PKDrawingPaletteInputAssistantView *)self buttons];
  v4 = [buttons count];

  if (v4)
  {
    v97 = 0u;
    v98 = 0u;
    v95 = 0u;
    v96 = 0u;
    buttons2 = [(PKDrawingPaletteInputAssistantView *)self buttons];
    v6 = [buttons2 countByEnumeratingWithState:&v95 objects:v105 count:16];
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
            objc_enumerationMutation(buttons2);
          }

          [*(*(&v95 + 1) + 8 * i) setUseCompactLayout:{-[PKDrawingPaletteInputAssistantView useCompactLayout](self, "useCompactLayout")}];
        }

        v7 = [buttons2 countByEnumeratingWithState:&v95 objects:v105 count:16];
      }

      while (v7);
    }

    topOrTrailingGroupView = [(PKDrawingPaletteInputAssistantView *)self topOrTrailingGroupView];
    [topOrTrailingGroupView removeAllButtons];

    bottomOrLeadingGroupView = [(PKDrawingPaletteInputAssistantView *)self bottomOrLeadingGroupView];
    [bottomOrLeadingGroupView removeAllButtons];

    keyboardButton = [(PKDrawingPaletteInputAssistantView *)self keyboardButton];
    [keyboardButton removeFromSuperview];

    returnKeyButton = [(PKDrawingPaletteInputAssistantView *)self returnKeyButton];
    [returnKeyButton removeFromSuperview];

    topOrTrailingGroupView2 = [(PKDrawingPaletteInputAssistantView *)self topOrTrailingGroupView];
    _topOrTrailingGroupViewButtons = [(PKDrawingPaletteInputAssistantView *)self _topOrTrailingGroupViewButtons];
    [topOrTrailingGroupView2 addButtonsFromArray:_topOrTrailingGroupViewButtons];

    if ([(PKDrawingPaletteInputAssistantView *)self useCompactLayout])
    {
      bottomOrLeadingGroupView2 = [(PKDrawingPaletteInputAssistantView *)self bottomOrLeadingGroupView];
      buttons3 = [(PKDrawingPaletteInputAssistantView *)self buttons];
      [bottomOrLeadingGroupView2 addButtonsFromArray:buttons3];
LABEL_29:

      goto LABEL_30;
    }

    _useThreeButtonLayout = [(PKDrawingPaletteInputAssistantView *)self _useThreeButtonLayout];
    topOrTrailingGroupView3 = [(PKDrawingPaletteInputAssistantView *)self topOrTrailingGroupView];
    v20 = topOrTrailingGroupView3;
    if (_useThreeButtonLayout)
    {
      [topOrTrailingGroupView3 removeAllButtons];

      keyboardButton2 = [(PKDrawingPaletteInputAssistantView *)self keyboardButton];
      [(PKDrawingPaletteInputAssistantView *)self addSubview:keyboardButton2];

      keyboardButton3 = [(PKDrawingPaletteInputAssistantView *)self keyboardButton];
      [keyboardButton3 setTranslatesAutoresizingMaskIntoConstraints:0];

      returnKeyButton2 = [(PKDrawingPaletteInputAssistantView *)self returnKeyButton];
      [(PKDrawingPaletteInputAssistantView *)self addSubview:returnKeyButton2];

      returnKeyButton3 = [(PKDrawingPaletteInputAssistantView *)self returnKeyButton];
      [returnKeyButton3 setTranslatesAutoresizingMaskIntoConstraints:0];

      buttons4 = [(PKDrawingPaletteInputAssistantView *)self buttons];
      bottomOrLeadingGroupView2 = [buttons4 lastObject];

      [bottomOrLeadingGroupView2 removeFromSuperview];
      [(PKDrawingPaletteInputAssistantView *)self addSubview:bottomOrLeadingGroupView2];
      [bottomOrLeadingGroupView2 setTranslatesAutoresizingMaskIntoConstraints:0];
      [(PKDrawingPaletteInputAssistantView *)self scalingFactor];
      v27 = v26 * 12.0;
      edgeLocation = [(PKDrawingPaletteInputAssistantView *)self edgeLocation];
      if (edgeLocation == 8 || edgeLocation == 2)
      {
        v69 = MEMORY[0x1E696ACD8];
        returnKeyButton4 = [(PKDrawingPaletteInputAssistantView *)self returnKeyButton];
        topAnchor = [returnKeyButton4 topAnchor];
        topAnchor2 = [(PKDrawingPaletteInputAssistantView *)self topAnchor];
        v94 = [topAnchor constraintGreaterThanOrEqualToAnchor:topAnchor2];
        v104[0] = v94;
        returnKeyButton5 = [(PKDrawingPaletteInputAssistantView *)self returnKeyButton];
        centerXAnchor = [returnKeyButton5 centerXAnchor];
        centerXAnchor2 = [(PKDrawingPaletteInputAssistantView *)self centerXAnchor];
        v92 = centerXAnchor;
        v90 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
        v104[1] = v90;
        returnKeyButton6 = [(PKDrawingPaletteInputAssistantView *)self returnKeyButton];
        bottomAnchor = [returnKeyButton6 bottomAnchor];
        keyboardButton4 = [(PKDrawingPaletteInputAssistantView *)self keyboardButton];
        [keyboardButton4 topAnchor];
        v86 = v88 = bottomAnchor;
        v85 = [bottomAnchor constraintEqualToAnchor:-v27 constant:?];
        v104[2] = v85;
        leadingAnchor = [bottomOrLeadingGroupView2 leadingAnchor];
        leadingAnchor2 = [(PKDrawingPaletteInputAssistantView *)self leadingAnchor];
        centerYAnchor = leadingAnchor;
        v82 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
        v104[3] = v82;
        trailingAnchor = [bottomOrLeadingGroupView2 trailingAnchor];
        centerXAnchor3 = [(PKDrawingPaletteInputAssistantView *)self centerXAnchor];
        trailingAnchor6 = trailingAnchor;
        v79 = [trailingAnchor constraintEqualToAnchor:centerXAnchor3 constant:-(v27 * 0.5)];
        v104[4] = v79;
        bottomAnchor2 = [bottomOrLeadingGroupView2 bottomAnchor];
        bottomAnchor3 = [(PKDrawingPaletteInputAssistantView *)self bottomAnchor];
        bottomAnchor8 = bottomAnchor2;
        returnKeyButton7 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3];
        v104[5] = returnKeyButton7;
        keyboardButton5 = [(PKDrawingPaletteInputAssistantView *)self keyboardButton];
        leadingAnchor3 = [keyboardButton5 leadingAnchor];
        centerXAnchor4 = [(PKDrawingPaletteInputAssistantView *)self centerXAnchor];
        keyboardButton9 = leadingAnchor3;
        v72 = [leadingAnchor3 constraintEqualToAnchor:centerXAnchor4 constant:v27 * 0.5];
        v104[6] = v72;
        keyboardButton6 = [(PKDrawingPaletteInputAssistantView *)self keyboardButton];
        trailingAnchor2 = [keyboardButton6 trailingAnchor];
        trailingAnchor3 = [(PKDrawingPaletteInputAssistantView *)self trailingAnchor];
        v38 = [trailingAnchor2 constraintEqualToAnchor:trailingAnchor3];
        v104[7] = v38;
        keyboardButton7 = [(PKDrawingPaletteInputAssistantView *)self keyboardButton];
        bottomAnchor4 = [keyboardButton7 bottomAnchor];
        bottomAnchor5 = [(PKDrawingPaletteInputAssistantView *)self bottomAnchor];
        v42 = [bottomAnchor4 constraintEqualToAnchor:bottomAnchor5];
        v104[8] = v42;
        v43 = [MEMORY[0x1E695DEC8] arrayWithObjects:v104 count:9];
        [v69 activateConstraints:v43];

        topAnchor3 = topAnchor;
        keyboardButton8 = returnKeyButton4;

        topAnchor4 = topAnchor2;
      }

      else
      {
        v71 = MEMORY[0x1E696ACD8];
        keyboardButton8 = [(PKDrawingPaletteInputAssistantView *)self keyboardButton];
        topAnchor3 = [keyboardButton8 topAnchor];
        topAnchor4 = [(PKDrawingPaletteInputAssistantView *)self topAnchor];
        v94 = [topAnchor3 constraintGreaterThanOrEqualToAnchor:topAnchor4];
        v103[0] = v94;
        returnKeyButton5 = [(PKDrawingPaletteInputAssistantView *)self keyboardButton];
        bottomAnchor6 = [returnKeyButton5 bottomAnchor];
        centerXAnchor2 = [(PKDrawingPaletteInputAssistantView *)self centerYAnchor];
        v92 = bottomAnchor6;
        v90 = [bottomAnchor6 constraintEqualToAnchor:centerXAnchor2 constant:-(v27 * 0.5)];
        v103[1] = v90;
        returnKeyButton6 = [(PKDrawingPaletteInputAssistantView *)self keyboardButton];
        trailingAnchor4 = [returnKeyButton6 trailingAnchor];
        keyboardButton4 = [(PKDrawingPaletteInputAssistantView *)self trailingAnchor];
        v88 = trailingAnchor4;
        v86 = [trailingAnchor4 constraintEqualToAnchor:keyboardButton4];
        v103[2] = v86;
        topAnchor5 = [bottomOrLeadingGroupView2 topAnchor];
        centerYAnchor = [(PKDrawingPaletteInputAssistantView *)self centerYAnchor];
        v85 = topAnchor5;
        leadingAnchor2 = [topAnchor5 constraintEqualToAnchor:centerYAnchor constant:v27 * 0.5];
        v103[3] = leadingAnchor2;
        trailingAnchor5 = [bottomOrLeadingGroupView2 trailingAnchor];
        trailingAnchor6 = [(PKDrawingPaletteInputAssistantView *)self trailingAnchor];
        v82 = trailingAnchor5;
        centerXAnchor3 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6];
        v103[4] = centerXAnchor3;
        bottomAnchor7 = [bottomOrLeadingGroupView2 bottomAnchor];
        bottomAnchor8 = [(PKDrawingPaletteInputAssistantView *)self bottomAnchor];
        v79 = bottomAnchor7;
        bottomAnchor3 = [bottomAnchor7 constraintLessThanOrEqualToAnchor:bottomAnchor8];
        v103[5] = bottomAnchor3;
        returnKeyButton7 = [(PKDrawingPaletteInputAssistantView *)self returnKeyButton];
        trailingAnchor7 = [returnKeyButton7 trailingAnchor];
        keyboardButton9 = [(PKDrawingPaletteInputAssistantView *)self keyboardButton];
        [keyboardButton9 leadingAnchor];
        centerXAnchor4 = keyboardButton5 = trailingAnchor7;
        v72 = [trailingAnchor7 constraintEqualToAnchor:-v27 constant:?];
        v103[6] = v72;
        keyboardButton6 = [(PKDrawingPaletteInputAssistantView *)self returnKeyButton];
        trailingAnchor2 = [keyboardButton6 centerYAnchor];
        trailingAnchor3 = [(PKDrawingPaletteInputAssistantView *)self centerYAnchor];
        v38 = [trailingAnchor2 constraintEqualToAnchor:trailingAnchor3];
        v103[7] = v38;
        keyboardButton7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v103 count:8];
        [v71 activateConstraints:keyboardButton7];
      }

      goto LABEL_30;
    }

    buttons5 = [(PKDrawingPaletteInputAssistantView *)self buttons];
    v48 = buttons5;
    if (v4 > 2)
    {
      if (v4 == 3)
      {
        v65 = [buttons5 subarrayWithRange:{0, 2}];
        [v20 addButtonsFromArray:v65];

        bottomOrLeadingGroupView2 = [(PKDrawingPaletteInputAssistantView *)self bottomOrLeadingGroupView];
        buttons3 = [(PKDrawingPaletteInputAssistantView *)self buttons];
        lastObject = [buttons3 lastObject];
        v100 = lastObject;
        v52 = MEMORY[0x1E695DEC8];
        v53 = &v100;
        goto LABEL_27;
      }

      if (v4 == 4)
      {
        v54 = [buttons5 subarrayWithRange:{0, 2}];
        [v20 addButtonsFromArray:v54];

        bottomOrLeadingGroupView2 = [(PKDrawingPaletteInputAssistantView *)self bottomOrLeadingGroupView];
        buttons3 = [(PKDrawingPaletteInputAssistantView *)self buttons];
        lastObject = [buttons3 subarrayWithRange:{2, 2}];
        [bottomOrLeadingGroupView2 addButtonsFromArray:lastObject];
LABEL_28:

        goto LABEL_29;
      }
    }

    else
    {
      if (v4 == 1)
      {
        [v20 addButtonsFromArray:buttons5];

        bottomOrLeadingGroupView2 = [(PKDrawingPaletteInputAssistantView *)self bottomOrLeadingGroupView];
        [bottomOrLeadingGroupView2 removeAllButtons];
LABEL_30:

        return;
      }

      if (v4 == 2)
      {
        firstObject = [buttons5 firstObject];
        v102 = firstObject;
        v50 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v102 count:1];
        [v20 addButtonsFromArray:v50];

        bottomOrLeadingGroupView2 = [(PKDrawingPaletteInputAssistantView *)self bottomOrLeadingGroupView];
        buttons3 = [(PKDrawingPaletteInputAssistantView *)self buttons];
        lastObject = [buttons3 lastObject];
        v101 = lastObject;
        v52 = MEMORY[0x1E695DEC8];
        v53 = &v101;
LABEL_27:
        v66 = [v52 arrayWithObjects:v53 count:1];
        [bottomOrLeadingGroupView2 addButtonsFromArray:v66];

        goto LABEL_28;
      }
    }

    v61 = [buttons5 subarrayWithRange:{0, 2}];
    [v20 addButtonsFromArray:v61];

    bottomOrLeadingGroupView3 = [(PKDrawingPaletteInputAssistantView *)self bottomOrLeadingGroupView];
    buttons6 = [(PKDrawingPaletteInputAssistantView *)self buttons];
    v64 = [buttons6 subarrayWithRange:{2, 1}];
    [bottomOrLeadingGroupView3 addButtonsFromArray:v64];

    bottomOrLeadingGroupView2 = [(PKDrawingPaletteInputAssistantView *)self bottomOrLeadingGroupView];
    buttons3 = [(PKDrawingPaletteInputAssistantView *)self buttons];
    lastObject = [buttons3 lastObject];
    v99 = lastObject;
    v52 = MEMORY[0x1E695DEC8];
    v53 = &v99;
    goto LABEL_27;
  }
}

- (id)_topOrTrailingGroupViewButtons
{
  array = [MEMORY[0x1E695DF70] array];
  if ([(PKDrawingPaletteInputAssistantView *)self useCompactLayout])
  {
    if ([(PKDrawingPaletteInputAssistantView *)self shouldShowKeyboardButton])
    {
      keyboardButton = [(PKDrawingPaletteInputAssistantView *)self keyboardButton];

      if (keyboardButton)
      {
        keyboardButton2 = [(PKDrawingPaletteInputAssistantView *)self keyboardButton];
        [array addObject:keyboardButton2];
      }
    }

    if ([(PKDrawingPaletteInputAssistantView *)self shouldShowReturnKeyButton])
    {
      returnKeyButton = [(PKDrawingPaletteInputAssistantView *)self returnKeyButton];

      if (returnKeyButton)
      {
        returnKeyButton2 = [(PKDrawingPaletteInputAssistantView *)self returnKeyButton];
        [array addObject:returnKeyButton2];
      }
    }
  }

  return array;
}

- (void)_updateContentOrientation
{
  v36 = *MEMORY[0x1E69E9840];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  contentStackView = [(PKDrawingPaletteInputAssistantView *)self contentStackView];
  arrangedSubviews = [contentStackView arrangedSubviews];
  v5 = [arrangedSubviews copy];

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
        contentStackView2 = [(PKDrawingPaletteInputAssistantView *)self contentStackView];
        [contentStackView2 removeArrangedSubview:v10];

        [v10 removeFromSuperview];
        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v7);
  }

  _contentStackViewAlignment = [(PKDrawingPaletteInputAssistantView *)self _contentStackViewAlignment];
  contentStackView3 = [(PKDrawingPaletteInputAssistantView *)self contentStackView];
  [contentStackView3 setAlignment:_contentStackViewAlignment];

  LODWORD(contentStackView3) = [(PKDrawingPaletteInputAssistantView *)self useCompactLayout];
  contentStackView4 = [(PKDrawingPaletteInputAssistantView *)self contentStackView];
  v15 = contentStackView4;
  if (!contentStackView3)
  {
    [contentStackView4 setAxis:1];

    contentStackView5 = [(PKDrawingPaletteInputAssistantView *)self contentStackView];
    topOrTrailingGroupView = [(PKDrawingPaletteInputAssistantView *)self topOrTrailingGroupView];
    [contentStackView5 addArrangedSubview:topOrTrailingGroupView];

    contentStackView6 = [(PKDrawingPaletteInputAssistantView *)self contentStackView];
    bottomOrLeadingGroupView = [(PKDrawingPaletteInputAssistantView *)self bottomOrLeadingGroupView];
    goto LABEL_14;
  }

  [contentStackView4 setAxis:0];

  topOrTrailingGroupView2 = [(PKDrawingPaletteInputAssistantView *)self topOrTrailingGroupView];
  [topOrTrailingGroupView2 setAxis:0];

  bottomOrLeadingGroupView2 = [(PKDrawingPaletteInputAssistantView *)self bottomOrLeadingGroupView];
  [bottomOrLeadingGroupView2 setAxis:0];

  bottomOrLeadingGroupView3 = [(PKDrawingPaletteInputAssistantView *)self bottomOrLeadingGroupView];
  buttons = [bottomOrLeadingGroupView3 buttons];
  v20 = [buttons count];

  if (v20)
  {
    contentStackView7 = [(PKDrawingPaletteInputAssistantView *)self contentStackView];
    bottomOrLeadingGroupView4 = [(PKDrawingPaletteInputAssistantView *)self bottomOrLeadingGroupView];
    [contentStackView7 addArrangedSubview:bottomOrLeadingGroupView4];
  }

  topOrTrailingGroupView3 = [(PKDrawingPaletteInputAssistantView *)self topOrTrailingGroupView];
  buttons2 = [topOrTrailingGroupView3 buttons];
  v25 = [buttons2 count];

  if (v25)
  {
    contentStackView6 = [(PKDrawingPaletteInputAssistantView *)self contentStackView];
    bottomOrLeadingGroupView = [(PKDrawingPaletteInputAssistantView *)self topOrTrailingGroupView];
LABEL_14:
    v30 = bottomOrLeadingGroupView;
    [contentStackView6 addArrangedSubview:bottomOrLeadingGroupView];
  }
}

- (void)_updateContentScalingFactor
{
  v26 = *MEMORY[0x1E69E9840];
  [(PKDrawingPaletteInputAssistantView *)self scalingFactor];
  v4 = v3;
  topOrTrailingGroupView = [(PKDrawingPaletteInputAssistantView *)self topOrTrailingGroupView];
  [topOrTrailingGroupView setScalingFactor:v4];

  [(PKDrawingPaletteInputAssistantView *)self scalingFactor];
  v7 = v6;
  bottomOrLeadingGroupView = [(PKDrawingPaletteInputAssistantView *)self bottomOrLeadingGroupView];
  [bottomOrLeadingGroupView setScalingFactor:v7];

  [(PKDrawingPaletteInputAssistantView *)self scalingFactor];
  v10 = v9;
  returnKeyButton = [(PKDrawingPaletteInputAssistantView *)self returnKeyButton];
  [returnKeyButton setScalingFactor:v10];

  [(PKDrawingPaletteInputAssistantView *)self scalingFactor];
  v13 = v12;
  keyboardButton = [(PKDrawingPaletteInputAssistantView *)self keyboardButton];
  [keyboardButton setScalingFactor:v13];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  buttons = [(PKDrawingPaletteInputAssistantView *)self buttons];
  v16 = [buttons countByEnumeratingWithState:&v21 objects:v25 count:16];
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
          objc_enumerationMutation(buttons);
        }

        v20 = *(*(&v21 + 1) + 8 * v19);
        [(PKDrawingPaletteInputAssistantView *)self scalingFactor];
        [v20 setScalingFactor:?];
        ++v19;
      }

      while (v17 != v19);
      v17 = [buttons countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v17);
  }
}

- (void)_updateContentViewSpacing
{
  [(PKDrawingPaletteInputAssistantView *)self _contentStackViewSpacing];
  v4 = v3;
  contentStackView = [(PKDrawingPaletteInputAssistantView *)self contentStackView];
  [contentStackView setSpacing:v4];
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

- (void)setEdgeLocation:(unint64_t)location
{
  if (self->_edgeLocation != location)
  {
    self->_edgeLocation = location;
    [(PKDrawingPaletteInputAssistantView *)self _updateContentOrientation];

    [(PKDrawingPaletteInputAssistantView *)self invalidateIntrinsicContentSize];
  }
}

- (void)setScalingFactor:(double)factor
{
  scalingFactor = self->_scalingFactor;
  if (scalingFactor != factor && vabdd_f64(scalingFactor, factor) >= fabs(factor * 0.000000999999997))
  {
    self->_scalingFactor = factor;
    [(PKDrawingPaletteInputAssistantView *)self _updateUI];

    [(PKDrawingPaletteInputAssistantView *)self _notifyViewStateDidChange];
  }
}

- (void)buttonDidChangeIntrinsicContentSize:(id)size
{
  [(PKDrawingPaletteInputAssistantView *)self _notifyViewStateDidChange];

  [(PKDrawingPaletteInputAssistantView *)self invalidateIntrinsicContentSize];
}

@end