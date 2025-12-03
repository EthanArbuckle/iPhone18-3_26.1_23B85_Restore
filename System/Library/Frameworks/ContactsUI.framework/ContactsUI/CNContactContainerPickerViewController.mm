@interface CNContactContainerPickerViewController
+ (id)os_log;
- (BOOL)collectionView:(id)view shouldDeselectItemAtIndexPath:(id)path;
- (BOOL)collectionView:(id)view shouldSelectItemAtIndexPath:(id)path;
- (CNContactContainerPickerViewController)initWithContactViewCache:(id)cache selectedContainerIdentifiers:(id)identifiers;
- (CNContactContainerPickerViewControllerDelegate)delegate;
- (id)allAccounts;
- (id)currentSnapshot;
- (id)dataSourceWithCellRegistration:(id)registration;
- (id)writableContainersForAccount:(id)account;
- (void)collectionView:(id)view didDeselectItemAtIndexPath:(id)path;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)discoverContainers;
- (void)reloadData;
- (void)setSelectedContainerIdentifiers:(id)identifiers;
- (void)setupCollectionView;
- (void)setupDiffableDataSource;
- (void)setupDoneButton;
- (void)viewDidLoad;
@end

@implementation CNContactContainerPickerViewController

- (CNContactContainerPickerViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)collectionView:(id)view didDeselectItemAtIndexPath:(id)path
{
  v17 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  items = [(CNContactContainerPickerViewController *)self items];
  item = [pathCopy item];

  v8 = [items objectAtIndexedSubscript:item];

  selectedContainerIdentifiers = [(CNContactContainerPickerViewController *)self selectedContainerIdentifiers];
  v10 = [selectedContainerIdentifiers mutableCopy];

  identifier = [v8 identifier];
  [v10 removeObject:identifier];

  v12 = [v10 copy];
  [(CNContactContainerPickerViewController *)self setSelectedContainerIdentifiers:v12];

  os_log = [objc_opt_class() os_log];
  if (os_log_type_enabled(os_log, OS_LOG_TYPE_DEBUG))
  {
    identifier2 = [v8 identifier];
    v15 = 138412290;
    v16 = identifier2;
    _os_log_debug_impl(&dword_199A75000, os_log, OS_LOG_TYPE_DEBUG, "User de-selected container %@", &v15, 0xCu);
  }
}

- (BOOL)collectionView:(id)view shouldDeselectItemAtIndexPath:(id)path
{
  pathCopy = path;
  items = [(CNContactContainerPickerViewController *)self items];
  item = [pathCopy item];

  v8 = [items objectAtIndexedSubscript:item];

  delegate = [(CNContactContainerPickerViewController *)self delegate];
  identifier = [v8 identifier];
  v11 = [delegate containerPicker:self shouldAllowDeselectionOfContainerWithIdentifier:identifier];

  if (v11)
  {
    selectedContainerIdentifiers = [(CNContactContainerPickerViewController *)self selectedContainerIdentifiers];
    v13 = [selectedContainerIdentifiers count] > 1;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  v16 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  items = [(CNContactContainerPickerViewController *)self items];
  item = [pathCopy item];

  v8 = [items objectAtIndexedSubscript:item];

  selectedContainerIdentifiers = [(CNContactContainerPickerViewController *)self selectedContainerIdentifiers];
  identifier = [v8 identifier];
  v11 = [selectedContainerIdentifiers arrayByAddingObject:identifier];
  [(CNContactContainerPickerViewController *)self setSelectedContainerIdentifiers:v11];

  os_log = [objc_opt_class() os_log];
  if (os_log_type_enabled(os_log, OS_LOG_TYPE_DEBUG))
  {
    identifier2 = [v8 identifier];
    v14 = 138412290;
    v15 = identifier2;
    _os_log_debug_impl(&dword_199A75000, os_log, OS_LOG_TYPE_DEBUG, "User selected container %@", &v14, 0xCu);
  }
}

- (BOOL)collectionView:(id)view shouldSelectItemAtIndexPath:(id)path
{
  pathCopy = path;
  items = [(CNContactContainerPickerViewController *)self items];
  item = [pathCopy item];

  v8 = [items objectAtIndexedSubscript:item];

  selectedContainerIdentifiers = [(CNContactContainerPickerViewController *)self selectedContainerIdentifiers];
  identifier = [v8 identifier];
  LOBYTE(item) = [selectedContainerIdentifiers containsObject:identifier];

  return item ^ 1;
}

- (void)setSelectedContainerIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  if (self->_selectedContainerIdentifiers != identifiersCopy)
  {
    v6 = identifiersCopy;
    objc_storeStrong(&self->_selectedContainerIdentifiers, identifiers);
    [(CNContactContainerPickerViewController *)self reloadData];
    identifiersCopy = v6;
  }
}

