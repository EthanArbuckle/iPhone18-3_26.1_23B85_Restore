@interface CNContactContainerPickerViewController
+ (id)os_log;
- (BOOL)collectionView:(id)a3 shouldDeselectItemAtIndexPath:(id)a4;
- (BOOL)collectionView:(id)a3 shouldSelectItemAtIndexPath:(id)a4;
- (CNContactContainerPickerViewController)initWithContactViewCache:(id)a3 selectedContainerIdentifiers:(id)a4;
- (CNContactContainerPickerViewControllerDelegate)delegate;
- (id)allAccounts;
- (id)currentSnapshot;
- (id)dataSourceWithCellRegistration:(id)a3;
- (id)writableContainersForAccount:(id)a3;
- (void)collectionView:(id)a3 didDeselectItemAtIndexPath:(id)a4;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)discoverContainers;
- (void)reloadData;
- (void)setSelectedContainerIdentifiers:(id)a3;
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

- (void)collectionView:(id)a3 didDeselectItemAtIndexPath:(id)a4
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = [(CNContactContainerPickerViewController *)self items];
  v7 = [v5 item];

  v8 = [v6 objectAtIndexedSubscript:v7];

  v9 = [(CNContactContainerPickerViewController *)self selectedContainerIdentifiers];
  v10 = [v9 mutableCopy];

  v11 = [v8 identifier];
  [v10 removeObject:v11];

  v12 = [v10 copy];
  [(CNContactContainerPickerViewController *)self setSelectedContainerIdentifiers:v12];

  v13 = [objc_opt_class() os_log];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v14 = [v8 identifier];
    v15 = 138412290;
    v16 = v14;
    _os_log_debug_impl(&dword_199A75000, v13, OS_LOG_TYPE_DEBUG, "User de-selected container %@", &v15, 0xCu);
  }
}

- (BOOL)collectionView:(id)a3 shouldDeselectItemAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(CNContactContainerPickerViewController *)self items];
  v7 = [v5 item];

  v8 = [v6 objectAtIndexedSubscript:v7];

  v9 = [(CNContactContainerPickerViewController *)self delegate];
  v10 = [v8 identifier];
  v11 = [v9 containerPicker:self shouldAllowDeselectionOfContainerWithIdentifier:v10];

  if (v11)
  {
    v12 = [(CNContactContainerPickerViewController *)self selectedContainerIdentifiers];
    v13 = [v12 count] > 1;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = [(CNContactContainerPickerViewController *)self items];
  v7 = [v5 item];

  v8 = [v6 objectAtIndexedSubscript:v7];

  v9 = [(CNContactContainerPickerViewController *)self selectedContainerIdentifiers];
  v10 = [v8 identifier];
  v11 = [v9 arrayByAddingObject:v10];
  [(CNContactContainerPickerViewController *)self setSelectedContainerIdentifiers:v11];

  v12 = [objc_opt_class() os_log];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v13 = [v8 identifier];
    v14 = 138412290;
    v15 = v13;
    _os_log_debug_impl(&dword_199A75000, v12, OS_LOG_TYPE_DEBUG, "User selected container %@", &v14, 0xCu);
  }
}

- (BOOL)collectionView:(id)a3 shouldSelectItemAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(CNContactContainerPickerViewController *)self items];
  v7 = [v5 item];

  v8 = [v6 objectAtIndexedSubscript:v7];

  v9 = [(CNContactContainerPickerViewController *)self selectedContainerIdentifiers];
  v10 = [v8 identifier];
  LOBYTE(v7) = [v9 containsObject:v10];

  return v7 ^ 1;
}

- (void)setSelectedContainerIdentifiers:(id)a3
{
  v5 = a3;
  if (self->_selectedContainerIdentifiers != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_selectedContainerIdentifiers, a3);
    [(CNContactContainerPickerViewController *)self reloadData];
    v5 = v6;
  }
}

