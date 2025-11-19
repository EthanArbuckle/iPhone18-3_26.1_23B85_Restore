@interface EKUICalendarListViewHeaderContentView
+ (double)dynamicFontSizeForMainText;
+ (double)dynamicFontSizeForSecondaryText;
+ (double)isAccessibilityLayout;
- (EKUICalendarListViewHeaderContentView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
- (void)reloadSubviews;
- (void)setConfiguration:(id)a3;
@end

@implementation EKUICalendarListViewHeaderContentView

- (EKUICalendarListViewHeaderContentView)initWithFrame:(CGRect)a3
{
  v18.receiver = self;
  v18.super_class = EKUICalendarListViewHeaderContentView;
  v3 = [(EKUICalendarListViewHeaderContentView *)&v18 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    if (CalCanvasPocketEnabled())
    {
      [MEMORY[0x1E69DC888] clearColor];
    }

    else
    {
      [MEMORY[0x1E69DC888] systemBackgroundColor];
    }
    v4 = ;
    [(EKUICalendarListViewHeaderContentView *)v3 setBackgroundColor:v4];

    v5 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    weekDayLabel = v3->_weekDayLabel;
    v3->_weekDayLabel = v5;

    [(UILabel *)v3->_weekDayLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v7 = MEMORY[0x1E69DB878];
    [objc_opt_class() dynamicFontSizeForMainText];
    v8 = [v7 boldSystemFontOfSize:?];
    [(UILabel *)v3->_weekDayLabel setFont:v8];

    [(EKUICalendarListViewHeaderContentView *)v3 addSubview:v3->_weekDayLabel];
    v9 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    altCalendarLabel = v3->_altCalendarLabel;
    v3->_altCalendarLabel = v9;

    [(UILabel *)v3->_altCalendarLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v11 = MEMORY[0x1E69DB878];
    [objc_opt_class() dynamicFontSizeForSecondaryText];
    v12 = [v11 boldSystemFontOfSize:?];
    [(UILabel *)v3->_altCalendarLabel setFont:v12];

    [(EKUICalendarListViewHeaderContentView *)v3 addSubview:v3->_altCalendarLabel];
    v13 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    weekNumberLabel = v3->_weekNumberLabel;
    v3->_weekNumberLabel = v13;

    [(UILabel *)v3->_weekNumberLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v15 = MEMORY[0x1E69DB878];
    [objc_opt_class() dynamicFontSizeForSecondaryText];
    v16 = [v15 systemFontOfSize:?];
    [(UILabel *)v3->_weekNumberLabel setFont:v16];

    [(EKUICalendarListViewHeaderContentView *)v3 addSubview:v3->_weekNumberLabel];
  }

  return v3;
}

+ (double)isAccessibilityLayout
{
  [a1 dynamicFontSizeForMainText];
  v4 = v3;
  [a1 defaultFontSizeForMainText];
  v6 = v4 <= v5 + 4.0;
  result = 0.0;
  if (!v6)
  {
    return 1.0;
  }

  return result;
}

+ (double)dynamicFontSizeForMainText
{
  v3 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD10]];
  v4 = [v3 fontDescriptor];
  [v4 pointSize];
  v6 = v5;

  [a1 defaultFontSizeForMainText];
  CalRoundToScreenScale(v6 * (v7 / 11.0));
  return fmin(v8, 26.0);
}

+ (double)dynamicFontSizeForSecondaryText
{
  v2 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD10]];
  v3 = [v2 fontDescriptor];
  [v3 pointSize];
  v5 = v4;

  CalRoundToScreenScale(v5 * 1.27272727);
  return fmin(v6, 22.0);
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = EKUICalendarListViewHeaderContentView;
  [(EKUICalendarListViewHeaderContentView *)&v3 layoutSubviews];
  [(EKUICalendarListViewHeaderContentView *)self reloadSubviews];
}

- (void)setConfiguration:(id)a3
{
  objc_storeStrong(&self->_configuration, a3);

  [(EKUICalendarListViewHeaderContentView *)self reloadSubviews];
}

