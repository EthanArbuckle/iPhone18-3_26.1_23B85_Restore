@interface AVMobileGlassContentTabsView
- (AVMobileGlassContentTabsTransitionState)transitionState;
- (AVMobileGlassContentTabsView)initWithStyleSheet:(id)sheet;
- (AVMobileGlassContentTabsViewDelegate)delegate;
- (CGSize)intrinsicContentSize;
- (UIScrollViewDelegate)contentViewDelegate;
- (id)_updateContentTabsUserInteractionEnabledStateIfNeeded;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)_setUpContentTabSelectionViewIfNeeded;
- (void)_setUpContentTabsContentViewIfNeeded;
- (void)avkit_intrinsicContentSizeOfSubviewWasInvalidated:(id)invalidated;
- (void)contentTabSelectionView:(id)view didChangeSelectedTabTo:(id)to withReason:(unint64_t)reason;
- (void)didMoveToSuperview;
- (void)layoutMarginsDidChange;
- (void)layoutSubviews;
- (void)setAlpha:(double)alpha;
- (void)setBackgroundBlurActive:(BOOL)active;
- (void)setContentTabs:(id)tabs;
- (void)setContentViewAlpha:(double)alpha;
- (void)setContentViewDelegate:(id)delegate;
- (void)setTransitionState:(AVMobileGlassContentTabsTransitionState *)state;
- (void)setUserInteractionEnabled:(BOOL)enabled;
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

- (void)contentTabSelectionView:(id)view didChangeSelectedTabTo:(id)to withReason:(unint64_t)reason
{
  toCopy = to;
  if (self)
  {
    scrollView = [(AVMobileGlassContentTabsContentView *)self->_contentView scrollView];
    v8 = scrollView;
    if (!self->_scrollPocket && self->_contentTabSelectionView && scrollView != 0)
    {
      v10 = [objc_alloc(MEMORY[0x1E69DD6C0]) initWithScrollView:scrollView edge:1];
      scrollPocket = self->_scrollPocket;
      self->_scrollPocket = v10;

      [(AVMobileGlassContentTabSelectionView *)self->_contentTabSelectionView addInteraction:self->_scrollPocket];
    }
  }

  delegate = [(AVMobileGlassContentTabsView *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate contentTabsView:self didChangeContentTab:toCopy withReason:reason];
  }
}

- (void)updateBackgroundMaterial
{
  backgroundMaterialStyle = [(AVGlassBackedView *)self backgroundMaterialStyle];
  backgroundMaterialized = [(AVGlassBackedView *)self backgroundMaterialized];
  [(AVGlassBackedView *)self->_contentTabSelectionView setBackgroundMaterialStyle:backgroundMaterialStyle];
  contentTabSelectionView = self->_contentTabSelectionView;

  [(AVGlassBackedView *)contentTabSelectionView setBackgroundMaterialized:backgroundMaterialized];
}

- (void)avkit_intrinsicContentSizeOfSubviewWasInvalidated:(id)invalidated
{
  if (self->_contentTabSelectionView == invalidated)
  {
    superview = [(AVMobileGlassContentTabsView *)self superview];
    [superview avkit_intrinsicContentSizeOfSubviewWasInvalidated:self];

    [(AVMobileGlassContentTabsView *)self setNeedsLayout];
  }
}

- (void)setAlpha:(double)alpha
{
  v5.receiver = self;
  v5.super_class = AVMobileGlassContentTabsView;
  [(AVMobileGlassContentTabsView *)&v5 setAlpha:?];
  [(AVMobileGlassContentTabSelectionView *)self->_contentTabSelectionView setAlpha:alpha];
}

