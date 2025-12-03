@interface SFAddSavedAccountViewController
- (BOOL)textFieldShouldReturn:(id)return;
- (SFAddSavedAccountViewController)initWithGroupID:(id)d;
- (SFAddSavedAccountViewController)initWithSuggestedDomain:(id)domain password:(id)password;
- (SFAddSavedAccountViewControllerDelegate)delegate;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_attemptToSavePassword;
- (void)_cancelBarButtonItemTapped:(id)tapped;
- (void)_doneBarButtonItemTapped:(id)tapped;
- (void)_fromTextFieldsGetWebsite:(id *)website andCustomTitle:(id *)title;
- (void)_preFillStrongPasswordIfRequested;
- (void)_savePasswordAndDismiss;
- (void)_textFieldChanged:(id)changed;
- (void)_updateDoneButtonEnabledState;
- (void)_updateHeaderViewCell;
- (void)_updateIconForCell:(id)cell;
- (void)_updateTextInputSuggestionsForPasswordField;
- (void)_updateTextInputSuggestionsForUserNameField;
- (void)_updateTextSuggestionsForTextField:(id)field;
- (void)accountDetailHeaderViewCell:(id)cell titleTextFieldDidChange:(id)change;
- (void)returnKeyActivatedInAccountDetailHeaderViewCell:(id)cell;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation SFAddSavedAccountViewController

- (SFAddSavedAccountViewController)initWithGroupID:(id)d
{
  dCopy = d;
  v10.receiver = self;
  v10.super_class = SFAddSavedAccountViewController;
  v5 = [(SFAddSavedAccountViewController *)&v10 initWithStyle:2];
  if (v5)
  {
    v6 = [dCopy copy];
    groupID = v5->_groupID;
    v5->_groupID = v6;

    v8 = v5;
  }

  return v5;
}

- (SFAddSavedAccountViewController)initWithSuggestedDomain:(id)domain password:(id)password
{
  domainCopy = domain;
  passwordCopy = password;
  v15.receiver = self;
  v15.super_class = SFAddSavedAccountViewController;
  v8 = [(SFAddSavedAccountViewController *)&v15 initWithStyle:2];
  if (v8)
  {
    v9 = [domainCopy copy];
    suggestedDomain = v8->_suggestedDomain;
    v8->_suggestedDomain = v9;

    v11 = [passwordCopy copy];
    password = v8->_password;
    v8->_password = v11;

    v8->_shouldPopulatePasswordFieldWithNewGeneratedStrongPassword = [passwordCopy length] == 0;
    v13 = v8;
  }

  return v8;
}

- (void)viewDidLoad
{
  v10.receiver = self;
  v10.super_class = SFAddSavedAccountViewController;
  [(SFAddSavedAccountViewController *)&v10 viewDidLoad];
  v3 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:self action:sel__cancelBarButtonItemTapped_];
  cancelBarButtonItem = self->_cancelBarButtonItem;
  self->_cancelBarButtonItem = v3;

  [(UIBarButtonItem *)self->_cancelBarButtonItem setAccessibilityIdentifier:@"Add Password Navigation Bar Cancel Button"];
  v5 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:0 target:self action:sel__doneBarButtonItemTapped_];
  doneBarButtonItem = self->_doneBarButtonItem;
  self->_doneBarButtonItem = v5;

  [(UIBarButtonItem *)self->_doneBarButtonItem setAccessibilityIdentifier:@"Add Password Navigation Bar Done Button"];
  [(UIBarButtonItem *)self->_doneBarButtonItem setEnabled:0];
  navigationItem = [(SFAddSavedAccountViewController *)self navigationItem];
  v8 = _WBSLocalizedString();
  [navigationItem setTitle:v8];

  [navigationItem setLeftBarButtonItem:self->_cancelBarButtonItem];
  [navigationItem setRightBarButtonItem:self->_doneBarButtonItem];
  view = [(SFAddSavedAccountViewController *)self view];
  [view setAccessibilityIdentifier:@"Add Password View"];
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = SFAddSavedAccountViewController;
  [(SFAddSavedAccountViewController *)&v4 viewWillAppear:appear];
  [(SFAddSavedAccountViewController *)self _updateHeaderViewCell];
}

