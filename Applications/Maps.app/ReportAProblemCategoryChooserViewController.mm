@interface ReportAProblemCategoryChooserViewController
- (BOOL)showingPartialSearchResults;
- (RAPCategoryChooserDelegate)chooserDelegate;
- (ReportAProblemCategoryChooserViewController)initWithPresentationStyle:(int64_t)style selectedCategoryNames:(id)names;
- (double)tableView:(id)view estimatedHeightForRowAtIndexPath:(id)path;
- (id)categoryNameAtIndexPath:(id)path;
- (id)searchBarDefaultPlaceholder;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_cancel;
- (void)_captureUserAction:(int)action;
- (void)_categoryNameSelected:(id)selected;
- (void)_didTapOnRightBarButtonItem;
- (void)_updateDoneBarButtonItem;
- (void)_updateSearchResultsWithString:(id)string;
- (void)checkmarkTableViewCell:(id)cell isSelected:(BOOL)selected;
- (void)fetchLocalizedCategories;
- (void)macFooterViewBackButtonTapped:(id)tapped;
- (void)saveCategoryAndDismissIfNecessary;
- (void)scrollViewWillBeginDragging:(id)dragging;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)updateBarButtonItems;
- (void)updateSearchResultsForSearchController:(id)controller;
- (void)updateSelectedCategoryNames:(id)names;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
@end

@implementation ReportAProblemCategoryChooserViewController

- (RAPCategoryChooserDelegate)chooserDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_chooserDelegate);

  return WeakRetained;
}

- (void)checkmarkTableViewCell:(id)cell isSelected:(BOOL)selected
{
  cellCopy = cell;
  object = [cellCopy object];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    object2 = [cellCopy object];
    [(ReportAProblemCategoryChooserViewController *)self _categoryNameSelected:object2];
  }
}

- (void)macFooterViewBackButtonTapped:(id)tapped
{
  navigationController = [(ReportAProblemCategoryChooserViewController *)self navigationController];
  v3 = [navigationController popViewControllerAnimated:1];
}

- (void)_captureUserAction:(int)action
{
  if (action != 17099)
  {
    v4 = *&action;
    analyticTarget = [(ReportAProblemCategoryChooserViewController *)self analyticTarget];

    [GEOAPPortal captureUserAction:v4 target:analyticTarget value:0];
  }
}

- (void)_updateSearchResultsWithString:(id)string
{
  stringCopy = string;
  showingPartialSearchResults = [(ReportAProblemCategoryChooserViewController *)self showingPartialSearchResults];
  fullCategoryList = [(ReportAProblemCategoryChooserViewController *)self fullCategoryList];
  v6 = fullCategoryList;
  if (showingPartialSearchResults)
  {
    stringCopy = [NSPredicate predicateWithFormat:@"SELF contains[cd] %@", stringCopy];
    v8 = [v6 filteredArrayUsingPredicate:stringCopy];
    [(ReportAProblemCategoryChooserViewController *)self setPartialCategoryList:v8];
  }

  else
  {
    stringCopy = [fullCategoryList copy];
    [(ReportAProblemCategoryChooserViewController *)self setPartialCategoryList:stringCopy];
  }

  tableView = [(ReportAProblemCategoryChooserViewController *)self tableView];
  [tableView reloadData];
}

- (void)updateSearchResultsForSearchController:(id)controller
{
  searchBar = [controller searchBar];
  text = [searchBar text];
  [(ReportAProblemCategoryChooserViewController *)self _updateSearchResultsWithString:text];
}

