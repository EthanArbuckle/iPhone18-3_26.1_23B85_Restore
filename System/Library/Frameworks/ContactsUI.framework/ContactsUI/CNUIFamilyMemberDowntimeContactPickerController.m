@interface CNUIFamilyMemberDowntimeContactPickerController
+ (id)familyCircle;
- (CNUICoreContactEditingSession)editingSessionFromContactViewController;
- (CNUIFamilyMemberDowntimeContactPickerController)initWithChildFamilyMember:(id)a3 allFamilyMembers:(id)a4 contactStore:(id)a5;
- (CNUIFamilyMemberDowntimeContactPickerController)initWithChildFamilyMember:(id)a3 allFamilyMembers:(id)a4 contactStore:(id)a5 editingStrategy:(id)a6 showingFamilyMemberContacts:(BOOL)a7;
- (CNUIFamilyMemberDowntimeContactPickerControllerDelegate)delegate;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)warningMessageForContact:(id)a3;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)cancel:(id)a3;
- (void)configureNavigationItem;
- (void)contactViewController:(id)a3 didCompleteWithContact:(id)a4;
- (void)dealloc;
- (void)done:(id)a3;
- (void)keyboardWillChange:(id)a3;
- (void)saveSanitizedSelectedContacts:(id)a3;
- (void)searchBarCancelButtonClicked:(id)a3;
- (void)setupSearchBar;
- (void)setupSearchController;
- (void)setupTableView;
- (void)setupUI;
- (void)startObservingKeyboardChanges;
- (void)tableView:(id)a3 accessoryButtonTappedForRowWithIndexPath:(id)a4;
- (void)tableView:(id)a3 didDeselectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5;
- (void)updateSearchResultsForSearchController:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation CNUIFamilyMemberDowntimeContactPickerController

- (CNUIFamilyMemberDowntimeContactPickerControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)contactViewController:(id)a3 didCompleteWithContact:(id)a4
{
  if (!a4)
  {
    v5 = [(CNUIFamilyMemberDowntimeContactPickerController *)self tableView];
    v6 = [(CNUIFamilyMemberDowntimeContactPickerController *)self presentedContactIndexPath];
    [v5 deselectRowAtIndexPath:v6 animated:1];
  }

  [(CNUIFamilyMemberDowntimeContactPickerController *)self setPresentedContactIndexPath:0];
  v8 = [(CNUIFamilyMemberDowntimeContactPickerController *)self navigationController];
  v7 = [v8 popViewControllerAnimated:1];
}

- (void)searchBarCancelButtonClicked:(id)a3
{
  [(UISearchBar *)self->_searchBar setText:&stru_1F0CE7398];
  searchController = self->_searchController;

  [(CNUIFamilyMemberDowntimeContactPickerController *)self updateSearchResultsForSearchController:searchController];
}

- (void)updateSearchResultsForSearchController:(id)a3
{
  v4 = [(UISearchBar *)self->_searchBar text];
  [(CNUIFamilyMemberDowntimeContactDataSource *)self->_dataSource setFilterString:v4];
  [(UITableView *)self->_tableView reloadData];
}

- (id)warningMessageForContact:(id)a3
{
  v4 = a3;
  v5 = [(CNUIFamilyMemberDowntimeContactPickerController *)self contactCardWarningFormatter];
  v6 = [v5 stringFromContact:v4];

  LODWORD(v5) = (*(*MEMORY[0x1E6996568] + 16))();
  v7 = MEMORY[0x1E696AEC0];
  v8 = CNContactsUIBundle();
  v9 = v8;
  if (v5)
  {
    v10 = [v8 localizedStringForKey:@"DOWNTIME_PICKER_CONTACT_CARD_WARNING_NO_NAME" value:&stru_1F0CE7398 table:@"Localized"];
    v11 = [(CNUIFamilyMemberDowntimeContactPickerController *)self childFamilyMember];
    v12 = [v11 firstName];
    v13 = [(CNUIFamilyMemberDowntimeContactPickerController *)self childFamilyMember];
    v14 = [v13 firstName];
    [v7 stringWithFormat:v10, v12, v14, v17];
  }

  else
  {
    v10 = [v8 localizedStringForKey:@"DOWNTIME_PICKER_CONTACT_CARD_WARNING" value:&stru_1F0CE7398 table:@"Localized"];
    v11 = [(CNUIFamilyMemberDowntimeContactPickerController *)self childFamilyMember];
    v12 = [v11 firstName];
    v13 = [(CNUIFamilyMemberDowntimeContactPickerController *)self childFamilyMember];
    v14 = [v13 firstName];
    [v7 stringWithFormat:v10, v12, v6, v14];
  }
  v15 = ;

  return v15;
}

