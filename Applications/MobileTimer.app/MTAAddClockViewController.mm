@interface MTAAddClockViewController
+ (void)addCityFromUserActivity:(id)activity parentViewController:(id)controller;
- (CGRect)keyboardFrame;
- (MTAAddClockViewController)init;
- (MTAUpdateClockViewControllerDelegate)delegate;
- (double)_calculateVerticalMultiplierForKeyboard;
- (id)sectionIndexTitlesForTableView:(id)view;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (int64_t)tableView:(id)view sectionForSectionIndexTitle:(id)title atIndex:(int64_t)index;
- (void)_addAutolayoutConstraintsForNoResultsFoundLabel;
- (void)_dismiss;
- (void)_dismissWithoutDefferingTransitions;
- (void)_keyboardDidShow:(id)show;
- (void)_keyboardWillDismiss:(id)dismiss;
- (void)_keyboardWillResize:(id)resize;
- (void)_keyboardWillShow:(id)show;
- (void)_reloadNoResultsFoundLabelForKeyboardNotification:(id)notification;
- (void)_removeAutolayoutConstraintsForNoResultsFoundLabel;
- (void)_showNoResultsFound:(BOOL)found;
- (void)contentSizeCategoryDidChange;
- (void)prepopulateSuggestions;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)updateSearchResultsForSearchController:(id)controller;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)willTransitionToTraitCollection:(id)collection withTransitionCoordinator:(id)coordinator;
@end

@implementation MTAAddClockViewController

- (MTAAddClockViewController)init
{
  v4.receiver = self;
  v4.super_class = MTAAddClockViewController;
  v2 = [(MTAAddClockViewController *)&v4 initWithStyle:0];
  if (v2 && MTUIIsPadIdiom())
  {
    [(MTAAddClockViewController *)v2 setModalPresentationStyle:2];
  }

  return v2;
}

- (void)viewDidLoad
{
  v17.receiver = self;
  v17.super_class = MTAAddClockViewController;
  [(MTAAddClockViewController *)&v17 viewDidLoad];
  tableView = [(MTAAddClockViewController *)self tableView];
  v4 = +[UIColor mtui_tintColor];
  [tableView setTintColor:v4];

  v5 = +[UIColor mtui_tintColor];
  [tableView setSectionIndexColor:v5];

  v6 = +[UIColor mtui_backgroundColor];
  [tableView setBackgroundColor:v6];

  [tableView setEstimatedRowHeight:48.0];
  [tableView setRowHeight:UITableViewAutomaticDimension];
  v7 = +[UIColor clearColor];
  [tableView setSectionIndexBackgroundColor:v7];

  v8 = objc_opt_new();
  [tableView setTableFooterView:v8];

  [(MTAAddClockViewController *)self prepopulateSuggestions];
  v9 = [[MTASecuredSearchController alloc] initWithSearchResultsController:0];
  searchController = self->_searchController;
  self->_searchController = v9;

  [(MTASecuredSearchController *)self->_searchController setSearchResultsUpdater:self];
  [(MTASecuredSearchController *)self->_searchController setDelegate:self];
  [(MTASecuredSearchController *)self->_searchController setObscuresBackgroundDuringPresentation:0];
  searchBar = [(MTASecuredSearchController *)self->_searchController searchBar];
  [searchBar setAutocapitalizationType:0];
  [searchBar setKeyboardType:0];
  [searchBar setAutocorrectionType:1];
  [searchBar setKeyboardAppearance:1];
  [searchBar setTextContentType:UITextContentTypeAddressCityAndState];
  [searchBar setBackgroundColor:0];
  [searchBar setBackgroundImage:0 forBarPosition:0 barMetrics:101];
  navigationItem = [(MTAAddClockViewController *)self navigationItem];
  v13 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:1 target:self action:"_dismiss"];
  [navigationItem setLeftBarButtonItem:v13];

  [navigationItem setSearchController:self->_searchController];
  v14 = +[NSBundle mainBundle];
  v15 = [v14 localizedStringForKey:@"CHOOSE_CITY_TITLE" value:&stru_1000AEF10 table:0];
  [navigationItem setTitle:v15];

  v16 = +[NSNotificationCenter defaultCenter];
  [v16 addObserver:self selector:"contentSizeCategoryDidChange" name:UIContentSizeCategoryDidChangeNotification object:0];
}

