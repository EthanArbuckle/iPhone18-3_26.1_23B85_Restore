@interface EKEventURLInlineEditItem
- (BOOL)canBeConfiguredForCalendarConstraints:(id)constraints;
- (BOOL)saveAndDismissWithForce:(BOOL)force;
- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string;
- (BOOL)textFieldShouldClear:(id)clear;
- (id)cellForSubitemAtIndex:(unint64_t)index;
- (void)_setTokenized:(BOOL)tokenized;
- (void)refreshFromCalendarItemAndStore;
- (void)reset;
- (void)textFieldDidBeginEditing:(id)editing;
- (void)textFieldDidEndEditing:(id)editing;
@end

@implementation EKEventURLInlineEditItem

- (BOOL)canBeConfiguredForCalendarConstraints:(id)constraints
{
  source = [constraints source];
  constraints = [source constraints];
  supportsURLField = [constraints supportsURLField];

  return supportsURLField;
}

- (void)reset
{
  cell = self->_cell;
  self->_cell = 0;
}

- (id)cellForSubitemAtIndex:(unint64_t)index
{
  cell = self->_cell;
  if (!cell)
  {
    v5 = [[EKUITableViewCell alloc] initWithStyle:1000 reuseIdentifier:0];
    v6 = self->_cell;
    self->_cell = &v5->super;

    [(UITableViewCell *)self->_cell setSelectionStyle:0];
    [(UITableViewCell *)self->_cell setTextFieldOffset:0.0];
    editableTextField = [(UITableViewCell *)self->_cell editableTextField];
    [editableTextField setDelegate:self];

    v8 = EventKitUIBundle();
    v9 = [v8 localizedStringForKey:@"URL" value:&stru_1F4EF6790 table:0];
    editableTextField2 = [(UITableViewCell *)self->_cell editableTextField];
    [editableTextField2 setPlaceholder:v9];

    clearColor = [MEMORY[0x1E69DC888] clearColor];
    editableTextField3 = [(UITableViewCell *)self->_cell editableTextField];
    [editableTextField3 setBackgroundColor:clearColor];

    editableTextField4 = [(UITableViewCell *)self->_cell editableTextField];
    [editableTextField4 setClearButtonMode:1];

    editableTextField5 = [(UITableViewCell *)self->_cell editableTextField];
    [editableTextField5 setKeyboardType:3];

    editableTextField6 = [(UITableViewCell *)self->_cell editableTextField];
    [editableTextField6 setAutocorrectionType:1];

    editableTextField7 = [(UITableViewCell *)self->_cell editableTextField];
    [editableTextField7 setAutocapitalizationType:0];

    editableTextField8 = [(UITableViewCell *)self->_cell editableTextField];
    [editableTextField8 setReturnKeyType:9];

    v18 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
    editableTextField9 = [(UITableViewCell *)self->_cell editableTextField];
    [editableTextField9 setFont:v18];

    labelColor = [MEMORY[0x1E69DC888] labelColor];
    editableTextField10 = [(UITableViewCell *)self->_cell editableTextField];
    [editableTextField10 setTextColor:labelColor];

    if (CalInterfaceIsLeftToRight())
    {
      v22 = 4;
    }

    else
    {
      v22 = 2;
    }

    editableTextField11 = [(UITableViewCell *)self->_cell editableTextField];
    [editableTextField11 setTextAlignment:v22];

    [(UITableViewCell *)self->_cell setAccessibilityIdentifier:@"url-cell"];
    editableTextField12 = [(UITableViewCell *)self->_cell editableTextField];
    CalDisableFocusRingForView();

    [(EKEventURLInlineEditItem *)self refreshFromCalendarItemAndStore];
    cell = self->_cell;
  }

  return cell;
}

