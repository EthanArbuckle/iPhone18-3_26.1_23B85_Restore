@interface IntelligentCallScreeningMenuCell
- (IntelligentCallScreeningMenuCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (id)visibleTrailingViewForState;
- (void)refreshCellContentsWithSpecifier:(id)a3;
- (void)setUpViews;
- (void)updateViews;
@end

@implementation IntelligentCallScreeningMenuCell

- (IntelligentCallScreeningMenuCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v7.receiver = self;
  v7.super_class = IntelligentCallScreeningMenuCell;
  v4 = [(IntelligentCallScreeningMenuCell *)&v7 initWithStyle:a3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    [(IntelligentCallScreeningMenuCell *)v4 setUpViews];
  }

  return v5;
}

- (void)setUpViews
{
  if (!self->_mainStackView)
  {
    v3 = objc_alloc_init(UILabel);
    primaryLabel = self->_primaryLabel;
    self->_primaryLabel = v3;

    v5 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
    [(UILabel *)self->_primaryLabel setFont:v5];

    [(UILabel *)self->_primaryLabel setAdjustsFontForContentSizeCategory:1];
    [(UILabel *)self->_primaryLabel setNumberOfLines:0];
    [(UILabel *)self->_primaryLabel setLineBreakMode:1];
    LODWORD(v6) = 1148846080;
    [(UILabel *)self->_primaryLabel setContentCompressionResistancePriority:1 forAxis:v6];
    LODWORD(v7) = 1144750080;
    [(UILabel *)self->_primaryLabel setContentCompressionResistancePriority:0 forAxis:v7];
    v8 = objc_alloc_init(UILabel);
    secondaryLabel = self->_secondaryLabel;
    self->_secondaryLabel = v8;

    v10 = [UIFont preferredFontForTextStyle:UIFontTextStyleSubheadline];
    [(UILabel *)self->_secondaryLabel setFont:v10];

    v11 = +[UIColor secondaryLabelColor];
    [(UILabel *)self->_secondaryLabel setTextColor:v11];

    [(UILabel *)self->_secondaryLabel setAdjustsFontForContentSizeCategory:1];
    [(UILabel *)self->_secondaryLabel setNumberOfLines:0];
    LODWORD(v12) = 1148846080;
    [(UILabel *)self->_secondaryLabel setContentCompressionResistancePriority:1 forAxis:v12];
    LODWORD(v13) = 1144750080;
    [(UILabel *)self->_secondaryLabel setContentCompressionResistancePriority:0 forAxis:v13];
    v14 = [UIStackView alloc];
    v60 = self->_primaryLabel;
    v15 = [NSArray arrayWithObjects:&v60 count:1];
    v16 = [v14 initWithArrangedSubviews:v15];
    labelsStackView = self->_labelsStackView;
    self->_labelsStackView = v16;

    [(UIStackView *)self->_labelsStackView setAxis:1];
    [(UIStackView *)self->_labelsStackView setSpacing:2.0];
    v57 = [UIImageSymbolConfiguration configurationWithWeight:6];
    v18 = [UIImageView alloc];
    v19 = [UIImage systemImageNamed:@"checkmark" withConfiguration:v57];
    v20 = [v18 initWithImage:v19];
    checkmarkView = self->_checkmarkView;
    self->_checkmarkView = v20;

    [(UIImageView *)self->_checkmarkView setContentMode:1];
    LODWORD(v22) = 1148846080;
    [(UIImageView *)self->_checkmarkView setContentCompressionResistancePriority:1 forAxis:v22];
    LODWORD(v23) = 1148846080;
    [(UIImageView *)self->_checkmarkView setContentCompressionResistancePriority:0 forAxis:v23];
    v24 = objc_alloc_init(UIView);
    trailingContainerView = self->_trailingContainerView;
    self->_trailingContainerView = v24;

    LODWORD(v26) = 1148846080;
    [(UIView *)self->_trailingContainerView setContentCompressionResistancePriority:1 forAxis:v26];
    LODWORD(v27) = 1148846080;
    [(UIView *)self->_trailingContainerView setContentCompressionResistancePriority:0 forAxis:v27];
    v28 = [UIStackView alloc];
    v29 = self->_trailingContainerView;
    v59[0] = self->_labelsStackView;
    v59[1] = v29;
    v30 = [NSArray arrayWithObjects:v59 count:2];
    v31 = [v28 initWithArrangedSubviews:v30];
    mainStackView = self->_mainStackView;
    self->_mainStackView = v31;

    [(UIStackView *)self->_mainStackView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIStackView *)self->_mainStackView setSpacing:1.17549435e-38];
    [(UIStackView *)self->_mainStackView setCustomSpacing:self->_labelsStackView afterView:16.0];
    v33 = [(IntelligentCallScreeningMenuCell *)self contentView];
    [v33 addSubview:self->_mainStackView];

    v55 = [(UIStackView *)self->_mainStackView leadingAnchor];
    v56 = [(IntelligentCallScreeningMenuCell *)self contentView];
    v54 = [v56 layoutMarginsGuide];
    v53 = [v54 leadingAnchor];
    v52 = [v55 constraintEqualToAnchor:v53];
    v58[0] = v52;
    v50 = [(UIStackView *)self->_mainStackView trailingAnchor];
    v51 = [(IntelligentCallScreeningMenuCell *)self contentView];
    v49 = [v51 layoutMarginsGuide];
    v48 = [v49 trailingAnchor];
    v47 = [v50 constraintEqualToAnchor:v48];
    v58[1] = v47;
    v45 = [(UIStackView *)self->_mainStackView topAnchor];
    v46 = [(IntelligentCallScreeningMenuCell *)self contentView];
    v44 = [v46 layoutMarginsGuide];
    v34 = [v44 topAnchor];
    v35 = [v45 constraintEqualToAnchor:v34];
    v58[2] = v35;
    v36 = [(UIStackView *)self->_mainStackView bottomAnchor];
    v37 = [(IntelligentCallScreeningMenuCell *)self contentView];
    v38 = [v37 layoutMarginsGuide];
    v39 = [v38 bottomAnchor];
    v40 = [v36 constraintEqualToAnchor:v39];
    v58[3] = v40;
    v41 = [(UIView *)self->_trailingContainerView widthAnchor];
    v42 = [v41 constraintEqualToConstant:20.0];
    v58[4] = v42;
    v43 = [NSArray arrayWithObjects:v58 count:5];
    [NSLayoutConstraint activateConstraints:v43];
  }
}

