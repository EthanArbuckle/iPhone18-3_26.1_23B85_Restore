@interface AVMobileChromelessContentTabsView
- (AVMobileChromelessContentTabsTransitionState)transitionState;
- (AVMobileChromelessContentTabsView)initWithStyleSheet:(id)sheet;
- (AVMobileChromelessContentTabsViewDelegate)delegate;
- (CGSize)intrinsicContentSize;
- (UIScrollViewDelegate)contentViewDelegate;
- (id)_updateContentTabsUserInteractionEnabledStateIfNeeded;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)_setupContentTabSelectionViewIfNeeded;
- (void)_setupContentTabsContentViewIfNeeded;
- (void)avkit_intrinsicContentSizeOfSubviewWasInvalidated:(id)invalidated;
- (void)contentTabSelectionView:(id)view didChangeSelectedTabTo:(id)to withReason:(unint64_t)reason;
- (void)didMoveToSuperview;
- (void)layoutMarginsDidChange;
- (void)layoutSubviews;
- (void)setContentTabs:(id)tabs;
- (void)setContentViewDelegate:(id)delegate;
- (void)setFadeDistance:(double)distance;
- (void)setTransitionState:(AVMobileChromelessContentTabsTransitionState *)state;
- (void)setUserInteractionEnabled:(BOOL)enabled;
@end

@implementation AVMobileChromelessContentTabsView

- (AVMobileChromelessContentTabsTransitionState)transitionState
{
  p_transitionState = &self->_transitionState;
  retstr->activeContentTab = self->_transitionState.activeContentTab;
  result = p_transitionState->upcomingContentTab;
  retstr->upcomingContentTab = result;
  *&retstr->transitionState = *&p_transitionState->transitionState;
  return result;
}

- (AVMobileChromelessContentTabsViewDelegate)delegate
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
  delegate = [(AVMobileChromelessContentTabsView *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    delegate2 = [(AVMobileChromelessContentTabsView *)self delegate];
    [delegate2 contentTabsView:self didChangeContentTab:toCopy withReason:reason];
  }
}

- (void)avkit_intrinsicContentSizeOfSubviewWasInvalidated:(id)invalidated
{
  if (self->_contentTabSelectionView == invalidated)
  {
    superview = [(AVMobileChromelessContentTabsView *)self superview];
    [superview avkit_intrinsicContentSizeOfSubviewWasInvalidated:self];

    [(AVMobileChromelessContentTabsView *)self setNeedsLayout];
  }
}

- (void)didMoveToSuperview
{
  v3.receiver = self;
  v3.super_class = AVMobileChromelessContentTabsView;
  [(AVMobileChromelessContentTabsView *)&v3 didMoveToSuperview];
  [(AVMobileChromelessContentTabsView *)&self->super.super.super.super.isa _setupContentTabsContentViewIfNeeded];
  [(AVMobileChromelessContentTabsView *)self _setupContentTabSelectionViewIfNeeded];
  [(AVMobileChromelessContentTabsView *)&self->super.super.super.super.isa _updateContentTabsUserInteractionEnabledStateIfNeeded];
}

- (void)_setupContentTabsContentViewIfNeeded
{
  if (self)
  {
    if (!self[62])
    {
      window = [self window];

      if (window)
      {
        v3 = objc_alloc_init(AVMobileChromelessContentTabsContentView);
        v4 = self[62];
        self[62] = v3;

        scrollView = [self[62] scrollView];
        WeakRetained = objc_loadWeakRetained(self + 64);
        [scrollView setDelegate:WeakRetained];

        [self addSubview:self[62]];
      }
    }

    v7 = self[62];
    if (v7)
    {
      scrollView2 = [v7 scrollView];

      if (scrollView2)
      {
        scrollView3 = [self[62] scrollView];
        v9 = objc_loadWeakRetained(self + 64);
        [scrollView3 setDelegate:v9];
      }
    }
  }
}

