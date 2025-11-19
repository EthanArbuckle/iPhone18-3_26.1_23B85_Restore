@interface MFSearchSuggestionsViewController
+ (OS_os_log)log;
- (BOOL)hasSuggestions;
- (CGRect)currentKeyboardOverlap;
- (MFSearchSuggestionsTableViewModelReuseConfiguration)defaultReuseConfiguration;
- (MFSearchSuggestionsTableViewModelReuseConfiguration)topHitsReuseConfiguration;
- (MFSearchSuggestionsViewController)initWithCoder:(id)a3;
- (MFSearchSuggestionsViewController)initWithMainScene:(id)a3 delegate:(id)a4;
- (MFSearchSuggestionsViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (MFSearchSuggestionsViewControllerDelegate)delegate;
- (MailMainScene)scene;
- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4;
- (id)_defaultTableViewRowSelector;
- (id)_newSearchSuggestionsTableViewModel;
- (id)_topHitsTableViewCellPopulator;
- (id)_topHitsTableViewRowHeightCalculator;
- (id)_topHitsTableViewRowSelector;
- (id)searchSuggestionsForCategory:(id)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4;
- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4;
- (id)updateSuggestionsWithResult:(id)a3;
- (id)viewForKeyboardAvoidance:(id)a3;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)beginUpdatingSuggestions;
- (void)clearSuggestions;
- (void)configureReportedVisibleSuggestionsForTableView:(id)a3 alwaysReportItems:(BOOL)a4 keyboardVisibilityDidChange:(BOOL)a5;
- (void)dealloc;
- (void)didRemoveSearchSuggestion:(id)a3;
- (void)endUpdatingSuggestions;
- (void)keyboardAvoidance:(id)a3 adjustForFrameOverlap:(CGRect)a4;
- (void)keyboardVisibilityDidChange:(id)a3;
- (void)loadView;
- (void)reportVisibleSuggestionResults;
- (void)setTableViewModel:(id)a3;
- (void)shouldReloadSearchSuggestion:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateLayoutMargins:(UIEdgeInsets)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewLayoutMarginsDidChange;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation MFSearchSuggestionsViewController

+ (OS_os_log)log
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100212400;
  block[3] = &unk_10064C4F8;
  block[4] = a1;
  if (qword_1006DD638 != -1)
  {
    dispatch_once(&qword_1006DD638, block);
  }

  v2 = qword_1006DD630;

  return v2;
}

- (MFSearchSuggestionsViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v7 = a3;
  v8 = a4;
  [(MFSearchSuggestionsViewController *)self doesNotRecognizeSelector:a2];
  __assert_rtn("[MFSearchSuggestionsViewController initWithNibName:bundle:]", "MFSearchSuggestionsViewController.m", 128, "0");
}

- (MFSearchSuggestionsViewController)initWithCoder:(id)a3
{
  v5 = a3;
  [(MFSearchSuggestionsViewController *)self doesNotRecognizeSelector:a2];
  __assert_rtn("[MFSearchSuggestionsViewController initWithCoder:]", "MFSearchSuggestionsViewController.m", 130, "0");
}

- (MFSearchSuggestionsViewController)initWithMainScene:(id)a3 delegate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v17.receiver = self;
  v17.super_class = MFSearchSuggestionsViewController;
  v8 = [(MFSearchSuggestionsViewController *)&v17 initWithStyle:0];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_scene, v6);
    objc_storeWeak(&v9->_delegate, v7);
    v10 = objc_alloc_init(NSMutableSet);
    touchedCategories = v9->_touchedCategories;
    v9->_touchedCategories = v10;

    v12 = [(MFSearchSuggestionsViewController *)v9 _newSearchSuggestionsTableViewModel];
    tableViewModel = v9->_tableViewModel;
    v9->_tableViewModel = v12;

    v14 = objc_alloc_init(MessageListCellLayoutValuesHelper);
    layoutValuesHelper = v9->_layoutValuesHelper;
    v9->_layoutValuesHelper = v14;

    [(MFSearchSuggestionsViewController *)v9 setModalPresentationStyle:3];
  }

  return v9;
}

- (void)dealloc
{
  objc_storeWeak(&self->_delegate, 0);
  v3 = +[MFKeyboardAvoidance sharedController];
  [v3 unregisterKeyboardAvoidable:self];

  v4.receiver = self;
  v4.super_class = MFSearchSuggestionsViewController;
  [(MFSearchSuggestionsViewController *)&v4 dealloc];
}

