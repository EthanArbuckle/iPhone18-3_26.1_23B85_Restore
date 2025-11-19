@interface AVMobileContentTabSelectionView
- (AVMobileContentTabSelectionView)initWithStyleSheet:(id)a3;
- (AVMobileContentTabSelectionViewDelegate)delegate;
- (CGSize)intrinsicContentSize;
- (uint64_t)_scrollToRect:(double)a3 animated:(double)a4;
- (void)_contentTabPressed:(id)a3;
- (void)_scrollToFirstButtonIfPossibleAnimated:(uint64_t)a1;
- (void)_updateGradientFadeoutLocations;
- (void)_updateTabButtons;
- (void)didMoveToSuperview;
- (void)layoutMarginsDidChange;
- (void)layoutSubviews;
- (void)resetSelection;
- (void)selectTab:(id)a3 withReason:(unint64_t)a4;
- (void)setContentTabs:(id)a3;
- (void)setStyleSheet:(id)a3;
- (void)setUserInteractionEnabled:(BOOL)a3;
@end

@implementation AVMobileContentTabSelectionView

- (AVMobileContentTabSelectionViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_contentTabPressed:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(NSMutableArray *)self->_tabButtons indexOfObject:v4];
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = _AVLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v10 = 138412290;
      v11 = v4;
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
      v11 = v4;
      goto LABEL_12;
    }

LABEL_9:

    goto LABEL_10;
  }

  v8 = [(NSArray *)self->_contentTabs objectAtIndex:v7];
  v9 = [(AVMobileContentTabSelectionView *)self selectedTab];

  if (v8 == v9)
  {

    v8 = 0;
  }

  [(AVMobileContentTabSelectionView *)self selectTab:v8 withReason:0];

LABEL_10:
}

- (void)setUserInteractionEnabled:(BOOL)a3
{
  v3 = a3;
  v6.receiver = self;
  v6.super_class = AVMobileContentTabSelectionView;
  if ([(AVMobileContentTabSelectionView *)&v6 isUserInteractionEnabled]!= a3)
  {
    v5.receiver = self;
    v5.super_class = AVMobileContentTabSelectionView;
    [(AVMobileContentTabSelectionView *)&v5 setUserInteractionEnabled:v3];
    [(AVMobileContentTabSelectionView *)&self->super.super.super.isa _updateTabButtons];
  }
}

