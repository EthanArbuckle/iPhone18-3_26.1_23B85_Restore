@interface MFSearchSuggestionsViewController
+ (OS_os_log)log;
- (BOOL)hasSuggestions;
- (CGRect)currentKeyboardOverlap;
- (MFSearchSuggestionsTableViewModelReuseConfiguration)defaultReuseConfiguration;
- (MFSearchSuggestionsTableViewModelReuseConfiguration)topHitsReuseConfiguration;
- (MFSearchSuggestionsViewController)initWithCoder:(id)coder;
- (MFSearchSuggestionsViewController)initWithMainScene:(id)scene delegate:(id)delegate;
- (MFSearchSuggestionsViewController)initWithNibName:(id)name bundle:(id)bundle;
- (MFSearchSuggestionsViewControllerDelegate)delegate;
- (MailMainScene)scene;
- (double)tableView:(id)view heightForRowAtIndexPath:(id)path;
- (id)_defaultTableViewRowSelector;
- (id)_newSearchSuggestionsTableViewModel;
- (id)_topHitsTableViewCellPopulator;
- (id)_topHitsTableViewRowHeightCalculator;
- (id)_topHitsTableViewRowSelector;
- (id)searchSuggestionsForCategory:(id)category;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section;
- (id)updateSuggestionsWithResult:(id)result;
- (id)viewForKeyboardAvoidance:(id)avoidance;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)beginUpdatingSuggestions;
- (void)clearSuggestions;
- (void)configureReportedVisibleSuggestionsForTableView:(id)view alwaysReportItems:(BOOL)items keyboardVisibilityDidChange:(BOOL)change;
- (void)dealloc;
- (void)didRemoveSearchSuggestion:(id)suggestion;
- (void)endUpdatingSuggestions;
- (void)keyboardAvoidance:(id)avoidance adjustForFrameOverlap:(CGRect)overlap;
- (void)keyboardVisibilityDidChange:(id)change;
- (void)loadView;
- (void)reportVisibleSuggestionResults;
- (void)setTableViewModel:(id)model;
- (void)shouldReloadSearchSuggestion:(id)suggestion;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)traitCollectionDidChange:(id)change;
- (void)updateLayoutMargins:(UIEdgeInsets)margins;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewLayoutMarginsDidChange;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation MFSearchSuggestionsViewController

+ (OS_os_log)log
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100212400;
  block[3] = &unk_10064C4F8;
  block[4] = self;
  if (qword_1006DD638 != -1)
  {
    dispatch_once(&qword_1006DD638, block);
  }

  v2 = qword_1006DD630;

  return v2;
}

- (MFSearchSuggestionsViewController)initWithNibName:(id)name bundle:(id)bundle
{
  nameCopy = name;
  bundleCopy = bundle;
  [(MFSearchSuggestionsViewController *)self doesNotRecognizeSelector:a2];
  __assert_rtn("[MFSearchSuggestionsViewController initWithNibName:bundle:]", "MFSearchSuggestionsViewController.m", 128, "0");
}

- (MFSearchSuggestionsViewController)initWithCoder:(id)coder
{
  coderCopy = coder;
  [(MFSearchSuggestionsViewController *)self doesNotRecognizeSelector:a2];
  __assert_rtn("[MFSearchSuggestionsViewController initWithCoder:]", "MFSearchSuggestionsViewController.m", 130, "0");
}

