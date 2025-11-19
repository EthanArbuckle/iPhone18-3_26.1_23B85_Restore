@interface ICSETableViewController
- (BOOL)isRootController;
- (BOOL)tableView:(id)a3 shouldHighlightRowAtIndexPath:(id)a4;
- (ICSEContainerViewController)containerViewController;
- (ICSETableViewControllerDelegate)delegate;
- (NSArray)allFolders;
- (NSArray)folderSortDescriptors;
- (NSLayoutConstraint)createNewNoteToolbarBottomConstraint;
- (NSLayoutConstraint)createNewNoteToolbarHeightConstraint;
- (NSString)accountPickerBackButtonTitle;
- (NSString)folderPickerBackButtonTitle;
- (NSString)folderPickerTitle;
- (UIButton)createNewNoteButton;
- (UITableView)tableView;
- (UIToolbar)createNewNoteToolbar;
- (double)consumedBottomAreaForResizer:(id)a3;
- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4;
- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4;
- (id)itemForIndexPath:(id)a3;
- (id)itemsForSection:(unint64_t)a3;
- (id)matchingFoldersForString:(id)a3;
- (id)noteItemsForContainer:(id)a3 hideNonSystemPaperNotes:(BOOL)a4;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4;
- (id)tableView:(id)a3 willSelectRowAtIndexPath:(id)a4;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)backButtonPressed:(id)a3;
- (void)cancelButtonPressed:(id)a3;
- (void)collapseFolderListItem:(id)a3 atIndexPath:(id)a4;
- (void)contentSizeCategoryDidChange:(id)a3;
- (void)dealloc;
- (void)didDismissSearchController:(id)a3;
- (void)expandFolderListItem:(id)a3 atIndexPath:(id)a4;
- (void)performSearchForString:(id)a3;
- (void)pushFolderViewForNote:(id)a3;
- (void)rebuildTableItems;
- (void)refreshTableView;
- (void)setAccounts:(id)a3;
- (void)setRepresentedItem:(id)a3;
- (void)setTableViewHidesEmptyCells:(BOOL)a3;
- (void)setTableViewItems:(id)a3;
- (void)setupSearchResultsWithSearchString:(id)a3 notes:(id)a4;
- (void)showOrHideCreateNewNoteButton;
- (void)showOrHideEmptyTableCellsIfNecessary;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 willDisplayHeaderView:(id)a4 forSection:(int64_t)a5;
- (void)tableViewCell:(id)a3 setCollapsed:(BOOL)a4;
- (void)updateForSearchText:(id)a3;
- (void)updateSearchResultsForSearchController:(id)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewSafeAreaInsetsDidChange;
- (void)willAppearInContainer:(id)a3;
@end

@implementation ICSETableViewController

- (NSString)accountPickerBackButtonTitle
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"Location" value:&stru_1000F6F48 table:0];

  return v3;
}

- (NSString)folderPickerTitle
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"Choose Folder" value:&stru_1000F6F48 table:0];

  return v3;
}

- (NSString)folderPickerBackButtonTitle
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"Folders" value:&stru_1000F6F48 table:0];

  return v3;
}

- (void)viewDidLoad
{
  v75.receiver = self;
  v75.super_class = ICSETableViewController;
  [(ICSETableViewController *)&v75 viewDidLoad];
  v71 = [[UISearchController alloc] initWithSearchResultsController:0];
  [v71 setDelegate:self];
  [v71 setSearchResultsUpdater:self];
  v3 = [(ICSETableViewController *)self navigationItem];
  [v3 setSearchController:v71];

  v4 = [(ICSETableViewController *)self navigationItem];
  [v4 setHidesSearchBarWhenScrolling:0];

  if (+[UIDevice ic_isVision])
  {
    v5 = [(ICSETableViewController *)self navigationItem];
    [v5 setPreferredSearchBarPlacement:2];

    [v71 setObscuresBackgroundDuringPresentation:0];
  }

  v6 = [[ICScrollViewKeyboardResizer alloc] initWithDelegate:self];
  [(ICSETableViewController *)self setScrollViewResizer:v6];

  v7 = objc_alloc_init(ICSEFolderListViewState);
  [(ICSETableViewController *)self setFolderListViewState:v7];

  if (UIAccessibilityDarkerSystemColorsEnabled())
  {
    +[UIColor ICDarkenedTintColor];
  }

  else
  {
    +[UIColor ICTintColor];
  }
  v70 = ;
  v8 = [(ICSETableViewController *)self view];
  [v8 setTintColor:v70];

  v9 = [(ICSETableViewController *)self navigationController];
  v10 = [v9 navigationBar];
  [v10 setTintColor:v70];

  v11 = [(ICSETableViewController *)self navigationController];
  v12 = [v11 navigationBar];
  [v12 setForceFullHeightInLandscape:1];

  v13 = [(ICSETableViewController *)self navigationItem];
  [v13 setHidesBackButton:1];

  v14 = [(ICSETableViewController *)self navigationItem];
  [v14 setLeftItemsSupplementBackButton:0];

  v15 = [(ICSETableViewController *)self tableView];
  [ICSETableViewItem configureTableViewNibs:v15];

  v16 = +[UIColor systemGroupedBackgroundColor];
  v17 = [(ICSETableViewController *)self tableView];
  [v17 setBackgroundColor:v16];

  v18 = +[UIColor systemBackgroundColor];
  v19 = [(ICSETableViewController *)self view];
  [v19 setBackgroundColor:v18];

  [(ICSETableViewController *)self setTableViewHidesEmptyCells:1];
  v20 = [(ICSETableViewController *)self tableView];
  [v20 setDelegate:self];

  v21 = [(ICSETableViewController *)self tableView];
  [v21 setDataSource:self];

  v22 = objc_alloc_init(UIView);
  v23 = [(ICSETableViewController *)self tableView];
  [v23 setBackgroundView:v22];

  v24 = +[UIColor separatorColor];
  v25 = [(ICSETableViewController *)self tableView];
  [v25 setSeparatorColor:v24];

  v26 = [(ICSETableViewController *)self tableView];
  [v26 setRowHeight:UITableViewAutomaticDimension];

  if (ICAccessibilityAccessibilityLargerTextSizesEnabled())
  {
    v27 = 88.0;
  }

  else
  {
    v27 = sub_1000032EC();
  }

  v28 = [(ICSETableViewController *)self tableView];
  [v28 setEstimatedRowHeight:v27];

  v29 = [(ICSETableViewController *)self tableView];
  [v29 setSectionHeaderHeight:UITableViewAutomaticDimension];

  v30 = [ICSearchQueryOperation newOperationQueueWithName:@"com.apple.notes.sharing-extension-query-operation-queue"];
  [(ICSETableViewController *)self setQueryOperationQueue:v30];

  v31 = [(ICSETableViewController *)self backBarButtonItem];
  [v31 _setShowsBackButtonIndicator:1];

  v32 = +[NSNotificationCenter defaultCenter];
  [v32 addObserver:self selector:"contentSizeCategoryDidChange:" name:UIContentSizeCategoryDidChangeNotification object:0];

  v33 = +[UIDevice ic_isVision];
  if (v33)
  {
    v34 = 0;
  }

  else
  {
    v34 = +[UIColor systemGroupedBackgroundColor];
  }

  v35 = [(ICSETableViewController *)self createNewNoteToolbar];
  [v35 setBarTintColor:v34];

  if ((v33 & 1) == 0)
  {
  }

  if ((+[UIDevice ic_isVision]& 1) == 0)
  {
    v36 = [_UIScrollPocketContainerInteraction alloc];
    v37 = [(ICSETableViewController *)self tableView];
    v38 = [v36 initWithScrollView:v37 edge:4];

    v39 = [(ICSETableViewController *)self createNewNoteToolbar];
    [v39 addInteraction:v38];
  }

  objc_initWeak(&location, self);
  v72[0] = _NSConcreteStackBlock;
  v72[1] = 3221225472;
  v72[2] = sub_1000135D0;
  v72[3] = &unk_1000F2808;
  objc_copyWeak(&v73, &location);
  v69 = [UIAction actionWithHandler:v72];
  if (+[UIDevice ic_isVision])
  {
    +[UIButtonConfiguration ic_filledTintedButtonConfiguration];
  }

  else
  {
    +[UIButtonConfiguration tintedGlassButtonConfiguration];
  }
  v40 = ;
  v41 = +[NSBundle mainBundle];
  v42 = [v41 localizedStringForKey:@"Create New Note" value:&stru_1000F6F48 table:0];
  [v40 setTitle:v42];

  v43 = [UIButton buttonWithConfiguration:v40 primaryAction:v69];
  [v43 setTranslatesAutoresizingMaskIntoConstraints:0];
  v44 = [[UIBarButtonItem alloc] initWithCustomView:v43];
  [v44 setHidesSharedBackground:1];
  v45 = [(ICSETableViewController *)self createNewNoteToolbar];
  v46 = +[UIBarButtonItem flexibleSpaceItem];
  v77[0] = v46;
  v77[1] = v44;
  v47 = +[UIBarButtonItem flexibleSpaceItem];
  v77[2] = v47;
  v48 = [NSArray arrayWithObjects:v77 count:3];
  [v45 setItems:v48];

  if (+[UIDevice ic_isVision])
  {
    v49 = 85.0;
  }

  else
  {
    v49 = 50.0;
  }

  v50 = [v43 widthAnchor];
  v51 = [v50 constraintGreaterThanOrEqualToConstant:360.0];
  v76[0] = v51;
  v52 = [v43 heightAnchor];
  v53 = [v52 constraintGreaterThanOrEqualToConstant:v49];
  v76[1] = v53;
  v54 = [NSArray arrayWithObjects:v76 count:2];
  [NSLayoutConstraint activateConstraints:v54];

  [(ICSETableViewController *)self setCreateNewNoteButton:v43];
  v55 = [(ICSETableViewController *)self createNewNoteToolbarHeightConstraint];
  [v55 setConstant:v49 + 16.0];

  if (+[ICDeviceSupport deviceIsVision])
  {
    v56 = [(ICSETableViewController *)self createNewNoteToolbarBottomConstraint];
    [v56 setConstant:-8.0];
  }

  else
  {
    v56 = [(ICSETableViewController *)self createNewNoteToolbarBottomConstraint];
    [v56 setConstant:0.0];
  }

  v57 = [(ICSETableViewController *)self tableView];
  v58 = objc_opt_class();
  v59 = objc_opt_class();
  v60 = NSStringFromClass(v59);
  [v57 registerClass:v58 forHeaderFooterViewReuseIdentifier:v60];

  v61 = [(ICSETableViewController *)self tableView];
  v62 = objc_opt_class();
  v63 = objc_opt_class();
  v64 = NSStringFromClass(v63);
  [v61 registerClass:v62 forHeaderFooterViewReuseIdentifier:v64];

  v65 = [(ICSETableViewController *)self tableView];
  v66 = objc_opt_class();
  v67 = objc_opt_class();
  v68 = NSStringFromClass(v67);
  [v65 registerClass:v66 forCellReuseIdentifier:v68];

  objc_destroyWeak(&v73);
  objc_destroyWeak(&location);
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = ICSETableViewController;
  [(ICSETableViewController *)&v4 dealloc];
}

