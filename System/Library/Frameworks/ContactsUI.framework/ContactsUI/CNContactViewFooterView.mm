@interface CNContactViewFooterView
- (CNContactViewFooterView)init;
- (void)setContact:(id)a3;
- (void)setupSubviews;
- (void)updateLabelText;
@end

@implementation CNContactViewFooterView

- (void)updateLabelText
{
  v3 = [(CNContactViewFooterView *)self contact];
  v4 = [v3 contactType];

  v5 = CNContactsUIBundle();
  v9 = v5;
  if (v4 == 1)
  {
    v6 = @"ORGANIZATION_PRONUNCIATION_UPDATED_MESSAGE";
  }

  else
  {
    v6 = @"CONTACT_PRONUNCIATION_UPDATED_MESSAGE";
  }

  v7 = [v5 localizedStringForKey:v6 value:&stru_1F0CE7398 table:@"Localized"];
  v8 = [(CNContactViewFooterView *)self label];
  [v8 setText:v7];
}

- (void)setContact:(id)a3
{
  v5 = a3;
  if (([(CNContact *)self->_contact isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_contact, a3);
    [(CNContactViewFooterView *)self updateLabelText];
  }
}

- (void)setupSubviews
{
  v20[3] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v3 setAdjustsFontForContentSizeCategory:1];
  v4 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD28]];
  [v3 setFont:v4];

  v5 = [MEMORY[0x1E69DC888] tertiaryLabelColor];
  [v3 setTextColor:v5];

  [v3 setTextAlignment:1];
  [v3 setNumberOfLines:0];
  [(CNContactViewFooterView *)self setLabel:v3];
  [(CNContactViewFooterView *)self updateLabelText];
  [(CNContactViewFooterView *)self addSubview:v3];
  v15 = MEMORY[0x1E696ACD8];
  v18 = [v3 leadingAnchor];
  v19 = [(CNContactViewFooterView *)self layoutMarginsGuide];
  v17 = [v19 leadingAnchor];
  v16 = [v18 constraintEqualToAnchor:v17];
  v20[0] = v16;
  v6 = [v3 trailingAnchor];
  v7 = [(CNContactViewFooterView *)self layoutMarginsGuide];
  v8 = [v7 trailingAnchor];
  v9 = [v6 constraintEqualToAnchor:v8];
  v20[1] = v9;
  v10 = [v3 topAnchor];
  v11 = [(CNContactViewFooterView *)self layoutMarginsGuide];
  v12 = [v11 topAnchor];
  v13 = [v10 constraintEqualToAnchor:v12 constant:8.0];
  v20[2] = v13;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:3];
  [v15 activateConstraints:v14];
}

- (CNContactViewFooterView)init
{
  v6.receiver = self;
  v6.super_class = CNContactViewFooterView;
  v2 = [(CNContactViewFooterView *)&v6 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v3 = v2;
  if (v2)
  {
    [(CNContactViewFooterView *)v2 setupSubviews];
    v4 = v3;
  }

  return v3;
}

@end