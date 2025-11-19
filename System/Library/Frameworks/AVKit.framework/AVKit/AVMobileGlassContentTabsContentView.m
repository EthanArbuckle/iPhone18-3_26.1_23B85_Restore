@interface AVMobileGlassContentTabsContentView
- (AVMobileGlassContentTabsContentView)init;
- (double)_contentOffsetForTab:(id *)a1;
- (id)_updateContentSize;
- (uint64_t)_indexForContentTab:(id *)a1;
- (void)_attachViewForContentTab:(id *)a1;
- (void)_updateActiveContentTabFrom:(void *)a3 to:(uint64_t)a4 withChangingReason:;
- (void)_updateContentTabViewFrame:(id *)a1;
- (void)_updateContentTabViewFrameHeight;
- (void)didMoveToSuperview;
- (void)layoutSubviews;
- (void)setActiveTabContentTab:(id)a3 withChangingReason:(unint64_t)a4;
- (void)setBounds:(CGRect)a3;
- (void)setContentTabs:(id)a3;
- (void)setFrame:(CGRect)a3;
- (void)setUpcomingContentTab:(id)a3;
@end

@implementation AVMobileGlassContentTabsContentView

- (void)setFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
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
  if (a1)
  {
    v2 = a1[62];
    if (v2)
    {
      v3 = [v2 viewController];
      v11 = [v3 view];

      [v11 frame];
      v5 = v4;
      v7 = v6;
      v9 = v8;
      [a1 bounds];
      if (v9 >= v10)
      {
        v10 = v9;
      }

      [v11 setFrame:{v5, 0.0, v7, v10}];
    }
  }
}

- (void)setBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
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
    v3 = [(AVMobileGlassContentTabsContentView *)self window];
    if (v3)
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

- (void)_updateContentTabViewFrame:(id *)a1
{
  if (a1 && a2)
  {
    v3 = a2;
    v4 = [(AVMobileGlassContentTabsContentView *)a1 _indexForContentTab:v3];
    [a1 bounds];
    v6 = v5;
    v8 = v7;
    [a1 layoutMargins];
    v10 = v9 + v6 * v4;
    v12 = v6 - (v9 + v11);
    v13 = [v3 viewController];

    v14 = [v13 view];

    [v14 setFrame:{v10, 0.0, v12, v8}];
  }
}

- (double)_contentOffsetForTab:(id *)a1
{
  v3 = a2;
  v4 = *MEMORY[0x1E695EFF8];
  if (v3)
  {
    v5 = [(AVMobileGlassContentTabsContentView *)a1 _indexForContentTab:v3];
    if (v5)
    {
      v6 = v5;
      [a1[63] bounds];
      v4 = v7 * v6;
    }
  }

  return v4;
}

- (uint64_t)_indexForContentTab:(id *)a1
{
  v3 = a2;
  v4 = [a1[61] indexOfObject:v3];
  if ([a1 effectiveUserInterfaceLayoutDirection] == 1)
  {
    v4 = [a1[61] count] + ~v4;
  }

  return v4;
}

- (void)setContentTabs:(id)a3
{
  v6 = a3;
  if (![(NSArray *)self->_contentTabs isEqualToArray:?])
  {
    v4 = [v6 copy];
    contentTabs = self->_contentTabs;
    self->_contentTabs = v4;

    [(AVMobileGlassContentTabsContentView *)&self->super.super.super.super.isa _updateContentSize];
  }
}

- (void)setUpcomingContentTab:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self->_upcomingContentTab != v5)
  {
    v7 = v5;
    objc_storeStrong(&self->_upcomingContentTab, a3);
    v5 = [(UIScrollView *)self->_scrollView isTracking];
    v6 = v7;
    if (v5)
    {
      [(AVMobileGlassContentTabsContentView *)&self->super.super.super.super.isa _updateContentSize];
      [(AVMobileGlassContentTabsContentView *)&self->super.super.super.super.isa _updateContentTabViewFrame:?];
      [(UIScrollView *)self->_scrollView setContentOffset:[(AVMobileGlassContentTabsContentView *)&self->super.super.super.super.isa _contentOffsetForTab:?]];
      [(AVMobileGlassContentTabsContentView *)&self->super.super.super.super.isa _attachViewForContentTab:?];
      v6 = v7;
    }
  }

  MEMORY[0x1EEE66BB8](v5, v6);
}

- (void)_attachViewForContentTab:(id *)a1
{
  v3 = a2;
  if (a1)
  {
    v8 = v3;
    v4 = [v3 viewController];
    v5 = [v4 view];

    v6 = [a1[63] subviews];
    v7 = [v6 containsObject:v5];

    if ((v7 & 1) == 0)
    {
      [v5 setAutoresizingMask:0];
      [a1[63] addSubview:v5];
    }

    [(AVMobileGlassContentTabsContentView *)a1 _updateContentTabViewFrame:v8];
    if (([a1[63] isTracking] & 1) == 0)
    {
      [a1[63] setContentOffset:{-[AVMobileGlassContentTabsContentView _contentOffsetForTab:](a1, a1[62])}];
    }

    v3 = v8;
  }
}

- (void)setActiveTabContentTab:(id)a3 withChangingReason:(unint64_t)a4
{
  v7 = a3;
  if (v7 && ![(NSArray *)self->_contentTabs containsObject:v7])
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"Error: Internal inconsistency. The provided AVMobileContentTab does not exist."];
  }

  activeContentTab = self->_activeContentTab;
  if (activeContentTab != v7)
  {
    v9 = activeContentTab;
    objc_storeStrong(&self->_activeContentTab, a3);
    if (v9)
    {
      v10 = self;
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
      v10 = self;
      v11 = 0;
    }

    [(AVMobileGlassContentTabsContentView *)&v10->super.super.super.super.isa _updateActiveContentTabFrom:v11 to:v7 withChangingReason:a4];
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

- (void)_updateActiveContentTabFrom:(void *)a3 to:(uint64_t)a4 withChangingReason:
{
  v7 = a2;
  v8 = a3;
  v9 = v8;
  if (a1)
  {
    if (a4)
    {
      [(AVMobileGlassContentTabsContentView *)a1 _updateContentSize];
      [(AVMobileGlassContentTabsContentView *)a1 _updateContentTabViewFrame:?];
      [(AVMobileGlassContentTabsContentView *)a1 _attachViewForContentTab:?];
    }

    else
    {
      v10 = [v8 viewController];
      v11 = [v10 view];

      v12 = [a1[63] subviews];
      v13 = [v12 containsObject:v11];

      if ((v13 & 1) == 0)
      {
        [v11 setAutoresizingMask:0];
        [a1[63] addSubview:v11];
      }

      objc_initWeak(&location, a1);
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
        objc_initWeak(&from, a1);
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
        v21 = [v20 viewController];
        v22 = [v21 view];
        [v22 frame];
        v24 = v23;
        [a1 layoutMargins];
        v26 = v24 - v25;

        [a1[63] setContentOffset:{v26, 0.0}];
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