- (void)viewDidLayoutSubviews
{
  v8.receiver = self;
  v8.super_class = ICSETableViewController;
  [(ICSETableViewController *)&v8 viewDidLayoutSubviews];
  v3 = [(ICSETableViewController *)self view];
  v4 = [v3 window];
  if (v4)
  {
    v5 = v4;
    v6 = [(ICSETableViewController *)self scrollViewResizer];
    v7 = [v6 isAutoResizing];

    if (v7)
    {
      return;
    }

    v3 = [(ICSETableViewController *)self scrollViewResizer];
    [v3 startAutoResizing];
  }
}

- (void)willAppearInContainer:(id)a3
{
  if ([(ICSETableViewController *)self isNotePickerController])
  {
    v4 = [(ICSETableViewController *)self navigationController];
    v5 = [v4 navigationItem];
    [v5 setLeftBarButtonItems:0];
  }

  [(ICSETableViewController *)self refreshTableView];
  v6 = [(ICSETableViewController *)self view];
  [v6 layoutIfNeeded];
}

- (void)viewSafeAreaInsetsDidChange
{
  v4.receiver = self;
  v4.super_class = ICSETableViewController;
  [(ICSETableViewController *)&v4 viewSafeAreaInsetsDidChange];
  v3 = [(ICSETableViewController *)self scrollViewResizer];
  [v3 reapplyInsets];
}

- (BOOL)isRootController
{
  v2 = self;
  v3 = [(ICSETableViewController *)self navigationController];
  v4 = [v3 viewControllers];
  v5 = [v4 firstObject];
  LOBYTE(v2) = v5 == v2;

  return v2;
}

- (void)cancelButtonPressed:(id)a3
{
  v4 = [(ICSETableViewController *)self containerViewController];
  v3 = [v4 rootViewController];
  [v3 setIsShowingSearchResults:0 animated:1];
}

- (void)backButtonPressed:(id)a3
{
  if ([(ICSETableViewController *)self isRootController])
  {
    v6 = [(ICSETableViewController *)self containerViewController];
    v4 = [v6 rootViewController];
    [v4 setIsShowingSearchResults:0 animated:1];
  }

  else
  {
    v6 = [(ICSETableViewController *)self navigationController];
    v5 = [v6 popViewControllerAnimated:1];
  }
}

- (void)setTableViewItems:(id)a3
{
  objc_storeStrong(&self->_tableViewItems, a3);

  [(ICSETableViewController *)self showOrHideEmptyTableCellsIfNecessary];
}

- (void)setAccounts:(id)a3
{
  v14 = a3;
  objc_storeStrong(&self->_accounts, a3);
  if (!-[ICSETableViewController tableViewType](self, "tableViewType") && [v14 count] == 1)
  {
    v5 = [v14 objectAtIndexedSubscript:0];
    if (v5)
    {
      v6 = [(ICSETableViewController *)self delegate];
      v7 = [v6 currentSelectedNoteForTableViewController:self];

      v8 = [(ICSETableViewController *)self delegate];
      v9 = [v8 currentSelectedFolderForTableViewController:self];

      if ([v5 hasAnyCustomFoldersIncludingSystem:1])
      {
        [(ICSETableViewController *)self setTableViewType:1];
        v10 = [ICSETableViewItem tableViewItemFromObject:v5 selectedNote:v7 selectedFolder:v9 isSearchResult:0 isAccountPicker:0];
        representedItem = self->_representedItem;
        self->_representedItem = v10;
      }

      else
      {
        [(ICSETableViewController *)self setTableViewType:2];
        representedItem = [v5 defaultFolder];
        v12 = [ICSETableViewItem tableViewItemFromObject:representedItem selectedNote:v7 selectedFolder:v9 isSearchResult:0 isAccountPicker:0];
        v13 = self->_representedItem;
        self->_representedItem = v12;
      }
    }
  }

  [(ICSETableViewController *)self refreshTableView];
}

