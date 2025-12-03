@interface AVMobileGlassContentTabSelectionView
- (AVMobileGlassContentTabSelectionView)initWithStyleSheet:(id)sheet;
- (AVMobileGlassContentTabSelectionViewDelegate)delegate;
- (CGSize)intrinsicContentSize;
- (uint64_t)_scrollToRect:(double)rect animated:(double)animated;
- (void)_contentTabPressed:(id)pressed;
- (void)_scrollToFirstButtonIfPossibleAnimated:(uint64_t)animated;
- (void)_updateGradientFadeoutLocations;
- (void)_updateTabButtons;
- (void)didMoveToSuperview;
- (void)layoutMarginsDidChange;
- (void)layoutSubviews;
- (void)resetSelection;
- (void)selectTab:(id)tab withReason:(unint64_t)reason;
- (void)setContentTabs:(id)tabs;
- (void)setStyleSheet:(id)sheet;
- (void)setUserInteractionEnabled:(BOOL)enabled;
- (void)updateBackgroundMaterial;
@end

@implementation AVMobileGlassContentTabSelectionView

- (AVMobileGlassContentTabSelectionViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_contentTabPressed:(id)pressed
{
  v12 = *MEMORY[0x1E69E9840];
  pressedCopy = pressed;
  v5 = [(NSMutableArray *)self->_tabButtons indexOfObject:pressedCopy];
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = _AVLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v10 = 138412290;
      v11 = pressedCopy;
LABEL_12:
      _os_log_error_impl(&dword_18B49C000, v6, OS_LOG_TYPE_ERROR, "Error: Could not find button %@ in tap button list.", &v10, 0xCu);
      goto LABEL_9;
    }

    goto LABEL_9;
  }

  v7 = v5;
  if (v5 >= [(NSArray *)self->_contentTabs count])
  {
    v6 = _AVLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v10 = 138412290;
      v11 = pressedCopy;
      goto LABEL_12;
    }

LABEL_9:

    goto LABEL_10;
  }

  v8 = [(NSArray *)self->_contentTabs objectAtIndex:v7];
  selectedTab = [(AVMobileGlassContentTabSelectionView *)self selectedTab];

  if (v8 == selectedTab)
  {

    v8 = 0;
  }

  [(AVMobileGlassContentTabSelectionView *)self selectTab:v8 withReason:0];

LABEL_10:
}

- (void)updateBackgroundMaterial
{
  backgroundMaterialStyle = [(AVGlassBackedView *)self backgroundMaterialStyle];
  backgroundMaterialized = [(AVGlassBackedView *)self backgroundMaterialized];
  tabButtons = self->_tabButtons;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __64__AVMobileGlassContentTabSelectionView_updateBackgroundMaterial__block_invoke;
  v6[3] = &__block_descriptor_41_e36_v32__0__AVGlassBackedButton_8Q16_B24l;
  v6[4] = backgroundMaterialStyle;
  v7 = backgroundMaterialized;
  [(NSMutableArray *)tabButtons enumerateObjectsUsingBlock:v6];
}

void __64__AVMobileGlassContentTabSelectionView_updateBackgroundMaterial__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setBackgroundMaterialStyle:v3];
  [v4 setBackgroundMaterialized:*(a1 + 40)];
}

- (void)setUserInteractionEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v6.receiver = self;
  v6.super_class = AVMobileGlassContentTabSelectionView;
  if ([(AVMobileGlassContentTabSelectionView *)&v6 isUserInteractionEnabled]!= enabled)
  {
    v5.receiver = self;
    v5.super_class = AVMobileGlassContentTabSelectionView;
    [(AVMobileGlassContentTabSelectionView *)&v5 setUserInteractionEnabled:enabledCopy];
    [(AVMobileGlassContentTabSelectionView *)&self->super.super.super.super.super.isa _updateTabButtons];
  }
}