- (void)_categoryNameSelected:(id)selected
{
  selectedCopy = selected;
  selectedCategoryNames = [(ReportAProblemCategoryChooserViewController *)self selectedCategoryNames];
  v5 = [selectedCategoryNames containsObject:selectedCopy];

  if (v5)
  {
    selectedCategoryNames2 = [(ReportAProblemCategoryChooserViewController *)self selectedCategoryNames];
    [selectedCategoryNames2 removeObject:selectedCopy];

    [(ReportAProblemCategoryChooserViewController *)self _captureUserAction:10170];
  }

  else
  {
    v7 = [(NSMutableArray *)self->_selectedCategoryNames count];
    if (v7 < GEOConfigGetUInteger())
    {
      [(ReportAProblemCategoryChooserViewController *)self _captureUserAction:10147];
      selectedCategoryNames3 = [(ReportAProblemCategoryChooserViewController *)self selectedCategoryNames];
      [selectedCategoryNames3 addObject:selectedCopy];
    }
  }

  [(ReportAProblemCategoryChooserViewController *)self _updateDoneBarButtonItem];
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  traitCollection = [(ReportAProblemCategoryChooserViewController *)self traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  if (userInterfaceIdiom != 5)
  {
    v10 = [(ReportAProblemCategoryChooserViewController *)self categoryNameAtIndexPath:pathCopy];
    [(ReportAProblemCategoryChooserViewController *)self _categoryNameSelected:v10];
    [viewCopy deselectRowAtIndexPath:pathCopy animated:0];
    v12 = pathCopy;
    v11 = [NSArray arrayWithObjects:&v12 count:1];
    [viewCopy reloadRowsAtIndexPaths:v11 withRowAnimation:100];
  }
}

- (double)tableView:(id)view estimatedHeightForRowAtIndexPath:(id)path
{
  v4 = [RAPFontManager regularTitleFont:view];
  [v4 _mapkit_scaledValueForValue:55.0];
  v6 = v5;

  return v6;
}

- (id)categoryNameAtIndexPath:(id)path
{
  pathCopy = path;
  if ([(ReportAProblemCategoryChooserViewController *)self showingPartialSearchResults])
  {
    [(ReportAProblemCategoryChooserViewController *)self partialCategoryList];
  }

  else
  {
    [(ReportAProblemCategoryChooserViewController *)self fullCategoryList];
  }
  v5 = ;
  v6 = [pathCopy row];

  v7 = [v5 objectAtIndexedSubscript:v6];

  return v7;
}

- (BOOL)showingPartialSearchResults
{
  navigationItem = [(ReportAProblemCategoryChooserViewController *)self navigationItem];
  searchController = [navigationItem searchController];

  if ([searchController isActive])
  {
    searchBar = [searchController searchBar];
    text = [searchBar text];
    v6 = [text length] != 0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  viewCopy = view;
  v7 = [(ReportAProblemCategoryChooserViewController *)self categoryNameAtIndexPath:path];
  selectedCategoryNames = [(ReportAProblemCategoryChooserViewController *)self selectedCategoryNames];
  v9 = [selectedCategoryNames containsObject:v7];

  traitCollection = [(ReportAProblemCategoryChooserViewController *)self traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  if (userInterfaceIdiom == 5)
  {
    v12 = +[MacRAPCheckmarkCell identifier];
    v13 = [viewCopy dequeueReusableCellWithIdentifier:v12];

    [v13 setChecked:v9];
    [v13 setDisplayText:v7];
    [v13 setDelegate:self];
    [v13 setObject:v7];
  }

  else
  {
    v14 = +[RAPCategorySearchTableViewCell identifier];
    v13 = [viewCopy dequeueReusableCellWithIdentifier:v14];

    [v13 setChecked:v9];
    [v13 setDisplayText:v7];
  }

  return v13;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  if ([(ReportAProblemCategoryChooserViewController *)self showingPartialSearchResults:view])
  {
    [(ReportAProblemCategoryChooserViewController *)self partialCategoryList];
  }

  else
  {
    [(ReportAProblemCategoryChooserViewController *)self fullCategoryList];
  }
  v5 = ;
  v6 = [v5 count];

  return v6;
}

- (void)updateSelectedCategoryNames:(id)names
{
  namesCopy = names;
  v5 = [[NSMutableArray alloc] initWithArray:namesCopy];

  selectedCategoryNames = self->_selectedCategoryNames;
  self->_selectedCategoryNames = v5;

  v7 = [(NSMutableArray *)self->_selectedCategoryNames copy];
  originalCategoryList = self->_originalCategoryList;
  self->_originalCategoryList = v7;

  [(ReportAProblemCategoryChooserViewController *)self _updateDoneBarButtonItem];
  tableView = [(ReportAProblemCategoryChooserViewController *)self tableView];
  [tableView reloadData];
}

- (void)scrollViewWillBeginDragging:(id)dragging
{
  navigationItem = [(ReportAProblemCategoryChooserViewController *)self navigationItem];
  searchController = [navigationItem searchController];
  searchBar = [searchController searchBar];
  [searchBar endEditing:1];
}

- (void)updateBarButtonItems
{
  if ([(ReportAProblemCategoryChooserViewController *)self presentationStyle])
  {
    if ([(ReportAProblemCategoryChooserViewController *)self presentationStyle]== 1)
    {
      v3 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:1 target:self action:"_cancel"];
      navigationItem = [(ReportAProblemCategoryChooserViewController *)self navigationItem];
      [navigationItem setLeftBarButtonItem:v3];

      navigationItem2 = [(ReportAProblemCategoryChooserViewController *)self navigationItem];
      [navigationItem2 setHidesBackButton:1];

      v6 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:0 target:self action:"_didTapOnRightBarButtonItem"];
      navigationItem3 = [(ReportAProblemCategoryChooserViewController *)self navigationItem];
      [navigationItem3 setRightBarButtonItem:v6];

      [(ReportAProblemCategoryChooserViewController *)self _updateDoneBarButtonItem];
    }
  }

  else
  {
    v10 = +[NSBundle mainBundle];
    v8 = [v10 localizedStringForKey:@"Back" value:@"localized string not found" table:0];
    navigationItem4 = [(ReportAProblemCategoryChooserViewController *)self navigationItem];
    [navigationItem4 setBackButtonTitle:v8];
  }
}

- (id)searchBarDefaultPlaceholder
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"Search for a category" value:@"localized string not found" table:0];

  return v3;
}