- (void)loadView
{
  v9.receiver = self;
  v9.super_class = MFSearchSuggestionsViewController;
  [(MFSearchSuggestionsViewController *)&v9 loadView];
  v3 = [(MFSearchSuggestionsViewController *)self tableView];
  [v3 setKeyboardDismissMode:1];
  [v3 setEstimatedRowHeight:44.0];
  [v3 setRowHeight:UITableViewAutomaticDimension];
  [v3 setInsetsLayoutMarginsFromSafeArea:0];
  v4 = [UIApp preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v4);

  [v3 _setHeaderAndFooterViewsFloat:!IsAccessibilityCategory];
  [v3 registerClass:objc_opt_class() forCellReuseIdentifier:@"kMFSearchSuggestionsCellIdentifier"];
  v6 = objc_opt_class();
  v7 = +[MessageListTableViewCell reusableIdentifier];
  [v3 registerClass:v6 forCellReuseIdentifier:v7];

  [v3 registerClass:objc_opt_class() forHeaderFooterViewReuseIdentifier:@"kMFSearchSectionHeaderCellIdentifier"];
  v8 = +[MFKeyboardAvoidance sharedController];
  [v8 registerKeyboardAvoidable:self];
}

- (void)viewWillAppear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = MFSearchSuggestionsViewController;
  [(MFSearchSuggestionsViewController *)&v6 viewWillAppear:a3];
  v4 = [(MFSearchSuggestionsViewController *)self layoutValuesHelper];
  v5 = [(MFSearchSuggestionsViewController *)self traitCollection];
  [v4 setTraitCollection:v5];

  [(MFSearchSuggestionsViewController *)self systemMinimumLayoutMargins];
  [v4 setSystemLayoutMargins:?];
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = MFSearchSuggestionsViewController;
  [(MFSearchSuggestionsViewController *)&v10 traitCollectionDidChange:v4];
  v5 = [(MFSearchSuggestionsViewController *)self traitCollection];
  if ([v5 mf_traitDifferenceAffectsTextLayout:v4])
  {
    v6 = [(MFSearchSuggestionsViewController *)self layoutValuesHelper];
    [v6 setTraitCollection:v5];

    v7 = [UIApp preferredContentSizeCategory];
    IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v7);

    v9 = [(MFSearchSuggestionsViewController *)self tableView];
    [v9 _setHeaderAndFooterViewsFloat:!IsAccessibilityCategory];
  }
}

- (void)viewDidAppear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = MFSearchSuggestionsViewController;
  [(MFSearchSuggestionsViewController *)&v5 viewDidAppear:a3];
  v4 = +[MFKeyboardAvoidance sharedController];
  [v4 registerKeyboardAvoidable:self];
}

- (void)viewLayoutMarginsDidChange
{
  v12.receiver = self;
  v12.super_class = MFSearchSuggestionsViewController;
  [(MFSearchSuggestionsViewController *)&v12 viewLayoutMarginsDidChange];
  [(MFSearchSuggestionsViewController *)self systemMinimumLayoutMargins];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(MFSearchSuggestionsViewController *)self layoutValuesHelper];
  [v11 setSystemLayoutMargins:{v4, v6, v8, v10}];
}

- (void)keyboardVisibilityDidChange:(id)a3
{
  v19 = [a3 userInfo];
  v4 = [v19 objectForKeyedSubscript:UIKeyboardFrameEndUserInfoKey];
  [v4 CGRectValue];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v20 = +[UIScreen mainScreen];
  [v20 bounds];
  v25.origin.x = v13;
  v25.origin.y = v14;
  v25.size.width = v15;
  v25.size.height = v16;
  v23.origin.x = v6;
  v23.origin.y = v8;
  v23.size.width = v10;
  v23.size.height = v12;
  v24 = CGRectIntersection(v23, v25);
  Height = CGRectGetHeight(v24);

  [(MFSearchSuggestionsViewController *)self currentKeyboardHeight];
  if (v18 != Height)
  {
    [(MFSearchSuggestionsViewController *)self setCurrentKeyboardHeight:Height];
    v21 = [(MFSearchSuggestionsViewController *)self tableView];
    [MFSearchSuggestionsViewController configureReportedVisibleSuggestionsForTableView:"configureReportedVisibleSuggestionsForTableView:alwaysReportItems:keyboardVisibilityDidChange:" alwaysReportItems:? keyboardVisibilityDidChange:?];
  }
}

