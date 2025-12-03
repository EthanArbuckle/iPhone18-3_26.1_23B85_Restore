@interface CNUIFamilyMemberDowntimeContactPickerController
+ (id)familyCircle;
- (CNUICoreContactEditingSession)editingSessionFromContactViewController;
- (CNUIFamilyMemberDowntimeContactPickerController)initWithChildFamilyMember:(id)member allFamilyMembers:(id)members contactStore:(id)store;
- (CNUIFamilyMemberDowntimeContactPickerController)initWithChildFamilyMember:(id)member allFamilyMembers:(id)members contactStore:(id)store editingStrategy:(id)strategy showingFamilyMemberContacts:(BOOL)contacts;
- (CNUIFamilyMemberDowntimeContactPickerControllerDelegate)delegate;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)warningMessageForContact:(id)contact;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)cancel:(id)cancel;
- (void)configureNavigationItem;
- (void)contactViewController:(id)controller didCompleteWithContact:(id)contact;
- (void)dealloc;
- (void)done:(id)done;
- (void)keyboardWillChange:(id)change;
- (void)saveSanitizedSelectedContacts:(id)contacts;
- (void)searchBarCancelButtonClicked:(id)clicked;
- (void)setupSearchBar;
- (void)setupSearchController;
- (void)setupTableView;
- (void)setupUI;
- (void)startObservingKeyboardChanges;
- (void)tableView:(id)view accessoryButtonTappedForRowWithIndexPath:(id)path;
- (void)tableView:(id)view didDeselectRowAtIndexPath:(id)path;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path;
- (void)updateSearchResultsForSearchController:(id)controller;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation CNUIFamilyMemberDowntimeContactPickerController

- (CNUIFamilyMemberDowntimeContactPickerControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)contactViewController:(id)controller didCompleteWithContact:(id)contact
{
  if (!contact)
  {
    tableView = [(CNUIFamilyMemberDowntimeContactPickerController *)self tableView];
    presentedContactIndexPath = [(CNUIFamilyMemberDowntimeContactPickerController *)self presentedContactIndexPath];
    [tableView deselectRowAtIndexPath:presentedContactIndexPath animated:1];
  }

  [(CNUIFamilyMemberDowntimeContactPickerController *)self setPresentedContactIndexPath:0];
  navigationController = [(CNUIFamilyMemberDowntimeContactPickerController *)self navigationController];
  v7 = [navigationController popViewControllerAnimated:1];
}

- (void)searchBarCancelButtonClicked:(id)clicked
{
  [(UISearchBar *)self->_searchBar setText:&stru_1F0CE7398];
  searchController = self->_searchController;

  [(CNUIFamilyMemberDowntimeContactPickerController *)self updateSearchResultsForSearchController:searchController];
}

- (void)updateSearchResultsForSearchController:(id)controller
{
  text = [(UISearchBar *)self->_searchBar text];
  [(CNUIFamilyMemberDowntimeContactDataSource *)self->_dataSource setFilterString:text];
  [(UITableView *)self->_tableView reloadData];
}

- (id)warningMessageForContact:(id)contact
{
  contactCopy = contact;
  contactCardWarningFormatter = [(CNUIFamilyMemberDowntimeContactPickerController *)self contactCardWarningFormatter];
  v6 = [contactCardWarningFormatter stringFromContact:contactCopy];

  LODWORD(contactCardWarningFormatter) = (*(*MEMORY[0x1E6996568] + 16))();
  v7 = MEMORY[0x1E696AEC0];
  v8 = CNContactsUIBundle();
  v9 = v8;
  if (contactCardWarningFormatter)
  {
    v10 = [v8 localizedStringForKey:@"DOWNTIME_PICKER_CONTACT_CARD_WARNING_NO_NAME" value:&stru_1F0CE7398 table:@"Localized"];
    childFamilyMember = [(CNUIFamilyMemberDowntimeContactPickerController *)self childFamilyMember];
    firstName = [childFamilyMember firstName];
    childFamilyMember2 = [(CNUIFamilyMemberDowntimeContactPickerController *)self childFamilyMember];
    firstName2 = [childFamilyMember2 firstName];
    [v7 stringWithFormat:v10, firstName, firstName2, v17];
  }

  else
  {
    v10 = [v8 localizedStringForKey:@"DOWNTIME_PICKER_CONTACT_CARD_WARNING" value:&stru_1F0CE7398 table:@"Localized"];
    childFamilyMember = [(CNUIFamilyMemberDowntimeContactPickerController *)self childFamilyMember];
    firstName = [childFamilyMember firstName];
    childFamilyMember2 = [(CNUIFamilyMemberDowntimeContactPickerController *)self childFamilyMember];
    firstName2 = [childFamilyMember2 firstName];
    [v7 stringWithFormat:v10, firstName, v6, firstName2];
  }
  v15 = ;

  return v15;
}