- (void)willTransitionToTraitCollection:(id)collection withTransitionCoordinator:(id)coordinator
{
  v11.receiver = self;
  v11.super_class = MTAAddClockViewController;
  collectionCopy = collection;
  [(MTAAddClockViewController *)&v11 willTransitionToTraitCollection:collectionCopy withTransitionCoordinator:coordinator];
  v7 = [(MTAAddClockViewController *)self traitCollection:v11.receiver];
  horizontalSizeClass = [v7 horizontalSizeClass];
  horizontalSizeClass2 = [collectionCopy horizontalSizeClass];

  if (horizontalSizeClass != horizontalSizeClass2)
  {
    delegate = [(MTAAddClockViewController *)self delegate];
    [delegate dismissAddViewController:self];
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  v7.receiver = self;
  v7.super_class = MTAAddClockViewController;
  [(MTAAddClockViewController *)&v7 viewWillAppear:appear];
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 addObserver:self selector:"_keyboardWillShow:" name:UIKeyboardWillShowNotification object:0];

  v5 = +[NSNotificationCenter defaultCenter];
  [v5 addObserver:self selector:"_keyboardWillDismiss:" name:UIKeyboardWillHideNotification object:0];

  v6 = +[NSNotificationCenter defaultCenter];
  [v6 addObserver:self selector:"_keyboardDidShow:" name:UIKeyboardDidShowNotification object:0];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v7.receiver = self;
  v7.super_class = MTAAddClockViewController;
  [(MTAAddClockViewController *)&v7 viewWillDisappear:disappear];
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self name:UIKeyboardWillShowNotification object:0];

  v5 = +[NSNotificationCenter defaultCenter];
  [v5 removeObserver:self name:UIKeyboardWillHideNotification object:0];

  v6 = +[NSNotificationCenter defaultCenter];
  [v6 removeObserver:self name:UIKeyboardDidShowNotification object:0];
}

- (void)_dismiss
{
  delegate = [(MTAAddClockViewController *)self delegate];
  [delegate dismissAddViewController:self];
}

- (void)_dismissWithoutDefferingTransitions
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_1000508C0;
  v2[3] = &unk_1000AD9F0;
  v2[4] = self;
  [UIViewController _performWithoutDeferringTransitions:v2];
}

- (void)_showNoResultsFound:(BOOL)found
{
  foundCopy = found;
  tableView = [(MTAAddClockViewController *)self tableView];
  noResultsFoundLabel = [(MTAAddClockViewController *)self noResultsFoundLabel];
  v6 = noResultsFoundLabel;
  v7 = !foundCopy;
  if (!foundCopy || noResultsFoundLabel)
  {
    if (!noResultsFoundLabel)
    {
      v7 = 0;
    }

    if (v7 == 1)
    {
      [noResultsFoundLabel removeFromSuperview];
      [(MTAAddClockViewController *)self setNoResultsFoundLabel:0];
      [tableView setSeparatorStyle:1];
      [(MTAAddClockViewController *)self _removeAutolayoutConstraintsForNoResultsFoundLabel];
    }
  }

  else
  {
    v6 = objc_opt_new();
    [(MTAAddClockViewController *)self setNoResultsFoundLabel:v6];
    [v6 setOpaque:0];
    [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v6 setBackgroundColor:0];
    [v6 setTextAlignment:1];
    v8 = +[NSBundle mainBundle];
    v9 = [v8 localizedStringForKey:@"NO_RESULTS_FOUND" value:&stru_1000AEF10 table:0];
    [v6 setText:v9];

    v10 = +[UIColor mtui_primaryTextColor];
    [v6 setTextColor:v10];

    v11 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
    [v6 setFont:v11];

    [v6 setAdjustsFontForContentSizeCategory:1];
    [v6 sizeToFit];
    [tableView addSubview:v6];
    [(MTAAddClockViewController *)self _addAutolayoutConstraintsForNoResultsFoundLabel];
    [tableView setSeparatorStyle:0];
  }
}

