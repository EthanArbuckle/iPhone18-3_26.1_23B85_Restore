@interface CNContactGroupPickerViewController
+ (id)os_log;
- (BOOL)isValidGroupAtIndexPath:(id)path;
- (CNContactGroupPickerViewController)initWithContactStore:(id)store sourceAccountExternalIdentifiers:(id)identifiers;
- (CNContactGroupPickerViewControllerDelegate)delegate;
- (NSDirectionalEdgeInsets)bottomSeparatorInsetsForIndexPath:(id)path configuration:(id)configuration;
- (id)accessoryTintColorForStateEnabled:(BOOL)enabled;
- (id)cellAccessoriesForItem:(id)item enabled:(BOOL)enabled;
- (void)_updateContentUnavailableConfigurationUsingState:(id)state;
- (void)cancel:(id)cancel;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)reloadData;
- (void)setupCollectionView;
- (void)setupDiffableDataSource;
- (void)setupNavigationButtons;
- (void)viewDidLoad;
@end

@implementation CNContactGroupPickerViewController

- (CNContactGroupPickerViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (BOOL)isValidGroupAtIndexPath:(id)path
{
  pathCopy = path;
  objc_opt_class();
  diffableDataSource = [(CNContactGroupPickerViewController *)self diffableDataSource];
  v6 = [diffableDataSource itemIdentifierForIndexPath:pathCopy];

  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  if (v8)
  {
    group = [v8 group];
    v10 = group != 0;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  pathCopy = path;
  if ([(CNContactGroupPickerViewController *)self isValidGroupAtIndexPath:?])
  {
    objc_opt_class();
    diffableDataSource = [(CNContactGroupPickerViewController *)self diffableDataSource];
    v6 = [diffableDataSource itemIdentifierForIndexPath:pathCopy];
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;

    delegate = [(CNContactGroupPickerViewController *)self delegate];
    group = [v8 group];

    [delegate groupPicker:self didSelectGroup:group];
  }
}

- (void)_updateContentUnavailableConfigurationUsingState:(id)state
{
  stateCopy = state;
  accountsAndGroupsDataSource = [(CNContactGroupPickerViewController *)self accountsAndGroupsDataSource];
  sections = [accountsAndGroupsDataSource sections];
  v6 = [sections count];

  if (v6)
  {
    v7 = 0;
  }

  else
  {
    emptyConfiguration = [MEMORY[0x1E69DC8C8] emptyConfiguration];
    v7 = [emptyConfiguration updatedConfigurationForState:stateCopy];

    v9 = CNContactsUIBundle();
    v10 = [v9 localizedStringForKey:@"NO_GROUPS" value:&stru_1F0CE7398 table:@"Localized"];
    [v7 setText:v10];
  }

  [(CNContactGroupPickerViewController *)self _setContentUnavailableConfiguration:v7];
}

- (void)reloadData
{
  v48 = *MEMORY[0x1E69E9840];
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  sectionController = [(CNContactGroupPickerViewController *)self sectionController];
  associatedSectionIdentifiers = [sectionController associatedSectionIdentifiers];

  v5 = [associatedSectionIdentifiers countByEnumeratingWithState:&v40 objects:v47 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v41;
    do
    {
      v8 = 0;
      do
      {
        if (*v41 != v7)
        {
          objc_enumerationMutation(associatedSectionIdentifiers);
        }

        v9 = *(*(&v40 + 1) + 8 * v8);
        accountsAndGroupsDataSource = [(CNContactGroupPickerViewController *)self accountsAndGroupsDataSource];
        sections = [accountsAndGroupsDataSource sections];
        v12 = [sections containsObject:v9];

        if ((v12 & 1) == 0)
        {
          sectionController2 = [(CNContactGroupPickerViewController *)self sectionController];
          v14 = [sectionController2 snapshotForSection:v9];

          [v14 deleteAllItems];
          sectionController3 = [(CNContactGroupPickerViewController *)self sectionController];
          [sectionController3 applySnapshot:v14 toSection:v9 animatingDifferences:0];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [associatedSectionIdentifiers countByEnumeratingWithState:&v40 objects:v47 count:16];
    }

    while (v6);
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  accountsAndGroupsDataSource2 = [(CNContactGroupPickerViewController *)self accountsAndGroupsDataSource];
  sections2 = [accountsAndGroupsDataSource2 sections];

  obj = sections2;
  v18 = [sections2 countByEnumeratingWithState:&v36 objects:v46 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v37;
    v21 = *MEMORY[0x1E6996568];
    do
    {
      v22 = 0;
      do
      {
        if (*v37 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v23 = *(*(&v36 + 1) + 8 * v22);
        v24 = objc_alloc_init(MEMORY[0x1E69DC5D0]);
        title = [v23 title];
        v26 = (*(v21 + 16))(v21, title);

        if (v26)
        {
          items = [v23 items];
          [v24 appendItems:items];
        }

        else
        {
          v45 = v23;
          v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v45 count:1];
          [v24 appendItems:v28];

          items2 = [v23 items];
          [v24 appendItems:items2 intoParent:v23];

          v44 = v23;
          items = [MEMORY[0x1E695DEC8] arrayWithObjects:&v44 count:1];
          [v24 expandItems:items];
        }

        sectionController4 = [(CNContactGroupPickerViewController *)self sectionController];
        [sectionController4 applySnapshot:v24 toSection:v23 animatingDifferences:0 completion:0];

        ++v22;
      }

      while (v19 != v22);
      v19 = [obj countByEnumeratingWithState:&v36 objects:v46 count:16];
    }

    while (v19);
  }

  diffableDataSource = [(CNContactGroupPickerViewController *)self diffableDataSource];
  snapshot = [diffableDataSource snapshot];

  itemIdentifiers = [snapshot itemIdentifiers];
  [snapshot reloadItemsWithIdentifiers:itemIdentifiers];

  diffableDataSource2 = [(CNContactGroupPickerViewController *)self diffableDataSource];
  [diffableDataSource2 applySnapshot:snapshot animatingDifferences:0];
}

- (id)accessoryTintColorForStateEnabled:(BOOL)enabled
{
  if (enabled)
  {
    v5 = 0;
  }

  else
  {
    v5 = +[CNUIColorRepository groupsDisabledTextColor];
  }

  return v5;
}

- (id)cellAccessoriesForItem:(id)item enabled:(BOOL)enabled
{
  enabledCopy = enabled;
  itemCopy = item;
  v7 = [(CNContactGroupPickerViewController *)self accessoryTintColorForStateEnabled:enabledCopy];
  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  contactCountString = [itemCopy contactCountString];
  if (contactCountString)
  {
    v10 = [objc_alloc(MEMORY[0x1E69DC7B8]) initWithText:contactCountString];
    [v10 setTintColor:v7];
    [v8 addObject:v10];
  }

  groupSymbol = [itemCopy groupSymbol];
  if (groupSymbol)
  {
    v12 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:groupSymbol];
    v13 = [objc_alloc(MEMORY[0x1E69DC790]) initWithCustomView:v12 placement:0];
    [v13 setTintColor:v7];
    [v8 addObject:v13];
  }

  return v8;
}

- (void)setupDiffableDataSource
{
  v20[2] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E69DD608]);
  v4 = objc_opt_class();
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __61__CNContactGroupPickerViewController_setupDiffableDataSource__block_invoke;
  v18[3] = &unk_1E74E2B10;
  v18[4] = self;
  v5 = [v3 initWithIdentifier:@"Header" cellClass:v4 handler:v18];
  v6 = objc_alloc(MEMORY[0x1E69DD608]);
  v7 = objc_opt_class();
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __61__CNContactGroupPickerViewController_setupDiffableDataSource__block_invoke_2;
  v17[3] = &unk_1E74E2490;
  v17[4] = self;
  v8 = [v6 initWithIdentifier:@"List" cellClass:v7 handler:v17];
  v9 = objc_alloc(MEMORY[0x1E69DD458]);
  v20[0] = v5;
  v20[1] = v8;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:2];
  v11 = [v9 initWithItemRenderers:v10];

  [(CNContactGroupPickerViewController *)self setSectionController:v11];
  v12 = objc_alloc(MEMORY[0x1E69DC820]);
  collectionView = [(CNContactGroupPickerViewController *)self collectionView];
  v19 = v11;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v19 count:1];
  v15 = [v12 initWithCollectionView:collectionView sectionControllers:v14 rendererIdentifierProvider:&__block_literal_global_40];

  [(CNContactGroupPickerViewController *)self setDiffableDataSource:v15];
  collectionView2 = [(CNContactGroupPickerViewController *)self collectionView];
  [collectionView2 setDelegate:self];
}