- (id)_defaultTableViewRowSelector
{
  objc_initWeak(&location, self);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100212E64;
  v5[3] = &unk_100655908;
  objc_copyWeak(&v6, &location);
  v2 = objc_retainBlock(v5);
  v3 = objc_retainBlock(v2);

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);

  return v3;
}

- (id)_topHitsTableViewCellPopulator
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100212FD4;
  v5[3] = &unk_100655930;
  v5[4] = self;
  v2 = objc_retainBlock(v5);
  v3 = objc_retainBlock(v2);

  return v3;
}

- (id)_topHitsTableViewRowHeightCalculator
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100213190;
  v5[3] = &unk_100655958;
  v5[4] = self;
  v2 = objc_retainBlock(v5);
  v3 = objc_retainBlock(v2);

  return v3;
}

- (id)_topHitsTableViewRowSelector
{
  objc_initWeak(&location, self);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10021338C;
  v5[3] = &unk_100655980;
  objc_copyWeak(&v6, &location);
  v2 = objc_retainBlock(v5);
  v3 = objc_retainBlock(v2);

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);

  return v3;
}

- (MFSearchSuggestionsTableViewModelReuseConfiguration)defaultReuseConfiguration
{
  defaultReuseConfiguration = self->_defaultReuseConfiguration;
  if (!defaultReuseConfiguration)
  {
    v4 = [[MFSearchSuggestionsTableViewModelReuseConfiguration alloc] initWithReuseIdentifier:@"kMFSearchSuggestionsCellIdentifier"];
    v5 = self->_defaultReuseConfiguration;
    self->_defaultReuseConfiguration = v4;

    v6 = [(MFSearchSuggestionsViewController *)self _defaultTableViewCellPopulator];
    [(MFSearchSuggestionsTableViewModelReuseConfiguration *)self->_defaultReuseConfiguration setCellPopulator:v6];

    v7 = [(MFSearchSuggestionsViewController *)self _defaultTableViewRowHeightCalculator];
    [(MFSearchSuggestionsTableViewModelReuseConfiguration *)self->_defaultReuseConfiguration setRowHeightCalculator:v7];

    v8 = [(MFSearchSuggestionsViewController *)self _defaultTableViewRowSelector];
    [(MFSearchSuggestionsTableViewModelReuseConfiguration *)self->_defaultReuseConfiguration setRowSelector:v8];

    defaultReuseConfiguration = self->_defaultReuseConfiguration;
  }

  return defaultReuseConfiguration;
}

- (MFSearchSuggestionsTableViewModelReuseConfiguration)topHitsReuseConfiguration
{
  if (!self->_topHitsReuseConfiguration)
  {
    v3 = [(MFSearchSuggestionsViewController *)self delegate];
    v4 = [v3 canGenerateTopHitsForSearchSuggestionsViewController:self];

    if (v4)
    {
      v5 = [MFSearchSuggestionsTableViewModelReuseConfiguration alloc];
      v6 = +[MessageListTableViewCell reusableIdentifier];
      v7 = [(MFSearchSuggestionsTableViewModelReuseConfiguration *)v5 initWithReuseIdentifier:v6];
      topHitsReuseConfiguration = self->_topHitsReuseConfiguration;
      self->_topHitsReuseConfiguration = v7;

      v9 = [(MFSearchSuggestionsViewController *)self _topHitsTableViewCellPopulator];
      [(MFSearchSuggestionsTableViewModelReuseConfiguration *)self->_topHitsReuseConfiguration setCellPopulator:v9];

      v10 = [(MFSearchSuggestionsViewController *)self _topHitsTableViewRowHeightCalculator];
      [(MFSearchSuggestionsTableViewModelReuseConfiguration *)self->_topHitsReuseConfiguration setRowHeightCalculator:v10];

      v11 = [(MFSearchSuggestionsViewController *)self _topHitsTableViewRowSelector];
      [(MFSearchSuggestionsTableViewModelReuseConfiguration *)self->_topHitsReuseConfiguration setRowSelector:v11];
    }
  }

  v12 = self->_topHitsReuseConfiguration;

  return v12;
}