- (void)prepopulateSuggestions
{
  v2 = +[ALCityManager sharedManager];
  allCities = [v2 allCities];
  v4 = [NSMutableArray arrayWithArray:allCities];

  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v5 = +[WorldClockManager sharedManager];
  cities = [v5 cities];

  v7 = [cities countByEnumeratingWithState:&v51 objects:v57 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v52;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v52 != v9)
        {
          objc_enumerationMutation(cities);
        }

        alCity = [*(*(&v51 + 1) + 8 * i) alCity];
        [v4 removeObject:alCity];
      }

      v8 = [cities countByEnumeratingWithState:&v51 objects:v57 count:16];
    }

    while (v8);
  }

  v41 = v4;
  v12 = [v4 sortedArrayUsingComparator:&stru_1000AE630];
  cities = self->_cities;
  self->_cities = v12;

  v14 = +[UILocalizedIndexedCollation currentCollation];
  sectionTitles = [v14 sectionTitles];
  v16 = [sectionTitles count];

  v17 = [NSMutableArray arrayWithCapacity:v16];
  if (v16)
  {
    v18 = v16;
    do
    {
      v19 = +[NSMutableArray array];
      [v17 addObject:v19];

      --v18;
    }

    while (v18);
  }

  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v20 = self->_cities;
  v21 = [(NSArray *)v20 countByEnumeratingWithState:&v47 objects:v56 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v48;
    do
    {
      for (j = 0; j != v22; j = j + 1)
      {
        if (*v48 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = *(*(&v47 + 1) + 8 * j);
        v26 = [v17 objectAtIndex:{objc_msgSend(v14, "sectionForObject:collationStringSelector:", v25, "name")}];
        [v26 addObject:v25];
      }

      v22 = [(NSArray *)v20 countByEnumeratingWithState:&v47 objects:v56 count:16];
    }

    while (v22);
  }

  v27 = [[NSMutableArray alloc] initWithCapacity:v16];
  v28 = objc_alloc_init(NSMutableIndexSet);
  populatedIndexSet = self->_populatedIndexSet;
  self->_populatedIndexSet = v28;

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v30 = v17;
  v31 = [v30 countByEnumeratingWithState:&v43 objects:v55 count:16];
  if (v31)
  {
    v32 = v31;
    v33 = 0;
    v34 = *v44;
    do
    {
      for (k = 0; k != v32; k = k + 1)
      {
        if (*v44 != v34)
        {
          objc_enumerationMutation(v30);
        }

        v36 = [v14 sortedArrayFromArray:*(*(&v43 + 1) + 8 * k) collationStringSelector:"name"];
        [(NSArray *)v27 addObject:v36];
        if ([v36 count])
        {
          [(NSMutableIndexSet *)self->_populatedIndexSet addIndex:v33];
        }

        ++v33;
      }

      v32 = [v30 countByEnumeratingWithState:&v43 objects:v55 count:16];
    }

    while (v32);
  }

  sectionIndexTitles = [v14 sectionIndexTitles];
  sectionIndexTitles = self->_sectionIndexTitles;
  self->_sectionIndexTitles = sectionIndexTitles;

  partitionedCities = self->_partitionedCities;
  self->_partitionedCities = v27;

  tableView = [(MTAAddClockViewController *)self tableView];
  [tableView reloadData];
}

- (id)sectionIndexTitlesForTableView:(id)view
{
  if (self->_partitionedCities)
  {
    return self->_sectionIndexTitles;
  }

  else
  {
    return 0;
  }
}

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  v5 = [(NSArray *)self->_partitionedCities objectAtIndex:section];
  v6 = [v5 count];

  if (v6)
  {
    v7 = +[UILocalizedIndexedCollation currentCollation];
    sectionTitles = [v7 sectionTitles];
    v9 = [sectionTitles objectAtIndex:section];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)contentSizeCategoryDidChange
{
  tableView = [(MTAAddClockViewController *)self tableView];
  [tableView contentOffset];
  v3 = v2;
  v5 = v4;
  [tableView reloadData];
  [tableView setContentOffset:0 animated:{v3, v5}];
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  result = [(NSArray *)self->_cities count];
  if (self->_partitionedCities)
  {
    v7 = [(NSArray *)self->_partitionedCities objectAtIndex:section];
    v8 = [v7 count];

    return v8;
  }

  return result;
}

- (int64_t)numberOfSectionsInTableView:(id)view
{
  if (!self->_partitionedCities)
  {
    return 1;
  }

  v3 = +[UILocalizedIndexedCollation currentCollation];
  sectionTitles = [v3 sectionTitles];
  v5 = [sectionTitles count];

  return v5;
}

