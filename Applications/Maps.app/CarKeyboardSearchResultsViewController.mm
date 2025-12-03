@interface CarKeyboardSearchResultsViewController
- (CarKeyboardModeController)keyboardMode;
- (CarKeyboardSearchResultsViewController)init;
- (double)preferredMinimumRowHeight;
- (double)tableView:(id)view heightForRowAtIndexPath:(id)path;
- (id)itemAtIndexPath:(id)path;
- (id)modelForItemAtIndexPath:(id)path;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)traitsForSearchCategoriesRow:(id)row;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator;
- (void)handleCancelButtonPressed;
- (void)handleSearchButtonPressedWithText:(id)text;
- (void)handleSearchTextDidChange:(id)change;
- (void)prepareTableView;
- (void)searchCategoriesRow:(id)row didSelectCategory:(id)category;
- (void)searchDataProviderDidUpdate:(id)update;
- (void)setKeyboardMode:(id)mode;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)updateForInteractionModel:(unint64_t)model;
- (void)updateSearchResultsForSearchController:(id)controller;
- (void)viewDidLoad;
@end

@implementation CarKeyboardSearchResultsViewController

- (CarKeyboardModeController)keyboardMode
{
  WeakRetained = objc_loadWeakRetained(&self->_keyboardMode);

  return WeakRetained;
}

- (id)modelForItemAtIndexPath:(id)path
{
  modelsByItem = self->_modelsByItem;
  v4 = [(CarKeyboardSearchResultsViewController *)self itemAtIndexPath:path];
  v5 = [(NSMapTable *)modelsByItem objectForKey:v4];

  return v5;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v7 = +[CarSearchItemCell reuseIdentifier];
  v8 = [viewCopy dequeueReusableCellWithIdentifier:v7 forIndexPath:pathCopy];

  v9 = [(CarKeyboardSearchResultsViewController *)self itemAtIndexPath:pathCopy];
  v10 = [(CarKeyboardSearchResultsViewController *)self modelForItemAtIndexPath:pathCopy];
  if (!v10)
  {
    objc_initWeak(location, v8);
    objc_initWeak(&from, self);
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_100CC31F8;
    v21[3] = &unk_101650570;
    objc_copyWeak(&v22, &from);
    objc_copyWeak(&v23, location);
    v11 = objc_retainBlock(v21);
    v10 = [CarSearchItemCellModel modelWithUpdateBlock:v11];
    [(NSMapTable *)self->_modelsByItem setObject:v10 forKey:v9];
    [v9 updateModel:v10];

    objc_destroyWeak(&v23);
    objc_destroyWeak(&v22);
    objc_destroyWeak(&from);
    objc_destroyWeak(location);
  }

  v12 = sub_100006E1C();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    selfCopy = self;
    if (!selfCopy)
    {
      selfCopy = @"<nil>";
      goto LABEL_12;
    }

    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    if (objc_opt_respondsToSelector())
    {
      v16 = [(CarKeyboardSearchResultsViewController *)selfCopy performSelector:"accessibilityIdentifier"];
      v17 = v16;
      if (v16 && ![v16 isEqualToString:v15])
      {
        selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v15, selfCopy, v17];

        goto LABEL_10;
      }
    }

    selfCopy = [NSString stringWithFormat:@"%@<%p>", v15, selfCopy];
LABEL_10:

LABEL_12:
    *location = 138543874;
    *&location[4] = selfCopy;
    v26 = 2112;
    v27 = v10;
    v28 = 2112;
    v29 = pathCopy;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "[%{public}@] [SearchAC] Setting up cell with model: %@, indexpath: %@", location, 0x20u);
  }

  [v8 setupWithModel:v10 cellStyle:self->_cellStyle];

  return v8;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  [view deselectRowAtIndexPath:pathCopy animated:1];
  v7 = [(CarKeyboardSearchResultsViewController *)self itemAtIndexPath:pathCopy];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  v10 = sub_100006E1C();
  if (!os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    goto LABEL_14;
  }

  selfCopy = self;
  if (!selfCopy)
  {
    selfCopy = @"<nil>";
    goto LABEL_13;
  }

  v12 = objc_opt_class();
  v13 = NSStringFromClass(v12);
  if (objc_opt_respondsToSelector())
  {
    v14 = [(CarKeyboardSearchResultsViewController *)selfCopy performSelector:"accessibilityIdentifier"];
    v15 = v14;
    if (v14 && ![v14 isEqualToString:v13])
    {
      selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v13, selfCopy, v15];

      goto LABEL_11;
    }
  }

  selfCopy = [NSString stringWithFormat:@"%@<%p>", v13, selfCopy];