void __61__CNContactGroupPickerViewController_setupDiffableDataSource__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = MEMORY[0x1E69DCC28];
  v6 = a3;
  v7 = a2;
  v19 = [v5 prominentInsetGroupedHeaderConfiguration];
  v8 = [v7 title];

  [v19 setText:v8];
  [v19 directionalLayoutMargins];
  v10 = v9;
  v12 = v11;
  v13 = [*(a1 + 32) view];
  [v13 layoutMargins];
  v15 = v14;

  v16 = [*(a1 + 32) view];
  [v16 layoutMargins];
  v18 = v17;

  [v19 setDirectionalLayoutMargins:{v10, v15, v12, v18}];
  [v6 setContentConfiguration:v19];
}

void __61__CNContactGroupPickerViewController_setupDiffableDataSource__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = *(a1 + 32);
  v7 = a3;
  v8 = [v6 delegate];
  if (v8)
  {
    v9 = [*(a1 + 32) delegate];
    v10 = *(a1 + 32);
    v11 = [v5 identifier];
    v12 = [v9 groupPicker:v10 shouldEnableGroupWithIdentifier:v11];
  }

  else
  {
    v12 = 1;
  }

  v13 = [MEMORY[0x1E69DCC28] cellConfiguration];
  v14 = [v5 name];
  [v13 setText:v14];

  [v7 setContentConfiguration:v13];
  [v7 setIndentationWidth:0.0];
  v15 = [*(a1 + 32) cellAccessoriesForItem:v5 enabled:v12];
  [v7 setAccessories:v15];

  [v7 setUserInteractionEnabled:v12];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __61__CNContactGroupPickerViewController_setupDiffableDataSource__block_invoke_3;
  v16[3] = &unk_1E74E2CC8;
  v16[4] = *(a1 + 32);
  [v7 setConfigurationUpdateHandler:v16];
}

