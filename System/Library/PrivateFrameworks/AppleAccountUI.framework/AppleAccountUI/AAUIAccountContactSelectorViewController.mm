@interface AAUIAccountContactSelectorViewController
- (AAUIAccountContactSelectorViewController)initWithViewModel:(id)model;
- (BOOL)_isOtherContactRowForIndexPath:(id)path;
- (double)tableView:(id)view heightForRowAtIndexPath:(id)path;
- (id)_otherContactCellForTableView:(id)view;
- (id)_pictureStore;
- (id)_suggestedContactCellForTableView:(id)view atRow:(int64_t)row;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (void)_selectContact;
- (void)_setupTableView;
- (void)dealloc;
- (void)tableView:(id)view didDeselectRowAtIndexPath:(id)path;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLoad;
@end

@implementation AAUIAccountContactSelectorViewController

- (AAUIAccountContactSelectorViewController)initWithViewModel:(id)model
{
  modelCopy = model;
  v9.receiver = self;
  v9.super_class = AAUIAccountContactSelectorViewController;
  v5 = [(AAUIOBTableWelcomeController *)&v9 initWithViewModel:modelCopy];
  if (v5)
  {
    suggestedContacts = [modelCopy suggestedContacts];
    suggestedContacts = v5->_suggestedContacts;
    v5->_suggestedContacts = suggestedContacts;
  }

  return v5;
}

- (void)viewDidLoad
{
  v12.receiver = self;
  v12.super_class = AAUIAccountContactSelectorViewController;
  [(AAUIOBTableWelcomeController *)&v12 viewDidLoad];
  primaryButton = [(AAUIOBTableWelcomeController *)self primaryButton];
  [primaryButton setEnabled:0];

  primaryButton2 = [(AAUIOBTableWelcomeController *)self primaryButton];
  [primaryButton2 addTarget:self action:sel__selectContact forControlEvents:64];

  [(AAUIAccountContactSelectorViewController *)self _setupTableView];
  v5 = objc_alloc(MEMORY[0x1E69DC708]);
  v6 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"NEXT" value:&stru_1F447F790 table:@"Localizable"];
  v8 = [v5 initWithTitle:v7 style:0 target:self action:sel__selectContact];
  continueButton = self->_continueButton;
  self->_continueButton = v8;

  [(UIBarButtonItem *)self->_continueButton setEnabled:0];
  v10 = self->_continueButton;
  navigationItem = [(OBBaseWelcomeController *)self navigationItem];
  [navigationItem setRightBarButtonItem:v10];
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

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  if ([(AAUIAccountContactSelectorViewController *)self _isOtherContactRowForIndexPath:pathCopy])
  {
    [(AAUIAccountContactSelectorViewController *)self _otherContactCellForTableView:viewCopy];
  }

  else
  {
    -[AAUIAccountContactSelectorViewController _suggestedContactCellForTableView:atRow:](self, "_suggestedContactCellForTableView:atRow:", viewCopy, [pathCopy row]);
  }
  v8 = ;

  return v8;
}

- (id)_otherContactCellForTableView:(id)view
{
  v3 = [view dequeueReusableCellWithIdentifier:@"OtherContactsCell"];
  if (!v3)
  {
    v3 = [objc_alloc(MEMORY[0x1E69DD028]) initWithStyle:0 reuseIdentifier:@"OtherContactsCell"];
  }

  v4 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"ACCOUNT_CONTACT_PICKER_CHOOSE_SOMEONE" value:&stru_1F447F790 table:@"Localizable"];
  textLabel = [v3 textLabel];
  [textLabel setText:v5];

  v7 = [MEMORY[0x1E69DB878] _preferredFontForTextStyle:*MEMORY[0x1E69DDCF8] weight:*MEMORY[0x1E69DB970]];
  textLabel2 = [v3 textLabel];
  [textLabel2 setFont:v7];

  systemBlueColor = [MEMORY[0x1E69DC888] systemBlueColor];
  textLabel3 = [v3 textLabel];
  [textLabel3 setTextColor:systemBlueColor];

  secondarySystemBackgroundColor = [MEMORY[0x1E69DC888] secondarySystemBackgroundColor];
  [v3 setBackgroundColor:secondarySystemBackgroundColor];

  return v3;
}