LABEL_11:

LABEL_13:
  *buf = 138543874;
  v25 = selfCopy;
  v26 = 2112;
  v27 = v7;
  v28 = 2112;
  v29 = pathCopy;
  _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "[%{public}@] [SearchAC] Selected item: %@ at indexPath: %@", buf, 0x20u);

LABEL_14:
  keyboardMode = [(CarKeyboardSearchResultsViewController *)self keyboardMode];
  chromeViewController = [keyboardMode chromeViewController];
  [chromeViewController captureUserAction:2007 mapItem:v9 atResultIndex:{objc_msgSend(pathCopy, "row")}];

  if ([(NSString *)self->_inputText length])
  {
    inputText = self->_inputText;
    v22 = @"userTypedSearchString";
    v23 = inputText;
    v20 = [NSDictionary dictionaryWithObjects:&v23 forKeys:&v22 count:1];
  }

  else
  {
    v20 = 0;
  }

  if (MapsFeature_IsEnabled_DrivingMultiWaypointRoutes())
  {
    v21 = +[CarDisplayController sharedInstance];
    [v21 processItem:v7 userInfo:v20];
  }

  else
  {
    v21 = +[CarChromeModeCoordinator sharedInstance];
    [v21 displayRoutePlanningForDestination:v7 userInfo:v20];
  }
}

- (double)tableView:(id)view heightForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = [(CarKeyboardSearchResultsViewController *)self itemAtIndexPath:pathCopy];
  v9 = [(CarKeyboardSearchResultsViewController *)self modelForItemAtIndexPath:pathCopy];
  if (!v9)
  {
    v9 = [CarSearchItemCellModel modelWithUpdateBlock:0];
    [v8 updateModel:v9];
  }

  rating = [v9 rating];
  if (rating)
  {
  }

  else
  {
    chargerNumberString = [v9 chargerNumberString];

    if (!chargerNumberString)
    {
      v12 = &qword_101215AD0;
      goto LABEL_7;
    }
  }

  v12 = &qword_101215AC8;
LABEL_7:
  v13 = *v12;

  return v13;
}

- (id)itemAtIndexPath:(id)path
{
  filteredResults = self->_filteredResults;
  pathCopy = path;
  v5 = -[NSArray objectAtIndex:](filteredResults, "objectAtIndex:", [pathCopy section]);
  items = [v5 items];
  v7 = [pathCopy row];

  v8 = [items objectAtIndex:v7];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    autocompleteObject = [v8 autocompleteObject];

    v8 = autocompleteObject;
  }

  return v8;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v4 = [(NSArray *)self->_filteredResults objectAtIndex:section];
  items = [v4 items];
  v6 = [items count];

  return v6;
}