- (void)_updateTabButtons
{
  v64[2] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = a1;
    v2 = [a1 window];

    if (v2)
    {
      v3 = &OBJC_IVAR___AVCatalystTurboModePlaybackControlsPlaceholderView__overrideTransformForProminentPlayButton;
      v4 = [v1[51] count];
      v5 = &OBJC_IVAR___AVCatalystTurboModePlaybackControlsPlaceholderView__overrideTransformForProminentPlayButton;
      v6 = [v1[55] count];
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
        v46 = *MEMORY[0x1E69796E8];
        v9 = *MEMORY[0x1E69DB648];
        v47 = *MEMORY[0x1E69DDC70];
        v48 = v7;
        v57 = *MEMORY[0x1E69DB648];
        v58 = *MEMORY[0x1E69DB650];
        v56 = v1;
        do
        {
          if ([*(v1 + v5[359]) count] <= v8)
          {
            v10 = [*(v1 + v3[358]) lastObject];
            [v10 removeFromSuperview];
            [*(v1 + v3[358]) removeLastObject];
          }

          if ([*(v1 + v5[359]) count] > v8)
          {
            if ([*(v1 + v3[358]) count] <= v8)
            {
              v11 = [AVButton buttonWithAccessibilityIdentifier:&stru_1EFED57D8 accessibilityLabel:0 isFirstGeneration:0];
              [v11 setPointerStyleProvider:&__block_literal_global_18230];
              v12 = [MEMORY[0x1E69DC740] plainButtonConfiguration];
              [v12 setContentInsets:{5.0, 11.0, 5.0, 11.0}];
              v13 = [v11 layer];
              [v13 setBorderWidth:1.0];

              v14 = [v11 layer];
              [v14 setCornerRadius:7.0];

              v15 = [v11 layer];
              [v15 setCornerCurve:v46];

              [v11 setConfiguration:v12];
              [v11 addTarget:v1 action:sel__contentTabPressed_ forControlEvents:64];
              [v1[52] addSubview:v11];
              [*(v1 + v3[358]) addObject:v11];
            }

            v16 = [*(v1 + v5[359]) objectAtIndex:v8];
            v17 = [*(v1 + v3[358]) objectAtIndex:v8];
            v18 = v1;
            v19 = v16;
            v20 = [v18 styleSheet];
            v21 = [MEMORY[0x1E69DC888] blackColor];
            v52 = [MEMORY[0x1E69DC888] whiteColor];
            v22 = objc_alloc(MEMORY[0x1E696AD40]);
            v23 = [v19 displayName];
            v63[0] = v9;
            v54 = v20;
            v24 = [v20 contentTabLabelFont];
            v63[1] = v58;
            v64[0] = v24;
            v51 = v21;
            v64[1] = v21;
            v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v64 forKeys:v63 count:2];
            v26 = [v22 initWithString:v23 attributes:v25];

            v27 = [MEMORY[0x1E69DC888] whiteColor];
            v49 = [v27 CGColor];

            v28 = [v19 displayName];
            v29 = [v28 length];

            v50 = v29;
            if (v18[56] == v19)
            {
              v31 = v52;
              v32 = v54;
              v35 = v51;
            }

            else
            {
              v30 = [MEMORY[0x1E69DC888] whiteColor];

              v31 = [MEMORY[0x1E69DC888] clearColor];

              v61[0] = v57;
              v32 = v54;
              v33 = [v54 contentTabLabelFont];
              v61[1] = v58;
              v62[0] = v33;
              v62[1] = v30;
              v34 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v62 forKeys:v61 count:2];
              [v26 setAttributes:v34 range:{0, v29}];

              v35 = v30;
            }

            [v17 setAttributedTitle:v26 forState:0];
            v55 = [v56 isUserInteractionEnabled];
            if (v55)
            {
              v3 = &OBJC_IVAR___AVCatalystTurboModePlaybackControlsPlaceholderView__overrideTransformForProminentPlayButton;
              v36 = v49;
            }

            else
            {
              v37 = [MEMORY[0x1E69DC888] systemGrayColor];

              v53 = [MEMORY[0x1E69DC888] clearColor];

              v59[0] = v57;
              v38 = [v32 contentTabLabelFont];
              v59[1] = v58;
              v60[0] = v38;
              v60[1] = v37;
              v39 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v60 forKeys:v59 count:2];
              [v26 setAttributes:v39 range:{0, v50}];

              v40 = [MEMORY[0x1E69DC888] systemGrayColor];
              v36 = [v40 CGColor];

              [v17 setAttributedTitle:v26 forState:2];
              v31 = v53;
              v35 = v37;
              v3 = &OBJC_IVAR___AVCatalystTurboModePlaybackControlsPlaceholderView__overrideTransformForProminentPlayButton;
            }

            v41 = [v17 layer];
            [v41 setBorderColor:v36];

            v42 = v56[56] == v19;
            [v17 setMaximumContentSizeCategory:v47];
            [v17 setSelected:v42];
            [v17 setBackgroundColor:v31];
            [v17 setTintColor:v31];
            [v17 setEnabled:v55];
            v43 = [v19 displayName];
            [v17 setAccessibilityLabel:v43];

            v44 = [v19 accessibilityIdentifier];
            [v17 setAccessibilityIdentifier:v44];

            [v17 setHighlighted:0];
            v1 = v56;
            v9 = v57;
            v5 = &OBJC_IVAR___AVCatalystTurboModePlaybackControlsPlaceholderView__overrideTransformForProminentPlayButton;
            v7 = v48;
          }

          ++v8;
        }

        while (v7 != v8);
      }

      [v1 invalidateIntrinsicContentSize];
      v45 = [v1 superview];
      [v45 avkit_intrinsicContentSizeOfSubviewWasInvalidated:v1];

      [v1 setNeedsLayout];
    }
  }
}

