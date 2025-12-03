@interface AVMobileGlassContentTabsContentView
- (AVMobileGlassContentTabsContentView)init;
- (double)_contentOffsetForTab:(id *)tab;
- (id)_updateContentSize;
- (uint64_t)_indexForContentTab:(id *)tab;
- (void)_attachViewForContentTab:(id *)tab;
- (void)_updateActiveContentTabFrom:(void *)from to:(uint64_t)to withChangingReason:;
- (void)_updateContentTabViewFrame:(id *)frame;
- (void)_updateContentTabViewFrameHeight;
- (void)didMoveToSuperview;
- (void)layoutSubviews;
- (void)setActiveTabContentTab:(id)tab withChangingReason:(unint64_t)reason;
- (void)setBounds:(CGRect)bounds;
- (void)setContentTabs:(id)tabs;
- (void)setFrame:(CGRect)frame;
- (void)setUpcomingContentTab:(id)tab;
@end

@implementation AVMobileGlassContentTabsContentView

- (void)setFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v14.receiver = self;
  v14.super_class = AVMobileGlassContentTabsContentView;
  [(AVMobileGlassContentTabsContentView *)&v14 frame];
  v16.origin.x = v8;
  v16.origin.y = v9;
  v16.size.width = v10;
  v16.size.height = v11;
  v15.origin.x = x;
  v15.origin.y = y;
  v15.size.width = width;
  v15.size.height = height;
  v12 = CGRectEqualToRect(v15, v16);
  v13.receiver = self;
  v13.super_class = AVMobileGlassContentTabsContentView;
  [(AVMobileGlassContentTabsContentView *)&v13 setFrame:x, y, width, height];
  if (!v12)
  {
    [(AVMobileGlassContentTabsContentView *)self _updateContentTabViewFrameHeight];
  }
}

- (void)_updateContentTabViewFrameHeight
{
  if (self)
  {
    v2 = self[62];
    if (v2)
    {
      viewController = [v2 viewController];
      view = [viewController view];

      [view frame];
      v5 = v4;
      v7 = v6;
      v9 = v8;
      [self bounds];
      if (v9 >= v10)
      {
        v10 = v9;
      }

      [view setFrame:{v5, 0.0, v7, v10}];
    }
  }
}

- (void)setBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v14.receiver = self;
  v14.super_class = AVMobileGlassContentTabsContentView;
  [(AVMobileGlassContentTabsContentView *)&v14 bounds];
  v16.origin.x = v8;
  v16.origin.y = v9;
  v16.size.width = v10;
  v16.size.height = v11;
  v15.origin.x = x;
  v15.origin.y = y;
  v15.size.width = width;
  v15.size.height = height;
  v12 = CGRectEqualToRect(v15, v16);
  v13.receiver = self;
  v13.super_class = AVMobileGlassContentTabsContentView;
  [(AVMobileGlassContentTabsContentView *)&v13 setBounds:x, y, width, height];
  if (!v12)
  {
    [(AVMobileGlassContentTabsContentView *)self _updateContentTabViewFrameHeight];
  }
}