- (void)updateSearchResultsForSearchController:(id)controller
{
  controllerCopy = controller;
  isActive = [controllerCopy isActive];
  currentTraits = sub_100006E1C();
  v7 = os_log_type_enabled(currentTraits, OS_LOG_TYPE_INFO);
  if (!isActive)
  {
    if (!v7)
    {
      goto LABEL_26;
    }

    selfCopy = self;
    if (!selfCopy)
    {
      selfCopy = @"<nil>";
      goto LABEL_25;
    }

    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    if (objc_opt_respondsToSelector())
    {
      v17 = [(CarKeyboardSearchResultsViewController *)selfCopy performSelector:"accessibilityIdentifier"];
      v18 = v17;
      if (v17 && ![v17 isEqualToString:v16])
      {
        selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v16, selfCopy, v18];

        goto LABEL_17;
      }
    }

    selfCopy = [NSString stringWithFormat:@"%@<%p>", v16, selfCopy];
LABEL_17:

LABEL_25:
    *buf = 138543362;
    v32 = selfCopy;
    _os_log_impl(&_mh_execute_header, currentTraits, OS_LOG_TYPE_INFO, "[%{public}@] [SearchAC] Seaarch controller is not active", buf, 0xCu);

    goto LABEL_26;
  }

  if (v7)
  {
    selfCopy2 = self;
    if (!selfCopy2)
    {
      selfCopy2 = @"<nil>";
      goto LABEL_19;
    }

    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    if (objc_opt_respondsToSelector())
    {
      v11 = [(CarKeyboardSearchResultsViewController *)selfCopy2 performSelector:"accessibilityIdentifier"];
      v12 = v11;
      if (v11 && ![v11 isEqualToString:v10])
      {
        selfCopy2 = [NSString stringWithFormat:@"%@<%p, %@>", v10, selfCopy2, v12];

        goto LABEL_9;
      }
    }

    selfCopy2 = [NSString stringWithFormat:@"%@<%p>", v10, selfCopy2];
LABEL_9:

LABEL_19:
    searchBar = [controllerCopy searchBar];
    text = [searchBar text];
    *buf = 138543618;
    v32 = selfCopy2;
    v33 = 2112;
    v34 = text;
    _os_log_impl(&_mh_execute_header, currentTraits, OS_LOG_TYPE_INFO, "[%{public}@] [SearchAC] Processing new query on CarPlay : %@", buf, 0x16u);
  }

  searchBar2 = [controllerCopy searchBar];
  text2 = [searchBar2 text];
  inputText = self->_inputText;
  self->_inputText = text2;

  searchResultTableView = [(CarKeyboardSearchResultsViewController *)self searchResultTableView];
  [searchResultTableView scrollRectToVisible:0 animated:{0.0, 0.0, 1.0, 1.0}];

  keyboardMode = [(CarKeyboardSearchResultsViewController *)self keyboardMode];
  chromeViewController = [keyboardMode chromeViewController];
  currentTraits = [chromeViewController currentTraits];

  v28 = +[MNNavigationService sharedService];
  LODWORD(chromeViewController) = [v28 isInNavigatingState];

  if (chromeViewController)
  {
    v29 = 2;
  }

  else
  {
    v29 = 0;
  }

  [currentTraits setAutocompleteOriginationType:v29];
  v30 = +[MNNavigationService sharedService];
  -[NSObject setNavigating:](currentTraits, "setNavigating:", [v30 isInNavigatingState]);

  [currentTraits addSupportedAutocompleteListType:2];
  [(SearchDataProvider *)self->_searchDataProvider setInputText:self->_inputText traits:currentTraits source:12];
LABEL_26:
}