- (void)setRepresentedItem:(id)a3
{
  objc_storeStrong(&self->_representedItem, a3);

  [(ICSETableViewController *)self refreshTableView];
}

- (void)setTableViewHidesEmptyCells:(BOOL)a3
{
  if (self->_tableViewHidesEmptyCells != a3)
  {
    v3 = a3;
    self->_tableViewHidesEmptyCells = a3;
    v6 = a3 ? objc_alloc_init(UIView) : 0;
    v5 = [(ICSETableViewController *)self tableView];
    [v5 setTableFooterView:v6];

    if (v3)
    {
    }
  }
}

- (void)showOrHideEmptyTableCellsIfNecessary
{
  v3 = 1;
  v4 = [(ICSETableViewController *)self itemsForSection:1];
  v5 = [v4 count];
  v6 = [(ICSETableViewController *)self itemsForSection:0];
  v7 = [v6 count];

  if ([(ICSETableViewController *)self isShowingSearchResults]&& v5 == -v7)
  {
    v8 = [(ICSETableViewController *)self navigationItem];
    v9 = [v8 searchController];
    v10 = [v9 searchBar];
    v11 = [v10 text];
    v12 = [v11 ic_trimmedString];
    v3 = [v12 length] != 0;
  }

  [(ICSETableViewController *)self setTableViewHidesEmptyCells:v3];
}

- (void)rebuildTableItems
{
  v2 = self;
  v3 = [(ICSETableViewController *)self delegate];
  v4 = [v3 currentSelectedNoteForTableViewController:v2];

  v5 = [(ICSETableViewController *)v2 delegate];
  v6 = [v5 currentSelectedFolderForTableViewController:v2];

  v7 = &swift_getObjCClassFromMetadata_ptr;
  v8 = +[NSMutableArray array];
  [(ICSETableViewController *)v2 setFolderTableViewItems:v8];

  [(ICSETableViewController *)v2 setPinnedNoteItems:0];
  [(ICSETableViewController *)v2 setNonPinnedNoteItems:0];
  v67 = v2;
  if ([(ICSETableViewController *)v2 isAccountPickerController])
  {
    v9 = +[NSMutableArray array];
    v72 = 0u;
    v73 = 0u;
    v74 = 0u;
    v75 = 0u;
    v10 = [(ICSETableViewController *)v2 accounts];
    v11 = [v10 countByEnumeratingWithState:&v72 objects:v77 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v73;
      do
      {
        v14 = 0;
        do
        {
          if (*v73 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = [ICSETableViewItem tableViewItemFromObject:*(*(&v72 + 1) + 8 * v14) selectedNote:v4 selectedFolder:v6 isSearchResult:0 isAccountPicker:1];
          [v9 addObject:v15];

          v14 = v14 + 1;
        }

        while (v12 != v14);
        v12 = [v10 countByEnumeratingWithState:&v72 objects:v77 count:16];
      }

      while (v12);
    }

    v2 = v67;
  }

  else if ([(ICSETableViewController *)v2 isFolderPickerController])
  {
    v16 = [(ICSETableViewController *)v2 folderListViewState];
    [v16 removeAccounts];

    v70 = 0u;
    v71 = 0u;
    v68 = 0u;
    v69 = 0u;
    v17 = [(ICSETableViewController *)v2 accounts];
    v18 = [v17 countByEnumeratingWithState:&v68 objects:v76 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v69;
      do
      {
        v21 = 0;
        do
        {
          if (*v69 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = *(*(&v68 + 1) + 8 * v21);
          v23 = [(ICSETableViewController *)v2 folderListViewState];
          [v23 addAccount:v22];

          v21 = v21 + 1;
        }

        while (v19 != v21);
        v19 = [v17 countByEnumeratingWithState:&v68 objects:v76 count:16];
      }

      while (v19);
    }

    v9 = +[NSMutableArray array];
    v24 = [(ICSETableViewController *)v2 folderListViewState];
    v25 = [v24 countOfAccounts];

    if (v25)
    {
      v26 = 0;
      v61 = v25;
      do
      {
        v65 = [v7[269] array];
        v27 = [(ICSETableViewController *)v2 folderListViewState];
        v28 = [v27 accountItemAtIndex:v26];

        objc_opt_class();
        v29 = [v28 noteContainer];
        v30 = ICCheckedDynamicCast();

        if (v25 != 1)
        {
          v31 = [ICSETableViewHeaderItem headerItemWithAccount:v30];
          [v31 setFolderListItem:v28];
          [v31 setIsInFolderList:1];
          [v9 addObject:v31];
        }

        v64 = v28;
        v32 = objc_alloc_init(ICSETableViewItem);
        v63 = v30;
        [(ICSETableViewItem *)v32 setAccount:v30];
        [(ICSETableViewItem *)v32 setIsSystemPaperFolder:1];
        [(ICSETableViewItem *)v32 setSelectedNote:v4];
        [(ICSETableViewItem *)v32 setSelectedFolder:v6];
        v33 = +[NSBundle mainBundle];
        v34 = [v33 localizedStringForKey:@"Quick Notes" value:&stru_1000F6F48 table:0];
        [(ICSETableViewItem *)v32 setTitle:v34];

        [(ICSETableViewItem *)v32 setIsInFolderList:1];
        [v9 addObject:v32];
        v62 = v32;
        [v65 addObject:v32];
        v35 = [(ICSETableViewController *)v2 folderListViewState];
        v36 = [v35 countOfItemsInAccountAtIndex:v26];

        if (v36)
        {
          for (i = 0; i != v36; ++i)
          {
            v38 = [NSIndexPath indexPathForRow:i inSection:v26];
            v39 = [(ICSETableViewController *)v2 folderListViewState];
            v40 = [v39 itemAtIndexPath:v38];

            v41 = [ICSETableViewItem tableViewItemFromObject:v40 selectedNote:v4 selectedFolder:v6 isSearchResult:0 isAccountPicker:0];
            if ([v40 isAccount])
            {
              [v41 setIsAccountFolder:1];
              [v41 setIsAccountHeader:0];
              v42 = [v41 account];
              [v42 allItemsFolderLocalizedTitle];
              v66 = v38;
              v43 = v9;
              v44 = v36;
              v45 = v6;
              v46 = v4;
              v48 = v47 = v26;
              [v41 setTitle:v48];

              v26 = v47;
              v4 = v46;
              v6 = v45;
              v36 = v44;
              v9 = v43;
              v38 = v66;
            }

            v49 = [v41 title];

            if (v49)
            {
              [v41 setIsInFolderList:1];
              [v9 addObject:v41];
              [v65 addObject:v41];
            }

            v2 = v67;
          }
        }

        v50 = [(ICSETableViewController *)v2 folderTableViewItems];
        [v50 addObject:v65];

        ++v26;
        v25 = v61;
        v7 = &swift_getObjCClassFromMetadata_ptr;
      }

      while (v26 != v61);
    }
  }

  else
  {
    v51 = [(ICSETableViewController *)v2 representedItem];
    v52 = [v51 folder];

    v53 = [(ICSETableViewController *)v2 representedItem];
    v54 = v53;
    if (v52)
    {
      v55 = [v53 folder];
      v56 = [(ICSETableViewController *)v2 representedItem];
      v9 = -[ICSETableViewController noteItemsForContainer:hideNonSystemPaperNotes:](v2, "noteItemsForContainer:hideNonSystemPaperNotes:", v55, [v56 isSystemPaperFolder]);
    }

    else
    {
      v57 = [v53 account];

      if (v57)
      {
        v58 = [(ICSETableViewController *)v2 representedItem];
        v59 = [v58 account];
        v60 = [(ICSETableViewController *)v2 representedItem];
        v9 = -[ICSETableViewController noteItemsForContainer:hideNonSystemPaperNotes:](v2, "noteItemsForContainer:hideNonSystemPaperNotes:", v59, [v60 isSystemPaperFolder]);
      }

      else
      {
        v9 = &__NSArray0__struct;
      }
    }
  }

  [(ICSETableViewController *)v2 setTableViewItems:v9];
}

- (void)refreshTableView
{
  v3 = +[ICNoteContext sharedContext];
  [v3 refreshAll];

  if (![(ICSETableViewController *)self isShowingSearchResults])
  {
    [(ICSETableViewController *)self rebuildTableItems];
    if ([(ICSETableViewController *)self isNotePickerController]&& [(ICSETableViewController *)self isRootController])
    {
      v7 = 0;
      v8 = 1;
    }

    else
    {
      v3 = [(ICSETableViewController *)self cancelButton];
      v10 = v3;
      v7 = [NSArray arrayWithObjects:&v10 count:1];
      v8 = 0;
    }

    v9 = [(ICSETableViewController *)self navigationItem];
    [v9 setRightBarButtonItems:v7];

    if ((v8 & 1) == 0)
    {
    }

    v6 = [(ICSETableViewController *)self tableView];
    [v6 reloadData];
    goto LABEL_11;
  }

  v4 = [(ICSETableViewController *)self searchString];
  v5 = [v4 length];

  if (v5)
  {
    v6 = [(ICSETableViewController *)self searchString];
    [(ICSETableViewController *)self performSearchForString:v6];
LABEL_11:
  }

  [(ICSETableViewController *)self showOrHideCreateNewNoteButton];
}

- (void)showOrHideCreateNewNoteButton
{
  v3 = [(ICSETableViewController *)self isNotePickerController];
  v4 = [(ICSETableViewController *)self createNewNoteToolbar];
  v5 = v4;
  if (v3)
  {
    [v4 setHidden:0];

    v6 = [(ICSETableViewController *)self createNewNoteToolbar];
    [v6 bounds];
    bottom = v7;

    v9 = [(ICSETableViewController *)self tableView];
    top = 0.0;
    [v9 setContentInset:{0.0, 0.0, bottom, 0.0}];
    left = 0.0;
    right = 0.0;
  }

  else
  {
    [v4 setHidden:1];

    top = UIEdgeInsetsZero.top;
    left = UIEdgeInsetsZero.left;
    bottom = UIEdgeInsetsZero.bottom;
    right = UIEdgeInsetsZero.right;
    v9 = [(ICSETableViewController *)self tableView];
    [v9 setContentInset:{UIEdgeInsetsZero.top, left, bottom, right}];
  }

  v13 = [(ICSETableViewController *)self tableView];
  [v13 setScrollIndicatorInsets:{top, left, bottom, right}];
}

- (id)noteItemsForContainer:(id)a3 hideNonSystemPaperNotes:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(ICSETableViewController *)self delegate];
  v8 = [v7 currentSelectedNoteForTableViewController:self];

  v9 = [(ICSETableViewController *)self delegate];
  v10 = [v9 currentSelectedFolderForTableViewController:self];

  v11 = [v6 visibleNotes];
  v12 = v11;
  v13 = v8;
  if (v4)
  {
    v14 = [v11 ic_objectsPassingTest:&stru_1000F2848];

    v12 = v14;
  }

  v37 = v6;
  v15 = [v6 customNoteSortType];
  v16 = v15;
  if (v15)
  {
    v17 = v15;
  }

  else
  {
    v17 = +[ICFolderCustomNoteSortType noteSortTypeDefaultAscending];
  }

  v18 = v17;

  v36 = v18;
  v19 = [ICNoteListSortUtilities sortDescriptorsForCurrentTypeIncludingPinnedNotes:1 folderNoteSortType:v18];
  v20 = [v12 sortedArrayUsingDescriptors:v19];

  v21 = objc_alloc_init(NSMutableArray);
  v22 = objc_alloc_init(NSMutableArray);
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v23 = v20;
  v24 = [v23 countByEnumeratingWithState:&v38 objects:v42 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v39;
    do
    {
      for (i = 0; i != v25; i = i + 1)
      {
        if (*v39 != v26)
        {
          objc_enumerationMutation(v23);
        }

        v28 = *(*(&v38 + 1) + 8 * i);
        if ([v28 isPinned])
        {
          v29 = v21;
        }

        else
        {
          v29 = v22;
        }

        [v29 addObject:v28];
      }

      v25 = [v23 countByEnumeratingWithState:&v38 objects:v42 count:16];
    }

    while (v25);
  }

  v30 = [ICSETableViewItem tableViewItemsForObjects:v21 selectedNote:v13 selectedFolder:v10 isSearchResult:0 noteContainer:v37 isAccountPicker:0];
  v31 = [v30 copy];
  [(ICSETableViewController *)self setPinnedNoteItems:v31];

  v32 = [ICSETableViewItem tableViewItemsForObjects:v22 selectedNote:v13 selectedFolder:v10 isSearchResult:0 noteContainer:v37 isAccountPicker:0];
  v33 = [v32 copy];
  [(ICSETableViewController *)self setNonPinnedNoteItems:v33];

  v34 = v30;
  [v34 addObjectsFromArray:v32];

  return v34;
}

