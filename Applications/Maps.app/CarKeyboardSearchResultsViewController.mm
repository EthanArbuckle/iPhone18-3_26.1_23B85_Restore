@interface CarKeyboardSearchResultsViewController
- (CarKeyboardModeController)keyboardMode;
- (CarKeyboardSearchResultsViewController)init;
- (double)preferredMinimumRowHeight;
- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4;
- (id)itemAtIndexPath:(id)a3;
- (id)modelForItemAtIndexPath:(id)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)traitsForSearchCategoriesRow:(id)a3;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4;
- (void)handleCancelButtonPressed;
- (void)handleSearchButtonPressedWithText:(id)a3;
- (void)handleSearchTextDidChange:(id)a3;
- (void)prepareTableView;
- (void)searchCategoriesRow:(id)a3 didSelectCategory:(id)a4;
- (void)searchDataProviderDidUpdate:(id)a3;
- (void)setKeyboardMode:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)updateForInteractionModel:(unint64_t)a3;
- (void)updateSearchResultsForSearchController:(id)a3;
- (void)viewDidLoad;
@end

@implementation CarKeyboardSearchResultsViewController

- (CarKeyboardModeController)keyboardMode
{
  WeakRetained = objc_loadWeakRetained(&self->_keyboardMode);

  return WeakRetained;
}

- (id)modelForItemAtIndexPath:(id)a3
{
  modelsByItem = self->_modelsByItem;
  v4 = [(CarKeyboardSearchResultsViewController *)self itemAtIndexPath:a3];
  v5 = [(NSMapTable *)modelsByItem objectForKey:v4];

  return v5;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v20 = a3;
  v6 = a4;
  v7 = +[CarSearchItemCell reuseIdentifier];
  v8 = [v20 dequeueReusableCellWithIdentifier:v7 forIndexPath:v6];

  v9 = [(CarKeyboardSearchResultsViewController *)self itemAtIndexPath:v6];
  v10 = [(CarKeyboardSearchResultsViewController *)self modelForItemAtIndexPath:v6];
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
    v13 = self;
    if (!v13)
    {
      v18 = @"<nil>";
      goto LABEL_12;
    }

    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    if (objc_opt_respondsToSelector())
    {
      v16 = [(CarKeyboardSearchResultsViewController *)v13 performSelector:"accessibilityIdentifier"];
      v17 = v16;
      if (v16 && ![v16 isEqualToString:v15])
      {
        v18 = [NSString stringWithFormat:@"%@<%p, %@>", v15, v13, v17];

        goto LABEL_10;
      }
    }

    v18 = [NSString stringWithFormat:@"%@<%p>", v15, v13];
LABEL_10:

LABEL_12:
    *location = 138543874;
    *&location[4] = v18;
    v26 = 2112;
    v27 = v10;
    v28 = 2112;
    v29 = v6;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "[%{public}@] [SearchAC] Setting up cell with model: %@, indexpath: %@", location, 0x20u);
  }

  [v8 setupWithModel:v10 cellStyle:self->_cellStyle];

  return v8;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a4;
  [a3 deselectRowAtIndexPath:v6 animated:1];
  v7 = [(CarKeyboardSearchResultsViewController *)self itemAtIndexPath:v6];
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

  v11 = self;
  if (!v11)
  {
    v16 = @"<nil>";
    goto LABEL_13;
  }

  v12 = objc_opt_class();
  v13 = NSStringFromClass(v12);
  if (objc_opt_respondsToSelector())
  {
    v14 = [(CarKeyboardSearchResultsViewController *)v11 performSelector:"accessibilityIdentifier"];
    v15 = v14;
    if (v14 && ![v14 isEqualToString:v13])
    {
      v16 = [NSString stringWithFormat:@"%@<%p, %@>", v13, v11, v15];

      goto LABEL_11;
    }
  }

  v16 = [NSString stringWithFormat:@"%@<%p>", v13, v11];
LABEL_11:

LABEL_13:
  *buf = 138543874;
  v25 = v16;
  v26 = 2112;
  v27 = v7;
  v28 = 2112;
  v29 = v6;
  _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "[%{public}@] [SearchAC] Selected item: %@ at indexPath: %@", buf, 0x20u);

LABEL_14:
  v17 = [(CarKeyboardSearchResultsViewController *)self keyboardMode];
  v18 = [v17 chromeViewController];
  [v18 captureUserAction:2007 mapItem:v9 atResultIndex:{objc_msgSend(v6, "row")}];

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

- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CarKeyboardSearchResultsViewController *)self itemAtIndexPath:v7];
  v9 = [(CarKeyboardSearchResultsViewController *)self modelForItemAtIndexPath:v7];
  if (!v9)
  {
    v9 = [CarSearchItemCellModel modelWithUpdateBlock:0];
    [v8 updateModel:v9];
  }

  v10 = [v9 rating];
  if (v10)
  {
  }

  else
  {
    v11 = [v9 chargerNumberString];

    if (!v11)
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

- (id)itemAtIndexPath:(id)a3
{
  filteredResults = self->_filteredResults;
  v4 = a3;
  v5 = -[NSArray objectAtIndex:](filteredResults, "objectAtIndex:", [v4 section]);
  v6 = [v5 items];
  v7 = [v4 row];

  v8 = [v6 objectAtIndex:v7];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [v8 autocompleteObject];

    v8 = v9;
  }

  return v8;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v4 = [(NSArray *)self->_filteredResults objectAtIndex:a4];
  v5 = [v4 items];
  v6 = [v5 count];

  return v6;
}

- (void)updateSearchResultsForSearchController:(id)a3
{
  v4 = a3;
  v5 = [v4 isActive];
  v6 = sub_100006E1C();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
  if (!v5)
  {
    if (!v7)
    {
      goto LABEL_26;
    }

    v14 = self;
    if (!v14)
    {
      v19 = @"<nil>";
      goto LABEL_25;
    }

    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    if (objc_opt_respondsToSelector())
    {
      v17 = [(CarKeyboardSearchResultsViewController *)v14 performSelector:"accessibilityIdentifier"];
      v18 = v17;
      if (v17 && ![v17 isEqualToString:v16])
      {
        v19 = [NSString stringWithFormat:@"%@<%p, %@>", v16, v14, v18];

        goto LABEL_17;
      }
    }

    v19 = [NSString stringWithFormat:@"%@<%p>", v16, v14];
LABEL_17:

LABEL_25:
    *buf = 138543362;
    v32 = v19;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "[%{public}@] [SearchAC] Seaarch controller is not active", buf, 0xCu);

    goto LABEL_26;
  }

  if (v7)
  {
    v8 = self;
    if (!v8)
    {
      v13 = @"<nil>";
      goto LABEL_19;
    }

    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    if (objc_opt_respondsToSelector())
    {
      v11 = [(CarKeyboardSearchResultsViewController *)v8 performSelector:"accessibilityIdentifier"];
      v12 = v11;
      if (v11 && ![v11 isEqualToString:v10])
      {
        v13 = [NSString stringWithFormat:@"%@<%p, %@>", v10, v8, v12];

        goto LABEL_9;
      }
    }

    v13 = [NSString stringWithFormat:@"%@<%p>", v10, v8];
LABEL_9:

LABEL_19:
    v20 = [v4 searchBar];
    v21 = [v20 text];
    *buf = 138543618;
    v32 = v13;
    v33 = 2112;
    v34 = v21;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "[%{public}@] [SearchAC] Processing new query on CarPlay : %@", buf, 0x16u);
  }

  v22 = [v4 searchBar];
  v23 = [v22 text];
  inputText = self->_inputText;
  self->_inputText = v23;

  v25 = [(CarKeyboardSearchResultsViewController *)self searchResultTableView];
  [v25 scrollRectToVisible:0 animated:{0.0, 0.0, 1.0, 1.0}];

  v26 = [(CarKeyboardSearchResultsViewController *)self keyboardMode];
  v27 = [v26 chromeViewController];
  v6 = [v27 currentTraits];

  v28 = +[MNNavigationService sharedService];
  LODWORD(v27) = [v28 isInNavigatingState];

  if (v27)
  {
    v29 = 2;
  }

  else
  {
    v29 = 0;
  }

  [v6 setAutocompleteOriginationType:v29];
  v30 = +[MNNavigationService sharedService];
  -[NSObject setNavigating:](v6, "setNavigating:", [v30 isInNavigatingState]);

  [v6 addSupportedAutocompleteListType:2];
  [(SearchDataProvider *)self->_searchDataProvider setInputText:self->_inputText traits:v6 source:12];
LABEL_26:
}

