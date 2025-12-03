@interface ICSETableViewController
- (BOOL)isRootController;
- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path;
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
- (double)consumedBottomAreaForResizer:(id)resizer;
- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section;
- (double)tableView:(id)view heightForRowAtIndexPath:(id)path;
- (id)itemForIndexPath:(id)path;
- (id)itemsForSection:(unint64_t)section;
- (id)matchingFoldersForString:(id)string;
- (id)noteItemsForContainer:(id)container hideNonSystemPaperNotes:(BOOL)notes;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section;
- (id)tableView:(id)view willSelectRowAtIndexPath:(id)path;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)backButtonPressed:(id)pressed;
- (void)cancelButtonPressed:(id)pressed;
- (void)collapseFolderListItem:(id)item atIndexPath:(id)path;
- (void)contentSizeCategoryDidChange:(id)change;
- (void)dealloc;
- (void)didDismissSearchController:(id)controller;
- (void)expandFolderListItem:(id)item atIndexPath:(id)path;
- (void)performSearchForString:(id)string;
- (void)pushFolderViewForNote:(id)note;
- (void)rebuildTableItems;
- (void)refreshTableView;
- (void)setAccounts:(id)accounts;
- (void)setRepresentedItem:(id)item;
- (void)setTableViewHidesEmptyCells:(BOOL)cells;
- (void)setTableViewItems:(id)items;
- (void)setupSearchResultsWithSearchString:(id)string notes:(id)notes;
- (void)showOrHideCreateNewNoteButton;
- (void)showOrHideEmptyTableCellsIfNecessary;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view willDisplayHeaderView:(id)headerView forSection:(int64_t)section;
- (void)tableViewCell:(id)cell setCollapsed:(BOOL)collapsed;
- (void)updateForSearchText:(id)text;
- (void)updateSearchResultsForSearchController:(id)controller;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewSafeAreaInsetsDidChange;
- (void)willAppearInContainer:(id)container;
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
  navigationItem = [(ICSETableViewController *)self navigationItem];
  [navigationItem setSearchController:v71];

  navigationItem2 = [(ICSETableViewController *)self navigationItem];
  [navigationItem2 setHidesSearchBarWhenScrolling:0];

  if (+[UIDevice ic_isVision])
  {
    navigationItem3 = [(ICSETableViewController *)self navigationItem];
    [navigationItem3 setPreferredSearchBarPlacement:2];

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
  view = [(ICSETableViewController *)self view];
  [view setTintColor:v70];

  navigationController = [(ICSETableViewController *)self navigationController];
  navigationBar = [navigationController navigationBar];
  [navigationBar setTintColor:v70];

  navigationController2 = [(ICSETableViewController *)self navigationController];
  navigationBar2 = [navigationController2 navigationBar];
  [navigationBar2 setForceFullHeightInLandscape:1];

  navigationItem4 = [(ICSETableViewController *)self navigationItem];
  [navigationItem4 setHidesBackButton:1];

  navigationItem5 = [(ICSETableViewController *)self navigationItem];
  [navigationItem5 setLeftItemsSupplementBackButton:0];

  tableView = [(ICSETableViewController *)self tableView];
  [ICSETableViewItem configureTableViewNibs:tableView];

  v16 = +[UIColor systemGroupedBackgroundColor];
  tableView2 = [(ICSETableViewController *)self tableView];
  [tableView2 setBackgroundColor:v16];

  v18 = +[UIColor systemBackgroundColor];
  view2 = [(ICSETableViewController *)self view];
  [view2 setBackgroundColor:v18];

  [(ICSETableViewController *)self setTableViewHidesEmptyCells:1];
  tableView3 = [(ICSETableViewController *)self tableView];
  [tableView3 setDelegate:self];

  tableView4 = [(ICSETableViewController *)self tableView];
  [tableView4 setDataSource:self];

  v22 = objc_alloc_init(UIView);
  tableView5 = [(ICSETableViewController *)self tableView];
  [tableView5 setBackgroundView:v22];

  v24 = +[UIColor separatorColor];
  tableView6 = [(ICSETableViewController *)self tableView];
  [tableView6 setSeparatorColor:v24];

  tableView7 = [(ICSETableViewController *)self tableView];
  [tableView7 setRowHeight:UITableViewAutomaticDimension];

  if (ICAccessibilityAccessibilityLargerTextSizesEnabled())
  {
    v27 = 88.0;
  }

  else
  {
    v27 = sub_1000032EC();
  }

  tableView8 = [(ICSETableViewController *)self tableView];
  [tableView8 setEstimatedRowHeight:v27];

  tableView9 = [(ICSETableViewController *)self tableView];
  [tableView9 setSectionHeaderHeight:UITableViewAutomaticDimension];

  v30 = [ICSearchQueryOperation newOperationQueueWithName:@"com.apple.notes.sharing-extension-query-operation-queue"];
  [(ICSETableViewController *)self setQueryOperationQueue:v30];

  backBarButtonItem = [(ICSETableViewController *)self backBarButtonItem];
  [backBarButtonItem _setShowsBackButtonIndicator:1];

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

  createNewNoteToolbar = [(ICSETableViewController *)self createNewNoteToolbar];
  [createNewNoteToolbar setBarTintColor:v34];

  if ((v33 & 1) == 0)
  {
  }

  if ((+[UIDevice ic_isVision]& 1) == 0)
  {
    v36 = [_UIScrollPocketContainerInteraction alloc];
    tableView10 = [(ICSETableViewController *)self tableView];
    v38 = [v36 initWithScrollView:tableView10 edge:4];

    createNewNoteToolbar2 = [(ICSETableViewController *)self createNewNoteToolbar];
    [createNewNoteToolbar2 addInteraction:v38];
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
  createNewNoteToolbar3 = [(ICSETableViewController *)self createNewNoteToolbar];
  v46 = +[UIBarButtonItem flexibleSpaceItem];
  v77[0] = v46;
  v77[1] = v44;
  v47 = +[UIBarButtonItem flexibleSpaceItem];
  v77[2] = v47;
  v48 = [NSArray arrayWithObjects:v77 count:3];
  [createNewNoteToolbar3 setItems:v48];

  if (+[UIDevice ic_isVision])
  {
    v49 = 85.0;
  }

  else
  {
    v49 = 50.0;
  }

  widthAnchor = [v43 widthAnchor];
  v51 = [widthAnchor constraintGreaterThanOrEqualToConstant:360.0];
  v76[0] = v51;
  heightAnchor = [v43 heightAnchor];
  v53 = [heightAnchor constraintGreaterThanOrEqualToConstant:v49];
  v76[1] = v53;
  v54 = [NSArray arrayWithObjects:v76 count:2];
  [NSLayoutConstraint activateConstraints:v54];

  [(ICSETableViewController *)self setCreateNewNoteButton:v43];
  createNewNoteToolbarHeightConstraint = [(ICSETableViewController *)self createNewNoteToolbarHeightConstraint];
  [createNewNoteToolbarHeightConstraint setConstant:v49 + 16.0];

  if (+[ICDeviceSupport deviceIsVision])
  {
    createNewNoteToolbarBottomConstraint = [(ICSETableViewController *)self createNewNoteToolbarBottomConstraint];
    [createNewNoteToolbarBottomConstraint setConstant:-8.0];
  }

  else
  {
    createNewNoteToolbarBottomConstraint = [(ICSETableViewController *)self createNewNoteToolbarBottomConstraint];
    [createNewNoteToolbarBottomConstraint setConstant:0.0];
  }

  tableView11 = [(ICSETableViewController *)self tableView];
  v58 = objc_opt_class();
  v59 = objc_opt_class();
  v60 = NSStringFromClass(v59);
  [tableView11 registerClass:v58 forHeaderFooterViewReuseIdentifier:v60];

  tableView12 = [(ICSETableViewController *)self tableView];
  v62 = objc_opt_class();
  v63 = objc_opt_class();
  v64 = NSStringFromClass(v63);
  [tableView12 registerClass:v62 forHeaderFooterViewReuseIdentifier:v64];

  tableView13 = [(ICSETableViewController *)self tableView];
  v66 = objc_opt_class();
  v67 = objc_opt_class();
  v68 = NSStringFromClass(v67);
  [tableView13 registerClass:v66 forCellReuseIdentifier:v68];

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
  view = [(ICSETableViewController *)self view];
  window = [view window];
  if (window)
  {
    v5 = window;
    scrollViewResizer = [(ICSETableViewController *)self scrollViewResizer];
    isAutoResizing = [scrollViewResizer isAutoResizing];

    if (isAutoResizing)
    {
      return;
    }

    view = [(ICSETableViewController *)self scrollViewResizer];
    [view startAutoResizing];
  }
}

- (void)willAppearInContainer:(id)container
{
  if ([(ICSETableViewController *)self isNotePickerController])
  {
    navigationController = [(ICSETableViewController *)self navigationController];
    navigationItem = [navigationController navigationItem];
    [navigationItem setLeftBarButtonItems:0];
  }

  [(ICSETableViewController *)self refreshTableView];
  view = [(ICSETableViewController *)self view];
  [view layoutIfNeeded];
}

- (void)viewSafeAreaInsetsDidChange
{
  v4.receiver = self;
  v4.super_class = ICSETableViewController;
  [(ICSETableViewController *)&v4 viewSafeAreaInsetsDidChange];
  scrollViewResizer = [(ICSETableViewController *)self scrollViewResizer];
  [scrollViewResizer reapplyInsets];
}

- (BOOL)isRootController
{
  selfCopy = self;
  navigationController = [(ICSETableViewController *)self navigationController];
  viewControllers = [navigationController viewControllers];
  firstObject = [viewControllers firstObject];
  LOBYTE(selfCopy) = firstObject == selfCopy;

  return selfCopy;
}

- (void)cancelButtonPressed:(id)pressed
{
  containerViewController = [(ICSETableViewController *)self containerViewController];
  rootViewController = [containerViewController rootViewController];
  [rootViewController setIsShowingSearchResults:0 animated:1];
}

- (void)backButtonPressed:(id)pressed
{
  if ([(ICSETableViewController *)self isRootController])
  {
    containerViewController = [(ICSETableViewController *)self containerViewController];
    rootViewController = [containerViewController rootViewController];
    [rootViewController setIsShowingSearchResults:0 animated:1];
  }

  else
  {
    containerViewController = [(ICSETableViewController *)self navigationController];
    v5 = [containerViewController popViewControllerAnimated:1];
  }
}

- (void)setTableViewItems:(id)items
{
  objc_storeStrong(&self->_tableViewItems, items);

  [(ICSETableViewController *)self showOrHideEmptyTableCellsIfNecessary];
}

- (void)setAccounts:(id)accounts
{
  accountsCopy = accounts;
  objc_storeStrong(&self->_accounts, accounts);
  if (!-[ICSETableViewController tableViewType](self, "tableViewType") && [accountsCopy count] == 1)
  {
    v5 = [accountsCopy objectAtIndexedSubscript:0];
    if (v5)
    {
      delegate = [(ICSETableViewController *)self delegate];
      v7 = [delegate currentSelectedNoteForTableViewController:self];

      delegate2 = [(ICSETableViewController *)self delegate];
      v9 = [delegate2 currentSelectedFolderForTableViewController:self];

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

- (void)setRepresentedItem:(id)item
{
  objc_storeStrong(&self->_representedItem, item);

  [(ICSETableViewController *)self refreshTableView];
}

- (void)setTableViewHidesEmptyCells:(BOOL)cells
{
  if (self->_tableViewHidesEmptyCells != cells)
  {
    cellsCopy = cells;
    self->_tableViewHidesEmptyCells = cells;
    v6 = cells ? objc_alloc_init(UIView) : 0;
    tableView = [(ICSETableViewController *)self tableView];
    [tableView setTableFooterView:v6];

    if (cellsCopy)
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
    navigationItem = [(ICSETableViewController *)self navigationItem];
    searchController = [navigationItem searchController];
    searchBar = [searchController searchBar];
    text = [searchBar text];
    ic_trimmedString = [text ic_trimmedString];
    v3 = [ic_trimmedString length] != 0;
  }

  [(ICSETableViewController *)self setTableViewHidesEmptyCells:v3];
}

- (void)rebuildTableItems
{
  selfCopy = self;
  delegate = [(ICSETableViewController *)self delegate];
  v4 = [delegate currentSelectedNoteForTableViewController:selfCopy];

  delegate2 = [(ICSETableViewController *)selfCopy delegate];
  v6 = [delegate2 currentSelectedFolderForTableViewController:selfCopy];

  v7 = &swift_getObjCClassFromMetadata_ptr;
  v8 = +[NSMutableArray array];
  [(ICSETableViewController *)selfCopy setFolderTableViewItems:v8];

  [(ICSETableViewController *)selfCopy setPinnedNoteItems:0];
  [(ICSETableViewController *)selfCopy setNonPinnedNoteItems:0];
  v67 = selfCopy;
  if ([(ICSETableViewController *)selfCopy isAccountPickerController])
  {
    v9 = +[NSMutableArray array];
    v72 = 0u;
    v73 = 0u;
    v74 = 0u;
    v75 = 0u;
    accounts = [(ICSETableViewController *)selfCopy accounts];
    v11 = [accounts countByEnumeratingWithState:&v72 objects:v77 count:16];
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
            objc_enumerationMutation(accounts);
          }

          v15 = [ICSETableViewItem tableViewItemFromObject:*(*(&v72 + 1) + 8 * v14) selectedNote:v4 selectedFolder:v6 isSearchResult:0 isAccountPicker:1];
          [v9 addObject:v15];

          v14 = v14 + 1;
        }

        while (v12 != v14);
        v12 = [accounts countByEnumeratingWithState:&v72 objects:v77 count:16];
      }

      while (v12);
    }

    selfCopy = v67;
  }

  else if ([(ICSETableViewController *)selfCopy isFolderPickerController])
  {
    folderListViewState = [(ICSETableViewController *)selfCopy folderListViewState];
    [folderListViewState removeAccounts];

    v70 = 0u;
    v71 = 0u;
    v68 = 0u;
    v69 = 0u;
    accounts2 = [(ICSETableViewController *)selfCopy accounts];
    v18 = [accounts2 countByEnumeratingWithState:&v68 objects:v76 count:16];
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
            objc_enumerationMutation(accounts2);
          }

          v22 = *(*(&v68 + 1) + 8 * v21);
          folderListViewState2 = [(ICSETableViewController *)selfCopy folderListViewState];
          [folderListViewState2 addAccount:v22];

          v21 = v21 + 1;
        }

        while (v19 != v21);
        v19 = [accounts2 countByEnumeratingWithState:&v68 objects:v76 count:16];
      }

      while (v19);
    }

    v9 = +[NSMutableArray array];
    folderListViewState3 = [(ICSETableViewController *)selfCopy folderListViewState];
    countOfAccounts = [folderListViewState3 countOfAccounts];

    if (countOfAccounts)
    {
      v26 = 0;
      v61 = countOfAccounts;
      do
      {
        array = [v7[269] array];
        folderListViewState4 = [(ICSETableViewController *)selfCopy folderListViewState];
        v28 = [folderListViewState4 accountItemAtIndex:v26];

        objc_opt_class();
        noteContainer = [v28 noteContainer];
        v30 = ICCheckedDynamicCast();

        if (countOfAccounts != 1)
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
        [array addObject:v32];
        folderListViewState5 = [(ICSETableViewController *)selfCopy folderListViewState];
        v36 = [folderListViewState5 countOfItemsInAccountAtIndex:v26];

        if (v36)
        {
          for (i = 0; i != v36; ++i)
          {
            v38 = [NSIndexPath indexPathForRow:i inSection:v26];
            folderListViewState6 = [(ICSETableViewController *)selfCopy folderListViewState];
            v40 = [folderListViewState6 itemAtIndexPath:v38];

            v41 = [ICSETableViewItem tableViewItemFromObject:v40 selectedNote:v4 selectedFolder:v6 isSearchResult:0 isAccountPicker:0];
            if ([v40 isAccount])
            {
              [v41 setIsAccountFolder:1];
              [v41 setIsAccountHeader:0];
              account = [v41 account];
              [account allItemsFolderLocalizedTitle];
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

            title = [v41 title];

            if (title)
            {
              [v41 setIsInFolderList:1];
              [v9 addObject:v41];
              [array addObject:v41];
            }

            selfCopy = v67;
          }
        }

        folderTableViewItems = [(ICSETableViewController *)selfCopy folderTableViewItems];
        [folderTableViewItems addObject:array];

        ++v26;
        countOfAccounts = v61;
        v7 = &swift_getObjCClassFromMetadata_ptr;
      }

      while (v26 != v61);
    }
  }

  else
  {
    representedItem = [(ICSETableViewController *)selfCopy representedItem];
    folder = [representedItem folder];

    representedItem2 = [(ICSETableViewController *)selfCopy representedItem];
    v54 = representedItem2;
    if (folder)
    {
      folder2 = [representedItem2 folder];
      representedItem3 = [(ICSETableViewController *)selfCopy representedItem];
      v9 = -[ICSETableViewController noteItemsForContainer:hideNonSystemPaperNotes:](selfCopy, "noteItemsForContainer:hideNonSystemPaperNotes:", folder2, [representedItem3 isSystemPaperFolder]);
    }

    else
    {
      account2 = [representedItem2 account];

      if (account2)
      {
        representedItem4 = [(ICSETableViewController *)selfCopy representedItem];
        account3 = [representedItem4 account];
        representedItem5 = [(ICSETableViewController *)selfCopy representedItem];
        v9 = -[ICSETableViewController noteItemsForContainer:hideNonSystemPaperNotes:](selfCopy, "noteItemsForContainer:hideNonSystemPaperNotes:", account3, [representedItem5 isSystemPaperFolder]);
      }

      else
      {
        v9 = &__NSArray0__struct;
      }
    }
  }

  [(ICSETableViewController *)selfCopy setTableViewItems:v9];
}