- (void)tableView:(id)a3 accessoryButtonTappedForRowWithIndexPath:(id)a4
{
  v36[2] = *MEMORY[0x1E69E9840];
  v5 = a4;
  [(CNUIFamilyMemberDowntimeContactPickerController *)self setPresentedContactIndexPath:v5];
  v6 = [(CNUIFamilyMemberDowntimeContactPickerController *)self dataSource];
  v7 = [v6 contactItemForIndexPath:v5];

  v8 = [(CNUIFamilyMemberDowntimeContactPickerController *)self dataSource];
  v9 = [v7 contact];
  v10 = +[CNContactContentViewController descriptorForRequiredKeys];
  v11 = *MEMORY[0x1E695C220];
  v36[0] = v10;
  v36[1] = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:2];
  v13 = [v8 completeContactFromContact:v9 fromMainStoreOnly:1 keysToFetch:v12];

  v14 = v13;
  v15 = [(CNUIFamilyMemberDowntimeContactPickerController *)self editingSessionFromContactViewController];
  LODWORD(v10) = [v15 containsUpdatedContactMatchingContact:v14];

  if (v10)
  {
    v16 = [(CNUIFamilyMemberDowntimeContactPickerController *)self editingSessionFromContactViewController];
    v35 = v14;
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v35 count:1];
    v18 = [v16 updatedContactsMatchingContacts:v17];
    v19 = [v18 firstObject];
  }

  else
  {
    v16 = [(CNUIFamilyMemberDowntimeContactPickerController *)self editingStrategy];
    v17 = [v16 sensitiveDataContactFilter];
    v19 = (v17)[2](v17, v14);
    v18 = v14;
  }

  contactViewController = self->_contactViewController;
  if (contactViewController)
  {
    [(CNContactViewController *)contactViewController setContact:v19 additionalContact:0 mode:1];
    v21 = [(CNUIFamilyMemberDowntimeContactPickerController *)self warningMessageForContact:v14];
    [(CNContactViewController *)self->_contactViewController setWarningMessage:v21];
  }

  else
  {
    v22 = [CNContactViewController viewControllerForContact:v19];
    v23 = self->_contactViewController;
    self->_contactViewController = v22;

    v24 = [(CNUIFamilyMemberDowntimeContactPickerController *)self editingStrategy];
    v25 = [v24 prohibitedPropertyKeys];
    [(CNContactViewController *)self->_contactViewController setProhibitedPropertyKeys:v25];

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
    v29 = [(CNContactViewController *)self->_contactViewController contentViewController];
    [v29 setShouldIgnoreContactStoreDidChangeNotification:1];

    v30 = objc_alloc_init(CNUIEditingSessionSaveExecutor);
    v31 = [(CNContactViewController *)self->_contactViewController contentViewController];
    [v31 setSaveContactExecutor:v30];

    v21 = objc_alloc_init(CNUINullSaveExecutor);
    v32 = [(CNContactViewController *)self->_contactViewController contentViewController];
    [v32 setSaveLinkedContactsExecutor:v21];
  }

  [(CNContactViewController *)self->_contactViewController setEditing:1];
  v33 = [(CNUIFamilyMemberDowntimeContactPickerController *)self navigationController];
  v34 = [(CNUIFamilyMemberDowntimeContactPickerController *)self contactViewController];
  [v33 pushViewController:v34 animated:1];
}