- (void)_updateTabButtons
{
  v61[2] = *MEMORY[0x1E69E9840];
  if (self)
  {
    window = [self window];

    if (window)
    {
      backgroundMaterialStyle = [self backgroundMaterialStyle];
      backgroundMaterialized = [self backgroundMaterialized];
      v3 = &OBJC_IVAR_____AVPlayerLayerView__pictureInPicturePlayerLayerView;
      v4 = [self[63] count];
      v5 = &OBJC_IVAR_____AVPlayerLayerView__pictureInPicturePlayerLayerView;
      v6 = [self[67] count];
      if (v4 <= v6)
      {
        v7 = v6;
      }

      else
      {
        v7 = v4;
      }

      if (v7 >= 1)
      {
        v8 = 0;
        v43 = sel__contentTabPressed_;
        v54 = *MEMORY[0x1E69DB648];
        v46 = *MEMORY[0x1E69DDC70];
        v47 = v7;
        v55 = *MEMORY[0x1E69DB650];
        do
        {
          if ([*(self + v5[325]) count] <= v8)
          {
            lastObject = [*(self + v3[324]) lastObject];
            [lastObject removeFromSuperview];
            [*(self + v3[324]) removeLastObject];
          }

          if ([*(self + v5[325]) count] > v8)
          {
            if ([*(self + v3[324]) count] <= v8)
            {
              v10 = [(AVButton *)AVGlassBackedButton buttonWithAccessibilityIdentifier:&stru_1EFED57D8 accessibilityLabel:0 isFirstGeneration:0];
              [v10 setPointerStyleProvider:&__block_literal_global_6967];
              [v10 setContentEdgeInsets:{5.0, 14.0, 5.0, 14.0}];
              [v10 addTarget:self action:v43 forControlEvents:64];
              [v10 setWantsCapsuleShape:1];
              [v10 setBackgroundMaterialStyle:backgroundMaterialStyle];
              [v10 setBackgroundMaterialized:backgroundMaterialized];
              [self[64] addSubview:v10];
              [*(self + v3[324]) addObject:v10];
            }

            v11 = [*(self + v5[325]) objectAtIndex:v8];
            v12 = [*(self + v3[324]) objectAtIndex:v8];
            v13 = v11;
            styleSheet = [self styleSheet];
            blackColor = [MEMORY[0x1E69DC888] blackColor];
            whiteColor = [MEMORY[0x1E69DC888] whiteColor];
            v16 = objc_alloc(MEMORY[0x1E696AD40]);
            displayName = [v13 displayName];
            v60[0] = v54;
            v50 = styleSheet;
            contentTabLabelFont = [styleSheet contentTabLabelFont];
            v60[1] = v55;
            v61[0] = contentTabLabelFont;
            v48 = blackColor;
            v61[1] = blackColor;
            v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v61 forKeys:v60 count:2];
            v20 = [v16 initWithString:displayName attributes:v19];

            whiteColor2 = [MEMORY[0x1E69DC888] whiteColor];
            cGColor = [whiteColor2 CGColor];

            displayName2 = [v13 displayName];
            v53 = [displayName2 length];

            v52 = v13;
            if (self[68] == v13)
            {
              clearColor = whiteColor;
              v26 = v50;
              whiteColor3 = v48;
            }

            else
            {
              whiteColor3 = [MEMORY[0x1E69DC888] whiteColor];

              clearColor = [MEMORY[0x1E69DC888] clearColor];

              v58[0] = v54;
              v26 = v50;
              contentTabLabelFont2 = [v50 contentTabLabelFont];
              v58[1] = v55;
              v59[0] = contentTabLabelFont2;
              v59[1] = whiteColor3;
              v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v59 forKeys:v58 count:2];
              [v20 setAttributes:v28 range:{0, v53}];
            }

            [v12 setAttributedTitle:v20 forState:0];
            isUserInteractionEnabled = [self isUserInteractionEnabled];
            if (isUserInteractionEnabled)
            {
              v30 = cGColor;
            }

            else
            {
              systemGrayColor = [MEMORY[0x1E69DC888] systemGrayColor];
              v32 = whiteColor3;
              whiteColor3 = systemGrayColor;

              clearColor2 = [MEMORY[0x1E69DC888] clearColor];

              v56[0] = v54;
              contentTabLabelFont3 = [v26 contentTabLabelFont];
              v56[1] = v55;
              v57[0] = contentTabLabelFont3;
              v57[1] = whiteColor3;
              v34 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v57 forKeys:v56 count:2];
              [v20 setAttributes:v34 range:{0, v53}];

              systemGrayColor2 = [MEMORY[0x1E69DC888] systemGrayColor];
              cGColor2 = [systemGrayColor2 CGColor];

              v30 = cGColor2;
              [v12 setAttributedTitle:v20 forState:2];
              clearColor = clearColor2;
            }

            v37 = whiteColor3;
            layer = [v12 layer];
            [layer setBorderColor:v30];

            v39 = self[68] == v52;
            [v12 setMaximumContentSizeCategory:v46];
            [v12 setSelected:v39];
            [v12 setBackgroundColor:clearColor];
            [v12 setTintColor:clearColor];
            [v12 setEnabled:isUserInteractionEnabled];
            displayName3 = [v52 displayName];
            [v12 setAccessibilityLabel:displayName3];

            accessibilityIdentifier = [v52 accessibilityIdentifier];
            [v12 setAccessibilityIdentifier:accessibilityIdentifier];

            [v12 setHighlighted:0];
            v3 = &OBJC_IVAR_____AVPlayerLayerView__pictureInPicturePlayerLayerView;
            v5 = &OBJC_IVAR_____AVPlayerLayerView__pictureInPicturePlayerLayerView;
            v7 = v47;
          }

          ++v8;
        }

        while (v7 != v8);
      }

      [self invalidateIntrinsicContentSize];
      superview = [self superview];
      [superview avkit_intrinsicContentSizeOfSubviewWasInvalidated:self];

      [self setNeedsLayout];
    }
  }
}