- (void)viewDidAppear:(BOOL)appear
{
  v6.receiver = self;
  v6.super_class = SFAddSavedAccountViewController;
  [(SFAddSavedAccountViewController *)&v6 viewDidAppear:appear];
  [(SFAddSavedAccountViewController *)self setEditing:1];
  if (!self->_didPreFillAndFocusFields)
  {
    [(SFAddSavedAccountViewController *)self _preFillStrongPasswordIfRequested];
    titleTextField = [(SFAccountHeaderViewCell *)self->_titleCell titleTextField];
    if ([(NSString *)self->_suggestedDomain length])
    {
      editableTextField = [(SFEditableTableViewCell *)self->_userCell editableTextField];

      titleTextField = editableTextField;
    }

    [titleTextField becomeFirstResponder];
    self->_didPreFillAndFocusFields = 1;
  }
}

- (void)_preFillStrongPasswordIfRequested
{
  if ([(SFAddSavedAccountViewController *)self shouldPopulatePasswordFieldWithNewGeneratedStrongPassword])
  {
    titleTextField = [(SFAccountHeaderViewCell *)self->_titleCell titleTextField];
    text = [titleTextField text];
    safari_stringByTrimmingWhitespace = [text safari_stringByTrimmingWhitespace];

    if ([MEMORY[0x1E69C8A38] userTypedTitleShouldBeTreatedAsAWebsiteWhenAddingNewAccount:safari_stringByTrimmingWhitespace])
    {
      safari_bestURLForUserTypedString = [safari_stringByTrimmingWhitespace safari_bestURLForUserTypedString];
    }

    else
    {
      safari_bestURLForUserTypedString = 0;
    }

    v6 = +[_SFFormDataController sharedController];
    v7 = [v6 autoGeneratedPasswordForURL:safari_bestURLForUserTypedString respectingPasswordRequirements:0 maxLength:-1];

    editableTextField = [(SFEditableTableViewCell *)self->_passwordCell editableTextField];
    [editableTextField setText:v7];
  }
}

- (void)_cancelBarButtonItemTapped:(id)tapped
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained addSavedAccountViewControllerDidFinish:self withSavedAccount:0];
  }
}

- (void)_doneBarButtonItemTapped:(id)tapped
{
  [tapped setEnabled:0];

  [(SFAddSavedAccountViewController *)self _attemptToSavePassword];
}

- (void)_textFieldChanged:(id)changed
{
  changedCopy = changed;
  [(SFAddSavedAccountViewController *)self _updateDoneButtonEnabledState];
  [(SFAddSavedAccountViewController *)self _updateTextSuggestionsForTextField:changedCopy];
}

- (void)_updateDoneButtonEnabledState
{
  editableTextField = [(SFEditableTableViewCell *)self->_passwordCell editableTextField];
  text = [editableTextField text];

  -[UIBarButtonItem setEnabled:](self->_doneBarButtonItem, "setEnabled:", [text length] != 0);
}

- (void)_updateTextSuggestionsForTextField:(id)field
{
  fieldCopy = field;
  editableTextField = [(SFEditableTableViewCell *)self->_userCell editableTextField];
  v5 = [fieldCopy isEqual:editableTextField];

  if (v5)
  {
    [(SFAddSavedAccountViewController *)self _updateTextInputSuggestionsForUserNameField];
  }

  else
  {
    editableTextField2 = [(SFEditableTableViewCell *)self->_passwordCell editableTextField];
    v7 = [fieldCopy isEqual:editableTextField2];

    if (v7)
    {
      [(SFAddSavedAccountViewController *)self _updateTextInputSuggestionsForPasswordField];
    }
  }
}

