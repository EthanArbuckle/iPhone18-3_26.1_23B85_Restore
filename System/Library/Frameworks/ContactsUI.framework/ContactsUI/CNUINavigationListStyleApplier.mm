@interface CNUINavigationListStyleApplier
- (CNUINavigationListStyleApplier)initWithNavigationListStyle:(id)style;
- (void)applyCollapsedBackgroundNavigationListStyleToCell:(id)cell;
- (void)applyExpandedBackgroundNavigationListStyleToCell:(id)cell;
- (void)applyNavigationListStyleToCell:(id)cell;
- (void)applyNavigationListStyleToDetailCell:(id)cell;
@end

@implementation CNUINavigationListStyleApplier

- (void)applyCollapsedBackgroundNavigationListStyleToCell:(id)cell
{
  cellCopy = cell;
  navigationListStyle = [(CNUINavigationListStyleApplier *)self navigationListStyle];
  cellBackgroundColor = [navigationListStyle cellBackgroundColor];
  backgroundView = [cellCopy backgroundView];

  [backgroundView setBackgroundColor:cellBackgroundColor];
}

- (void)applyExpandedBackgroundNavigationListStyleToCell:(id)cell
{
  cellCopy = cell;
  navigationListStyle = [(CNUINavigationListStyleApplier *)self navigationListStyle];
  cellBackgroundExpandedColor = [navigationListStyle cellBackgroundExpandedColor];
  backgroundView = [cellCopy backgroundView];

  [backgroundView setBackgroundColor:cellBackgroundExpandedColor];
}

- (void)applyNavigationListStyleToDetailCell:(id)cell
{
  cellCopy = cell;
  [(CNUINavigationListStyleApplier *)self applyNavigationListStyleToCell:cellCopy];
  navigationListStyle = [(CNUINavigationListStyleApplier *)self navigationListStyle];
  detailCellTitleFont = [navigationListStyle detailCellTitleFont];
  titleLabel = [cellCopy titleLabel];
  [titleLabel setFont:detailCellTitleFont];

  navigationListStyle2 = [(CNUINavigationListStyleApplier *)self navigationListStyle];
  detailCellTitleTextColor = [navigationListStyle2 detailCellTitleTextColor];
  titleLabel2 = [cellCopy titleLabel];
  [titleLabel2 setTextColor:detailCellTitleTextColor];

  navigationListStyle3 = [(CNUINavigationListStyleApplier *)self navigationListStyle];
  detailCellTitleTextHighlightedColor = [navigationListStyle3 detailCellTitleTextHighlightedColor];
  titleLabel3 = [cellCopy titleLabel];
  [titleLabel3 setHighlightedTextColor:detailCellTitleTextHighlightedColor];

  navigationListStyle4 = [(CNUINavigationListStyleApplier *)self navigationListStyle];
  detailCellSubtitleFont = [navigationListStyle4 detailCellSubtitleFont];
  subtitleLabel = [cellCopy subtitleLabel];
  [subtitleLabel setFont:detailCellSubtitleFont];

  navigationListStyle5 = [(CNUINavigationListStyleApplier *)self navigationListStyle];
  detailCellSubtitleTextColor = [navigationListStyle5 detailCellSubtitleTextColor];
  subtitleLabel2 = [cellCopy subtitleLabel];
  [subtitleLabel2 setTextColor:detailCellSubtitleTextColor];

  navigationListStyle6 = [(CNUINavigationListStyleApplier *)self navigationListStyle];
  detailCellSubtitleTextHighlightedColor = [navigationListStyle6 detailCellSubtitleTextHighlightedColor];
  subtitleLabel3 = [cellCopy subtitleLabel];
  [subtitleLabel3 setHighlightedTextColor:detailCellSubtitleTextHighlightedColor];

  navigationListStyle7 = [(CNUINavigationListStyleApplier *)self navigationListStyle];
  [cellCopy setShowSeparator:{objc_msgSend(navigationListStyle7, "showCellSeparator")}];
}