- (BOOL)saveAndDismissWithForce:(BOOL)force
{
  v13 = *MEMORY[0x1E69E9840];
  cell = self->_cell;
  if (cell && !self->_tokenized)
  {
    editableTextField = [(UITableViewCell *)cell editableTextField];
    text = [editableTextField text];

    v7 = [MEMORY[0x1E695DFF8] _lp_URLWithUserTypedString:text relativeToURL:0];
    if (!v7)
    {
      v8 = kEKUILogEventEditorHandle;
      if (os_log_type_enabled(kEKUILogEventEditorHandle, OS_LOG_TYPE_ERROR))
      {
        v11 = 138412290;
        v12 = text;
        _os_log_impl(&dword_1D3400000, v8, OS_LOG_TYPE_ERROR, "Failed to create NSURL from user-entered URL %@. This data will not be saved.", &v11, 0xCu);
      }
    }

    event = [(EKEventEditItem *)self event];
    [event setURL:v7];
  }

  self->_hasChanges = 0;
  [(EKCalendarItemEditItem *)self notifySubitemDidSave:0];
  return 1;
}

- (void)refreshFromCalendarItemAndStore
{
  v16.receiver = self;
  v16.super_class = EKEventURLInlineEditItem;
  [(EKCalendarItemEditItem *)&v16 refreshFromCalendarItemAndStore];
  event = [(EKEventEditItem *)self event];
  v4 = [event URL];

  scheme = [v4 scheme];
  absoluteString = [v4 absoluteString];
  if (scheme)
  {
    v7 = [scheme caseInsensitiveCompare:@"message"];
    v8 = [scheme caseInsensitiveCompare:@"sms"];
    cal_isWalletURL = [absoluteString cal_isWalletURL];
    if (!v7)
    {
      v10 = EventKitUIBundle();
      _lp_userVisibleString = v10;
      v12 = @"Show in Mail";
      goto LABEL_9;
    }

    if (!v8)
    {
      v10 = EventKitUIBundle();
      _lp_userVisibleString = v10;
      v12 = @"Show in Messages";
      goto LABEL_9;
    }

    if (cal_isWalletURL)
    {
      v10 = EventKitUIBundle();
      _lp_userVisibleString = v10;
      v12 = @"Show in Wallet";
LABEL_9:
      trimWhiteSpace = [v10 localizedStringForKey:v12 value:&stru_1F4EF6790 table:0];
      v14 = 1;
      goto LABEL_10;
    }
  }

  _lp_userVisibleString = [v4 _lp_userVisibleString];
  trimWhiteSpace = [_lp_userVisibleString trimWhiteSpace];
  v14 = 0;
LABEL_10:

  editableTextField = [(UITableViewCell *)self->_cell editableTextField];
  [editableTextField setText:trimWhiteSpace];

  [(EKEventURLInlineEditItem *)self _setTokenized:v14];
}

- (void)_setTokenized:(BOOL)tokenized
{
  if (self->_tokenized != tokenized)
  {
    tokenizedCopy = tokenized;
    self->_tokenized = tokenized;
    editableTextField = [(UITableViewCell *)self->_cell editableTextField];
    v7 = editableTextField;
    if (tokenizedCopy)
    {
      [editableTextField setClearButtonMode:3];

      [(UITableViewCell *)self->_cell tintColor];
    }

    else
    {
      [editableTextField setClearButtonMode:1];

      [MEMORY[0x1E69DC888] labelColor];
    }
    v9 = ;
    editableTextField2 = [(UITableViewCell *)self->_cell editableTextField];
    [editableTextField2 setTextColor:v9];
  }
}

- (BOOL)textFieldShouldClear:(id)clear
{
  self->_hasChanges = 1;
  [(EKEventURLInlineEditItem *)self _setTokenized:0];
  [(EKCalendarItemEditItem *)self notifyTextChanged];
  return 1;
}

- (void)textFieldDidBeginEditing:(id)editing
{
  [(EKCalendarItemEditItem *)self setSelectedResponder:editing];

  [(EKCalendarItemEditItem *)self notifyDidStartEditing];
}

- (void)textFieldDidEndEditing:(id)editing
{
  [(EKCalendarItemEditItem *)self notifyDidEndEditing];

  [(EKCalendarItemEditItem *)self setSelectedResponder:0];
}

- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string
{
  self->_hasChanges = 1;
  [(EKCalendarItemEditItem *)self notifyTextChanged:field];
  return 1;
}

@end