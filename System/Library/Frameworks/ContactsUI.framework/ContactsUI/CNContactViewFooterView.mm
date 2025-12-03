@interface CNContactViewFooterView
- (CNContactViewFooterView)init;
- (void)setContact:(id)contact;
- (void)setupSubviews;
- (void)updateLabelText;
@end

@implementation CNContactViewFooterView

- (void)updateLabelText
{
  contact = [(CNContactViewFooterView *)self contact];
  contactType = [contact contactType];

  v5 = CNContactsUIBundle();
  v9 = v5;
  if (contactType == 1)
  {
    v6 = @"ORGANIZATION_PRONUNCIATION_UPDATED_MESSAGE";
  }

  else
  {
    v6 = @"CONTACT_PRONUNCIATION_UPDATED_MESSAGE";
  }

  v7 = [v5 localizedStringForKey:v6 value:&stru_1F0CE7398 table:@"Localized"];
  label = [(CNContactViewFooterView *)self label];
  [label setText:v7];
}

- (void)setContact:(id)contact
{
  contactCopy = contact;
  if (([(CNContact *)self->_contact isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_contact, contact);
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

  tertiaryLabelColor = [MEMORY[0x1E69DC888] tertiaryLabelColor];
  [v3 setTextColor:tertiaryLabelColor];

  [v3 setTextAlignment:1];
  [v3 setNumberOfLines:0];
  [(CNContactViewFooterView *)self setLabel:v3];
  [(CNContactViewFooterView *)self updateLabelText];
  [(CNContactViewFooterView *)self addSubview:v3];
  v15 = MEMORY[0x1E696ACD8];
  leadingAnchor = [v3 leadingAnchor];
  layoutMarginsGuide = [(CNContactViewFooterView *)self layoutMarginsGuide];
  leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
  v16 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v20[0] = v16;
  trailingAnchor = [v3 trailingAnchor];
  layoutMarginsGuide2 = [(CNContactViewFooterView *)self layoutMarginsGuide];
  trailingAnchor2 = [layoutMarginsGuide2 trailingAnchor];
  v9 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v20[1] = v9;
  topAnchor = [v3 topAnchor];
  layoutMarginsGuide3 = [(CNContactViewFooterView *)self layoutMarginsGuide];
  topAnchor2 = [layoutMarginsGuide3 topAnchor];
  v13 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:8.0];
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