id __74__AVMobileGlassContentTabSelectionView__setupPointerInteractionForButton___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E69DD070];
  v3 = a2;
  v4 = [[v2 alloc] initWithView:v3];

  v5 = [MEMORY[0x1E69DCDB8] effectWithPreview:v4];
  v6 = [MEMORY[0x1E69DCDD0] styleWithEffect:v5 shape:0];

  return v6;
}

- (void)layoutSubviews
{
  v32.receiver = self;
  v32.super_class = AVMobileGlassContentTabSelectionView;
  [(AVView *)&v32 layoutSubviews];
  effectiveUserInterfaceLayoutDirection = [(AVMobileGlassContentTabSelectionView *)self effectiveUserInterfaceLayoutDirection];
  [(AVMobileGlassContentTabSelectionView *)self bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = *MEMORY[0x1E695F060];
  v12 = *(MEMORY[0x1E695F060] + 8);
  v14 = [(NSMutableArray *)self->_tabButtons count];
  v15 = v14;
  if (v14)
  {
    v16 = 0;
    v17 = v14;
    do
    {
      v18 = [(NSMutableArray *)self->_tabButtons objectAtIndex:v16];
      [v18 intrinsicContentSize];
      if (v12 < v20)
      {
        v12 = v20;
      }

      v21 = v13 + v19;
      if (--v17)
      {
        v13 = v21 + 8.0;
      }

      else
      {
        v13 = v21;
      }

      ++v16;
    }

    while (v17);
  }

  [(UIScrollView *)self->_scrollingContentView setFrame:v5, v7, v9, v11];
  [(UIScrollView *)self->_scrollingContentView setContentSize:v13, v12];
  [(CAGradientLayer *)self->_gradientFadeoutLayer setFrame:v5, v7, v9, v11];
  if (v15)
  {
    v22 = 0;
    v23 = 0.0;
    do
    {
      v24 = [(NSMutableArray *)self->_tabButtons objectAtIndex:v22];
      backgroundMaterialStyle = [v24 backgroundMaterialStyle];
      [v24 intrinsicContentSize];
      v28 = v27;
      if (backgroundMaterialStyle)
      {
        v29 = 14.0;
      }

      else
      {
        v29 = 0.0;
      }

      v30 = v26 + v29;
      if (v22)
      {
        v23 = v23 + 8.0;
      }

      if (v11 >= v30)
      {
        v31 = v30;
      }

      else
      {
        v31 = v11;
      }

      [v24 avkit_setFrame:effectiveUserInterfaceLayoutDirection inLayoutDirection:{v23, (v11 - v31) * 0.5, v28}];
      v23 = v23 + v28;

      ++v22;
    }

    while (v15 != v22);
  }

  [(AVMobileGlassContentTabSelectionView *)&self->super.super.super.super.super.isa _updateGradientFadeoutLocations];
}

- (void)_updateGradientFadeoutLocations
{
  v7[4] = *MEMORY[0x1E69E9840];
  if (self)
  {
    [self bounds];
    v7[0] = &unk_1EFF13200;
    v3 = (v2 + -30.0) / v2;
    v4 = [MEMORY[0x1E696AD98] numberWithDouble:30.0 / v2];
    v7[1] = v4;
    v5 = [MEMORY[0x1E696AD98] numberWithDouble:v3];
    v7[2] = v5;
    v7[3] = &unk_1EFF13210;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:4];

    [self[65] setLocations:v6];
  }
}