- (void)applyNavigationListStyleToCell:(id)cell
{
  cellCopy = cell;
  navigationListStyle = [(CNUINavigationListStyleApplier *)self navigationListStyle];
  cellTitleFont = [navigationListStyle cellTitleFont];
  titleLabel = [cellCopy titleLabel];
  [titleLabel setFont:cellTitleFont];

  navigationListStyle2 = [(CNUINavigationListStyleApplier *)self navigationListStyle];
  cellTitleTextColor = [navigationListStyle2 cellTitleTextColor];
  titleLabel2 = [cellCopy titleLabel];
  [titleLabel2 setTextColor:cellTitleTextColor];

  navigationListStyle3 = [(CNUINavigationListStyleApplier *)self navigationListStyle];
  cellTitleTextHighlightedColor = [navigationListStyle3 cellTitleTextHighlightedColor];
  titleLabel3 = [cellCopy titleLabel];
  [titleLabel3 setHighlightedTextColor:cellTitleTextHighlightedColor];

  navigationListStyle4 = [(CNUINavigationListStyleApplier *)self navigationListStyle];
  cellSubtitleFont = [navigationListStyle4 cellSubtitleFont];
  subtitleLabel = [cellCopy subtitleLabel];
  [subtitleLabel setFont:cellSubtitleFont];

  navigationListStyle5 = [(CNUINavigationListStyleApplier *)self navigationListStyle];
  cellSubtitleTextColor = [navigationListStyle5 cellSubtitleTextColor];
  subtitleLabel2 = [cellCopy subtitleLabel];
  [subtitleLabel2 setTextColor:cellSubtitleTextColor];

  navigationListStyle6 = [(CNUINavigationListStyleApplier *)self navigationListStyle];
  cellSubtitleTextHighlightedColor = [navigationListStyle6 cellSubtitleTextHighlightedColor];
  subtitleLabel3 = [cellCopy subtitleLabel];
  [subtitleLabel3 setHighlightedTextColor:cellSubtitleTextHighlightedColor];

  navigationListStyle7 = [(CNUINavigationListStyleApplier *)self navigationListStyle];
  actionIconFillColor = [navigationListStyle7 actionIconFillColor];
  titleImageView = [cellCopy titleImageView];
  [titleImageView setTintColor:actionIconFillColor];

  navigationListStyle8 = [(CNUINavigationListStyleApplier *)self navigationListStyle];
  cellBackgroundColor = [navigationListStyle8 cellBackgroundColor];

  if (cellBackgroundColor)
  {
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [cellCopy setBackgroundColor:clearColor];

    v28 = objc_alloc_init(MEMORY[0x1E69DD250]);
    [cellCopy setBackgroundView:v28];

    navigationListStyle9 = [(CNUINavigationListStyleApplier *)self navigationListStyle];
    cellBackgroundColor2 = [navigationListStyle9 cellBackgroundColor];
    backgroundView = [cellCopy backgroundView];
    [backgroundView setBackgroundColor:cellBackgroundColor2];
  }

  navigationListStyle10 = [(CNUINavigationListStyleApplier *)self navigationListStyle];
  cellBackgroundHighlightedColor = [navigationListStyle10 cellBackgroundHighlightedColor];

  if (cellBackgroundHighlightedColor)
  {
    v34 = objc_alloc_init(MEMORY[0x1E69DD250]);
    [cellCopy setSelectedBackgroundView:v34];

    navigationListStyle11 = [(CNUINavigationListStyleApplier *)self navigationListStyle];
    cellBackgroundHighlightedColor2 = [navigationListStyle11 cellBackgroundHighlightedColor];
    selectedBackgroundView = [cellCopy selectedBackgroundView];
    [selectedBackgroundView setBackgroundColor:cellBackgroundHighlightedColor2];
  }

  navigationListStyle12 = [(CNUINavigationListStyleApplier *)self navigationListStyle];
  [cellCopy setShowSeparator:{objc_msgSend(navigationListStyle12, "showCellSeparator")}];
}

- (CNUINavigationListStyleApplier)initWithNavigationListStyle:(id)style
{
  styleCopy = style;
  if (styleCopy && (v9.receiver = self, v9.super_class = CNUINavigationListStyleApplier, v6 = [(CNUINavigationListStyleApplier *)&v9 init], (self = v6) != 0))
  {
    objc_storeStrong(&v6->_navigationListStyle, style);
    self = self;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

@end