- (int64_t)tableView:(id)view sectionForSectionIndexTitle:(id)title atIndex:(int64_t)index
{
  v7 = [UILocalizedIndexedCollation currentCollation:view];
  v8 = [v7 sectionForSectionIndexTitleAtIndex:index];

  v9 = [(NSMutableIndexSet *)self->_populatedIndexSet indexGreaterThanOrEqualToIndex:v8];
  result = [(NSMutableIndexSet *)self->_populatedIndexSet indexLessThanIndex:v8];
  if (v9 != 0x7FFFFFFFFFFFFFFFLL)
  {
    return v9;
  }

  return result;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  v7 = [view dequeueReusableCellWithIdentifier:@"ClockSearchCellIdentifier"];
  if (!v7)
  {
    v7 = [[MTAClockSearchCell alloc] initWithStyle:0 reuseIdentifier:0];
    v8 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
    textLabel = [(MTAClockSearchCell *)v7 textLabel];
    [textLabel setFont:v8];

    textLabel2 = [(MTAClockSearchCell *)v7 textLabel];
    [textLabel2 setAdjustsFontForContentSizeCategory:1];
  }

  if ([pathCopy row] != 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = -[NSArray objectAtIndex:](self->_cities, "objectAtIndex:", [pathCopy row]);
    partitionedCities = self->_partitionedCities;
    if (partitionedCities)
    {
      v13 = -[NSArray objectAtIndex:](partitionedCities, "objectAtIndex:", [pathCopy section]);
      v14 = [v13 objectAtIndex:{objc_msgSend(pathCopy, "row")}];

      v11 = v14;
    }

    v15 = [v11 displayNameIncludingCountry:1];
    textLabel3 = [(MTAClockSearchCell *)v7 textLabel];
    [textLabel3 setText:v15];

    v17 = [v11 displayNameIncludingCountry:1 withFormat:@"%@\n%@"];
    [(MTAClockSearchCell *)v7 setContentString:v17];

    v18 = +[UIColor mtui_primaryTextColor];
    textLabel4 = [(MTAClockSearchCell *)v7 textLabel];
    [textLabel4 setTextColor:v18];

    v20 = +[UIColor mtui_backgroundColor];
    [(MTAClockSearchCell *)v7 setBackgroundColor:v20];

    v21 = +[UIColor mtui_cellHighlightColor];
    [(MTAClockSearchCell *)v7 setSelectedBackgroundColor:v21];
  }

  return v7;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  if ([pathCopy row] != 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = +[NSNotificationCenter defaultCenter];
    [v5 removeObserver:self];

    v6 = -[NSArray objectAtIndex:](self->_cities, "objectAtIndex:", [pathCopy row]);
    partitionedCities = self->_partitionedCities;
    if (partitionedCities)
    {
      v8 = -[NSArray objectAtIndex:](partitionedCities, "objectAtIndex:", [pathCopy section]);
      v9 = [v8 objectAtIndex:{objc_msgSend(pathCopy, "row")}];

      v6 = v9;
    }

    [(MTASecuredSearchController *)self->_searchController resignFirstResponder];
    v10 = [[WorldClockCity alloc] initWithALCity:v6];
    delegate = [(MTAAddClockViewController *)self delegate];
    [delegate addClockViewController:self addCity:v10];

    delegate2 = [(MTAAddClockViewController *)self delegate];
    [delegate2 dismissAddViewController:self];
  }
}

- (void)updateSearchResultsForSearchController:(id)controller
{
  searchBar = [controller searchBar];
  text = [searchBar text];

  partitionedCities = self->_partitionedCities;
  self->_partitionedCities = 0;

  if ([text length])
  {
    v6 = +[ALCityManager sharedManager];
    v7 = [v6 citiesMatchingName:text];

    v8 = [v7 sortedArrayUsingComparator:&stru_1000AE650];
    cities = self->_cities;
    self->_cities = v8;
  }

  else
  {
    v10 = self->_cities;
    self->_cities = 0;

    [(MTAAddClockViewController *)self prepopulateSuggestions];
  }

  tableView = [(MTAAddClockViewController *)self tableView];
  [tableView reloadData];

  if ([(NSArray *)self->_cities count])
  {
    tableView2 = [(MTAAddClockViewController *)self tableView];
    view = [(MTAAddClockViewController *)self view];
    [view safeAreaInsets];
    [tableView2 setContentOffset:1 animated:{0.0, -v14}];
  }

  if ([text length] && !-[NSArray count](self->_cities, "count"))
  {
    v15 = [text isEqualToString:@"\n"] ^ 1;
  }

  else
  {
    v15 = 0;
  }

  [(MTAAddClockViewController *)self _showNoResultsFound:v15];
}