- (void)tableView:(id)a3 didDeselectRowAtIndexPath:(id)a4
{
  v5 = *MEMORY[0x1E6996530];
  v6 = a4;
  v7 = [(CNUIFamilyMemberDowntimeContactPickerController *)self tableView];
  v8 = [v7 indexPathsForSelectedRows];
  LODWORD(v5) = (*(v5 + 16))(v5, v8);
  v9 = [(CNUIFamilyMemberDowntimeContactPickerController *)self navigationItem];
  v10 = [v9 rightBarButtonItem];
  [v10 setEnabled:v5 ^ 1];

  v11 = [(CNUIFamilyMemberDowntimeContactPickerController *)self dataSource];
  [v11 setContactItemSelected:0 forIndexPath:v6];
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v5 = *MEMORY[0x1E6996530];
  v6 = a4;
  v7 = [(CNUIFamilyMemberDowntimeContactPickerController *)self tableView];
  v8 = [v7 indexPathsForSelectedRows];
  LODWORD(v5) = (*(v5 + 16))(v5, v8);
  v9 = [(CNUIFamilyMemberDowntimeContactPickerController *)self navigationItem];
  v10 = [v9 rightBarButtonItem];
  [v10 setEnabled:v5 ^ 1];

  v11 = [(CNUIFamilyMemberDowntimeContactPickerController *)self dataSource];
  [v11 setContactItemSelected:1 forIndexPath:v6];
}

- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5
{
  v12 = a5;
  v7 = a4;
  v8 = [(CNUIFamilyMemberDowntimeContactPickerController *)self dataSource];
  v9 = [v8 contactItemForIndexPath:v12];
  v10 = [v9 selected];

  if (v10)
  {
    [v7 setSelected:1 animated:0];

    v11 = [(CNUIFamilyMemberDowntimeContactPickerController *)self tableView];
    [v11 selectRowAtIndexPath:v12 animated:0 scrollPosition:0];
  }

  else
  {
    [v7 setSelected:0 animated:0];

    v11 = [(CNUIFamilyMemberDowntimeContactPickerController *)self tableView];
    [v11 deselectRowAtIndexPath:v12 animated:0];
  }
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[CNUIFamilyDowntimeContactPickerCell reuseIdentifier];
  v9 = [v7 dequeueReusableCellWithIdentifier:v8 forIndexPath:v6];

  v10 = [(CNUIFamilyMemberDowntimeContactPickerController *)self dataSource];
  v11 = [v10 contactItemForIndexPath:v6];

  v12 = [(CNUIFamilyMemberDowntimeContactPickerController *)self contactCellLabelFormatter];
  v13 = [v11 contact];
  v14 = [v12 stringFromContact:v13];
  v15 = [v9 textLabel];
  [v15 setText:v14];

  v16 = [v11 label];
  v17 = [v9 detailTextLabel];
  [v17 setText:v16];

  v18 = [(CNUIFamilyMemberDowntimeContactPickerController *)self dataSource];
  if ([v18 isShowingFamilyMemberContacts])
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
    v22 = [(CNUIFamilyMemberDowntimeContactPickerController *)self dataSource];
    if ([v22 numberOfSections] == 2)
    {
      v23 = [v6 section];

      if (v23)
      {
        goto LABEL_10;
      }

      v24 = [(CNUIFamilyMemberDowntimeContactPickerController *)self dataSource];
      [v24 setContactItemSelected:1 forIndexPath:v6];

      v22 = [(CNUIFamilyMemberDowntimeContactPickerController *)self navigationItem];
      v25 = [v22 rightBarButtonItem];
      [v25 setEnabled:1];
    }
  }

LABEL_10:

  return v9;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v5 = [(CNUIFamilyMemberDowntimeContactPickerController *)self dataSource];
  v6 = [v5 numberOfRowsInSection:a4];

  return v6;
}

- (int64_t)numberOfSectionsInTableView:(id)a3
{
  v3 = [(CNUIFamilyMemberDowntimeContactPickerController *)self dataSource];
  v4 = [v3 numberOfSections];

  return v4;
}