- (id)_newSearchSuggestionsTableViewModel
{
  v3 = [MFSearchSuggestionsTableViewModel alloc];
  v4 = [objc_opt_class() categoryComparator];
  v5 = [(MFSearchSuggestionsViewController *)self defaultReuseConfiguration];
  v6 = [(MFSearchSuggestionsTableViewModel *)v3 initWithSectionComparator:v4 defaultReuseConfiguration:v5];

  v7 = [(MFSearchSuggestionsViewController *)self delegate];
  LODWORD(v5) = [v7 canGenerateTopHitsForSearchSuggestionsViewController:self];

  if (v5)
  {
    v8 = +[MUISearchSuggestionCategory topHitsCategory];
    v9 = [(MFSearchSuggestionsViewController *)self topHitsReuseConfiguration];
    [(MFSearchSuggestionsTableViewModel *)v6 registerCategory:v8 forReuseConfiguration:v9];
  }

  return v6;
}

- (void)setTableViewModel:(id)a3
{
  v5 = a3;
  if (self->_tableViewModel != v5)
  {
    v7 = v5;
    objc_storeStrong(&self->_tableViewModel, a3);
    v6 = [(MFSearchSuggestionsViewController *)self tableView];
    [v6 reloadData];

    v5 = v7;
  }
}

- (void)clearSuggestions
{
  [(NSMutableSet *)self->_touchedCategories removeAllObjects];
  [(MFSearchSuggestionsViewController *)self setSuggestionsUpdated:0];
  v3 = [(MFSearchSuggestionsViewController *)self _newSearchSuggestionsTableViewModel];
  [(MFSearchSuggestionsViewController *)self setTableViewModel:?];
}

- (void)beginUpdatingSuggestions
{
  [(NSMutableSet *)self->_touchedCategories removeAllObjects];

  [(MFSearchSuggestionsViewController *)self setSuggestionsUpdated:0];
}

- (void)endUpdatingSuggestions
{
  v3 = [(MFSearchSuggestionsViewController *)self tableViewModel];
  v5 = _NSConcreteStackBlock;
  v6 = 3221225472;
  v7 = sub_100213B14;
  v8 = &unk_1006559A8;
  v9 = self;
  v4 = [v3 copy];
  v10 = v4;
  [v3 enumerateSections:&v5];
  [(MFSearchSuggestionsViewController *)self setTableViewModel:v4, v5, v6, v7, v8, v9];
}

- (id)updateSuggestionsWithResult:(id)a3
{
  v34 = a3;
  [(MFSearchSuggestionsViewController *)self setSuggestionsUpdated:0];
  v4 = [(MFSearchSuggestionsViewController *)self tableViewModel];
  v33 = [v4 copy];

  v5 = +[NSMutableArray array];
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v6 = [v34 categories];
  v7 = [v6 countByEnumeratingWithState:&v46 objects:v54 count:16];
  if (v7)
  {
    v8 = *v47;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v47 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = [*(*(&v46 + 1) + 8 * i) groupingCategory];
        [v5 addObject:v10];
      }

      v7 = [v6 countByEnumeratingWithState:&v46 objects:v54 count:16];
    }

    while (v7);
  }

  [(NSMutableSet *)self->_touchedCategories addObjectsFromArray:v5];
  v11 = +[NSMutableDictionary dictionary];
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  obj = v5;
  v12 = [obj countByEnumeratingWithState:&v42 objects:v53 count:16];
  if (v12)
  {
    v13 = *v43;
    do
    {
      for (j = 0; j != v12; j = j + 1)
      {
        if (*v43 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v42 + 1) + 8 * j);
        v16 = +[NSMutableArray array];
        [v11 setObject:v16 forKeyedSubscript:v15];
      }

      v12 = [obj countByEnumeratingWithState:&v42 objects:v53 count:16];
    }

    while (v12);
  }

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v17 = [v34 suggestions];
  v18 = [v17 countByEnumeratingWithState:&v38 objects:v52 count:16];
  if (v18)
  {
    v19 = *v39;
    do
    {
      for (k = 0; k != v18; k = k + 1)
      {
        if (*v39 != v19)
        {
          objc_enumerationMutation(v17);
        }

        v21 = *(*(&v38 + 1) + 8 * k);
        v22 = [v21 category];
        v23 = [v22 groupingCategory];

        [v21 setDelegate:self];
        v24 = [v11 objectForKeyedSubscript:v23];
        [v24 addObject:v21];
      }

      v18 = [v17 countByEnumeratingWithState:&v38 objects:v52 count:16];
    }

    while (v18);
  }

  v36[0] = _NSConcreteStackBlock;
  v36[1] = 3221225472;
  v36[2] = sub_100214148;
  v36[3] = &unk_100651E20;
  v25 = v33;
  v37 = v25;
  [v11 enumerateKeysAndObjectsUsingBlock:v36];
  v26 = +[MFSearchSuggestionsViewController log];
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v51 = v11;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Update search suggestions with suggestions: %@", buf, 0xCu);
  }

  v27 = [v34 suggestions];
  v28 = [v27 count];

  if (v28)
  {
    v29 = [(MFSearchSuggestionsViewController *)self delegate];
    v30 = [v25 objectsByIdentifier];
    v31 = [v30 copy];
    [v29 reportSuggestionsFetched:v31];
  }

  [(MFSearchSuggestionsViewController *)self setTableViewModel:v25, v33];
  [(MFSearchSuggestionsViewController *)self setSuggestionsUpdated:1];

  return v11;
}

