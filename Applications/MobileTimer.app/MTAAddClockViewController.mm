@interface MTAAddClockViewController
+ (void)addCityFromUserActivity:(id)a3 parentViewController:(id)a4;
- (CGRect)keyboardFrame;
- (MTAAddClockViewController)init;
- (MTAUpdateClockViewControllerDelegate)delegate;
- (double)_calculateVerticalMultiplierForKeyboard;
- (id)sectionIndexTitlesForTableView:(id)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (int64_t)tableView:(id)a3 sectionForSectionIndexTitle:(id)a4 atIndex:(int64_t)a5;
- (void)_addAutolayoutConstraintsForNoResultsFoundLabel;
- (void)_dismiss;
- (void)_dismissWithoutDefferingTransitions;
- (void)_keyboardDidShow:(id)a3;
- (void)_keyboardWillDismiss:(id)a3;
- (void)_keyboardWillResize:(id)a3;
- (void)_keyboardWillShow:(id)a3;
- (void)_reloadNoResultsFoundLabelForKeyboardNotification:(id)a3;
- (void)_removeAutolayoutConstraintsForNoResultsFoundLabel;
- (void)_showNoResultsFound:(BOOL)a3;
- (void)contentSizeCategoryDidChange;
- (void)prepopulateSuggestions;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)updateSearchResultsForSearchController:(id)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)willTransitionToTraitCollection:(id)a3 withTransitionCoordinator:(id)a4;
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
  v3 = [(MTAAddClockViewController *)self tableView];
  v4 = +[UIColor mtui_tintColor];
  [v3 setTintColor:v4];

  v5 = +[UIColor mtui_tintColor];
  [v3 setSectionIndexColor:v5];

  v6 = +[UIColor mtui_backgroundColor];
  [v3 setBackgroundColor:v6];

  [v3 setEstimatedRowHeight:48.0];
  [v3 setRowHeight:UITableViewAutomaticDimension];
  v7 = +[UIColor clearColor];
  [v3 setSectionIndexBackgroundColor:v7];

  v8 = objc_opt_new();
  [v3 setTableFooterView:v8];

  [(MTAAddClockViewController *)self prepopulateSuggestions];
  v9 = [[MTASecuredSearchController alloc] initWithSearchResultsController:0];
  searchController = self->_searchController;
  self->_searchController = v9;

  [(MTASecuredSearchController *)self->_searchController setSearchResultsUpdater:self];
  [(MTASecuredSearchController *)self->_searchController setDelegate:self];
  [(MTASecuredSearchController *)self->_searchController setObscuresBackgroundDuringPresentation:0];
  v11 = [(MTASecuredSearchController *)self->_searchController searchBar];
  [v11 setAutocapitalizationType:0];
  [v11 setKeyboardType:0];
  [v11 setAutocorrectionType:1];
  [v11 setKeyboardAppearance:1];
  [v11 setTextContentType:UITextContentTypeAddressCityAndState];
  [v11 setBackgroundColor:0];
  [v11 setBackgroundImage:0 forBarPosition:0 barMetrics:101];
  v12 = [(MTAAddClockViewController *)self navigationItem];
  v13 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:1 target:self action:"_dismiss"];
  [v12 setLeftBarButtonItem:v13];

  [v12 setSearchController:self->_searchController];
  v14 = +[NSBundle mainBundle];
  v15 = [v14 localizedStringForKey:@"CHOOSE_CITY_TITLE" value:&stru_1000AEF10 table:0];
  [v12 setTitle:v15];

  v16 = +[NSNotificationCenter defaultCenter];
  [v16 addObserver:self selector:"contentSizeCategoryDidChange" name:UIContentSizeCategoryDidChangeNotification object:0];
}

