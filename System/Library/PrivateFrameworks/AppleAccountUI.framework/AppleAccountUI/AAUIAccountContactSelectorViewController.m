@interface AAUIAccountContactSelectorViewController
- (AAUIAccountContactSelectorViewController)initWithViewModel:(id)a3;
- (BOOL)_isOtherContactRowForIndexPath:(id)a3;
- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4;
- (id)_otherContactCellForTableView:(id)a3;
- (id)_pictureStore;
- (id)_suggestedContactCellForTableView:(id)a3 atRow:(int64_t)a4;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (void)_selectContact;
- (void)_setupTableView;
- (void)dealloc;
- (void)tableView:(id)a3 didDeselectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLoad;
@end

@implementation AAUIAccountContactSelectorViewController

- (AAUIAccountContactSelectorViewController)initWithViewModel:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = AAUIAccountContactSelectorViewController;
  v5 = [(AAUIOBTableWelcomeController *)&v9 initWithViewModel:v4];
  if (v5)
  {
    v6 = [v4 suggestedContacts];
    suggestedContacts = v5->_suggestedContacts;
    v5->_suggestedContacts = v6;
  }

  return v5;
}

- (void)viewDidLoad
{
  v12.receiver = self;
  v12.super_class = AAUIAccountContactSelectorViewController;
  [(AAUIOBTableWelcomeController *)&v12 viewDidLoad];
  v3 = [(AAUIOBTableWelcomeController *)self primaryButton];
  [v3 setEnabled:0];

  v4 = [(AAUIOBTableWelcomeController *)self primaryButton];
  [v4 addTarget:self action:sel__selectContact forControlEvents:64];

  [(AAUIAccountContactSelectorViewController *)self _setupTableView];
  v5 = objc_alloc(MEMORY[0x1E69DC708]);
  v6 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"NEXT" value:&stru_1F447F790 table:@"Localizable"];
  v8 = [v5 initWithTitle:v7 style:0 target:self action:sel__selectContact];
  continueButton = self->_continueButton;
  self->_continueButton = v8;

  [(UIBarButtonItem *)self->_continueButton setEnabled:0];
  v10 = self->_continueButton;
  v11 = [(OBBaseWelcomeController *)self navigationItem];
  [v11 setRightBarButtonItem:v10];
}

- (void)dealloc
{
  v3 = _AAUILogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C5355000, v3, OS_LOG_TYPE_DEFAULT, "AAUIAccountContactSelectorViewController dealloc", buf, 2u);
  }

  v4.receiver = self;
  v4.super_class = AAUIAccountContactSelectorViewController;
  [(AAUIAccountContactSelectorViewController *)&v4 dealloc];
}

- (id)_pictureStore
{
  pictureStore = self->_pictureStore;
  if (!pictureStore)
  {
    v4 = objc_alloc_init(AAUIProfilePictureStore);
    v5 = self->_pictureStore;
    self->_pictureStore = v4;

    pictureStore = self->_pictureStore;
  }

  return pictureStore;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(AAUIAccountContactSelectorViewController *)self _isOtherContactRowForIndexPath:v7])
  {
    [(AAUIAccountContactSelectorViewController *)self _otherContactCellForTableView:v6];
  }

  else
  {
    -[AAUIAccountContactSelectorViewController _suggestedContactCellForTableView:atRow:](self, "_suggestedContactCellForTableView:atRow:", v6, [v7 row]);
  }
  v8 = ;

  return v8;
}

- (id)_otherContactCellForTableView:(id)a3
{
  v3 = [a3 dequeueReusableCellWithIdentifier:@"OtherContactsCell"];
  if (!v3)
  {
    v3 = [objc_alloc(MEMORY[0x1E69DD028]) initWithStyle:0 reuseIdentifier:@"OtherContactsCell"];
  }

  v4 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"ACCOUNT_CONTACT_PICKER_CHOOSE_SOMEONE" value:&stru_1F447F790 table:@"Localizable"];
  v6 = [v3 textLabel];
  [v6 setText:v5];

  v7 = [MEMORY[0x1E69DB878] _preferredFontForTextStyle:*MEMORY[0x1E69DDCF8] weight:*MEMORY[0x1E69DB970]];
  v8 = [v3 textLabel];
  [v8 setFont:v7];

  v9 = [MEMORY[0x1E69DC888] systemBlueColor];
  v10 = [v3 textLabel];
  [v10 setTextColor:v9];

  v11 = [MEMORY[0x1E69DC888] secondarySystemBackgroundColor];
  [v3 setBackgroundColor:v11];

  return v3;
}

