@interface CNUINavigationListStyleApplier
- (CNUINavigationListStyleApplier)initWithNavigationListStyle:(id)a3;
- (void)applyCollapsedBackgroundNavigationListStyleToCell:(id)a3;
- (void)applyExpandedBackgroundNavigationListStyleToCell:(id)a3;
- (void)applyNavigationListStyleToCell:(id)a3;
- (void)applyNavigationListStyleToDetailCell:(id)a3;
@end

@implementation CNUINavigationListStyleApplier

- (void)applyCollapsedBackgroundNavigationListStyleToCell:(id)a3
{
  v4 = a3;
  v7 = [(CNUINavigationListStyleApplier *)self navigationListStyle];
  v5 = [v7 cellBackgroundColor];
  v6 = [v4 backgroundView];

  [v6 setBackgroundColor:v5];
}

- (void)applyExpandedBackgroundNavigationListStyleToCell:(id)a3
{
  v4 = a3;
  v7 = [(CNUINavigationListStyleApplier *)self navigationListStyle];
  v5 = [v7 cellBackgroundExpandedColor];
  v6 = [v4 backgroundView];

  [v6 setBackgroundColor:v5];
}

- (void)applyNavigationListStyleToDetailCell:(id)a3
{
  v4 = a3;
  [(CNUINavigationListStyleApplier *)self applyNavigationListStyleToCell:v4];
  v5 = [(CNUINavigationListStyleApplier *)self navigationListStyle];
  v6 = [v5 detailCellTitleFont];
  v7 = [v4 titleLabel];
  [v7 setFont:v6];

  v8 = [(CNUINavigationListStyleApplier *)self navigationListStyle];
  v9 = [v8 detailCellTitleTextColor];
  v10 = [v4 titleLabel];
  [v10 setTextColor:v9];

  v11 = [(CNUINavigationListStyleApplier *)self navigationListStyle];
  v12 = [v11 detailCellTitleTextHighlightedColor];
  v13 = [v4 titleLabel];
  [v13 setHighlightedTextColor:v12];

  v14 = [(CNUINavigationListStyleApplier *)self navigationListStyle];
  v15 = [v14 detailCellSubtitleFont];
  v16 = [v4 subtitleLabel];
  [v16 setFont:v15];

  v17 = [(CNUINavigationListStyleApplier *)self navigationListStyle];
  v18 = [v17 detailCellSubtitleTextColor];
  v19 = [v4 subtitleLabel];
  [v19 setTextColor:v18];

  v20 = [(CNUINavigationListStyleApplier *)self navigationListStyle];
  v21 = [v20 detailCellSubtitleTextHighlightedColor];
  v22 = [v4 subtitleLabel];
  [v22 setHighlightedTextColor:v21];

  v23 = [(CNUINavigationListStyleApplier *)self navigationListStyle];
  [v4 setShowSeparator:{objc_msgSend(v23, "showCellSeparator")}];
}

- (void)applyNavigationListStyleToCell:(id)a3
{
  v39 = a3;
  v4 = [(CNUINavigationListStyleApplier *)self navigationListStyle];
  v5 = [v4 cellTitleFont];
  v6 = [v39 titleLabel];
  [v6 setFont:v5];

  v7 = [(CNUINavigationListStyleApplier *)self navigationListStyle];
  v8 = [v7 cellTitleTextColor];
  v9 = [v39 titleLabel];
  [v9 setTextColor:v8];

  v10 = [(CNUINavigationListStyleApplier *)self navigationListStyle];
  v11 = [v10 cellTitleTextHighlightedColor];
  v12 = [v39 titleLabel];
  [v12 setHighlightedTextColor:v11];

  v13 = [(CNUINavigationListStyleApplier *)self navigationListStyle];
  v14 = [v13 cellSubtitleFont];
  v15 = [v39 subtitleLabel];
  [v15 setFont:v14];

  v16 = [(CNUINavigationListStyleApplier *)self navigationListStyle];
  v17 = [v16 cellSubtitleTextColor];
  v18 = [v39 subtitleLabel];
  [v18 setTextColor:v17];

  v19 = [(CNUINavigationListStyleApplier *)self navigationListStyle];
  v20 = [v19 cellSubtitleTextHighlightedColor];
  v21 = [v39 subtitleLabel];
  [v21 setHighlightedTextColor:v20];

  v22 = [(CNUINavigationListStyleApplier *)self navigationListStyle];
  v23 = [v22 actionIconFillColor];
  v24 = [v39 titleImageView];
  [v24 setTintColor:v23];

  v25 = [(CNUINavigationListStyleApplier *)self navigationListStyle];
  v26 = [v25 cellBackgroundColor];

  if (v26)
  {
    v27 = [MEMORY[0x1E69DC888] clearColor];
    [v39 setBackgroundColor:v27];

    v28 = objc_alloc_init(MEMORY[0x1E69DD250]);
    [v39 setBackgroundView:v28];

    v29 = [(CNUINavigationListStyleApplier *)self navigationListStyle];
    v30 = [v29 cellBackgroundColor];
    v31 = [v39 backgroundView];
    [v31 setBackgroundColor:v30];
  }

  v32 = [(CNUINavigationListStyleApplier *)self navigationListStyle];
  v33 = [v32 cellBackgroundHighlightedColor];

  if (v33)
  {
    v34 = objc_alloc_init(MEMORY[0x1E69DD250]);
    [v39 setSelectedBackgroundView:v34];

    v35 = [(CNUINavigationListStyleApplier *)self navigationListStyle];
    v36 = [v35 cellBackgroundHighlightedColor];
    v37 = [v39 selectedBackgroundView];
    [v37 setBackgroundColor:v36];
  }

  v38 = [(CNUINavigationListStyleApplier *)self navigationListStyle];
  [v39 setShowSeparator:{objc_msgSend(v38, "showCellSeparator")}];
}

- (CNUINavigationListStyleApplier)initWithNavigationListStyle:(id)a3
{
  v5 = a3;
  if (v5 && (v9.receiver = self, v9.super_class = CNUINavigationListStyleApplier, v6 = [(CNUINavigationListStyleApplier *)&v9 init], (self = v6) != 0))
  {
    objc_storeStrong(&v6->_navigationListStyle, a3);
    self = self;
    v7 = self;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end