__CFString *__61__CNContactGroupPickerViewController_setupDiffableDataSource__block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v4 = @"Header";
  }

  else
  {
    v4 = @"List";
  }

  return v4;
}

void __61__CNContactGroupPickerViewController_setupDiffableDataSource__block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = [*(a1 + 32) accessoryTintColorForStateEnabled:{objc_msgSend(a3, "isDisabled") ^ 1}];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = [v5 accessories];
  v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v12 + 1) + 8 * v11++) setTintColor:v6];
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }
}

- (NSDirectionalEdgeInsets)bottomSeparatorInsetsForIndexPath:(id)path configuration:(id)configuration
{
  pathCopy = path;
  [configuration bottomSeparatorInsets];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  collectionView = [(CNContactGroupPickerViewController *)self collectionView];
  v16 = [collectionView numberOfItemsInSection:{objc_msgSend(pathCopy, "section")}];

  v17 = [pathCopy row];
  if (v17 == v16 - 1)
  {
    view = [(CNContactGroupPickerViewController *)self view];
    [view layoutMargins];
    v10 = v19;
  }

  v20 = v8;
  v21 = v10;
  v22 = v12;
  v23 = v14;
  result.trailing = v23;
  result.bottom = v22;
  result.leading = v21;
  result.top = v20;
  return result;
}