- (void)searchDataProviderDidUpdate:(id)update
{
  updateCopy = update;
  v37 = objc_alloc_init(NSMutableArray);
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v34 = updateCopy;
  obj = [updateCopy sections];
  v39 = [obj countByEnumeratingWithState:&v46 objects:v57 count:16];
  if (v39)
  {
    v38 = *v47;
    do
    {
      v4 = 0;
      do
      {
        if (*v47 != v38)
        {
          objc_enumerationMutation(obj);
        }

        v41 = v4;
        v5 = *(*(&v46 + 1) + 8 * v4);
        v6 = [NSMutableArray alloc];
        items = [v5 items];
        v8 = [v6 initWithCapacity:{objc_msgSend(items, "count")}];

        v44 = 0u;
        v45 = 0u;
        v42 = 0u;
        v43 = 0u;
        v40 = v5;
        items2 = [v5 items];
        v10 = [items2 countByEnumeratingWithState:&v42 objects:v56 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v43;
          do
          {
            for (i = 0; i != v11; i = i + 1)
            {
              if (*v43 != v12)
              {
                objc_enumerationMutation(items2);
              }

              v14 = *(*(&v42 + 1) + 8 * i);
              autocompleteObject = [v14 autocompleteObject];
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v16 = autocompleteObject;
                collectionResult = [v16 collectionResult];
                if (collectionResult)
                {
                }

                else
                {
                  publisherResult = [v16 publisherResult];

                  if (!publisherResult)
                  {
                    [v8 addObject:v14];
                  }
                }
              }

              else
              {
                [v8 addObject:v14];
              }
            }

            v11 = [items2 countByEnumeratingWithState:&v42 objects:v56 count:16];
          }

          while (v11);
        }

        if ([v8 count])
        {
          v19 = sub_100006E1C();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
          {
            selfCopy = self;
            if (self)
            {
              v21 = objc_opt_class();
              v22 = NSStringFromClass(v21);
              if ((objc_opt_respondsToSelector() & 1) == 0)
              {
                goto LABEL_27;
              }

              v23 = [(CarKeyboardSearchResultsViewController *)selfCopy performSelector:"accessibilityIdentifier"];
              v24 = v23;
              if (v23 && ![v23 isEqualToString:v22])
              {
                selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v22, selfCopy, v24];
              }

              else
              {

LABEL_27:
                selfCopy = [NSString stringWithFormat:@"%@<%p>", v22, selfCopy];
              }
            }

            else
            {
              selfCopy = @"<nil>";
            }

            v26 = [v8 count];
            *buf = 138543874;
            v51 = selfCopy;
            v52 = 2112;
            v53 = v40;
            v54 = 2048;
            v55 = v26;
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "[%{public}@] [SearchAC] Setting items for sections : %@. Count: %lu", buf, 0x20u);
          }

          v27 = [AutocompleteSection alloc];
          title = [v40 title];
          v29 = -[AutocompleteSection initWithTitle:items:isQuerySuggestionsSection:](v27, "initWithTitle:items:isQuerySuggestionsSection:", title, v8, [v40 isQuerySuggestionsSection]);
          [v37 addObject:v29];
        }

        v4 = v41 + 1;
      }

      while ((v41 + 1) != v39);
      v30 = [obj countByEnumeratingWithState:&v46 objects:v57 count:16];
      v39 = v30;
    }

    while (v30);
  }

  v31 = [v37 copy];
  filteredResults = self->_filteredResults;
  self->_filteredResults = v31;

  searchResultTableView = [(CarKeyboardSearchResultsViewController *)self searchResultTableView];
  [searchResultTableView reloadData];
}

- (void)handleCancelButtonPressed
{
  v3 = sub_100006E1C();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    selfCopy = self;
    if (!selfCopy)
    {
      selfCopy = @"<nil>";
      goto LABEL_10;
    }

    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    if (objc_opt_respondsToSelector())
    {
      v7 = [(CarKeyboardSearchResultsViewController *)selfCopy performSelector:"accessibilityIdentifier"];
      v8 = v7;
      if (v7 && ![v7 isEqualToString:v6])
      {
        selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v6, selfCopy, v8];

        goto LABEL_8;
      }
    }

    selfCopy = [NSString stringWithFormat:@"%@<%p>", v6, selfCopy];
LABEL_8:

LABEL_10:
    *buf = 138543362;
    v13 = selfCopy;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}@] [SearchAC] Keyboard cancel button pressed.", buf, 0xCu);
  }

  keyboardMode = [(CarKeyboardSearchResultsViewController *)self keyboardMode];
  chromeViewController = [keyboardMode chromeViewController];
  [chromeViewController captureUserAction:2003];
}

- (void)handleSearchTextDidChange:(id)change
{
  v4 = [change length];
  categoriesRow = self->_categoriesRow;
  if (v4)
  {
    if (categoriesRow)
    {
      [(CarSearchCategoriesRow *)categoriesRow setHidden:1];
      searchResultTableView = self->_searchResultTableView;

      [(UITableView *)searchResultTableView setHidden:0];
    }
  }

  else
  {
    if (categoriesRow)
    {
      [(CarSearchCategoriesRow *)categoriesRow setHidden:0];
      [(UITableView *)self->_searchResultTableView setHidden:1];
    }

    keyboardMode = [(CarKeyboardSearchResultsViewController *)self keyboardMode];
    chromeViewController = [keyboardMode chromeViewController];
    [chromeViewController captureUserAction:2003];
  }
}