- (void)layoutMarginsDidChange
{
  v7.receiver = self;
  v7.super_class = AVMobileGlassContentTabSelectionView;
  [(AVMobileGlassContentTabSelectionView *)&v7 layoutMarginsDidChange];
  if (self)
  {
    if (self->_scrollingContentView)
    {
      v3 = *MEMORY[0x1E69DDCE0];
      v4 = *(MEMORY[0x1E69DDCE0] + 16);
      [(AVMobileGlassContentTabSelectionView *)self layoutMargins];
      v6 = v5;
      [(AVMobileGlassContentTabSelectionView *)self layoutMargins];
      [(UIScrollView *)self->_scrollingContentView setContentInset:v3, v6, v4];
    }
  }
}

- (CGSize)intrinsicContentSize
{
  v19 = *MEMORY[0x1E69E9840];
  v17.receiver = self;
  v17.super_class = AVMobileGlassContentTabSelectionView;
  [(AVMobileGlassContentTabSelectionView *)&v17 intrinsicContentSize];
  v4 = v3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = self->_tabButtons;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v13 + 1) + 8 * v9) intrinsicContentSize];
        if (v4 < v10)
        {
          v4 = v10;
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v18 count:16];
    }

    while (v7);
  }

  v11 = fmax(v4, 44.0);
  v12 = *MEMORY[0x1E69DE788];
  result.height = v11;
  result.width = v12;
  return result;
}

- (void)didMoveToSuperview
{
  v16[4] = *MEMORY[0x1E69E9840];
  v15.receiver = self;
  v15.super_class = AVMobileGlassContentTabSelectionView;
  [(AVMobileGlassContentTabSelectionView *)&v15 didMoveToSuperview];
  if (self)
  {
    if (!self->_gradientFadeoutLayer)
    {
      blackColor = [MEMORY[0x1E69DC888] blackColor];
      cGColor = [blackColor CGColor];

      clearColor = [MEMORY[0x1E69DC888] clearColor];
      cGColor2 = [clearColor CGColor];

      v7 = objc_alloc_init(MEMORY[0x1E6979380]);
      gradientFadeoutLayer = self->_gradientFadeoutLayer;
      self->_gradientFadeoutLayer = v7;

      v9 = self->_gradientFadeoutLayer;
      v16[0] = cGColor2;
      v16[1] = cGColor;
      v16[2] = cGColor;
      v16[3] = cGColor2;
      v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:4];
      [(CAGradientLayer *)v9 setColors:v10];

      [(CAGradientLayer *)self->_gradientFadeoutLayer setStartPoint:0.0, 0.5];
      [(CAGradientLayer *)self->_gradientFadeoutLayer setEndPoint:1.0, 0.5];
      [(AVMobileGlassContentTabSelectionView *)&self->super.super.super.super.super.isa _updateGradientFadeoutLocations];
    }

    if (!self->_scrollingContentView)
    {
      v11 = objc_alloc(MEMORY[0x1E69DCEF8]);
      v12 = [v11 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
      scrollingContentView = self->_scrollingContentView;
      self->_scrollingContentView = v12;

      [(UIScrollView *)self->_scrollingContentView setShowsVerticalScrollIndicator:0];
      [(UIScrollView *)self->_scrollingContentView setShowsHorizontalScrollIndicator:0];
      [(UIScrollView *)self->_scrollingContentView setContentOffset:-30.0, 0.0];
      layer = [(AVMobileGlassContentTabSelectionView *)self layer];
      [layer setMask:self->_gradientFadeoutLayer];

      [(AVMobileGlassContentTabSelectionView *)self addSubview:self->_scrollingContentView];
    }
  }

  [(AVMobileGlassContentTabSelectionView *)&self->super.super.super.super.super.isa _updateTabButtons];
  [AVMobileGlassContentTabSelectionView _scrollToFirstButtonIfPossibleAnimated:?];
}

- (void)_scrollToFirstButtonIfPossibleAnimated:(uint64_t)animated
{
  if (animated && [*(animated + 504) count])
  {
    v6 = [*(animated + 504) objectAtIndex:0];
    [v6 frame];
    [(AVMobileGlassContentTabSelectionView *)animated _scrollToRect:v2 animated:v3, v4, v5];
  }
}