- (void)tableView:(id)view accessoryButtonTappedForRowWithIndexPath:(id)path
{
  v36[2] = *MEMORY[0x1E69E9840];
  pathCopy = path;
  [(CNUIFamilyMemberDowntimeContactPickerController *)self setPresentedContactIndexPath:pathCopy];
  dataSource = [(CNUIFamilyMemberDowntimeContactPickerController *)self dataSource];
  v7 = [dataSource contactItemForIndexPath:pathCopy];

  dataSource2 = [(CNUIFamilyMemberDowntimeContactPickerController *)self dataSource];
  contact = [v7 contact];
  v10 = +[CNContactContentViewController descriptorForRequiredKeys];
  v11 = *MEMORY[0x1E695C220];
  v36[0] = v10;
  v36[1] = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:2];
  v13 = [dataSource2 completeContactFromContact:contact fromMainStoreOnly:1 keysToFetch:v12];

  v14 = v13;
  editingSessionFromContactViewController = [(CNUIFamilyMemberDowntimeContactPickerController *)self editingSessionFromContactViewController];
  LODWORD(v10) = [editingSessionFromContactViewController containsUpdatedContactMatchingContact:v14];

  if (v10)
  {
    editingSessionFromContactViewController2 = [(CNUIFamilyMemberDowntimeContactPickerController *)self editingSessionFromContactViewController];
    v35 = v14;
    sensitiveDataContactFilter = [MEMORY[0x1E695DEC8] arrayWithObjects:&v35 count:1];
    v18 = [editingSessionFromContactViewController2 updatedContactsMatchingContacts:sensitiveDataContactFilter];
    firstObject = [v18 firstObject];
  }

  else
  {
    editingSessionFromContactViewController2 = [(CNUIFamilyMemberDowntimeContactPickerController *)self editingStrategy];
    sensitiveDataContactFilter = [editingSessionFromContactViewController2 sensitiveDataContactFilter];
    firstObject = (sensitiveDataContactFilter)[2](sensitiveDataContactFilter, v14);
    v18 = v14;
  }

  contactViewController = self->_contactViewController;
  if (contactViewController)
  {
    [(CNContactViewController *)contactViewController setContact:firstObject additionalContact:0 mode:1];
    v21 = [(CNUIFamilyMemberDowntimeContactPickerController *)self warningMessageForContact:v14];
    [(CNContactViewController *)self->_contactViewController setWarningMessage:v21];
  }

  else
  {
    v22 = [CNContactViewController viewControllerForContact:firstObject];
    v23 = self->_contactViewController;
    self->_contactViewController = v22;

    editingStrategy = [(CNUIFamilyMemberDowntimeContactPickerController *)self editingStrategy];
    prohibitedPropertyKeys = [editingStrategy prohibitedPropertyKeys];
    [(CNContactViewController *)self->_contactViewController setProhibitedPropertyKeys:prohibitedPropertyKeys];

    [(CNContactViewController *)self->_contactViewController setIgnoresParentalRestrictions:1];
    [(CNContactViewController *)self->_contactViewController setDisplayMode:2];
    v26 = [(CNUIFamilyMemberDowntimeContactPickerController *)self warningMessageForContact:v14];
    [(CNContactViewController *)self->_contactViewController setWarningMessage:v26];

    [(CNContactViewController *)self->_contactViewController setEditingProposedInformation:1];
    [(CNContactViewController *)self->_contactViewController setDelegate:self];
    [(CNContactViewController *)self->_contactViewController setShouldDrawNavigationBar:1];
    v27 = CNContactsUIBundle();
    v28 = [v27 localizedStringForKey:@"DOWNTIME_PICKER_CONTACT_CARD_PROMPT" value:&stru_1F0CE7398 table:@"Localized"];
    [(CNContactViewController *)self->_contactViewController setInitialPrompt:v28];

    [(CNContactViewController *)self->_contactViewController setEditMode:2];
    [(CNContactViewController *)self->_contactViewController setActions:[(CNContactViewController *)self->_contactViewController actions]& 0xFFFFFFFFFFFFFEFFLL];
    [(CNContactViewController *)self->_contactViewController setActions:[(CNContactViewController *)self->_contactViewController actions]& 0xFFFFFFFFFFFFFFEFLL];
    [(CNContactViewController *)self->_contactViewController setAllowsActions:0];
    contentViewController = [(CNContactViewController *)self->_contactViewController contentViewController];
    [contentViewController setShouldIgnoreContactStoreDidChangeNotification:1];

    v30 = objc_alloc_init(CNUIEditingSessionSaveExecutor);
    contentViewController2 = [(CNContactViewController *)self->_contactViewController contentViewController];
    [contentViewController2 setSaveContactExecutor:v30];

    v21 = objc_alloc_init(CNUINullSaveExecutor);
    contentViewController3 = [(CNContactViewController *)self->_contactViewController contentViewController];
    [contentViewController3 setSaveLinkedContactsExecutor:v21];
  }

  [(CNContactViewController *)self->_contactViewController setEditing:1];
  navigationController = [(CNUIFamilyMemberDowntimeContactPickerController *)self navigationController];
  contactViewController = [(CNUIFamilyMemberDowntimeContactPickerController *)self contactViewController];
  [navigationController pushViewController:contactViewController animated:1];
}