- (void)_addAutolayoutConstraintsForNoResultsFoundLabel
{
  tableView = [(MTAAddClockViewController *)self tableView];
  noResultsFoundLabel = [(MTAAddClockViewController *)self noResultsFoundLabel];
  centerNoResultsFoundLabelConstraints = [(MTAAddClockViewController *)self centerNoResultsFoundLabelConstraints];

  if (!centerNoResultsFoundLabelConstraints)
  {
    v5 = objc_opt_new();
    centerXAnchor = [noResultsFoundLabel centerXAnchor];
    centerXAnchor2 = [tableView centerXAnchor];
    v8 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    [v5 addObject:v8];

    [(MTAAddClockViewController *)self _calculateVerticalMultiplierForKeyboard];
    if (v9 > 0.0)
    {
      v10 = [NSLayoutConstraint constraintWithItem:"constraintWithItem:attribute:relatedBy:toItem:attribute:multiplier:constant:" attribute:noResultsFoundLabel relatedBy:10 toItem:0 attribute:tableView multiplier:10 constant:?];
      [v5 addObject:v10];
    }

    [(MTAAddClockViewController *)self setCenterNoResultsFoundLabelConstraints:v5];
  }

  centerNoResultsFoundLabelConstraints2 = [(MTAAddClockViewController *)self centerNoResultsFoundLabelConstraints];
  [tableView addConstraints:centerNoResultsFoundLabelConstraints2];
}

- (double)_calculateVerticalMultiplierForKeyboard
{
  view = [(MTAAddClockViewController *)self view];
  [view frame];
  v5 = v4;

  [(MTAAddClockViewController *)self keyboardFrame];
  v14.origin.x = v6;
  v14.origin.y = v7;
  v14.size.width = v8;
  v10 = v9;
  v13.origin.x = CGRectZero.origin.x;
  v13.origin.y = CGRectZero.origin.y;
  v13.size.width = CGRectZero.size.width;
  v13.size.height = CGRectZero.size.height;
  v14.size.height = v10;
  v11 = CGRectEqualToRect(v13, v14);
  result = 1.0;
  if (!v11)
  {
    return fmax(v10 / v5, 0.5);
  }

  return result;
}

- (void)_removeAutolayoutConstraintsForNoResultsFoundLabel
{
  centerNoResultsFoundLabelConstraints = [(MTAAddClockViewController *)self centerNoResultsFoundLabelConstraints];
  if (centerNoResultsFoundLabelConstraints)
  {
    v5 = centerNoResultsFoundLabelConstraints;
    tableView = [(MTAAddClockViewController *)self tableView];
    [tableView removeConstraints:v5];

    [(MTAAddClockViewController *)self setCenterNoResultsFoundLabelConstraints:0];
    centerNoResultsFoundLabelConstraints = v5;
  }
}

- (void)_keyboardWillShow:(id)show
{
  userInfo = [show userInfo];
  v4 = [userInfo objectForKeyedSubscript:UIKeyboardFrameEndUserInfoKey];
  [v4 CGRectValue];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  view = [(MTAAddClockViewController *)self view];
  [view convertRect:0 fromView:{v6, v8, v10, v12}];
  [(MTAAddClockViewController *)self setKeyboardFrame:?];

  [(MTAAddClockViewController *)self _reloadNoResultsFoundLabelForKeyboardNotification:userInfo];
  v14 = +[UIColor clearColor];
  searchBar = [(MTASecuredSearchController *)self->_searchController searchBar];
  [searchBar setTintColor:v14];

  v16 = +[NSNotificationCenter defaultCenter];
  [v16 addObserver:self selector:"_keyboardWillResize:" name:UIKeyboardWillChangeFrameNotification object:0];
}

- (void)_keyboardDidShow:(id)show
{
  v6 = +[UISearchBar appearance];
  tintColor = [v6 tintColor];
  searchBar = [(MTASecuredSearchController *)self->_searchController searchBar];
  [searchBar setTintColor:tintColor];
}

- (void)_keyboardWillDismiss:(id)dismiss
{
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  dismissCopy = dismiss;
  [(MTAAddClockViewController *)self setKeyboardFrame:CGRectZero.origin.x, y, width, height];
  userInfo = [dismissCopy userInfo];

  [(MTAAddClockViewController *)self _reloadNoResultsFoundLabelForKeyboardNotification:userInfo];
  v9 = +[NSNotificationCenter defaultCenter];
  [v9 removeObserver:self name:UIKeyboardWillChangeFrameNotification object:0];
}