- (void)reloadData
{
  v3 = [(CNContactContainerPickerViewController *)self collectionView];
  [v3 reloadData];

  v4 = [(CNContactContainerPickerViewController *)self items];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __52__CNContactContainerPickerViewController_reloadData__block_invoke;
  v5[3] = &unk_1E74E7680;
  v5[4] = self;
  [v4 enumerateObjectsUsingBlock:v5];
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
  v4 = [(CNContactContainerPickerViewController *)self items];
  [v3 appendItemsWithIdentifiers:v4 intoSectionWithIdentifier:@"SECTION"];

  return v3;
}

- (id)dataSourceWithCellRegistration:(id)a3
{
  v4 = a3;
  v5 = objc_alloc(MEMORY[0x1E69DC820]);
  v6 = [(CNContactContainerPickerViewController *)self collectionView];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __73__CNContactContainerPickerViewController_dataSourceWithCellRegistration___block_invoke;
  v10[3] = &unk_1E74E7658;
  v11 = v4;
  v7 = v4;
  v8 = [v5 initWithCollectionView:v6 cellProvider:v10];

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
  v5 = [(CNContactContainerPickerViewController *)self view];
  [v5 bounds];
  v6 = [v4 initWithFrame:v3 collectionViewLayout:?];
  [(CNContactContainerPickerViewController *)self setCollectionView:v6];

  v7 = [(CNContactContainerPickerViewController *)self collectionView];
  [v7 setAllowsMultipleSelection:1];

  v8 = [(CNContactContainerPickerViewController *)self view];
  v9 = [(CNContactContainerPickerViewController *)self collectionView];
  [v8 addSubview:v9];

  v10 = [(CNContactContainerPickerViewController *)self collectionView];
  [v10 setAutoresizingMask:18];
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

  v5 = [(CNContactContainerPickerViewController *)self navigationItem];
  [v5 setRightBarButtonItem:v3];
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
  v3 = [(CNContactContainerPickerViewController *)self dataSource];
  v4 = [(CNContactContainerPickerViewController *)self collectionView];
  [v4 setDataSource:v3];

  v5 = [(CNContactContainerPickerViewController *)self collectionView];
  [v5 setDelegate:self];

  v6 = [(CNContactContainerPickerViewController *)self dataSource];
  v7 = [(CNContactContainerPickerViewController *)self currentSnapshot];
  [v6 applySnapshot:v7 animatingDifferences:0];

  [(CNContactContainerPickerViewController *)self reloadData];
}

- (id)writableContainersForAccount:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = MEMORY[0x1E695CE48];
  v6 = [v4 identifier];
  v7 = [v5 predicateForContainersInAccountWithIdentifier:v6];

  v8 = [(CNContactContainerPickerViewController *)self contactViewCache];
  v9 = [v8 contactStore];
  v18 = 0;
  v10 = [v9 containersMatchingPredicate:v7 error:&v18];
  v11 = v18;

  if (v11)
  {
    v12 = [objc_opt_class() os_log];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v15 = [v4 identifier];
      v16 = [v11 localizedDescription];
      *buf = 138412546;
      v20 = v15;
      v21 = 2112;
      v22 = v16;
      _os_log_error_impl(&dword_199A75000, v12, OS_LOG_TYPE_ERROR, "Error fetching containers in account %@: %@", buf, 0x16u);
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
  v2 = [(CNContactContainerPickerViewController *)self contactViewCache];
  v3 = [v2 contactStore];
  v9 = 0;
  v4 = [v3 accountsMatchingPredicate:0 error:&v9];
  v5 = v9;

  if (v5)
  {
    v6 = [objc_opt_class() os_log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = [v5 localizedDescription];
      *buf = 138412290;
      v11 = v8;
      _os_log_error_impl(&dword_199A75000, v6, OS_LOG_TYPE_ERROR, "Error fetching accounts: %@", buf, 0xCu);
    }
  }

  return v4;
}