- (void)tableView:(id)view didDeselectRowAtIndexPath:(id)path
{
  v5 = *MEMORY[0x1E6996530];
  pathCopy = path;
  tableView = [(CNUIFamilyMemberDowntimeContactPickerController *)self tableView];
  indexPathsForSelectedRows = [tableView indexPathsForSelectedRows];
  LODWORD(v5) = (*(v5 + 16))(v5, indexPathsForSelectedRows);
  navigationItem = [(CNUIFamilyMemberDowntimeContactPickerController *)self navigationItem];
  rightBarButtonItem = [navigationItem rightBarButtonItem];
  [rightBarButtonItem setEnabled:v5 ^ 1];

  dataSource = [(CNUIFamilyMemberDowntimeContactPickerController *)self dataSource];
  [dataSource setContactItemSelected:0 forIndexPath:pathCopy];
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v5 = *MEMORY[0x1E6996530];
  pathCopy = path;
  tableView = [(CNUIFamilyMemberDowntimeContactPickerController *)self tableView];
  indexPathsForSelectedRows = [tableView indexPathsForSelectedRows];
  LODWORD(v5) = (*(v5 + 16))(v5, indexPathsForSelectedRows);
  navigationItem = [(CNUIFamilyMemberDowntimeContactPickerController *)self navigationItem];
  rightBarButtonItem = [navigationItem rightBarButtonItem];
  [rightBarButtonItem setEnabled:v5 ^ 1];

  dataSource = [(CNUIFamilyMemberDowntimeContactPickerController *)self dataSource];
  [dataSource setContactItemSelected:1 forIndexPath:pathCopy];
}

- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path
{
  pathCopy = path;
  cellCopy = cell;
  dataSource = [(CNUIFamilyMemberDowntimeContactPickerController *)self dataSource];
  v9 = [dataSource contactItemForIndexPath:pathCopy];
  selected = [v9 selected];

  if (selected)
  {
    [cellCopy setSelected:1 animated:0];

    tableView = [(CNUIFamilyMemberDowntimeContactPickerController *)self tableView];
    [tableView selectRowAtIndexPath:pathCopy animated:0 scrollPosition:0];
  }

  else
  {
    [cellCopy setSelected:0 animated:0];

    tableView = [(CNUIFamilyMemberDowntimeContactPickerController *)self tableView];
    [tableView deselectRowAtIndexPath:pathCopy animated:0];
  }
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  v8 = +[CNUIFamilyDowntimeContactPickerCell reuseIdentifier];
  v9 = [viewCopy dequeueReusableCellWithIdentifier:v8 forIndexPath:pathCopy];

  dataSource = [(CNUIFamilyMemberDowntimeContactPickerController *)self dataSource];
  v11 = [dataSource contactItemForIndexPath:pathCopy];

  contactCellLabelFormatter = [(CNUIFamilyMemberDowntimeContactPickerController *)self contactCellLabelFormatter];
  contact = [v11 contact];
  v14 = [contactCellLabelFormatter stringFromContact:contact];
  textLabel = [v9 textLabel];
  [textLabel setText:v14];

  label = [v11 label];
  detailTextLabel = [v9 detailTextLabel];
  [detailTextLabel setText:label];

  dataSource2 = [(CNUIFamilyMemberDowntimeContactPickerController *)self dataSource];
  if ([dataSource2 isShowingFamilyMemberContacts])
  {
    v19 = 0;
  }

  else
  {
    v19 = 4;
  }

  [v9 setEditingAccessoryType:v19];

  v20 = objc_alloc(MEMORY[0x1E69DD250]);
  v21 = [v20 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  [v9 setSelectedBackgroundView:v21];

  if (![(CNUIFamilyMemberDowntimeContactPickerController *)self initialSelectionPerformed]&& [(CNUIFamilyMemberDowntimeContactPickerController *)self shouldPreselectFamilyMemberContacts])
  {
    dataSource3 = [(CNUIFamilyMemberDowntimeContactPickerController *)self dataSource];
    if ([dataSource3 numberOfSections] == 2)
    {
      section = [pathCopy section];

      if (section)
      {
        goto LABEL_10;
      }

      dataSource4 = [(CNUIFamilyMemberDowntimeContactPickerController *)self dataSource];
      [dataSource4 setContactItemSelected:1 forIndexPath:pathCopy];

      dataSource3 = [(CNUIFamilyMemberDowntimeContactPickerController *)self navigationItem];
      rightBarButtonItem = [dataSource3 rightBarButtonItem];
      [rightBarButtonItem setEnabled:1];
    }
  }

LABEL_10:

  return v9;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  dataSource = [(CNUIFamilyMemberDowntimeContactPickerController *)self dataSource];
  v6 = [dataSource numberOfRowsInSection:section];

  return v6;
}

- (int64_t)numberOfSectionsInTableView:(id)view
{
  dataSource = [(CNUIFamilyMemberDowntimeContactPickerController *)self dataSource];
  numberOfSections = [dataSource numberOfSections];

  return numberOfSections;
}

- (void)saveSanitizedSelectedContacts:(id)contacts
{
  contactsCopy = contacts;
  v5 = *MEMORY[0x1E6996530];
  if (((*(*MEMORY[0x1E6996530] + 16))(*MEMORY[0x1E6996530], contactsCopy) & 1) == 0)
  {
    editingSessionFromContactViewController = [(CNUIFamilyMemberDowntimeContactPickerController *)self editingSessionFromContactViewController];
    updatedContacts = [editingSessionFromContactViewController updatedContacts];
    v8 = (*(v5 + 16))(v5, updatedContacts);

    if (v8)
    {
      editingStrategy = [(CNUIFamilyMemberDowntimeContactPickerController *)self editingStrategy];
      sensitiveDataContactFilter = [editingStrategy sensitiveDataContactFilter];
      v11 = [contactsCopy _cn_map:sensitiveDataContactFilter];
    }

    else
    {
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __81__CNUIFamilyMemberDowntimeContactPickerController_saveSanitizedSelectedContacts___block_invoke;
      v13[3] = &unk_1E74E16F8;
      v13[4] = self;
      v11 = [contactsCopy _cn_map:v13];
    }

    delegate = [(CNUIFamilyMemberDowntimeContactPickerController *)self delegate];
    [delegate downtimePickerController:self didFinishWithContacts:v11];
  }
}

id __81__CNUIFamilyMemberDowntimeContactPickerController_saveSanitizedSelectedContacts___block_invoke(uint64_t a1, void *a2)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(a1 + 32) editingSessionFromContactViewController];
  v12[0] = v3;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
  v6 = [v4 updatedContactsMatchingContacts:v5];
  v7 = [v6 firstObject];

  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v9 = [*(a1 + 32) editingStrategy];
    v10 = [v9 sensitiveDataContactFilter];
    v8 = (v10)[2](v10, v3);
  }

  return v8;
}

- (void)done:(id)done
{
  dataSource = [(CNUIFamilyMemberDowntimeContactPickerController *)self dataSource];
  selectedContacts = [dataSource selectedContacts];

  [(CNUIFamilyMemberDowntimeContactPickerController *)self saveSanitizedSelectedContacts:selectedContacts];
}