- (void)didMoveToSuperview
{
  v8.receiver = self;
  v8.super_class = AVMobileGlassContentTabsContentView;
  [(AVMobileGlassContentTabsContentView *)&v8 didMoveToSuperview];
  if (self)
  {
    window = [(AVMobileGlassContentTabsContentView *)self window];
    if (window)
    {
      scrollView = self->_scrollView;

      if (!scrollView)
      {
        v5 = objc_alloc(MEMORY[0x1E69DCEF8]);
        v6 = [v5 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
        v7 = self->_scrollView;
        self->_scrollView = v6;

        [(UIScrollView *)self->_scrollView setPagingEnabled:1];
        [(UIScrollView *)self->_scrollView setShowsHorizontalScrollIndicator:0];
        [(UIScrollView *)self->_scrollView setShowsVerticalScrollIndicator:0];
        [(UIScrollView *)self->_scrollView setContentInsetAdjustmentBehavior:2];
        [(AVMobileGlassContentTabsContentView *)self addSubview:self->_scrollView];
      }
    }
  }

  [(AVMobileGlassContentTabsContentView *)&self->super.super.super.super.isa _updateContentSize];
}

- (id)_updateContentSize
{
  if (result)
  {
    v1 = result;
    [result bounds];
    [v1[63] setContentSize:{v2 * objc_msgSend(v1[61], "count"), v3}];
    v4 = v1[63];

    return [v4 setNeedsLayout];
  }

  return result;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = AVMobileGlassContentTabsContentView;
  [(AVView *)&v3 layoutSubviews];
  if ([(UIScrollView *)self->_scrollView isTracking]|| [(UIScrollView *)self->_scrollView isDecelerating])
  {
    [(AVMobileGlassContentTabsContentView *)&self->super.super.super.super.isa _updateContentSize];
    [(AVMobileGlassContentTabsContentView *)&self->super.super.super.super.isa _updateContentTabViewFrame:?];
    [(UIScrollView *)self->_scrollView setContentOffset:[(AVMobileGlassContentTabsContentView *)&self->super.super.super.super.isa _contentOffsetForTab:?]];
  }

  [(AVMobileGlassContentTabsContentView *)self bounds];
  [(UIScrollView *)self->_scrollView setFrame:?];
}

- (void)_updateContentTabViewFrame:(id *)frame
{
  if (frame && a2)
  {
    v3 = a2;
    v4 = [(AVMobileGlassContentTabsContentView *)frame _indexForContentTab:v3];
    [frame bounds];
    v6 = v5;
    v8 = v7;
    [frame layoutMargins];
    v10 = v9 + v6 * v4;
    v12 = v6 - (v9 + v11);
    viewController = [v3 viewController];

    view = [viewController view];

    [view setFrame:{v10, 0.0, v12, v8}];
  }
}

- (double)_contentOffsetForTab:(id *)tab
{
  v3 = a2;
  v4 = *MEMORY[0x1E695EFF8];
  if (v3)
  {
    v5 = [(AVMobileGlassContentTabsContentView *)tab _indexForContentTab:v3];
    if (v5)
    {
      v6 = v5;
      [tab[63] bounds];
      v4 = v7 * v6;
    }
  }

  return v4;
}

- (uint64_t)_indexForContentTab:(id *)tab
{
  v3 = a2;
  v4 = [tab[61] indexOfObject:v3];
  if ([tab effectiveUserInterfaceLayoutDirection] == 1)
  {
    v4 = [tab[61] count] + ~v4;
  }

  return v4;
}

- (void)setContentTabs:(id)tabs
{
  tabsCopy = tabs;
  if (![(NSArray *)self->_contentTabs isEqualToArray:?])
  {
    v4 = [tabsCopy copy];
    contentTabs = self->_contentTabs;
    self->_contentTabs = v4;

    [(AVMobileGlassContentTabsContentView *)&self->super.super.super.super.isa _updateContentSize];
  }
}

- (void)setUpcomingContentTab:(id)tab
{
  tabCopy = tab;
  v6 = tabCopy;
  if (self->_upcomingContentTab != tabCopy)
  {
    v7 = tabCopy;
    objc_storeStrong(&self->_upcomingContentTab, tab);
    tabCopy = [(UIScrollView *)self->_scrollView isTracking];
    v6 = v7;
    if (tabCopy)
    {
      [(AVMobileGlassContentTabsContentView *)&self->super.super.super.super.isa _updateContentSize];
      [(AVMobileGlassContentTabsContentView *)&self->super.super.super.super.isa _updateContentTabViewFrame:?];
      [(UIScrollView *)self->_scrollView setContentOffset:[(AVMobileGlassContentTabsContentView *)&self->super.super.super.super.isa _contentOffsetForTab:?]];
      [(AVMobileGlassContentTabsContentView *)&self->super.super.super.super.isa _attachViewForContentTab:?];
      v6 = v7;
    }
  }

  MEMORY[0x1EEE66BB8](tabCopy, v6);
}

- (void)_attachViewForContentTab:(id *)tab
{
  v3 = a2;
  if (tab)
  {
    v8 = v3;
    viewController = [v3 viewController];
    view = [viewController view];

    subviews = [tab[63] subviews];
    v7 = [subviews containsObject:view];

    if ((v7 & 1) == 0)
    {
      [view setAutoresizingMask:0];
      [tab[63] addSubview:view];
    }

    [(AVMobileGlassContentTabsContentView *)tab _updateContentTabViewFrame:v8];
    if (([tab[63] isTracking] & 1) == 0)
    {
      [tab[63] setContentOffset:{-[AVMobileGlassContentTabsContentView _contentOffsetForTab:](tab, tab[62])}];
    }

    v3 = v8;
  }
}

- (void)setActiveTabContentTab:(id)tab withChangingReason:(unint64_t)reason
{
  tabCopy = tab;
  if (tabCopy && ![(NSArray *)self->_contentTabs containsObject:tabCopy])
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"Error: Internal inconsistency. The provided AVMobileContentTab does not exist."];
  }

  activeContentTab = self->_activeContentTab;
  if (activeContentTab != tabCopy)
  {
    v9 = activeContentTab;
    objc_storeStrong(&self->_activeContentTab, tab);
    if (v9)
    {
      selfCopy2 = self;
      v11 = v9;
    }

    else
    {
      objc_initWeak(&location, self);
      v12 = MEMORY[0x1E69DD250];
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __81__AVMobileGlassContentTabsContentView_setActiveTabContentTab_withChangingReason___block_invoke;
      v13[3] = &unk_1E7209A10;
      objc_copyWeak(&v14, &location);
      v13[4] = self;
      [v12 performWithoutAnimation:v13];
      objc_destroyWeak(&v14);
      objc_destroyWeak(&location);
      selfCopy2 = self;
      v11 = 0;
    }

    [(AVMobileGlassContentTabsContentView *)&selfCopy2->super.super.super.super.isa _updateActiveContentTabFrom:v11 to:tabCopy withChangingReason:reason];
  }
}