- (void)_setupContentTabSelectionViewIfNeeded
{
  if (self)
  {
    if (!*(self + 488))
    {
      window = [self window];

      if (window)
      {
        v3 = [[AVMobileContentTabSelectionView alloc] initWithStyleSheet:*(self + 480)];
        v4 = *(self + 488);
        *(self + 488) = v3;

        [*(self + 488) setDelegate:self];
        v5 = *(self + 488);

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
    [result[62] setUserInteractionEnabled:{objc_msgSend(result, "isUserInteractionEnabled")}];
    v2 = v1[61];
    isUserInteractionEnabled = [v1 isUserInteractionEnabled];

    return [v2 setUserInteractionEnabled:isUserInteractionEnabled];
  }

  return result;
}

- (void)layoutSubviews
{
  v21.receiver = self;
  v21.super_class = AVMobileChromelessContentTabsView;
  [(AVView *)&v21 layoutSubviews];
  [(AVMobileChromelessContentTabsContentView *)self->_contentView setNeedsLayout];
  [(AVMobileChromelessContentTabsView *)self bounds];
  v4 = v3;
  v6 = v5;
  [(AVMobileContentTabSelectionView *)self->_contentTabSelectionView intrinsicContentSize];
  v8 = v7;
  if (v6 >= v7 && ([(AVMobileContentTabSelectionView *)self->_contentTabSelectionView setFrame:0.0, 0.0, v4, v7], v6 > v8))
  {
    [(AVMobileContentTabSelectionView *)self->_contentTabSelectionView frame];
    v11 = v10;
    [(AVMobileChromelessContentTabsView *)self fadeDistance];
    v13 = v12 + v11;
    [(AVMobileChromelessContentTabsView *)self bounds];
    if (v14 <= v15)
    {
      v16 = 16.0;
    }

    else
    {
      v16 = 14.0;
    }

    v17 = v13 + v16;
    [(AVMobileChromelessContentTabsView *)self bounds];
    if (v18 <= v19)
    {
      v20 = 16.0;
    }

    else
    {
      v20 = 14.0;
    }

    [(AVMobileChromelessContentTabsContentView *)self->_contentView setFrame:0.0, v17, v4, v6 - v8 - v20];
    v9 = 0;
  }

  else
  {
    v9 = 1;
  }

  [(AVMobileContentTabSelectionView *)self->_contentTabSelectionView setHidden:v6 < v8];
  [(AVView *)self->_contentView setHidden:v9];
}

- (void)layoutMarginsDidChange
{
  v5.receiver = self;
  v5.super_class = AVMobileChromelessContentTabsView;
  [(AVMobileChromelessContentTabsView *)&v5 layoutMarginsDidChange];
  contentTabSelectionView = self->_contentTabSelectionView;
  [(AVMobileChromelessContentTabsView *)self layoutMargins];
  [(AVMobileContentTabSelectionView *)contentTabSelectionView setLayoutMargins:?];
  contentView = self->_contentView;
  [(AVMobileChromelessContentTabsView *)self layoutMargins];
  [(AVMobileChromelessContentTabsContentView *)contentView setLayoutMargins:?];
}

- (CGSize)intrinsicContentSize
{
  [(AVMobileContentTabSelectionView *)self->_contentTabSelectionView intrinsicContentSize];
  v3 = *MEMORY[0x1E69DE788];
  result.height = v2;
  result.width = v3;
  return result;
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  v12.receiver = self;
  v12.super_class = AVMobileChromelessContentTabsView;
  v5 = [(AVView *)&v12 hitTest:event withEvent:test.x, test.y];
  v6 = v5;
  if (v5 == self->_contentTabSelectionView)
  {
    v7 = 1;
  }

  else
  {
    v7 = [(AVMobileContentTabSelectionView *)v5 isDescendantOfView:?];
  }

  scrollView = [(AVMobileChromelessContentTabsContentView *)self->_contentView scrollView];
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

- (void)setTransitionState:(AVMobileChromelessContentTabsTransitionState *)state
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

    [(AVMobileChromelessContentTabsContentView *)self->_contentView setUpcomingContentTab:v11];
    [(AVMobileChromelessContentTabsContentView *)self->_contentView setActiveTabContentTab:v13 withChangingReason:transitionReason];
    if (v13)
    {
      [(AVMobileContentTabSelectionView *)self->_contentTabSelectionView selectTab:v13 withReason:2];
    }
  }

  upcomingContentTab = state->upcomingContentTab;
}

- (void)setFadeDistance:(double)distance
{
  if (self->_fadeDistance != distance)
  {
    self->_fadeDistance = distance;
    [(AVMobileChromelessContentTabsView *)self setNeedsLayout];
  }
}

- (void)setUserInteractionEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v6.receiver = self;
  v6.super_class = AVMobileChromelessContentTabsView;
  if ([(AVMobileChromelessContentTabsView *)&v6 isUserInteractionEnabled]!= enabled)
  {
    v5.receiver = self;
    v5.super_class = AVMobileChromelessContentTabsView;
    [(AVMobileChromelessContentTabsView *)&v5 setUserInteractionEnabled:enabledCopy];
    [(AVMobileChromelessContentTabsView *)&self->super.super.super.super.isa _updateContentTabsUserInteractionEnabledStateIfNeeded];
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
    [(AVMobileChromelessContentTabsView *)&self->super.super.super.super.isa _setupContentTabsContentViewIfNeeded];
    v6 = obj;
    contentView = self->_contentView;
    if (contentView)
    {
      scrollView = [(AVMobileChromelessContentTabsContentView *)contentView scrollView];
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
    [(AVMobileChromelessContentTabsView *)self _setupContentTabSelectionViewIfNeeded];
    [(AVMobileChromelessContentTabsView *)&self->super.super.super.super.isa _setupContentTabsContentViewIfNeeded];
    [(AVMobileContentTabSelectionView *)self->_contentTabSelectionView setContentTabs:v6];
    tabsCopy = [(AVMobileChromelessContentTabsContentView *)self->_contentView setContentTabs:v6];
  }

  MEMORY[0x1EEE66BE0](tabsCopy);
}

- (AVMobileChromelessContentTabsView)initWithStyleSheet:(id)sheet
{
  sheetCopy = sheet;
  v11.receiver = self;
  v11.super_class = AVMobileChromelessContentTabsView;
  v6 = [(AVView *)&v11 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_styleSheet, sheet);
    v8 = objc_alloc_init(MEMORY[0x1E695DEC8]);
    contentTabs = v7->_contentTabs;
    v7->_contentTabs = v8;

    [(AVMobileChromelessContentTabsView *)v7 setInsetsLayoutMarginsFromSafeArea:0];
  }

  return v7;
}

@end