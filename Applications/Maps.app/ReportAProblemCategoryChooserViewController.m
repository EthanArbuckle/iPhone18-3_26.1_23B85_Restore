@interface ReportAProblemCategoryChooserViewController
- (BOOL)showingPartialSearchResults;
- (RAPCategoryChooserDelegate)chooserDelegate;
- (ReportAProblemCategoryChooserViewController)initWithPresentationStyle:(int64_t)a3 selectedCategoryNames:(id)a4;
- (double)tableView:(id)a3 estimatedHeightForRowAtIndexPath:(id)a4;
- (id)categoryNameAtIndexPath:(id)a3;
- (id)searchBarDefaultPlaceholder;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_cancel;
- (void)_captureUserAction:(int)a3;
- (void)_categoryNameSelected:(id)a3;
- (void)_didTapOnRightBarButtonItem;
- (void)_updateDoneBarButtonItem;
- (void)_updateSearchResultsWithString:(id)a3;
- (void)checkmarkTableViewCell:(id)a3 isSelected:(BOOL)a4;
- (void)fetchLocalizedCategories;
- (void)macFooterViewBackButtonTapped:(id)a3;
- (void)saveCategoryAndDismissIfNecessary;
- (void)scrollViewWillBeginDragging:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)updateBarButtonItems;
- (void)updateSearchResultsForSearchController:(id)a3;
- (void)updateSelectedCategoryNames:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation ReportAProblemCategoryChooserViewController

- (RAPCategoryChooserDelegate)chooserDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_chooserDelegate);

  return WeakRetained;
}

- (void)checkmarkTableViewCell:(id)a3 isSelected:(BOOL)a4
{
  v8 = a3;
  v5 = [v8 object];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v7 = [v8 object];
    [(ReportAProblemCategoryChooserViewController *)self _categoryNameSelected:v7];
  }
}

- (void)macFooterViewBackButtonTapped:(id)a3
{
  v4 = [(ReportAProblemCategoryChooserViewController *)self navigationController];
  v3 = [v4 popViewControllerAnimated:1];
}

- (void)_captureUserAction:(int)a3
{
  if (a3 != 17099)
  {
    v4 = *&a3;
    v5 = [(ReportAProblemCategoryChooserViewController *)self analyticTarget];

    [GEOAPPortal captureUserAction:v4 target:v5 value:0];
  }
}

- (void)_updateSearchResultsWithString:(id)a3
{
  v10 = a3;
  v4 = [(ReportAProblemCategoryChooserViewController *)self showingPartialSearchResults];
  v5 = [(ReportAProblemCategoryChooserViewController *)self fullCategoryList];
  v6 = v5;
  if (v4)
  {
    v7 = [NSPredicate predicateWithFormat:@"SELF contains[cd] %@", v10];
    v8 = [v6 filteredArrayUsingPredicate:v7];
    [(ReportAProblemCategoryChooserViewController *)self setPartialCategoryList:v8];
  }

  else
  {
    v7 = [v5 copy];
    [(ReportAProblemCategoryChooserViewController *)self setPartialCategoryList:v7];
  }

  v9 = [(ReportAProblemCategoryChooserViewController *)self tableView];
  [v9 reloadData];
}

- (void)updateSearchResultsForSearchController:(id)a3
{
  v5 = [a3 searchBar];
  v4 = [v5 text];
  [(ReportAProblemCategoryChooserViewController *)self _updateSearchResultsWithString:v4];
}

- (void)_categoryNameSelected:(id)a3
{
  v9 = a3;
  v4 = [(ReportAProblemCategoryChooserViewController *)self selectedCategoryNames];
  v5 = [v4 containsObject:v9];

  if (v5)
  {
    v6 = [(ReportAProblemCategoryChooserViewController *)self selectedCategoryNames];
    [v6 removeObject:v9];

    [(ReportAProblemCategoryChooserViewController *)self _captureUserAction:10170];
  }

  else
  {
    v7 = [(NSMutableArray *)self->_selectedCategoryNames count];
    if (v7 < GEOConfigGetUInteger())
    {
      [(ReportAProblemCategoryChooserViewController *)self _captureUserAction:10147];
      v8 = [(ReportAProblemCategoryChooserViewController *)self selectedCategoryNames];
      [v8 addObject:v9];
    }
  }

  [(ReportAProblemCategoryChooserViewController *)self _updateDoneBarButtonItem];
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(ReportAProblemCategoryChooserViewController *)self traitCollection];
  v9 = [v8 userInterfaceIdiom];

  if (v9 != 5)
  {
    v10 = [(ReportAProblemCategoryChooserViewController *)self categoryNameAtIndexPath:v7];
    [(ReportAProblemCategoryChooserViewController *)self _categoryNameSelected:v10];
    [v6 deselectRowAtIndexPath:v7 animated:0];
    v12 = v7;
    v11 = [NSArray arrayWithObjects:&v12 count:1];
    [v6 reloadRowsAtIndexPaths:v11 withRowAnimation:100];
  }
}