- (void)saveSanitizedSelectedContacts:(id)a3
{
  v4 = a3;
  v5 = *MEMORY[0x1E6996530];
  if (((*(*MEMORY[0x1E6996530] + 16))(*MEMORY[0x1E6996530], v4) & 1) == 0)
  {
    v6 = [(CNUIFamilyMemberDowntimeContactPickerController *)self editingSessionFromContactViewController];
    v7 = [v6 updatedContacts];
    v8 = (*(v5 + 16))(v5, v7);

    if (v8)
    {
      v9 = [(CNUIFamilyMemberDowntimeContactPickerController *)self editingStrategy];
      v10 = [v9 sensitiveDataContactFilter];
      v11 = [v4 _cn_map:v10];
    }

    else
    {
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __81__CNUIFamilyMemberDowntimeContactPickerController_saveSanitizedSelectedContacts___block_invoke;
      v13[3] = &unk_1E74E16F8;
      v13[4] = self;
      v11 = [v4 _cn_map:v13];
    }

    v12 = [(CNUIFamilyMemberDowntimeContactPickerController *)self delegate];
    [v12 downtimePickerController:self didFinishWithContacts:v11];
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

- (void)done:(id)a3
{
  v4 = [(CNUIFamilyMemberDowntimeContactPickerController *)self dataSource];
  v5 = [v4 selectedContacts];

  [(CNUIFamilyMemberDowntimeContactPickerController *)self saveSanitizedSelectedContacts:v5];
}

- (void)cancel:(id)a3
{
  v4 = [(CNUIFamilyMemberDowntimeContactPickerController *)self delegate];
  [v4 downtimePickerController:self didFinishWithContacts:0];
}

- (void)keyboardWillChange:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKeyedSubscript:*MEMORY[0x1E69DDFA0]];
  [v5 CGRectValue];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = [(CNUIFamilyMemberDowntimeContactPickerController *)self view];
  v15 = [v14 window];
  [v15 convertRect:0 fromWindow:{v7, v9, v11, v13}];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  v24 = [(CNUIFamilyMemberDowntimeContactPickerController *)self view];
  [v24 convertRect:0 fromView:{v17, v19, v21, v23}];
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;

  v33 = [(CNUIFamilyMemberDowntimeContactPickerController *)self view];
  [v33 bounds];
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
  v39 = [(CNUIFamilyMemberDowntimeContactPickerController *)self tableView];
  [v39 contentInset];
  v41 = v40;
  v43 = v42;
  v45 = v44;

  v46 = [(CNUIFamilyMemberDowntimeContactPickerController *)self tableView];
  [v46 _systemContentInset];
  v48 = v38 - v47;

  if (v48 < 0.0)
  {
    v48 = 0.0;
  }

  v49 = [(CNUIFamilyMemberDowntimeContactPickerController *)self tableView];
  [v49 contentInset];
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

  v55 = [(CNUIFamilyMemberDowntimeContactPickerController *)self tableView];
  [v55 setContentInset:{v41, v43, v48, v45}];

  v56 = [(CNUIFamilyMemberDowntimeContactPickerController *)self tableView];
  [v56 setScrollIndicatorInsets:{v41, v43, v48, v45}];
}

- (CNUICoreContactEditingSession)editingSessionFromContactViewController
{
  objc_opt_class();
  v3 = [(CNUIFamilyMemberDowntimeContactPickerController *)self contactViewController];
  v4 = [v3 contentViewController];
  v5 = [v4 saveContactExecutor];
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  v8 = [v7 editingSession];

  return v8;
}

- (void)viewDidAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = CNUIFamilyMemberDowntimeContactPickerController;
  [(CNUIFamilyMemberDowntimeContactPickerController *)&v4 viewDidAppear:a3];
  [(CNUIFamilyMemberDowntimeContactPickerController *)self setInitialSelectionPerformed:1];
}