- (void)willTransitionToTraitCollection:(id)a3 withTransitionCoordinator:(id)a4
{
  v11.receiver = self;
  v11.super_class = MTAAddClockViewController;
  v6 = a3;
  [(MTAAddClockViewController *)&v11 willTransitionToTraitCollection:v6 withTransitionCoordinator:a4];
  v7 = [(MTAAddClockViewController *)self traitCollection:v11.receiver];
  v8 = [v7 horizontalSizeClass];
  v9 = [v6 horizontalSizeClass];

  if (v8 != v9)
  {
    v10 = [(MTAAddClockViewController *)self delegate];
    [v10 dismissAddViewController:self];
  }
}

- (void)viewWillAppear:(BOOL)a3
{
  v7.receiver = self;
  v7.super_class = MTAAddClockViewController;
  [(MTAAddClockViewController *)&v7 viewWillAppear:a3];
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 addObserver:self selector:"_keyboardWillShow:" name:UIKeyboardWillShowNotification object:0];

  v5 = +[NSNotificationCenter defaultCenter];
  [v5 addObserver:self selector:"_keyboardWillDismiss:" name:UIKeyboardWillHideNotification object:0];

  v6 = +[NSNotificationCenter defaultCenter];
  [v6 addObserver:self selector:"_keyboardDidShow:" name:UIKeyboardDidShowNotification object:0];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v7.receiver = self;
  v7.super_class = MTAAddClockViewController;
  [(MTAAddClockViewController *)&v7 viewWillDisappear:a3];
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self name:UIKeyboardWillShowNotification object:0];

  v5 = +[NSNotificationCenter defaultCenter];
  [v5 removeObserver:self name:UIKeyboardWillHideNotification object:0];

  v6 = +[NSNotificationCenter defaultCenter];
  [v6 removeObserver:self name:UIKeyboardDidShowNotification object:0];
}

- (void)_dismiss
{
  v3 = [(MTAAddClockViewController *)self delegate];
  [v3 dismissAddViewController:self];
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

- (void)_showNoResultsFound:(BOOL)a3
{
  v3 = a3;
  v12 = [(MTAAddClockViewController *)self tableView];
  v5 = [(MTAAddClockViewController *)self noResultsFoundLabel];
  v6 = v5;
  v7 = !v3;
  if (!v3 || v5)
  {
    if (!v5)
    {
      v7 = 0;
    }

    if (v7 == 1)
    {
      [v5 removeFromSuperview];
      [(MTAAddClockViewController *)self setNoResultsFoundLabel:0];
      [v12 setSeparatorStyle:1];
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
    [v12 addSubview:v6];
    [(MTAAddClockViewController *)self _addAutolayoutConstraintsForNoResultsFoundLabel];
    [v12 setSeparatorStyle:0];
  }
}

- (void)prepopulateSuggestions
{
  v2 = +[ALCityManager sharedManager];
  v3 = [v2 allCities];
  v4 = [NSMutableArray arrayWithArray:v3];

  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v5 = +[WorldClockManager sharedManager];
  v6 = [v5 cities];

  v7 = [v6 countByEnumeratingWithState:&v51 objects:v57 count:16];
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
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v51 + 1) + 8 * i) alCity];
        [v4 removeObject:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v51 objects:v57 count:16];
    }

    while (v8);
  }

  v41 = v4;
  v12 = [v4 sortedArrayUsingComparator:&stru_1000AE630];
  cities = self->_cities;
  self->_cities = v12;

  v14 = +[UILocalizedIndexedCollation currentCollation];
  v15 = [v14 sectionTitles];
  v16 = [v15 count];

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

  v37 = [v14 sectionIndexTitles];
  sectionIndexTitles = self->_sectionIndexTitles;
  self->_sectionIndexTitles = v37;

  partitionedCities = self->_partitionedCities;
  self->_partitionedCities = v27;

  v40 = [(MTAAddClockViewController *)self tableView];
  [v40 reloadData];
}

- (id)sectionIndexTitlesForTableView:(id)a3
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

- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4
{
  v5 = [(NSArray *)self->_partitionedCities objectAtIndex:a4];
  v6 = [v5 count];

  if (v6)
  {
    v7 = +[UILocalizedIndexedCollation currentCollation];
    v8 = [v7 sectionTitles];
    v9 = [v8 objectAtIndex:a4];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)contentSizeCategoryDidChange
{
  v6 = [(MTAAddClockViewController *)self tableView];
  [v6 contentOffset];
  v3 = v2;
  v5 = v4;
  [v6 reloadData];
  [v6 setContentOffset:0 animated:{v3, v5}];
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  result = [(NSArray *)self->_cities count];
  if (self->_partitionedCities)
  {
    v7 = [(NSArray *)self->_partitionedCities objectAtIndex:a4];
    v8 = [v7 count];

    return v8;
  }

  return result;
}

- (int64_t)numberOfSectionsInTableView:(id)a3
{
  if (!self->_partitionedCities)
  {
    return 1;
  }

  v3 = +[UILocalizedIndexedCollation currentCollation];
  v4 = [v3 sectionTitles];
  v5 = [v4 count];

  return v5;
}

- (int64_t)tableView:(id)a3 sectionForSectionIndexTitle:(id)a4 atIndex:(int64_t)a5
{
  v7 = [UILocalizedIndexedCollation currentCollation:a3];
  v8 = [v7 sectionForSectionIndexTitleAtIndex:a5];

  v9 = [(NSMutableIndexSet *)self->_populatedIndexSet indexGreaterThanOrEqualToIndex:v8];
  result = [(NSMutableIndexSet *)self->_populatedIndexSet indexLessThanIndex:v8];
  if (v9 != 0x7FFFFFFFFFFFFFFFLL)
  {
    return v9;
  }

  return result;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = [a3 dequeueReusableCellWithIdentifier:@"ClockSearchCellIdentifier"];
  if (!v7)
  {
    v7 = [[MTAClockSearchCell alloc] initWithStyle:0 reuseIdentifier:0];
    v8 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
    v9 = [(MTAClockSearchCell *)v7 textLabel];
    [v9 setFont:v8];

    v10 = [(MTAClockSearchCell *)v7 textLabel];
    [v10 setAdjustsFontForContentSizeCategory:1];
  }

  if ([v6 row] != 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = -[NSArray objectAtIndex:](self->_cities, "objectAtIndex:", [v6 row]);
    partitionedCities = self->_partitionedCities;
    if (partitionedCities)
    {
      v13 = -[NSArray objectAtIndex:](partitionedCities, "objectAtIndex:", [v6 section]);
      v14 = [v13 objectAtIndex:{objc_msgSend(v6, "row")}];

      v11 = v14;
    }

    v15 = [v11 displayNameIncludingCountry:1];
    v16 = [(MTAClockSearchCell *)v7 textLabel];
    [v16 setText:v15];

    v17 = [v11 displayNameIncludingCountry:1 withFormat:@"%@\n%@"];
    [(MTAClockSearchCell *)v7 setContentString:v17];

    v18 = +[UIColor mtui_primaryTextColor];
    v19 = [(MTAClockSearchCell *)v7 textLabel];
    [v19 setTextColor:v18];

    v20 = +[UIColor mtui_backgroundColor];
    [(MTAClockSearchCell *)v7 setBackgroundColor:v20];

    v21 = +[UIColor mtui_cellHighlightColor];
    [(MTAClockSearchCell *)v7 setSelectedBackgroundColor:v21];
  }

  return v7;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v13 = a4;
  if ([v13 row] != 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = +[NSNotificationCenter defaultCenter];
    [v5 removeObserver:self];

    v6 = -[NSArray objectAtIndex:](self->_cities, "objectAtIndex:", [v13 row]);
    partitionedCities = self->_partitionedCities;
    if (partitionedCities)
    {
      v8 = -[NSArray objectAtIndex:](partitionedCities, "objectAtIndex:", [v13 section]);
      v9 = [v8 objectAtIndex:{objc_msgSend(v13, "row")}];

      v6 = v9;
    }

    [(MTASecuredSearchController *)self->_searchController resignFirstResponder];
    v10 = [[WorldClockCity alloc] initWithALCity:v6];
    v11 = [(MTAAddClockViewController *)self delegate];
    [v11 addClockViewController:self addCity:v10];

    v12 = [(MTAAddClockViewController *)self delegate];
    [v12 dismissAddViewController:self];
  }
}

- (void)updateSearchResultsForSearchController:(id)a3
{
  v4 = [a3 searchBar];
  v16 = [v4 text];

  partitionedCities = self->_partitionedCities;
  self->_partitionedCities = 0;

  if ([v16 length])
  {
    v6 = +[ALCityManager sharedManager];
    v7 = [v6 citiesMatchingName:v16];

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

  v11 = [(MTAAddClockViewController *)self tableView];
  [v11 reloadData];

  if ([(NSArray *)self->_cities count])
  {
    v12 = [(MTAAddClockViewController *)self tableView];
    v13 = [(MTAAddClockViewController *)self view];
    [v13 safeAreaInsets];
    [v12 setContentOffset:1 animated:{0.0, -v14}];
  }

  if ([v16 length] && !-[NSArray count](self->_cities, "count"))
  {
    v15 = [v16 isEqualToString:@"\n"] ^ 1;
  }

  else
  {
    v15 = 0;
  }

  [(MTAAddClockViewController *)self _showNoResultsFound:v15];
}

- (void)_addAutolayoutConstraintsForNoResultsFoundLabel
{
  v12 = [(MTAAddClockViewController *)self tableView];
  v3 = [(MTAAddClockViewController *)self noResultsFoundLabel];
  v4 = [(MTAAddClockViewController *)self centerNoResultsFoundLabelConstraints];

  if (!v4)
  {
    v5 = objc_opt_new();
    v6 = [v3 centerXAnchor];
    v7 = [v12 centerXAnchor];
    v8 = [v6 constraintEqualToAnchor:v7];
    [v5 addObject:v8];

    [(MTAAddClockViewController *)self _calculateVerticalMultiplierForKeyboard];
    if (v9 > 0.0)
    {
      v10 = [NSLayoutConstraint constraintWithItem:"constraintWithItem:attribute:relatedBy:toItem:attribute:multiplier:constant:" attribute:v3 relatedBy:10 toItem:0 attribute:v12 multiplier:10 constant:?];
      [v5 addObject:v10];
    }

    [(MTAAddClockViewController *)self setCenterNoResultsFoundLabelConstraints:v5];
  }

  v11 = [(MTAAddClockViewController *)self centerNoResultsFoundLabelConstraints];
  [v12 addConstraints:v11];
}

- (double)_calculateVerticalMultiplierForKeyboard
{
  v3 = [(MTAAddClockViewController *)self view];
  [v3 frame];
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
  v3 = [(MTAAddClockViewController *)self centerNoResultsFoundLabelConstraints];
  if (v3)
  {
    v5 = v3;
    v4 = [(MTAAddClockViewController *)self tableView];
    [v4 removeConstraints:v5];

    [(MTAAddClockViewController *)self setCenterNoResultsFoundLabelConstraints:0];
    v3 = v5;
  }
}

- (void)_keyboardWillShow:(id)a3
{
  v17 = [a3 userInfo];
  v4 = [v17 objectForKeyedSubscript:UIKeyboardFrameEndUserInfoKey];
  [v4 CGRectValue];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = [(MTAAddClockViewController *)self view];
  [v13 convertRect:0 fromView:{v6, v8, v10, v12}];
  [(MTAAddClockViewController *)self setKeyboardFrame:?];

  [(MTAAddClockViewController *)self _reloadNoResultsFoundLabelForKeyboardNotification:v17];
  v14 = +[UIColor clearColor];
  v15 = [(MTASecuredSearchController *)self->_searchController searchBar];
  [v15 setTintColor:v14];

  v16 = +[NSNotificationCenter defaultCenter];
  [v16 addObserver:self selector:"_keyboardWillResize:" name:UIKeyboardWillChangeFrameNotification object:0];
}

- (void)_keyboardDidShow:(id)a3
{
  v6 = +[UISearchBar appearance];
  v4 = [v6 tintColor];
  v5 = [(MTASecuredSearchController *)self->_searchController searchBar];
  [v5 setTintColor:v4];
}

- (void)_keyboardWillDismiss:(id)a3
{
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v7 = a3;
  [(MTAAddClockViewController *)self setKeyboardFrame:CGRectZero.origin.x, y, width, height];
  v8 = [v7 userInfo];

  [(MTAAddClockViewController *)self _reloadNoResultsFoundLabelForKeyboardNotification:v8];
  v9 = +[NSNotificationCenter defaultCenter];
  [v9 removeObserver:self name:UIKeyboardWillChangeFrameNotification object:0];
}

- (void)_keyboardWillResize:(id)a3
{
  v14 = [a3 userInfo];
  v4 = [v14 objectForKeyedSubscript:UIKeyboardFrameEndUserInfoKey];
  [v4 CGRectValue];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = [(MTAAddClockViewController *)self view];
  [v13 convertRect:0 fromView:{v6, v8, v10, v12}];
  [(MTAAddClockViewController *)self setKeyboardFrame:?];

  [(MTAAddClockViewController *)self _reloadNoResultsFoundLabelForKeyboardNotification:v14];
}

- (void)_reloadNoResultsFoundLabelForKeyboardNotification:(id)a3
{
  v11 = a3;
  v4 = [(MTAAddClockViewController *)self noResultsFoundLabel];

  if (v4)
  {
    v5 = [v11 objectForKeyedSubscript:UIKeyboardAnimationDurationUserInfoKey];
    [v5 doubleValue];
    v7 = v6;

    v8 = [v11 objectForKeyedSubscript:UIKeyboardAnimationCurveUserInfoKey];
    v9 = [v8 integerValue];

    [UIView beginAnimations:0 context:0];
    [UIView setAnimationDuration:v7];
    [UIView setAnimationCurve:v9];
    [UIView setAnimationBeginsFromCurrentState:1];
    [(MTAAddClockViewController *)self _removeAutolayoutConstraintsForNoResultsFoundLabel];
    [(MTAAddClockViewController *)self _addAutolayoutConstraintsForNoResultsFoundLabel];
    v10 = [(MTAAddClockViewController *)self view];
    [v10 layoutIfNeeded];

    +[UIView commitAnimations];
  }
}

+ (void)addCityFromUserActivity:(id)a3 parentViewController:(id)a4
{
  v5 = a4;
  v6 = [a3 userInfo];
  v7 = [v6 objectForKeyedSubscript:@"TimeZone"];
  v8 = [NSTimeZone timeZoneWithName:v7];

  if (v8)
  {
    v9 = [v6 objectForKeyedSubscript:@"Latitude"];
    [v9 doubleValue];
    v11 = v10;

    v12 = [v6 objectForKeyedSubscript:@"Longitude"];
    [v12 doubleValue];
    v14 = v13;

    v15 = [[CLLocation alloc] initWithLatitude:v11 longitude:v14];
    v16 = +[WorldClockManager sharedManager];
    v17 = [v16 closestCityToLocation:v15 matchingTimeZone:v8];
    v18 = [v16 cities];

    if (!v18)
    {
      [v16 loadCities];
    }

    v19 = [v16 cities];
    v20 = [v19 indexOfObject:v17];

    if (v20 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v21 = +[NSBundle mainBundle];
      v22 = [v21 localizedStringForKey:@"ADD_WORLD_CLOCK_FORMAT" value:&stru_1000AEF10 table:0];
      v23 = [v17 name];
      v24 = [NSString stringWithFormat:v22, v23];

      v25 = [UIAlertController alertControllerWithTitle:v24 message:0 preferredStyle:1];
      v35 = v5;
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
      v31 = v5;
      v40 = v31;
      v41 = v17;
      v32 = [UIAlertAction actionWithTitle:v30 style:0 handler:v39];
      [v25 addAction:v32];

      v15 = v34;
      v33 = v31;
      v5 = v35;
      [v33 presentViewController:v25 animated:1 completion:0];
    }

    else
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100052310;
      block[3] = &unk_1000AE6A0;
      v37 = v5;
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