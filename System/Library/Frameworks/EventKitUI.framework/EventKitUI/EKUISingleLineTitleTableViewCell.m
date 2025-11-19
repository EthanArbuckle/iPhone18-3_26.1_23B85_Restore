@interface EKUISingleLineTitleTableViewCell
- (BOOL)textFieldShouldClear:(id)a3;
- (BOOL)textFieldShouldReturn:(id)a3;
- (EKUISingleLineTitleTableViewCell)initWithDelegate:(id)a3;
- (NSString)title;
- (void)focusTitleAndSelectTitle:(BOOL)a3;
- (void)setTitle:(id)a3;
- (void)textFieldDidBeginEditing:(id)a3;
- (void)textFieldDidChange:(id)a3;
- (void)textFieldDidEndEditing:(id)a3;
@end

@implementation EKUISingleLineTitleTableViewCell

- (EKUISingleLineTitleTableViewCell)initWithDelegate:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = EKUISingleLineTitleTableViewCell;
  v5 = [(EKUITableViewCell *)&v21 initWithStyle:1000 reuseIdentifier:0];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, v4);
    v7 = [(EKUISingleLineTitleTableViewCell *)v6 editableTextField];
    [v7 setAccessibilityIdentifier:@"title-field"];

    [(EKUISingleLineTitleTableViewCell *)v6 setTextFieldOffset:0.0];
    v8 = EventKitUIBundle();
    v9 = [v8 localizedStringForKey:@"Title placeholder" value:@"Title" table:0];
    v10 = [(EKUISingleLineTitleTableViewCell *)v6 editableTextField];
    [v10 setPlaceholder:v9];

    v11 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
    v12 = [(EKUISingleLineTitleTableViewCell *)v6 editableTextField];
    [v12 setFont:v11];

    v13 = [MEMORY[0x1E69DC888] labelColor];
    v14 = [(EKUISingleLineTitleTableViewCell *)v6 editableTextField];
    [v14 setTextColor:v13];

    v15 = [(EKUISingleLineTitleTableViewCell *)v6 editableTextField];
    [v15 setDelegate:v6];

    v16 = [(EKUISingleLineTitleTableViewCell *)v6 editableTextField];
    [v16 setClearButtonMode:1];

    v17 = [(EKUISingleLineTitleTableViewCell *)v6 editableTextField];
    v18 = [v17 textInputTraits];
    [v18 setDisablePrediction:0];

    v19 = [(EKUISingleLineTitleTableViewCell *)v6 editableTextField];
    CalDisableFocusRingForView();

    [(EKUISingleLineTitleTableViewCell *)v6 setSelectionStyle:0];
  }

  return v6;
}

- (void)setTitle:(id)a3
{
  v4 = a3;
  v5 = [(EKUISingleLineTitleTableViewCell *)self editableTextField];
  [v5 setText:v4];
}

- (NSString)title
{
  v2 = [(EKUISingleLineTitleTableViewCell *)self editableTextField];
  v3 = [v2 text];

  return v3;
}

- (void)focusTitleAndSelectTitle:(BOOL)a3
{
  v3 = a3;
  v5 = [(EKUISingleLineTitleTableViewCell *)self editableTextField];
  [v5 becomeFirstResponder];

  if (v3)
  {
    v6 = [(EKUISingleLineTitleTableViewCell *)self editableTextField];
    [v6 selectAll:0];
  }
}

- (void)textFieldDidBeginEditing:(id)a3
{
  v4 = MEMORY[0x1E696AD88];
  v5 = a3;
  v6 = [v4 defaultCenter];
  [v6 addObserver:self selector:sel_textFieldDidChange_ name:*MEMORY[0x1E69DE5C0] object:v5];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained titleDidBeginEditing:v5];
}

- (void)textFieldDidEndEditing:(id)a3
{
  v4 = MEMORY[0x1E696AD88];
  v5 = a3;
  v6 = [v4 defaultCenter];
  [v6 removeObserver:self name:*MEMORY[0x1E69DE5C0] object:v5];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained titleDidEndEditing];
}

- (void)textFieldDidChange:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained titleDidChange];
}

- (BOOL)textFieldShouldReturn:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = [WeakRetained titleShouldReturn];

  return v4;
}

- (BOOL)textFieldShouldClear:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = [WeakRetained titleShouldClear];

  return v4;
}

@end