- (void)cancel:(id)cancel
{
  delegate = [(CNUIFamilyMemberDowntimeContactPickerController *)self delegate];
  [delegate downtimePickerController:self didFinishWithContacts:0];
}

- (void)keyboardWillChange:(id)change
{
  userInfo = [change userInfo];
  v5 = [userInfo objectForKeyedSubscript:*MEMORY[0x1E69DDFA0]];
  [v5 CGRectValue];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  view = [(CNUIFamilyMemberDowntimeContactPickerController *)self view];
  window = [view window];
  [window convertRect:0 fromWindow:{v7, v9, v11, v13}];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  view2 = [(CNUIFamilyMemberDowntimeContactPickerController *)self view];
  [view2 convertRect:0 fromView:{v17, v19, v21, v23}];
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;

  view3 = [(CNUIFamilyMemberDowntimeContactPickerController *)self view];
  [view3 bounds];
  v61.origin.x = v26;
  v61.origin.y = v28;
  v61.size.width = v30;
  v61.size.height = v32;
  v59 = CGRectIntersection(v58, v61);
  x = v59.origin.x;
  y = v59.origin.y;
  width = v59.size.width;
  height = v59.size.height;

  v60.origin.x = x;
  v60.origin.y = y;
  v60.size.width = width;
  v60.size.height = height;
  v38 = CGRectGetHeight(v60);
  tableView = [(CNUIFamilyMemberDowntimeContactPickerController *)self tableView];
  [tableView contentInset];
  v41 = v40;
  v43 = v42;
  v45 = v44;

  tableView2 = [(CNUIFamilyMemberDowntimeContactPickerController *)self tableView];
  [tableView2 _systemContentInset];
  v48 = v38 - v47;

  if (v48 < 0.0)
  {
    v48 = 0.0;
  }

  tableView3 = [(CNUIFamilyMemberDowntimeContactPickerController *)self tableView];
  [tableView3 contentInset];
  if (v43 == v53 && v41 == v50 && v45 == v52)
  {
    v54 = v51;

    if (v48 == v54)
    {
      return;
    }
  }

  else
  {
  }

  tableView4 = [(CNUIFamilyMemberDowntimeContactPickerController *)self tableView];
  [tableView4 setContentInset:{v41, v43, v48, v45}];

  tableView5 = [(CNUIFamilyMemberDowntimeContactPickerController *)self tableView];
  [tableView5 setScrollIndicatorInsets:{v41, v43, v48, v45}];
}

- (CNUICoreContactEditingSession)editingSessionFromContactViewController
{
  objc_opt_class();
  contactViewController = [(CNUIFamilyMemberDowntimeContactPickerController *)self contactViewController];
  contentViewController = [contactViewController contentViewController];
  saveContactExecutor = [contentViewController saveContactExecutor];
  if (objc_opt_isKindOfClass())
  {
    v6 = saveContactExecutor;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  editingSession = [v7 editingSession];

  return editingSession;
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = CNUIFamilyMemberDowntimeContactPickerController;
  [(CNUIFamilyMemberDowntimeContactPickerController *)&v4 viewDidAppear:appear];
  [(CNUIFamilyMemberDowntimeContactPickerController *)self setInitialSelectionPerformed:1];
}

- (void)viewWillAppear:(BOOL)appear
{
  v7.receiver = self;
  v7.super_class = CNUIFamilyMemberDowntimeContactPickerController;
  [(CNUIFamilyMemberDowntimeContactPickerController *)&v7 viewWillAppear:appear];
  tableView = [(CNUIFamilyMemberDowntimeContactPickerController *)self tableView];
  tableView2 = [(CNUIFamilyMemberDowntimeContactPickerController *)self tableView];
  indexPathsForVisibleRows = [tableView2 indexPathsForVisibleRows];
  [tableView reloadRowsAtIndexPaths:indexPathsForVisibleRows withRowAnimation:5];
}

- (void)startObservingKeyboardChanges
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel_keyboardWillChange_ name:*MEMORY[0x1E69DE080] object:0];

  defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter2 addObserver:self selector:sel_keyboardWillChange_ name:*MEMORY[0x1E69DE078] object:0];
}

