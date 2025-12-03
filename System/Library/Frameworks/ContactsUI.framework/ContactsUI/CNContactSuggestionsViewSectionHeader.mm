@interface CNContactSuggestionsViewSectionHeader
- (CNContactSuggestionsViewSectionHeader)initWithFrame:(CGRect)frame;
- (void)prepareForReuse;
- (void)setupConstraints;
@end

@implementation CNContactSuggestionsViewSectionHeader

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = CNContactSuggestionsViewSectionHeader;
  [(CNContactSuggestionsViewSectionHeader *)&v4 prepareForReuse];
  titleLabel = [(CNContactSuggestionsViewSectionHeader *)self titleLabel];
  [titleLabel setText:0];
}

- (void)setupConstraints
{
  v23[4] = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  titleLabel = [(CNContactSuggestionsViewSectionHeader *)self titleLabel];
  leadingAnchor = [titleLabel leadingAnchor];
  layoutMarginsGuide = [(CNContactSuggestionsViewSectionHeader *)self layoutMarginsGuide];
  leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
  v18 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v23[0] = v18;
  titleLabel2 = [(CNContactSuggestionsViewSectionHeader *)self titleLabel];
  trailingAnchor = [titleLabel2 trailingAnchor];
  layoutMarginsGuide2 = [(CNContactSuggestionsViewSectionHeader *)self layoutMarginsGuide];
  trailingAnchor2 = [layoutMarginsGuide2 trailingAnchor];
  v13 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v23[1] = v13;
  titleLabel3 = [(CNContactSuggestionsViewSectionHeader *)self titleLabel];
  topAnchor = [titleLabel3 topAnchor];
  topAnchor2 = [(CNContactSuggestionsViewSectionHeader *)self topAnchor];
  v7 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:15.0];
  v23[2] = v7;
  titleLabel4 = [(CNContactSuggestionsViewSectionHeader *)self titleLabel];
  bottomAnchor = [titleLabel4 bottomAnchor];
  bottomAnchor2 = [(CNContactSuggestionsViewSectionHeader *)self bottomAnchor];
  v11 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-5.0];
  v23[3] = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:4];
  [v3 addObjectsFromArray:v12];

  [MEMORY[0x1E696ACD8] activateConstraints:v3];
}

- (CNContactSuggestionsViewSectionHeader)initWithFrame:(CGRect)frame
{
  v10.receiver = self;
  v10.super_class = CNContactSuggestionsViewSectionHeader;
  v3 = [(CNContactSuggestionsViewSectionHeader *)&v10 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    titleLabel = v3->_titleLabel;
    v3->_titleLabel = v4;

    v6 = +[CNUIColorRepository contactSuggestionsTextLabelColor];
    [(UILabel *)v3->_titleLabel setTextColor:v6];

    [(UILabel *)v3->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v7 = +[CNUIFontRepository contactSuggestionsHeaderTitleFont];
    [(UILabel *)v3->_titleLabel setFont:v7];

    [(UILabel *)v3->_titleLabel setAdjustsFontForContentSizeCategory:1];
    [(CNContactSuggestionsViewSectionHeader *)v3 addSubview:v3->_titleLabel];
    [(CNContactSuggestionsViewSectionHeader *)v3 setupConstraints];
    v8 = v3;
  }

  return v3;
}

@end