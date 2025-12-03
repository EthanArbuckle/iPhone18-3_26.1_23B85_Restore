@interface CNPickerItemCell
- (CNPickerItemCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)beginEditing;
- (void)endEditing;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setTextFieldHidden:(BOOL)hidden;
@end

@implementation CNPickerItemCell

- (void)setTextFieldHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  textField = [(CNPickerItemCell *)self textField];
  [textField setHidden:hiddenCopy];

  textLabel = [(CNPickerItemCell *)self textLabel];
  [textLabel setHidden:hiddenCopy ^ 1];
}

- (void)endEditing
{
  textField = [(CNPickerItemCell *)self textField];
  text = [textField text];
  -[CNPickerItemCell setTextFieldHidden:](self, "setTextFieldHidden:", [text length] == 0);

  textField2 = [(CNPickerItemCell *)self textField];
  LODWORD(text) = [textField2 isFirstResponder];

  if (text)
  {
    textField3 = [(CNPickerItemCell *)self textField];
    [textField3 resignFirstResponder];
  }
}

- (void)beginEditing
{
  [(CNPickerItemCell *)self setTextFieldHidden:0];
  textField = [(CNPickerItemCell *)self textField];
  [textField becomeFirstResponder];
}

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = CNPickerItemCell;
  [(CNPickerItemCell *)&v4 prepareForReuse];
  textField = [(CNPickerItemCell *)self textField];
  [textField setText:&stru_1F0CE7398];

  [(CNPickerItemCell *)self setTextFieldHidden:1];
}

- (void)layoutSubviews
{
  v13.receiver = self;
  v13.super_class = CNPickerItemCell;
  [(CNPickerItemCell *)&v13 layoutSubviews];
  textLabel = [(CNPickerItemCell *)self textLabel];
  [textLabel frame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  textField = [(CNPickerItemCell *)self textField];
  [textField setFrame:{v5, v7, v9, v11}];
}

- (CNPickerItemCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v11.receiver = self;
  v11.super_class = CNPickerItemCell;
  v4 = [(CNPickerItemCell *)&v11 initWithStyle:style reuseIdentifier:identifier];
  if (v4)
  {
    v5 = objc_alloc(MEMORY[0x1E69DD0B0]);
    v6 = [v5 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    textField = v4->_textField;
    v4->_textField = v6;

    [(UITextField *)v4->_textField setAutoresizingMask:18];
    [(UITextField *)v4->_textField setClearButtonMode:1];
    [(UITextField *)v4->_textField setHidden:1];
    [(UITextField *)v4->_textField _cnui_applyContactStyle];
    v8 = [MEMORY[0x1E69DB878] ab_preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
    [(UITextField *)v4->_textField setFont:v8];

    contentView = [(CNPickerItemCell *)v4 contentView];
    [contentView addSubview:v4->_textField];
  }

  return v4;
}

@end