- (void)_updateTextInputSuggestionsForUserNameField
{
  editableTextField = [(SFEditableTableViewCell *)self->_userCell editableTextField];
  text = [editableTextField text];

  mEMORY[0x1E69C8E28] = [MEMORY[0x1E69C8E28] sharedProvider];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __78__SFAddSavedAccountViewController__updateTextInputSuggestionsForUserNameField__block_invoke;
  v7[3] = &unk_1E8491FF0;
  v8 = text;
  selfCopy = self;
  v6 = text;
  [mEMORY[0x1E69C8E28] suggestedUsersOfType:0 matchingText:v6 completionHandler:v7];
}

void __78__SFAddSavedAccountViewController__updateTextInputSuggestionsForUserNameField__block_invoke(uint64_t a1, void *a2)
{
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __78__SFAddSavedAccountViewController__updateTextInputSuggestionsForUserNameField__block_invoke_2;
  v8[3] = &unk_1E8495320;
  v9 = *(a1 + 32);
  v4 = [a2 safari_mapAndFilterObjectsUsingBlock:v8];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __78__SFAddSavedAccountViewController__updateTextInputSuggestionsForUserNameField__block_invoke_3;
  block[3] = &unk_1E848F548;
  block[4] = *(a1 + 40);
  v7 = v4;
  v5 = v4;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

id __78__SFAddSavedAccountViewController__updateTextInputSuggestionsForUserNameField__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 value];
  v5 = [v4 safari_isCaseInsensitiveEqualToString:*(a1 + 32)];

  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v7 = MEMORY[0x1E69DD158];
    v8 = [v3 value];
    v6 = [v7 textSuggestionWithInputText:v8 searchText:*(a1 + 32)];
  }

  return v6;
}

void __78__SFAddSavedAccountViewController__updateTextInputSuggestionsForUserNameField__block_invoke_3(uint64_t a1)
{
  v3 = [*(*(a1 + 32) + 1064) editableTextField];
  v2 = [v3 textInputSuggestionDelegate];
  [v2 setSuggestions:*(a1 + 40)];
}

- (void)_updateTextInputSuggestionsForPasswordField
{
  v18[1] = *MEMORY[0x1E69E9840];
  editableTextField = [(SFEditableTableViewCell *)self->_passwordCell editableTextField];
  text = [editableTextField text];
  v5 = [text length];

  if (v5)
  {
    v6 = MEMORY[0x1E695E0F0];
  }

  else
  {
    titleTextField = [(SFAccountHeaderViewCell *)self->_titleCell titleTextField];
    text2 = [titleTextField text];
    safari_stringByTrimmingWhitespace = [text2 safari_stringByTrimmingWhitespace];

    if ([MEMORY[0x1E69C8A38] userTypedTitleShouldBeTreatedAsAWebsiteWhenAddingNewAccount:safari_stringByTrimmingWhitespace])
    {
      safari_bestURLForUserTypedString = [safari_stringByTrimmingWhitespace safari_bestURLForUserTypedString];
    }

    else
    {
      safari_bestURLForUserTypedString = 0;
    }

    v11 = +[_SFFormDataController sharedController];
    v12 = [v11 autoGeneratedPasswordForURL:safari_bestURLForUserTypedString respectingPasswordRequirements:0 maxLength:-1];

    if (v12)
    {
      v13 = [MEMORY[0x1E69DD158] textSuggestionWithInputText:v12];
      v14 = _WBSLocalizedString();
      [v13 setHeaderText:v14];

      [v13 setDisplayText:v12];
      v18[0] = v13;
      v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
    }

    else
    {
      v6 = MEMORY[0x1E695E0F0];
    }
  }

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __78__SFAddSavedAccountViewController__updateTextInputSuggestionsForPasswordField__block_invoke;
  v16[3] = &unk_1E848F548;
  v16[4] = self;
  v17 = v6;
  v15 = v6;
  dispatch_async(MEMORY[0x1E69E96A0], v16);
}

