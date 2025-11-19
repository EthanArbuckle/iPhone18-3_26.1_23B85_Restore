@interface CNAddressComponentTextFieldCell
- (CNAddressComponentTextFieldCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (NSArray)textFields;
- (NSDictionary)textAttributes;
- (UIImageView)chevron;
- (id)newTextField;
- (void)prepareForReuse;
- (void)setShowsChevron:(BOOL)a3;
- (void)setTextAttributes:(id)a3;
- (void)setupTextFields;
- (void)updateMargins;
@end

@implementation CNAddressComponentTextFieldCell

- (NSDictionary)textAttributes
{
  v2 = [(CNAddressComponentTextFieldCell *)self textField];
  v3 = [v2 ab_textAttributes];

  return v3;
}

- (void)setTextAttributes:(id)a3
{
  v7 = a3;
  v4 = [(CNAddressComponentTextFieldCell *)self textField];
  v5 = [v4 ab_textAttributes];

  if (v5 != v7)
  {
    v6 = [(CNAddressComponentTextFieldCell *)self textField];
    [v6 setAb_textAttributes:v7];
  }
}

- (NSArray)textFields
{
  v5[1] = *MEMORY[0x1E69E9840];
  v2 = [(CNAddressComponentTextFieldCell *)self textField];
  v5[0] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];

  return v3;
}

- (void)setShowsChevron:(BOOL)a3
{
  v3 = a3;
  v12[2] = *MEMORY[0x1E69E9840];
  self->_showsChevron = a3;
  v5 = [(CNAddressComponentTextFieldCell *)self textField];

  if (v5)
  {
    if (v3)
    {
      LODWORD(v6) = 1148846080;
      [(UIImageView *)self->_chevron setLayoutSize:*MEMORY[0x1E698B708] withContentPriority:*(MEMORY[0x1E698B708] + 8), v6];
      [(UIImageView *)self->_chevron setHidden:0];
      v7 = [(CNAddressComponentTextFieldCell *)self textField];
      v12[0] = v7;
      v8 = [(CNAddressComponentTextFieldCell *)self chevron];
      v12[1] = v8;
      v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:2];
      v10 = [(NUITableViewContainerCell *)self containerView];
      [v10 setArrangedSubviews:v9];
    }

    else
    {
      v7 = [(CNAddressComponentTextFieldCell *)self textField];
      v11 = v7;
      v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v11 count:1];
      v9 = [(NUITableViewContainerCell *)self containerView];
      [v9 setArrangedSubviews:v8];
    }
  }
}

- (UIImageView)chevron
{
  chevron = self->_chevron;
  if (!chevron)
  {
    v4 = [MEMORY[0x1E69DCAB8] cnui_symbolImageForContactCardChevron];
    v5 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v4];
    v6 = self->_chevron;
    self->_chevron = v5;

    [(UIImageView *)self->_chevron setContentMode:1];
    LODWORD(v7) = 1148846080;
    [(UIImageView *)self->_chevron setLayoutSize:*MEMORY[0x1E698B708] withContentPriority:*(MEMORY[0x1E698B708] + 8), v7];
    [(UIImageView *)self->_chevron setDirectionalLayoutMargins:*MEMORY[0x1E69DC5C0], 8.0, *(MEMORY[0x1E69DC5C0] + 16), *(MEMORY[0x1E69DC5C0] + 24)];

    chevron = self->_chevron;
  }

  return chevron;
}

- (void)updateMargins
{
  v3 = *MEMORY[0x1E69DC5C0];
  v4 = *(MEMORY[0x1E69DC5C0] + 8);
  v5 = *(MEMORY[0x1E69DC5C0] + 16);
  v6 = *(MEMORY[0x1E69DC5C0] + 24);
  if (![MEMORY[0x1E69DB878] ab_preferredContentSizeCategoryIsAccessibilityCategory])
  {
    v4 = 16.0;
  }

  v7 = [(NUITableViewContainerCell *)self containerView];
  [v7 setDirectionalLayoutMargins:{v3, v4, v5, v6}];
}

- (id)newTextField
{
  v2 = [CNTextField alloc];
  v3 = [(CNTextField *)v2 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  [(CNTextField *)v3 setClearButtonMode:0];
  v4 = [(CNTextField *)v3 textInputTraits];
  [v4 setReturnKeyGoesToNextResponder:1];

  [(UITextField *)v3 _cnui_applyContactStyle];
  return v3;
}

- (void)prepareForReuse
{
  self->_showsChevron = 0;
  LODWORD(v2) = 1148846080;
  [(UIImageView *)self->_chevron setLayoutSize:*MEMORY[0x1E695F060] withContentPriority:*(MEMORY[0x1E695F060] + 8), v2];
  [(UIImageView *)self->_chevron setHidden:1];
  [(CNAddressComponentTextFieldCell *)self setSelectionStyle:0];
  v4 = [(CNAddressComponentTextFieldCell *)self textField];
  [v4 setDelegate:0];

  v5.receiver = self;
  v5.super_class = CNAddressComponentTextFieldCell;
  [(CNAddressComponentTextFieldCell *)&v5 prepareForReuse];
}

- (void)setupTextFields
{
  v3 = [(CNAddressComponentTextFieldCell *)self newTextField];
  [(CNAddressComponentTextFieldCell *)self setTextField:v3];

  v5 = [(NUITableViewContainerCell *)self containerView];
  v4 = [(CNAddressComponentTextFieldCell *)self textField];
  [v5 addArrangedSubview:v4];
}

- (CNAddressComponentTextFieldCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v9.receiver = self;
  v9.super_class = CNAddressComponentTextFieldCell;
  v4 = [(NUITableViewContainerCell *)&v9 initWithStyle:a3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    [(CNAddressComponentTextFieldCell *)v4 setSelectionStyle:0];
    [(CNAddressComponentTextFieldCell *)v5 setupTextFields];
    [(CNAddressComponentTextFieldCell *)v5 contentSizeCategoryDidChange:0];
    v6 = [(NUITableViewContainerCell *)v5 containerView];
    [v6 setAxis:0];
  }

  v7 = [MEMORY[0x1E696AD88] defaultCenter];
  [v7 addObserver:v5 selector:sel_contentSizeCategoryDidChange_ name:*MEMORY[0x1E69DDC48] object:0];

  return v5;
}

@end