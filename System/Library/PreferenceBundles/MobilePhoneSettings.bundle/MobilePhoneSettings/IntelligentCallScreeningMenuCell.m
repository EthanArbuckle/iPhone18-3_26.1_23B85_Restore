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
  v4 = [(PSTableCell *)&v7 initWithStyle:a3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    [(IntelligentCallScreeningMenuCell *)v4 setUpViews];
  }

  return v5;
}

- (void)setUpViews
{
  v62[1] = *MEMORY[0x277D85DE8];
  if (!self->_mainStackView)
  {
    v3 = objc_alloc_init(MEMORY[0x277D756B8]);
    primaryLabel = self->_primaryLabel;
    self->_primaryLabel = v3;

    v5 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
    [(UILabel *)self->_primaryLabel setFont:v5];

    [(UILabel *)self->_primaryLabel setAdjustsFontForContentSizeCategory:1];
    [(UILabel *)self->_primaryLabel setNumberOfLines:0];
    [(UILabel *)self->_primaryLabel setLineBreakMode:1];
    LODWORD(v6) = 1148846080;
    [(UILabel *)self->_primaryLabel setContentCompressionResistancePriority:1 forAxis:v6];
    LODWORD(v7) = 1144750080;
    [(UILabel *)self->_primaryLabel setContentCompressionResistancePriority:0 forAxis:v7];
    v8 = objc_alloc_init(MEMORY[0x277D756B8]);
    secondaryLabel = self->_secondaryLabel;
    self->_secondaryLabel = v8;

    v10 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D769D0]];
    [(UILabel *)self->_secondaryLabel setFont:v10];

    v11 = [MEMORY[0x277D75348] secondaryLabelColor];
    [(UILabel *)self->_secondaryLabel setTextColor:v11];

    [(UILabel *)self->_secondaryLabel setAdjustsFontForContentSizeCategory:1];
    [(UILabel *)self->_secondaryLabel setNumberOfLines:0];
    LODWORD(v12) = 1148846080;
    [(UILabel *)self->_secondaryLabel setContentCompressionResistancePriority:1 forAxis:v12];
    LODWORD(v13) = 1144750080;
    [(UILabel *)self->_secondaryLabel setContentCompressionResistancePriority:0 forAxis:v13];
    v14 = objc_alloc(MEMORY[0x277D75A68]);
    v62[0] = self->_primaryLabel;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v62 count:1];
    v16 = [v14 initWithArrangedSubviews:v15];
    labelsStackView = self->_labelsStackView;
    self->_labelsStackView = v16;

    [(UIStackView *)self->_labelsStackView setAxis:1];
    [(UIStackView *)self->_labelsStackView setSpacing:2.0];
    v59 = [MEMORY[0x277D755D0] configurationWithWeight:6];
    v18 = objc_alloc(MEMORY[0x277D755E8]);
    v19 = [MEMORY[0x277D755B8] systemImageNamed:@"checkmark" withConfiguration:v59];
    v20 = [v18 initWithImage:v19];
    checkmarkView = self->_checkmarkView;
    self->_checkmarkView = v20;

    [(UIImageView *)self->_checkmarkView setContentMode:1];
    LODWORD(v22) = 1148846080;
    [(UIImageView *)self->_checkmarkView setContentCompressionResistancePriority:1 forAxis:v22];
    LODWORD(v23) = 1148846080;
    [(UIImageView *)self->_checkmarkView setContentCompressionResistancePriority:0 forAxis:v23];
    v24 = objc_alloc_init(MEMORY[0x277D75D18]);
    trailingContainerView = self->_trailingContainerView;
    self->_trailingContainerView = v24;

    LODWORD(v26) = 1148846080;
    [(UIView *)self->_trailingContainerView setContentCompressionResistancePriority:1 forAxis:v26];
    LODWORD(v27) = 1148846080;
    [(UIView *)self->_trailingContainerView setContentCompressionResistancePriority:0 forAxis:v27];
    v28 = objc_alloc(MEMORY[0x277D75A68]);
    v29 = self->_trailingContainerView;
    v61[0] = self->_labelsStackView;
    v61[1] = v29;
    v30 = [MEMORY[0x277CBEA60] arrayWithObjects:v61 count:2];
    v31 = [v28 initWithArrangedSubviews:v30];
    mainStackView = self->_mainStackView;
    self->_mainStackView = v31;

    [(UIStackView *)self->_mainStackView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIStackView *)self->_mainStackView setSpacing:1.17549435e-38];
    [(UIStackView *)self->_mainStackView setCustomSpacing:self->_labelsStackView afterView:16.0];
    v33 = [(IntelligentCallScreeningMenuCell *)self contentView];
    [v33 addSubview:self->_mainStackView];

    v48 = MEMORY[0x277CCAAD0];
    v57 = [(UIStackView *)self->_mainStackView leadingAnchor];
    v58 = [(IntelligentCallScreeningMenuCell *)self contentView];
    v56 = [v58 layoutMarginsGuide];
    v55 = [v56 leadingAnchor];
    v54 = [v57 constraintEqualToAnchor:v55];
    v60[0] = v54;
    v52 = [(UIStackView *)self->_mainStackView trailingAnchor];
    v53 = [(IntelligentCallScreeningMenuCell *)self contentView];
    v51 = [v53 layoutMarginsGuide];
    v50 = [v51 trailingAnchor];
    v49 = [v52 constraintEqualToAnchor:v50];
    v60[1] = v49;
    v46 = [(UIStackView *)self->_mainStackView topAnchor];
    v47 = [(IntelligentCallScreeningMenuCell *)self contentView];
    v45 = [v47 layoutMarginsGuide];
    v34 = [v45 topAnchor];
    v35 = [v46 constraintEqualToAnchor:v34];
    v60[2] = v35;
    v36 = [(UIStackView *)self->_mainStackView bottomAnchor];
    v37 = [(IntelligentCallScreeningMenuCell *)self contentView];
    v38 = [v37 layoutMarginsGuide];
    v39 = [v38 bottomAnchor];
    v40 = [v36 constraintEqualToAnchor:v39];
    v60[3] = v40;
    v41 = [(UIView *)self->_trailingContainerView widthAnchor];
    v42 = [v41 constraintEqualToConstant:20.0];
    v60[4] = v42;
    v43 = [MEMORY[0x277CBEA60] arrayWithObjects:v60 count:5];
    [v48 activateConstraints:v43];
  }

  v44 = *MEMORY[0x277D85DE8];
}

