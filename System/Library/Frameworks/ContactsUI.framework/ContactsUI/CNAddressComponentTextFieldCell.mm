@interface CNAddressComponentTextFieldCell
- (CNAddressComponentTextFieldCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (NSArray)textFields;
- (NSDictionary)textAttributes;
- (UIImageView)chevron;
- (id)newTextField;
- (void)prepareForReuse;
- (void)setShowsChevron:(BOOL)chevron;
- (void)setTextAttributes:(id)attributes;
- (void)setupTextFields;
- (void)updateMargins;
@end

@implementation CNAddressComponentTextFieldCell

- (NSDictionary)textAttributes
{
  textField = [(CNAddressComponentTextFieldCell *)self textField];
  ab_textAttributes = [textField ab_textAttributes];

  return ab_textAttributes;
}

- (void)setTextAttributes:(id)attributes
{
  attributesCopy = attributes;
  textField = [(CNAddressComponentTextFieldCell *)self textField];
  ab_textAttributes = [textField ab_textAttributes];

  if (ab_textAttributes != attributesCopy)
  {
    textField2 = [(CNAddressComponentTextFieldCell *)self textField];
    [textField2 setAb_textAttributes:attributesCopy];
  }
}

- (NSArray)textFields
{
  v5[1] = *MEMORY[0x1E69E9840];
  textField = [(CNAddressComponentTextFieldCell *)self textField];
  v5[0] = textField;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];

  return v3;
}

- (void)setShowsChevron:(BOOL)chevron
{
  chevronCopy = chevron;
  v12[2] = *MEMORY[0x1E69E9840];
  self->_showsChevron = chevron;
  textField = [(CNAddressComponentTextFieldCell *)self textField];

  if (textField)
  {
    if (chevronCopy)
    {
      LODWORD(v6) = 1148846080;
      [(UIImageView *)self->_chevron setLayoutSize:*MEMORY[0x1E698B708] withContentPriority:*(MEMORY[0x1E698B708] + 8), v6];
      [(UIImageView *)self->_chevron setHidden:0];
      textField2 = [(CNAddressComponentTextFieldCell *)self textField];
      v12[0] = textField2;
      chevron = [(CNAddressComponentTextFieldCell *)self chevron];
      v12[1] = chevron;
      containerView2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:2];
      containerView = [(NUITableViewContainerCell *)self containerView];
      [containerView setArrangedSubviews:containerView2];
    }

    else
    {
      textField2 = [(CNAddressComponentTextFieldCell *)self textField];
      v11 = textField2;
      chevron = [MEMORY[0x1E695DEC8] arrayWithObjects:&v11 count:1];
      containerView2 = [(NUITableViewContainerCell *)self containerView];
      [containerView2 setArrangedSubviews:chevron];
    }
  }
}

- (UIImageView)chevron
{
  chevron = self->_chevron;
  if (!chevron)
  {
    cnui_symbolImageForContactCardChevron = [MEMORY[0x1E69DCAB8] cnui_symbolImageForContactCardChevron];
    v5 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:cnui_symbolImageForContactCardChevron];
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

  containerView = [(NUITableViewContainerCell *)self containerView];
  [containerView setDirectionalLayoutMargins:{v3, v4, v5, v6}];
}

- (id)newTextField
{
  v2 = [CNTextField alloc];
  v3 = [(CNTextField *)v2 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  [(CNTextField *)v3 setClearButtonMode:0];
  textInputTraits = [(CNTextField *)v3 textInputTraits];
  [textInputTraits setReturnKeyGoesToNextResponder:1];

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
  textField = [(CNAddressComponentTextFieldCell *)self textField];
  [textField setDelegate:0];

  v5.receiver = self;
  v5.super_class = CNAddressComponentTextFieldCell;
  [(CNAddressComponentTextFieldCell *)&v5 prepareForReuse];
}

- (void)setupTextFields
{
  newTextField = [(CNAddressComponentTextFieldCell *)self newTextField];
  [(CNAddressComponentTextFieldCell *)self setTextField:newTextField];

  containerView = [(NUITableViewContainerCell *)self containerView];
  textField = [(CNAddressComponentTextFieldCell *)self textField];
  [containerView addArrangedSubview:textField];
}

- (CNAddressComponentTextFieldCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v9.receiver = self;
  v9.super_class = CNAddressComponentTextFieldCell;
  v4 = [(NUITableViewContainerCell *)&v9 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    [(CNAddressComponentTextFieldCell *)v4 setSelectionStyle:0];
    [(CNAddressComponentTextFieldCell *)v5 setupTextFields];
    [(CNAddressComponentTextFieldCell *)v5 contentSizeCategoryDidChange:0];
    containerView = [(NUITableViewContainerCell *)v5 containerView];
    [containerView setAxis:0];
  }

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:v5 selector:sel_contentSizeCategoryDidChange_ name:*MEMORY[0x1E69DDC48] object:0];

  return v5;
}

@end