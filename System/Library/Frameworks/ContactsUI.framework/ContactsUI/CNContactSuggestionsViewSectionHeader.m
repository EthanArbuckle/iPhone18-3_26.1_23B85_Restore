@interface CNContactSuggestionsViewSectionHeader
- (CNContactSuggestionsViewSectionHeader)initWithFrame:(CGRect)a3;
- (void)prepareForReuse;
- (void)setupConstraints;
@end

@implementation CNContactSuggestionsViewSectionHeader

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = CNContactSuggestionsViewSectionHeader;
  [(CNContactSuggestionsViewSectionHeader *)&v4 prepareForReuse];
  v3 = [(CNContactSuggestionsViewSectionHeader *)self titleLabel];
  [v3 setText:0];
}

- (void)setupConstraints
{
  v23[4] = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v22 = [(CNContactSuggestionsViewSectionHeader *)self titleLabel];
  v20 = [v22 leadingAnchor];
  v21 = [(CNContactSuggestionsViewSectionHeader *)self layoutMarginsGuide];
  v19 = [v21 leadingAnchor];
  v18 = [v20 constraintEqualToAnchor:v19];
  v23[0] = v18;
  v17 = [(CNContactSuggestionsViewSectionHeader *)self titleLabel];
  v15 = [v17 trailingAnchor];
  v16 = [(CNContactSuggestionsViewSectionHeader *)self layoutMarginsGuide];
  v14 = [v16 trailingAnchor];
  v13 = [v15 constraintEqualToAnchor:v14];
  v23[1] = v13;
  v4 = [(CNContactSuggestionsViewSectionHeader *)self titleLabel];
  v5 = [v4 topAnchor];
  v6 = [(CNContactSuggestionsViewSectionHeader *)self topAnchor];
  v7 = [v5 constraintEqualToAnchor:v6 constant:15.0];
  v23[2] = v7;
  v8 = [(CNContactSuggestionsViewSectionHeader *)self titleLabel];
  v9 = [v8 bottomAnchor];
  v10 = [(CNContactSuggestionsViewSectionHeader *)self bottomAnchor];
  v11 = [v9 constraintEqualToAnchor:v10 constant:-5.0];
  v23[3] = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:4];
  [v3 addObjectsFromArray:v12];

  [MEMORY[0x1E696ACD8] activateConstraints:v3];
}

- (CNContactSuggestionsViewSectionHeader)initWithFrame:(CGRect)a3
{
  v10.receiver = self;
  v10.super_class = CNContactSuggestionsViewSectionHeader;
  v3 = [(CNContactSuggestionsViewSectionHeader *)&v10 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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