- (BOOL)hasSuggestions
{
  v2 = [(MFSearchSuggestionsViewController *)self tableViewModel];
  v3 = [v2 numberOfSections] != 0;

  return v3;
}

- (id)searchSuggestionsForCategory:(id)a3
{
  v4 = a3;
  v5 = [(MFSearchSuggestionsViewController *)self tableViewModel];
  v6 = [v5 sectionForIdentifier:v4];

  return v6;
}

- (void)reportVisibleSuggestionResults
{
  v3 = [(MFSearchSuggestionsViewController *)self tableView];
  [MFSearchSuggestionsViewController configureReportedVisibleSuggestionsForTableView:"configureReportedVisibleSuggestionsForTableView:alwaysReportItems:keyboardVisibilityDidChange:" alwaysReportItems:? keyboardVisibilityDidChange:?];
}

- (void)updateLayoutMargins:(UIEdgeInsets)a3
{
  right = a3.right;
  bottom = a3.bottom;
  left = a3.left;
  top = a3.top;
  v7 = [(MFSearchSuggestionsViewController *)self tableView];
  [v7 setLayoutMargins:{top, left, bottom, right}];
}

- (void)shouldReloadSearchSuggestion:(id)a3
{
  v4 = a3;
  v5 = [(MFSearchSuggestionsViewController *)self tableViewModel];
  v6 = [v5 indexPathForSuggestion:v4];

  if ([v6 row] == 0x7FFFFFFFFFFFFFFFLL || objc_msgSend(v6, "section") == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = MFLogGeneral();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = [(MFSearchSuggestionsViewController *)self tableViewModel];
      sub_10048C114(v4, v8, &v12);
    }
  }

  else
  {
    v9 = [(MFSearchSuggestionsViewController *)self tableView];
    [v9 beginUpdates];

    v10 = [(MFSearchSuggestionsViewController *)self tableView];
    v13 = v6;
    v11 = [NSArray arrayWithObjects:&v13 count:1];
    [v10 reloadRowsAtIndexPaths:v11 withRowAnimation:5];

    v7 = [(MFSearchSuggestionsViewController *)self tableView];
    [v7 endUpdates];
  }
}

- (void)didRemoveSearchSuggestion:(id)a3
{
  v4 = a3;
  v5 = [(MFSearchSuggestionsViewController *)self tableViewModel];
  v6 = [v5 indexPathForSuggestion:v4];

  if ([v6 row] == 0x7FFFFFFFFFFFFFFFLL || objc_msgSend(v6, "section") == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = MFLogGeneral();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = [(MFSearchSuggestionsViewController *)self tableViewModel];
      sub_10048C16C(v4, v8, &v11);
    }
  }

  else
  {
    tableViewModel = self->_tableViewModel;
    v12 = v6;
    v10 = [NSArray arrayWithObjects:&v12 count:1];
    v7 = [(MFSearchSuggestionsTableViewModel *)tableViewModel tableViewModelByRemovingItemsAtIndexPaths:v10];

    [(MFSearchSuggestionsViewController *)self setTableViewModel:v7];
  }
}

