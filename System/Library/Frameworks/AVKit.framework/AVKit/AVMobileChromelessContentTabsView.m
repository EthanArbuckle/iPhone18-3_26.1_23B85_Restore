@interface AVMobileChromelessContentTabsView
- (AVMobileChromelessContentTabsTransitionState)transitionState;
- (AVMobileChromelessContentTabsView)initWithStyleSheet:(id)a3;
- (AVMobileChromelessContentTabsViewDelegate)delegate;
- (CGSize)intrinsicContentSize;
- (UIScrollViewDelegate)contentViewDelegate;
- (id)_updateContentTabsUserInteractionEnabledStateIfNeeded;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (void)_setupContentTabSelectionViewIfNeeded;
- (void)_setupContentTabsContentViewIfNeeded;
- (void)avkit_intrinsicContentSizeOfSubviewWasInvalidated:(id)a3;
- (void)contentTabSelectionView:(id)a3 didChangeSelectedTabTo:(id)a4 withReason:(unint64_t)a5;
- (void)didMoveToSuperview;
- (void)layoutMarginsDidChange;
- (void)layoutSubviews;
- (void)setContentTabs:(id)a3;
- (void)setContentViewDelegate:(id)a3;
- (void)setFadeDistance:(double)a3;
- (void)setTransitionState:(AVMobileChromelessContentTabsTransitionState *)a3;
- (void)setUserInteractionEnabled:(BOOL)a3;
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

- (void)contentTabSelectionView:(id)a3 didChangeSelectedTabTo:(id)a4 withReason:(unint64_t)a5
{
  v10 = a4;
  v7 = [(AVMobileChromelessContentTabsView *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [(AVMobileChromelessContentTabsView *)self delegate];
    [v9 contentTabsView:self didChangeContentTab:v10 withReason:a5];
  }
}

- (void)avkit_intrinsicContentSizeOfSubviewWasInvalidated:(id)a3
{
  if (self->_contentTabSelectionView == a3)
  {
    v5 = [(AVMobileChromelessContentTabsView *)self superview];
    [v5 avkit_intrinsicContentSizeOfSubviewWasInvalidated:self];

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
  if (a1)
  {
    if (!a1[62])
    {
      v2 = [a1 window];

      if (v2)
      {
        v3 = objc_alloc_init(AVMobileChromelessContentTabsContentView);
        v4 = a1[62];
        a1[62] = v3;

        v5 = [a1[62] scrollView];
        WeakRetained = objc_loadWeakRetained(a1 + 64);
        [v5 setDelegate:WeakRetained];

        [a1 addSubview:a1[62]];
      }
    }

    v7 = a1[62];
    if (v7)
    {
      v8 = [v7 scrollView];

      if (v8)
      {
        v10 = [a1[62] scrollView];
        v9 = objc_loadWeakRetained(a1 + 64);
        [v10 setDelegate:v9];
      }
    }
  }
}

- (void)_setupContentTabSelectionViewIfNeeded
{
  if (a1)
  {
    if (!*(a1 + 488))
    {
      v2 = [a1 window];

      if (v2)
      {
        v3 = [[AVMobileContentTabSelectionView alloc] initWithStyleSheet:*(a1 + 480)];
        v4 = *(a1 + 488);
        *(a1 + 488) = v3;

        [*(a1 + 488) setDelegate:a1];
        v5 = *(a1 + 488);

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
    [result[62] setUserInteractionEnabled:{objc_msgSend(result, "isUserInteractionEnabled")}];
    v2 = v1[61];
    v3 = [v1 isUserInteractionEnabled];

    return [v2 setUserInteractionEnabled:v3];
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

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  v12.receiver = self;
  v12.super_class = AVMobileChromelessContentTabsView;
  v5 = [(AVView *)&v12 hitTest:a4 withEvent:a3.x, a3.y];
  v6 = v5;
  if (v5 == self->_contentTabSelectionView)
  {
    v7 = 1;
  }

  else
  {
    v7 = [(AVMobileContentTabSelectionView *)v5 isDescendantOfView:?];
  }

  v8 = [(AVMobileChromelessContentTabsContentView *)self->_contentView scrollView];
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

- (void)setTransitionState:(AVMobileChromelessContentTabsTransitionState *)a3
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

    [(AVMobileChromelessContentTabsContentView *)self->_contentView setUpcomingContentTab:v11];
    [(AVMobileChromelessContentTabsContentView *)self->_contentView setActiveTabContentTab:v13 withChangingReason:transitionReason];
    if (v13)
    {
      [(AVMobileContentTabSelectionView *)self->_contentTabSelectionView selectTab:v13 withReason:2];
    }
  }

  upcomingContentTab = a3->upcomingContentTab;
}

- (void)setFadeDistance:(double)a3
{
  if (self->_fadeDistance != a3)
  {
    self->_fadeDistance = a3;
    [(AVMobileChromelessContentTabsView *)self setNeedsLayout];
  }
}

- (void)setUserInteractionEnabled:(BOOL)a3
{
  v3 = a3;
  v6.receiver = self;
  v6.super_class = AVMobileChromelessContentTabsView;
  if ([(AVMobileChromelessContentTabsView *)&v6 isUserInteractionEnabled]!= a3)
  {
    v5.receiver = self;
    v5.super_class = AVMobileChromelessContentTabsView;
    [(AVMobileChromelessContentTabsView *)&v5 setUserInteractionEnabled:v3];
    [(AVMobileChromelessContentTabsView *)&self->super.super.super.super.isa _updateContentTabsUserInteractionEnabledStateIfNeeded];
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
    [(AVMobileChromelessContentTabsView *)&self->super.super.super.super.isa _setupContentTabsContentViewIfNeeded];
    v6 = obj;
    contentView = self->_contentView;
    if (contentView)
    {
      v7 = [(AVMobileChromelessContentTabsContentView *)contentView scrollView];
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
    [(AVMobileChromelessContentTabsView *)self _setupContentTabSelectionViewIfNeeded];
    [(AVMobileChromelessContentTabsView *)&self->super.super.super.super.isa _setupContentTabsContentViewIfNeeded];
    [(AVMobileContentTabSelectionView *)self->_contentTabSelectionView setContentTabs:v6];
    v5 = [(AVMobileChromelessContentTabsContentView *)self->_contentView setContentTabs:v6];
  }

  MEMORY[0x1EEE66BE0](v5);
}

- (AVMobileChromelessContentTabsView)initWithStyleSheet:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = AVMobileChromelessContentTabsView;
  v6 = [(AVView *)&v11 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_styleSheet, a3);
    v8 = objc_alloc_init(MEMORY[0x1E695DEC8]);
    contentTabs = v7->_contentTabs;
    v7->_contentTabs = v8;

    [(AVMobileChromelessContentTabsView *)v7 setInsetsLayoutMarginsFromSafeArea:0];
  }

  return v7;
}

@end