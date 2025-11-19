@interface AVMobileGlassContentTabsView
- (AVMobileGlassContentTabsTransitionState)transitionState;
- (AVMobileGlassContentTabsView)initWithStyleSheet:(id)a3;
- (AVMobileGlassContentTabsViewDelegate)delegate;
- (CGSize)intrinsicContentSize;
- (UIScrollViewDelegate)contentViewDelegate;
- (id)_updateContentTabsUserInteractionEnabledStateIfNeeded;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (void)_setUpContentTabSelectionViewIfNeeded;
- (void)_setUpContentTabsContentViewIfNeeded;
- (void)avkit_intrinsicContentSizeOfSubviewWasInvalidated:(id)a3;
- (void)contentTabSelectionView:(id)a3 didChangeSelectedTabTo:(id)a4 withReason:(unint64_t)a5;
- (void)didMoveToSuperview;
- (void)layoutMarginsDidChange;
- (void)layoutSubviews;
- (void)setAlpha:(double)a3;
- (void)setBackgroundBlurActive:(BOOL)a3;
- (void)setContentTabs:(id)a3;
- (void)setContentViewAlpha:(double)a3;
- (void)setContentViewDelegate:(id)a3;
- (void)setTransitionState:(AVMobileGlassContentTabsTransitionState *)a3;
- (void)setUserInteractionEnabled:(BOOL)a3;
- (void)updateBackgroundMaterial;
@end

@implementation AVMobileGlassContentTabsView

- (AVMobileGlassContentTabsTransitionState)transitionState
{
  p_transitionState = &self->_transitionState;
  retstr->activeContentTab = self->_transitionState.activeContentTab;
  result = p_transitionState->upcomingContentTab;
  retstr->upcomingContentTab = result;
  *&retstr->transitionState = *&p_transitionState->transitionState;
  return result;
}

- (AVMobileGlassContentTabsViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (UIScrollViewDelegate)contentViewDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_contentViewDelegate);

  return WeakRetained;
}

- (void)contentTabSelectionView:(id)a3 didChangeSelectedTabTo:(id)a4 withReason:(unint64_t)a5
{
  v13 = a4;
  if (self)
  {
    v7 = [(AVMobileGlassContentTabsContentView *)self->_contentView scrollView];
    v8 = v7;
    if (!self->_scrollPocket && self->_contentTabSelectionView && v7 != 0)
    {
      v10 = [objc_alloc(MEMORY[0x1E69DD6C0]) initWithScrollView:v7 edge:1];
      scrollPocket = self->_scrollPocket;
      self->_scrollPocket = v10;

      [(AVMobileGlassContentTabSelectionView *)self->_contentTabSelectionView addInteraction:self->_scrollPocket];
    }
  }

  v12 = [(AVMobileGlassContentTabsView *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v12 contentTabsView:self didChangeContentTab:v13 withReason:a5];
  }
}

- (void)updateBackgroundMaterial
{
  v3 = [(AVGlassBackedView *)self backgroundMaterialStyle];
  v4 = [(AVGlassBackedView *)self backgroundMaterialized];
  [(AVGlassBackedView *)self->_contentTabSelectionView setBackgroundMaterialStyle:v3];
  contentTabSelectionView = self->_contentTabSelectionView;

  [(AVGlassBackedView *)contentTabSelectionView setBackgroundMaterialized:v4];
}

- (void)avkit_intrinsicContentSizeOfSubviewWasInvalidated:(id)a3
{
  if (self->_contentTabSelectionView == a3)
  {
    v5 = [(AVMobileGlassContentTabsView *)self superview];
    [v5 avkit_intrinsicContentSizeOfSubviewWasInvalidated:self];

    [(AVMobileGlassContentTabsView *)self setNeedsLayout];
  }
}

- (void)setAlpha:(double)a3
{
  v5.receiver = self;
  v5.super_class = AVMobileGlassContentTabsView;
  [(AVMobileGlassContentTabsView *)&v5 setAlpha:?];
  [(AVMobileGlassContentTabSelectionView *)self->_contentTabSelectionView setAlpha:a3];
}

