@interface CNUINavigationListViewDetailCell
+ (CGSize)desiredContentSizeForTitle:(id)title subTitle:(id)subTitle navigationListStyle:(id)style;
+ (double)contentViewBottomAnchorConstraintConstantForNavigationListStyle:(id)style;
+ (double)subtitleLabelFirstBaselineAnchorConstraintConstantForNavigationListStyle:(id)style;
+ (double)titleLabelFirstBaselineAnchorConstraintConstantForNavigationListStyle:(id)style;
- (double)contentViewBottomAnchorConstraintConstant;
- (double)minimumContentHeight;
- (double)subtitleLabelFirstBaselineAnchorConstraintConstant;
- (double)titleLabelFirstBaselineAnchorConstraintConstant;
- (void)applyStyle;
- (void)loadContentViewConstraints;
- (void)setContentAlignment:(int64_t)alignment;
- (void)updateConstraints;
@end

@implementation CNUINavigationListViewDetailCell

- (void)applyStyle
{
  styleApplier = [(CNUINavigationListViewCell *)self styleApplier];
  [styleApplier applyNavigationListStyleToDetailCell:self];
}

- (void)updateConstraints
{
  v14[1] = *MEMORY[0x1E69E9840];
  v13.receiver = self;
  v13.super_class = CNUINavigationListViewDetailCell;
  [(CNUINavigationListViewCell *)&v13 updateConstraints];
  contentAlignment = [(CNUINavigationListViewDetailCell *)self contentAlignment];
  titleLabel = [(CNUINavigationListViewCell *)self titleLabel];
  leadingAnchor = [titleLabel leadingAnchor];
  contentView = [(CNUINavigationListViewDetailCell *)self contentView];
  leadingAnchor2 = [contentView leadingAnchor];
  if (contentAlignment == 1)
  {
    navigationListStyle = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:5.0];
    [(CNUINavigationListViewCell *)self setTitleLabelLeadingAnchorConstraint:navigationListStyle];
  }

  else
  {
    navigationListStyle = [(CNUINavigationListViewCell *)self navigationListStyle];
    [navigationListStyle cellUserActionLeftMargin];
    v9 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:?];
    [(CNUINavigationListViewCell *)self setTitleLabelLeadingAnchorConstraint:v9];
  }

  v10 = MEMORY[0x1E696ACD8];
  titleLabelLeadingAnchorConstraint = [(CNUINavigationListViewCell *)self titleLabelLeadingAnchorConstraint];
  v14[0] = titleLabelLeadingAnchorConstraint;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
  [v10 activateConstraints:v12];
}

- (void)loadContentViewConstraints
{
  if (![(CNUINavigationListViewCell *)self isContentViewConstraintsLoaded])
  {
    v24.receiver = self;
    v24.super_class = CNUINavigationListViewDetailCell;
    [(CNUINavigationListViewCell *)&v24 loadContentViewConstraints];
    array = [MEMORY[0x1E695DF70] array];
    contentView = [(CNUINavigationListViewDetailCell *)self contentView];
    trailingAnchor = [contentView trailingAnchor];
    titleLabel = [(CNUINavigationListViewCell *)self titleLabel];
    trailingAnchor2 = [titleLabel trailingAnchor];
    v8 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:5.0];

    [array addObject:v8];
    [(CNUINavigationListViewCell *)self setTitleLabelTrailingAnchorConstraint:v8];
    subtitleLabel = [(CNUINavigationListViewCell *)self subtitleLabel];
    leadingAnchor = [subtitleLabel leadingAnchor];
    titleLabel2 = [(CNUINavigationListViewCell *)self titleLabel];
    leadingAnchor2 = [titleLabel2 leadingAnchor];
    v13 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];

    [array addObject:v13];
    [(CNUINavigationListViewCell *)self setSubtitleLabelLeadingAnchorConstraint:v13];
    subtitleLabel2 = [(CNUINavigationListViewCell *)self subtitleLabel];
    trailingAnchor3 = [subtitleLabel2 trailingAnchor];
    titleLabel3 = [(CNUINavigationListViewCell *)self titleLabel];
    trailingAnchor4 = [titleLabel3 trailingAnchor];
    v18 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];

    [array addObject:v18];
    [(CNUINavigationListViewCell *)self setSubtitleLabelTrailingAnchorConstraint:v18];
    subtitleLabel3 = [(CNUINavigationListViewCell *)self subtitleLabel];
    firstBaselineAnchor = [subtitleLabel3 firstBaselineAnchor];
    titleLabel4 = [(CNUINavigationListViewCell *)self titleLabel];
    firstBaselineAnchor2 = [titleLabel4 firstBaselineAnchor];
    [(CNUINavigationListViewDetailCell *)self subtitleLabelFirstBaselineAnchorConstraintConstant];
    v23 = [firstBaselineAnchor constraintEqualToAnchor:firstBaselineAnchor2 constant:?];

    [array addObject:v23];
    [(CNUINavigationListViewCell *)self setSubtitleLabelFirstBaselineAnchorConstraint:v23];
    [MEMORY[0x1E696ACD8] activateConstraints:array];
    [(CNUINavigationListViewCell *)self setContentViewConstraintsLoaded:1];
  }
}