- (void)contentSizeCategoryDidChange:(id)a3
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(ICSETableViewController *)self tableView:a3];
  v5 = [v4 visibleCells];

  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          [v10 contentSizeCategoryDidChange];
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  v11 = [(ICSETableViewController *)self tableView];
  [v11 reloadData];
}

- (NSArray)folderSortDescriptors
{
  v2 = [NSSortDescriptor sortDescriptorWithKey:@"accountNameForAccountListSorting" ascending:1];
  v3 = [NSSortDescriptor sortDescriptorWithKey:@"sortOrder" ascending:1 selector:"compare:", v2];
  v7[1] = v3;
  v4 = [NSSortDescriptor sortDescriptorWithKey:@"nestedTitleForSorting" ascending:1 selector:"localizedStandardCompare:"];
  v7[2] = v4;
  v5 = [NSArray arrayWithObjects:v7 count:3];

  return v5;
}

- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4
{
  if ([(ICSETableViewController *)self isShowingSearchResults])
  {
    if (a4)
    {
      if (a4 != 1)
      {
        v15 = &stru_1000F6F48;
        goto LABEL_17;
      }

      v6 = @"Notes";
    }

    else
    {
      v6 = @"Folders";
    }

    v14 = +[NSBundle mainBundle];
    v15 = [v14 localizedStringForKey:v6 value:&stru_1000F6F48 table:0];

LABEL_17:
    v16 = [(ICSETableViewController *)self tableView];
    v17 = objc_opt_class();
    v18 = NSStringFromClass(v17);
    v12 = [v16 dequeueReusableHeaderFooterViewWithIdentifier:v18];

    [v12 setTypeLabelText:v15];
    v19 = +[NSBundle mainBundle];
    v20 = [v19 localizedStringForKey:@"%ld Found" value:&stru_1000F6F48 table:0];

    v21 = [(ICSETableViewController *)self searchTableViewItems];
    v22 = [v21 objectAtIndexedSubscript:a4];
    v23 = +[NSString localizedStringWithFormat:](NSString, "localizedStringWithFormat:", v20, [v22 count]);
    [v12 setCountLabelText:v23];

    goto LABEL_18;
  }

  if ([(ICSETableViewController *)self isAccountPickerController]&& ![(ICSETableViewController *)self isShowingSearchResults])
  {
    if (a4)
    {
      if (a4 != 1)
      {
        v36 = 0;
LABEL_33:
        v15 = [v36 localizedUppercaseString];

        if (!v15 || ![(__CFString *)v15 length])
        {
          v12 = 0;
          goto LABEL_19;
        }

        v37 = [(ICSETableViewController *)self tableView];
        v38 = objc_opt_class();
        v39 = NSStringFromClass(v38);
        v12 = [v37 dequeueReusableHeaderFooterViewWithIdentifier:v39];

        v20 = [v12 textLabel];
        [v20 setText:v15];
LABEL_18:

LABEL_19:
        goto LABEL_25;
      }

      v24 = @"Save To Location";
    }

    else
    {
      v24 = @"Save To New Note In";
    }

    v35 = +[NSBundle mainBundle];
    v36 = [v35 localizedStringForKey:v24 value:&stru_1000F6F48 table:0];

    goto LABEL_33;
  }

  if (![(ICSETableViewController *)self isFolderPickerController]|| [(ICSETableViewController *)self isShowingSearchResults])
  {
    if ([(ICSETableViewController *)self isNotePickerController])
    {
      v7 = [(ICSETableViewController *)self pinnedNoteItems];
      v8 = [v7 count];

      if (v8)
      {
        v9 = [(ICSETableViewController *)self tableView];
        v10 = objc_opt_class();
        v11 = NSStringFromClass(v10);
        v12 = [v9 dequeueReusableHeaderFooterViewWithIdentifier:v11];

        if (a4)
        {
          if (a4 != 1)
          {
            goto LABEL_25;
          }

          v13 = @"Notes";
        }

        else
        {
          v13 = @"Pinned";
        }

        v15 = +[NSBundle mainBundle];
        v34 = [(__CFString *)v15 localizedStringForKey:v13 value:&stru_1000F6F48 table:0];
        goto LABEL_39;
      }
    }

    goto LABEL_24;
  }

  v25 = [(ICSETableViewController *)self accounts];
  v26 = [v25 count];

  if (v26 == 1)
  {
LABEL_24:
    v12 = 0;
    goto LABEL_25;
  }

  v28 = [(ICSETableViewController *)self tableView];
  v29 = objc_opt_class();
  v30 = NSStringFromClass(v29);
  v12 = [v28 dequeueReusableHeaderFooterViewWithIdentifier:v30];

  v31 = [(ICSETableViewController *)self accounts];
  v32 = [v31 count];

  if (v32 > a4)
  {
    v33 = [(ICSETableViewController *)self accounts];
    v15 = [v33 objectAtIndexedSubscript:a4];

    v34 = [(__CFString *)v15 localizedName];
LABEL_39:
    v20 = v34;
    [v12 setTypeLabelText:v34];
    goto LABEL_18;
  }

LABEL_25:

  return v12;
}