void __78__SFAddSavedAccountViewController__updateTextInputSuggestionsForPasswordField__block_invoke(uint64_t a1)
{
  v3 = [*(*(a1 + 32) + 1072) editableTextField];
  v2 = [v3 textInputSuggestionDelegate];
  [v2 setSuggestions:*(a1 + 40)];
}

- (void)_fromTextFieldsGetWebsite:(id *)website andCustomTitle:(id *)title
{
  titleTextField = [(SFAccountHeaderViewCell *)self->_titleCell titleTextField];
  text = [titleTextField text];
  safari_stringByTrimmingWhitespace = [text safari_stringByTrimmingWhitespace];

  if ([MEMORY[0x1E69C8A38] userTypedTitleShouldBeTreatedAsAWebsiteWhenAddingNewAccount:safari_stringByTrimmingWhitespace])
  {
    v8 = safari_stringByTrimmingWhitespace;
    v9 = 0;
    *website = v8;
  }

  else
  {
    *website = 0;
    v9 = safari_stringByTrimmingWhitespace;
  }

  *title = v9;
}

- (void)_attemptToSavePassword
{
  v26 = 0;
  v27 = 0;
  [(SFAddSavedAccountViewController *)self _fromTextFieldsGetWebsite:&v27 andCustomTitle:&v26];
  v3 = v27;
  v4 = v26;
  editableTextField = [(SFEditableTableViewCell *)self->_userCell editableTextField];
  text = [editableTextField text];

  editableTextField2 = [(SFEditableTableViewCell *)self->_passwordCell editableTextField];
  text2 = [editableTextField2 text];

  mEMORY[0x1E69C8A38] = [MEMORY[0x1E69C8A38] sharedStore];
  notesForEditing = self->_notesForEditing;
  groupID = self->_groupID;
  v25 = 0;
  v12 = [mEMORY[0x1E69C8A38] canSaveUser:text password:text2 forUserTypedSite:v3 notes:notesForEditing customTitle:v4 groupID:groupID error:&v25];
  v13 = v25;

  if (v12)
  {
    [(SFAddSavedAccountViewController *)self _savePasswordAndDismiss];
  }

  else
  {
    v14 = MEMORY[0x1E69DC650];
    v15 = [MEMORY[0x1E69C8800] alertTitleForFailedAccountCreationWithErrorCode:{objc_msgSend(v13, "code")}];
    v16 = MEMORY[0x1E69C8800];
    code = [v13 code];
    [v3 safari_highLevelDomainFromHost];
    v18 = v24 = v4;
    v19 = [v16 alertSubtitleForFailedAccountCreationWithErrorCode:code forUserTypedSite:v3 userTypedUsername:text highLevelDomain:v18];
    v20 = [v14 alertControllerWithTitle:v15 message:v19 preferredStyle:1];

    v21 = MEMORY[0x1E69DC648];
    alertDismissActionTitleForFailedAccountCreation = [MEMORY[0x1E69C8800] alertDismissActionTitleForFailedAccountCreation];
    v23 = [v21 actionWithTitle:alertDismissActionTitleForFailedAccountCreation style:0 handler:0];
    [v20 addAction:v23];

    v4 = v24;
    [(SFAddSavedAccountViewController *)self presentViewController:v20 animated:1 completion:0];
  }
}

- (void)_savePasswordAndDismiss
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    v16 = 0;
    v17 = 0;
    [(SFAddSavedAccountViewController *)self _fromTextFieldsGetWebsite:&v17 andCustomTitle:&v16];
    v12 = v17;
    v11 = v16;
    [(SFAccountHeaderViewCell *)self->_titleCell commitCustomTitle];
    mEMORY[0x1E69C8A38] = [MEMORY[0x1E69C8A38] sharedStore];
    editableTextField = [(SFEditableTableViewCell *)self->_userCell editableTextField];
    text = [editableTextField text];
    editableTextField2 = [(SFEditableTableViewCell *)self->_passwordCell editableTextField];
    text2 = [editableTextField2 text];
    notesForEditing = self->_notesForEditing;
    groupID = self->_groupID;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __58__SFAddSavedAccountViewController__savePasswordAndDismiss__block_invoke;
    v13[3] = &unk_1E8495348;
    v14 = WeakRetained;
    selfCopy = self;
    [mEMORY[0x1E69C8A38] saveUser:text password:text2 forUserTypedSite:v12 customTitle:v11 notesEntry:notesForEditing groupID:groupID completionHandler:v13];
  }
}

