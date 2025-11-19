@interface CNPhotoPickerSectionHeader
+ (double)heightNeededForAccessibilityLayoutIncludingActionButton:(BOOL)a3;
- (CNPhotoPickerSectionHeader)initWithFrame:(CGRect)a3;
- (void)actionButtonPressed:(id)a3;
- (void)prepareForReuse;
- (void)setupConstraints;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateDynamicStackViewProperties;
- (void)updateStyle:(id)a3;
@end

@implementation CNPhotoPickerSectionHeader

- (void)traitCollectionDidChange:(id)a3
{
  v4.receiver = self;
  v4.super_class = CNPhotoPickerSectionHeader;
  [(CNPhotoPickerSectionHeader *)&v4 traitCollectionDidChange:a3];
  [(CNPhotoPickerSectionHeader *)self updateDynamicStackViewProperties];
}

- (void)prepareForReuse
{
  v5.receiver = self;
  v5.super_class = CNPhotoPickerSectionHeader;
  [(CNPhotoPickerSectionHeader *)&v5 prepareForReuse];
  v3 = [(CNPhotoPickerSectionHeader *)self titleLabel];
  [v3 setText:0];

  v4 = [(CNPhotoPickerSectionHeader *)self actionButton];
  [v4 setTitle:0 forState:0];
}

- (void)actionButtonPressed:(id)a3
{
  v4 = [(CNPhotoPickerSectionHeader *)self actionBlock];

  if (v4)
  {
    v5 = [(CNPhotoPickerSectionHeader *)self actionBlock];
    v5[2]();
  }
}

- (void)updateDynamicStackViewProperties
{
  v3 = [MEMORY[0x1E69DB878] ab_preferredContentSizeCategoryIsAccessibilityCategory];
  v4 = [(CNPhotoPickerSectionHeader *)self stackView];
  [v4 setAxis:v3];

  v5 = [(CNPhotoPickerSectionHeader *)self stackView];
  [v5 setAlignment:v3];
}

- (void)setupConstraints
{
  v23[4] = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v4 = [(CNPhotoPickerSectionHeader *)self safeAreaLayoutGuide];
  v22 = [v4 leadingAnchor];

  v21 = [(CNPhotoPickerSectionHeader *)self stackView];
  v20 = [v21 leadingAnchor];
  v19 = [v20 constraintEqualToAnchor:v22];
  v23[0] = v19;
  v18 = [(CNPhotoPickerSectionHeader *)self stackView];
  v16 = [v18 trailingAnchor];
  v17 = [(CNPhotoPickerSectionHeader *)self safeAreaLayoutGuide];
  v15 = [v17 trailingAnchor];
  v14 = [v16 constraintEqualToAnchor:v15];
  v23[1] = v14;
  v5 = [(CNPhotoPickerSectionHeader *)self stackView];
  v6 = [v5 topAnchor];
  v7 = [(CNPhotoPickerSectionHeader *)self topAnchor];
  v8 = [v6 constraintEqualToAnchor:v7];
  v23[2] = v8;
  v9 = [(CNPhotoPickerSectionHeader *)self stackView];
  v10 = [v9 bottomAnchor];
  v11 = [(CNPhotoPickerSectionHeader *)self bottomAnchor];
  v12 = [v10 constraintEqualToAnchor:v11];
  v23[3] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:4];
  [v3 addObjectsFromArray:v13];

  [MEMORY[0x1E696ACD8] activateConstraints:v3];
}

- (void)updateStyle:(id)a3
{
  v4 = a3;
  v5 = [v4 backgroundColor];
  if (v5)
  {
    [(CNPhotoPickerSectionHeader *)self setBackgroundColor:v5];
  }

  else
  {
    v6 = +[CNUIColorRepository photoPickerBackgroundColor];
    [(CNPhotoPickerSectionHeader *)self setBackgroundColor:v6];
  }

  v8 = [v4 textColor];

  v7 = [(CNPhotoPickerSectionHeader *)self titleLabel];
  [v7 setTextColor:v8];
}

- (CNPhotoPickerSectionHeader)initWithFrame:(CGRect)a3
{
  v22[2] = *MEMORY[0x1E69E9840];
  v21.receiver = self;
  v21.super_class = CNPhotoPickerSectionHeader;
  v3 = [(CNPhotoPickerSectionHeader *)&v21 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    titleLabel = v3->_titleLabel;
    v3->_titleLabel = v4;

    [(UILabel *)v3->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v6 = [objc_opt_class() titleLabelFont];
    [(UILabel *)v3->_titleLabel setFont:v6];

    [(UILabel *)v3->_titleLabel setAdjustsFontForContentSizeCategory:1];
    LODWORD(v7) = 1148846080;
    [(UILabel *)v3->_titleLabel setContentCompressionResistancePriority:1 forAxis:v7];
    v8 = [CNPhotoPickerHeaderButton buttonWithType:1];
    actionButton = v3->_actionButton;
    v3->_actionButton = v8;

    [(UIButton *)v3->_actionButton setTranslatesAutoresizingMaskIntoConstraints:0];
    v10 = [objc_opt_class() actionButtonFont];
    v11 = [(UIButton *)v3->_actionButton titleLabel];
    [v11 setFont:v10];

    v12 = [(UIButton *)v3->_actionButton titleLabel];
    [v12 setAdjustsFontForContentSizeCategory:1];

    LODWORD(v13) = 1148846080;
    [(UIButton *)v3->_actionButton setContentHuggingPriority:0 forAxis:v13];
    [(UIButton *)v3->_actionButton addTarget:v3 action:sel_actionButtonPressed_ forControlEvents:64];
    v14 = objc_alloc(MEMORY[0x1E69DCF90]);
    v22[0] = v3->_titleLabel;
    v22[1] = v3->_actionButton;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:2];
    v16 = [v14 initWithArrangedSubviews:v15];
    stackView = v3->_stackView;
    v3->_stackView = v16;

    [(UIStackView *)v3->_stackView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIStackView *)v3->_stackView setDistribution:3];
    [(CNPhotoPickerSectionHeader *)v3 addSubview:v3->_stackView];
    v18 = +[CNContactStyle currentStyle];
    [(CNPhotoPickerSectionHeader *)v3 updateStyle:v18];

    [(CNPhotoPickerSectionHeader *)v3 setupConstraints];
    [(CNPhotoPickerSectionHeader *)v3 updateDynamicStackViewProperties];
    v19 = v3;
  }

  return v3;
}

+ (double)heightNeededForAccessibilityLayoutIncludingActionButton:(BOOL)a3
{
  v3 = a3;
  v5 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v5 scale];

  v6 = [a1 titleLabelFont];
  [v6 lineHeight];
  UIRoundToScale();
  v8 = v7;

  if (v3)
  {
    v9 = [a1 actionButtonFont];
    [v9 lineHeight];
    UIRoundToScale();
    v8 = v8 + v10;
  }

  return v8;
}

@end