- (void)reloadSubviews
{
  v61[5] = *MEMORY[0x1E69E9840];
  [objc_opt_class() isAccessibilityLayout];
  v4 = v3 != 0.0 || [(EKUICalendarListContentConfiguration *)self->_configuration useAccessibilityLayoutForAltCalendarText];
  if (!self->_activatedConstraints || self->_activatedConstraintsIsForAccessibilityLayout != v4)
  {
    [(NSLayoutConstraint *)self->_accessibilityLeadingMarginConstraint setActive:0];
    [(NSLayoutConstraint *)self->_trailingMarginConstraint setActive:0];
    LODWORD(v5) = 1132068864;
    [(UILabel *)self->_weekDayLabel setContentHuggingPriority:0 forAxis:v5];
    if (self->_activatedConstraints)
    {
      [MEMORY[0x1E696ACD8] deactivateConstraints:?];
    }

    v59 = _NSDictionaryOfVariableBindings(&cfstr_WeekdaylabelAl.isa, self->_weekDayLabel, self->_altCalendarLabel, self->_weekNumberLabel, 0);
    v6 = objc_opt_new();
    v58 = v4;
    if (v4)
    {
      v7 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"H:|-(leadingMargin)-[_weekDayLabel(>=0)]-(edgeMargin)-|" options:0 metrics:&unk_1F4F329A0 views:v59];
      [(NSArray *)v6 addObjectsFromArray:v7];

      v8 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"H:[_altCalendarLabel]-[_weekNumberLabel]-(>=edgeMargin)-|" options:0 metrics:&unk_1F4F329A0 views:v59];
      [(NSArray *)v6 addObjectsFromArray:v8];

      v9 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_altCalendarLabel attribute:5 relatedBy:0 toItem:self attribute:5 multiplier:1.0 constant:16.0];
      accessibilityLeadingMarginConstraint = self->_accessibilityLeadingMarginConstraint;
      self->_accessibilityLeadingMarginConstraint = v9;

      [(NSLayoutConstraint *)self->_accessibilityLeadingMarginConstraint setActive:1];
      v11 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_weekDayLabel attribute:3 relatedBy:0 toItem:self attribute:3 multiplier:1.0 constant:8.0];
      v61[0] = v11;
      v12 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_altCalendarLabel attribute:3 relatedBy:0 toItem:self->_weekDayLabel attribute:4 multiplier:1.0 constant:0.0];
      v61[1] = v12;
      v13 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_weekNumberLabel attribute:3 relatedBy:0 toItem:self->_weekDayLabel attribute:4 multiplier:1.0 constant:0.0];
      v61[2] = v13;
      v14 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_altCalendarLabel attribute:4 relatedBy:0 toItem:self attribute:4 multiplier:1.0 constant:-8.0];
      v61[3] = v14;
      v15 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_weekNumberLabel attribute:4 relatedBy:0 toItem:self attribute:4 multiplier:1.0 constant:-8.0];
      v61[4] = v15;
      v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v61 count:5];
      [(NSArray *)v6 addObjectsFromArray:v16];
    }

    else
    {
      v17 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"H:|-(leadingMargin)-[_weekDayLabel(>=0)]-[_altCalendarLabel]-[_weekNumberLabel]" options:0 metrics:&unk_1F4F329A0 views:v59];
      [(NSArray *)v6 addObjectsFromArray:v17];

      [(UILabel *)self->_weekDayLabel setContentHuggingPriority:0 forAxis:0.0];
      v18 = [MEMORY[0x1E696ACD8] constraintWithItem:self attribute:6 relatedBy:0 toItem:self->_weekNumberLabel attribute:6 multiplier:1.0 constant:16.0];
      trailingMarginConstraint = self->_trailingMarginConstraint;
      self->_trailingMarginConstraint = v18;

      [(NSLayoutConstraint *)self->_trailingMarginConstraint setActive:1];
      v11 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_weekDayLabel attribute:3 relatedBy:0 toItem:self attribute:3 multiplier:1.0 constant:8.0];
      v60[0] = v11;
      v12 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_weekDayLabel attribute:4 relatedBy:0 toItem:self attribute:4 multiplier:1.0 constant:-8.0];
      v60[1] = v12;
      v13 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_altCalendarLabel attribute:10 relatedBy:0 toItem:self attribute:10 multiplier:1.0 constant:0.0];
      v60[2] = v13;
      v14 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_weekNumberLabel attribute:10 relatedBy:0 toItem:self attribute:10 multiplier:1.0 constant:0.0];
      v60[3] = v14;
      v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v60 count:4];
      [(NSArray *)v6 addObjectsFromArray:v15];
    }

    [MEMORY[0x1E696ACD8] activateConstraints:v6];
    self->_activatedConstraintsIsForAccessibilityLayout = v58;
    activatedConstraints = self->_activatedConstraints;
    self->_activatedConstraints = v6;
  }

  v21 = [(EKUICalendarListContentConfiguration *)self->_configuration weekNumberText];
  [(UILabel *)self->_weekNumberLabel setText:v21];

  v22 = [(EKUICalendarListContentConfiguration *)self->_configuration secondaryTextColor];
  [(UILabel *)self->_weekNumberLabel setTextColor:v22];

  v23 = [(UILabel *)self->_weekNumberLabel text];
  v24 = 8.0;
  v25 = 8.0;
  if (v23)
  {
    v26 = v23;
    v27 = [(UILabel *)self->_weekNumberLabel text];
    v28 = [v27 isEqual:&stru_1F4EF6790];

    v25 = 16.0;
    if (v28)
    {
      v25 = 8.0;
    }
  }

  [(NSLayoutConstraint *)self->_trailingMarginConstraint setConstant:v25];
  v29 = [(EKUICalendarListContentConfiguration *)self->_configuration altCalendarText];
  [(UILabel *)self->_altCalendarLabel setText:v29];

  v30 = [(EKUICalendarListContentConfiguration *)self->_configuration secondaryTextColor];
  [(UILabel *)self->_altCalendarLabel setTextColor:v30];

  v31 = [(UILabel *)self->_altCalendarLabel text];
  if (v31)
  {
    v32 = v31;
    v33 = [(UILabel *)self->_altCalendarLabel text];
    v34 = [v33 isEqual:&stru_1F4EF6790];

    if (v34)
    {
      v24 = 8.0;
    }

    else
    {
      v24 = 16.0;
    }
  }

  [(NSLayoutConstraint *)self->_accessibilityLeadingMarginConstraint setConstant:v24];
  v35 = [(EKUICalendarListContentConfiguration *)self->_configuration mainTextColor];
  [(UILabel *)self->_weekDayLabel setTextColor:v35];

  v36 = [(EKUICalendarListContentConfiguration *)self->_configuration mainText];
  [(UILabel *)self->_weekDayLabel setText:v36];

  [(UILabel *)self->_weekDayLabel frame];
  v38 = v37;
  weekNumberLabel = self->_weekNumberLabel;
  [(UILabel *)weekNumberLabel frame];
  [(UILabel *)weekNumberLabel sizeThatFits:v40, v41];
  v43 = v42;
  [(UILabel *)self->_weekNumberLabel frame];
  v45 = v43 - v44;
  altCalendarLabel = self->_altCalendarLabel;
  [(UILabel *)altCalendarLabel frame];
  [(UILabel *)altCalendarLabel sizeThatFits:v47, v48];
  v50 = v49;
  [(UILabel *)self->_altCalendarLabel frame];
  v52 = v38 - v45 - (v50 - v51);
  if (v38 < 1.0)
  {
    [(EKUICalendarListViewHeaderContentView *)self setNeedsLayout];
  }

  weekDayLabel = self->_weekDayLabel;
  [(UILabel *)weekDayLabel frame];
  [(UILabel *)weekDayLabel sizeThatFits:v54, v55];
  if (v56 > v52)
  {
    v57 = [(EKUICalendarListContentConfiguration *)self->_configuration mainTextAbbr];
    [(UILabel *)self->_weekDayLabel setText:v57];
  }
}

@end