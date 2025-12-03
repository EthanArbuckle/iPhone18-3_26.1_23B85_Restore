@interface IntelligentCallScreeningMenuCell
- (IntelligentCallScreeningMenuCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (id)visibleTrailingViewForState;
- (void)refreshCellContentsWithSpecifier:(id)specifier;
- (void)setUpViews;
- (void)updateViews;
@end

@implementation IntelligentCallScreeningMenuCell

- (IntelligentCallScreeningMenuCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v7.receiver = self;
  v7.super_class = IntelligentCallScreeningMenuCell;
  v4 = [(IntelligentCallScreeningMenuCell *)&v7 initWithStyle:style reuseIdentifier:identifier];
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
    contentView = [(IntelligentCallScreeningMenuCell *)self contentView];
    [contentView addSubview:self->_mainStackView];

    leadingAnchor = [(UIStackView *)self->_mainStackView leadingAnchor];
    contentView2 = [(IntelligentCallScreeningMenuCell *)self contentView];
    layoutMarginsGuide = [contentView2 layoutMarginsGuide];
    leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
    v52 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v58[0] = v52;
    trailingAnchor = [(UIStackView *)self->_mainStackView trailingAnchor];
    contentView3 = [(IntelligentCallScreeningMenuCell *)self contentView];
    layoutMarginsGuide2 = [contentView3 layoutMarginsGuide];
    trailingAnchor2 = [layoutMarginsGuide2 trailingAnchor];
    v47 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v58[1] = v47;
    topAnchor = [(UIStackView *)self->_mainStackView topAnchor];
    contentView4 = [(IntelligentCallScreeningMenuCell *)self contentView];
    layoutMarginsGuide3 = [contentView4 layoutMarginsGuide];
    topAnchor2 = [layoutMarginsGuide3 topAnchor];
    v35 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v58[2] = v35;
    bottomAnchor = [(UIStackView *)self->_mainStackView bottomAnchor];
    contentView5 = [(IntelligentCallScreeningMenuCell *)self contentView];
    layoutMarginsGuide4 = [contentView5 layoutMarginsGuide];
    bottomAnchor2 = [layoutMarginsGuide4 bottomAnchor];
    v40 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v58[3] = v40;
    widthAnchor = [(UIView *)self->_trailingContainerView widthAnchor];
    v42 = [widthAnchor constraintEqualToConstant:20.0];
    v58[4] = v42;
    v43 = [NSArray arrayWithObjects:v58 count:5];
    [NSLayoutConstraint activateConstraints:v43];
  }
}

- (void)updateViews
{
  [(UILabel *)self->_primaryLabel setText:self->_primaryText];
  [(UILabel *)self->_secondaryLabel setText:self->_secondaryText];
  text = [(UILabel *)self->_secondaryLabel text];
  v4 = [text length];

  if (v4)
  {
    [(UIStackView *)self->_labelsStackView addArrangedSubview:self->_secondaryLabel];
  }

  else
  {
    [(UILabel *)self->_secondaryLabel removeFromSuperview];
  }

  visibleTrailingViewForState = [(IntelligentCallScreeningMenuCell *)self visibleTrailingViewForState];
  subviews = [(UIView *)self->_trailingContainerView subviews];
  firstObject = [subviews firstObject];

  if (visibleTrailingViewForState != firstObject)
  {
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    subviews2 = [(UIView *)self->_trailingContainerView subviews];
    v9 = [subviews2 countByEnumeratingWithState:&v31 objects:v36 count:16];
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
            objc_enumerationMutation(subviews2);
          }

          [*(*(&v31 + 1) + 8 * v12) removeFromSuperview];
          v12 = v12 + 1;
        }

        while (v10 != v12);
        v10 = [subviews2 countByEnumeratingWithState:&v31 objects:v36 count:16];
      }

      while (v10);
    }

    if (visibleTrailingViewForState)
    {
      [visibleTrailingViewForState setTranslatesAutoresizingMaskIntoConstraints:0];
      LODWORD(v13) = 1148846080;
      [visibleTrailingViewForState setContentCompressionResistancePriority:1 forAxis:v13];
      LODWORD(v14) = 1148846080;
      [visibleTrailingViewForState setContentCompressionResistancePriority:0 forAxis:v14];
      [(UIView *)self->_trailingContainerView addSubview:visibleTrailingViewForState];
      leadingAnchor = [visibleTrailingViewForState leadingAnchor];
      leadingAnchor2 = [(UIView *)self->_trailingContainerView leadingAnchor];
      v28 = [leadingAnchor constraintGreaterThanOrEqualToAnchor:leadingAnchor2];
      v35[0] = v28;
      trailingAnchor = [visibleTrailingViewForState trailingAnchor];
      trailingAnchor2 = [(UIView *)self->_trailingContainerView trailingAnchor];
      v25 = [trailingAnchor constraintLessThanOrEqualToAnchor:trailingAnchor2];
      v35[1] = v25;
      centerXAnchor = [visibleTrailingViewForState centerXAnchor];
      centerXAnchor2 = [(UIView *)self->_trailingContainerView centerXAnchor];
      v16 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
      v35[2] = v16;
      topAnchor = [visibleTrailingViewForState topAnchor];
      topAnchor2 = [(UIView *)self->_trailingContainerView topAnchor];
      v19 = [topAnchor constraintEqualToAnchor:topAnchor2];
      v35[3] = v19;
      bottomAnchor = [visibleTrailingViewForState bottomAnchor];
      bottomAnchor2 = [(UIView *)self->_trailingContainerView bottomAnchor];
      v22 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
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

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  v14.receiver = self;
  v14.super_class = IntelligentCallScreeningMenuCell;
  specifierCopy = specifier;
  [(IntelligentCallScreeningMenuCell *)&v14 refreshCellContentsWithSpecifier:specifierCopy];
  v5 = [specifierCopy objectForKeyedSubscript:{@"specifier-checked", v14.receiver, v14.super_class}];
  self->_hasCheckmark = [v5 BOOLValue];

  v6 = [specifierCopy objectForKeyedSubscript:PSTitleKey];
  stringValue = [v6 stringValue];

  v8 = [specifierCopy objectForKeyedSubscript:PSTableCellSubtitleTextKey];

  stringValue2 = [v8 stringValue];

  v10 = [IntelligentCallScreeningMenuCellOption localizedStringForKey:stringValue];
  primaryText = self->_primaryText;
  self->_primaryText = v10;

  v12 = [IntelligentCallScreeningMenuCellOption localizedStringForKey:stringValue2];
  secondaryText = self->_secondaryText;
  self->_secondaryText = v12;

  [(IntelligentCallScreeningMenuCell *)self updateViews];
}

@end