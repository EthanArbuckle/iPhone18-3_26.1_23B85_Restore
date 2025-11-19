@interface CNUINavigationListViewDetailCell
+ (CGSize)desiredContentSizeForTitle:(id)a3 subTitle:(id)a4 navigationListStyle:(id)a5;
+ (double)contentViewBottomAnchorConstraintConstantForNavigationListStyle:(id)a3;
+ (double)subtitleLabelFirstBaselineAnchorConstraintConstantForNavigationListStyle:(id)a3;
+ (double)titleLabelFirstBaselineAnchorConstraintConstantForNavigationListStyle:(id)a3;
- (double)contentViewBottomAnchorConstraintConstant;
- (double)minimumContentHeight;
- (double)subtitleLabelFirstBaselineAnchorConstraintConstant;
- (double)titleLabelFirstBaselineAnchorConstraintConstant;
- (void)applyStyle;
- (void)loadContentViewConstraints;
- (void)setContentAlignment:(int64_t)a3;
- (void)updateConstraints;
@end

@implementation CNUINavigationListViewDetailCell

- (void)applyStyle
{
  v3 = [(CNUINavigationListViewCell *)self styleApplier];
  [v3 applyNavigationListStyleToDetailCell:self];
}

- (void)updateConstraints
{
  v14[1] = *MEMORY[0x1E69E9840];
  v13.receiver = self;
  v13.super_class = CNUINavigationListViewDetailCell;
  [(CNUINavigationListViewCell *)&v13 updateConstraints];
  v3 = [(CNUINavigationListViewDetailCell *)self contentAlignment];
  v4 = [(CNUINavigationListViewCell *)self titleLabel];
  v5 = [v4 leadingAnchor];
  v6 = [(CNUINavigationListViewDetailCell *)self contentView];
  v7 = [v6 leadingAnchor];
  if (v3 == 1)
  {
    v8 = [v5 constraintEqualToAnchor:v7 constant:5.0];
    [(CNUINavigationListViewCell *)self setTitleLabelLeadingAnchorConstraint:v8];
  }

  else
  {
    v8 = [(CNUINavigationListViewCell *)self navigationListStyle];
    [v8 cellUserActionLeftMargin];
    v9 = [v5 constraintEqualToAnchor:v7 constant:?];
    [(CNUINavigationListViewCell *)self setTitleLabelLeadingAnchorConstraint:v9];
  }

  v10 = MEMORY[0x1E696ACD8];
  v11 = [(CNUINavigationListViewCell *)self titleLabelLeadingAnchorConstraint];
  v14[0] = v11;
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
    v3 = [MEMORY[0x1E695DF70] array];
    v4 = [(CNUINavigationListViewDetailCell *)self contentView];
    v5 = [v4 trailingAnchor];
    v6 = [(CNUINavigationListViewCell *)self titleLabel];
    v7 = [v6 trailingAnchor];
    v8 = [v5 constraintEqualToAnchor:v7 constant:5.0];

    [v3 addObject:v8];
    [(CNUINavigationListViewCell *)self setTitleLabelTrailingAnchorConstraint:v8];
    v9 = [(CNUINavigationListViewCell *)self subtitleLabel];
    v10 = [v9 leadingAnchor];
    v11 = [(CNUINavigationListViewCell *)self titleLabel];
    v12 = [v11 leadingAnchor];
    v13 = [v10 constraintEqualToAnchor:v12];

    [v3 addObject:v13];
    [(CNUINavigationListViewCell *)self setSubtitleLabelLeadingAnchorConstraint:v13];
    v14 = [(CNUINavigationListViewCell *)self subtitleLabel];
    v15 = [v14 trailingAnchor];
    v16 = [(CNUINavigationListViewCell *)self titleLabel];
    v17 = [v16 trailingAnchor];
    v18 = [v15 constraintEqualToAnchor:v17];

    [v3 addObject:v18];
    [(CNUINavigationListViewCell *)self setSubtitleLabelTrailingAnchorConstraint:v18];
    v19 = [(CNUINavigationListViewCell *)self subtitleLabel];
    v20 = [v19 firstBaselineAnchor];
    v21 = [(CNUINavigationListViewCell *)self titleLabel];
    v22 = [v21 firstBaselineAnchor];
    [(CNUINavigationListViewDetailCell *)self subtitleLabelFirstBaselineAnchorConstraintConstant];
    v23 = [v20 constraintEqualToAnchor:v22 constant:?];

    [v3 addObject:v23];
    [(CNUINavigationListViewCell *)self setSubtitleLabelFirstBaselineAnchorConstraint:v23];
    [MEMORY[0x1E696ACD8] activateConstraints:v3];
    [(CNUINavigationListViewCell *)self setContentViewConstraintsLoaded:1];
  }
}