- (void)didMoveToSuperview
{
  v8.receiver = self;
  v8.super_class = AVMobileGlassContentTabsView;
  [(AVMobileGlassContentTabsView *)&v8 didMoveToSuperview];
  if (self)
  {
    v3 = [(AVMobileGlassContentTabsView *)self window];
    if (v3)
    {
      backgroundBlurEffectView = self->_backgroundBlurEffectView;

      if (!backgroundBlurEffectView)
      {
        v5 = [AVMobileGlassBackgroundBlurGradientView alloc];
        v6 = [(AVView *)v5 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
        v7 = self->_backgroundBlurEffectView;
        self->_backgroundBlurEffectView = v6;

        [(AVMobileGlassBackgroundBlurGradientView *)self->_backgroundBlurEffectView setAutoresizingMask:0];
        [(AVView *)self->_backgroundBlurEffectView setIgnoresTouches:1];
        [(AVView *)self->_backgroundBlurEffectView setHidden:!self->_backgroundBlurActive];
        [(AVMobileGlassContentTabsView *)self insertSubview:self->_backgroundBlurEffectView atIndex:0];
      }
    }
  }

  [(AVMobileGlassContentTabsView *)&self->super.super.super.super.super.isa _setUpContentTabsContentViewIfNeeded];
  [(AVMobileGlassContentTabsView *)self _setUpContentTabSelectionViewIfNeeded];
  [(AVMobileGlassContentTabsView *)&self->super.super.super.super.super.isa _updateContentTabsUserInteractionEnabledStateIfNeeded];
}

- (void)_setUpContentTabsContentViewIfNeeded
{
  if (a1)
  {
    if (!a1[65])
    {
      v2 = [a1 window];

      if (v2)
      {
        v3 = objc_alloc_init(AVMobileGlassContentTabsContentView);
        v4 = a1[65];
        a1[65] = v3;

        v5 = [a1[65] scrollView];
        WeakRetained = objc_loadWeakRetained(a1 + 69);
        [v5 setDelegate:WeakRetained];

        [a1 addSubview:a1[65]];
      }
    }

    v8 = [a1[65] scrollView];
    v7 = objc_loadWeakRetained(a1 + 69);
    [v8 setDelegate:v7];
  }
}

- (void)_setUpContentTabSelectionViewIfNeeded
{
  if (a1)
  {
    if (!*(a1 + 512))
    {
      v2 = [a1 window];

      if (v2)
      {
        v3 = [[AVMobileGlassContentTabSelectionView alloc] initWithStyleSheet:*(a1 + 504)];
        v4 = *(a1 + 512);
        *(a1 + 512) = v3;

        [*(a1 + 512) setDelegate:a1];
        v5 = *(a1 + 512);

        [a1 addSubview:v5];
      }
    }
  }
}

- (id)_updateContentTabsUserInteractionEnabledStateIfNeeded
{
  if (result)
  {
    v1 = result;
    v2 = [result isUserInteractionEnabled];
    [v1[65] setUserInteractionEnabled:v2];
    v3 = v1[64];

    return [v3 setUserInteractionEnabled:v2];
  }

  return result;
}

- (void)layoutSubviews
{
  v20.receiver = self;
  v20.super_class = AVMobileGlassContentTabsView;
  [(AVView *)&v20 layoutSubviews];
  [(AVMobileGlassContentTabsView *)self bounds];
  v4 = v3;
  v6 = v5;
  [(AVMobileGlassBackgroundBlurGradientView *)self->_backgroundBlurEffectView setFrame:?];
  [(AVMobileGlassContentTabSelectionView *)self->_contentTabSelectionView intrinsicContentSize];
  v8 = v7;
  if (v6 >= v7 && ([(AVMobileGlassContentTabSelectionView *)self->_contentTabSelectionView setFrame:0.0, 0.0, v4, v7], v6 > v8))
  {
    v10 = [(AVMobileGlassContentTabsView *)self isCompact];
    v11 = [(AVMobileGlassContentTabsView *)self isCompact];
    v12 = 16.0;
    if (!v11)
    {
      v12 = 0.0;
    }

    v13 = v8 + v12;
    v14 = v8 + v12 + 8.0;
    if (v10)
    {
      v15 = 0.0;
    }

    else
    {
      v15 = v14;
    }

    v16 = v6 - v14;
    if (v10)
    {
      v17 = v6;
    }

    else
    {
      v17 = v16;
    }

    [(AVMobileGlassContentTabsContentView *)self->_contentView setFrame:0.0, v15, v4, v17];
    v18 = [(AVMobileGlassContentTabsView *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      v19 = 0.0;
      if (v10)
      {
        v19 = v13;
      }

      [v18 contentTabsView:self didUpdateTopContentInset:v19];
    }

    v9 = 0;
  }

  else
  {
    v9 = 1;
  }

  [(AVView *)self->_contentTabSelectionView setHidden:v6 < v8];
  [(AVView *)self->_contentView setHidden:v9];
}

- (void)layoutMarginsDidChange
{
  v5.receiver = self;
  v5.super_class = AVMobileGlassContentTabsView;
  [(AVMobileGlassContentTabsView *)&v5 layoutMarginsDidChange];
  contentTabSelectionView = self->_contentTabSelectionView;
  [(AVMobileGlassContentTabsView *)self layoutMargins];
  [(AVMobileGlassContentTabSelectionView *)contentTabSelectionView setLayoutMargins:?];
  contentView = self->_contentView;
  [(AVMobileGlassContentTabsView *)self layoutMargins];
  [(AVMobileGlassContentTabsContentView *)contentView setLayoutMargins:?];
}

- (CGSize)intrinsicContentSize
{
  [(AVMobileGlassContentTabSelectionView *)self->_contentTabSelectionView intrinsicContentSize];
  v3 = *MEMORY[0x1E69DE788];
  result.height = v2;
  result.width = v3;
  return result;
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  v12.receiver = self;
  v12.super_class = AVMobileGlassContentTabsView;
  v5 = [(AVView *)&v12 hitTest:a4 withEvent:a3.x, a3.y];
  v6 = v5;
  if (v5 == self->_contentTabSelectionView)
  {
    v7 = 1;
  }

  else
  {
    v7 = [(AVMobileGlassContentTabSelectionView *)v5 isDescendantOfView:?];
  }

  v8 = [(AVMobileGlassContentTabsContentView *)self->_contentView scrollView];
  if (([v8 isTracking] & 1) == 0 && (objc_msgSend(v8, "isDragging") & 1) == 0)
  {
    v7 &= [v8 isDecelerating];
  }

  if (v7)
  {
    v9 = 0;
  }

  else
  {
    v9 = v6;
  }

  v10 = v9;

  return v9;
}

- (void)setContentViewAlpha:(double)a3
{
  if (self->_contentViewAlpha != a3)
  {
    self->_contentViewAlpha = a3;
    [(AVMobileGlassContentTabsContentView *)self->_contentView setAlpha:?];
  }
}

- (void)setTransitionState:(AVMobileGlassContentTabsTransitionState *)a3
{
  p_transitionState = &self->_transitionState;
  __copy_assignment_8_8_s0_s8_t16w16(&self->_transitionState, a3);
  if (self)
  {
    v6 = p_transitionState->activeContentTab;
    v7 = p_transitionState->upcomingContentTab;
    transitionReason = p_transitionState->transitionReason;
    v9 = v6;
    v10 = v7;
    v11 = v10;
    if (v9)
    {
      v12 = 1;
    }

    else
    {
      v12 = v10 == 0;
    }

    v13 = v9;
    if (!v12)
    {
      v13 = v10;
    }

    [(AVMobileGlassContentTabsContentView *)self->_contentView setUpcomingContentTab:v11];
    [(AVMobileGlassContentTabsContentView *)self->_contentView setActiveTabContentTab:v13 withChangingReason:transitionReason];
    if (v13)
    {
      [(AVMobileGlassContentTabSelectionView *)self->_contentTabSelectionView selectTab:v13 withReason:2];
    }
  }

  upcomingContentTab = a3->upcomingContentTab;
}

- (void)setBackgroundBlurActive:(BOOL)a3
{
  if (self->_backgroundBlurActive != a3)
  {
    self->_backgroundBlurActive = a3;
    [(AVView *)self->_backgroundBlurEffectView setHidden:!a3];
  }
}

- (void)setUserInteractionEnabled:(BOOL)a3
{
  v3 = a3;
  v6.receiver = self;
  v6.super_class = AVMobileGlassContentTabsView;
  if ([(AVMobileGlassContentTabsView *)&v6 isUserInteractionEnabled]!= a3)
  {
    v5.receiver = self;
    v5.super_class = AVMobileGlassContentTabsView;
    [(AVMobileGlassContentTabsView *)&v5 setUserInteractionEnabled:v3];
    [(AVMobileGlassContentTabsView *)&self->super.super.super.super.super.isa _updateContentTabsUserInteractionEnabledStateIfNeeded];
  }
}

- (void)setContentViewDelegate:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_contentViewDelegate);

  v6 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_contentViewDelegate, obj);
    [(AVMobileGlassContentTabsView *)&self->super.super.super.super.super.isa _setUpContentTabsContentViewIfNeeded];
    v6 = obj;
    contentView = self->_contentView;
    if (contentView)
    {
      v7 = [(AVMobileGlassContentTabsContentView *)contentView scrollView];
      v8 = objc_loadWeakRetained(&self->_contentViewDelegate);
      [v7 setDelegate:v8];

      v6 = obj;
    }
  }

  MEMORY[0x1EEE66BB8](contentView, v6);
}

- (void)setContentTabs:(id)a3
{
  v5 = a3;
  if (self->_contentTabs != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_contentTabs, a3);
    [(AVMobileGlassContentTabsView *)self _setUpContentTabSelectionViewIfNeeded];
    [(AVMobileGlassContentTabsView *)&self->super.super.super.super.super.isa _setUpContentTabsContentViewIfNeeded];
    [(AVMobileGlassContentTabSelectionView *)self->_contentTabSelectionView setContentTabs:v6];
    v5 = [(AVMobileGlassContentTabsContentView *)self->_contentView setContentTabs:v6];
  }

  MEMORY[0x1EEE66BE0](v5);
}

- (AVMobileGlassContentTabsView)initWithStyleSheet:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = AVMobileGlassContentTabsView;
  v6 = [(AVGlassBackedView *)&v11 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_styleSheet, a3);
    v8 = objc_alloc_init(MEMORY[0x1E695DEC8]);
    contentTabs = v7->_contentTabs;
    v7->_contentTabs = v8;

    [(AVMobileGlassContentTabsView *)v7 setInsetsLayoutMarginsFromSafeArea:0];
  }

  return v7;
}

@end