- (void)setContentAlignment:(int64_t)alignment
{
  if (self->_contentAlignment != alignment)
  {
    self->_contentAlignment = alignment;
    v5 = [(CNUINavigationListViewDetailCell *)self contentAlignment]== 1;
    titleLabel = [(CNUINavigationListViewCell *)self titleLabel];
    [titleLabel setTextAlignment:v5];

    subtitleLabel = [(CNUINavigationListViewCell *)self subtitleLabel];
    [subtitleLabel setTextAlignment:v5];

    [(CNUINavigationListViewDetailCell *)self separatorInset];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    contentAlignment = [(CNUINavigationListViewDetailCell *)self contentAlignment];
    v15 = 0.0;
    if (contentAlignment != 1)
    {
      v15 = 15.0;
    }

    [(CNUINavigationListViewDetailCell *)self setSeparatorInset:v9, v15, v11, v13];

    [(CNUINavigationListViewDetailCell *)self setNeedsUpdateConstraints];
  }
}

- (double)titleLabelFirstBaselineAnchorConstraintConstant
{
  v3 = objc_opt_class();
  navigationListStyle = [(CNUINavigationListViewCell *)self navigationListStyle];
  [v3 titleLabelFirstBaselineAnchorConstraintConstantForNavigationListStyle:navigationListStyle];
  v6 = v5;

  return v6;
}

- (double)subtitleLabelFirstBaselineAnchorConstraintConstant
{
  v3 = objc_opt_class();
  navigationListStyle = [(CNUINavigationListViewCell *)self navigationListStyle];
  [v3 subtitleLabelFirstBaselineAnchorConstraintConstantForNavigationListStyle:navigationListStyle];
  v6 = v5;

  return v6;
}

- (double)contentViewBottomAnchorConstraintConstant
{
  v3 = objc_opt_class();
  navigationListStyle = [(CNUINavigationListViewCell *)self navigationListStyle];
  [v3 contentViewBottomAnchorConstraintConstantForNavigationListStyle:navigationListStyle];
  v6 = v5;

  return v6;
}

- (double)minimumContentHeight
{
  v7.receiver = self;
  v7.super_class = CNUINavigationListViewDetailCell;
  [(CNUINavigationListViewCell *)&v7 minimumContentHeight];
  v4 = v3;
  [(CNUINavigationListViewDetailCell *)self subtitleLabelFirstBaselineAnchorConstraintConstant];
  return ceil(v4 + v5);
}

+ (CGSize)desiredContentSizeForTitle:(id)title subTitle:(id)subTitle navigationListStyle:(id)style
{
  v34[1] = *MEMORY[0x1E69E9840];
  titleCopy = title;
  subTitleCopy = subTitle;
  styleCopy = style;
  [styleCopy cellUserActionLeftMargin];
  v12 = v11;
  v13 = *MEMORY[0x1E695F060];
  detailCellTitleFont = [styleCopy detailCellTitleFont];
  detailCellSubtitleFont = [styleCopy detailCellSubtitleFont];
  v16 = *MEMORY[0x1E6996568];
  v17 = v13;
  if (((*(*MEMORY[0x1E6996568] + 16))(*MEMORY[0x1E6996568], titleCopy) & 1) == 0)
  {
    if (detailCellTitleFont)
    {
      v33 = *MEMORY[0x1E69DB648];
      v34[0] = detailCellTitleFont;
      v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v34 forKeys:&v33 count:1];
    }

    else
    {
      v18 = 0;
    }

    [titleCopy sizeWithAttributes:v18];
    v17 = v19;
  }

  if (((*(v16 + 16))(v16, subTitleCopy) & 1) == 0)
  {
    if (detailCellSubtitleFont)
    {
      v31 = *MEMORY[0x1E69DB648];
      v32 = detailCellSubtitleFont;
      v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v32 forKeys:&v31 count:1];
    }

    else
    {
      v20 = 0;
    }

    [subTitleCopy sizeWithAttributes:v20];
    v13 = v21;
  }

  if (v17 >= v13)
  {
    v22 = v17;
  }

  else
  {
    v22 = v13;
  }

  [self titleLabelFirstBaselineAnchorConstraintConstantForNavigationListStyle:styleCopy];
  v24 = v23;
  [self subtitleLabelFirstBaselineAnchorConstraintConstantForNavigationListStyle:styleCopy];
  v26 = v25;
  [self contentViewBottomAnchorConstraintConstantForNavigationListStyle:styleCopy];
  v28 = v27;

  v29 = v12 + 22.0 + 5.0 + v22;
  v30 = ceil(v24 + v26 + v28);
  result.height = v30;
  result.width = v29;
  return result;
}

+ (double)titleLabelFirstBaselineAnchorConstraintConstantForNavigationListStyle:(id)style
{
  styleCopy = style;
  detailCellTitleFont = [styleCopy detailCellTitleFont];
  [styleCopy detailCellTitleLabelFirstBaselineAnchorConstraintConstant];
  v6 = v5;

  [detailCellTitleFont _scaledValueForValue:v6];
  v8 = ceil(v7);

  return v8;
}

+ (double)subtitleLabelFirstBaselineAnchorConstraintConstantForNavigationListStyle:(id)style
{
  styleCopy = style;
  detailCellSubtitleFont = [styleCopy detailCellSubtitleFont];
  [styleCopy detailCellSubtitleLabelFirstBaselineAnchorConstraintConstant];
  v6 = v5;

  [detailCellSubtitleFont _scaledValueForValue:v6];
  v8 = ceil(v7);

  return v8;
}

+ (double)contentViewBottomAnchorConstraintConstantForNavigationListStyle:(id)style
{
  styleCopy = style;
  detailCellSubtitleFont = [styleCopy detailCellSubtitleFont];
  [styleCopy detailCellContentViewBottomAnchorConstraintConstant];
  v6 = v5;

  [detailCellSubtitleFont _scaledValueForValue:v6];
  v8 = ceil(v7);

  return v8;
}

@end