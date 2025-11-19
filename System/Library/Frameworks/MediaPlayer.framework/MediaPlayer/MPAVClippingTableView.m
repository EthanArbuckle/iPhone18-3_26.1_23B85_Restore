@interface MPAVClippingTableView
- (MPAVClippingTableView)initWithFrame:(CGRect)a3 style:(int64_t)a4;
- (id)_createBackgroundView;
- (id)backgroundViewForSection:(unint64_t)a3;
- (void)layoutSubviews;
@end

@implementation MPAVClippingTableView

- (id)_createBackgroundView
{
  v3 = objc_alloc_init(MEMORY[0x1E69DD250]);
  v4 = [MEMORY[0x1E69DC888] blackColor];
  [v3 setBackgroundColor:v4];

  [v3 setAlpha:0.1];
  [v3 _setDrawsAsBackdropOverlayWithBlendMode:1];
  [v3 setUserInteractionEnabled:0];
  [(MPAVClippingTableView *)self insertSubview:v3 atIndex:0];

  return v3;
}

- (id)backgroundViewForSection:(unint64_t)a3
{
  sectionBackgroundViews = self->_sectionBackgroundViews;
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
  v7 = [(NSMutableDictionary *)sectionBackgroundViews objectForKeyedSubscript:v6];

  if (!v7)
  {
    v7 = [(MPAVClippingTableView *)self _createBackgroundView];
    v8 = self->_sectionBackgroundViews;
    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
    [(NSMutableDictionary *)v8 setObject:v7 forKeyedSubscript:v9];
  }

  return v7;
}

- (void)layoutSubviews
{
  v23.receiver = self;
  v23.super_class = MPAVClippingTableView;
  [(MPAVClippingTableView *)&v23 layoutSubviews];
  [(MPAVClippingTableView *)self contentOffset];
  v4 = v3;
  [(MPAVClippingTableView *)self contentSize];
  v6 = v5;
  [(MPAVClippingTableView *)self bounds];
  Width = CGRectGetWidth(v24);
  if (v4 >= 0.0)
  {
    headerBackgroundView = self->_headerBackgroundView;
    v10 = 0.0;
    v8 = 0.0;
  }

  else
  {
    v8 = fabs(v4) + 200.0;
    headerBackgroundView = self->_headerBackgroundView;
    v10 = v4 + -200.0;
  }

  [(UIView *)headerBackgroundView setFrame:0.0, v10, Width, v8];
  [(MPAVClippingTableView *)self bounds];
  v11 = CGRectGetWidth(v25);
  [(MPAVClippingTableView *)self frame];
  [(UIView *)self->_footerBackgroundView setFrame:0.0, v6, v11, v4 + CGRectGetHeight(v26) - v6 + 200.0];
  v12 = [MEMORY[0x1E696AD50] indexSet];
  v13 = [(MPAVClippingTableView *)self indexPathsForVisibleRows];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __39__MPAVClippingTableView_layoutSubviews__block_invoke;
  v20[3] = &unk_1E76764B8;
  v14 = v12;
  v21 = v14;
  v22 = self;
  [v13 enumerateObjectsUsingBlock:v20];

  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __39__MPAVClippingTableView_layoutSubviews__block_invoke_2;
  v19[3] = &unk_1E7680030;
  v19[4] = self;
  [v14 enumerateIndexesUsingBlock:v19];
  sectionBackgroundViews = self->_sectionBackgroundViews;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __39__MPAVClippingTableView_layoutSubviews__block_invoke_3;
  v17[3] = &unk_1E76764E0;
  v18 = v14;
  v16 = v14;
  [(NSMutableDictionary *)sectionBackgroundViews enumerateKeysAndObjectsUsingBlock:v17];
}

void __39__MPAVClippingTableView_layoutSubviews__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 addIndex:{objc_msgSend(v4, "section")}];
  rect_8 = [*(a1 + 40) headerViewForSection:{objc_msgSend(v4, "section")}];
  v5 = [*(a1 + 40) cellForRowAtIndexPath:v4];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [rect_8 frame];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    [v5 frame];
    y = v26.origin.y;
    width = v26.size.width;
    height = v26.size.height;
    rect = v26.origin.x;
    MinY = CGRectGetMinY(v26);
    v27.origin.x = v7;
    v27.origin.y = v9;
    v27.size.width = v11;
    v27.size.height = v13;
    if (MinY >= CGRectGetMaxY(v27))
    {
      v19 = *MEMORY[0x1E69DDCE0];
      v20 = *(MEMORY[0x1E69DDCE0] + 8);
      v21 = *(MEMORY[0x1E69DDCE0] + 16);
      v22 = *(MEMORY[0x1E69DDCE0] + 24);
    }

    else
    {
      v28.origin.x = v7;
      v28.origin.y = v9;
      v28.size.width = v11;
      v28.size.height = v13;
      MaxY = CGRectGetMaxY(v28);
      v29.origin.x = rect;
      v29.origin.y = y;
      v29.size.width = width;
      v29.size.height = height;
      v19 = MaxY - CGRectGetMinY(v29);
      v20 = 0.0;
      v21 = 0.0;
      v22 = 0.0;
    }

    [v5 setClippingInsets:{v19, v20, v21, v22, *&rect}];
  }
}

void __39__MPAVClippingTableView_layoutSubviews__block_invoke_2(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) headerViewForSection:a2];
  [v4 frame];
  MaxY = CGRectGetMaxY(v11);

  [*(a1 + 32) rectForSection:a2];
  x = v12.origin.x;
  width = v12.size.width;
  v8 = v12.size.height - (MaxY - CGRectGetMinY(v12));
  v9 = [*(a1 + 32) backgroundViewForSection:a2];
  [v9 setFrame:{x, MaxY, width, v8}];
}

void __39__MPAVClippingTableView_layoutSubviews__block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  [v5 setHidden:{objc_msgSend(v4, "containsIndex:", objc_msgSend(a2, "integerValue")) ^ 1}];
}

- (MPAVClippingTableView)initWithFrame:(CGRect)a3 style:(int64_t)a4
{
  v12.receiver = self;
  v12.super_class = MPAVClippingTableView;
  v4 = [(MPAVClippingTableView *)&v12 initWithFrame:a4 style:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
    sectionBackgroundViews = v4->_sectionBackgroundViews;
    v4->_sectionBackgroundViews = v5;

    v7 = [(MPAVClippingTableView *)v4 _createBackgroundView];
    headerBackgroundView = v4->_headerBackgroundView;
    v4->_headerBackgroundView = v7;

    v9 = [(MPAVClippingTableView *)v4 _createBackgroundView];
    footerBackgroundView = v4->_footerBackgroundView;
    v4->_footerBackgroundView = v9;

    [(MPAVClippingTableView *)v4 setSeparatorStyle:0];
  }

  return v4;
}

@end