- (void)configureNavigationItem
{
  childFamilyMember = [(CNUIFamilyMemberDowntimeContactPickerController *)self childFamilyMember];
  firstName = [childFamilyMember firstName];

  dataSource = [(CNUIFamilyMemberDowntimeContactPickerController *)self dataSource];
  isShowingFamilyMemberContacts = [dataSource isShowingFamilyMemberContacts];

  searchController = self->_searchController;
  navigationItem = [(CNUIFamilyMemberDowntimeContactPickerController *)self navigationItem];
  [navigationItem setSearchController:searchController];

  navigationItem2 = [(CNUIFamilyMemberDowntimeContactPickerController *)self navigationItem];
  [navigationItem2 setHidesSearchBarWhenScrolling:0];

  if ((*(*MEMORY[0x1E6996570] + 16))())
  {
    v9 = MEMORY[0x1E696AEC0];
    v10 = CNContactsUIBundle();
    v11 = [v10 localizedStringForKey:@"DOWNTIME_PICKER_PROMPT" value:&stru_1F0CE7398 table:@"Localized"];
    v12 = [v9 stringWithFormat:v11, firstName];
    navigationItem3 = [(CNUIFamilyMemberDowntimeContactPickerController *)self navigationItem];
    [navigationItem3 setPrompt:v12];

    if (isShowingFamilyMemberContacts)
    {
      v14 = MEMORY[0x1E696AEC0];
      v15 = CNContactsUIBundle();
      v16 = [v15 localizedStringForKey:@"DOWNTIME_PICKER_TITLE_MEMBER" value:&stru_1F0CE7398 table:@"Localized"];
      navigationItem6 = [v14 stringWithFormat:v16, firstName];
    }

    else
    {
      v15 = CNContactsUIBundle();
      navigationItem6 = [v15 localizedStringForKey:@"DOWNTIME_PICKER_TITLE_THIS_DEVICE" value:&stru_1F0CE7398 table:@"Localized"];
      v16 = navigationItem6;
    }

    navigationItem4 = [(CNUIFamilyMemberDowntimeContactPickerController *)self navigationItem];
    [navigationItem4 setTitle:navigationItem6];

    if ((isShowingFamilyMemberContacts & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v18 = CNContactsUIBundle();
    v19 = v18;
    if (isShowingFamilyMemberContacts)
    {
      v20 = @"DOWNTIME_PICKER_TITLE";
    }

    else
    {
      v20 = @"DOWNTIME_PICKER_TITLE_THIS_DEVICE";
    }

    v21 = [v18 localizedStringForKey:v20 value:&stru_1F0CE7398 table:@"Localized"];
    navigationItem5 = [(CNUIFamilyMemberDowntimeContactPickerController *)self navigationItem];
    [navigationItem5 setTitle:v21];

    v15 = CNContactsUIBundle();
    v16 = [v15 localizedStringForKey:@"DOWNTIME_PICKER_PROMPT_DEFAULT_NAME" value:&stru_1F0CE7398 table:@"Localized"];
    navigationItem6 = [(CNUIFamilyMemberDowntimeContactPickerController *)self navigationItem];
    [navigationItem6 setPrompt:v16];
  }

LABEL_11:
  navigationItem7 = [(CNUIFamilyMemberDowntimeContactPickerController *)self navigationItem];
  [navigationItem7 setLargeTitleDisplayMode:2];

  v25 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:self action:sel_cancel_];
  navigationItem8 = [(CNUIFamilyMemberDowntimeContactPickerController *)self navigationItem];
  [navigationItem8 setLeftBarButtonItem:v25];

  v27 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:0 target:self action:sel_done_];
  navigationItem9 = [(CNUIFamilyMemberDowntimeContactPickerController *)self navigationItem];
  [navigationItem9 setRightBarButtonItem:v27];

  navigationItem10 = [(CNUIFamilyMemberDowntimeContactPickerController *)self navigationItem];
  rightBarButtonItem = [navigationItem10 rightBarButtonItem];
  [rightBarButtonItem setEnabled:0];
}

- (void)setupSearchBar
{
  searchBar = [(UISearchController *)self->_searchController searchBar];
  v4 = CNContactsUIBundle();
  v5 = [v4 localizedStringForKey:@"SEARCH_LOCAL_PLACEHOLDER" value:&stru_1F0CE7398 table:@"Localized"];
  [(UISearchBar *)searchBar setPlaceholder:v5];

  [(UISearchBar *)searchBar setAutoresizingMask:2];
  [(UISearchBar *)searchBar setAutocorrectionType:1];
  [(UISearchBar *)searchBar setDelegate:self];
  [(UISearchBar *)searchBar sizeToFit];
  [(UISearchBar *)searchBar setAutoresizingMask:2];
  searchBar = self->_searchBar;
  self->_searchBar = searchBar;
}