- (void)searchDataProviderDidUpdate:(id)a3
{
  v3 = a3;
  v37 = objc_alloc_init(NSMutableArray);
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v34 = v3;
  obj = [v3 sections];
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
        v7 = [v5 items];
        v8 = [v6 initWithCapacity:{objc_msgSend(v7, "count")}];

        v44 = 0u;
        v45 = 0u;
        v42 = 0u;
        v43 = 0u;
        v40 = v5;
        v9 = [v5 items];
        v10 = [v9 countByEnumeratingWithState:&v42 objects:v56 count:16];
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
                objc_enumerationMutation(v9);
              }

              v14 = *(*(&v42 + 1) + 8 * i);
              v15 = [v14 autocompleteObject];
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v16 = v15;
                v17 = [v16 collectionResult];
                if (v17)
                {
                }

                else
                {
                  v18 = [v16 publisherResult];

                  if (!v18)
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

            v11 = [v9 countByEnumeratingWithState:&v42 objects:v56 count:16];
          }

          while (v11);
        }

        if ([v8 count])
        {
          v19 = sub_100006E1C();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
          {
            v20 = self;
            if (self)
            {
              v21 = objc_opt_class();
              v22 = NSStringFromClass(v21);
              if ((objc_opt_respondsToSelector() & 1) == 0)
              {
                goto LABEL_27;
              }

              v23 = [(CarKeyboardSearchResultsViewController *)v20 performSelector:"accessibilityIdentifier"];
              v24 = v23;
              if (v23 && ![v23 isEqualToString:v22])
              {
                v25 = [NSString stringWithFormat:@"%@<%p, %@>", v22, v20, v24];
              }

              else
              {

LABEL_27:
                v25 = [NSString stringWithFormat:@"%@<%p>", v22, v20];
              }
            }

            else
            {
              v25 = @"<nil>";
            }

            v26 = [v8 count];
            *buf = 138543874;
            v51 = v25;
            v52 = 2112;
            v53 = v40;
            v54 = 2048;
            v55 = v26;
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "[%{public}@] [SearchAC] Setting items for sections : %@. Count: %lu", buf, 0x20u);
          }

          v27 = [AutocompleteSection alloc];
          v28 = [v40 title];
          v29 = -[AutocompleteSection initWithTitle:items:isQuerySuggestionsSection:](v27, "initWithTitle:items:isQuerySuggestionsSection:", v28, v8, [v40 isQuerySuggestionsSection]);
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

  v33 = [(CarKeyboardSearchResultsViewController *)self searchResultTableView];
  [v33 reloadData];
}

- (void)handleCancelButtonPressed
{
  v3 = sub_100006E1C();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = self;
    if (!v4)
    {
      v9 = @"<nil>";
      goto LABEL_10;
    }

    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    if (objc_opt_respondsToSelector())
    {
      v7 = [(CarKeyboardSearchResultsViewController *)v4 performSelector:"accessibilityIdentifier"];
      v8 = v7;
      if (v7 && ![v7 isEqualToString:v6])
      {
        v9 = [NSString stringWithFormat:@"%@<%p, %@>", v6, v4, v8];

        goto LABEL_8;
      }
    }

    v9 = [NSString stringWithFormat:@"%@<%p>", v6, v4];
LABEL_8:

LABEL_10:
    *buf = 138543362;
    v13 = v9;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[%{public}@] [SearchAC] Keyboard cancel button pressed.", buf, 0xCu);
  }

  v10 = [(CarKeyboardSearchResultsViewController *)self keyboardMode];
  v11 = [v10 chromeViewController];
  [v11 captureUserAction:2003];
}

- (void)handleSearchTextDidChange:(id)a3
{
  v4 = [a3 length];
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

    v8 = [(CarKeyboardSearchResultsViewController *)self keyboardMode];
    v7 = [v8 chromeViewController];
    [v7 captureUserAction:2003];
  }
}

- (void)handleSearchButtonPressedWithText:(id)a3
{
  v4 = a3;
  v5 = [(CarKeyboardSearchResultsViewController *)self keyboardMode];
  v6 = [v5 chromeViewController];
  [v6 captureUserAction:2014];

  v7 = sub_100006E1C();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = self;
    if (!v8)
    {
      v13 = @"<nil>";
      goto LABEL_10;
    }

    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    if (objc_opt_respondsToSelector())
    {
      v11 = [(CarKeyboardSearchResultsViewController *)v8 performSelector:"accessibilityIdentifier"];
      v12 = v11;
      if (v11 && ![v11 isEqualToString:v10])
      {
        v13 = [NSString stringWithFormat:@"%@<%p, %@>", v10, v8, v12];

        goto LABEL_8;
      }
    }

    v13 = [NSString stringWithFormat:@"%@<%p>", v10, v8];
LABEL_8:

LABEL_10:
    *buf = 138543362;
    v19 = v13;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "[%{public}@] [SearchAC] Keyboard search button pressed, will perform search", buf, 0xCu);
  }

  v14 = objc_alloc_init(SearchFieldItem);
  v15 = [v4 _maps_stringByTrimmingLeadingWhitespace];
  [(SearchFieldItem *)v14 setSearchString:v15];

  [(SearchFieldItem *)v14 setUserTypedStringForRAP:v4];
  v16 = +[CarDisplayController sharedInstance];
  v17 = [v16 processSearchFieldItem:v14 searchInfo:0 userInfo:0];
}