void __81__AVMobileGlassContentTabsContentView_setActiveTabContentTab_withChangingReason___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [(AVMobileGlassContentTabsContentView *)WeakRetained _updateContentSize];
    [(AVMobileGlassContentTabsContentView *)v3 _updateContentTabViewFrame:?];
    WeakRetained = v3;
  }
}

- (void)_updateActiveContentTabFrom:(void *)from to:(uint64_t)to withChangingReason:
{
  v7 = a2;
  fromCopy = from;
  v9 = fromCopy;
  if (self)
  {
    if (to)
    {
      [(AVMobileGlassContentTabsContentView *)self _updateContentSize];
      [(AVMobileGlassContentTabsContentView *)self _updateContentTabViewFrame:?];
      [(AVMobileGlassContentTabsContentView *)self _attachViewForContentTab:?];
    }

    else
    {
      viewController = [fromCopy viewController];
      view = [viewController view];

      subviews = [self[63] subviews];
      v13 = [subviews containsObject:view];

      if ((v13 & 1) == 0)
      {
        [view setAutoresizingMask:0];
        [self[63] addSubview:view];
      }

      objc_initWeak(&location, self);
      v14 = MEMORY[0x1E69DD250];
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = __89__AVMobileGlassContentTabsContentView__updateActiveContentTabFrom_to_withChangingReason___block_invoke;
      v27[3] = &unk_1E7209A10;
      objc_copyWeak(&v29, &location);
      v15 = v9;
      v28 = v15;
      [v14 performWithoutAnimation:v27];
      v16 = v15;
      v17 = v7;
      v18 = v17;
      if (v16 && v17)
      {
        objc_initWeak(&from, self);
        v19 = MEMORY[0x1E69DD250];
        v31[0] = MEMORY[0x1E69E9820];
        v31[1] = 3221225472;
        v31[2] = __74__AVMobileGlassContentTabsContentView__scrollToContentTab_fromContentTab___block_invoke;
        v31[3] = &unk_1E72095F0;
        objc_copyWeak(&v34, &from);
        v20 = v16;
        v32 = v20;
        v33 = v18;
        [v19 performWithoutAnimation:v31];
        viewController2 = [v20 viewController];
        view2 = [viewController2 view];
        [view2 frame];
        v24 = v23;
        [self layoutMargins];
        v26 = v24 - v25;

        [self[63] setContentOffset:{v26, 0.0}];
        objc_destroyWeak(&v34);
        objc_destroyWeak(&from);
      }

      objc_destroyWeak(&v29);
      objc_destroyWeak(&location);
    }
  }
}

void __89__AVMobileGlassContentTabsContentView__updateActiveContentTabFrom_to_withChangingReason___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained[63] setContentOffset:{-[AVMobileGlassContentTabsContentView _contentOffsetForTab:](WeakRetained, *(a1 + 32))}];
    WeakRetained = v3;
  }
}

void __74__AVMobileGlassContentTabsContentView__scrollToContentTab_fromContentTab___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v30 = WeakRetained;
    v3 = [*(a1 + 32) viewController];
    v4 = [v3 view];

    [v4 setAutoresizingMask:0];
    [v30[63] addSubview:v4];
    [v30[63] bounds];
    v6 = v5 + v5;
    v7 = v30[63];
    [v7 frame];
    [v7 setContentSize:{v6, v8}];
    v9 = *(a1 + 40);
    v10 = *(a1 + 32);
    v11 = v9;
    v12 = [(AVMobileGlassContentTabsContentView *)v30 _indexForContentTab:v10];
    v13 = [(AVMobileGlassContentTabsContentView *)v30 _indexForContentTab:v11];
    v14 = [v11 viewController];

    v15 = [v14 view];

    v16 = [v10 viewController];

    v17 = [v16 view];

    [v30[63] bounds];
    v19 = v18;
    v21 = v20;
    [v30 layoutMargins];
    v23 = v22;
    [v30 layoutMargins];
    v25 = v19 - (v23 + v24);
    [v30 layoutMargins];
    v27 = v26;
    v28 = *MEMORY[0x1E695EFF8];
    v29 = *(MEMORY[0x1E695EFF8] + 8);
    [v30[63] setContentOffset:{*MEMORY[0x1E695EFF8], v29}];
    if (v13 >= v12)
    {
      [v15 setFrame:{v19 + v27, 0.0, v25, v21}];
      [v30[63] setContentOffset:{v19, 0.0}];
    }

    else
    {
      [v15 setFrame:{v27, 0.0, v25, v21}];
      [v30[63] setContentOffset:{v28, v29}];
      v27 = v19 + v27;
    }

    [v17 setFrame:{v27, 0.0, v25, v21}];

    WeakRetained = v30;
  }
}

- (AVMobileGlassContentTabsContentView)init
{
  v5.receiver = self;
  v5.super_class = AVMobileGlassContentTabsContentView;
  v2 = [(AVView *)&v5 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v3 = v2;
  if (v2)
  {
    [(AVMobileGlassContentTabsContentView *)v2 setInsetsLayoutMarginsFromSafeArea:0];
    [(AVMobileGlassContentTabsContentView *)v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  }

  return v3;
}

@end