- (void)setupSearchController
{
  v3 = [objc_alloc(MEMORY[0x1E69DCF10]) initWithSearchResultsController:0];
  searchController = self->_searchController;
  self->_searchController = v3;

  [(UISearchController *)self->_searchController setObscuresBackgroundDuringPresentation:0];
  [(UISearchController *)self->_searchController setSearchResultsUpdater:self];
  v5 = self->_searchController;

  [(UISearchController *)v5 setDelegate:self];
}

- (void)setupTableView
{
  v3 = objc_alloc(MEMORY[0x1E69DD020]);
  view = [(CNUIFamilyMemberDowntimeContactPickerController *)self view];
  [view bounds];
  v5 = [v3 initWithFrame:0 style:?];
  tableView = self->_tableView;
  self->_tableView = v5;

  v7 = self->_tableView;
  v8 = objc_opt_class();
  v9 = +[CNUIFamilyDowntimeContactPickerCell reuseIdentifier];
  [(UITableView *)v7 registerClass:v8 forCellReuseIdentifier:v9];

  [(UITableView *)self->_tableView setDelegate:self];
  [(UITableView *)self->_tableView setDataSource:self];
  [(UITableView *)self->_tableView setAllowsMultipleSelectionDuringEditing:1];
  [(UITableView *)self->_tableView setKeyboardDismissMode:2];
  [(UITableView *)self->_tableView setAutoresizingMask:18];
  [(UITableView *)self->_tableView setEditing:1];
  view2 = [(CNUIFamilyMemberDowntimeContactPickerController *)self view];
  [view2 addSubview:self->_tableView];
}

- (void)setupUI
{
  [(CNUIFamilyMemberDowntimeContactPickerController *)self setupTableView];
  [(CNUIFamilyMemberDowntimeContactPickerController *)self setupSearchController];
  [(CNUIFamilyMemberDowntimeContactPickerController *)self setupSearchBar];
  [(CNUIFamilyMemberDowntimeContactPickerController *)self configureNavigationItem];

  [(CNUIFamilyMemberDowntimeContactPickerController *)self startObservingKeyboardChanges];
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = CNUIFamilyMemberDowntimeContactPickerController;
  [(CNUIFamilyMemberDowntimeContactPickerController *)&v5 viewDidLoad];
  [(CNUIFamilyMemberDowntimeContactPickerController *)self setupUI];
  navigationController = [(CNUIFamilyMemberDowntimeContactPickerController *)self navigationController];
  presentationController = [navigationController presentationController];
  [presentationController setDelegate:self];
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = CNUIFamilyMemberDowntimeContactPickerController;
  [(CNUIFamilyMemberDowntimeContactPickerController *)&v4 dealloc];
}