- (void)handleSearchButtonPressedWithText:(id)text
{
  textCopy = text;
  keyboardMode = [(CarKeyboardSearchResultsViewController *)self keyboardMode];
  chromeViewController = [keyboardMode chromeViewController];
  [chromeViewController captureUserAction:2014];

  v7 = sub_100006E1C();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    selfCopy = self;
    if (!selfCopy)
    {
      selfCopy = @"<nil>";
      goto LABEL_10;
    }

    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    if (objc_opt_respondsToSelector())
    {
      v11 = [(CarKeyboardSearchResultsViewController *)selfCopy performSelector:"accessibilityIdentifier"];
      v12 = v11;
      if (v11 && ![v11 isEqualToString:v10])
      {
        selfCopy = [NSString stringWithFormat:@"%@<%p, %@>", v10, selfCopy, v12];

        goto LABEL_8;
      }
    }

    selfCopy = [NSString stringWithFormat:@"%@<%p>", v10, selfCopy];
LABEL_8:

LABEL_10:
    *buf = 138543362;
    v19 = selfCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "[%{public}@] [SearchAC] Keyboard search button pressed, will perform search", buf, 0xCu);
  }

  v14 = objc_alloc_init(SearchFieldItem);
  _maps_stringByTrimmingLeadingWhitespace = [textCopy _maps_stringByTrimmingLeadingWhitespace];
  [(SearchFieldItem *)v14 setSearchString:_maps_stringByTrimmingLeadingWhitespace];

  [(SearchFieldItem *)v14 setUserTypedStringForRAP:textCopy];
  v16 = +[CarDisplayController sharedInstance];
  v17 = [v16 processSearchFieldItem:v14 searchInfo:0 userInfo:0];
}

- (void)updateForInteractionModel:(unint64_t)model
{
  v3 = model != 1;
  searchResultTableView = [(CarKeyboardSearchResultsViewController *)self searchResultTableView];
  [searchResultTableView setScrollEnabled:v3];
}

- (id)traitsForSearchCategoriesRow:(id)row
{
  keyboardMode = [(CarKeyboardSearchResultsViewController *)self keyboardMode];
  chromeViewController = [keyboardMode chromeViewController];
  navigationAwareTraits = [chromeViewController navigationAwareTraits];

  return navigationAwareTraits;
}

- (void)searchCategoriesRow:(id)row didSelectCategory:(id)category
{
  categoryCopy = category;
  v5 = +[CarChromeModeCoordinator sharedInstance];
  [v5 displaySearchResultsWithCategory:categoryCopy];
}

- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator
{
  v8.receiver = self;
  v8.super_class = CarKeyboardSearchResultsViewController;
  [(CarKeyboardSearchResultsViewController *)&v8 didUpdateFocusInContext:context withAnimationCoordinator:coordinator];
  if (_UISolariumEnabled())
  {
    categoriesRow = self->_categoriesRow;
    if (categoriesRow)
    {
      v6 = [(CarSearchCategoriesRow *)categoriesRow isAnyCategoryFocused]^ 1;
      if (self->_hasFocusedCategories != v6)
      {
        keyboardMode = [(CarKeyboardSearchResultsViewController *)self keyboardMode];
        [keyboardMode wantsKeyboardVisible:v6];

        self->_hasFocusedCategories = v6;
      }
    }
  }
}

- (void)setKeyboardMode:(id)mode
{
  objc_storeWeak(&self->_keyboardMode, mode);
  if (mode)
  {
    categoriesRow = self->_categoriesRow;

    [(CarSearchCategoriesRow *)categoriesRow refreshIfNeeded];
  }
}

- (double)preferredMinimumRowHeight
{
  categoriesRow = self->_categoriesRow;
  if (!categoriesRow)
  {
    return 56.0;
  }

  [(CarSearchCategoriesRow *)categoriesRow preferredMinimumVisibleHeight];
  if (v4 <= 56.0)
  {
    return 56.0;
  }

  v5 = self->_categoriesRow;

  [(CarSearchCategoriesRow *)v5 preferredMinimumVisibleHeight];
  return result;
}