- (void)discoverContainers
{
  v67 = *MEMORY[0x1E69E9840];
  v3 = [objc_opt_class() os_log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_199A75000, v3, OS_LOG_TYPE_DEBUG, "Fetching containers", buf, 2u);
  }

  v4 = [MEMORY[0x1E695DF70] array];
  v5 = [MEMORY[0x1E695DF70] array];
  v6 = [(CNContactContainerPickerViewController *)self allAccounts];
  v7 = *MEMORY[0x1E6996530];
  if ((*(*MEMORY[0x1E6996530] + 16))(*MEMORY[0x1E6996530], v6))
  {
    v8 = [objc_opt_class() os_log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_199A75000, v8, OS_LOG_TYPE_ERROR, "Accounts fetch returned 0 items", buf, 2u);
    }
  }

  else
  {
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v45 = v6;
    obj = v6;
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
            v16 = [objc_opt_class() os_log];
            v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG);
            if (v15 < 2)
            {
              if (v17)
              {
                v39 = [v13 identifier];
                *buf = 138412290;
                v62 = v39;
                _os_log_debug_impl(&dword_199A75000, v16, OS_LOG_TYPE_DEBUG, "Account %@ has only 1 container", buf, 0xCu);
              }

              v33 = [v14 firstObject];
              v34 = [v13 _cnui_displayName];
              v35 = objc_alloc_init(CNContactContainerPickerItem);
              [(CNContactContainerPickerItem *)v35 setName:v34];
              v36 = [v33 identifier];
              [(CNContactContainerPickerItem *)v35 setIdentifier:v36];

              [v5 addObject:v35];
              v52 = v33;
              [v4 addObject:v33];
              v37 = [objc_opt_class() os_log];
              if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
              {
                v40 = [v33 identifier];
                *buf = 138412546;
                v62 = v40;
                v63 = 2112;
                v64 = v34;
                _os_log_debug_impl(&dword_199A75000, v37, OS_LOG_TYPE_DEBUG, "Added container %@ wih display name %@", buf, 0x16u);

                v11 = v47;
              }
            }

            else
            {
              if (v17)
              {
                v38 = [v13 identifier];
                *buf = 138412290;
                v62 = v38;
                _os_log_debug_impl(&dword_199A75000, v16, OS_LOG_TYPE_DEBUG, "Account %@ has more than 1 container", buf, 0xCu);
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
                    v25 = [v23 name];
                    [v24 setName:v25];

                    v26 = [v23 identifier];
                    [v24 setIdentifier:v26];

                    [v5 addObject:v24];
                    [v4 addObject:v23];
                    v27 = [objc_opt_class() os_log];
                    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
                    {
                      [v23 identifier];
                      v28 = self;
                      v29 = v5;
                      v31 = v30 = v4;
                      v32 = [v23 name];
                      *buf = 138412546;
                      v62 = v31;
                      v63 = 2112;
                      v64 = v32;
                      _os_log_debug_impl(&dword_199A75000, v27, OS_LOG_TYPE_DEBUG, "Added container %@ wih display name %@", buf, 0x16u);

                      v4 = v30;
                      v5 = v29;
                      self = v28;
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

    v41 = [v4 copy];
    [(CNContactContainerPickerViewController *)self setContainers:v41];

    v42 = [v5 copy];
    [(CNContactContainerPickerViewController *)self setItems:v42];

    v8 = [objc_opt_class() os_log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v43 = [(CNContactContainerPickerViewController *)self containers];
      v44 = [v43 count];
      *buf = 134217984;
      v62 = v44;
      _os_log_debug_impl(&dword_199A75000, v8, OS_LOG_TYPE_DEBUG, "Finished fetching %lu containers", buf, 0xCu);
    }

    v6 = v45;
  }
}

- (CNContactContainerPickerViewController)initWithContactViewCache:(id)a3 selectedContainerIdentifiers:(id)a4
{
  v18[1] = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v17.receiver = self;
  v17.super_class = CNContactContainerPickerViewController;
  v11 = [(CNContactContainerPickerViewController *)&v17 initWithNibName:0 bundle:0];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_contactViewCache, a3);
    v13 = [v10 count];
    v14 = v10;
    if (!v13)
    {
      v4 = [v9 contactStore];
      v5 = [v4 defaultContainerIdentifier];
      v18[0] = v5;
      v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
    }

    objc_storeStrong(&v12->_selectedContainerIdentifiers, v14);
    if (!v13)
    {
    }

    objc_storeStrong(&v12->_contactViewCache, a3);
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