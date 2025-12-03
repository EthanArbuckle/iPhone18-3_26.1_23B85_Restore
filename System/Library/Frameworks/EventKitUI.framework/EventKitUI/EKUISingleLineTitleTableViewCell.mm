@interface EKUISingleLineTitleTableViewCell
- (BOOL)textFieldShouldClear:(id)clear;
- (BOOL)textFieldShouldReturn:(id)return;
- (EKUISingleLineTitleTableViewCell)initWithDelegate:(id)delegate;
- (NSString)title;
- (void)focusTitleAndSelectTitle:(BOOL)title;
- (void)setTitle:(id)title;
- (void)textFieldDidBeginEditing:(id)editing;
- (void)textFieldDidChange:(id)change;
- (void)textFieldDidEndEditing:(id)editing;
@end

@implementation EKUISingleLineTitleTableViewCell

- (EKUISingleLineTitleTableViewCell)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v21.receiver = self;
  v21.super_class = EKUISingleLineTitleTableViewCell;
  v5 = [(EKUITableViewCell *)&v21 initWithStyle:1000 reuseIdentifier:0];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, delegateCopy);
    editableTextField = [(EKUISingleLineTitleTableViewCell *)v6 editableTextField];
    [editableTextField setAccessibilityIdentifier:@"title-field"];

    [(EKUISingleLineTitleTableViewCell *)v6 setTextFieldOffset:0.0];
    v8 = EventKitUIBundle();
    v9 = [v8 localizedStringForKey:@"Title placeholder" value:@"Title" table:0];
    editableTextField2 = [(EKUISingleLineTitleTableViewCell *)v6 editableTextField];
    [editableTextField2 setPlaceholder:v9];

    v11 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
    editableTextField3 = [(EKUISingleLineTitleTableViewCell *)v6 editableTextField];
    [editableTextField3 setFont:v11];

    labelColor = [MEMORY[0x1E69DC888] labelColor];
    editableTextField4 = [(EKUISingleLineTitleTableViewCell *)v6 editableTextField];
    [editableTextField4 setTextColor:labelColor];

    editableTextField5 = [(EKUISingleLineTitleTableViewCell *)v6 editableTextField];
    [editableTextField5 setDelegate:v6];

    editableTextField6 = [(EKUISingleLineTitleTableViewCell *)v6 editableTextField];
    [editableTextField6 setClearButtonMode:1];

    editableTextField7 = [(EKUISingleLineTitleTableViewCell *)v6 editableTextField];
    textInputTraits = [editableTextField7 textInputTraits];
    [textInputTraits setDisablePrediction:0];

    editableTextField8 = [(EKUISingleLineTitleTableViewCell *)v6 editableTextField];
    CalDisableFocusRingForView();

    [(EKUISingleLineTitleTableViewCell *)v6 setSelectionStyle:0];
  }

  return v6;
}

- (void)setTitle:(id)title
{
  titleCopy = title;
  editableTextField = [(EKUISingleLineTitleTableViewCell *)self editableTextField];
  [editableTextField setText:titleCopy];
}

- (NSString)title
{
  editableTextField = [(EKUISingleLineTitleTableViewCell *)self editableTextField];
  text = [editableTextField text];

  return text;
}

- (void)focusTitleAndSelectTitle:(BOOL)title
{
  titleCopy = title;
  editableTextField = [(EKUISingleLineTitleTableViewCell *)self editableTextField];
  [editableTextField becomeFirstResponder];

  if (titleCopy)
  {
    editableTextField2 = [(EKUISingleLineTitleTableViewCell *)self editableTextField];
    [editableTextField2 selectAll:0];
  }
}

- (void)textFieldDidBeginEditing:(id)editing
{
  v4 = MEMORY[0x1E696AD88];
  editingCopy = editing;
  defaultCenter = [v4 defaultCenter];
  [defaultCenter addObserver:self selector:sel_textFieldDidChange_ name:*MEMORY[0x1E69DE5C0] object:editingCopy];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained titleDidBeginEditing:editingCopy];
}

- (void)textFieldDidEndEditing:(id)editing
{
  v4 = MEMORY[0x1E696AD88];
  editingCopy = editing;
  defaultCenter = [v4 defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E69DE5C0] object:editingCopy];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained titleDidEndEditing];
}

- (void)textFieldDidChange:(id)change
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained titleDidChange];
}

- (BOOL)textFieldShouldReturn:(id)return
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  titleShouldReturn = [WeakRetained titleShouldReturn];

  return titleShouldReturn;
}

- (BOOL)textFieldShouldClear:(id)clear
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  titleShouldClear = [WeakRetained titleShouldClear];

  return titleShouldClear;
}

@end