- (void)reloadData
{
  collectionView = [(CNContactContainerPickerViewController *)self collectionView];
  [collectionView reloadData];

  items = [(CNContactContainerPickerViewController *)self items];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __52__CNContactContainerPickerViewController_reloadData__block_invoke;
  v5[3] = &unk_1E74E7680;
  v5[4] = self;
  [items enumerateObjectsUsingBlock:v5];
}

void __52__CNContactContainerPickerViewController_reloadData__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [v5 selectedContainerIdentifiers];
  v8 = [v6 identifier];

  LODWORD(v6) = [v7 containsObject:v8];
  if (v6)
  {
    v10 = [*(a1 + 32) collectionView];
    v9 = [MEMORY[0x1E696AC88] indexPathForItem:a3 inSection:0];
    [v10 selectItemAtIndexPath:v9 animated:0 scrollPosition:0];
  }
}

- (id)currentSnapshot
{
  v3 = objc_alloc_init(MEMORY[0x1E69955A0]);
  [v3 appendSectionsWithIdentifiers:&unk_1F0D4BB20];
  items = [(CNContactContainerPickerViewController *)self items];
  [v3 appendItemsWithIdentifiers:items intoSectionWithIdentifier:@"SECTION"];

  return v3;
}

- (id)dataSourceWithCellRegistration:(id)registration
{
  registrationCopy = registration;
  v5 = objc_alloc(MEMORY[0x1E69DC820]);
  collectionView = [(CNContactContainerPickerViewController *)self collectionView];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __73__CNContactContainerPickerViewController_dataSourceWithCellRegistration___block_invoke;
  v10[3] = &unk_1E74E7658;
  v11 = registrationCopy;
  v7 = registrationCopy;
  v8 = [v5 initWithCollectionView:collectionView cellProvider:v10];

  return v8;
}

- (void)setupDiffableDataSource
{
  v3 = MEMORY[0x1E69DC800];
  v4 = objc_opt_class();
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __65__CNContactContainerPickerViewController_setupDiffableDataSource__block_invoke;
  v7[3] = &unk_1E74E7630;
  v7[4] = self;
  v5 = [v3 registrationWithCellClass:v4 configurationHandler:v7];
  v6 = [(CNContactContainerPickerViewController *)self dataSourceWithCellRegistration:v5];
  [(CNContactContainerPickerViewController *)self setDataSource:v6];
}

void __65__CNContactContainerPickerViewController_setupDiffableDataSource__block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  objc_opt_class();
  v20 = v6;
  if (objc_opt_isKindOfClass())
  {
    v8 = v20;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  v10 = MEMORY[0x1E69DCC28];
  v11 = v7;
  v12 = [v10 cellConfiguration];
  v13 = [*(a1 + 32) delegate];
  v14 = *(a1 + 32);
  v15 = [v11 identifier];
  v16 = [v13 containerPicker:v14 shouldAllowDeselectionOfContainerWithIdentifier:v15];

  v17 = [v11 name];

  [v12 setText:v17];
  [v9 setAllowsDeselection:v16];
  [v9 setContentConfiguration:v12];
  v18 = [MEMORY[0x1E69DC6E8] listGroupedCellConfiguration];
  v19 = [MEMORY[0x1E69DC888] systemBackgroundColor];
  [v18 setBackgroundColor:v19];

  [v9 setBackgroundConfiguration:v18];
}

- (void)setupCollectionView
{
  v11 = [objc_alloc(MEMORY[0x1E69DC7E0]) initWithAppearance:2];
  [v11 setShowsSeparators:1];
  v3 = [MEMORY[0x1E69DC808] layoutWithListConfiguration:v11];
  v4 = objc_alloc(MEMORY[0x1E69DC7F0]);
  view = [(CNContactContainerPickerViewController *)self view];
  [view bounds];
  v6 = [v4 initWithFrame:v3 collectionViewLayout:?];
  [(CNContactContainerPickerViewController *)self setCollectionView:v6];

  collectionView = [(CNContactContainerPickerViewController *)self collectionView];
  [collectionView setAllowsMultipleSelection:1];

  view2 = [(CNContactContainerPickerViewController *)self view];
  collectionView2 = [(CNContactContainerPickerViewController *)self collectionView];
  [view2 addSubview:collectionView2];

  collectionView3 = [(CNContactContainerPickerViewController *)self collectionView];
  [collectionView3 setAutoresizingMask:18];
}

