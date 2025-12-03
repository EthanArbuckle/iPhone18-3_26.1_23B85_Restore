@interface MTEditableTextFieldCell
- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string;
- (BOOL)textFieldShouldBeginEditing:(id)editing;
- (BOOL)textFieldShouldClear:(id)clear;
- (BOOL)textFieldShouldEndEditing:(id)editing;
- (BOOL)textFieldShouldReturn:(id)return;
- (UITextFieldDelegate)delegate;
- (void)layoutSubviews;
- (void)setupCell;
- (void)textFieldDidBeginEditing:(id)editing;
- (void)textFieldDidEndEditing:(id)editing;
- (void)updateFonts;
@end

@implementation MTEditableTextFieldCell

- (void)updateFonts
{
  textFont = [objc_opt_class() textFont];
  textField = [(MTEditableTextFieldCell *)self textField];
  [textField setFont:textFont];
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
  contentView = [(MTEditableTextFieldCell *)self contentView];
  [contentView addSubview:self->_textField];

  [(MTEditableTextFieldCell *)self updateFonts];
}

- (void)layoutSubviews
{
  v15.receiver = self;
  v15.super_class = MTEditableTextFieldCell;
  [(MTTableViewCell *)&v15 layoutSubviews];
  [(MTEditableTextFieldCell *)self updateFonts];
  contentView = [(MTEditableTextFieldCell *)self contentView];
  [contentView bounds];
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

- (BOOL)textFieldShouldBeginEditing:(id)editing
{
  editingCopy = editing;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = objc_loadWeakRetained(&self->_delegate);
    v8 = [v7 textFieldShouldBeginEditing:editingCopy];
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

- (void)textFieldDidBeginEditing:(id)editing
{
  editingCopy = editing;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_delegate);
    [v6 textFieldDidBeginEditing:editingCopy];
  }
}

- (BOOL)textFieldShouldEndEditing:(id)editing
{
  editingCopy = editing;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = objc_loadWeakRetained(&self->_delegate);
    v8 = [v7 textFieldShouldEndEditing:editingCopy];
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

- (void)textFieldDidEndEditing:(id)editing
{
  editingCopy = editing;
  textChanged = [(MTEditableTextFieldCell *)self textChanged];
  text = [editingCopy text];
  (textChanged)[2](textChanged, text);

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = objc_loadWeakRetained(&self->_delegate);
    [v8 textFieldDidEndEditing:editingCopy];
  }
}

- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string
{
  length = range.length;
  location = range.location;
  fieldCopy = field;
  stringCopy = string;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v12 = objc_opt_respondsToSelector();

  if (v12)
  {
    v13 = objc_loadWeakRetained(&self->_delegate);
    v14 = [v13 textField:fieldCopy shouldChangeCharactersInRange:location replacementString:{length, stringCopy}];
  }

  else
  {
    v14 = 1;
  }

  return v14;
}

- (BOOL)textFieldShouldClear:(id)clear
{
  clearCopy = clear;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = objc_loadWeakRetained(&self->_delegate);
    v8 = [v7 textFieldShouldClear:clearCopy];
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

- (BOOL)textFieldShouldReturn:(id)return
{
  returnCopy = return;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = objc_loadWeakRetained(&self->_delegate);
    v8 = [v7 textFieldShouldReturn:returnCopy];
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