- (void)viewWillAppear:(BOOL)a3
{
  v7.receiver = self;
  v7.super_class = CNUIFamilyMemberDowntimeContactPickerController;
  [(CNUIFamilyMemberDowntimeContactPickerController *)&v7 viewWillAppear:a3];
  v4 = [(CNUIFamilyMemberDowntimeContactPickerController *)self tableView];
  v5 = [(CNUIFamilyMemberDowntimeContactPickerController *)self tableView];
  v6 = [v5 indexPathsForVisibleRows];
  [v4 reloadRowsAtIndexPaths:v6 withRowAnimation:5];
}

- (void)startObservingKeyboardChanges
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 addObserver:self selector:sel_keyboardWillChange_ name:*MEMORY[0x1E69DE080] object:0];

  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  [v4 addObserver:self selector:sel_keyboardWillChange_ name:*MEMORY[0x1E69DE078] object:0];
}

- (void)configureNavigationItem
{
  v3 = [(CNUIFamilyMemberDowntimeContactPickerController *)self childFamilyMember];
  v31 = [v3 firstName];

  v4 = [(CNUIFamilyMemberDowntimeContactPickerController *)self dataSource];
  v5 = [v4 isShowingFamilyMemberContacts];

  searchController = self->_searchController;
  v7 = [(CNUIFamilyMemberDowntimeContactPickerController *)self navigationItem];
  [v7 setSearchController:searchController];

  v8 = [(CNUIFamilyMemberDowntimeContactPickerController *)self navigationItem];
  [v8 setHidesSearchBarWhenScrolling:0];

  if ((*(*MEMORY[0x1E6996570] + 16))())
  {
    v9 = MEMORY[0x1E696AEC0];
    v10 = CNContactsUIBundle();
    v11 = [v10 localizedStringForKey:@"DOWNTIME_PICKER_PROMPT" value:&stru_1F0CE7398 table:@"Localized"];
    v12 = [v9 stringWithFormat:v11, v31];
    v13 = [(CNUIFamilyMemberDowntimeContactPickerController *)self navigationItem];
    [v13 setPrompt:v12];

    if (v5)
    {
      v14 = MEMORY[0x1E696AEC0];
      v15 = CNContactsUIBundle();
      v16 = [v15 localizedStringForKey:@"DOWNTIME_PICKER_TITLE_MEMBER" value:&stru_1F0CE7398 table:@"Localized"];
      v17 = [v14 stringWithFormat:v16, v31];
    }

    else
    {
      v15 = CNContactsUIBundle();
      v17 = [v15 localizedStringForKey:@"DOWNTIME_PICKER_TITLE_THIS_DEVICE" value:&stru_1F0CE7398 table:@"Localized"];
      v16 = v17;
    }

    v23 = [(CNUIFamilyMemberDowntimeContactPickerController *)self navigationItem];
    [v23 setTitle:v17];

    if ((v5 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v18 = CNContactsUIBundle();
    v19 = v18;
    if (v5)
    {
      v20 = @"DOWNTIME_PICKER_TITLE";
    }

    else
    {
      v20 = @"DOWNTIME_PICKER_TITLE_THIS_DEVICE";
    }

    v21 = [v18 localizedStringForKey:v20 value:&stru_1F0CE7398 table:@"Localized"];
    v22 = [(CNUIFamilyMemberDowntimeContactPickerController *)self navigationItem];
    [v22 setTitle:v21];

    v15 = CNContactsUIBundle();
    v16 = [v15 localizedStringForKey:@"DOWNTIME_PICKER_PROMPT_DEFAULT_NAME" value:&stru_1F0CE7398 table:@"Localized"];
    v17 = [(CNUIFamilyMemberDowntimeContactPickerController *)self navigationItem];
    [v17 setPrompt:v16];
  }

LABEL_11:
  v24 = [(CNUIFamilyMemberDowntimeContactPickerController *)self navigationItem];
  [v24 setLargeTitleDisplayMode:2];

  v25 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:self action:sel_cancel_];
  v26 = [(CNUIFamilyMemberDowntimeContactPickerController *)self navigationItem];
  [v26 setLeftBarButtonItem:v25];

  v27 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:0 target:self action:sel_done_];
  v28 = [(CNUIFamilyMemberDowntimeContactPickerController *)self navigationItem];
  [v28 setRightBarButtonItem:v27];

  v29 = [(CNUIFamilyMemberDowntimeContactPickerController *)self navigationItem];
  v30 = [v29 rightBarButtonItem];
  [v30 setEnabled:0];
}

