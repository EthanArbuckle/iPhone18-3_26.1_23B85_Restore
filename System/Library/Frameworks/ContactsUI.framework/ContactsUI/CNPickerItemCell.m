@interface CNPickerItemCell
- (CNPickerItemCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)beginEditing;
- (void)endEditing;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setTextFieldHidden:(BOOL)a3;
@end

@implementation CNPickerItemCell

- (void)setTextFieldHidden:(BOOL)a3
{
  v3 = a3;
  v5 = [(CNPickerItemCell *)self textField];
  [v5 setHidden:v3];

  v6 = [(CNPickerItemCell *)self textLabel];
  [v6 setHidden:v3 ^ 1];
}

- (void)endEditing
{
  v3 = [(CNPickerItemCell *)self textField];
  v4 = [v3 text];
  -[CNPickerItemCell setTextFieldHidden:](self, "setTextFieldHidden:", [v4 length] == 0);

  v5 = [(CNPickerItemCell *)self textField];
  LODWORD(v4) = [v5 isFirstResponder];

  if (v4)
  {
    v6 = [(CNPickerItemCell *)self textField];
    [v6 resignFirstResponder];
  }
}

- (void)beginEditing
{
  [(CNPickerItemCell *)self setTextFieldHidden:0];
  v3 = [(CNPickerItemCell *)self textField];
  [v3 becomeFirstResponder];
}

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = CNPickerItemCell;
  [(CNPickerItemCell *)&v4 prepareForReuse];
  v3 = [(CNPickerItemCell *)self textField];
  [v3 setText:&stru_1F0CE7398];

  [(CNPickerItemCell *)self setTextFieldHidden:1];
}

- (void)layoutSubviews
{
  v13.receiver = self;
  v13.super_class = CNPickerItemCell;
  [(CNPickerItemCell *)&v13 layoutSubviews];
  v3 = [(CNPickerItemCell *)self textLabel];
  [v3 frame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [(CNPickerItemCell *)self textField];
  [v12 setFrame:{v5, v7, v9, v11}];
}

- (CNPickerItemCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v11.receiver = self;
  v11.super_class = CNPickerItemCell;
  v4 = [(CNPickerItemCell *)&v11 initWithStyle:a3 reuseIdentifier:a4];
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

    v9 = [(CNPickerItemCell *)v4 contentView];
    [v9 addSubview:v4->_textField];
  }

  return v4;
}

@end