- (id)_suggestedContactCellForTableView:(id)a3 atRow:(int64_t)a4
{
  v6 = [a3 dequeueReusableCellWithIdentifier:@"ContactSelectorCell"];
  if (!v6)
  {
    v6 = [[AAUISuggestedContactCell alloc] initWithStyle:0 reuseIdentifier:@"ContactSelectorCell"];
  }

  v7 = [(NSArray *)self->_suggestedContacts objectAtIndexedSubscript:a4];
  v8 = [(AAUIAccountContactSelectorViewController *)self _pictureStore];
  [(AAUISuggestedContactCell *)v6 updateWithContact:v7 pictureStore:v8];

  return v6;
}

- (BOOL)_isOtherContactRowForIndexPath:(id)a3
{
  v4 = a3;
  v5 = [v4 row];
  v6 = [(OBTableWelcomeController *)self tableView];
  v7 = [v4 section];

  LOBYTE(v4) = v5 == [v6 numberOfRowsInSection:v7] - 1;
  return v4;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v14 = a3;
  v6 = a4;
  if ([(AAUIAccountContactSelectorViewController *)self _isOtherContactRowForIndexPath:v6])
  {
    [v14 deselectRowAtIndexPath:v6 animated:1];

    v7 = [(AAUIOBTableWelcomeController *)self delegate];
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      v9 = [(AAUIOBTableWelcomeController *)self delegate];
      [v9 accountContactSelectorShowOtherContacts:self];
    }
  }

  else
  {
    suggestedContacts = self->_suggestedContacts;
    v11 = [v6 row];

    v12 = [(NSArray *)suggestedContacts objectAtIndexedSubscript:v11];
    selectedContact = self->_selectedContact;
    self->_selectedContact = v12;

    [(UIBarButtonItem *)self->_continueButton setEnabled:1];
  }
}

- (void)tableView:(id)a3 didDeselectRowAtIndexPath:(id)a4
{
  if (![(AAUIAccountContactSelectorViewController *)self _isOtherContactRowForIndexPath:a4])
  {
    continueButton = self->_continueButton;

    [(UIBarButtonItem *)continueButton setEnabled:0];
  }
}

- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4
{
  v4 = [(AAUIAccountContactSelectorViewController *)self _isOtherContactRowForIndexPath:a4];
  result = *MEMORY[0x1E69DE3D0];
  if (v4)
  {
    return 58.0;
  }

  return result;
}

- (void)_setupTableView
{
  v3 = [(OBTableWelcomeController *)self tableView];
  [v3 setDelegate:self];

  v4 = [(OBTableWelcomeController *)self tableView];
  [v4 setDataSource:self];

  v5 = *MEMORY[0x1E69DE3D0];
  v6 = [(OBTableWelcomeController *)self tableView];
  [v6 setRowHeight:v5];

  v7 = [(OBTableWelcomeController *)self tableView];
  [v7 setEstimatedRowHeight:v5];

  v8 = [(OBTableWelcomeController *)self tableView];
  [v8 setSectionHeaderHeight:v5];

  v9 = [(OBTableWelcomeController *)self tableView];
  [v9 setAllowsSelection:1];

  v10 = [(OBTableWelcomeController *)self tableView];
  [v10 setSeparatorInset:{0.0, 16.0, 0.0, 0.0}];

  v11 = [(OBTableWelcomeController *)self tableView];
  [v11 registerClass:objc_opt_class() forCellReuseIdentifier:@"ContactSelectorCell"];

  v12 = [(OBTableWelcomeController *)self tableView];
  [v12 registerClass:objc_opt_class() forCellReuseIdentifier:@"OtherContactsCell"];
}

- (void)_selectContact
{
  v3 = [(AAUIOBTableWelcomeController *)self delegate];
  [v3 accountContactSelector:self didSelectContact:self->_selectedContact];
}

@end