- (void)viewDidAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = ReportAProblemCategoryChooserViewController;
  [(ReportAProblemCategoryChooserViewController *)&v5 viewDidAppear:appear];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100DCA7CC;
  block[3] = &unk_101661B18;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)viewDidLoad
{
  v17.receiver = self;
  v17.super_class = ReportAProblemCategoryChooserViewController;
  [(ReportAProblemCategoryChooserViewController *)&v17 viewDidLoad];
  tableView = [(ReportAProblemCategoryChooserViewController *)self tableView];
  [tableView setDataSource:self];

  tableView2 = [(ReportAProblemCategoryChooserViewController *)self tableView];
  [tableView2 setKeyboardDismissMode:1];

  tableView3 = [(ReportAProblemCategoryChooserViewController *)self tableView];
  [tableView3 setRowHeight:UITableViewAutomaticDimension];

  traitCollection = [(ReportAProblemCategoryChooserViewController *)self traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  if (userInterfaceIdiom == 5)
  {
    tableView4 = [(ReportAProblemCategoryChooserViewController *)self tableView];
    [tableView4 setSeparatorStyle:0];
  }

  else
  {
    tableView4 = [[UISearchController alloc] initWithSearchResultsController:0];
    [tableView4 setSearchResultsUpdater:self];
    [tableView4 setObscuresBackgroundDuringPresentation:0];
    [tableView4 setHidesNavigationBarDuringPresentation:0];
    fullCategoryList = [(ReportAProblemCategoryChooserViewController *)self fullCategoryList];
    v11 = [fullCategoryList count];
    if (v11)
    {
      [(ReportAProblemCategoryChooserViewController *)self searchBarDefaultPlaceholder];
    }

    else
    {
      v2 = +[NSBundle mainBundle];
      [v2 localizedStringForKey:@"Loading Categories..." value:@"localized string not found" table:0];
    }
    v12 = ;
    searchBar = [tableView4 searchBar];
    [searchBar setPlaceholder:v12];

    if (!v11)
    {

      v12 = v2;
    }

    searchBar2 = [tableView4 searchBar];
    [searchBar2 setReturnKeyType:9];

    [tableView4 setAutomaticallyShowsCancelButton:0];
    navigationItem = [(ReportAProblemCategoryChooserViewController *)self navigationItem];
    [navigationItem setSearchController:tableView4];

    navigationItem2 = [(ReportAProblemCategoryChooserViewController *)self navigationItem];
    [navigationItem2 setHidesSearchBarWhenScrolling:0];
  }
}

- (void)_cancel
{
  chooserDelegate = [(ReportAProblemCategoryChooserViewController *)self chooserDelegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    chooserDelegate2 = [(ReportAProblemCategoryChooserViewController *)self chooserDelegate];
    [chooserDelegate2 categoryChooserViewController:self categoriesDidNotChange:self->_originalCategoryList];
  }

  [(ReportAProblemCategoryChooserViewController *)self _captureUserAction:10111];
  navigationItem = [(ReportAProblemCategoryChooserViewController *)self navigationItem];
  searchController = [navigationItem searchController];
  [searchController setActive:0];

  [(ReportAProblemCategoryChooserViewController *)self dismissViewControllerAnimated:1 completion:0];
}

- (void)saveCategoryAndDismissIfNecessary
{
  navigationItem = [(ReportAProblemCategoryChooserViewController *)self navigationItem];
  searchController = [navigationItem searchController];
  [searchController setActive:0];

  chooserDelegate = [(ReportAProblemCategoryChooserViewController *)self chooserDelegate];
  selectedCategoryNames = [(ReportAProblemCategoryChooserViewController *)self selectedCategoryNames];
  [chooserDelegate categoryChooserViewController:self didReceiveSelectedCategories:selectedCategoryNames];

  traitCollection = [(ReportAProblemCategoryChooserViewController *)self traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  if (userInterfaceIdiom == 5)
  {
    navigationController = [(ReportAProblemCategoryChooserViewController *)self navigationController];
    v9 = [navigationController popViewControllerAnimated:1];
  }

  else if ([(ReportAProblemCategoryChooserViewController *)self presentationStyle]== 1)
  {

    [(ReportAProblemCategoryChooserViewController *)self dismissViewControllerAnimated:1 completion:0];
  }
}

- (void)_didTapOnRightBarButtonItem
{
  [(ReportAProblemCategoryChooserViewController *)self _captureUserAction:10110];

  [(ReportAProblemCategoryChooserViewController *)self saveCategoryAndDismissIfNecessary];
}

- (void)_updateDoneBarButtonItem
{
  v7 = [NSSet setWithArray:self->_originalCategoryList];
  v3 = [NSSet setWithArray:self->_selectedCategoryNames];
  v4 = [v7 isEqualToSet:v3];
  navigationItem = [(ReportAProblemCategoryChooserViewController *)self navigationItem];
  rightBarButtonItem = [navigationItem rightBarButtonItem];
  [rightBarButtonItem setEnabled:v4 ^ 1];
}

- (void)fetchLocalizedCategories
{
  objc_initWeak(&location, self);
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_100DCAE80;
  v2[3] = &unk_101654BC0;
  objc_copyWeak(&v3, &location);
  [RAPCategoriesDownloader fetchCategories:v2];
  objc_destroyWeak(&v3);
  objc_destroyWeak(&location);
}

- (ReportAProblemCategoryChooserViewController)initWithPresentationStyle:(int64_t)style selectedCategoryNames:(id)names
{
  namesCopy = names;
  v24.receiver = self;
  v24.super_class = ReportAProblemCategoryChooserViewController;
  v7 = [(ReportAProblemCategoryChooserViewController *)&v24 initWithStyle:0];
  v8 = v7;
  if (v7)
  {
    v7->_presentationStyle = style;
    [(ReportAProblemCategoryChooserViewController *)v7 updateBarButtonItems];
    v9 = [[UIColor alloc] initWithRed:0.984313726 green:0.23137255 blue:0.101960786 alpha:1.0];
    selectedTextColor = v8->_selectedTextColor;
    v8->_selectedTextColor = v9;

    v11 = [[NSMutableArray alloc] initWithArray:namesCopy];
    selectedCategoryNames = v8->_selectedCategoryNames;
    v8->_selectedCategoryNames = v11;

    v13 = [(NSMutableArray *)v8->_selectedCategoryNames copy];
    originalCategoryList = v8->_originalCategoryList;
    v8->_originalCategoryList = v13;

    v15 = +[NSBundle mainBundle];
    v16 = [v15 localizedStringForKey:@"Select a Category" value:@"localized string not found" table:0];
    [(ReportAProblemCategoryChooserViewController *)v8 setTitle:v16];

    tableView = [(ReportAProblemCategoryChooserViewController *)v8 tableView];
    v18 = objc_opt_class();
    v19 = +[RAPCategorySearchTableViewCell identifier];
    [tableView registerClass:v18 forCellReuseIdentifier:v19];

    tableView2 = [(ReportAProblemCategoryChooserViewController *)v8 tableView];
    v21 = objc_opt_class();
    v22 = +[MacRAPCheckmarkCell identifier];
    [tableView2 registerClass:v21 forCellReuseIdentifier:v22];

    [(ReportAProblemCategoryChooserViewController *)v8 fetchLocalizedCategories];
  }

  return v8;
}

@end