- (double)tableView:(id)a3 estimatedHeightForRowAtIndexPath:(id)a4
{
  v4 = [RAPFontManager regularTitleFont:a3];
  [v4 _mapkit_scaledValueForValue:55.0];
  v6 = v5;

  return v6;
}

- (id)categoryNameAtIndexPath:(id)a3
{
  v4 = a3;
  if ([(ReportAProblemCategoryChooserViewController *)self showingPartialSearchResults])
  {
    [(ReportAProblemCategoryChooserViewController *)self partialCategoryList];
  }

  else
  {
    [(ReportAProblemCategoryChooserViewController *)self fullCategoryList];
  }
  v5 = ;
  v6 = [v4 row];

  v7 = [v5 objectAtIndexedSubscript:v6];

  return v7;
}

- (BOOL)showingPartialSearchResults
{
  v2 = [(ReportAProblemCategoryChooserViewController *)self navigationItem];
  v3 = [v2 searchController];

  if ([v3 isActive])
  {
    v4 = [v3 searchBar];
    v5 = [v4 text];
    v6 = [v5 length] != 0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = [(ReportAProblemCategoryChooserViewController *)self categoryNameAtIndexPath:a4];
  v8 = [(ReportAProblemCategoryChooserViewController *)self selectedCategoryNames];
  v9 = [v8 containsObject:v7];

  v10 = [(ReportAProblemCategoryChooserViewController *)self traitCollection];
  v11 = [v10 userInterfaceIdiom];

  if (v11 == 5)
  {
    v12 = +[MacRAPCheckmarkCell identifier];
    v13 = [v6 dequeueReusableCellWithIdentifier:v12];

    [v13 setChecked:v9];
    [v13 setDisplayText:v7];
    [v13 setDelegate:self];
    [v13 setObject:v7];
  }

  else
  {
    v14 = +[RAPCategorySearchTableViewCell identifier];
    v13 = [v6 dequeueReusableCellWithIdentifier:v14];

    [v13 setChecked:v9];
    [v13 setDisplayText:v7];
  }

  return v13;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  if ([(ReportAProblemCategoryChooserViewController *)self showingPartialSearchResults:a3])
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

- (void)updateSelectedCategoryNames:(id)a3
{
  v4 = a3;
  v5 = [[NSMutableArray alloc] initWithArray:v4];

  selectedCategoryNames = self->_selectedCategoryNames;
  self->_selectedCategoryNames = v5;

  v7 = [(NSMutableArray *)self->_selectedCategoryNames copy];
  originalCategoryList = self->_originalCategoryList;
  self->_originalCategoryList = v7;

  [(ReportAProblemCategoryChooserViewController *)self _updateDoneBarButtonItem];
  v9 = [(ReportAProblemCategoryChooserViewController *)self tableView];
  [v9 reloadData];
}

- (void)scrollViewWillBeginDragging:(id)a3
{
  v5 = [(ReportAProblemCategoryChooserViewController *)self navigationItem];
  v3 = [v5 searchController];
  v4 = [v3 searchBar];
  [v4 endEditing:1];
}

- (void)updateBarButtonItems
{
  if ([(ReportAProblemCategoryChooserViewController *)self presentationStyle])
  {
    if ([(ReportAProblemCategoryChooserViewController *)self presentationStyle]== 1)
    {
      v3 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:1 target:self action:"_cancel"];
      v4 = [(ReportAProblemCategoryChooserViewController *)self navigationItem];
      [v4 setLeftBarButtonItem:v3];

      v5 = [(ReportAProblemCategoryChooserViewController *)self navigationItem];
      [v5 setHidesBackButton:1];

      v6 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:0 target:self action:"_didTapOnRightBarButtonItem"];
      v7 = [(ReportAProblemCategoryChooserViewController *)self navigationItem];
      [v7 setRightBarButtonItem:v6];

      [(ReportAProblemCategoryChooserViewController *)self _updateDoneBarButtonItem];
    }
  }

  else
  {
    v10 = +[NSBundle mainBundle];
    v8 = [v10 localizedStringForKey:@"Back" value:@"localized string not found" table:0];
    v9 = [(ReportAProblemCategoryChooserViewController *)self navigationItem];
    [v9 setBackButtonTitle:v8];
  }
}

- (id)searchBarDefaultPlaceholder
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"Search for a category" value:@"localized string not found" table:0];

  return v3;
}