- (void)tableView:(id)a3 willDisplayHeaderView:(id)a4 forSection:(int64_t)a5
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000157C0;
  v6[3] = &unk_1000F2390;
  v7 = a4;
  v5 = v7;
  [UIView performWithoutAnimation:v6];
}

- (int64_t)numberOfSectionsInTableView:(id)a3
{
  if ([(ICSETableViewController *)self isShowingSearchResults])
  {
    v4 = [(ICSETableViewController *)self searchTableViewItems];
  }

  else
  {
    if ([(ICSETableViewController *)self isAccountPickerController])
    {
      return 2;
    }

    if (![(ICSETableViewController *)self isFolderPickerController])
    {
      if (![(ICSETableViewController *)self isNotePickerController])
      {
        return 1;
      }

      v5 = [(ICSETableViewController *)self pinnedNoteItems];
      if ([v5 count])
      {
        v6 = 2;
      }

      else
      {
        v6 = 1;
      }

      goto LABEL_4;
    }

    v4 = [(ICSETableViewController *)self accounts];
  }

  v5 = v4;
  v6 = [v4 count];
LABEL_4:

  return v6;
}

- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4
{
  v4 = [(ICSETableViewController *)self tableView:a3];
  v5 = [v4 numberOfSections];

  if (v5 < 2)
  {
    return UITableViewAutomaticDimension;
  }

  v6 = [UIFont preferredFontForTextStyle:UIFontTextStyleHeadline];
  [v6 pointSize];
  v8 = v7 * 3.0;

  return v8;
}

- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4
{
  v5 = a4;
  if (!-[ICSETableViewController isShowingSearchResults](self, "isShowingSearchResults") && -[ICSETableViewController isAccountPickerController](self, "isAccountPickerController") && [v5 section] == 1)
  {
    v6 = UITableViewAutomaticDimension;
  }

  else
  {
    v7 = [(ICSETableViewController *)self itemForIndexPath:v5];
    [v7 cellHeight];
    v6 = v8;
  }

  return v6;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  if ([(ICSETableViewController *)self isShowingSearchResults])
  {
LABEL_2:
    v6 = [(ICSETableViewController *)self itemsForSection:a4];
LABEL_3:
    v7 = v6;
LABEL_4:
    v8 = [v7 count];

    return v8;
  }

  v10 = [(ICSETableViewController *)self isAccountPickerController];
  if (a4 == 1 && (v10 & 1) != 0)
  {
    return 1;
  }

  if ([(ICSETableViewController *)self isFolderPickerController])
  {
    v11 = [(ICSETableViewController *)self folderTableViewItems];
    v12 = [v11 count];

    if (v12 > a4)
    {
      v13 = [(ICSETableViewController *)self folderTableViewItems];
      v14 = [v13 objectAtIndexedSubscript:a4];
      v7 = [v14 copy];

      goto LABEL_4;
    }
  }

  if (![(ICSETableViewController *)self isNotePickerController])
  {
    goto LABEL_2;
  }

  v15 = [(ICSETableViewController *)self pinnedNoteItems];
  v16 = [v15 count];

  if (!v16 || a4 == 1)
  {
    v6 = [(ICSETableViewController *)self nonPinnedNoteItems];
    goto LABEL_3;
  }

  if (!a4)
  {
    v6 = [(ICSETableViewController *)self pinnedNoteItems];
    goto LABEL_3;
  }

  return 0;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(ICSETableViewController *)self isShowingSearchResults]|| ![(ICSETableViewController *)self isAccountPickerController])
  {
    v14 = [(ICSETableViewController *)self itemForIndexPath:v7];
    if ([v14 isSearchResult])
    {
      v19 = [v14 folder];

      if (v19 || ([v14 note], v20 = objc_claimAutoreleasedReturnValue(), v20, v20))
      {
        v21 = [v14 cellIdentifier];
        v11 = [v6 dequeueReusableCellWithIdentifier:v21 forIndexPath:v7];

        v22 = [(ICSETableViewController *)self accounts];
        [v11 setShowAccountName:{objc_msgSend(v22, "count") > 1}];

        [v11 setItem:v14];
      }

      else
      {
        v37 = os_log_create("com.apple.notes", "SharingExtension");
        if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
        {
          sub_1000B3B34(v37);
        }

        v11 = 0;
      }

LABEL_39:

      if (!v11)
      {
        goto LABEL_40;
      }

LABEL_28:
      v36 = v11;
      goto LABEL_41;
    }

    v23 = v14;
    if ([(ICSETableViewController *)self isFolderPickerController])
    {
      v24 = [v7 section];
      v25 = [(ICSETableViewController *)self folderTableViewItems];
      if (v24 >= [v25 count])
      {
      }

      else
      {
        v26 = [(ICSETableViewController *)self isShowingSearchResults];

        if ((v26 & 1) == 0)
        {
          v27 = [(ICSETableViewController *)self folderTableViewItems];
          v28 = [v27 objectAtIndexedSubscript:{objc_msgSend(v7, "section")}];

LABEL_34:
          v38 = [v28 objectAtIndexedSubscript:{objc_msgSend(v7, "row")}];

          v23 = v38;
          goto LABEL_35;
        }
      }
    }

    if ([(ICSETableViewController *)self isNotePickerController]&& ![(ICSETableViewController *)self isShowingSearchResults])
    {
      v29 = [(ICSETableViewController *)self pinnedNoteItems];
      v30 = [v29 count];

      if (!v30 || (v31 = [v7 section], v31 == 1))
      {
        v32 = [(ICSETableViewController *)self nonPinnedNoteItems];
        goto LABEL_33;
      }

      if (!v31)
      {
        v32 = [(ICSETableViewController *)self pinnedNoteItems];
LABEL_33:
        v28 = v32;
        goto LABEL_34;
      }
    }

LABEL_35:
    if (v23)
    {
      v39 = [v23 cellIdentifier];
      v11 = [v6 dequeueReusableCellWithIdentifier:v39 forIndexPath:v7];

      [v11 setTableViewItem:v23];
      [v11 setDelegate:self];
      [v11 setNeedsUpdateConstraints];
    }

    else
    {
      v11 = 0;
    }

    goto LABEL_39;
  }

  v8 = [(ICSETableViewController *)self tableView];
  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  v11 = [v8 dequeueReusableCellWithIdentifier:v10];

  if ((+[UIDevice ic_isVision]& 1) == 0)
  {
    v12 = +[UIColor ICTintColor];
    [v11 setTintColor:v12];
  }

  v13 = [v7 section];
  if (v13 == 1)
  {
    v33 = +[NSBundle mainBundle];
    v34 = [v33 localizedStringForKey:@"Choose Note or Folder" value:&stru_1000F6F48 table:0];
    v35 = [v11 textLabel];
    [v35 setText:v34];

    [v11 setAccessoryType:1];
  }

  else if (!v13)
  {
    v14 = [(ICSETableViewController *)self itemForIndexPath:v7];
    if ([v14 isChecked])
    {
      v15 = 3;
    }

    else
    {
      v15 = 0;
    }

    [v11 setAccessoryType:v15];
    v16 = [v14 account];
    v17 = [v16 localizedName];
    v18 = [v11 textLabel];
    [v18 setText:v17];

    goto LABEL_39;
  }

  if (v11)
  {
    goto LABEL_28;
  }

LABEL_40:
  v36 = [[UITableViewCell alloc] initWithStyle:0 reuseIdentifier:0];
LABEL_41:
  v40 = v36;

  return v40;
}

- (BOOL)tableView:(id)a3 shouldHighlightRowAtIndexPath:(id)a4
{
  v5 = a4;
  if ([(ICSETableViewController *)self isAccountPickerController]&& ![(ICSETableViewController *)self isShowingSearchResults])
  {
    v7 = 1;
  }

  else
  {
    v6 = [(ICSETableViewController *)self itemForIndexPath:v5];
    v7 = [v6 isSelectable];
  }

  return v7;
}

- (id)tableView:(id)a3 willSelectRowAtIndexPath:(id)a4
{
  v6 = a4;
  if ([(ICSETableViewController *)self tableView:a3 shouldHighlightRowAtIndexPath:v6])
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  return v7;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v27 = [(ICSETableViewController *)self itemForIndexPath:v6];
  v8 = [v27 note];

  if (v8)
  {
    v9 = [v27 note];
    v10 = [v27 folder];
    v11 = [v27 note];
    -[ICSETableViewController selectNote:orFolder:prefersSystemPaper:](self, "selectNote:orFolder:prefersSystemPaper:", v9, v10, [v11 isSystemPaper]);

    goto LABEL_21;
  }

  if ([v27 isAccountPicker])
  {
    v9 = [v27 account];
    v10 = [v9 defaultFolder];
    [(ICSETableViewController *)self selectNote:0 orFolder:v10 prefersSystemPaper:0];
    goto LABEL_21;
  }

  v12 = [(ICSETableViewController *)self storyboard];
  v9 = [v12 instantiateViewControllerWithIdentifier:@"tableController"];

  [v9 setRepresentedItem:v27];
  if (v27 || ![(ICSETableViewController *)self isAccountPickerController])
  {
    [v9 setTableViewType:2];
    v13 = [v27 title];
  }

  else
  {
    [v9 setTableViewType:1];
    v13 = [(ICSETableViewController *)self folderPickerTitle];
  }

  v14 = v13;
  [v9 setTitle:v13];

  v15 = [(ICSETableViewController *)self containerViewController];
  [v9 setContainerViewController:v15];

  v16 = [(ICSETableViewController *)self delegate];
  [v9 setDelegate:v16];

  v17 = [(ICSETableViewController *)self accounts];
  [v9 setAccounts:v17];

  v18 = [v27 folder];
  if (v18)
  {
  }

  else if (![(ICSETableViewController *)self isShowingSearchResults])
  {
    goto LABEL_13;
  }

  v19 = [v9 view];
  v20 = [v9 navigationItem];
  [v20 setSearchController:0];

LABEL_13:
  v10 = [(ICSETableViewController *)self title];
  if ([(ICSETableViewController *)self isAccountPickerController])
  {
    v21 = [(ICSETableViewController *)self accountPickerBackButtonTitle];
LABEL_17:
    v22 = v21;

    v10 = v22;
    goto LABEL_18;
  }

  if ([(ICSETableViewController *)self isFolderPickerController])
  {
    v21 = [(ICSETableViewController *)self folderPickerBackButtonTitle];
    goto LABEL_17;
  }

LABEL_18:
  if ([(ICSETableViewController *)self isShowingSearchResults])
  {
    v23 = +[NSBundle mainBundle];
    v24 = [v23 localizedStringForKey:@"Search" value:&stru_1000F6F48 table:0];

    v10 = v24;
  }

  v25 = [v9 backBarButtonItem];
  [v25 setTitle:v10];

  [(ICSETableViewController *)self setInhibitSearchCancelAnimation:1];
  v26 = [(ICSETableViewController *)self navigationController];
  [v26 pushViewController:v9 animated:1];

LABEL_21:
  [v7 deselectRowAtIndexPath:v6 animated:1];
}