- (void)refreshTableView
{
  cancelButton = +[ICNoteContext sharedContext];
  [cancelButton refreshAll];

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
      cancelButton = [(ICSETableViewController *)self cancelButton];
      v10 = cancelButton;
      v7 = [NSArray arrayWithObjects:&v10 count:1];
      v8 = 0;
    }

    navigationItem = [(ICSETableViewController *)self navigationItem];
    [navigationItem setRightBarButtonItems:v7];

    if ((v8 & 1) == 0)
    {
    }

    tableView = [(ICSETableViewController *)self tableView];
    [tableView reloadData];
    goto LABEL_11;
  }

  searchString = [(ICSETableViewController *)self searchString];
  v5 = [searchString length];

  if (v5)
  {
    tableView = [(ICSETableViewController *)self searchString];
    [(ICSETableViewController *)self performSearchForString:tableView];
LABEL_11:
  }

  [(ICSETableViewController *)self showOrHideCreateNewNoteButton];
}

- (void)showOrHideCreateNewNoteButton
{
  isNotePickerController = [(ICSETableViewController *)self isNotePickerController];
  createNewNoteToolbar = [(ICSETableViewController *)self createNewNoteToolbar];
  v5 = createNewNoteToolbar;
  if (isNotePickerController)
  {
    [createNewNoteToolbar setHidden:0];

    createNewNoteToolbar2 = [(ICSETableViewController *)self createNewNoteToolbar];
    [createNewNoteToolbar2 bounds];
    bottom = v7;

    tableView = [(ICSETableViewController *)self tableView];
    top = 0.0;
    [tableView setContentInset:{0.0, 0.0, bottom, 0.0}];
    left = 0.0;
    right = 0.0;
  }

  else
  {
    [createNewNoteToolbar setHidden:1];

    top = UIEdgeInsetsZero.top;
    left = UIEdgeInsetsZero.left;
    bottom = UIEdgeInsetsZero.bottom;
    right = UIEdgeInsetsZero.right;
    tableView = [(ICSETableViewController *)self tableView];
    [tableView setContentInset:{UIEdgeInsetsZero.top, left, bottom, right}];
  }

  tableView2 = [(ICSETableViewController *)self tableView];
  [tableView2 setScrollIndicatorInsets:{top, left, bottom, right}];
}