void __58__SFAddSavedAccountViewController__savePasswordAndDismiss__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __58__SFAddSavedAccountViewController__savePasswordAndDismiss__block_invoke_2;
  block[3] = &unk_1E848F6B0;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8 = v4;
  v9 = v5;
  v10 = v3;
  v6 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)_updateHeaderViewCell
{
  titleCell = self->_titleCell;
  titleTextField = [(SFAccountHeaderViewCell *)titleCell titleTextField];
  text = [titleTextField text];
  safari_highLevelDomainForPasswordManager = [text safari_highLevelDomainForPasswordManager];
  _lp_userVisibleHost = [safari_highLevelDomainForPasswordManager _lp_userVisibleHost];
  [(SFAccountHeaderViewCell *)titleCell setHeaderTitleForHighLevelDomain:_lp_userVisibleHost customTitle:self->_titleForEditing];

  [(SFAddSavedAccountViewController *)self _updateIcon];
}

- (BOOL)textFieldShouldReturn:(id)return
{
  returnCopy = return;
  editableTextField = [(SFEditableTableViewCell *)self->_userCell editableTextField];

  editableTextField2 = [(SFEditableTableViewCell *)self->_passwordCell editableTextField];
  v7 = editableTextField2;
  if (editableTextField == returnCopy)
  {
    [editableTextField2 becomeFirstResponder];
    goto LABEL_6;
  }

  if (editableTextField2 != returnCopy)
  {
LABEL_6:

    goto LABEL_7;
  }

  isEnabled = [(UIBarButtonItem *)self->_doneBarButtonItem isEnabled];

  if (isEnabled)
  {
    [(SFAddSavedAccountViewController *)self _attemptToSavePassword];
  }

LABEL_7:

  return 0;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  if (section)
  {
    return section == 1;
  }

  else
  {
    return 3;
  }
}

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  if (section == 1)
  {
    v5 = _WBSLocalizedString();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_updateIconForCell:(id)cell
{
  cellCopy = cell;
  titleTextField = [(SFAccountHeaderViewCell *)self->_titleCell titleTextField];
  text = [titleTextField text];
  safari_stringByTrimmingWhitespace = [text safari_stringByTrimmingWhitespace];

  if ([MEMORY[0x1E69C8A38] userTypedTitleShouldBeTreatedAsAWebsiteWhenAddingNewAccount:safari_stringByTrimmingWhitespace])
  {
    safari_bestURLForUserTypedString = [safari_stringByTrimmingWhitespace safari_bestURLForUserTypedString];
    host = [safari_bestURLForUserTypedString host];
    safari_highLevelDomainForPasswordManager = [host safari_highLevelDomainForPasswordManager];
  }

  else
  {
    safari_highLevelDomainForPasswordManager = 0;
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    v12 = [WeakRetained iconControllerForAddSavedAccountDetailViewController:self];
    v13 = [v12 backgroundColorForDomain:safari_highLevelDomainForPasswordManager];
    [cellCopy setMonogramBackgroundColor:v13];

    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __54__SFAddSavedAccountViewController__updateIconForCell___block_invoke;
    v16[3] = &unk_1E8495370;
    v16[4] = self;
    v17 = safari_stringByTrimmingWhitespace;
    v18 = v12;
    v19 = cellCopy;
    v20 = safari_highLevelDomainForPasswordManager;
    v14 = v12;
    [v14 iconForDomain:v20 responseHandler:v16];
  }

  else
  {
    v15 = +[_SFAccountManagerAppearanceValues defaultMonogramBackgroundColor];
    [cellCopy setMonogramBackgroundColor:v15];
  }
}

void __54__SFAddSavedAccountViewController__updateIconForCell___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    [v3 size];
    if (v6 != 56.0 || v5 != 56.0)
    {
      v8 = [MEMORY[0x1E69C97E0] resizedImage:v4 withSize:?];
LABEL_10:
      v10 = v8;

      v4 = v10;
      goto LABEL_11;
    }
  }

  v9 = *(a1 + 32);
  if (*(v9 + 1136) && [*(a1 + 40) isEqualToString:*(v9 + 1104)])
  {
    v8 = [*(a1 + 48) appIconForAppID:*(*(a1 + 32) + 1136)];
    goto LABEL_10;
  }