- (CNUIFamilyMemberDowntimeContactPickerController)initWithChildFamilyMember:(id)member allFamilyMembers:(id)members contactStore:(id)store editingStrategy:(id)strategy showingFamilyMemberContacts:(BOOL)contacts
{
  contactsCopy = contacts;
  memberCopy = member;
  v41[2] = *MEMORY[0x1E69E9840];
  memberCopy2 = member;
  membersCopy = members;
  storeCopy = store;
  strategyCopy = strategy;
  v40.receiver = self;
  v40.super_class = CNUIFamilyMemberDowntimeContactPickerController;
  v18 = [(CNUIFamilyMemberDowntimeContactPickerController *)&v40 init];
  v19 = v18;
  if (v18)
  {
    v37 = contactsCopy;
    objc_storeStrong(&v18->_childFamilyMember, memberCopy);
    v20 = membersCopy;
    if (!membersCopy)
    {
      memberCopy = [objc_opt_class() familyCircle];
      members = [memberCopy members];
      v38[0] = MEMORY[0x1E69E9820];
      v38[1] = 3221225472;
      v38[2] = __151__CNUIFamilyMemberDowntimeContactPickerController_initWithChildFamilyMember_allFamilyMembers_contactStore_editingStrategy_showingFamilyMemberContacts___block_invoke;
      v38[3] = &unk_1E74E16D0;
      v36 = &v39;
      v39 = memberCopy2;
      v20 = [members _cn_filter:v38];
    }

    objc_storeStrong(&v19->_allFamilyMembers, v20);
    if (!membersCopy)
    {
    }

    objc_storeStrong(&v19->_editingStrategy, strategy);
    v21 = objc_alloc_init(MEMORY[0x1E695CD80]);
    contactCellLabelFormatter = v19->_contactCellLabelFormatter;
    v19->_contactCellLabelFormatter = v21;

    [(CNContactFormatter *)v19->_contactCellLabelFormatter setStyle:0];
    [(CNContactFormatter *)v19->_contactCellLabelFormatter setEmphasizesPrimaryNameComponent:1];
    [(CNContactFormatter *)v19->_contactCellLabelFormatter setFallbackStyle:-1];
    v23 = objc_alloc_init(MEMORY[0x1E695CD80]);
    contactCardWarningFormatter = v19->_contactCardWarningFormatter;
    v19->_contactCardWarningFormatter = v23;

    [(CNContactFormatter *)v19->_contactCardWarningFormatter setIgnoresNickname:1];
    [(CNContactFormatter *)v19->_contactCardWarningFormatter setIgnoresOrganization:1];
    [(CNContactFormatter *)v19->_contactCardWarningFormatter setStyle:1000];
    if (storeCopy)
    {
      v25 = storeCopy;
    }

    else
    {
      v25 = [MEMORY[0x1E695CE18] storeWithOptions:1];
    }

    v26 = v25;
    v27 = [CNUIFamilyMemberDowntimeContactDataSource alloc];
    allFamilyMembers = v19->_allFamilyMembers;
    v29 = +[CNContactContentViewController descriptorForRequiredKeys];
    v30 = *MEMORY[0x1E695C220];
    v41[0] = v29;
    v41[1] = v30;
    v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:v41 count:2];
    v32 = [(CNUIFamilyMemberDowntimeContactDataSource *)v27 initWithStore:v26 familyMembers:allFamilyMembers requiredKeys:v31];
    dataSource = v19->_dataSource;
    v19->_dataSource = v32;

    [(CNUIFamilyMemberDowntimeContactDataSource *)v19->_dataSource setIsShowingFamilyMemberContacts:v37];
    v34 = v19;

    if (!membersCopy)
    {
    }
  }

  return v19;
}

uint64_t __151__CNUIFamilyMemberDowntimeContactPickerController_initWithChildFamilyMember_allFamilyMembers_contactStore_editingStrategy_showingFamilyMemberContacts___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) firstName];
  v5 = [v3 firstName];
  if ([v4 isEqualToString:v5])
  {
    v6 = [*(a1 + 32) lastName];
    v7 = [v3 lastName];
    v8 = [v6 isEqualToString:v7] ^ 1;
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

- (CNUIFamilyMemberDowntimeContactPickerController)initWithChildFamilyMember:(id)member allFamilyMembers:(id)members contactStore:(id)store
{
  storeCopy = store;
  membersCopy = members;
  memberCopy = member;
  v11 = +[CNUIFamilyMemberContactsEditingStrategy whitelistedContactsStrategy];
  v12 = [(CNUIFamilyMemberDowntimeContactPickerController *)self initWithChildFamilyMember:memberCopy allFamilyMembers:membersCopy contactStore:storeCopy editingStrategy:v11 showingFamilyMemberContacts:0];

  return v12;
}

+ (id)familyCircle
{
  v2 = objc_alloc_init(MEMORY[0x1E699C070]);
  [v2 setPromptUserToResolveAuthenticatonFailure:0];
  v3 = objc_alloc_init(MEMORY[0x1E69967D0]);
  completionHandlerAdapter = [v3 completionHandlerAdapter];
  [v2 startRequestWithCompletionHandler:completionHandlerAdapter];

  future = [v3 future];
  v6 = [future recover:&__block_literal_global_56];

  v7 = [v6 result:0];

  return v7;
}

id __63__CNUIFamilyMemberDowntimeContactPickerController_familyCircle__block_invoke()
{
  v0 = MEMORY[0x1E6996720];
  v1 = objc_alloc_init(MEMORY[0x1E699C050]);
  v2 = [v0 futureWithResult:v1];

  return v2;
}

@end