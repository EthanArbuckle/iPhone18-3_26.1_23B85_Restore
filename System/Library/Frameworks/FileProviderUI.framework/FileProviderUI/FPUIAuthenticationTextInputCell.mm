@interface FPUIAuthenticationTextInputCell
- (BOOL)_isLargeTextTraitCollection:(id)collection;
- (FPUIAuthenticationTextInputCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (UILabel)label;
- (UITextField)textField;
- (void)prepareForReuse;
- (void)updateForChangedContentSizeCategory;
@end

@implementation FPUIAuthenticationTextInputCell

- (FPUIAuthenticationTextInputCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v47[5] = *MEMORY[0x277D85DE8];
  v45.receiver = self;
  v45.super_class = FPUIAuthenticationTextInputCell;
  v4 = [(FPUIAuthenticationTextInputCell *)&v45 initWithStyle:style reuseIdentifier:identifier];
  if (v4)
  {
    v44 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
    v5 = objc_opt_new();
    [v5 setFont:v44];
    v6 = objc_opt_new();
    [v6 setFont:v44];
    [v6 setHoverStyle:0];
    objc_storeWeak(&v4->_label, v5);
    objc_storeWeak(&v4->_textField, v6);
    v42 = v5;
    [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
    v7 = objc_opt_new();
    [(UIStackView *)v7 setAxis:0];
    [(UIStackView *)v7 setSpacing:20.0];
    [(UIStackView *)v7 setAlignment:0];
    [(UIStackView *)v7 setDistribution:0];
    [(UIStackView *)v7 addArrangedSubview:v5];
    v43 = v6;
    [(UIStackView *)v7 addArrangedSubview:v6];
    [(UIStackView *)v7 setTranslatesAutoresizingMaskIntoConstraints:0];
    stackView = v4->_stackView;
    v4->_stackView = v7;
    v9 = v7;

    contentView = [(FPUIAuthenticationTextInputCell *)v4 contentView];
    [contentView addSubview:v9];

    widthAnchor = [v6 widthAnchor];
    v40 = [widthAnchor constraintGreaterThanOrEqualToConstant:100.0];
    v47[0] = v40;
    v36 = v9;
    leadingAnchor = [(UIStackView *)v9 leadingAnchor];
    contentView2 = [(FPUIAuthenticationTextInputCell *)v4 contentView];
    layoutMarginsGuide = [contentView2 layoutMarginsGuide];
    leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
    v34 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v47[1] = v34;
    contentView3 = [(FPUIAuthenticationTextInputCell *)v4 contentView];
    layoutMarginsGuide2 = [contentView3 layoutMarginsGuide];
    bottomAnchor = [layoutMarginsGuide2 bottomAnchor];
    bottomAnchor2 = [(UIStackView *)v9 bottomAnchor];
    v29 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:0.5];
    v47[2] = v29;
    contentView4 = [(FPUIAuthenticationTextInputCell *)v4 contentView];
    layoutMarginsGuide3 = [contentView4 layoutMarginsGuide];
    trailingAnchor = [layoutMarginsGuide3 trailingAnchor];
    trailingAnchor2 = [(UIStackView *)v9 trailingAnchor];
    v14 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:8.0];
    v47[3] = v14;
    topAnchor = [(UIStackView *)v9 topAnchor];
    contentView5 = [(FPUIAuthenticationTextInputCell *)v4 contentView];
    layoutMarginsGuide4 = [contentView5 layoutMarginsGuide];
    topAnchor2 = [layoutMarginsGuide4 topAnchor];
    v19 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:0.5];
    v47[4] = v19;
    v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v47 count:5];

    LODWORD(v20) = 1132134400;
    [v42 setContentHuggingPriority:0 forAxis:v20];
    [MEMORY[0x277CCAAD0] activateConstraints:v27];
    [(FPUIAuthenticationTextInputCell *)v4 updateForChangedContentSizeCategory];
    v21 = objc_opt_self();
    v46[0] = v21;
    v22 = objc_opt_self();
    v46[1] = v22;
    v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v46 count:2];

    v24 = [(FPUIAuthenticationTextInputCell *)v4 registerForTraitChanges:v23 withHandler:&__block_literal_global];
  }

  v25 = *MEMORY[0x277D85DE8];
  return v4;
}

- (void)prepareForReuse
{
  v7.receiver = self;
  v7.super_class = FPUIAuthenticationTextInputCell;
  [(FPUIAuthenticationTextInputCell *)&v7 prepareForReuse];
  WeakRetained = objc_loadWeakRetained(&self->_label);
  [WeakRetained setText:0];

  v4 = objc_loadWeakRetained(&self->_textField);
  [v4 setText:0];

  v5 = objc_loadWeakRetained(&self->_textField);
  [v5 setSecureTextEntry:0];

  v6 = objc_loadWeakRetained(&self->_textField);
  [v6 setKeyboardType:0];
}

- (void)updateForChangedContentSizeCategory
{
  traitCollection = [(FPUIAuthenticationTextInputCell *)self traitCollection];
  v4 = [(FPUIAuthenticationTextInputCell *)self _isLargeTextTraitCollection:traitCollection];

  stackView = self->_stackView;

  [(UIStackView *)stackView setAxis:v4];
}

- (BOOL)_isLargeTextTraitCollection:(id)collection
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277D767F8];
  v11 = *MEMORY[0x277D76800];
  v12 = v3;
  v4 = *MEMORY[0x277D767E8];
  v13 = *MEMORY[0x277D767F0];
  v14 = v4;
  v15 = *MEMORY[0x277D76818];
  v5 = MEMORY[0x277CBEA60];
  collectionCopy = collection;
  v7 = [v5 arrayWithObjects:&v11 count:5];
  preferredContentSizeCategory = [collectionCopy preferredContentSizeCategory];

  LOBYTE(v5) = [v7 containsObject:preferredContentSizeCategory];
  v9 = *MEMORY[0x277D85DE8];
  return v5;
}

- (UILabel)label
{
  WeakRetained = objc_loadWeakRetained(&self->_label);

  return WeakRetained;
}

- (UITextField)textField
{
  WeakRetained = objc_loadWeakRetained(&self->_textField);

  return WeakRetained;
}

@end