id __69__AVMobileContentTabSelectionView__setupPointerInteractionForButton___block_invoke(uint64_t a1, void *a2)
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
  v25.receiver = self;
  v25.super_class = AVMobileContentTabSelectionView;
  [(AVMobileContentTabSelectionView *)&v25 layoutSubviews];
  v3 = [(AVMobileContentTabSelectionView *)self effectiveUserInterfaceLayoutDirection];
  [(AVMobileContentTabSelectionView *)self bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = *MEMORY[0x1E695F060];
  v12 = *(MEMORY[0x1E695F060] + 8);
  if ([(NSMutableArray *)self->_tabButtons count])
  {
    v14 = 0;
    do
    {
      v15 = [(NSMutableArray *)self->_tabButtons objectAtIndex:v14];
      [v15 intrinsicContentSize];
      if (v12 < v17)
      {
        v12 = v17;
      }

      v13 = v13 + v16;
      if (v14 != [(NSMutableArray *)self->_tabButtons count]- 1)
      {
        v13 = v13 + 10.0;
      }

      ++v14;
    }

    while (v14 < [(NSMutableArray *)self->_tabButtons count]);
  }

  [(UIScrollView *)self->_scrollingContentView setFrame:v5, v7, v9, v11];
  [(UIScrollView *)self->_scrollingContentView setContentSize:v13, v12];
  [(CAGradientLayer *)self->_gradientFadeoutLayer setFrame:v5, v7, v9, v11];
  if ([(NSMutableArray *)self->_tabButtons count])
  {
    v18 = 0;
    v19 = 0.0;
    do
    {
      v20 = [(NSMutableArray *)self->_tabButtons objectAtIndex:v18];
      [v20 intrinsicContentSize];
      v23 = v21;
      if (v18)
      {
        v19 = v19 + 10.0;
      }

      if (v11 >= v22)
      {
        v24 = v22;
      }

      else
      {
        v24 = v11;
      }

      [v20 avkit_setFrame:v3 inLayoutDirection:{v19, (v11 - v24) * 0.5, v21}];
      v19 = v19 + v23;

      ++v18;
    }

    while (v18 < [(NSMutableArray *)self->_tabButtons count]);
  }

  [(AVMobileContentTabSelectionView *)&self->super.super.super.isa _updateGradientFadeoutLocations];
}

- (void)_updateGradientFadeoutLocations
{
  v7[4] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    [a1 bounds];
    v7[0] = &unk_1EFF13290;
    v3 = (v2 + -30.0) / v2;
    v4 = [MEMORY[0x1E696AD98] numberWithDouble:30.0 / v2];
    v7[1] = v4;
    v5 = [MEMORY[0x1E696AD98] numberWithDouble:v3];
    v7[2] = v5;
    v7[3] = &unk_1EFF132A0;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:4];

    [a1[53] setLocations:v6];
  }
}

- (void)layoutMarginsDidChange
{
  v7.receiver = self;
  v7.super_class = AVMobileContentTabSelectionView;
  [(AVMobileContentTabSelectionView *)&v7 layoutMarginsDidChange];
  if (self)
  {
    if (self->_scrollingContentView)
    {
      v3 = *MEMORY[0x1E69DDCE0];
      v4 = *(MEMORY[0x1E69DDCE0] + 16);
      [(AVMobileContentTabSelectionView *)self layoutMargins];
      v6 = v5;
      [(AVMobileContentTabSelectionView *)self layoutMargins];
      [(UIScrollView *)self->_scrollingContentView setContentInset:v3, v6, v4];
    }
  }
}

- (CGSize)intrinsicContentSize
{
  v19 = *MEMORY[0x1E69E9840];
  v17.receiver = self;
  v17.super_class = AVMobileContentTabSelectionView;
  [(AVMobileContentTabSelectionView *)&v17 intrinsicContentSize];
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

  v11 = v4 + 5.0;
  v12 = *MEMORY[0x1E69DE788];
  result.height = v11;
  result.width = v12;
  return result;
}

- (void)didMoveToSuperview
{
  v16[4] = *MEMORY[0x1E69E9840];
  v15.receiver = self;
  v15.super_class = AVMobileContentTabSelectionView;
  [(AVMobileContentTabSelectionView *)&v15 didMoveToSuperview];
  if (self)
  {
    if (!self->_gradientFadeoutLayer)
    {
      v3 = [MEMORY[0x1E69DC888] blackColor];
      v4 = [v3 CGColor];

      v5 = [MEMORY[0x1E69DC888] clearColor];
      v6 = [v5 CGColor];

      v7 = objc_alloc_init(MEMORY[0x1E6979380]);
      gradientFadeoutLayer = self->_gradientFadeoutLayer;
      self->_gradientFadeoutLayer = v7;

      v9 = self->_gradientFadeoutLayer;
      v16[0] = v6;
      v16[1] = v4;
      v16[2] = v4;
      v16[3] = v6;
      v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:4];
      [(CAGradientLayer *)v9 setColors:v10];

      [(CAGradientLayer *)self->_gradientFadeoutLayer setStartPoint:0.0, 0.5];
      [(CAGradientLayer *)self->_gradientFadeoutLayer setEndPoint:1.0, 0.5];
      [(AVMobileContentTabSelectionView *)&self->super.super.super.isa _updateGradientFadeoutLocations];
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
      v14 = [(AVMobileContentTabSelectionView *)self layer];
      [v14 setMask:self->_gradientFadeoutLayer];

      [(AVMobileContentTabSelectionView *)self addSubview:self->_scrollingContentView];
    }
  }

  [(AVMobileContentTabSelectionView *)&self->super.super.super.isa _updateTabButtons];
  [AVMobileContentTabSelectionView _scrollToFirstButtonIfPossibleAnimated:?];
}