- (void)_keyboardWillResize:(id)resize
{
  userInfo = [resize userInfo];
  v4 = [userInfo objectForKeyedSubscript:UIKeyboardFrameEndUserInfoKey];
  [v4 CGRectValue];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  view = [(MTAAddClockViewController *)self view];
  [view convertRect:0 fromView:{v6, v8, v10, v12}];
  [(MTAAddClockViewController *)self setKeyboardFrame:?];

  [(MTAAddClockViewController *)self _reloadNoResultsFoundLabelForKeyboardNotification:userInfo];
}

- (void)_reloadNoResultsFoundLabelForKeyboardNotification:(id)notification
{
  notificationCopy = notification;
  noResultsFoundLabel = [(MTAAddClockViewController *)self noResultsFoundLabel];

  if (noResultsFoundLabel)
  {
    v5 = [notificationCopy objectForKeyedSubscript:UIKeyboardAnimationDurationUserInfoKey];
    [v5 doubleValue];
    v7 = v6;

    v8 = [notificationCopy objectForKeyedSubscript:UIKeyboardAnimationCurveUserInfoKey];
    integerValue = [v8 integerValue];

    [UIView beginAnimations:0 context:0];
    [UIView setAnimationDuration:v7];
    [UIView setAnimationCurve:integerValue];
    [UIView setAnimationBeginsFromCurrentState:1];
    [(MTAAddClockViewController *)self _removeAutolayoutConstraintsForNoResultsFoundLabel];
    [(MTAAddClockViewController *)self _addAutolayoutConstraintsForNoResultsFoundLabel];
    view = [(MTAAddClockViewController *)self view];
    [view layoutIfNeeded];

    +[UIView commitAnimations];
  }
}

+ (void)addCityFromUserActivity:(id)activity parentViewController:(id)controller
{
  controllerCopy = controller;
  userInfo = [activity userInfo];
  v7 = [userInfo objectForKeyedSubscript:@"TimeZone"];
  v8 = [NSTimeZone timeZoneWithName:v7];

  if (v8)
  {
    v9 = [userInfo objectForKeyedSubscript:@"Latitude"];
    [v9 doubleValue];
    v11 = v10;

    v12 = [userInfo objectForKeyedSubscript:@"Longitude"];
    [v12 doubleValue];
    v14 = v13;

    v15 = [[CLLocation alloc] initWithLatitude:v11 longitude:v14];
    v16 = +[WorldClockManager sharedManager];
    v17 = [v16 closestCityToLocation:v15 matchingTimeZone:v8];
    cities = [v16 cities];

    if (!cities)
    {
      [v16 loadCities];
    }

    cities2 = [v16 cities];
    v20 = [cities2 indexOfObject:v17];

    if (v20 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v21 = +[NSBundle mainBundle];
      v22 = [v21 localizedStringForKey:@"ADD_WORLD_CLOCK_FORMAT" value:&stru_1000AEF10 table:0];
      name = [v17 name];
      v24 = [NSString stringWithFormat:v22, name];

      v25 = [UIAlertController alertControllerWithTitle:v24 message:0 preferredStyle:1];
      v35 = controllerCopy;
      v26 = +[NSBundle mainBundle];
      [v26 localizedStringForKey:@"CANCEL" value:&stru_1000AEF10 table:0];
      v27 = v34 = v15;
      v28 = [UIAlertAction actionWithTitle:v27 style:1 handler:0];
      [v25 addAction:v28];

      v29 = +[NSBundle mainBundle];
      v30 = [v29 localizedStringForKey:@"ADD_CLOCK" value:&stru_1000AEF10 table:0];
      v39[0] = _NSConcreteStackBlock;
      v39[1] = 3221225472;
      v39[2] = sub_1000522C8;
      v39[3] = &unk_1000AE678;
      v31 = controllerCopy;
      v40 = v31;
      v41 = v17;
      v32 = [UIAlertAction actionWithTitle:v30 style:0 handler:v39];
      [v25 addAction:v32];

      v15 = v34;
      v33 = v31;
      controllerCopy = v35;
      [v33 presentViewController:v25 animated:1 completion:0];
    }

    else
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100052310;
      block[3] = &unk_1000AE6A0;
      v37 = controllerCopy;
      v38 = v20;
      dispatch_async(&_dispatch_main_q, block);
      v24 = v37;
    }
  }
}

- (MTAUpdateClockViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CGRect)keyboardFrame
{
  x = self->_keyboardFrame.origin.x;
  y = self->_keyboardFrame.origin.y;
  width = self->_keyboardFrame.size.width;
  height = self->_keyboardFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end