- (void)updateViews
{
  [(UILabel *)self->_primaryLabel setText:self->_primaryText];
  [(UILabel *)self->_secondaryLabel setText:self->_secondaryText];
  v3 = [(UILabel *)self->_secondaryLabel text];
  v4 = [v3 length];

  if (v4)
  {
    [(UIStackView *)self->_labelsStackView addArrangedSubview:self->_secondaryLabel];
  }

  else
  {
    [(UILabel *)self->_secondaryLabel removeFromSuperview];
  }

  v5 = [(IntelligentCallScreeningMenuCell *)self visibleTrailingViewForState];
  v6 = [(UIView *)self->_trailingContainerView subviews];
  v7 = [v6 firstObject];

  if (v5 != v7)
  {
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v8 = [(UIView *)self->_trailingContainerView subviews];
    v9 = [v8 countByEnumeratingWithState:&v31 objects:v36 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v32;
      do
      {
        v12 = 0;
        do
        {
          if (*v32 != v11)
          {
            objc_enumerationMutation(v8);
          }

          [*(*(&v31 + 1) + 8 * v12) removeFromSuperview];
          v12 = v12 + 1;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v31 objects:v36 count:16];
      }

      while (v10);
    }

    if (v5)
    {
      [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
      LODWORD(v13) = 1148846080;
      [v5 setContentCompressionResistancePriority:1 forAxis:v13];
      LODWORD(v14) = 1148846080;
      [v5 setContentCompressionResistancePriority:0 forAxis:v14];
      [(UIView *)self->_trailingContainerView addSubview:v5];
      v30 = [v5 leadingAnchor];
      v29 = [(UIView *)self->_trailingContainerView leadingAnchor];
      v28 = [v30 constraintGreaterThanOrEqualToAnchor:v29];
      v35[0] = v28;
      v27 = [v5 trailingAnchor];
      v26 = [(UIView *)self->_trailingContainerView trailingAnchor];
      v25 = [v27 constraintLessThanOrEqualToAnchor:v26];
      v35[1] = v25;
      v24 = [v5 centerXAnchor];
      v15 = [(UIView *)self->_trailingContainerView centerXAnchor];
      v16 = [v24 constraintEqualToAnchor:v15];
      v35[2] = v16;
      v17 = [v5 topAnchor];
      v18 = [(UIView *)self->_trailingContainerView topAnchor];
      v19 = [v17 constraintEqualToAnchor:v18];
      v35[3] = v19;
      v20 = [v5 bottomAnchor];
      v21 = [(UIView *)self->_trailingContainerView bottomAnchor];
      v22 = [v20 constraintEqualToAnchor:v21];
      v35[4] = v22;
      v23 = [NSArray arrayWithObjects:v35 count:5];
      [NSLayoutConstraint activateConstraints:v23];
    }
  }
}

- (id)visibleTrailingViewForState
{
  if (self->_hasCheckmark)
  {
    v3 = self->_checkmarkView;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  v14.receiver = self;
  v14.super_class = IntelligentCallScreeningMenuCell;
  v4 = a3;
  [(IntelligentCallScreeningMenuCell *)&v14 refreshCellContentsWithSpecifier:v4];
  v5 = [v4 objectForKeyedSubscript:{@"specifier-checked", v14.receiver, v14.super_class}];
  self->_hasCheckmark = [v5 BOOLValue];

  v6 = [v4 objectForKeyedSubscript:PSTitleKey];
  v7 = [v6 stringValue];

  v8 = [v4 objectForKeyedSubscript:PSTableCellSubtitleTextKey];

  v9 = [v8 stringValue];

  v10 = [IntelligentCallScreeningMenuCellOption localizedStringForKey:v7];
  primaryText = self->_primaryText;
  self->_primaryText = v10;

  v12 = [IntelligentCallScreeningMenuCellOption localizedStringForKey:v9];
  secondaryText = self->_secondaryText;
  self->_secondaryText = v12;

  [(IntelligentCallScreeningMenuCell *)self updateViews];
}

@end