- (void)_scrollToFirstButtonIfPossibleAnimated:(uint64_t)a1
{
  if (a1 && [*(a1 + 408) count])
  {
    v6 = [*(a1 + 408) objectAtIndex:0];
    [v6 frame];
    [(AVMobileContentTabSelectionView *)a1 _scrollToRect:v2 animated:v3, v4, v5];
  }
}

- (uint64_t)_scrollToRect:(double)a3 animated:(double)a4
{
  if (*(result + 416))
  {
    v9 = result;
    result = CGRectEqualToRect(*&a2, *MEMORY[0x1E695F058]);
    if ((result & 1) == 0)
    {
      v10 = *(v9 + 416);

      return [v10 scrollRectToVisible:0 animated:{a2, a3, a4, a5}];
    }
  }

  return result;
}

- (void)resetSelection
{
  v13 = *MEMORY[0x1E69E9840];
  [(AVMobileContentTabSelectionView *)self selectTab:0 withReason:1];
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

    [(AVMobileContentTabSelectionView *)self setNeedsLayout];
  }
}

- (void)selectTab:(id)a3 withReason:(unint64_t)a4
{
  v7 = a3;
  v8 = v7;
  if (self->_selectedTab != v7)
  {
    v19 = v7;
    objc_storeStrong(&self->_selectedTab, a3);
    v9 = [(AVMobileContentTabSelectionView *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [v9 contentTabSelectionView:self didChangeSelectedTabTo:self->_selectedTab withReason:a4];
    }

    [(AVMobileContentTabSelectionView *)&self->super.super.super.isa _updateTabButtons];
    v7 = [(NSMutableArray *)self->_tabButtons count];
    v8 = v19;
    if (v7 && self->_selectedTab)
    {
      v10 = [(NSMutableArray *)self->_tabButtons objectAtIndex:[(NSArray *)self->_contentTabs indexOfObject:?]];
      [v10 frame];
      v12 = v11;
      v14 = v13;
      v16 = v15;
      v18 = v17;

      v7 = [(AVMobileContentTabSelectionView *)self _scrollToRect:v12 animated:v14, v16, v18];
      v8 = v19;
    }
  }

  MEMORY[0x1EEE66BB8](v7, v8);
}

- (void)setContentTabs:(id)a3
{
  if (self->_contentTabs != a3)
  {
    v4 = [MEMORY[0x1E695DEC8] arrayWithArray:?];
    contentTabs = self->_contentTabs;
    self->_contentTabs = v4;

    if (![(NSArray *)self->_contentTabs containsObject:self->_selectedTab])
    {
      [(AVMobileContentTabSelectionView *)self selectTab:0 withReason:1];
    }

    [(AVMobileContentTabSelectionView *)&self->super.super.super.isa _updateTabButtons];
    [AVMobileContentTabSelectionView _scrollToFirstButtonIfPossibleAnimated:?];
    [(AVMobileContentTabSelectionView *)self invalidateIntrinsicContentSize];
    v6 = [(AVMobileContentTabSelectionView *)self superview];
    [v6 avkit_intrinsicContentSizeOfSubviewWasInvalidated:self];
  }
}

- (void)setStyleSheet:(id)a3
{
  v5 = a3;
  if (self->_styleSheet != v5)
  {
    v7 = v5;
    objc_storeStrong(&self->_styleSheet, a3);
    [(AVMobileContentTabSelectionView *)&self->super.super.super.isa _updateTabButtons];
    [(AVMobileContentTabSelectionView *)self invalidateIntrinsicContentSize];
    v6 = [(AVMobileContentTabSelectionView *)self superview];
    [v6 avkit_intrinsicContentSizeOfSubviewWasInvalidated:self];

    v5 = v7;
  }
}

- (AVMobileContentTabSelectionView)initWithStyleSheet:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = AVMobileContentTabSelectionView;
  v6 = [(AVMobileContentTabSelectionView *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_styleSheet, a3);
    v8 = [MEMORY[0x1E695DF70] array];
    tabButtons = v7->_tabButtons;
    v7->_tabButtons = v8;

    [(AVMobileContentTabSelectionView *)v7 setInsetsLayoutMarginsFromSafeArea:0];
  }

  return v7;
}

@end