- (void)setupDoneButton
{
  v3 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:0 menu:0];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __57__CNContactContainerPickerViewController_setupDoneButton__block_invoke;
  v6[3] = &unk_1E74E7608;
  v6[4] = self;
  v4 = [MEMORY[0x1E69DC628] actionWithHandler:v6];
  [v3 setPrimaryAction:v4];

  navigationItem = [(CNContactContainerPickerViewController *)self navigationItem];
  [navigationItem setRightBarButtonItem:v3];
}

uint64_t __57__CNContactContainerPickerViewController_setupDoneButton__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [*(a1 + 32) containers];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __57__CNContactContainerPickerViewController_setupDoneButton__block_invoke_2;
    v8[3] = &unk_1E74E75E0;
    v8[4] = *(a1 + 32);
    v5 = [v4 _cn_filter:v8];

    v6 = [*(a1 + 32) delegate];
    [v6 containerPicker:*(a1 + 32) didFinishWithPickedContainers:v5];
  }

  return [*(a1 + 32) dismissViewControllerAnimated:1 completion:0];
}

uint64_t __57__CNContactContainerPickerViewController_setupDoneButton__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 selectedContainerIdentifiers];
  v5 = [v3 identifier];

  v6 = [v4 containsObject:v5];
  return v6;
}

- (void)viewDidLoad
{
  v8.receiver = self;
  v8.super_class = CNContactContainerPickerViewController;
  [(CNContactContainerPickerViewController *)&v8 viewDidLoad];
  [(CNContactContainerPickerViewController *)self setupDoneButton];
  [(CNContactContainerPickerViewController *)self setupCollectionView];
  [(CNContactContainerPickerViewController *)self setupDiffableDataSource];
  dataSource = [(CNContactContainerPickerViewController *)self dataSource];
  collectionView = [(CNContactContainerPickerViewController *)self collectionView];
  [collectionView setDataSource:dataSource];

  collectionView2 = [(CNContactContainerPickerViewController *)self collectionView];
  [collectionView2 setDelegate:self];

  dataSource2 = [(CNContactContainerPickerViewController *)self dataSource];
  currentSnapshot = [(CNContactContainerPickerViewController *)self currentSnapshot];
  [dataSource2 applySnapshot:currentSnapshot animatingDifferences:0];

  [(CNContactContainerPickerViewController *)self reloadData];
}

- (id)writableContainersForAccount:(id)account
{
  v23 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  v5 = MEMORY[0x1E695CE48];
  identifier = [accountCopy identifier];
  v7 = [v5 predicateForContainersInAccountWithIdentifier:identifier];

  contactViewCache = [(CNContactContainerPickerViewController *)self contactViewCache];
  contactStore = [contactViewCache contactStore];
  v18 = 0;
  v10 = [contactStore containersMatchingPredicate:v7 error:&v18];
  v11 = v18;

  if (v11)
  {
    os_log = [objc_opt_class() os_log];
    if (os_log_type_enabled(os_log, OS_LOG_TYPE_ERROR))
    {
      identifier2 = [accountCopy identifier];
      localizedDescription = [v11 localizedDescription];
      *buf = 138412546;
      v20 = identifier2;
      v21 = 2112;
      v22 = localizedDescription;
      _os_log_error_impl(&dword_199A75000, os_log, OS_LOG_TYPE_ERROR, "Error fetching containers in account %@: %@", buf, 0x16u);
    }

    v13 = 0;
  }

  else
  {
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __71__CNContactContainerPickerViewController_writableContainersForAccount___block_invoke;
    v17[3] = &unk_1E74E75E0;
    v17[4] = self;
    v13 = [v10 _cn_filter:v17];
  }

  return v13;
}