LABEL_11:
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __54__SFAddSavedAccountViewController__updateIconForCell___block_invoke_2;
  v12[3] = &unk_1E848F570;
  v13 = v4;
  v14 = *(a1 + 56);
  v15 = *(a1 + 48);
  v16 = *(a1 + 64);
  v11 = v4;
  dispatch_async(MEMORY[0x1E69E96A0], v12);
}

void __54__SFAddSavedAccountViewController__updateIconForCell___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (*(a1 + 32))
  {
    v2 = *(a1 + 40);

    [v2 setIcon:?];
  }

  else
  {
    v3 = [*(a1 + 48) backgroundColorForDomain:*(a1 + 56)];
    [v1 setMonogramBackgroundColor:v3];
  }
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = [viewCopy dequeueReusableCellWithIdentifier:@"editableTableViewCell"];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = [[SFEditableTableViewCell alloc] initWithEnabledState:1];
  }

  v11 = v10;

  v12 = v11;
  editableTextField = [(SFEditableTableViewCell *)v12 editableTextField];
  [editableTextField setDelegate:self];
  [editableTextField addTarget:self action:sel__textFieldChanged_ forControlEvents:0x20000];
  section = [pathCopy section];
  if (section == 1)
  {
    v24 = [[SFAccountNoteTableViewCell alloc] initWithStyle:0 reuseIdentifier:@"NotesCell"];
    notesCell = self->_notesCell;
    self->_notesCell = v24;

    [(SFAccountNoteTableViewCell *)self->_notesCell setDelegate:self];
    notesForEditing = self->_notesForEditing;
    textView = [(SFAccountNoteTableViewCell *)self->_notesCell textView];
    [textView setText:notesForEditing];

    objc_initWeak(&location, self);
    v40 = MEMORY[0x1E69E9820];
    v41 = 3221225472;
    v42 = __67__SFAddSavedAccountViewController_tableView_cellForRowAtIndexPath___block_invoke;
    v43 = &unk_1E848F8F0;
    objc_copyWeak(&v44, &location);
    [(SFAccountNoteTableViewCell *)self->_notesCell setTextDidChange:&v40];
    [(SFAccountNoteTableViewCell *)self->_notesCell setAccessibilityIdentifier:@"Add Password Notes Cell", v40, v41, v42, v43];
    v28 = self->_notesCell;
    objc_destroyWeak(&v44);
    objc_destroyWeak(&location);
    goto LABEL_22;
  }

  if (!section)
  {
    item = [pathCopy item];
    switch(item)
    {
      case 2:
        pm_defaults = [MEMORY[0x1E695E000] pm_defaults];
        pm_passwordManagerIsInDemoMode = [pm_defaults pm_passwordManagerIsInDemoMode];

        v34 = _WBSLocalizedString();
        [editableTextField setPlaceholder:v34];

        [editableTextField setSecureTextEntry:pm_passwordManagerIsInDemoMode ^ 1u];
        [editableTextField setDisplaySecureTextUsingPlainText:pm_passwordManagerIsInDemoMode ^ 1u];
        v35 = _WBSLocalizedString();
        textLabel = [(SFEditableTableViewCell *)v12 textLabel];
        [textLabel setText:v35];

        objc_storeStrong(&self->_passwordCell, v11);
        [(SFEditableTableViewCell *)self->_passwordCell setAccessibilityIdentifier:@"Add Password Password Cell"];
        if ([(NSString *)self->_password length])
        {
          password = self->_password;
          editableTextField2 = [(SFEditableTableViewCell *)self->_passwordCell editableTextField];
          [editableTextField2 setText:password];
        }

        break;
      case 1:
        v29 = _WBSLocalizedString();
        [editableTextField setPlaceholder:v29];

        v30 = _WBSLocalizedString();
        textLabel2 = [(SFEditableTableViewCell *)v12 textLabel];
        [textLabel2 setText:v30];

        objc_storeStrong(&self->_userCell, v11);
        [(SFEditableTableViewCell *)self->_userCell setAccessibilityIdentifier:@"Add Password User Name Cell"];
        break;
      case 0:
        tableView = [(SFAddSavedAccountViewController *)self tableView];
        v17 = [tableView dequeueReusableCellWithIdentifier:@"AddPasswordTitleCell"];
        v18 = v17;
        if (!v17)
        {
          v18 = [[SFAccountHeaderViewCell alloc] initWithStyle:0 reuseIdentifier:@"AddPasswordTitleCell"];
        }

        objc_storeStrong(&self->_titleCell, v18);
        if (!v17)
        {
        }

        if ([(NSString *)self->_suggestedDomain length])
        {
          suggestedDomain = self->_suggestedDomain;
          titleTextField = [(SFAccountHeaderViewCell *)self->_titleCell titleTextField];
          [titleTextField setText:suggestedDomain];

          objc_storeStrong(&self->_titleForEditing, self->_suggestedDomain);
        }

        titleTextField2 = [(SFAccountHeaderViewCell *)self->_titleCell titleTextField];
        [titleTextField2 setKeyboardType:3];

        titleTextField3 = [(SFAccountHeaderViewCell *)self->_titleCell titleTextField];
        [titleTextField3 setAutocapitalizationType:0];

        [(SFAddSavedAccountViewController *)self _updateHeaderViewCell];
        [(SFAccountHeaderViewCell *)self->_titleCell setDelegate:self];
        [(SFAccountHeaderViewCell *)self->_titleCell setAccessibilityIdentifier:@"Add Password Website Cell"];
        v23 = self->_titleCell;
        goto LABEL_21;
    }
  }

  v23 = v12;