- (MFSearchSuggestionsViewController)initWithMainScene:(id)scene delegate:(id)delegate
{
  sceneCopy = scene;
  delegateCopy = delegate;
  v17.receiver = self;
  v17.super_class = MFSearchSuggestionsViewController;
  v8 = [(MFSearchSuggestionsViewController *)&v17 initWithStyle:0];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_scene, sceneCopy);
    objc_storeWeak(&v9->_delegate, delegateCopy);
    v10 = objc_alloc_init(NSMutableSet);
    touchedCategories = v9->_touchedCategories;
    v9->_touchedCategories = v10;

    _newSearchSuggestionsTableViewModel = [(MFSearchSuggestionsViewController *)v9 _newSearchSuggestionsTableViewModel];
    tableViewModel = v9->_tableViewModel;
    v9->_tableViewModel = _newSearchSuggestionsTableViewModel;

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
  tableView = [(MFSearchSuggestionsViewController *)self tableView];
  [tableView setKeyboardDismissMode:1];
  [tableView setEstimatedRowHeight:44.0];
  [tableView setRowHeight:UITableViewAutomaticDimension];
  [tableView setInsetsLayoutMarginsFromSafeArea:0];
  preferredContentSizeCategory = [UIApp preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

  [tableView _setHeaderAndFooterViewsFloat:!IsAccessibilityCategory];
  [tableView registerClass:objc_opt_class() forCellReuseIdentifier:@"kMFSearchSuggestionsCellIdentifier"];
  v6 = objc_opt_class();
  v7 = +[MessageListTableViewCell reusableIdentifier];
  [tableView registerClass:v6 forCellReuseIdentifier:v7];

  [tableView registerClass:objc_opt_class() forHeaderFooterViewReuseIdentifier:@"kMFSearchSectionHeaderCellIdentifier"];
  v8 = +[MFKeyboardAvoidance sharedController];
  [v8 registerKeyboardAvoidable:self];
}

- (void)viewWillAppear:(BOOL)appear
{
  v6.receiver = self;
  v6.super_class = MFSearchSuggestionsViewController;
  [(MFSearchSuggestionsViewController *)&v6 viewWillAppear:appear];
  layoutValuesHelper = [(MFSearchSuggestionsViewController *)self layoutValuesHelper];
  traitCollection = [(MFSearchSuggestionsViewController *)self traitCollection];
  [layoutValuesHelper setTraitCollection:traitCollection];

  [(MFSearchSuggestionsViewController *)self systemMinimumLayoutMargins];
  [layoutValuesHelper setSystemLayoutMargins:?];
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  v10.receiver = self;
  v10.super_class = MFSearchSuggestionsViewController;
  [(MFSearchSuggestionsViewController *)&v10 traitCollectionDidChange:changeCopy];
  traitCollection = [(MFSearchSuggestionsViewController *)self traitCollection];
  if ([traitCollection mf_traitDifferenceAffectsTextLayout:changeCopy])
  {
    layoutValuesHelper = [(MFSearchSuggestionsViewController *)self layoutValuesHelper];
    [layoutValuesHelper setTraitCollection:traitCollection];

    preferredContentSizeCategory = [UIApp preferredContentSizeCategory];
    IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

    tableView = [(MFSearchSuggestionsViewController *)self tableView];
    [tableView _setHeaderAndFooterViewsFloat:!IsAccessibilityCategory];
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = MFSearchSuggestionsViewController;
  [(MFSearchSuggestionsViewController *)&v5 viewDidAppear:appear];
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
  layoutValuesHelper = [(MFSearchSuggestionsViewController *)self layoutValuesHelper];
  [layoutValuesHelper setSystemLayoutMargins:{v4, v6, v8, v10}];
}

- (void)keyboardVisibilityDidChange:(id)change
{
  userInfo = [change userInfo];
  v4 = [userInfo objectForKeyedSubscript:UIKeyboardFrameEndUserInfoKey];
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
    tableView = [(MFSearchSuggestionsViewController *)self tableView];
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

    _defaultTableViewCellPopulator = [(MFSearchSuggestionsViewController *)self _defaultTableViewCellPopulator];
    [(MFSearchSuggestionsTableViewModelReuseConfiguration *)self->_defaultReuseConfiguration setCellPopulator:_defaultTableViewCellPopulator];

    _defaultTableViewRowHeightCalculator = [(MFSearchSuggestionsViewController *)self _defaultTableViewRowHeightCalculator];
    [(MFSearchSuggestionsTableViewModelReuseConfiguration *)self->_defaultReuseConfiguration setRowHeightCalculator:_defaultTableViewRowHeightCalculator];

    _defaultTableViewRowSelector = [(MFSearchSuggestionsViewController *)self _defaultTableViewRowSelector];
    [(MFSearchSuggestionsTableViewModelReuseConfiguration *)self->_defaultReuseConfiguration setRowSelector:_defaultTableViewRowSelector];

    defaultReuseConfiguration = self->_defaultReuseConfiguration;
  }

  return defaultReuseConfiguration;
}