- (void)configureReportedVisibleSuggestionsForTableView:(id)a3 alwaysReportItems:(BOOL)a4 keyboardVisibilityDidChange:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v8 = a3;
  if ([(MFSearchSuggestionsViewController *)self suggestionsUpdated]|| v5)
  {
    v9 = [(MFSearchSuggestionsViewController *)self tableView];
    v10 = [v9 indexPathsForVisibleRows];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_100214930;
    v19[3] = &unk_1006559D0;
    v20 = v8;
    v21 = self;
    v11 = [v10 ef_filter:v19];
    v12 = [v11 sortedArrayUsingSelector:"compare:"];

    if ([v12 count])
    {
      v13 = [(MFSearchSuggestionsViewController *)self lastVisibleIndexPaths];
      v14 = [v13 isEqualToArray:v12];

      if (!v14 || v6)
      {
        v15 = [v12 copy];
        [(MFSearchSuggestionsViewController *)self setLastVisibleIndexPaths:v15];

        v18[0] = _NSConcreteStackBlock;
        v18[1] = 3221225472;
        v18[2] = sub_100214990;
        v18[3] = &unk_100652218;
        v18[4] = self;
        v16 = [v12 ef_compactMap:v18];
        v17 = [(MFSearchSuggestionsViewController *)self delegate];
        [v17 reportSuggestionsVisible:v16];
      }
    }
  }

  else
  {
    [(MFSearchSuggestionsViewController *)self setLastVisibleIndexPaths:0];
  }
}

- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MFSearchSuggestionsViewController *)self tableViewModel];
  [v8 tableView:v6 heightForRowAtIndexPath:v7];
  v10 = v9;

  return v10;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v8 = a3;
  v6 = a4;
  v7 = [(MFSearchSuggestionsViewController *)self tableViewModel];
  [v7 tableView:v8 didSelectRowAtIndexPath:v6];
}

- (int64_t)numberOfSectionsInTableView:(id)a3
{
  v4 = a3;
  v5 = [(MFSearchSuggestionsViewController *)self tableViewModel];
  v6 = [v5 numberOfSectionsInTableView:v4];

  return v6;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v6 = a3;
  v7 = [(MFSearchSuggestionsViewController *)self tableViewModel];
  v8 = [v7 tableView:v6 numberOfRowsInSection:a4];

  return v8;
}

- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4
{
  v6 = a3;
  v7 = [(MFSearchSuggestionsViewController *)self tableViewModel];
  v8 = [v7 tableView:v6 titleForHeaderInSection:a4];

  return v8;
}

- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4
{
  v6 = [a3 dequeueReusableHeaderFooterViewWithIdentifier:@"kMFSearchSectionHeaderCellIdentifier"];
  if (!v6)
  {
    v6 = [[UITableViewHeaderFooterView alloc] initWithReuseIdentifier:@"kMFSearchSectionHeaderCellIdentifier"];
  }

  v7 = [v6 contentConfiguration];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = [v6 defaultContentConfiguration];
  }

  v10 = v9;

  v11 = [(MFSearchSuggestionsViewController *)self tableViewModel];
  v12 = [v11 identifierAtIndex:a4];
  v13 = [v12 displayName];
  [v10 setText:v13];

  v14 = [v10 textProperties];
  [v14 setNumberOfLines:2];

  v15 = [v10 textProperties];
  [v15 setAdjustsFontSizeToFitWidth:1];

  [v6 setContentConfiguration:v10];

  return v6;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MFSearchSuggestionsViewController *)self tableViewModel];
  v9 = [v8 tableView:v6 cellForRowAtIndexPath:v7];

  [v9 setInsetsLayoutMarginsFromSafeArea:0];

  return v9;
}

- (id)viewForKeyboardAvoidance:(id)a3
{
  v3 = [(MFSearchSuggestionsViewController *)self tableView];

  return v3;
}

- (void)keyboardAvoidance:(id)a3 adjustForFrameOverlap:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  [(MFSearchSuggestionsViewController *)self currentKeyboardOverlap];
  v12.origin.x = x;
  v12.origin.y = y;
  v12.size.width = width;
  v12.size.height = height;
  if (!CGRectEqualToRect(v11, v12))
  {
    [(MFSearchSuggestionsViewController *)self setCurrentKeyboardOverlap:x, y, width, height];
    v9 = [(MFSearchSuggestionsViewController *)self tableView];
    [MFSearchSuggestionsViewController configureReportedVisibleSuggestionsForTableView:"configureReportedVisibleSuggestionsForTableView:alwaysReportItems:keyboardVisibilityDidChange:" alwaysReportItems:? keyboardVisibilityDidChange:?];
  }
}

- (MFSearchSuggestionsViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CGRect)currentKeyboardOverlap
{
  x = self->_currentKeyboardOverlap.origin.x;
  y = self->_currentKeyboardOverlap.origin.y;
  width = self->_currentKeyboardOverlap.size.width;
  height = self->_currentKeyboardOverlap.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (MailMainScene)scene
{
  WeakRetained = objc_loadWeakRetained(&self->_scene);

  return WeakRetained;
}

@end