- (void)pushFolderViewForNote:(id)a3
{
  if (!a3)
  {
    return;
  }

  v31 = [a3 folder];
  if (![(ICSETableViewController *)self isShowingSearchResults])
  {
    if ([(ICSETableViewController *)self isAccountPickerController])
    {
      v4 = [(ICSETableViewController *)self accounts];
      if ([v4 count] >= 2)
      {

LABEL_8:
        v7 = [(ICSETableViewController *)self storyboard];
        v8 = [v7 instantiateViewControllerWithIdentifier:@"tableController"];

        v9 = 1;
        [v8 setTableViewType:1];
        v10 = [(ICSETableViewController *)self folderPickerTitle];
        [v8 setTitle:v10];

        v11 = [(ICSETableViewController *)self containerViewController];
        [v8 setContainerViewController:v11];

        v12 = [(ICSETableViewController *)self delegate];
        [v8 setDelegate:v12];

        v13 = [(ICSETableViewController *)self accounts];
        [v8 setAccounts:v13];

        v14 = [(ICSETableViewController *)self accountPickerBackButtonTitle];
        v15 = [v8 backBarButtonItem];
        [v15 setTitle:v14];

        v16 = [(ICSETableViewController *)self navigationController];
        [v16 pushViewController:v8 animated:0];

LABEL_10:
        if (v31 && ([(ICSETableViewController *)self isFolderPickerController]|| [(ICSETableViewController *)self isAccountPickerController]))
        {
          v17 = [(ICSETableViewController *)self delegate];
          v18 = [v17 currentSelectedNoteForTableViewController:self];

          v19 = [(ICSETableViewController *)self delegate];
          v20 = [v19 currentSelectedFolderForTableViewController:self];

          v21 = [ICSETableViewItem tableViewItemFromObject:v31 selectedNote:v18 selectedFolder:v20 isSearchResult:0 isAccountPicker:0];
          if (v21)
          {
            v22 = [(ICSETableViewController *)self storyboard];
            v23 = [v22 instantiateViewControllerWithIdentifier:@"tableController"];

            v24 = [(ICSETableViewController *)self containerViewController];
            [v23 setContainerViewController:v24];

            [v23 setTableViewType:2];
            [v23 setRepresentedItem:v21];
            v25 = [v21 title];
            [v23 setTitle:v25];

            v26 = [(ICSETableViewController *)self delegate];
            [v23 setDelegate:v26];

            v27 = [(ICSETableViewController *)self accounts];
            [v23 setAccounts:v27];

            if ((v9 | [(ICSETableViewController *)self isFolderPickerController]) == 1)
            {
              v28 = [(ICSETableViewController *)self folderPickerBackButtonTitle];
              v29 = [v23 backBarButtonItem];
              [v29 setTitle:v28];
            }

            v30 = [(ICSETableViewController *)self navigationController];
            [v30 pushViewController:v23 animated:0];
          }
        }

        goto LABEL_18;
      }

      v5 = [v31 account];
      v6 = [v5 hasAnyCustomFoldersIncludingSystem:1];

      if (v6)
      {
        goto LABEL_8;
      }
    }

    v9 = 0;
    goto LABEL_10;
  }

LABEL_18:
}

- (id)itemForIndexPath:(id)a3
{
  v4 = a3;
  if ([(ICSETableViewController *)self isFolderPickerController]&& ![(ICSETableViewController *)self isShowingSearchResults])
  {
    v5 = [v4 section];
    v6 = [(ICSETableViewController *)self folderTableViewItems];
    if (v5 >= [v6 count])
    {
    }

    else
    {
      v7 = [v4 row];
      v8 = [(ICSETableViewController *)self folderTableViewItems];
      v9 = [v8 objectAtIndexedSubscript:{objc_msgSend(v4, "section")}];
      v10 = [v9 count];

      if (v7 < v10)
      {
        v11 = [(ICSETableViewController *)self folderTableViewItems];
        v12 = [v11 objectAtIndexedSubscript:{objc_msgSend(v4, "section")}];
        v13 = [v12 objectAtIndexedSubscript:{objc_msgSend(v4, "row")}];

        goto LABEL_13;
      }
    }
  }

  v14 = [v4 row];
  if (!-[ICSETableViewController isShowingSearchResults](self, "isShowingSearchResults") && [v4 section] == 1)
  {
    v15 = [(ICSETableViewController *)self tableView];
    v16 = [v15 numberOfRowsInSection:0];

    v14 = &v14[v16];
  }

  v11 = -[ICSETableViewController itemsForSection:](self, "itemsForSection:", [v4 section]);
  if (v14 >= [v11 count])
  {
    v13 = 0;
  }

  else
  {
    v13 = [v11 objectAtIndexedSubscript:v14];
  }

LABEL_13:

  return v13;
}

- (id)itemsForSection:(unint64_t)a3
{
  v5 = [(ICSETableViewController *)self isShowingSearchResults];
  if (a3 <= 1 && v5)
  {
    v6 = [(ICSETableViewController *)self searchTableViewItems];
    v7 = [v6 objectAtIndexedSubscript:a3];
  }

  else if (!a3 || a3 == 1 && [(ICSETableViewController *)self isNotePickerController]&& ([(ICSETableViewController *)self pinnedNoteItems], v8 = objc_claimAutoreleasedReturnValue(), v8, v8))
  {
    v7 = [(ICSETableViewController *)self tableViewItems];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)tableViewCell:(id)a3 setCollapsed:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(ICSETableViewController *)self tableView];
  v10 = [v7 indexPathForCell:v6];

  v8 = [v6 tableViewItem];

  v9 = [v8 folderListItem];

  if (v10 && v9)
  {
    if (v4)
    {
      [(ICSETableViewController *)self collapseFolderListItem:v9 atIndexPath:v10];
    }

    else
    {
      [(ICSETableViewController *)self expandFolderListItem:v9 atIndexPath:v10];
    }
  }
}

- (void)collapseFolderListItem:(id)a3 atIndexPath:(id)a4
{
  v14 = a3;
  v6 = a4;
  if (([v14 isCollapsible] & 1) == 0)
  {
    [ICAssert handleFailedAssertWithCondition:"item.isCollapsible" functionName:"[ICSETableViewController collapseFolderListItem:atIndexPath:]" simulateCrash:1 showAlert:0 format:@"Trying to collapse item that is not collapsible"];
  }

  if ([v14 isCollapsible] && (objc_msgSend(v14, "isCollapsed") & 1) == 0)
  {
    v7 = [v14 countOfVisibleDescendants];
    v8 = [(ICSETableViewController *)self tableView];
    [v8 beginUpdates];

    [v14 setCollapsed:1];
    [(ICSETableViewController *)self rebuildTableItems];
    v9 = +[NSMutableArray array];
    for (i = [v6 row] + 1; i <= &v7[objc_msgSend(v6, "row")]; ++i)
    {
      v11 = +[NSIndexPath indexPathForRow:inSection:](NSIndexPath, "indexPathForRow:inSection:", i, [v6 section]);
      [v9 addObject:v11];
    }

    v12 = [(ICSETableViewController *)self tableView];
    [v12 deleteRowsAtIndexPaths:v9 withRowAnimation:3];

    v13 = [(ICSETableViewController *)self tableView];
    [v13 endUpdates];
  }
}

- (void)expandFolderListItem:(id)a3 atIndexPath:(id)a4
{
  v14 = a3;
  v6 = a4;
  if (([v14 isCollapsible] & 1) == 0)
  {
    [ICAssert handleFailedAssertWithCondition:"item.isCollapsible" functionName:"[ICSETableViewController expandFolderListItem:atIndexPath:]" simulateCrash:1 showAlert:0 format:@"Trying to expand item that is not collapsible"];
  }

  if ([v14 isCollapsible] && objc_msgSend(v14, "isCollapsed"))
  {
    v7 = [(ICSETableViewController *)self tableView];
    [v7 beginUpdates];

    [v14 setCollapsed:0];
    [(ICSETableViewController *)self rebuildTableItems];
    v8 = [v14 countOfVisibleDescendants];
    v9 = +[NSMutableArray array];
    for (i = [v6 row] + 1; i <= &v8[objc_msgSend(v6, "row")]; ++i)
    {
      v11 = +[NSIndexPath indexPathForRow:inSection:](NSIndexPath, "indexPathForRow:inSection:", i, [v6 section]);
      [v9 addObject:v11];
    }

    v12 = [(ICSETableViewController *)self tableView];
    [v12 insertRowsAtIndexPaths:v9 withRowAnimation:3];

    v13 = [(ICSETableViewController *)self tableView];
    [v13 endUpdates];
  }
}

