@interface MTEditableTextFieldCell
- (BOOL)textField:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementString:(id)a5;
- (BOOL)textFieldShouldBeginEditing:(id)a3;
- (BOOL)textFieldShouldClear:(id)a3;
- (BOOL)textFieldShouldEndEditing:(id)a3;
- (BOOL)textFieldShouldReturn:(id)a3;
- (UITextFieldDelegate)delegate;
- (void)layoutSubviews;
- (void)setupCell;
- (void)textFieldDidBeginEditing:(id)a3;
- (void)textFieldDidEndEditing:(id)a3;
- (void)updateFonts;
@end

@implementation MTEditableTextFieldCell

- (void)updateFonts
{
  v4 = [objc_opt_class() textFont];
  v3 = [(MTEditableTextFieldCell *)self textField];
  [v3 setFont:v4];
}

- (void)setupCell
{
  v3 = [UITextField alloc];
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v7 = [v3 initWithFrame:{CGRectZero.origin.x, y, width, height}];
  textField = self->_textField;
  self->_textField = v7;

  [(UITextField *)self->_textField setContentVerticalAlignment:0];
  [(UITextField *)self->_textField setClearButtonMode:3];
  v9 = self->_textField;
  v10 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  [(UITextField *)v9 setLeftView:v10];

  [(UITextField *)self->_textField setLeftViewMode:3];
  v11 = self->_textField;
  v12 = [UIColor colorWithRed:0.556862745 green:0.556862745 blue:0.576470588 alpha:1.0];
  [(UITextField *)v11 setTextColor:v12];

  [(UITextField *)self->_textField setDelegate:self];
  v13 = [(MTEditableTextFieldCell *)self contentView];
  [v13 addSubview:self->_textField];

  [(MTEditableTextFieldCell *)self updateFonts];
}

- (void)layoutSubviews
{
  v15.receiver = self;
  v15.super_class = MTEditableTextFieldCell;
  [(MTTableViewCell *)&v15 layoutSubviews];
  [(MTEditableTextFieldCell *)self updateFonts];
  v3 = [(MTEditableTextFieldCell *)self contentView];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;

  [(MTEditableTextFieldCell *)self layoutMargins];
  v11 = v10;
  [(MTEditableTextFieldCell *)self layoutMargins];
  v13 = v12;
  [(MTEditableTextFieldCell *)self layoutMargins];
  [(UITextField *)self->_textField setFrame:v11, v5, v7 - (v13 + v14), v9];
}

- (BOOL)textFieldShouldBeginEditing:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = objc_loadWeakRetained(&self->_delegate);
    v8 = [v7 textFieldShouldBeginEditing:v4];
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

- (void)textFieldDidBeginEditing:(id)a3
{
  v7 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_delegate);
    [v6 textFieldDidBeginEditing:v7];
  }
}

- (BOOL)textFieldShouldEndEditing:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = objc_loadWeakRetained(&self->_delegate);
    v8 = [v7 textFieldShouldEndEditing:v4];
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

- (void)textFieldDidEndEditing:(id)a3
{
  v9 = a3;
  v4 = [(MTEditableTextFieldCell *)self textChanged];
  v5 = [v9 text];
  (v4)[2](v4, v5);

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = objc_loadWeakRetained(&self->_delegate);
    [v8 textFieldDidEndEditing:v9];
  }
}

- (BOOL)textField:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementString:(id)a5
{
  length = a4.length;
  location = a4.location;
  v9 = a3;
  v10 = a5;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v12 = objc_opt_respondsToSelector();

  if (v12)
  {
    v13 = objc_loadWeakRetained(&self->_delegate);
    v14 = [v13 textField:v9 shouldChangeCharactersInRange:location replacementString:{length, v10}];
  }

  else
  {
    v14 = 1;
  }

  return v14;
}

- (BOOL)textFieldShouldClear:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = objc_loadWeakRetained(&self->_delegate);
    v8 = [v7 textFieldShouldClear:v4];
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

- (BOOL)textFieldShouldReturn:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = objc_loadWeakRetained(&self->_delegate);
    v8 = [v7 textFieldShouldReturn:v4];
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

- (UITextFieldDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end