- (void)setupCollectionView
{
  v3 = [objc_alloc(MEMORY[0x1E69DC7E0]) initWithAppearance:1];
  secondarySystemGroupedBackgroundColor = [MEMORY[0x1E69DC888] secondarySystemGroupedBackgroundColor];
  [v3 setBackgroundColor:secondarySystemGroupedBackgroundColor];

  objc_initWeak(&location, self);
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __57__CNContactGroupPickerViewController_setupCollectionView__block_invoke;
  v16 = &unk_1E74E2468;
  objc_copyWeak(&v17, &location);
  [v3 setItemSeparatorHandler:&v13];
  v5 = [MEMORY[0x1E69DC808] layoutWithListConfiguration:{v3, v13, v14, v15, v16}];
  v6 = objc_alloc(MEMORY[0x1E69DC7F0]);
  view = [(CNContactGroupPickerViewController *)self view];
  [view bounds];
  v8 = [v6 initWithFrame:v5 collectionViewLayout:?];
  [(CNContactGroupPickerViewController *)self setCollectionView:v8];

  view2 = [(CNContactGroupPickerViewController *)self view];
  collectionView = [(CNContactGroupPickerViewController *)self collectionView];
  [view2 addSubview:collectionView];

  collectionView2 = [(CNContactGroupPickerViewController *)self collectionView];
  [collectionView2 setAutoresizingMask:18];

  collectionView3 = [(CNContactGroupPickerViewController *)self collectionView];
  [collectionView3 setDelegate:self];

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
}

id __57__CNContactGroupPickerViewController_setupCollectionView__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained bottomSeparatorInsetsForIndexPath:v6 configuration:v5];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  [v5 setBottomSeparatorInsets:{v9, v11, v13, v15}];
  [v5 setTopSeparatorVisibility:2];

  return v5;
}

- (void)cancel:(id)cancel
{
  delegate = [(CNContactGroupPickerViewController *)self delegate];

  if (delegate)
  {
    delegate2 = [(CNContactGroupPickerViewController *)self delegate];
    [delegate2 groupPickerDidCancel:self];
  }

  else
  {
    delegate2 = [(CNContactGroupPickerViewController *)self navigationController];
    [delegate2 dismissViewControllerAnimated:1 completion:0];
  }
}

- (void)setupNavigationButtons
{
  v4 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:self action:sel_cancel_];
  navigationItem = [(CNContactGroupPickerViewController *)self navigationItem];
  [navigationItem setLeftBarButtonItem:v4];
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = CNContactGroupPickerViewController;
  [(CNContactGroupPickerViewController *)&v3 viewDidLoad];
  [(CNContactGroupPickerViewController *)self setupNavigationButtons];
  [(CNContactGroupPickerViewController *)self setupCollectionView];
  [(CNContactGroupPickerViewController *)self setupDiffableDataSource];
  [(CNContactGroupPickerViewController *)self reloadData];
}

- (CNContactGroupPickerViewController)initWithContactStore:(id)store sourceAccountExternalIdentifiers:(id)identifiers
{
  storeCopy = store;
  identifiersCopy = identifiers;
  v16.receiver = self;
  v16.super_class = CNContactGroupPickerViewController;
  v8 = [(CNContactGroupPickerViewController *)&v16 initWithNibName:0 bundle:0];
  if (v8)
  {
    v9 = [[CNAccountsAndGroupsDataSource alloc] initWithStore:storeCopy];
    [(CNContactGroupPickerViewController *)v8 setAccountsAndGroupsDataSource:v9];

    accountsAndGroupsDataSource = [(CNContactGroupPickerViewController *)v8 accountsAndGroupsDataSource];
    [accountsAndGroupsDataSource setOnlyShowsGroupsInSections:1];

    accountsAndGroupsDataSource2 = [(CNContactGroupPickerViewController *)v8 accountsAndGroupsDataSource];
    [accountsAndGroupsDataSource2 setSourceAccountExternalIdentifiers:identifiersCopy];

    v12 = CNContactsUIBundle();
    v13 = [v12 localizedStringForKey:@"LISTS" value:&stru_1F0CE7398 table:@"Localized"];
    [(CNContactGroupPickerViewController *)v8 setTitle:v13];

    v14 = v8;
  }

  return v8;
}

+ (id)os_log
{
  if (os_log_cn_once_token_1_9452 != -1)
  {
    dispatch_once(&os_log_cn_once_token_1_9452, &__block_literal_global_9453);
  }

  v3 = os_log_cn_once_object_1_9454;

  return v3;
}

uint64_t __44__CNContactGroupPickerViewController_os_log__block_invoke()
{
  v0 = os_log_create("com.apple.contactsui", "CNContactGroupPickerViewController");
  v1 = os_log_cn_once_object_1_9454;
  os_log_cn_once_object_1_9454 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end