- (void)updateSearchResultsForSearchController:(id)a3
{
  v5 = [a3 searchBar];
  v4 = [v5 text];
  [(ICSETableViewController *)self updateForSearchText:v4];
}

- (void)didDismissSearchController:(id)a3
{
  [(ICSETableViewController *)self setIsShowingSearchResults:0];
  [(ICSETableViewController *)self setSearchTableViewItems:&off_1000F8E88];
  v4 = [(ICSETableViewController *)self tableView];
  [v4 reloadData];
}

- (void)updateForSearchText:(id)a3
{
  v5 = [a3 ic_trimmedString];
  if ([v5 length])
  {
    [(ICSETableViewController *)self performSearchForString:v5];
  }

  else
  {
    [(ICSETableViewController *)self setSearchTableViewItems:&off_1000F8EA0];
    [(ICSETableViewController *)self showOrHideEmptyTableCellsIfNecessary];
    v4 = [(ICSETableViewController *)self tableView];
    [v4 reloadData];
  }
}

- (void)performSearchForString:(id)a3
{
  v5 = a3;
  v6 = os_log_create("com.apple.notes", "SharingExtension");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v15 = objc_opt_class();
    v16 = v15;
    v17 = NSStringFromSelector(a2);
    *location = 138413314;
    *&location[4] = v15;
    v25 = 2048;
    v26 = self;
    v27 = 2112;
    v28 = v17;
    v29 = 2048;
    v30 = [v5 hash];
    v31 = 2048;
    v32 = [v5 length];
    _os_log_debug_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "[%@(%p) %@] Search query string: hash=%lu, length=%lu", location, 0x34u);
  }

  if (!v5)
  {
    [ICAssert handleFailedAssertWithCondition:"((searchString) != nil)" functionName:"[ICSETableViewController performSearchForString:]" simulateCrash:1 showAlert:0 format:@"Expected non-nil value for '%s'", "searchString"];
  }

  [(ICSETableViewController *)self setSearchString:v5];
  v7 = [(ICSETableViewController *)self queryOperationQueue];
  [v7 cancelAllOperations];

  v8 = +[ICNoteContext sharedContext];
  v9 = [v8 managedObjectContext];

  v10 = [[ICSearchQueryOperation alloc] initWithSearchSuggestionsResponder:0 searchString:v5 performNLSearch:1 performTopHitSearch:0 tokens:&__NSArray0__struct modernResultsOnly:0];
  v11 = [(ICSETableViewController *)self queryRequestIndex];
  [(ICSETableViewController *)self setQueryRequestIndex:v11 + 1];
  [v10 setRequestIndex:v11 + 1];
  objc_initWeak(location, v10);
  objc_initWeak(&from, self);
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100017514;
  v18[3] = &unk_1000F2898;
  objc_copyWeak(&v21, location);
  v18[4] = self;
  v12 = v9;
  v19 = v12;
  objc_copyWeak(&v22, &from);
  v13 = v5;
  v20 = v13;
  [v10 setCompletionBlock:v18];
  v14 = [(ICSETableViewController *)self queryOperationQueue];
  [v14 addOperation:v10];

  objc_destroyWeak(&v22);
  objc_destroyWeak(&v21);
  objc_destroyWeak(&from);
  objc_destroyWeak(location);
}

- (void)setupSearchResultsWithSearchString:(id)a3 notes:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(ICSETableViewController *)self delegate];
  v9 = [v8 currentSelectedNoteForTableViewController:self];

  v10 = [(ICSETableViewController *)self delegate];
  v11 = [v10 currentSelectedFolderForTableViewController:self];

  v12 = [(ICSETableViewController *)self matchingFoldersForString:v7];

  v13 = [ICSETableViewItem tableViewItemsForObjects:v12 selectedNote:v9 selectedFolder:v11 isSearchResult:1 noteContainer:0 isAccountPicker:0];
  v14 = [ICSETableViewItem tableViewItemsForObjects:v6 selectedNote:v9 selectedFolder:v11 isSearchResult:1 noteContainer:0 isAccountPicker:0];

  v17[0] = v13;
  v17[1] = v14;
  v15 = [NSArray arrayWithObjects:v17 count:2];
  [(ICSETableViewController *)self setSearchTableViewItems:v15];

  [(ICSETableViewController *)self showOrHideEmptyTableCellsIfNecessary];
  v16 = [(ICSETableViewController *)self tableView];
  [v16 reloadData];
}

- (NSArray)allFolders
{
  allFolders = self->_allFolders;
  if (!allFolders)
  {
    self->_allFolders = &__NSArray0__struct;

    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v4 = [(ICSETableViewController *)self accounts];
    v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v16;
      do
      {
        v8 = 0;
        do
        {
          if (*v16 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = self->_allFolders;
          v10 = [*(*(&v15 + 1) + 8 * v8) visibleFolders];
          v11 = [v10 ic_objectsPassingTest:&stru_1000F28D8];
          v12 = [(NSArray *)v9 ic_arrayByAddingObjectsFromNonNilArray:v11];
          v13 = self->_allFolders;
          self->_allFolders = v12;

          v8 = v8 + 1;
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v6);
    }

    allFolders = self->_allFolders;
  }

  return allFolders;
}

- (id)matchingFoldersForString:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(ICSETableViewController *)self allFolders];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100017D90;
    v8[3] = &unk_1000F2900;
    v9 = v4;
    v6 = [v5 ic_objectsPassingTest:v8];
  }

  else
  {
    [ICAssert handleFailedAssertWithCondition:"((string) != nil)" functionName:"[ICSETableViewController matchingFoldersForString:]" simulateCrash:1 showAlert:0 format:@"Expected non-nil value for '%s'", "string"];
    v6 = &__NSArray0__struct;
  }

  return v6;
}

- (double)consumedBottomAreaForResizer:(id)a3
{
  v3 = [(ICSETableViewController *)self view];
  [v3 safeAreaInsets];
  v5 = v4;

  return v5;
}

- (ICSETableViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (ICSEContainerViewController)containerViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_containerViewController);

  return WeakRetained;
}

- (UITableView)tableView
{
  WeakRetained = objc_loadWeakRetained(&self->_tableView);

  return WeakRetained;
}

- (UIToolbar)createNewNoteToolbar
{
  WeakRetained = objc_loadWeakRetained(&self->_createNewNoteToolbar);

  return WeakRetained;
}

- (NSLayoutConstraint)createNewNoteToolbarHeightConstraint
{
  WeakRetained = objc_loadWeakRetained(&self->_createNewNoteToolbarHeightConstraint);

  return WeakRetained;
}

- (NSLayoutConstraint)createNewNoteToolbarBottomConstraint
{
  WeakRetained = objc_loadWeakRetained(&self->_createNewNoteToolbarBottomConstraint);

  return WeakRetained;
}

- (UIButton)createNewNoteButton
{
  WeakRetained = objc_loadWeakRetained(&self->_createNewNoteButton);

  return WeakRetained;
}

@end