- (void)viewDidAppear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = ReportAProblemCategoryChooserViewController;
  [(ReportAProblemCategoryChooserViewController *)&v5 viewDidAppear:a3];
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
  v4 = [(ReportAProblemCategoryChooserViewController *)self tableView];
  [v4 setDataSource:self];

  v5 = [(ReportAProblemCategoryChooserViewController *)self tableView];
  [v5 setKeyboardDismissMode:1];

  v6 = [(ReportAProblemCategoryChooserViewController *)self tableView];
  [v6 setRowHeight:UITableViewAutomaticDimension];

  v7 = [(ReportAProblemCategoryChooserViewController *)self traitCollection];
  v8 = [v7 userInterfaceIdiom];

  if (v8 == 5)
  {
    v9 = [(ReportAProblemCategoryChooserViewController *)self tableView];
    [v9 setSeparatorStyle:0];
  }

  else
  {
    v9 = [[UISearchController alloc] initWithSearchResultsController:0];
    [v9 setSearchResultsUpdater:self];
    [v9 setObscuresBackgroundDuringPresentation:0];
    [v9 setHidesNavigationBarDuringPresentation:0];
    v10 = [(ReportAProblemCategoryChooserViewController *)self fullCategoryList];
    v11 = [v10 count];
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
    v13 = [v9 searchBar];
    [v13 setPlaceholder:v12];

    if (!v11)
    {

      v12 = v2;
    }

    v14 = [v9 searchBar];
    [v14 setReturnKeyType:9];

    [v9 setAutomaticallyShowsCancelButton:0];
    v15 = [(ReportAProblemCategoryChooserViewController *)self navigationItem];
    [v15 setSearchController:v9];

    v16 = [(ReportAProblemCategoryChooserViewController *)self navigationItem];
    [v16 setHidesSearchBarWhenScrolling:0];
  }
}

- (void)_cancel
{
  v3 = [(ReportAProblemCategoryChooserViewController *)self chooserDelegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(ReportAProblemCategoryChooserViewController *)self chooserDelegate];
    [v5 categoryChooserViewController:self categoriesDidNotChange:self->_originalCategoryList];
  }

  [(ReportAProblemCategoryChooserViewController *)self _captureUserAction:10111];
  v6 = [(ReportAProblemCategoryChooserViewController *)self navigationItem];
  v7 = [v6 searchController];
  [v7 setActive:0];

  [(ReportAProblemCategoryChooserViewController *)self dismissViewControllerAnimated:1 completion:0];
}

- (void)saveCategoryAndDismissIfNecessary
{
  v3 = [(ReportAProblemCategoryChooserViewController *)self navigationItem];
  v4 = [v3 searchController];
  [v4 setActive:0];

  v5 = [(ReportAProblemCategoryChooserViewController *)self chooserDelegate];
  v6 = [(ReportAProblemCategoryChooserViewController *)self selectedCategoryNames];
  [v5 categoryChooserViewController:self didReceiveSelectedCategories:v6];

  v7 = [(ReportAProblemCategoryChooserViewController *)self traitCollection];
  v8 = [v7 userInterfaceIdiom];

  if (v8 == 5)
  {
    v10 = [(ReportAProblemCategoryChooserViewController *)self navigationController];
    v9 = [v10 popViewControllerAnimated:1];
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
  v5 = [(ReportAProblemCategoryChooserViewController *)self navigationItem];
  v6 = [v5 rightBarButtonItem];
  [v6 setEnabled:v4 ^ 1];
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

- (ReportAProblemCategoryChooserViewController)initWithPresentationStyle:(int64_t)a3 selectedCategoryNames:(id)a4
{
  v6 = a4;
  v24.receiver = self;
  v24.super_class = ReportAProblemCategoryChooserViewController;
  v7 = [(ReportAProblemCategoryChooserViewController *)&v24 initWithStyle:0];
  v8 = v7;
  if (v7)
  {
    v7->_presentationStyle = a3;
    [(ReportAProblemCategoryChooserViewController *)v7 updateBarButtonItems];
    v9 = [[UIColor alloc] initWithRed:0.984313726 green:0.23137255 blue:0.101960786 alpha:1.0];
    selectedTextColor = v8->_selectedTextColor;
    v8->_selectedTextColor = v9;

    v11 = [[NSMutableArray alloc] initWithArray:v6];
    selectedCategoryNames = v8->_selectedCategoryNames;
    v8->_selectedCategoryNames = v11;

    v13 = [(NSMutableArray *)v8->_selectedCategoryNames copy];
    originalCategoryList = v8->_originalCategoryList;
    v8->_originalCategoryList = v13;

    v15 = +[NSBundle mainBundle];
    v16 = [v15 localizedStringForKey:@"Select a Category" value:@"localized string not found" table:0];
    [(ReportAProblemCategoryChooserViewController *)v8 setTitle:v16];

    v17 = [(ReportAProblemCategoryChooserViewController *)v8 tableView];
    v18 = objc_opt_class();
    v19 = +[RAPCategorySearchTableViewCell identifier];
    [v17 registerClass:v18 forCellReuseIdentifier:v19];

    v20 = [(ReportAProblemCategoryChooserViewController *)v8 tableView];
    v21 = objc_opt_class();
    v22 = +[MacRAPCheckmarkCell identifier];
    [v20 registerClass:v21 forCellReuseIdentifier:v22];

    [(ReportAProblemCategoryChooserViewController *)v8 fetchLocalizedCategories];
  }

  return v8;
}

@end