- (void)didMoveToSuperview
{
  v8.receiver = self;
  v8.super_class = AVMobileGlassContentTabsView;
  [(AVMobileGlassContentTabsView *)&v8 didMoveToSuperview];
  if (self)
  {
    window = [(AVMobileGlassContentTabsView *)self window];
    if (window)
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
  if (self)
  {
    if (!self[65])
    {
      window = [self window];

      if (window)
      {
        v3 = objc_alloc_init(AVMobileGlassContentTabsContentView);
        v4 = self[65];
        self[65] = v3;

        scrollView = [self[65] scrollView];
        WeakRetained = objc_loadWeakRetained(self + 69);
        [scrollView setDelegate:WeakRetained];

        [self addSubview:self[65]];
      }
    }

    scrollView2 = [self[65] scrollView];
    v7 = objc_loadWeakRetained(self + 69);
    [scrollView2 setDelegate:v7];
  }
}

- (void)_setUpContentTabSelectionViewIfNeeded
{
  if (self)
  {
    if (!*(self + 512))
    {
      window = [self window];

      if (window)
      {
        v3 = [[AVMobileGlassContentTabSelectionView alloc] initWithStyleSheet:*(self + 504)];
        v4 = *(self + 512);
        *(self + 512) = v3;

        [*(self + 512) setDelegate:self];
        v5 = *(self + 512);

        [self addSubview:v5];
      }
    }
  }
}

- (id)_updateContentTabsUserInteractionEnabledStateIfNeeded
{
  if (result)
  {
    v1 = result;
    isUserInteractionEnabled = [result isUserInteractionEnabled];
    [v1[65] setUserInteractionEnabled:isUserInteractionEnabled];
    v3 = v1[64];

    return [v3 setUserInteractionEnabled:isUserInteractionEnabled];
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
    isCompact = [(AVMobileGlassContentTabsView *)self isCompact];
    isCompact2 = [(AVMobileGlassContentTabsView *)self isCompact];
    v12 = 16.0;
    if (!isCompact2)
    {
      v12 = 0.0;
    }

    v13 = v8 + v12;
    v14 = v8 + v12 + 8.0;
    if (isCompact)
    {
      v15 = 0.0;
    }

    else
    {
      v15 = v14;
    }

    v16 = v6 - v14;
    if (isCompact)
    {
      v17 = v6;
    }

    else
    {
      v17 = v16;
    }

    [(AVMobileGlassContentTabsContentView *)self->_contentView setFrame:0.0, v15, v4, v17];
    delegate = [(AVMobileGlassContentTabsView *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      v19 = 0.0;
      if (isCompact)
      {
        v19 = v13;
      }

      [delegate contentTabsView:self didUpdateTopContentInset:v19];
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

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  v12.receiver = self;
  v12.super_class = AVMobileGlassContentTabsView;
  v5 = [(AVView *)&v12 hitTest:event withEvent:test.x, test.y];
  v6 = v5;
  if (v5 == self->_contentTabSelectionView)
  {
    v7 = 1;
  }

  else
  {
    v7 = [(AVMobileGlassContentTabSelectionView *)v5 isDescendantOfView:?];
  }

  scrollView = [(AVMobileGlassContentTabsContentView *)self->_contentView scrollView];
  if (([scrollView isTracking] & 1) == 0 && (objc_msgSend(scrollView, "isDragging") & 1) == 0)
  {
    v7 &= [scrollView isDecelerating];
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

- (void)setContentViewAlpha:(double)alpha
{
  if (self->_contentViewAlpha != alpha)
  {
    self->_contentViewAlpha = alpha;
    [(AVMobileGlassContentTabsContentView *)self->_contentView setAlpha:?];
  }
}

- (void)setTransitionState:(AVMobileGlassContentTabsTransitionState *)state
{
  p_transitionState = &self->_transitionState;
  __copy_assignment_8_8_s0_s8_t16w16(&self->_transitionState, state);
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

  upcomingContentTab = state->upcomingContentTab;
}

- (void)setBackgroundBlurActive:(BOOL)active
{
  if (self->_backgroundBlurActive != active)
  {
    self->_backgroundBlurActive = active;
    [(AVView *)self->_backgroundBlurEffectView setHidden:!active];
  }
}

- (void)setUserInteractionEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v6.receiver = self;
  v6.super_class = AVMobileGlassContentTabsView;
  if ([(AVMobileGlassContentTabsView *)&v6 isUserInteractionEnabled]!= enabled)
  {
    v5.receiver = self;
    v5.super_class = AVMobileGlassContentTabsView;
    [(AVMobileGlassContentTabsView *)&v5 setUserInteractionEnabled:enabledCopy];
    [(AVMobileGlassContentTabsView *)&self->super.super.super.super.super.isa _updateContentTabsUserInteractionEnabledStateIfNeeded];
  }
}

- (void)setContentViewDelegate:(id)delegate
{
  obj = delegate;
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
      scrollView = [(AVMobileGlassContentTabsContentView *)contentView scrollView];
      v8 = objc_loadWeakRetained(&self->_contentViewDelegate);
      [scrollView setDelegate:v8];

      v6 = obj;
    }
  }

  MEMORY[0x1EEE66BB8](contentView, v6);
}

- (void)setContentTabs:(id)tabs
{
  tabsCopy = tabs;
  if (self->_contentTabs != tabsCopy)
  {
    v6 = tabsCopy;
    objc_storeStrong(&self->_contentTabs, tabs);
    [(AVMobileGlassContentTabsView *)self _setUpContentTabSelectionViewIfNeeded];
    [(AVMobileGlassContentTabsView *)&self->super.super.super.super.super.isa _setUpContentTabsContentViewIfNeeded];
    [(AVMobileGlassContentTabSelectionView *)self->_contentTabSelectionView setContentTabs:v6];
    tabsCopy = [(AVMobileGlassContentTabsContentView *)self->_contentView setContentTabs:v6];
  }

  MEMORY[0x1EEE66BE0](tabsCopy);
}

- (AVMobileGlassContentTabsView)initWithStyleSheet:(id)sheet
{
  sheetCopy = sheet;
  v11.receiver = self;
  v11.super_class = AVMobileGlassContentTabsView;
  v6 = [(AVGlassBackedView *)&v11 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_styleSheet, sheet);
    v8 = objc_alloc_init(MEMORY[0x1E695DEC8]);
    contentTabs = v7->_contentTabs;
    v7->_contentTabs = v8;

    [(AVMobileGlassContentTabsView *)v7 setInsetsLayoutMarginsFromSafeArea:0];
  }

  return v7;
}

@end