- (void)setupSearchBar
{
  v3 = [(UISearchController *)self->_searchController searchBar];
  v4 = CNContactsUIBundle();
  v5 = [v4 localizedStringForKey:@"SEARCH_LOCAL_PLACEHOLDER" value:&stru_1F0CE7398 table:@"Localized"];
  [(UISearchBar *)v3 setPlaceholder:v5];

  [(UISearchBar *)v3 setAutoresizingMask:2];
  [(UISearchBar *)v3 setAutocorrectionType:1];
  [(UISearchBar *)v3 setDelegate:self];
  [(UISearchBar *)v3 sizeToFit];
  [(UISearchBar *)v3 setAutoresizingMask:2];
  searchBar = self->_searchBar;
  self->_searchBar = v3;
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
  v4 = [(CNUIFamilyMemberDowntimeContactPickerController *)self view];
  [v4 bounds];
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
  v10 = [(CNUIFamilyMemberDowntimeContactPickerController *)self view];
  [v10 addSubview:self->_tableView];
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
  v3 = [(CNUIFamilyMemberDowntimeContactPickerController *)self navigationController];
  v4 = [v3 presentationController];
  [v4 setDelegate:self];
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = CNUIFamilyMemberDowntimeContactPickerController;
  [(CNUIFamilyMemberDowntimeContactPickerController *)&v4 dealloc];
}

- (CNUIFamilyMemberDowntimeContactPickerController)initWithChildFamilyMember:(id)a3 allFamilyMembers:(id)a4 contactStore:(id)a5 editingStrategy:(id)a6 showingFamilyMemberContacts:(BOOL)a7
{
  v8 = a7;
  v12 = a3;
  v41[2] = *MEMORY[0x1E69E9840];
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v40.receiver = self;
  v40.super_class = CNUIFamilyMemberDowntimeContactPickerController;
  v18 = [(CNUIFamilyMemberDowntimeContactPickerController *)&v40 init];
  v19 = v18;
  if (v18)
  {
    v37 = v8;
    objc_storeStrong(&v18->_childFamilyMember, v12);
    v20 = v15;
    if (!v15)
    {
      v12 = [objc_opt_class() familyCircle];
      v7 = [v12 members];
      v38[0] = MEMORY[0x1E69E9820];
      v38[1] = 3221225472;
      v38[2] = __151__CNUIFamilyMemberDowntimeContactPickerController_initWithChildFamilyMember_allFamilyMembers_contactStore_editingStrategy_showingFamilyMemberContacts___block_invoke;
      v38[3] = &unk_1E74E16D0;
      v36 = &v39;
      v39 = v14;
      v20 = [v7 _cn_filter:v38];
    }

    objc_storeStrong(&v19->_allFamilyMembers, v20);
    if (!v15)
    {
    }

    objc_storeStrong(&v19->_editingStrategy, a6);
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
    if (v16)
    {
      v25 = v16;
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

    if (!v15)
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

- (CNUIFamilyMemberDowntimeContactPickerController)initWithChildFamilyMember:(id)a3 allFamilyMembers:(id)a4 contactStore:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = +[CNUIFamilyMemberContactsEditingStrategy whitelistedContactsStrategy];
  v12 = [(CNUIFamilyMemberDowntimeContactPickerController *)self initWithChildFamilyMember:v10 allFamilyMembers:v9 contactStore:v8 editingStrategy:v11 showingFamilyMemberContacts:0];

  return v12;
}

+ (id)familyCircle
{
  v2 = objc_alloc_init(MEMORY[0x1E699C070]);
  [v2 setPromptUserToResolveAuthenticatonFailure:0];
  v3 = objc_alloc_init(MEMORY[0x1E69967D0]);
  v4 = [v3 completionHandlerAdapter];
  [v2 startRequestWithCompletionHandler:v4];

  v5 = [v3 future];
  v6 = [v5 recover:&__block_literal_global_56];

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