- (MFSearchSuggestionsTableViewModelReuseConfiguration)topHitsReuseConfiguration
{
  if (!self->_topHitsReuseConfiguration)
  {
    delegate = [(MFSearchSuggestionsViewController *)self delegate];
    v4 = [delegate canGenerateTopHitsForSearchSuggestionsViewController:self];

    if (v4)
    {
      v5 = [MFSearchSuggestionsTableViewModelReuseConfiguration alloc];
      v6 = +[MessageListTableViewCell reusableIdentifier];
      v7 = [(MFSearchSuggestionsTableViewModelReuseConfiguration *)v5 initWithReuseIdentifier:v6];
      topHitsReuseConfiguration = self->_topHitsReuseConfiguration;
      self->_topHitsReuseConfiguration = v7;

      _topHitsTableViewCellPopulator = [(MFSearchSuggestionsViewController *)self _topHitsTableViewCellPopulator];
      [(MFSearchSuggestionsTableViewModelReuseConfiguration *)self->_topHitsReuseConfiguration setCellPopulator:_topHitsTableViewCellPopulator];

      _topHitsTableViewRowHeightCalculator = [(MFSearchSuggestionsViewController *)self _topHitsTableViewRowHeightCalculator];
      [(MFSearchSuggestionsTableViewModelReuseConfiguration *)self->_topHitsReuseConfiguration setRowHeightCalculator:_topHitsTableViewRowHeightCalculator];

      _topHitsTableViewRowSelector = [(MFSearchSuggestionsViewController *)self _topHitsTableViewRowSelector];
      [(MFSearchSuggestionsTableViewModelReuseConfiguration *)self->_topHitsReuseConfiguration setRowSelector:_topHitsTableViewRowSelector];
    }
  }

  v12 = self->_topHitsReuseConfiguration;

  return v12;
}

- (id)_newSearchSuggestionsTableViewModel
{
  v3 = [MFSearchSuggestionsTableViewModel alloc];
  categoryComparator = [objc_opt_class() categoryComparator];
  defaultReuseConfiguration = [(MFSearchSuggestionsViewController *)self defaultReuseConfiguration];
  v6 = [(MFSearchSuggestionsTableViewModel *)v3 initWithSectionComparator:categoryComparator defaultReuseConfiguration:defaultReuseConfiguration];

  delegate = [(MFSearchSuggestionsViewController *)self delegate];
  LODWORD(defaultReuseConfiguration) = [delegate canGenerateTopHitsForSearchSuggestionsViewController:self];

  if (defaultReuseConfiguration)
  {
    v8 = +[MUISearchSuggestionCategory topHitsCategory];
    topHitsReuseConfiguration = [(MFSearchSuggestionsViewController *)self topHitsReuseConfiguration];
    [(MFSearchSuggestionsTableViewModel *)v6 registerCategory:v8 forReuseConfiguration:topHitsReuseConfiguration];
  }

  return v6;
}

- (void)setTableViewModel:(id)model
{
  modelCopy = model;
  if (self->_tableViewModel != modelCopy)
  {
    v7 = modelCopy;
    objc_storeStrong(&self->_tableViewModel, model);
    tableView = [(MFSearchSuggestionsViewController *)self tableView];
    [tableView reloadData];

    modelCopy = v7;
  }
}