uint64_t __71__CNContactContainerPickerViewController_writableContainersForAccount___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isEnabled])
  {
    v4 = [*(a1 + 32) contactViewCache];
    v5 = [v4 policyForContainer:v3];

    v6 = [v5 shouldAddContact:0];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)allAccounts
{
  v12 = *MEMORY[0x1E69E9840];
  contactViewCache = [(CNContactContainerPickerViewController *)self contactViewCache];
  contactStore = [contactViewCache contactStore];
  v9 = 0;
  v4 = [contactStore accountsMatchingPredicate:0 error:&v9];
  v5 = v9;

  if (v5)
  {
    os_log = [objc_opt_class() os_log];
    if (os_log_type_enabled(os_log, OS_LOG_TYPE_ERROR))
    {
      localizedDescription = [v5 localizedDescription];
      *buf = 138412290;
      v11 = localizedDescription;
      _os_log_error_impl(&dword_199A75000, os_log, OS_LOG_TYPE_ERROR, "Error fetching accounts: %@", buf, 0xCu);
    }
  }

  return v4;
}

- (void)discoverContainers
{
  v67 = *MEMORY[0x1E69E9840];
  os_log = [objc_opt_class() os_log];
  if (os_log_type_enabled(os_log, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_199A75000, os_log, OS_LOG_TYPE_DEBUG, "Fetching containers", buf, 2u);
  }

  array = [MEMORY[0x1E695DF70] array];
  array2 = [MEMORY[0x1E695DF70] array];
  allAccounts = [(CNContactContainerPickerViewController *)self allAccounts];
  v7 = *MEMORY[0x1E6996530];
  if ((*(*MEMORY[0x1E6996530] + 16))(*MEMORY[0x1E6996530], allAccounts))
  {
    os_log2 = [objc_opt_class() os_log];
    if (os_log_type_enabled(os_log2, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_199A75000, os_log2, OS_LOG_TYPE_ERROR, "Accounts fetch returned 0 items", buf, 2u);
    }
  }

  else
  {
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v45 = allAccounts;
    obj = allAccounts;
    v9 = [obj countByEnumeratingWithState:&v57 objects:v66 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v58;
      v46 = v7;
      v47 = *v58;
      do
      {
        v12 = 0;
        v48 = v10;
        do
        {
          if (*v58 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v57 + 1) + 8 * v12);
          v14 = [(CNContactContainerPickerViewController *)self writableContainersForAccount:v13];
          if (((*(v7 + 16))(v7, v14) & 1) == 0)
          {
            v50 = v12;
            v51 = v14;
            v15 = [v14 count];
            os_log3 = [objc_opt_class() os_log];
            v17 = os_log_type_enabled(os_log3, OS_LOG_TYPE_DEBUG);
            if (v15 < 2)
            {
              if (v17)
              {
                identifier = [v13 identifier];
                *buf = 138412290;
                v62 = identifier;
                _os_log_debug_impl(&dword_199A75000, os_log3, OS_LOG_TYPE_DEBUG, "Account %@ has only 1 container", buf, 0xCu);
              }

              firstObject = [v14 firstObject];
              _cnui_displayName = [v13 _cnui_displayName];
              v35 = objc_alloc_init(CNContactContainerPickerItem);
              [(CNContactContainerPickerItem *)v35 setName:_cnui_displayName];
              identifier2 = [firstObject identifier];
              [(CNContactContainerPickerItem *)v35 setIdentifier:identifier2];

              [array2 addObject:v35];
              v52 = firstObject;
              [array addObject:firstObject];
              os_log4 = [objc_opt_class() os_log];
              if (os_log_type_enabled(os_log4, OS_LOG_TYPE_DEBUG))
              {
                identifier3 = [firstObject identifier];
                *buf = 138412546;
                v62 = identifier3;
                v63 = 2112;
                v64 = _cnui_displayName;
                _os_log_debug_impl(&dword_199A75000, os_log4, OS_LOG_TYPE_DEBUG, "Added container %@ wih display name %@", buf, 0x16u);

                v11 = v47;
              }
            }

            else
            {
              if (v17)
              {
                identifier4 = [v13 identifier];
                *buf = 138412290;
                v62 = identifier4;
                _os_log_debug_impl(&dword_199A75000, os_log3, OS_LOG_TYPE_DEBUG, "Account %@ has more than 1 container", buf, 0xCu);
              }

              v55 = 0u;
              v56 = 0u;
              v53 = 0u;
              v54 = 0u;
              v52 = v14;
              v18 = [v52 countByEnumeratingWithState:&v53 objects:v65 count:16];
              if (v18)
              {
                v19 = v18;
                v20 = *v54;
                p_vtable = &OBJC_METACLASS___CNUICoreApplicationAuthorizationItem.vtable;
                do
                {
                  for (i = 0; i != v19; ++i)
                  {
                    if (*v54 != v20)
                    {
                      objc_enumerationMutation(v52);
                    }

                    v23 = *(*(&v53 + 1) + 8 * i);
                    v24 = objc_alloc_init((p_vtable + 362));
                    name = [v23 name];
                    [v24 setName:name];

                    identifier5 = [v23 identifier];
                    [v24 setIdentifier:identifier5];

                    [array2 addObject:v24];
                    [array addObject:v23];
                    os_log5 = [objc_opt_class() os_log];
                    if (os_log_type_enabled(os_log5, OS_LOG_TYPE_DEBUG))
                    {
                      [v23 identifier];
                      selfCopy = self;
                      v29 = array2;
                      v31 = v30 = array;
                      name2 = [v23 name];
                      *buf = 138412546;
                      v62 = v31;
                      v63 = 2112;
                      v64 = name2;
                      _os_log_debug_impl(&dword_199A75000, os_log5, OS_LOG_TYPE_DEBUG, "Added container %@ wih display name %@", buf, 0x16u);

                      array = v30;
                      array2 = v29;
                      self = selfCopy;
                      p_vtable = (&OBJC_METACLASS___CNUICoreApplicationAuthorizationItem + 24);
                    }
                  }

                  v19 = [v52 countByEnumeratingWithState:&v53 objects:v65 count:16];
                }

                while (v19);
                v7 = v46;
                v11 = v47;
              }
            }

            v10 = v48;
            v12 = v50;
            v14 = v51;
          }

          ++v12;
        }

        while (v12 != v10);
        v10 = [obj countByEnumeratingWithState:&v57 objects:v66 count:16];
      }

      while (v10);
    }

    v41 = [array copy];
    [(CNContactContainerPickerViewController *)self setContainers:v41];

    v42 = [array2 copy];
    [(CNContactContainerPickerViewController *)self setItems:v42];

    os_log2 = [objc_opt_class() os_log];
    if (os_log_type_enabled(os_log2, OS_LOG_TYPE_DEBUG))
    {
      containers = [(CNContactContainerPickerViewController *)self containers];
      v44 = [containers count];
      *buf = 134217984;
      v62 = v44;
      _os_log_debug_impl(&dword_199A75000, os_log2, OS_LOG_TYPE_DEBUG, "Finished fetching %lu containers", buf, 0xCu);
    }

    allAccounts = v45;
  }
}