LABEL_21:
  v28 = v23;
LABEL_22:

  return v28;
}

void __67__SFAddSavedAccountViewController_tableView_cellForRowAtIndexPath___block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __67__SFAddSavedAccountViewController_tableView_cellForRowAtIndexPath___block_invoke_2;
  block[3] = &unk_1E848F8F0;
  objc_copyWeak(&v2, (a1 + 32));
  dispatch_async(MEMORY[0x1E69E96A0], block);
  objc_destroyWeak(&v2);
}

void __67__SFAddSavedAccountViewController_tableView_cellForRowAtIndexPath___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v6 = WeakRetained;
    v2 = [WeakRetained tableView];
    [v2 beginUpdates];
    [v2 endUpdates];
    v3 = [v6[135] textView];
    v4 = [v3 text];
    v5 = v6[137];
    v6[137] = v4;

    [v6 _updateDoneButtonEnabledState];
    WeakRetained = v6;
  }
}

- (void)accountDetailHeaderViewCell:(id)cell titleTextFieldDidChange:(id)change
{
  text = [change text];
  titleForEditing = self->_titleForEditing;
  self->_titleForEditing = text;

  [(SFAddSavedAccountViewController *)self _updateHeaderViewCell];
}

- (void)returnKeyActivatedInAccountDetailHeaderViewCell:(id)cell
{
  editableTextField = [(SFEditableTableViewCell *)self->_userCell editableTextField];
  [editableTextField becomeFirstResponder];
}

- (SFAddSavedAccountViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end