- (void)setContentAlignment:(int64_t)a3
{
  if (self->_contentAlignment != a3)
  {
    self->_contentAlignment = a3;
    v5 = [(CNUINavigationListViewDetailCell *)self contentAlignment]== 1;
    v6 = [(CNUINavigationListViewCell *)self titleLabel];
    [v6 setTextAlignment:v5];

    v7 = [(CNUINavigationListViewCell *)self subtitleLabel];
    [v7 setTextAlignment:v5];

    [(CNUINavigationListViewDetailCell *)self separatorInset];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v14 = [(CNUINavigationListViewDetailCell *)self contentAlignment];
    v15 = 0.0;
    if (v14 != 1)
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
  v4 = [(CNUINavigationListViewCell *)self navigationListStyle];
  [v3 titleLabelFirstBaselineAnchorConstraintConstantForNavigationListStyle:v4];
  v6 = v5;

  return v6;
}

- (double)subtitleLabelFirstBaselineAnchorConstraintConstant
{
  v3 = objc_opt_class();
  v4 = [(CNUINavigationListViewCell *)self navigationListStyle];
  [v3 subtitleLabelFirstBaselineAnchorConstraintConstantForNavigationListStyle:v4];
  v6 = v5;

  return v6;
}

- (double)contentViewBottomAnchorConstraintConstant
{
  v3 = objc_opt_class();
  v4 = [(CNUINavigationListViewCell *)self navigationListStyle];
  [v3 contentViewBottomAnchorConstraintConstantForNavigationListStyle:v4];
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

+ (CGSize)desiredContentSizeForTitle:(id)a3 subTitle:(id)a4 navigationListStyle:(id)a5
{
  v34[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  [v10 cellUserActionLeftMargin];
  v12 = v11;
  v13 = *MEMORY[0x1E695F060];
  v14 = [v10 detailCellTitleFont];
  v15 = [v10 detailCellSubtitleFont];
  v16 = *MEMORY[0x1E6996568];
  v17 = v13;
  if (((*(*MEMORY[0x1E6996568] + 16))(*MEMORY[0x1E6996568], v8) & 1) == 0)
  {
    if (v14)
    {
      v33 = *MEMORY[0x1E69DB648];
      v34[0] = v14;
      v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v34 forKeys:&v33 count:1];
    }

    else
    {
      v18 = 0;
    }

    [v8 sizeWithAttributes:v18];
    v17 = v19;
  }

  if (((*(v16 + 16))(v16, v9) & 1) == 0)
  {
    if (v15)
    {
      v31 = *MEMORY[0x1E69DB648];
      v32 = v15;
      v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v32 forKeys:&v31 count:1];
    }

    else
    {
      v20 = 0;
    }

    [v9 sizeWithAttributes:v20];
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

  [a1 titleLabelFirstBaselineAnchorConstraintConstantForNavigationListStyle:v10];
  v24 = v23;
  [a1 subtitleLabelFirstBaselineAnchorConstraintConstantForNavigationListStyle:v10];
  v26 = v25;
  [a1 contentViewBottomAnchorConstraintConstantForNavigationListStyle:v10];
  v28 = v27;

  v29 = v12 + 22.0 + 5.0 + v22;
  v30 = ceil(v24 + v26 + v28);
  result.height = v30;
  result.width = v29;
  return result;
}

+ (double)titleLabelFirstBaselineAnchorConstraintConstantForNavigationListStyle:(id)a3
{
  v3 = a3;
  v4 = [v3 detailCellTitleFont];
  [v3 detailCellTitleLabelFirstBaselineAnchorConstraintConstant];
  v6 = v5;

  [v4 _scaledValueForValue:v6];
  v8 = ceil(v7);

  return v8;
}

+ (double)subtitleLabelFirstBaselineAnchorConstraintConstantForNavigationListStyle:(id)a3
{
  v3 = a3;
  v4 = [v3 detailCellSubtitleFont];
  [v3 detailCellSubtitleLabelFirstBaselineAnchorConstraintConstant];
  v6 = v5;

  [v4 _scaledValueForValue:v6];
  v8 = ceil(v7);

  return v8;
}

+ (double)contentViewBottomAnchorConstraintConstantForNavigationListStyle:(id)a3
{
  v3 = a3;
  v4 = [v3 detailCellSubtitleFont];
  [v3 detailCellContentViewBottomAnchorConstraintConstant];
  v6 = v5;

  [v4 _scaledValueForValue:v6];
  v8 = ceil(v7);

  return v8;
}

@end