- (id)noteItemsForContainer:(id)container hideNonSystemPaperNotes:(BOOL)notes
{
  notesCopy = notes;
  containerCopy = container;
  delegate = [(ICSETableViewController *)self delegate];
  v8 = [delegate currentSelectedNoteForTableViewController:self];

  delegate2 = [(ICSETableViewController *)self delegate];
  v10 = [delegate2 currentSelectedFolderForTableViewController:self];

  visibleNotes = [containerCopy visibleNotes];
  v12 = visibleNotes;
  v13 = v8;
  if (notesCopy)
  {
    v14 = [visibleNotes ic_objectsPassingTest:&stru_1000F2848];

    v12 = v14;
  }

  v37 = containerCopy;
  customNoteSortType = [containerCopy customNoteSortType];
  v16 = customNoteSortType;
  if (customNoteSortType)
  {
    v17 = customNoteSortType;
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

- (void)contentSizeCategoryDidChange:(id)change
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(ICSETableViewController *)self tableView:change];
  visibleCells = [v4 visibleCells];

  v6 = [visibleCells countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(visibleCells);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          [v10 contentSizeCategoryDidChange];
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [visibleCells countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  tableView = [(ICSETableViewController *)self tableView];
  [tableView reloadData];
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

- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section
{
  if ([(ICSETableViewController *)self isShowingSearchResults])
  {
    if (section)
    {
      if (section != 1)
      {
        localizedUppercaseString = &stru_1000F6F48;
        goto LABEL_17;
      }

      v6 = @"Notes";
    }

    else
    {
      v6 = @"Folders";
    }

    v14 = +[NSBundle mainBundle];
    localizedUppercaseString = [v14 localizedStringForKey:v6 value:&stru_1000F6F48 table:0];

LABEL_17:
    tableView = [(ICSETableViewController *)self tableView];
    v17 = objc_opt_class();
    v18 = NSStringFromClass(v17);
    v12 = [tableView dequeueReusableHeaderFooterViewWithIdentifier:v18];

    [v12 setTypeLabelText:localizedUppercaseString];
    v19 = +[NSBundle mainBundle];
    textLabel = [v19 localizedStringForKey:@"%ld Found" value:&stru_1000F6F48 table:0];

    searchTableViewItems = [(ICSETableViewController *)self searchTableViewItems];
    v22 = [searchTableViewItems objectAtIndexedSubscript:section];
    v23 = +[NSString localizedStringWithFormat:](NSString, "localizedStringWithFormat:", textLabel, [v22 count]);
    [v12 setCountLabelText:v23];

    goto LABEL_18;
  }

  if ([(ICSETableViewController *)self isAccountPickerController]&& ![(ICSETableViewController *)self isShowingSearchResults])
  {
    if (section)
    {
      if (section != 1)
      {
        v36 = 0;
LABEL_33:
        localizedUppercaseString = [v36 localizedUppercaseString];

        if (!localizedUppercaseString || ![(__CFString *)localizedUppercaseString length])
        {
          v12 = 0;
          goto LABEL_19;
        }

        tableView2 = [(ICSETableViewController *)self tableView];
        v38 = objc_opt_class();
        v39 = NSStringFromClass(v38);
        v12 = [tableView2 dequeueReusableHeaderFooterViewWithIdentifier:v39];

        textLabel = [v12 textLabel];
        [textLabel setText:localizedUppercaseString];
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
      pinnedNoteItems = [(ICSETableViewController *)self pinnedNoteItems];
      v8 = [pinnedNoteItems count];

      if (v8)
      {
        tableView3 = [(ICSETableViewController *)self tableView];
        v10 = objc_opt_class();
        v11 = NSStringFromClass(v10);
        v12 = [tableView3 dequeueReusableHeaderFooterViewWithIdentifier:v11];

        if (section)
        {
          if (section != 1)
          {
            goto LABEL_25;
          }

          v13 = @"Notes";
        }

        else
        {
          v13 = @"Pinned";
        }

        localizedUppercaseString = +[NSBundle mainBundle];
        localizedName = [(__CFString *)localizedUppercaseString localizedStringForKey:v13 value:&stru_1000F6F48 table:0];
        goto LABEL_39;
      }
    }

    goto LABEL_24;
  }

  accounts = [(ICSETableViewController *)self accounts];
  v26 = [accounts count];

  if (v26 == 1)
  {
LABEL_24:
    v12 = 0;
    goto LABEL_25;
  }

  tableView4 = [(ICSETableViewController *)self tableView];
  v29 = objc_opt_class();
  v30 = NSStringFromClass(v29);
  v12 = [tableView4 dequeueReusableHeaderFooterViewWithIdentifier:v30];

  accounts2 = [(ICSETableViewController *)self accounts];
  v32 = [accounts2 count];

  if (v32 > section)
  {
    accounts3 = [(ICSETableViewController *)self accounts];
    localizedUppercaseString = [accounts3 objectAtIndexedSubscript:section];

    localizedName = [(__CFString *)localizedUppercaseString localizedName];
LABEL_39:
    textLabel = localizedName;
    [v12 setTypeLabelText:localizedName];
    goto LABEL_18;
  }

LABEL_25:

  return v12;
}

- (void)tableView:(id)view willDisplayHeaderView:(id)headerView forSection:(int64_t)section
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000157C0;
  v6[3] = &unk_1000F2390;
  headerViewCopy = headerView;
  v5 = headerViewCopy;
  [UIView performWithoutAnimation:v6];
}

- (int64_t)numberOfSectionsInTableView:(id)view
{
  if ([(ICSETableViewController *)self isShowingSearchResults])
  {
    searchTableViewItems = [(ICSETableViewController *)self searchTableViewItems];
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

      pinnedNoteItems = [(ICSETableViewController *)self pinnedNoteItems];
      if ([pinnedNoteItems count])
      {
        v6 = 2;
      }

      else
      {
        v6 = 1;
      }

      goto LABEL_4;
    }

    searchTableViewItems = [(ICSETableViewController *)self accounts];
  }

  pinnedNoteItems = searchTableViewItems;
  v6 = [searchTableViewItems count];
LABEL_4:

  return v6;
}

- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section
{
  v4 = [(ICSETableViewController *)self tableView:view];
  numberOfSections = [v4 numberOfSections];

  if (numberOfSections < 2)
  {
    return UITableViewAutomaticDimension;
  }

  v6 = [UIFont preferredFontForTextStyle:UIFontTextStyleHeadline];
  [v6 pointSize];
  v8 = v7 * 3.0;

  return v8;
}

- (double)tableView:(id)view heightForRowAtIndexPath:(id)path
{
  pathCopy = path;
  if (!-[ICSETableViewController isShowingSearchResults](self, "isShowingSearchResults") && -[ICSETableViewController isAccountPickerController](self, "isAccountPickerController") && [pathCopy section] == 1)
  {
    v6 = UITableViewAutomaticDimension;
  }

  else
  {
    v7 = [(ICSETableViewController *)self itemForIndexPath:pathCopy];
    [v7 cellHeight];
    v6 = v8;
  }

  return v6;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  if ([(ICSETableViewController *)self isShowingSearchResults])
  {
LABEL_2:
    nonPinnedNoteItems = [(ICSETableViewController *)self itemsForSection:section];
LABEL_3:
    v7 = nonPinnedNoteItems;
LABEL_4:
    v8 = [v7 count];

    return v8;
  }

  isAccountPickerController = [(ICSETableViewController *)self isAccountPickerController];
  if (section == 1 && (isAccountPickerController & 1) != 0)
  {
    return 1;
  }

  if ([(ICSETableViewController *)self isFolderPickerController])
  {
    folderTableViewItems = [(ICSETableViewController *)self folderTableViewItems];
    v12 = [folderTableViewItems count];

    if (v12 > section)
    {
      folderTableViewItems2 = [(ICSETableViewController *)self folderTableViewItems];
      v14 = [folderTableViewItems2 objectAtIndexedSubscript:section];
      v7 = [v14 copy];

      goto LABEL_4;
    }
  }

  if (![(ICSETableViewController *)self isNotePickerController])
  {
    goto LABEL_2;
  }

  pinnedNoteItems = [(ICSETableViewController *)self pinnedNoteItems];
  v16 = [pinnedNoteItems count];

  if (!v16 || section == 1)
  {
    nonPinnedNoteItems = [(ICSETableViewController *)self nonPinnedNoteItems];
    goto LABEL_3;
  }

  if (!section)
  {
    nonPinnedNoteItems = [(ICSETableViewController *)self pinnedNoteItems];
    goto LABEL_3;
  }

  return 0;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  if ([(ICSETableViewController *)self isShowingSearchResults]|| ![(ICSETableViewController *)self isAccountPickerController])
  {
    v14 = [(ICSETableViewController *)self itemForIndexPath:pathCopy];
    if ([v14 isSearchResult])
    {
      folder = [v14 folder];

      if (folder || ([v14 note], v20 = objc_claimAutoreleasedReturnValue(), v20, v20))
      {
        cellIdentifier = [v14 cellIdentifier];
        v11 = [viewCopy dequeueReusableCellWithIdentifier:cellIdentifier forIndexPath:pathCopy];

        accounts = [(ICSETableViewController *)self accounts];
        [v11 setShowAccountName:{objc_msgSend(accounts, "count") > 1}];

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
      section = [pathCopy section];
      folderTableViewItems = [(ICSETableViewController *)self folderTableViewItems];
      if (section >= [folderTableViewItems count])
      {
      }

      else
      {
        isShowingSearchResults = [(ICSETableViewController *)self isShowingSearchResults];

        if ((isShowingSearchResults & 1) == 0)
        {
          folderTableViewItems2 = [(ICSETableViewController *)self folderTableViewItems];
          v28 = [folderTableViewItems2 objectAtIndexedSubscript:{objc_msgSend(pathCopy, "section")}];

LABEL_34:
          v38 = [v28 objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];

          v23 = v38;
          goto LABEL_35;
        }
      }
    }

    if ([(ICSETableViewController *)self isNotePickerController]&& ![(ICSETableViewController *)self isShowingSearchResults])
    {
      pinnedNoteItems = [(ICSETableViewController *)self pinnedNoteItems];
      v30 = [pinnedNoteItems count];

      if (!v30 || (v31 = [pathCopy section], v31 == 1))
      {
        nonPinnedNoteItems = [(ICSETableViewController *)self nonPinnedNoteItems];
        goto LABEL_33;
      }

      if (!v31)
      {
        nonPinnedNoteItems = [(ICSETableViewController *)self pinnedNoteItems];
LABEL_33:
        v28 = nonPinnedNoteItems;
        goto LABEL_34;
      }
    }

LABEL_35:
    if (v23)
    {
      cellIdentifier2 = [v23 cellIdentifier];
      v11 = [viewCopy dequeueReusableCellWithIdentifier:cellIdentifier2 forIndexPath:pathCopy];

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

  tableView = [(ICSETableViewController *)self tableView];
  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  v11 = [tableView dequeueReusableCellWithIdentifier:v10];

  if ((+[UIDevice ic_isVision]& 1) == 0)
  {
    v12 = +[UIColor ICTintColor];
    [v11 setTintColor:v12];
  }

  section2 = [pathCopy section];
  if (section2 == 1)
  {
    v33 = +[NSBundle mainBundle];
    v34 = [v33 localizedStringForKey:@"Choose Note or Folder" value:&stru_1000F6F48 table:0];
    textLabel = [v11 textLabel];
    [textLabel setText:v34];

    [v11 setAccessoryType:1];
  }

  else if (!section2)
  {
    v14 = [(ICSETableViewController *)self itemForIndexPath:pathCopy];
    if ([v14 isChecked])
    {
      v15 = 3;
    }

    else
    {
      v15 = 0;
    }

    [v11 setAccessoryType:v15];
    account = [v14 account];
    localizedName = [account localizedName];
    textLabel2 = [v11 textLabel];
    [textLabel2 setText:localizedName];

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

- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path
{
  pathCopy = path;
  if ([(ICSETableViewController *)self isAccountPickerController]&& ![(ICSETableViewController *)self isShowingSearchResults])
  {
    isSelectable = 1;
  }

  else
  {
    v6 = [(ICSETableViewController *)self itemForIndexPath:pathCopy];
    isSelectable = [v6 isSelectable];
  }

  return isSelectable;
}

- (id)tableView:(id)view willSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  if ([(ICSETableViewController *)self tableView:view shouldHighlightRowAtIndexPath:pathCopy])
  {
    v7 = pathCopy;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  return v7;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  v27 = [(ICSETableViewController *)self itemForIndexPath:pathCopy];
  note = [v27 note];

  if (note)
  {
    note2 = [v27 note];
    folder = [v27 folder];
    note3 = [v27 note];
    -[ICSETableViewController selectNote:orFolder:prefersSystemPaper:](self, "selectNote:orFolder:prefersSystemPaper:", note2, folder, [note3 isSystemPaper]);

    goto LABEL_21;
  }

  if ([v27 isAccountPicker])
  {
    note2 = [v27 account];
    folder = [note2 defaultFolder];
    [(ICSETableViewController *)self selectNote:0 orFolder:folder prefersSystemPaper:0];
    goto LABEL_21;
  }

  storyboard = [(ICSETableViewController *)self storyboard];
  note2 = [storyboard instantiateViewControllerWithIdentifier:@"tableController"];

  [note2 setRepresentedItem:v27];
  if (v27 || ![(ICSETableViewController *)self isAccountPickerController])
  {
    [note2 setTableViewType:2];
    title = [v27 title];
  }

  else
  {
    [note2 setTableViewType:1];
    title = [(ICSETableViewController *)self folderPickerTitle];
  }

  v14 = title;
  [note2 setTitle:title];

  containerViewController = [(ICSETableViewController *)self containerViewController];
  [note2 setContainerViewController:containerViewController];

  delegate = [(ICSETableViewController *)self delegate];
  [note2 setDelegate:delegate];

  accounts = [(ICSETableViewController *)self accounts];
  [note2 setAccounts:accounts];

  folder2 = [v27 folder];
  if (folder2)
  {
  }

  else if (![(ICSETableViewController *)self isShowingSearchResults])
  {
    goto LABEL_13;
  }

  view = [note2 view];
  navigationItem = [note2 navigationItem];
  [navigationItem setSearchController:0];

LABEL_13:
  folder = [(ICSETableViewController *)self title];
  if ([(ICSETableViewController *)self isAccountPickerController])
  {
    accountPickerBackButtonTitle = [(ICSETableViewController *)self accountPickerBackButtonTitle];
LABEL_17:
    v22 = accountPickerBackButtonTitle;

    folder = v22;
    goto LABEL_18;
  }

  if ([(ICSETableViewController *)self isFolderPickerController])
  {
    accountPickerBackButtonTitle = [(ICSETableViewController *)self folderPickerBackButtonTitle];
    goto LABEL_17;
  }

LABEL_18:
  if ([(ICSETableViewController *)self isShowingSearchResults])
  {
    v23 = +[NSBundle mainBundle];
    v24 = [v23 localizedStringForKey:@"Search" value:&stru_1000F6F48 table:0];

    folder = v24;
  }

  backBarButtonItem = [note2 backBarButtonItem];
  [backBarButtonItem setTitle:folder];

  [(ICSETableViewController *)self setInhibitSearchCancelAnimation:1];
  navigationController = [(ICSETableViewController *)self navigationController];
  [navigationController pushViewController:note2 animated:1];

LABEL_21:
  [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
}

- (void)pushFolderViewForNote:(id)note
{
  if (!note)
  {
    return;
  }

  folder = [note folder];
  if (![(ICSETableViewController *)self isShowingSearchResults])
  {
    if ([(ICSETableViewController *)self isAccountPickerController])
    {
      accounts = [(ICSETableViewController *)self accounts];
      if ([accounts count] >= 2)
      {

LABEL_8:
        storyboard = [(ICSETableViewController *)self storyboard];
        v8 = [storyboard instantiateViewControllerWithIdentifier:@"tableController"];

        v9 = 1;
        [v8 setTableViewType:1];
        folderPickerTitle = [(ICSETableViewController *)self folderPickerTitle];
        [v8 setTitle:folderPickerTitle];

        containerViewController = [(ICSETableViewController *)self containerViewController];
        [v8 setContainerViewController:containerViewController];

        delegate = [(ICSETableViewController *)self delegate];
        [v8 setDelegate:delegate];

        accounts2 = [(ICSETableViewController *)self accounts];
        [v8 setAccounts:accounts2];

        accountPickerBackButtonTitle = [(ICSETableViewController *)self accountPickerBackButtonTitle];
        backBarButtonItem = [v8 backBarButtonItem];
        [backBarButtonItem setTitle:accountPickerBackButtonTitle];

        navigationController = [(ICSETableViewController *)self navigationController];
        [navigationController pushViewController:v8 animated:0];

LABEL_10:
        if (folder && ([(ICSETableViewController *)self isFolderPickerController]|| [(ICSETableViewController *)self isAccountPickerController]))
        {
          delegate2 = [(ICSETableViewController *)self delegate];
          v18 = [delegate2 currentSelectedNoteForTableViewController:self];

          delegate3 = [(ICSETableViewController *)self delegate];
          v20 = [delegate3 currentSelectedFolderForTableViewController:self];

          v21 = [ICSETableViewItem tableViewItemFromObject:folder selectedNote:v18 selectedFolder:v20 isSearchResult:0 isAccountPicker:0];
          if (v21)
          {
            storyboard2 = [(ICSETableViewController *)self storyboard];
            v23 = [storyboard2 instantiateViewControllerWithIdentifier:@"tableController"];

            containerViewController2 = [(ICSETableViewController *)self containerViewController];
            [v23 setContainerViewController:containerViewController2];

            [v23 setTableViewType:2];
            [v23 setRepresentedItem:v21];
            title = [v21 title];
            [v23 setTitle:title];

            delegate4 = [(ICSETableViewController *)self delegate];
            [v23 setDelegate:delegate4];

            accounts3 = [(ICSETableViewController *)self accounts];
            [v23 setAccounts:accounts3];

            if ((v9 | [(ICSETableViewController *)self isFolderPickerController]) == 1)
            {
              folderPickerBackButtonTitle = [(ICSETableViewController *)self folderPickerBackButtonTitle];
              backBarButtonItem2 = [v23 backBarButtonItem];
              [backBarButtonItem2 setTitle:folderPickerBackButtonTitle];
            }

            navigationController2 = [(ICSETableViewController *)self navigationController];
            [navigationController2 pushViewController:v23 animated:0];
          }
        }

        goto LABEL_18;
      }

      account = [folder account];
      v6 = [account hasAnyCustomFoldersIncludingSystem:1];

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

- (id)itemForIndexPath:(id)path
{
  pathCopy = path;
  if ([(ICSETableViewController *)self isFolderPickerController]&& ![(ICSETableViewController *)self isShowingSearchResults])
  {
    section = [pathCopy section];
    folderTableViewItems = [(ICSETableViewController *)self folderTableViewItems];
    if (section >= [folderTableViewItems count])
    {
    }

    else
    {
      v7 = [pathCopy row];
      folderTableViewItems2 = [(ICSETableViewController *)self folderTableViewItems];
      v9 = [folderTableViewItems2 objectAtIndexedSubscript:{objc_msgSend(pathCopy, "section")}];
      v10 = [v9 count];

      if (v7 < v10)
      {
        folderTableViewItems3 = [(ICSETableViewController *)self folderTableViewItems];
        v12 = [folderTableViewItems3 objectAtIndexedSubscript:{objc_msgSend(pathCopy, "section")}];
        v13 = [v12 objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];

        goto LABEL_13;
      }
    }
  }

  v14 = [pathCopy row];
  if (!-[ICSETableViewController isShowingSearchResults](self, "isShowingSearchResults") && [pathCopy section] == 1)
  {
    tableView = [(ICSETableViewController *)self tableView];
    v16 = [tableView numberOfRowsInSection:0];

    v14 = &v14[v16];
  }

  folderTableViewItems3 = -[ICSETableViewController itemsForSection:](self, "itemsForSection:", [pathCopy section]);
  if (v14 >= [folderTableViewItems3 count])
  {
    v13 = 0;
  }

  else
  {
    v13 = [folderTableViewItems3 objectAtIndexedSubscript:v14];
  }

LABEL_13:

  return v13;
}

- (id)itemsForSection:(unint64_t)section
{
  isShowingSearchResults = [(ICSETableViewController *)self isShowingSearchResults];
  if (section <= 1 && isShowingSearchResults)
  {
    searchTableViewItems = [(ICSETableViewController *)self searchTableViewItems];
    tableViewItems = [searchTableViewItems objectAtIndexedSubscript:section];
  }

  else if (!section || section == 1 && [(ICSETableViewController *)self isNotePickerController]&& ([(ICSETableViewController *)self pinnedNoteItems], v8 = objc_claimAutoreleasedReturnValue(), v8, v8))
  {
    tableViewItems = [(ICSETableViewController *)self tableViewItems];
  }

  else
  {
    tableViewItems = 0;
  }

  return tableViewItems;
}

- (void)tableViewCell:(id)cell setCollapsed:(BOOL)collapsed
{
  collapsedCopy = collapsed;
  cellCopy = cell;
  tableView = [(ICSETableViewController *)self tableView];
  v10 = [tableView indexPathForCell:cellCopy];

  tableViewItem = [cellCopy tableViewItem];

  folderListItem = [tableViewItem folderListItem];

  if (v10 && folderListItem)
  {
    if (collapsedCopy)
    {
      [(ICSETableViewController *)self collapseFolderListItem:folderListItem atIndexPath:v10];
    }

    else
    {
      [(ICSETableViewController *)self expandFolderListItem:folderListItem atIndexPath:v10];
    }
  }
}

- (void)collapseFolderListItem:(id)item atIndexPath:(id)path
{
  itemCopy = item;
  pathCopy = path;
  if (([itemCopy isCollapsible] & 1) == 0)
  {
    [ICAssert handleFailedAssertWithCondition:"item.isCollapsible" functionName:"[ICSETableViewController collapseFolderListItem:atIndexPath:]" simulateCrash:1 showAlert:0 format:@"Trying to collapse item that is not collapsible"];
  }

  if ([itemCopy isCollapsible] && (objc_msgSend(itemCopy, "isCollapsed") & 1) == 0)
  {
    countOfVisibleDescendants = [itemCopy countOfVisibleDescendants];
    tableView = [(ICSETableViewController *)self tableView];
    [tableView beginUpdates];

    [itemCopy setCollapsed:1];
    [(ICSETableViewController *)self rebuildTableItems];
    v9 = +[NSMutableArray array];
    for (i = [pathCopy row] + 1; i <= &countOfVisibleDescendants[objc_msgSend(pathCopy, "row")]; ++i)
    {
      v11 = +[NSIndexPath indexPathForRow:inSection:](NSIndexPath, "indexPathForRow:inSection:", i, [pathCopy section]);
      [v9 addObject:v11];
    }

    tableView2 = [(ICSETableViewController *)self tableView];
    [tableView2 deleteRowsAtIndexPaths:v9 withRowAnimation:3];

    tableView3 = [(ICSETableViewController *)self tableView];
    [tableView3 endUpdates];
  }
}

- (void)expandFolderListItem:(id)item atIndexPath:(id)path
{
  itemCopy = item;
  pathCopy = path;
  if (([itemCopy isCollapsible] & 1) == 0)
  {
    [ICAssert handleFailedAssertWithCondition:"item.isCollapsible" functionName:"[ICSETableViewController expandFolderListItem:atIndexPath:]" simulateCrash:1 showAlert:0 format:@"Trying to expand item that is not collapsible"];
  }

  if ([itemCopy isCollapsible] && objc_msgSend(itemCopy, "isCollapsed"))
  {
    tableView = [(ICSETableViewController *)self tableView];
    [tableView beginUpdates];

    [itemCopy setCollapsed:0];
    [(ICSETableViewController *)self rebuildTableItems];
    countOfVisibleDescendants = [itemCopy countOfVisibleDescendants];
    v9 = +[NSMutableArray array];
    for (i = [pathCopy row] + 1; i <= &countOfVisibleDescendants[objc_msgSend(pathCopy, "row")]; ++i)
    {
      v11 = +[NSIndexPath indexPathForRow:inSection:](NSIndexPath, "indexPathForRow:inSection:", i, [pathCopy section]);
      [v9 addObject:v11];
    }

    tableView2 = [(ICSETableViewController *)self tableView];
    [tableView2 insertRowsAtIndexPaths:v9 withRowAnimation:3];

    tableView3 = [(ICSETableViewController *)self tableView];
    [tableView3 endUpdates];
  }
}

- (void)updateSearchResultsForSearchController:(id)controller
{
  searchBar = [controller searchBar];
  text = [searchBar text];
  [(ICSETableViewController *)self updateForSearchText:text];
}

- (void)didDismissSearchController:(id)controller
{
  [(ICSETableViewController *)self setIsShowingSearchResults:0];
  [(ICSETableViewController *)self setSearchTableViewItems:&off_1000F8E88];
  tableView = [(ICSETableViewController *)self tableView];
  [tableView reloadData];
}

- (void)updateForSearchText:(id)text
{
  ic_trimmedString = [text ic_trimmedString];
  if ([ic_trimmedString length])
  {
    [(ICSETableViewController *)self performSearchForString:ic_trimmedString];
  }

  else
  {
    [(ICSETableViewController *)self setSearchTableViewItems:&off_1000F8EA0];
    [(ICSETableViewController *)self showOrHideEmptyTableCellsIfNecessary];
    tableView = [(ICSETableViewController *)self tableView];
    [tableView reloadData];
  }
}

- (void)performSearchForString:(id)string
{
  stringCopy = string;
  v6 = os_log_create("com.apple.notes", "SharingExtension");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v15 = objc_opt_class();
    v16 = v15;
    v17 = NSStringFromSelector(a2);
    *location = 138413314;
    *&location[4] = v15;
    v25 = 2048;
    selfCopy = self;
    v27 = 2112;
    v28 = v17;
    v29 = 2048;
    v30 = [stringCopy hash];
    v31 = 2048;
    v32 = [stringCopy length];
    _os_log_debug_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "[%@(%p) %@] Search query string: hash=%lu, length=%lu", location, 0x34u);
  }

  if (!stringCopy)
  {
    [ICAssert handleFailedAssertWithCondition:"((searchString) != nil)" functionName:"[ICSETableViewController performSearchForString:]" simulateCrash:1 showAlert:0 format:@"Expected non-nil value for '%s'", "searchString"];
  }

  [(ICSETableViewController *)self setSearchString:stringCopy];
  queryOperationQueue = [(ICSETableViewController *)self queryOperationQueue];
  [queryOperationQueue cancelAllOperations];

  v8 = +[ICNoteContext sharedContext];
  managedObjectContext = [v8 managedObjectContext];

  v10 = [[ICSearchQueryOperation alloc] initWithSearchSuggestionsResponder:0 searchString:stringCopy performNLSearch:1 performTopHitSearch:0 tokens:&__NSArray0__struct modernResultsOnly:0];
  queryRequestIndex = [(ICSETableViewController *)self queryRequestIndex];
  [(ICSETableViewController *)self setQueryRequestIndex:queryRequestIndex + 1];
  [v10 setRequestIndex:queryRequestIndex + 1];
  objc_initWeak(location, v10);
  objc_initWeak(&from, self);
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100017514;
  v18[3] = &unk_1000F2898;
  objc_copyWeak(&v21, location);
  v18[4] = self;
  v12 = managedObjectContext;
  v19 = v12;
  objc_copyWeak(&v22, &from);
  v13 = stringCopy;
  v20 = v13;
  [v10 setCompletionBlock:v18];
  queryOperationQueue2 = [(ICSETableViewController *)self queryOperationQueue];
  [queryOperationQueue2 addOperation:v10];

  objc_destroyWeak(&v22);
  objc_destroyWeak(&v21);
  objc_destroyWeak(&from);
  objc_destroyWeak(location);
}

- (void)setupSearchResultsWithSearchString:(id)string notes:(id)notes
{
  notesCopy = notes;
  stringCopy = string;
  delegate = [(ICSETableViewController *)self delegate];
  v9 = [delegate currentSelectedNoteForTableViewController:self];

  delegate2 = [(ICSETableViewController *)self delegate];
  v11 = [delegate2 currentSelectedFolderForTableViewController:self];

  v12 = [(ICSETableViewController *)self matchingFoldersForString:stringCopy];

  v13 = [ICSETableViewItem tableViewItemsForObjects:v12 selectedNote:v9 selectedFolder:v11 isSearchResult:1 noteContainer:0 isAccountPicker:0];
  v14 = [ICSETableViewItem tableViewItemsForObjects:notesCopy selectedNote:v9 selectedFolder:v11 isSearchResult:1 noteContainer:0 isAccountPicker:0];

  v17[0] = v13;
  v17[1] = v14;
  v15 = [NSArray arrayWithObjects:v17 count:2];
  [(ICSETableViewController *)self setSearchTableViewItems:v15];

  [(ICSETableViewController *)self showOrHideEmptyTableCellsIfNecessary];
  tableView = [(ICSETableViewController *)self tableView];
  [tableView reloadData];
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
    accounts = [(ICSETableViewController *)self accounts];
    v5 = [accounts countByEnumeratingWithState:&v15 objects:v19 count:16];
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
            objc_enumerationMutation(accounts);
          }

          v9 = self->_allFolders;
          visibleFolders = [*(*(&v15 + 1) + 8 * v8) visibleFolders];
          v11 = [visibleFolders ic_objectsPassingTest:&stru_1000F28D8];
          v12 = [(NSArray *)v9 ic_arrayByAddingObjectsFromNonNilArray:v11];
          v13 = self->_allFolders;
          self->_allFolders = v12;

          v8 = v8 + 1;
        }

        while (v6 != v8);
        v6 = [accounts countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v6);
    }

    allFolders = self->_allFolders;
  }

  return allFolders;
}

- (id)matchingFoldersForString:(id)string
{
  stringCopy = string;
  if (stringCopy)
  {
    allFolders = [(ICSETableViewController *)self allFolders];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100017D90;
    v8[3] = &unk_1000F2900;
    v9 = stringCopy;
    v6 = [allFolders ic_objectsPassingTest:v8];
  }

  else
  {
    [ICAssert handleFailedAssertWithCondition:"((string) != nil)" functionName:"[ICSETableViewController matchingFoldersForString:]" simulateCrash:1 showAlert:0 format:@"Expected non-nil value for '%s'", "string"];
    v6 = &__NSArray0__struct;
  }

  return v6;
}

- (double)consumedBottomAreaForResizer:(id)resizer
{
  view = [(ICSETableViewController *)self view];
  [view safeAreaInsets];
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