- (void)prepareTableView
{
  v3 = objc_alloc_init(UITableView);
  searchResultTableView = self->_searchResultTableView;
  self->_searchResultTableView = v3;

  [(UITableView *)self->_searchResultTableView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UITableView *)self->_searchResultTableView setAccessibilityIdentifier:@"CarSearchResultTableView"];
  [(UITableView *)self->_searchResultTableView setDelegate:self];
  [(UITableView *)self->_searchResultTableView setDataSource:self];
  v5 = +[UIColor clearColor];
  [(UITableView *)self->_searchResultTableView setBackgroundColor:v5];

  topEdgeEffect = [(UITableView *)self->_searchResultTableView topEdgeEffect];
  [topEdgeEffect setHidden:1];

  v7 = self->_searchResultTableView;
  v8 = objc_opt_class();
  v9 = +[CarSearchItemCell reuseIdentifier];
  [(UITableView *)v7 registerClass:v8 forCellReuseIdentifier:v9];

  view = [(CarKeyboardSearchResultsViewController *)self view];
  [view addSubview:self->_searchResultTableView];

  if (GEOConfigGetBOOL())
  {
    v11 = [[CarSearchCategoriesRow alloc] initWithDelegate:self];
    categoriesRow = self->_categoriesRow;
    self->_categoriesRow = v11;

    [(CarSearchCategoriesRow *)self->_categoriesRow setTranslatesAutoresizingMaskIntoConstraints:0];
    view2 = [(CarKeyboardSearchResultsViewController *)self view];
    [view2 addSubview:self->_categoriesRow];

    topAnchor = [(CarSearchCategoriesRow *)self->_categoriesRow topAnchor];
    view3 = [(CarKeyboardSearchResultsViewController *)self view];
    safeAreaLayoutGuide = [view3 safeAreaLayoutGuide];
    topAnchor2 = [safeAreaLayoutGuide topAnchor];
    v31 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v36[0] = v31;
    leadingAnchor = [(CarSearchCategoriesRow *)self->_categoriesRow leadingAnchor];
    view4 = [(CarKeyboardSearchResultsViewController *)self view];
    safeAreaLayoutGuide2 = [view4 safeAreaLayoutGuide];
    leadingAnchor2 = [safeAreaLayoutGuide2 leadingAnchor];
    v15 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v36[1] = v15;
    view5 = [(CarKeyboardSearchResultsViewController *)self view];
    safeAreaLayoutGuide3 = [view5 safeAreaLayoutGuide];
    trailingAnchor = [safeAreaLayoutGuide3 trailingAnchor];
    trailingAnchor2 = [(CarSearchCategoriesRow *)self->_categoriesRow trailingAnchor];
    v20 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v36[2] = v20;
    v21 = [NSArray arrayWithObjects:v36 count:3];
    [NSLayoutConstraint activateConstraints:v21];

    [(UITableView *)self->_searchResultTableView setHidden:1];
  }

  v22 = self->_searchResultTableView;
  view6 = [(CarKeyboardSearchResultsViewController *)self view];
  safeAreaLayoutGuide4 = [view6 safeAreaLayoutGuide];
  LODWORD(v25) = 1148846080;
  v26 = [(UITableView *)v22 _maps_constraintsEqualToEdgesOfLayoutGuide:safeAreaLayoutGuide4 insets:UIEdgeInsetsZero.top priority:UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right, v25];
  allConstraints = [v26 allConstraints];
  [NSLayoutConstraint activateConstraints:allConstraints];
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = CarKeyboardSearchResultsViewController;
  [(CarKeyboardSearchResultsViewController *)&v3 viewDidLoad];
  [(CarKeyboardSearchResultsViewController *)self prepareTableView];
}

- (CarKeyboardSearchResultsViewController)init
{
  v8.receiver = self;
  v8.super_class = CarKeyboardSearchResultsViewController;
  v2 = [(CarKeyboardSearchResultsViewController *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(SearchDataProvider);
    searchDataProvider = v2->_searchDataProvider;
    v2->_searchDataProvider = v3;

    [(SearchDataProvider *)v2->_searchDataProvider setEnableRAPIfAvailable:0];
    [(SearchDataProvider *)v2->_searchDataProvider setDelegate:v2];
    [(SearchDataProvider *)v2->_searchDataProvider setSearchMode:3];
    v2->_cellStyle = 0;
    v5 = +[NSMapTable weakToStrongObjectsMapTable];
    modelsByItem = v2->_modelsByItem;
    v2->_modelsByItem = v5;

    v2->_hasFocusedCategories = 1;
  }

  return v2;
}

@end