- (id)_suggestedContactCellForTableView:(id)view atRow:(int64_t)row
{
  v6 = [view dequeueReusableCellWithIdentifier:@"ContactSelectorCell"];
  if (!v6)
  {
    v6 = [[AAUISuggestedContactCell alloc] initWithStyle:0 reuseIdentifier:@"ContactSelectorCell"];
  }

  v7 = [(NSArray *)self->_suggestedContacts objectAtIndexedSubscript:row];
  _pictureStore = [(AAUIAccountContactSelectorViewController *)self _pictureStore];
  [(AAUISuggestedContactCell *)v6 updateWithContact:v7 pictureStore:_pictureStore];

  return v6;
}

- (BOOL)_isOtherContactRowForIndexPath:(id)path
{
  pathCopy = path;
  v5 = [pathCopy row];
  tableView = [(OBTableWelcomeController *)self tableView];
  section = [pathCopy section];

  LOBYTE(pathCopy) = v5 == [tableView numberOfRowsInSection:section] - 1;
  return pathCopy;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  if ([(AAUIAccountContactSelectorViewController *)self _isOtherContactRowForIndexPath:pathCopy])
  {
    [viewCopy deselectRowAtIndexPath:pathCopy animated:1];

    delegate = [(AAUIOBTableWelcomeController *)self delegate];
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      delegate2 = [(AAUIOBTableWelcomeController *)self delegate];
      [delegate2 accountContactSelectorShowOtherContacts:self];
    }
  }

  else
  {
    suggestedContacts = self->_suggestedContacts;
    v11 = [pathCopy row];

    v12 = [(NSArray *)suggestedContacts objectAtIndexedSubscript:v11];
    selectedContact = self->_selectedContact;
    self->_selectedContact = v12;

    [(UIBarButtonItem *)self->_continueButton setEnabled:1];
  }
}

- (void)tableView:(id)view didDeselectRowAtIndexPath:(id)path
{
  if (![(AAUIAccountContactSelectorViewController *)self _isOtherContactRowForIndexPath:path])
  {
    continueButton = self->_continueButton;

    [(UIBarButtonItem *)continueButton setEnabled:0];
  }
}

- (double)tableView:(id)view heightForRowAtIndexPath:(id)path
{
  v4 = [(AAUIAccountContactSelectorViewController *)self _isOtherContactRowForIndexPath:path];
  result = *MEMORY[0x1E69DE3D0];
  if (v4)
  {
    return 58.0;
  }

  return result;
}

- (void)_setupTableView
{
  tableView = [(OBTableWelcomeController *)self tableView];
  [tableView setDelegate:self];

  tableView2 = [(OBTableWelcomeController *)self tableView];
  [tableView2 setDataSource:self];

  v5 = *MEMORY[0x1E69DE3D0];
  tableView3 = [(OBTableWelcomeController *)self tableView];
  [tableView3 setRowHeight:v5];

  tableView4 = [(OBTableWelcomeController *)self tableView];
  [tableView4 setEstimatedRowHeight:v5];

  tableView5 = [(OBTableWelcomeController *)self tableView];
  [tableView5 setSectionHeaderHeight:v5];

  tableView6 = [(OBTableWelcomeController *)self tableView];
  [tableView6 setAllowsSelection:1];

  tableView7 = [(OBTableWelcomeController *)self tableView];
  [tableView7 setSeparatorInset:{0.0, 16.0, 0.0, 0.0}];

  tableView8 = [(OBTableWelcomeController *)self tableView];
  [tableView8 registerClass:objc_opt_class() forCellReuseIdentifier:@"ContactSelectorCell"];

  tableView9 = [(OBTableWelcomeController *)self tableView];
  [tableView9 registerClass:objc_opt_class() forCellReuseIdentifier:@"OtherContactsCell"];
}

- (void)_selectContact
{
  delegate = [(AAUIOBTableWelcomeController *)self delegate];
  [delegate accountContactSelector:self didSelectContact:self->_selectedContact];
}

@end