- (CNContactContainerPickerViewController)initWithContactViewCache:(id)cache selectedContainerIdentifiers:(id)identifiers
{
  v18[1] = *MEMORY[0x1E69E9840];
  cacheCopy = cache;
  identifiersCopy = identifiers;
  v17.receiver = self;
  v17.super_class = CNContactContainerPickerViewController;
  v11 = [(CNContactContainerPickerViewController *)&v17 initWithNibName:0 bundle:0];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_contactViewCache, cache);
    v13 = [identifiersCopy count];
    v14 = identifiersCopy;
    if (!v13)
    {
      contactStore = [cacheCopy contactStore];
      defaultContainerIdentifier = [contactStore defaultContainerIdentifier];
      v18[0] = defaultContainerIdentifier;
      v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
    }

    objc_storeStrong(&v12->_selectedContainerIdentifiers, v14);
    if (!v13)
    {
    }

    objc_storeStrong(&v12->_contactViewCache, cache);
    [(CNContactContainerPickerViewController *)v12 discoverContainers];
    v15 = v12;
  }

  return v12;
}

+ (id)os_log
{
  if (os_log_cn_once_token_6_66168 != -1)
  {
    dispatch_once(&os_log_cn_once_token_6_66168, &__block_literal_global_66169);
  }

  v3 = os_log_cn_once_object_6_66170;

  return v3;
}

uint64_t __48__CNContactContainerPickerViewController_os_log__block_invoke()
{
  v0 = os_log_create("com.apple.contactsui", "container-picker");
  v1 = os_log_cn_once_object_6_66170;
  os_log_cn_once_object_6_66170 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end