- (void)updateForInteractionModel:(unint64_t)a3
{
  v3 = a3 != 1;
  v4 = [(CarKeyboardSearchResultsViewController *)self searchResultTableView];
  [v4 setScrollEnabled:v3];
}

- (id)traitsForSearchCategoriesRow:(id)a3
{
  v3 = [(CarKeyboardSearchResultsViewController *)self keyboardMode];
  v4 = [v3 chromeViewController];
  v5 = [v4 navigationAwareTraits];

  return v5;
}

- (void)searchCategoriesRow:(id)a3 didSelectCategory:(id)a4
{
  v4 = a4;
  v5 = +[CarChromeModeCoordinator sharedInstance];
  [v5 displaySearchResultsWithCategory:v4];
}

- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4
{
  v8.receiver = self;
  v8.super_class = CarKeyboardSearchResultsViewController;
  [(CarKeyboardSearchResultsViewController *)&v8 didUpdateFocusInContext:a3 withAnimationCoordinator:a4];
  if (_UISolariumEnabled())
  {
    categoriesRow = self->_categoriesRow;
    if (categoriesRow)
    {
      v6 = [(CarSearchCategoriesRow *)categoriesRow isAnyCategoryFocused]^ 1;
      if (self->_hasFocusedCategories != v6)
      {
        v7 = [(CarKeyboardSearchResultsViewController *)self keyboardMode];
        [v7 wantsKeyboardVisible:v6];

        self->_hasFocusedCategories = v6;
      }
    }
  }
}

- (void)setKeyboardMode:(id)a3
{
  objc_storeWeak(&self->_keyboardMode, a3);
  if (a3)
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

  v6 = [(UITableView *)self->_searchResultTableView topEdgeEffect];
  [v6 setHidden:1];

  v7 = self->_searchResultTableView;
  v8 = objc_opt_class();
  v9 = +[CarSearchItemCell reuseIdentifier];
  [(UITableView *)v7 registerClass:v8 forCellReuseIdentifier:v9];

  v10 = [(CarKeyboardSearchResultsViewController *)self view];
  [v10 addSubview:self->_searchResultTableView];

  if (GEOConfigGetBOOL())
  {
    v11 = [[CarSearchCategoriesRow alloc] initWithDelegate:self];
    categoriesRow = self->_categoriesRow;
    self->_categoriesRow = v11;

    [(CarSearchCategoriesRow *)self->_categoriesRow setTranslatesAutoresizingMaskIntoConstraints:0];
    v13 = [(CarKeyboardSearchResultsViewController *)self view];
    [v13 addSubview:self->_categoriesRow];

    v34 = [(CarSearchCategoriesRow *)self->_categoriesRow topAnchor];
    v35 = [(CarKeyboardSearchResultsViewController *)self view];
    v33 = [v35 safeAreaLayoutGuide];
    v32 = [v33 topAnchor];
    v31 = [v34 constraintEqualToAnchor:v32];
    v36[0] = v31;
    v29 = [(CarSearchCategoriesRow *)self->_categoriesRow leadingAnchor];
    v30 = [(CarKeyboardSearchResultsViewController *)self view];
    v28 = [v30 safeAreaLayoutGuide];
    v14 = [v28 leadingAnchor];
    v15 = [v29 constraintEqualToAnchor:v14];
    v36[1] = v15;
    v16 = [(CarKeyboardSearchResultsViewController *)self view];
    v17 = [v16 safeAreaLayoutGuide];
    v18 = [v17 trailingAnchor];
    v19 = [(CarSearchCategoriesRow *)self->_categoriesRow trailingAnchor];
    v20 = [v18 constraintEqualToAnchor:v19];
    v36[2] = v20;
    v21 = [NSArray arrayWithObjects:v36 count:3];
    [NSLayoutConstraint activateConstraints:v21];

    [(UITableView *)self->_searchResultTableView setHidden:1];
  }

  v22 = self->_searchResultTableView;
  v23 = [(CarKeyboardSearchResultsViewController *)self view];
  v24 = [v23 safeAreaLayoutGuide];
  LODWORD(v25) = 1148846080;
  v26 = [(UITableView *)v22 _maps_constraintsEqualToEdgesOfLayoutGuide:v24 insets:UIEdgeInsetsZero.top priority:UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right, v25];
  v27 = [v26 allConstraints];
  [NSLayoutConstraint activateConstraints:v27];
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