- (void)updateViews
{
  v39 = *MEMORY[0x277D85DE8];
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
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v8 = [(UIView *)self->_trailingContainerView subviews];
    v9 = [v8 countByEnumeratingWithState:&v33 objects:v38 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v34;
      do
      {
        v12 = 0;
        do
        {
          if (*v34 != v11)
          {
            objc_enumerationMutation(v8);
          }

          [*(*(&v33 + 1) + 8 * v12++) removeFromSuperview];
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v33 objects:v38 count:16];
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
      v26 = MEMORY[0x277CCAAD0];
      v32 = [v5 leadingAnchor];
      v31 = [(UIView *)self->_trailingContainerView leadingAnchor];
      v30 = [v32 constraintGreaterThanOrEqualToAnchor:v31];
      v37[0] = v30;
      v29 = [v5 trailingAnchor];
      v28 = [(UIView *)self->_trailingContainerView trailingAnchor];
      v27 = [v29 constraintLessThanOrEqualToAnchor:v28];
      v37[1] = v27;
      v25 = [v5 centerXAnchor];
      v15 = [(UIView *)self->_trailingContainerView centerXAnchor];
      v16 = [v25 constraintEqualToAnchor:v15];
      v37[2] = v16;
      v17 = [v5 topAnchor];
      v18 = [(UIView *)self->_trailingContainerView topAnchor];
      v19 = [v17 constraintEqualToAnchor:v18];
      v37[3] = v19;
      v20 = [v5 bottomAnchor];
      v21 = [(UIView *)self->_trailingContainerView bottomAnchor];
      v22 = [v20 constraintEqualToAnchor:v21];
      v37[4] = v22;
      v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:5];
      [v26 activateConstraints:v23];
    }
  }

  v24 = *MEMORY[0x277D85DE8];
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
  [(PSTableCell *)&v14 refreshCellContentsWithSpecifier:v4];
  v5 = [v4 objectForKeyedSubscript:{@"specifier-checked", v14.receiver, v14.super_class}];
  self->_hasCheckmark = [v5 BOOLValue];

  v6 = [v4 objectForKeyedSubscript:*MEMORY[0x277D40170]];
  v7 = [v6 stringValue];

  v8 = [v4 objectForKeyedSubscript:*MEMORY[0x277D40160]];

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