- (uint64_t)_scrollToRect:(double)rect animated:(double)animated
{
  if (*(result + 512))
  {
    v9 = result;
    result = CGRectEqualToRect(*&a2, *MEMORY[0x1E695F058]);
    if ((result & 1) == 0)
    {
      v10 = *(v9 + 512);

      return [v10 scrollRectToVisible:0 animated:{a2, rect, animated, a5}];
    }
  }

  return result;
}

- (void)resetSelection
{
  v13 = *MEMORY[0x1E69E9840];
  [(AVMobileGlassContentTabSelectionView *)self selectTab:0 withReason:1];
  if (self)
  {
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    v3 = self->_tabButtons;
    v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
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

          [*(*(&v8 + 1) + 8 * v7++) setHighlighted:{0, v8}];
        }

        while (v5 != v7);
        v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
      }

      while (v5);
    }

    [(AVMobileGlassContentTabSelectionView *)self setNeedsLayout];
  }
}

- (void)selectTab:(id)tab withReason:(unint64_t)reason
{
  tabCopy = tab;
  v8 = tabCopy;
  if (self->_selectedTab != tabCopy)
  {
    v19 = tabCopy;
    objc_storeStrong(&self->_selectedTab, tab);
    delegate = [(AVMobileGlassContentTabSelectionView *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [delegate contentTabSelectionView:self didChangeSelectedTabTo:self->_selectedTab withReason:reason];
    }

    [(AVMobileGlassContentTabSelectionView *)&self->super.super.super.super.super.isa _updateTabButtons];
    tabCopy = [(NSMutableArray *)self->_tabButtons count];
    v8 = v19;
    if (tabCopy && self->_selectedTab)
    {
      v10 = [(NSMutableArray *)self->_tabButtons objectAtIndex:[(NSArray *)self->_contentTabs indexOfObject:?]];
      [v10 frame];
      v12 = v11;
      v14 = v13;
      v16 = v15;
      v18 = v17;

      tabCopy = [(AVMobileGlassContentTabSelectionView *)self _scrollToRect:v12 animated:v14, v16, v18];
      v8 = v19;
    }
  }

  MEMORY[0x1EEE66BB8](tabCopy, v8);
}

- (void)setContentTabs:(id)tabs
{
  if (self->_contentTabs != tabs)
  {
    v4 = [MEMORY[0x1E695DEC8] arrayWithArray:?];
    contentTabs = self->_contentTabs;
    self->_contentTabs = v4;

    if (![(NSArray *)self->_contentTabs containsObject:self->_selectedTab])
    {
      [(AVMobileGlassContentTabSelectionView *)self selectTab:0 withReason:1];
    }

    [(AVMobileGlassContentTabSelectionView *)&self->super.super.super.super.super.isa _updateTabButtons];
    [AVMobileGlassContentTabSelectionView _scrollToFirstButtonIfPossibleAnimated:?];
    [(AVMobileGlassContentTabSelectionView *)self invalidateIntrinsicContentSize];
    superview = [(AVMobileGlassContentTabSelectionView *)self superview];
    [superview avkit_intrinsicContentSizeOfSubviewWasInvalidated:self];
  }
}

- (void)setStyleSheet:(id)sheet
{
  sheetCopy = sheet;
  if (self->_styleSheet != sheetCopy)
  {
    v7 = sheetCopy;
    objc_storeStrong(&self->_styleSheet, sheet);
    [(AVMobileGlassContentTabSelectionView *)&self->super.super.super.super.super.isa _updateTabButtons];
    [(AVMobileGlassContentTabSelectionView *)self invalidateIntrinsicContentSize];
    superview = [(AVMobileGlassContentTabSelectionView *)self superview];
    [superview avkit_intrinsicContentSizeOfSubviewWasInvalidated:self];

    sheetCopy = v7;
  }
}

- (AVMobileGlassContentTabSelectionView)initWithStyleSheet:(id)sheet
{
  sheetCopy = sheet;
  v11.receiver = self;
  v11.super_class = AVMobileGlassContentTabSelectionView;
  v6 = [(AVMobileGlassContentTabSelectionView *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_styleSheet, sheet);
    array = [MEMORY[0x1E695DF70] array];
    tabButtons = v7->_tabButtons;
    v7->_tabButtons = array;

    [(AVMobileGlassContentTabSelectionView *)v7 setInsetsLayoutMarginsFromSafeArea:0];
  }

  return v7;
}

@end