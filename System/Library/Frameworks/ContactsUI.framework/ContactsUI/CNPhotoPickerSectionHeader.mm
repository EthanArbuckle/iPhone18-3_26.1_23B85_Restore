@interface CNPhotoPickerSectionHeader
+ (double)heightNeededForAccessibilityLayoutIncludingActionButton:(BOOL)button;
- (CNPhotoPickerSectionHeader)initWithFrame:(CGRect)frame;
- (void)actionButtonPressed:(id)pressed;
- (void)prepareForReuse;
- (void)setupConstraints;
- (void)traitCollectionDidChange:(id)change;
- (void)updateDynamicStackViewProperties;
- (void)updateStyle:(id)style;
@end

@implementation CNPhotoPickerSectionHeader

- (void)traitCollectionDidChange:(id)change
{
  v4.receiver = self;
  v4.super_class = CNPhotoPickerSectionHeader;
  [(CNPhotoPickerSectionHeader *)&v4 traitCollectionDidChange:change];
  [(CNPhotoPickerSectionHeader *)self updateDynamicStackViewProperties];
}

- (void)prepareForReuse
{
  v5.receiver = self;
  v5.super_class = CNPhotoPickerSectionHeader;
  [(CNPhotoPickerSectionHeader *)&v5 prepareForReuse];
  titleLabel = [(CNPhotoPickerSectionHeader *)self titleLabel];
  [titleLabel setText:0];

  actionButton = [(CNPhotoPickerSectionHeader *)self actionButton];
  [actionButton setTitle:0 forState:0];
}

- (void)actionButtonPressed:(id)pressed
{
  actionBlock = [(CNPhotoPickerSectionHeader *)self actionBlock];

  if (actionBlock)
  {
    actionBlock2 = [(CNPhotoPickerSectionHeader *)self actionBlock];
    actionBlock2[2]();
  }
}

- (void)updateDynamicStackViewProperties
{
  ab_preferredContentSizeCategoryIsAccessibilityCategory = [MEMORY[0x1E69DB878] ab_preferredContentSizeCategoryIsAccessibilityCategory];
  stackView = [(CNPhotoPickerSectionHeader *)self stackView];
  [stackView setAxis:ab_preferredContentSizeCategoryIsAccessibilityCategory];

  stackView2 = [(CNPhotoPickerSectionHeader *)self stackView];
  [stackView2 setAlignment:ab_preferredContentSizeCategoryIsAccessibilityCategory];
}

- (void)setupConstraints
{
  v23[4] = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  safeAreaLayoutGuide = [(CNPhotoPickerSectionHeader *)self safeAreaLayoutGuide];
  leadingAnchor = [safeAreaLayoutGuide leadingAnchor];

  stackView = [(CNPhotoPickerSectionHeader *)self stackView];
  leadingAnchor2 = [stackView leadingAnchor];
  v19 = [leadingAnchor2 constraintEqualToAnchor:leadingAnchor];
  v23[0] = v19;
  stackView2 = [(CNPhotoPickerSectionHeader *)self stackView];
  trailingAnchor = [stackView2 trailingAnchor];
  safeAreaLayoutGuide2 = [(CNPhotoPickerSectionHeader *)self safeAreaLayoutGuide];
  trailingAnchor2 = [safeAreaLayoutGuide2 trailingAnchor];
  v14 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v23[1] = v14;
  stackView3 = [(CNPhotoPickerSectionHeader *)self stackView];
  topAnchor = [stackView3 topAnchor];
  topAnchor2 = [(CNPhotoPickerSectionHeader *)self topAnchor];
  v8 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v23[2] = v8;
  stackView4 = [(CNPhotoPickerSectionHeader *)self stackView];
  bottomAnchor = [stackView4 bottomAnchor];
  bottomAnchor2 = [(CNPhotoPickerSectionHeader *)self bottomAnchor];
  v12 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v23[3] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:4];
  [v3 addObjectsFromArray:v13];

  [MEMORY[0x1E696ACD8] activateConstraints:v3];
}

- (void)updateStyle:(id)style
{
  styleCopy = style;
  backgroundColor = [styleCopy backgroundColor];
  if (backgroundColor)
  {
    [(CNPhotoPickerSectionHeader *)self setBackgroundColor:backgroundColor];
  }

  else
  {
    v6 = +[CNUIColorRepository photoPickerBackgroundColor];
    [(CNPhotoPickerSectionHeader *)self setBackgroundColor:v6];
  }

  textColor = [styleCopy textColor];

  titleLabel = [(CNPhotoPickerSectionHeader *)self titleLabel];
  [titleLabel setTextColor:textColor];
}

- (CNPhotoPickerSectionHeader)initWithFrame:(CGRect)frame
{
  v22[2] = *MEMORY[0x1E69E9840];
  v21.receiver = self;
  v21.super_class = CNPhotoPickerSectionHeader;
  v3 = [(CNPhotoPickerSectionHeader *)&v21 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    titleLabel = v3->_titleLabel;
    v3->_titleLabel = v4;

    [(UILabel *)v3->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    titleLabelFont = [objc_opt_class() titleLabelFont];
    [(UILabel *)v3->_titleLabel setFont:titleLabelFont];

    [(UILabel *)v3->_titleLabel setAdjustsFontForContentSizeCategory:1];
    LODWORD(v7) = 1148846080;
    [(UILabel *)v3->_titleLabel setContentCompressionResistancePriority:1 forAxis:v7];
    v8 = [CNPhotoPickerHeaderButton buttonWithType:1];
    actionButton = v3->_actionButton;
    v3->_actionButton = v8;

    [(UIButton *)v3->_actionButton setTranslatesAutoresizingMaskIntoConstraints:0];
    actionButtonFont = [objc_opt_class() actionButtonFont];
    titleLabel = [(UIButton *)v3->_actionButton titleLabel];
    [titleLabel setFont:actionButtonFont];

    titleLabel2 = [(UIButton *)v3->_actionButton titleLabel];
    [titleLabel2 setAdjustsFontForContentSizeCategory:1];

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

+ (double)heightNeededForAccessibilityLayoutIncludingActionButton:(BOOL)button
{
  buttonCopy = button;
  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen scale];

  titleLabelFont = [self titleLabelFont];
  [titleLabelFont lineHeight];
  UIRoundToScale();
  v8 = v7;

  if (buttonCopy)
  {
    actionButtonFont = [self actionButtonFont];
    [actionButtonFont lineHeight];
    UIRoundToScale();
    v8 = v8 + v10;
  }

  return v8;
}

@end