- (void)clearSuggestions
{
  [(NSMutableSet *)self->_touchedCategories removeAllObjects];
  [(MFSearchSuggestionsViewController *)self setSuggestionsUpdated:0];
  _newSearchSuggestionsTableViewModel = [(MFSearchSuggestionsViewController *)self _newSearchSuggestionsTableViewModel];
  [(MFSearchSuggestionsViewController *)self setTableViewModel:?];
}

- (void)beginUpdatingSuggestions
{
  [(NSMutableSet *)self->_touchedCategories removeAllObjects];

  [(MFSearchSuggestionsViewController *)self setSuggestionsUpdated:0];
}

- (void)endUpdatingSuggestions
{
  tableViewModel = [(MFSearchSuggestionsViewController *)self tableViewModel];
  v5 = _NSConcreteStackBlock;
  v6 = 3221225472;
  v7 = sub_100213B14;
  v8 = &unk_1006559A8;
  selfCopy = self;
  v4 = [tableViewModel copy];
  v10 = v4;
  [tableViewModel enumerateSections:&v5];
  [(MFSearchSuggestionsViewController *)self setTableViewModel:v4, v5, v6, v7, v8, selfCopy];
}

- (id)updateSuggestionsWithResult:(id)result
{
  resultCopy = result;
  [(MFSearchSuggestionsViewController *)self setSuggestionsUpdated:0];
  tableViewModel = [(MFSearchSuggestionsViewController *)self tableViewModel];
  v33 = [tableViewModel copy];

  v5 = +[NSMutableArray array];
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  categories = [resultCopy categories];
  v7 = [categories countByEnumeratingWithState:&v46 objects:v54 count:16];
  if (v7)
  {
    v8 = *v47;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v47 != v8)
        {
          objc_enumerationMutation(categories);
        }

        groupingCategory = [*(*(&v46 + 1) + 8 * i) groupingCategory];
        [v5 addObject:groupingCategory];
      }

      v7 = [categories countByEnumeratingWithState:&v46 objects:v54 count:16];
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
  suggestions = [resultCopy suggestions];
  v18 = [suggestions countByEnumeratingWithState:&v38 objects:v52 count:16];
  if (v18)
  {
    v19 = *v39;
    do
    {
      for (k = 0; k != v18; k = k + 1)
      {
        if (*v39 != v19)
        {
          objc_enumerationMutation(suggestions);
        }

        v21 = *(*(&v38 + 1) + 8 * k);
        category = [v21 category];
        groupingCategory2 = [category groupingCategory];

        [v21 setDelegate:self];
        v24 = [v11 objectForKeyedSubscript:groupingCategory2];
        [v24 addObject:v21];
      }

      v18 = [suggestions countByEnumeratingWithState:&v38 objects:v52 count:16];
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

  suggestions2 = [resultCopy suggestions];
  v28 = [suggestions2 count];

  if (v28)
  {
    delegate = [(MFSearchSuggestionsViewController *)self delegate];
    objectsByIdentifier = [v25 objectsByIdentifier];
    v31 = [objectsByIdentifier copy];
    [delegate reportSuggestionsFetched:v31];
  }

  [(MFSearchSuggestionsViewController *)self setTableViewModel:v25, v33];
  [(MFSearchSuggestionsViewController *)self setSuggestionsUpdated:1];

  return v11;
}

- (BOOL)hasSuggestions
{
  tableViewModel = [(MFSearchSuggestionsViewController *)self tableViewModel];
  v3 = [tableViewModel numberOfSections] != 0;

  return v3;
}

- (id)searchSuggestionsForCategory:(id)category
{
  categoryCopy = category;
  tableViewModel = [(MFSearchSuggestionsViewController *)self tableViewModel];
  v6 = [tableViewModel sectionForIdentifier:categoryCopy];

  return v6;
}

- (void)reportVisibleSuggestionResults
{
  tableView = [(MFSearchSuggestionsViewController *)self tableView];
  [MFSearchSuggestionsViewController configureReportedVisibleSuggestionsForTableView:"configureReportedVisibleSuggestionsForTableView:alwaysReportItems:keyboardVisibilityDidChange:" alwaysReportItems:? keyboardVisibilityDidChange:?];
}

- (void)updateLayoutMargins:(UIEdgeInsets)margins
{
  right = margins.right;
  bottom = margins.bottom;
  left = margins.left;
  top = margins.top;
  tableView = [(MFSearchSuggestionsViewController *)self tableView];
  [tableView setLayoutMargins:{top, left, bottom, right}];
}

- (void)shouldReloadSearchSuggestion:(id)suggestion
{
  suggestionCopy = suggestion;
  tableViewModel = [(MFSearchSuggestionsViewController *)self tableViewModel];
  v6 = [tableViewModel indexPathForSuggestion:suggestionCopy];

  if ([v6 row] == 0x7FFFFFFFFFFFFFFFLL || objc_msgSend(v6, "section") == 0x7FFFFFFFFFFFFFFFLL)
  {
    tableView3 = MFLogGeneral();
    if (os_log_type_enabled(tableView3, OS_LOG_TYPE_ERROR))
    {
      tableViewModel2 = [(MFSearchSuggestionsViewController *)self tableViewModel];
      sub_10048C114(suggestionCopy, tableViewModel2, &v12);
    }
  }

  else
  {
    tableView = [(MFSearchSuggestionsViewController *)self tableView];
    [tableView beginUpdates];

    tableView2 = [(MFSearchSuggestionsViewController *)self tableView];
    v13 = v6;
    v11 = [NSArray arrayWithObjects:&v13 count:1];
    [tableView2 reloadRowsAtIndexPaths:v11 withRowAnimation:5];

    tableView3 = [(MFSearchSuggestionsViewController *)self tableView];
    [tableView3 endUpdates];
  }
}

- (void)didRemoveSearchSuggestion:(id)suggestion
{
  suggestionCopy = suggestion;
  tableViewModel = [(MFSearchSuggestionsViewController *)self tableViewModel];
  v6 = [tableViewModel indexPathForSuggestion:suggestionCopy];

  if ([v6 row] == 0x7FFFFFFFFFFFFFFFLL || objc_msgSend(v6, "section") == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = MFLogGeneral();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      tableViewModel2 = [(MFSearchSuggestionsViewController *)self tableViewModel];
      sub_10048C16C(suggestionCopy, tableViewModel2, &v11);
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

- (void)configureReportedVisibleSuggestionsForTableView:(id)view alwaysReportItems:(BOOL)items keyboardVisibilityDidChange:(BOOL)change
{
  changeCopy = change;
  itemsCopy = items;
  viewCopy = view;
  if ([(MFSearchSuggestionsViewController *)self suggestionsUpdated]|| changeCopy)
  {
    tableView = [(MFSearchSuggestionsViewController *)self tableView];
    indexPathsForVisibleRows = [tableView indexPathsForVisibleRows];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_100214930;
    v19[3] = &unk_1006559D0;
    v20 = viewCopy;
    selfCopy = self;
    v11 = [indexPathsForVisibleRows ef_filter:v19];
    v12 = [v11 sortedArrayUsingSelector:"compare:"];

    if ([v12 count])
    {
      lastVisibleIndexPaths = [(MFSearchSuggestionsViewController *)self lastVisibleIndexPaths];
      v14 = [lastVisibleIndexPaths isEqualToArray:v12];

      if (!v14 || itemsCopy)
      {
        v15 = [v12 copy];
        [(MFSearchSuggestionsViewController *)self setLastVisibleIndexPaths:v15];

        v18[0] = _NSConcreteStackBlock;
        v18[1] = 3221225472;
        v18[2] = sub_100214990;
        v18[3] = &unk_100652218;
        v18[4] = self;
        v16 = [v12 ef_compactMap:v18];
        delegate = [(MFSearchSuggestionsViewController *)self delegate];
        [delegate reportSuggestionsVisible:v16];
      }
    }
  }

  else
  {
    [(MFSearchSuggestionsViewController *)self setLastVisibleIndexPaths:0];
  }
}

- (double)tableView:(id)view heightForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  tableViewModel = [(MFSearchSuggestionsViewController *)self tableViewModel];
  [tableViewModel tableView:viewCopy heightForRowAtIndexPath:pathCopy];
  v10 = v9;

  return v10;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  tableViewModel = [(MFSearchSuggestionsViewController *)self tableViewModel];
  [tableViewModel tableView:viewCopy didSelectRowAtIndexPath:pathCopy];
}

- (int64_t)numberOfSectionsInTableView:(id)view
{
  viewCopy = view;
  tableViewModel = [(MFSearchSuggestionsViewController *)self tableViewModel];
  v6 = [tableViewModel numberOfSectionsInTableView:viewCopy];

  return v6;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  viewCopy = view;
  tableViewModel = [(MFSearchSuggestionsViewController *)self tableViewModel];
  v8 = [tableViewModel tableView:viewCopy numberOfRowsInSection:section];

  return v8;
}

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  viewCopy = view;
  tableViewModel = [(MFSearchSuggestionsViewController *)self tableViewModel];
  v8 = [tableViewModel tableView:viewCopy titleForHeaderInSection:section];

  return v8;
}

- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section
{
  v6 = [view dequeueReusableHeaderFooterViewWithIdentifier:@"kMFSearchSectionHeaderCellIdentifier"];
  if (!v6)
  {
    v6 = [[UITableViewHeaderFooterView alloc] initWithReuseIdentifier:@"kMFSearchSectionHeaderCellIdentifier"];
  }

  contentConfiguration = [v6 contentConfiguration];
  v8 = contentConfiguration;
  if (contentConfiguration)
  {
    defaultContentConfiguration = contentConfiguration;
  }

  else
  {
    defaultContentConfiguration = [v6 defaultContentConfiguration];
  }

  v10 = defaultContentConfiguration;

  tableViewModel = [(MFSearchSuggestionsViewController *)self tableViewModel];
  v12 = [tableViewModel identifierAtIndex:section];
  displayName = [v12 displayName];
  [v10 setText:displayName];

  textProperties = [v10 textProperties];
  [textProperties setNumberOfLines:2];

  textProperties2 = [v10 textProperties];
  [textProperties2 setAdjustsFontSizeToFitWidth:1];

  [v6 setContentConfiguration:v10];

  return v6;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  tableViewModel = [(MFSearchSuggestionsViewController *)self tableViewModel];
  v9 = [tableViewModel tableView:viewCopy cellForRowAtIndexPath:pathCopy];

  [v9 setInsetsLayoutMarginsFromSafeArea:0];

  return v9;
}

- (id)viewForKeyboardAvoidance:(id)avoidance
{
  tableView = [(MFSearchSuggestionsViewController *)self tableView];

  return tableView;
}

- (void)keyboardAvoidance:(id)avoidance adjustForFrameOverlap:(CGRect)overlap
{
  height = overlap.size.height;
  width = overlap.size.width;
  y = overlap.origin.y;
  x = overlap.origin.x;
  [(MFSearchSuggestionsViewController *)self currentKeyboardOverlap];
  v12.origin.x = x;
  v12.origin.y = y;
  v12.size.width = width;
  v12.size.height = height;
  if (!CGRectEqualToRect(v11, v12))
  {
    [(MFSearchSuggestionsViewController *)self setCurrentKeyboardOverlap:x, y, width, height];
    tableView = [(MFSearchSuggestionsViewController *)self tableView];
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