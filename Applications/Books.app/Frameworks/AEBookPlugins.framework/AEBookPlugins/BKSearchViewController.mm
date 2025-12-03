@interface BKSearchViewController
- (BESearchResultTableViewCell)dummySearchResultsCell;
- (BKSearchLoadingTableViewCell)dummySearchLoadingCell;
- (BKSearchViewController)initWithNibName:(id)name bundle:(id)bundle;
- (BKSearchViewControllerDelegate)searchDelegate;
- (BOOL)_isRTL;
- (BOOL)_shouldShowSearchResultsView;
- (BOOL)searchStringIsPageNumber;
- (CGSize)_preferredContentSizeIsMinimum:(BOOL *)minimum;
- (double)_resultsEstimatedRowHeight;
- (double)_resultsHeaderHeight;
- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section;
- (id)_escapedSearchString;
- (id)_loadingCellForTableView:(id)view;
- (id)_resultsCellForRow:(unint64_t)row inTableView:(id)view;
- (id)environmentOverrideViewForSearchController:(id)controller;
- (id)physicalPageMapForPageTitle:(id)title;
- (id)pointerInteraction:(id)interaction regionForRequest:(id)request defaultRegion:(id)region;
- (id)pointerInteraction:(id)interaction styleForRegion:(id)region;
- (id)searchController;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section;
- (id)tableView:(id)view willSelectRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (unint64_t)supportedInterfaceOrientations;
- (void)_analyticsSubmitInBookSearchEventWithSearchText:(id)text;
- (void)_buildConstraints;
- (void)_configureLoadingCell:(id)cell;
- (void)_configureResultsCell:(id)cell forRow:(unint64_t)row inTableView:(id)view;
- (void)_reloadResultsAndResizeIfNecessary:(BOOL)necessary;
- (void)_traitCollectionDidChange:(id)change previousTraitCollection:(id)collection;
- (void)_updateCancelButton;
- (void)_updateContentSize:(BOOL)size;
- (void)_updateFooterConstraint;
- (void)_updateLoadingCell:(id)cell;
- (void)_updateWebsearchButtonsStatus;
- (void)dealloc;
- (void)didReceiveMemoryWarning;
- (void)handleDone:(id)done;
- (void)openURLUsingNSString:(id)string;
- (void)paginationComplete;
- (void)releaseViews;
- (void)revealSearchResult:(id)result animated:(BOOL)animated;
- (void)searchBarCancelButtonClicked:(id)clicked;
- (void)searchBarSearchButtonClicked:(id)clicked;
- (void)searchControllerFinishedSearchingChapter:(id)chapter;
- (void)searchControllerWillBeginSearching:(id)searching reportAnalytics:(BOOL)analytics;
- (void)searchEncyclopediaForString:(id)string;
- (void)searchWeb:(id)web;
- (void)searchWebForString:(id)string;
- (void)searchWikipedia:(id)wikipedia;
- (void)setPaginationController:(id)controller;
- (void)setSearchString:(id)string;
- (void)setShowPhysicalPages:(BOOL)pages;
- (void)setTheme:(id)theme;
- (void)stylizeForTheme;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)updateSearchResultsForSearchController:(id)controller;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)appearing;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation BKSearchViewController

- (BKSearchViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v8.receiver = self;
  v8.super_class = BKSearchViewController;
  v4 = [(BKViewController *)&v8 initWithNibName:name bundle:bundle];
  if (v4)
  {
    v5 = +[UITraitCollection bc_allAPITraits];
    v6 = [(BKSearchViewController *)v4 registerForTraitChanges:v5 withAction:"_traitCollectionDidChange:previousTraitCollection:"];
  }

  return v4;
}

- (void)releaseViews
{
  [(UISearchBar *)self->_searchField setDelegate:0];
  searchField = self->_searchField;
  self->_searchField = 0;

  [(UITableView *)self->_resultsTable setDelegate:0];
  [(UITableView *)self->_resultsTable setDataSource:0];
  resultsTable = self->_resultsTable;
  self->_resultsTable = 0;

  container = self->_container;
  self->_container = 0;

  footer = self->_footer;
  self->_footer = 0;

  [(UIButton *)self->_googleButton removeTarget:self action:0 forControlEvents:0xFFFFFFFFLL];
  googleButton = self->_googleButton;
  self->_googleButton = 0;

  [(UIButton *)self->_wikipediaButton removeTarget:self action:0 forControlEvents:0xFFFFFFFFLL];
  wikipediaButton = self->_wikipediaButton;
  self->_wikipediaButton = 0;

  headerDividerView = self->_headerDividerView;
  self->_headerDividerView = 0;

  footerTopBorderView = self->_footerTopBorderView;
  self->_footerTopBorderView = 0;

  dummySearchResultsCell = self->_dummySearchResultsCell;
  self->_dummySearchResultsCell = 0;

  dummySearchLoadingCell = self->_dummySearchLoadingCell;
  self->_dummySearchLoadingCell = 0;

  v13.receiver = self;
  v13.super_class = BKSearchViewController;
  [(BKViewController *)&v13 releaseViews];
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self name:UIContentSizeCategoryDidChangeNotification object:0];

  [(BKSearchViewController *)self releaseViews];
  objc_storeWeak(&self->_searchDelegate, 0);
  [(BKSearchController *)self->_searchController setDelegate:0];
  [(BKSearchController *)self->_searchController cancelSearch];
  [(BKSearchViewController *)self setPaginationController:0];
  v4.receiver = self;
  v4.super_class = BKSearchViewController;
  [(BKViewController *)&v4 dealloc];
}

- (void)viewDidLoad
{
  v64.receiver = self;
  v64.super_class = BKSearchViewController;
  [(BKSearchViewController *)&v64 viewDidLoad];
  v3 = [UIView alloc];
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v7 = [v3 initWithFrame:{CGRectZero.origin.x, y, width, height}];
  container = self->_container;
  self->_container = v7;

  [(UIView *)self->_container setTranslatesAutoresizingMaskIntoConstraints:0];
  view = [(BKSearchViewController *)self view];
  [view addSubview:self->_container];

  v10 = objc_alloc_init(BEHairlineDividerView);
  headerDividerView = self->_headerDividerView;
  self->_headerDividerView = v10;

  [(BEHairlineDividerView *)self->_headerDividerView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(BEHairlineDividerView *)self->_headerDividerView setHorizontal:1];
  [(UIView *)self->_container addSubview:self->_headerDividerView];
  v12 = [[UITableView alloc] initWithFrame:0 style:{CGRectZero.origin.x, y, width, height}];
  resultsTable = self->_resultsTable;
  self->_resultsTable = v12;

  [(UITableView *)self->_resultsTable setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UITableView *)self->_resultsTable setDelegate:self];
  [(UITableView *)self->_resultsTable setDataSource:self];
  v14 = isPad();
  v15 = &kBESearchSectionSearchResultCellHeightPad;
  if (!v14)
  {
    v15 = &kBESearchSectionSearchResultCellHeightPhone;
  }

  [(UITableView *)self->_resultsTable setEstimatedRowHeight:*v15];
  [(UITableView *)self->_resultsTable setRowHeight:UITableViewAutomaticDimension];
  [(BKSearchViewController *)self _resultsHeaderHeight];
  [(UITableView *)self->_resultsTable setSectionHeaderHeight:?];
  [(UITableView *)self->_resultsTable setSectionFooterHeight:0.0];
  [(UITableView *)self->_resultsTable registerClass:objc_opt_class() forCellReuseIdentifier:kBESearchTableViewCellResultsIdentifier];
  [(UITableView *)self->_resultsTable registerClass:objc_opt_class() forCellReuseIdentifier:kBESearchTableViewCellResultsNightIdentifier];
  [(UITableView *)self->_resultsTable setContentInset:0.0, 0.0, -1.0, 0.0];
  [(UIView *)self->_container addSubview:self->_resultsTable];
  p_setupStandardUISearchController = [(BKSearchViewController *)self p_setupStandardUISearchController];
  [(BKSearchViewController *)self setUiSearchController:p_setupStandardUISearchController];

  uiSearchController = [(BKSearchViewController *)self uiSearchController];
  [uiSearchController setSearchResultsUpdater:self];

  uiSearchController2 = [(BKSearchViewController *)self uiSearchController];
  searchBar = [uiSearchController2 searchBar];
  [searchBar setDelegate:self];

  LODWORD(uiSearchController2) = self->_contentType;
  v20 = AEBundle();
  v21 = v20;
  if (uiSearchController2 == 2)
  {
    v22 = @"In this PDF";
  }

  else
  {
    v22 = @"In this book";
  }

  v23 = [v20 localizedStringForKey:v22 value:&stru_1E7188 table:0];
  uiSearchController3 = [(BKSearchViewController *)self uiSearchController];
  searchBar2 = [uiSearchController3 searchBar];
  [searchBar2 setPlaceholder:v23];

  LODWORD(v23) = self->_contentType;
  v26 = AEBundle();
  v27 = v26;
  if (v23 == 2)
  {
    v28 = @"Search PDF";
  }

  else
  {
    v28 = @"Search Book";
  }

  v29 = [v26 localizedStringForKey:v28 value:&stru_1E7188 table:0];
  navigationItem = [(BKSearchViewController *)self navigationItem];
  [navigationItem setTitle:v29];

  uiSearchController4 = [(BKSearchViewController *)self uiSearchController];
  searchBar3 = [uiSearchController4 searchBar];
  searchField = self->_searchField;
  self->_searchField = searchBar3;

  v34 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  footer = self->_footer;
  self->_footer = v34;

  [(UIView *)self->_footer setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIView *)self->_container addSubview:self->_footer];
  [(UIView *)self->_footer bounds];
  v36 = CGRectGetWidth(v65);
  v37 = +[UIScreen mainScreen];
  [v37 scale];
  v39 = 1.0 / v38;

  v40 = [[BEHairlineDividerView alloc] initWithFrame:{0.0, 0.0, v36, v39}];
  footerTopBorderView = self->_footerTopBorderView;
  self->_footerTopBorderView = v40;

  [(BEHairlineDividerView *)self->_footerTopBorderView setAutoresizingMask:2];
  [(BEHairlineDividerView *)self->_footerTopBorderView setHorizontal:1];
  [(UIView *)self->_footer addSubview:self->_footerTopBorderView];
  v42 = [UIFont systemFontOfSize:17.0];
  v43 = [UIButton buttonWithType:1];
  googleButton = self->_googleButton;
  self->_googleButton = v43;

  [(UIButton *)self->_googleButton setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIView *)self->_footer addSubview:self->_googleButton];
  titleLabel = [(UIButton *)self->_googleButton titleLabel];
  [titleLabel setFont:v42];
  [v42 pointSize];
  [titleLabel setMinimumScaleFactor:8.0 / v46];
  [titleLabel setAdjustsFontSizeToFitWidth:1];
  [titleLabel setTextAlignment:1];
  if ([(BKSearchViewController *)self _isRTL])
  {
    v47 = 2;
  }

  else
  {
    v47 = 1;
  }

  [(UIButton *)self->_googleButton setContentHorizontalAlignment:v47];
  [(UIButton *)self->_googleButton addTarget:self action:"searchWeb:" forControlEvents:64];
  v48 = self->_googleButton;
  v49 = AEBundle();
  v50 = [v49 localizedStringForKey:@"Search Web" value:&stru_1E7188 table:0];
  [(UIButton *)v48 setTitle:v50 forState:0];

  v51 = self->_googleButton;
  v52 = [[UIPointerInteraction alloc] initWithDelegate:self];
  [(UIButton *)v51 addInteraction:v52];

  v53 = [UIButton buttonWithType:1];
  wikipediaButton = self->_wikipediaButton;
  self->_wikipediaButton = v53;

  [(UIButton *)self->_wikipediaButton setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIView *)self->_footer addSubview:self->_wikipediaButton];
  titleLabel2 = [(UIButton *)self->_wikipediaButton titleLabel];
  [titleLabel2 setFont:v42];
  [v42 pointSize];
  [titleLabel2 setMinimumScaleFactor:8.0 / v56];
  [titleLabel2 setAdjustsFontSizeToFitWidth:1];
  [titleLabel2 setTextAlignment:1];
  if ([(BKSearchViewController *)self _isRTL])
  {
    v57 = 1;
  }

  else
  {
    v57 = 2;
  }

  [(UIButton *)self->_wikipediaButton setContentHorizontalAlignment:v57];
  [(UIButton *)self->_wikipediaButton addTarget:self action:"searchWikipedia:" forControlEvents:64];
  v58 = self->_wikipediaButton;
  v59 = AEBundle();
  v60 = [v59 localizedStringForKey:@"Search Wikipedia" value:&stru_1E7188 table:0];
  [(UIButton *)v58 setTitle:v60 forState:0];

  v61 = self->_wikipediaButton;
  v62 = [[UIPointerInteraction alloc] initWithDelegate:self];
  [(UIButton *)v61 addInteraction:v62];

  [(BKSearchViewController *)self _buildConstraints];
  [(BKSearchViewController *)self _updateContentSize:0];
  v63 = +[NSNotificationCenter defaultCenter];
  [v63 addObserver:self selector:"contentSizeCategoryDidChange" name:UIContentSizeCategoryDidChangeNotification object:0];
}

- (void)_buildConstraints
{
  headerDividerView = self->_headerDividerView;
  constraints = [(BEHairlineDividerView *)headerDividerView constraints];
  [(BEHairlineDividerView *)headerDividerView removeConstraints:constraints];

  container = self->_container;
  constraints2 = [(UIView *)container constraints];
  [(UIView *)container removeConstraints:constraints2];

  resultsTable = self->_resultsTable;
  constraints3 = [(UITableView *)resultsTable constraints];
  [(UITableView *)resultsTable removeConstraints:constraints3];

  footer = self->_footer;
  constraints4 = [(UIView *)footer constraints];
  [(UIView *)footer removeConstraints:constraints4];

  googleButton = self->_googleButton;
  constraints5 = [(UIButton *)googleButton constraints];
  [(UIButton *)googleButton removeConstraints:constraints5];

  wikipediaButton = self->_wikipediaButton;
  constraints6 = [(UIButton *)wikipediaButton constraints];
  [(UIButton *)wikipediaButton removeConstraints:constraints6];

  footerTopBorderView = self->_footerTopBorderView;
  constraints7 = [(BEHairlineDividerView *)footerTopBorderView constraints];
  [(BEHairlineDividerView *)footerTopBorderView removeConstraints:constraints7];

  if (!self->_footerHeightConstraint)
  {
    v17 = [NSLayoutConstraint constraintWithItem:self->_footer attribute:8 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:44.0];
    footerHeightConstraint = self->_footerHeightConstraint;
    self->_footerHeightConstraint = v17;

    [(NSLayoutConstraint *)self->_footerHeightConstraint setActive:1];
  }

  view = [(BKSearchViewController *)self view];
  safeAreaLayoutGuide = [view safeAreaLayoutGuide];
  leftAnchor = [(BEHairlineDividerView *)self->_headerDividerView leftAnchor];
  leftAnchor2 = [view leftAnchor];
  v109 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
  v112[0] = v109;
  rightAnchor = [(BEHairlineDividerView *)self->_headerDividerView rightAnchor];
  rightAnchor2 = [view rightAnchor];
  v106 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
  v112[1] = v106;
  topAnchor = [(BEHairlineDividerView *)self->_headerDividerView topAnchor];
  topAnchor2 = [(UIView *)self->_container topAnchor];
  v103 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v112[2] = v103;
  heightAnchor = [(BEHairlineDividerView *)self->_headerDividerView heightAnchor];
  v21 = +[UIScreen mainScreen];
  [v21 scale];
  v23 = 1.0 / v22;

  v101 = [heightAnchor constraintEqualToConstant:v23];
  v112[3] = v101;
  topAnchor3 = [(UIView *)self->_container topAnchor];
  topAnchor4 = [safeAreaLayoutGuide topAnchor];
  v98 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
  v112[4] = v98;
  leadingAnchor = [(UIView *)self->_container leadingAnchor];
  leadingAnchor2 = [view leadingAnchor];
  v95 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v112[5] = v95;
  trailingAnchor = [(UIView *)self->_container trailingAnchor];
  trailingAnchor2 = [view trailingAnchor];
  v92 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v112[6] = v92;
  bottomAnchor = [(UIView *)self->_container bottomAnchor];
  bottomAnchor2 = [safeAreaLayoutGuide bottomAnchor];
  v88 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v112[7] = v88;
  leftAnchor3 = [(UITableView *)self->_resultsTable leftAnchor];
  leftAnchor4 = [(UIView *)self->_container leftAnchor];
  v85 = [leftAnchor3 constraintEqualToAnchor:leftAnchor4];
  v112[8] = v85;
  topAnchor5 = [(UITableView *)self->_resultsTable topAnchor];
  bottomAnchor3 = [(BEHairlineDividerView *)self->_headerDividerView bottomAnchor];
  v82 = [topAnchor5 constraintEqualToAnchor:bottomAnchor3];
  v112[9] = v82;
  rightAnchor3 = [(UITableView *)self->_resultsTable rightAnchor];
  rightAnchor4 = [(UIView *)self->_container rightAnchor];
  v79 = [rightAnchor3 constraintEqualToAnchor:rightAnchor4];
  v112[10] = v79;
  bottomAnchor4 = [(UITableView *)self->_resultsTable bottomAnchor];
  topAnchor6 = [(UIView *)self->_footer topAnchor];
  v75 = [bottomAnchor4 constraintEqualToAnchor:topAnchor6];
  v112[11] = v75;
  leftAnchor5 = [(UIView *)self->_footer leftAnchor];
  v89 = view;
  leftAnchor6 = [view leftAnchor];
  v71 = [leftAnchor5 constraintEqualToAnchor:leftAnchor6];
  v112[12] = v71;
  rightAnchor5 = [(UIView *)self->_footer rightAnchor];
  rightAnchor6 = [view rightAnchor];
  v67 = [rightAnchor5 constraintEqualToAnchor:rightAnchor6];
  v112[13] = v67;
  bottomAnchor5 = [(UIView *)self->_footer bottomAnchor];
  bottomAnchor6 = [(UIView *)self->_container bottomAnchor];
  v64 = [bottomAnchor5 constraintEqualToAnchor:bottomAnchor6];
  v112[14] = v64;
  widthAnchor = [(UIView *)self->_footer widthAnchor];
  widthAnchor2 = [(UIView *)self->_container widthAnchor];
  v61 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
  v112[15] = v61;
  leadingAnchor3 = [(UIButton *)self->_googleButton leadingAnchor];
  v74 = safeAreaLayoutGuide;
  leadingAnchor4 = [safeAreaLayoutGuide leadingAnchor];
  v58 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:15.0];
  v112[16] = v58;
  bottomAnchor7 = [(UIButton *)self->_googleButton bottomAnchor];
  bottomAnchor8 = [(UIView *)self->_footer bottomAnchor];
  v55 = [bottomAnchor7 constraintEqualToAnchor:bottomAnchor8];
  v112[17] = v55;
  widthAnchor3 = [(UIButton *)self->_googleButton widthAnchor];
  widthAnchor4 = [(UIView *)self->_footer widthAnchor];
  v52 = [widthAnchor3 constraintEqualToAnchor:widthAnchor4 multiplier:0.5 constant:-15.0];
  v112[18] = v52;
  heightAnchor2 = [(UIButton *)self->_googleButton heightAnchor];
  heightAnchor3 = [(UIView *)self->_footer heightAnchor];
  v50 = [heightAnchor2 constraintEqualToAnchor:heightAnchor3];
  v112[19] = v50;
  trailingAnchor3 = [(UIButton *)self->_wikipediaButton trailingAnchor];
  trailingAnchor4 = [safeAreaLayoutGuide trailingAnchor];
  v47 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4 constant:-15.0];
  v112[20] = v47;
  bottomAnchor9 = [(UIButton *)self->_wikipediaButton bottomAnchor];
  bottomAnchor10 = [(UIView *)self->_footer bottomAnchor];
  v44 = [bottomAnchor9 constraintEqualToAnchor:bottomAnchor10];
  v112[21] = v44;
  widthAnchor5 = [(UIButton *)self->_wikipediaButton widthAnchor];
  widthAnchor6 = [(UIView *)self->_footer widthAnchor];
  v41 = [widthAnchor5 constraintEqualToAnchor:widthAnchor6 multiplier:0.5 constant:-15.0];
  v112[22] = v41;
  heightAnchor4 = [(UIButton *)self->_wikipediaButton heightAnchor];
  heightAnchor5 = [(UIView *)self->_footer heightAnchor];
  v39 = [heightAnchor4 constraintEqualToAnchor:heightAnchor5];
  v112[23] = v39;
  leadingAnchor5 = [(BEHairlineDividerView *)self->_footerTopBorderView leadingAnchor];
  leadingAnchor6 = [(BEHairlineDividerView *)self->_footerTopBorderView leadingAnchor];
  v36 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
  v112[24] = v36;
  topAnchor7 = [(BEHairlineDividerView *)self->_footerTopBorderView topAnchor];
  topAnchor8 = [(BEHairlineDividerView *)self->_footerTopBorderView topAnchor];
  v26 = [topAnchor7 constraintEqualToAnchor:topAnchor8];
  v112[25] = v26;
  widthAnchor7 = [(BEHairlineDividerView *)self->_footerTopBorderView widthAnchor];
  widthAnchor8 = [(BEHairlineDividerView *)self->_footerTopBorderView widthAnchor];
  v29 = [widthAnchor7 constraintEqualToAnchor:widthAnchor8];
  v112[26] = v29;
  heightAnchor6 = [(BEHairlineDividerView *)self->_footerTopBorderView heightAnchor];
  v31 = +[UIScreen mainScreen];
  [v31 scale];
  v33 = 1.0 / v32;

  v34 = [heightAnchor6 constraintEqualToConstant:v33];
  v112[27] = v34;
  v35 = [NSArray arrayWithObjects:v112 count:28];
  [NSLayoutConstraint activateConstraints:v35];

  [(UIView *)self->_footer setHidden:_UISolariumEnabled()];
}

- (void)viewWillAppear:(BOOL)appear
{
  v9.receiver = self;
  v9.super_class = BKSearchViewController;
  [(BKSearchViewController *)&v9 viewWillAppear:appear];
  ba_analyticsTracker = [(BKSearchViewController *)self ba_analyticsTracker];

  if (!ba_analyticsTracker)
  {
    v5 = [(BKSearchViewController *)self ba_setupNewAnalyticsTrackerWithName:@"ContentSearch"];
  }

  resultsTable = self->_resultsTable;
  indexPathForSelectedRow = [(UITableView *)resultsTable indexPathForSelectedRow];
  [(UITableView *)resultsTable deselectRowAtIndexPath:indexPathForSelectedRow animated:0];

  [(BKSearchViewController *)self stylizeForTheme];
  [(BKSearchViewController *)self _updateCancelButton];
  searchDelegate = [(BKSearchViewController *)self searchDelegate];
  [searchDelegate searchViewControllerWillAppear:self];
}

- (void)viewIsAppearing:(BOOL)appearing
{
  v4.receiver = self;
  v4.super_class = BKSearchViewController;
  [(BKSearchViewController *)&v4 viewIsAppearing:appearing];
  [(BKSearchViewController *)self _updateWebsearchButtonsStatus];
  [(BKSearchViewController *)self _updateContentSize:0];
}

- (void)viewDidAppear:(BOOL)appear
{
  v13.receiver = self;
  v13.super_class = BKSearchViewController;
  [(BKSearchViewController *)&v13 viewDidAppear:appear];
  searchString = [(BKSearchViewController *)self searchString];
  [(UISearchBar *)self->_searchField setText:searchString];
  if (_UISolariumEnabled())
  {
    uiSearchController = [(BKSearchViewController *)self uiSearchController];
    [uiSearchController setActive:1];
  }

  else
  {
    if ([searchString length] <= 2 && !-[BKSearchViewController accessibilityRequiresActivateForSearchField](self, "accessibilityRequiresActivateForSearchField"))
    {
      [(UISearchBar *)self->_searchField becomeFirstResponder];
      goto LABEL_12;
    }

    searchController = [(BKSearchViewController *)self searchController];
    if ([searchController searchWasCompleted])
    {

      goto LABEL_12;
    }

    searchController2 = [(BKSearchViewController *)self searchController];
    isSearching = [searchController2 isSearching];

    if (isSearching)
    {
      goto LABEL_12;
    }

    searchController3 = [(BKSearchViewController *)self searchController];
    results = [searchController3 results];
    v11 = [results count];

    searchController4 = [(BKSearchViewController *)self searchController];
    uiSearchController = searchController4;
    if (v11)
    {
      [searchController4 continueSearch];
    }

    else
    {
      [searchController4 beginSearchWithReportAnalytics:1];
    }
  }

LABEL_12:
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v9.receiver = self;
  v9.super_class = BKSearchViewController;
  [(BKSearchViewController *)&v9 viewDidDisappear:disappear];
  searchController = [(BKSearchViewController *)self searchController];
  searchWasCompleted = [searchController searchWasCompleted];

  if ((searchWasCompleted & 1) == 0)
  {
    searchController2 = [(BKSearchViewController *)self searchController];
    [searchController2 pauseSearch];
  }

  uiSearchController = [(BKSearchViewController *)self uiSearchController];
  [uiSearchController setActive:0];

  [(BKSearchViewController *)self _updateWebsearchButtonsStatus];
  [(BKSearchViewController *)self _updateContentSize:0];
  searchDelegate = [(BKSearchViewController *)self searchDelegate];
  [searchDelegate searchViewControllerDidDisappear:self];
}

- (void)handleDone:(id)done
{
  presentingViewController = [(BKSearchViewController *)self presentingViewController];
  [presentingViewController dismissViewControllerAnimated:1 completion:0];
}

- (void)_traitCollectionDidChange:(id)change previousTraitCollection:(id)collection
{
  [(BKSearchViewController *)self stylizeForTheme:change];
  [(BKSearchViewController *)self _updateCancelButton];
  [(BKSearchViewController *)self _updateWebsearchButtonsStatus];

  [(BKSearchViewController *)self _updateContentSize:0];
}

- (void)didReceiveMemoryWarning
{
  if ([(BKSearchViewController *)self isViewLoaded])
  {
    view = [(BKSearchViewController *)self view];
    window = [view window];

    if (!window)
    {
      searchController = [(BKSearchViewController *)self searchController];
      [searchController didReceiveMemoryWarning];
    }
  }

  v6.receiver = self;
  v6.super_class = BKSearchViewController;
  [(BKSearchViewController *)&v6 didReceiveMemoryWarning];
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  coordinatorCopy = coordinator;
  v20.receiver = self;
  v20.super_class = BKSearchViewController;
  [(BKSearchViewController *)&v20 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  view = [(BKSearchViewController *)self view];
  [view bounds];
  v10 = v9;
  v12 = v11;

  if (v10 != width || v12 != height)
  {
    WeakRetained = objc_loadWeakRetained(&self->_searchDelegate);
    [WeakRetained searchViewController:self willTransitionToSize:{width, height}];

    sizeChangesRequireBookRepagination = [(BKSearchViewController *)self sizeChangesRequireBookRepagination];
    v16 = sizeChangesRequireBookRepagination;
    if (sizeChangesRequireBookRepagination)
    {
      searchController = [(BKSearchViewController *)self searchController];
      [searchController cancelSearch];
    }

    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_92F44;
    v18[3] = &unk_1E4EB0;
    v18[4] = self;
    *&v18[5] = width;
    *&v18[6] = height;
    v19 = v16;
    [coordinatorCopy animateAlongsideTransition:0 completion:v18];
  }
}

- (unint64_t)supportedInterfaceOrientations
{
  if ([(BKSearchViewController *)self isModalSheet])
  {
    return 26;
  }

  else
  {
    return 30;
  }
}

- (void)setTheme:(id)theme
{
  themeCopy = theme;
  v7.receiver = self;
  v7.super_class = BKSearchViewController;
  theme = [(BKSearchViewController *)&v7 theme];

  if (theme != themeCopy)
  {
    v6.receiver = self;
    v6.super_class = BKSearchViewController;
    [(BKSearchViewController *)&v6 setTheme:themeCopy];
    [(BKSearchViewController *)self stylizeForTheme];
  }
}

- (void)stylizeForTheme
{
  viewIfLoaded = [(BKSearchViewController *)self viewIfLoaded];
  if (viewIfLoaded)
  {
    v23 = viewIfLoaded;
    themePage = [(BKSearchViewController *)self themePage];
    v5 = [themePage backgroundColorForTraitEnvironment:self];
    secondaryTextColor = [themePage secondaryTextColor];
    v7 = [UIImage systemImageNamed:@"xmark.circle.fill"];
    v8 = [UIImageSymbolConfiguration configurationWithTextStyle:UIFontTextStyleBody];
    v9 = [v7 imageWithConfiguration:v8];

    v10 = [v9 imageWithTintColor:secondaryTextColor];

    v11 = [v10 imageWithRenderingMode:1];

    v12 = [UIImage systemImageNamed:@"magnifyingglass"];
    v13 = [UIImageSymbolConfiguration configurationWithTextStyle:UIFontTextStyleBody];
    v14 = [v12 imageWithConfiguration:v13];

    v15 = [v14 imageWithTintColor:secondaryTextColor];

    keyColor = [themePage keyColor];
    [v23 setTintColor:keyColor];

    [(UIView *)self->_container setBackgroundColor:v5];
    [v23 setBackgroundColor:v5];
    [(UITableView *)self->_resultsTable setBackgroundColor:v5];
    [(UIView *)self->_footer setBackgroundColor:v5];
    tableViewSeparatorColor = [themePage tableViewSeparatorColor];
    [(UITableView *)self->_resultsTable setSeparatorColor:tableViewSeparatorColor];

    popoverPresentationController = [(BKSearchViewController *)self popoverPresentationController];
    [popoverPresentationController setBackgroundColor:v5];

    separatorColor = [themePage separatorColor];
    [(BEHairlineDividerView *)self->_headerDividerView setDividerColor:separatorColor];
    [(BEHairlineDividerView *)self->_footerTopBorderView setDividerColor:separatorColor];
    window = [v23 window];
    if (window)
    {
      v21 = window;
      isModalSheet = [(BKSearchViewController *)self isModalSheet];

      if (isModalSheet)
      {
        [(BKSearchViewController *)self setNeedsStatusBarAppearanceUpdate];
      }
    }

    [(UITableView *)self->_resultsTable reloadData];

    viewIfLoaded = v23;
  }
}

- (id)searchController
{
  searchController = self->_searchController;
  if (!searchController)
  {
    v4 = objc_alloc_init(BKSearchController);
    v5 = self->_searchController;
    self->_searchController = v4;

    [(BKSearchController *)self->_searchController setDelegate:self];
    [(BKSearchController *)self->_searchController setPageCount:[(BKPaginationController *)self->_paginationController pageTotal]];
    searchController = self->_searchController;
  }

  v6 = searchController;

  return v6;
}

- (id)physicalPageMapForPageTitle:(id)title
{
  titleCopy = title;
  searchController = [(BKSearchViewController *)self searchController];
  searchBook = [searchController searchBook];
  physicalPageMap = [searchBook physicalPageMap];

  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = sub_93588;
  v18 = sub_93598;
  v19 = 0;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_935A0;
  v11[3] = &unk_1E4ED8;
  v8 = titleCopy;
  v12 = v8;
  v13 = &v14;
  [physicalPageMap indexOfObjectWithOptions:1 passingTest:v11];
  v9 = v15[5];

  _Block_object_dispose(&v14, 8);

  return v9;
}

- (BOOL)searchStringIsPageNumber
{
  searchString = [(BKSearchViewController *)self searchString];
  if ([(BKSearchViewController *)self showPhysicalPages])
  {
    v4 = [(BKSearchViewController *)self physicalPageMapForPageTitle:searchString];
    v5 = v4 != 0;
LABEL_7:

    goto LABEL_8;
  }

  intValue = [searchString intValue];
  if (intValue >= 1)
  {
    v7 = intValue;
    searchController = [(BKSearchViewController *)self searchController];
    pageCount = [searchController pageCount];

    if (pageCount >= v7)
    {
      v4 = +[NSCharacterSet whitespaceAndNewlineCharacterSet];
      v10 = [searchString stringByTrimmingCharactersInSet:v4];
      v11 = [NSString stringWithFormat:@"%ld", v7];
      v5 = [v10 isEqualToString:v11];

      goto LABEL_7;
    }
  }

  v5 = 0;
LABEL_8:

  return v5;
}

- (BOOL)_shouldShowSearchResultsView
{
  if ([(BKSearchViewController *)self isModalSheet])
  {
    return 1;
  }

  searchString = [(BKSearchViewController *)self searchString];
  if ([searchString length] <= 2)
  {
    searchController = [(BKSearchViewController *)self searchController];
    results = [searchController results];
    if ([results count])
    {
      searchStringIsPageNumber = 1;
    }

    else
    {
      searchController2 = [(BKSearchViewController *)self searchController];
      if ([searchController2 searchWasCompleted])
      {
        searchStringIsPageNumber = 1;
      }

      else
      {
        searchController3 = [(BKSearchViewController *)self searchController];
        if ([searchController3 isSearching])
        {
          searchStringIsPageNumber = 1;
        }

        else
        {
          searchStringIsPageNumber = [(BKSearchViewController *)self searchStringIsPageNumber];
        }
      }
    }
  }

  else
  {
    searchStringIsPageNumber = 1;
  }

  return searchStringIsPageNumber;
}

- (CGSize)_preferredContentSizeIsMinimum:(BOOL *)minimum
{
  if (![(BKSearchViewController *)self isViewLoaded])
  {
    v7 = 0;
    width = CGSizeZero.width;
    height = CGSizeZero.height;
    if (!minimum)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  view = [(BKSearchViewController *)self view];
  [view layoutIfNeeded];

  if ([UIFont bc_contentSizeCategoryIsGreaterThan:UIContentSizeCategoryAccessibilityMedium])
  {
    if ([UIFont bc_contentSizeCategoryIsGreaterThan:UIContentSizeCategoryAccessibilityExtraLarge])
    {
      width = 640.0;
    }

    else
    {
      width = 480.0;
    }
  }

  else
  {
    width = 320.0;
  }

  [(BKSearchViewController *)self maxContentHeight];
  if (v9 <= 0.0)
  {
    v11 = kBESearchPopoverViewMaxContentHeight;
  }

  else
  {
    [(BKSearchViewController *)self maxContentHeight];
    v11 = v10;
  }

  [(UISearchBar *)self->_searchField layoutIfNeeded];
  [(UISearchBar *)self->_searchField sizeThatFits:width, v11];
  v13 = v12;
  v14 = _UISolariumEnabled();
  v15 = 49.0;
  if (!v14)
  {
    v15 = 5.0;
  }

  v16 = v13 + v15;
  _shouldShowSearchResultsView = [(BKSearchViewController *)self _shouldShowSearchResultsView];
  if (_shouldShowSearchResultsView)
  {
    [(UISearchBar *)self->_searchField frame];
    v18 = CGRectGetMaxY(v27) + 44.0;
    [(UITableView *)self->_resultsTable preferredContentHeightWithMax:v11 - v18];
    v20 = v18 + v19;
    if (v11 < v20)
    {
      v20 = v11;
    }

    if (v20 >= v16)
    {
      v21 = v20;
    }

    else
    {
      v21 = v16;
    }

    v22 = 1.0;
  }

  else
  {
    searchController = [(BKSearchViewController *)self searchController];
    isSearching = [searchController isSearching];

    if (isSearching)
    {
      v21 = v16 + 44.0;
    }

    else
    {
      v21 = v16;
    }

    v22 = 0.0;
  }

  [(UIView *)self->_container setAlpha:v22];
  v7 = _shouldShowSearchResultsView ^ 1;
  height = ceil(v21);
  if (minimum)
  {
LABEL_26:
    *minimum = v7;
  }

LABEL_27:
  v25 = width;
  result.height = height;
  result.width = v25;
  return result;
}

- (void)_updateCancelButton
{
  if (_UISolariumEnabled())
  {
    v3 = +[UIDevice currentDevice];
    userInterfaceIdiom = [v3 userInterfaceIdiom];

    if (userInterfaceIdiom == &dword_0 + 1)
    {
      if (([(BKSearchViewController *)self _isInPopoverPresentation]& 1) != 0)
      {
        navigationItem = [(BKSearchViewController *)self navigationItem];
        [navigationItem setRightBarButtonItem:0];
      }

      else
      {
        navigationItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:24 target:self action:"handleDone:"];
        navigationItem2 = [(BKSearchViewController *)self navigationItem];
        [navigationItem2 setRightBarButtonItem:navigationItem];
      }
    }
  }

  else
  {
    isModalSheet = [(BKSearchViewController *)self isModalSheet];
    searchField = self->_searchField;

    [(UISearchBar *)searchField setShowsCancelButton:isModalSheet];
  }
}

- (void)_updateContentSize:(BOOL)size
{
  v12 = 0;
  [(BKSearchViewController *)self _preferredContentSizeIsMinimum:&v12];
  v6 = v5;
  v8 = v7;
  if ([(BKSearchViewController *)self resizeAnimationInProgress]&& size)
  {
    [(BKSearchViewController *)self setResizeRequestPending:1];
  }

  else
  {
    [(BKSearchViewController *)self maxContentHeight];
    if (v9 <= 0.0)
    {
      v10 = kBESearchPopoverViewMaxContentHeight;
    }

    else
    {
      [(BKSearchViewController *)self maxContentHeight];
    }

    self->_maxContentHeightWasReached = v8 >= v10;
    +[CATransaction begin];
    [(BKSearchViewController *)self setResizeAnimationInProgress:1];
    [(BKSearchViewController *)self setResizeRequestPending:0];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_93CB8;
    v11[3] = &unk_1E2BD0;
    v11[4] = self;
    [CATransaction setCompletionBlock:v11];
    [(BKSearchViewController *)self setPreferredContentSize:v6, v8];
    +[CATransaction commit];
    [(BKSearchViewController *)self setPreferredContentSize:v6, v8];
    [(UITableView *)self->_resultsTable reloadData];
  }
}

- (void)_updateWebsearchButtonsStatus
{
  searchString = [(BKSearchViewController *)self searchString];
  v4 = [searchString length];

  im_isCompactHeight = 1.0;
  if (!v4 && ([(BKSearchViewController *)self im_isCompactWidth]& 1) == 0)
  {
    im_isCompactHeight = [(BKSearchViewController *)self im_isCompactHeight];
  }

  v6 = v4 != 0;
  [(UIButton *)self->_wikipediaButton setEnabled:v6];
  [(UIButton *)self->_googleButton setEnabled:v6];
  [(UIButton *)self->_wikipediaButton setAlpha:im_isCompactHeight];
  [(UIButton *)self->_googleButton setAlpha:im_isCompactHeight];

  [(BKSearchViewController *)self _updateFooterConstraint];
}

- (void)_updateFooterConstraint
{
  if ([(UIButton *)self->_wikipediaButton isEnabled])
  {
    [(UIView *)self->_container alpha];
    v4 = v3 > 0.0;
  }

  else
  {
    v4 = 0;
  }

  v5 = _UISolariumEnabled();
  v6 = 44.0;
  if (v5)
  {
    v6 = 0.0;
  }

  if ((v5 & 1) == 0 && !v4)
  {
    if (([(BKSearchViewController *)self im_isCompactWidth]& 1) != 0)
    {
      v6 = 44.0;
    }

    else
    {
      im_isCompactHeight = [(BKSearchViewController *)self im_isCompactHeight];
      v6 = 44.0;
      if (!im_isCompactHeight)
      {
        v6 = 0.0;
      }
    }
  }

  [(NSLayoutConstraint *)self->_footerHeightConstraint setConstant:v6];
  container = self->_container;

  [(UIView *)container layoutIfNeeded];
}

- (void)setSearchString:(id)string
{
  stringCopy = string;
  text = [(UISearchBar *)self->_searchField text];
  v5 = [stringCopy caseInsensitiveCompare:text];

  if (v5)
  {
    [(UISearchBar *)self->_searchField setText:stringCopy];
    searchController = [(BKSearchViewController *)self searchController];
    [searchController setSearchString:stringCopy];

    searchController2 = [(BKSearchViewController *)self searchController];
    [searchController2 beginSearchWithReportAnalytics:1];
  }
}

- (void)setShowPhysicalPages:(BOOL)pages
{
  if (self->_showPhysicalPages != pages)
  {
    self->_showPhysicalPages = pages;
    [(UITableView *)self->_resultsTable reloadData];
  }
}

- (void)paginationComplete
{
  [(BKSearchController *)self->_searchController setPageCount:[(BKPaginationController *)self->_paginationController pageTotal]];
  resultsTable = self->_resultsTable;

  [(UITableView *)resultsTable reloadData];
}

- (void)setPaginationController:(id)controller
{
  controllerCopy = controller;
  paginationController = self->_paginationController;
  v9 = controllerCopy;
  if (paginationController != controllerCopy)
  {
    if (paginationController)
    {
      v7 = +[NSNotificationCenter defaultCenter];
      [v7 removeObserver:self name:BKPaginationCompleteForBookNotification object:self->_paginationController];
    }

    objc_storeStrong(&self->_paginationController, controller);
    if (self->_paginationController)
    {
      v8 = +[NSNotificationCenter defaultCenter];
      [v8 addObserver:self selector:"paginationComplete" name:BKPaginationCompleteForBookNotification object:self->_paginationController];
    }
  }
}

- (void)revealSearchResult:(id)result animated:(BOOL)animated
{
  animatedCopy = animated;
  resultCopy = result;
  WeakRetained = objc_loadWeakRetained(&self->_searchDelegate);
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = objc_loadWeakRetained(&self->_searchDelegate);
    [v8 searchViewController:self revealSearchResult:resultCopy animated:animatedCopy];
  }
}

- (void)searchWebForString:(id)string
{
  [(BKSearchViewController *)self setSearchString:string];

  [(BKSearchViewController *)self searchWeb:0];
}

- (void)searchEncyclopediaForString:(id)string
{
  [(BKSearchViewController *)self setSearchString:string];

  [(BKSearchViewController *)self searchWikipedia:0];
}

- (void)openURLUsingNSString:(id)string
{
  if (string)
  {
    stringCopy = string;
    v5 = [[NSURL alloc] initWithString:stringCopy];

    if (v5)
    {
      v4 = +[UIApplication sharedApplication];
      [v4 openURL:v5 options:&__NSDictionary0__struct completionHandler:0];
    }
  }
}

- (id)_escapedSearchString
{
  searchString = [(BKSearchViewController *)self searchString];
  v3 = +[NSCharacterSet URLPathAllowedCharacterSet];
  v4 = [searchString stringByAddingPercentEncodingWithAllowedCharacters:v3];

  return v4;
}

- (void)searchWeb:(id)web
{
  _escapedSearchString = [(BKSearchViewController *)self _escapedSearchString];
  v6 = [NSString stringWithFormat:@"x-web-search://?%@", _escapedSearchString];

  v5 = v6;
  if (v6)
  {
    [(BKSearchViewController *)self openURLUsingNSString:v6];
    v5 = v6;
  }
}

- (void)searchWikipedia:(id)wikipedia
{
  v10 = +[NSLocale preferredLanguages];
  if ([v10 count])
  {
    v4 = [v10 objectAtIndex:0];
  }

  else
  {
    v4 = @"en";
  }

  v5 = [(__CFString *)v4 substringToIndex:2];

  v6 = AEBundle();
  v7 = [v6 localizedStringForKey:@"https://%2$@.wikipedia.org/wiki/%1$@" value:&stru_1E7188 table:0];
  _escapedSearchString = [(BKSearchViewController *)self _escapedSearchString];
  v9 = [NSString stringWithFormat:v7, _escapedSearchString, v5];

  if (v9)
  {
    [(BKSearchViewController *)self openURLUsingNSString:v9];
  }
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  searchController = [(BKSearchViewController *)self searchController];
  v7 = searchController;
  if (section)
  {
    results = [searchController results];
    v9 = [results count];

    searchStringIsPageNumber = v9 + [(BKSearchViewController *)self _shouldShowSearchResultsView];
  }

  else
  {
    searchStringIsPageNumber = [(BKSearchViewController *)self searchStringIsPageNumber];
  }

  return searchStringIsPageNumber;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  if ([pathCopy section] == &dword_0 + 1)
  {
    v8 = [pathCopy row];
    searchController = [(BKSearchViewController *)self searchController];
    results = [searchController results];
    v11 = [results count];

    if (v8 == v11)
    {
      [(BKSearchViewController *)self _loadingCellForTableView:viewCopy];
    }

    else
    {
      -[BKSearchViewController _resultsCellForRow:inTableView:](self, "_resultsCellForRow:inTableView:", [pathCopy row], viewCopy);
    }
    v16 = ;
    if (v16)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  if ([pathCopy section])
  {
    goto LABEL_13;
  }

  themePage = [(BKSearchViewController *)self themePage];
  v13 = [themePage isNight:self];
  v14 = @"pageNumberCell";
  if (v13)
  {
    v14 = @"pageNumberCell-night";
  }

  v15 = v14;
  v16 = [viewCopy dequeueReusableCellWithIdentifier:v15];
  if (!v16)
  {
    v16 = [[UITableViewCell alloc] initWithStyle:0 reuseIdentifier:v15];
    v17 = [UIFont boldSystemFontOfSize:kBESearchResultFontSize];
    textLabel = [v16 textLabel];
    [textLabel setFont:v17];

    v19 = [UIView alloc];
    contentView = [v16 contentView];
    [contentView bounds];
    v21 = [v19 initWithFrame:?];
    [v16 setSelectedBackgroundView:v21];
  }

  v42 = v15;
  searchController2 = [(BKSearchViewController *)self searchController];
  searchString = [searchController2 searchString];

  v41 = searchString;
  if ([(BKSearchViewController *)self showPhysicalPages])
  {
    v24 = [(BKSearchViewController *)self physicalPageMapForPageTitle:searchString];
    v25 = [v24 valueForKey:@"name"];

    v26 = AEBundle();
    v27 = [v26 localizedStringForKey:@"Page %@" value:&stru_1E7188 table:0];
    v28 = [NSString stringWithFormat:v27, v25];
  }

  else
  {
    integerValue = [searchString integerValue];
    searchDelegate = [(BKSearchViewController *)self searchDelegate];
    v25 = [searchDelegate searchViewController:self chapterNameForSearchResult:0 pageNumber:integerValue];

    v32 = AEBundle();
    v26 = v32;
    if (v25)
    {
      v27 = [v32 localizedStringForKey:@"Page %@ value:%@" table:{&stru_1E7188, 0}];
      v33 = [NSNumberFormatter imaxLocalizedUnsignedInteger:integerValue usesGroupingSeparator:0];
      [NSString stringWithFormat:v27, v33, v25];
    }

    else
    {
      v27 = [v32 localizedStringForKey:@"Page %@" value:&stru_1E7188 table:0];
      v33 = [NSNumberFormatter imaxLocalizedUnsignedInteger:integerValue usesGroupingSeparator:0];
      [NSString stringWithFormat:v27, v33, v40];
    }
    v28 = ;
  }

  textLabel2 = [v16 textLabel];
  [textLabel2 setText:v28];

  backgroundColor = [(UITableView *)self->_resultsTable backgroundColor];
  [v16 setBackgroundColor:backgroundColor];

  primaryTextColor = [themePage primaryTextColor];
  textLabel3 = [v16 textLabel];
  [textLabel3 setTextColor:primaryTextColor];

  tableViewCellSelectedColor = [themePage tableViewCellSelectedColor];
  selectedBackgroundView = [v16 selectedBackgroundView];
  [selectedBackgroundView setBackgroundColor:tableViewCellSelectedColor];

  if (!v16)
  {
LABEL_13:
    v16 = objc_alloc_init(UITableViewCell);
  }

LABEL_14:

  return v16;
}

- (BESearchResultTableViewCell)dummySearchResultsCell
{
  dummySearchResultsCell = self->_dummySearchResultsCell;
  if (!dummySearchResultsCell)
  {
    v4 = [[BESearchResultTableViewCell alloc] initWithStyle:3 reuseIdentifier:0];
    v5 = self->_dummySearchResultsCell;
    self->_dummySearchResultsCell = v4;

    dummySearchResultsCell = self->_dummySearchResultsCell;
  }

  return dummySearchResultsCell;
}

- (BKSearchLoadingTableViewCell)dummySearchLoadingCell
{
  dummySearchLoadingCell = self->_dummySearchLoadingCell;
  if (!dummySearchLoadingCell)
  {
    v4 = [[BKSearchLoadingTableViewCell alloc] initWithStyle:3 reuseIdentifier:0];
    v5 = self->_dummySearchLoadingCell;
    self->_dummySearchLoadingCell = v4;

    [(BKSearchViewController *)self _configureLoadingCell:self->_dummySearchLoadingCell];
    dummySearchLoadingCell = self->_dummySearchLoadingCell;
  }

  return dummySearchLoadingCell;
}

- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section
{
  viewCopy = view;
  if (section == 1)
  {
    v7 = @"Text";
  }

  else
  {
    if (section || ![(BKSearchViewController *)self searchStringIsPageNumber])
    {
      v8 = 0;
      goto LABEL_8;
    }

    v7 = @"Page Number";
  }

  v9 = AEBundle();
  v8 = [v9 localizedStringForKey:v7 value:&stru_1E7188 table:0];

LABEL_8:
  themePage = [(BKSearchViewController *)self themePage];
  v11 = [viewCopy dequeueReusableHeaderFooterViewWithIdentifier:@"BKSearchTableHeaderViewIdentifier"];
  if (!v11)
  {
    v11 = [[UITableViewHeaderFooterView alloc] initWithReuseIdentifier:@"BKSearchTableHeaderViewIdentifier"];
  }

  textLabel = [v11 textLabel];
  [textLabel setText:v8];

  secondaryTextColor = [themePage secondaryTextColor];
  textLabel2 = [v11 textLabel];
  [textLabel2 setTextColor:secondaryTextColor];

  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_94CA4;
  v18[3] = &unk_1E4F00;
  v19 = themePage;
  v20 = viewCopy;
  v15 = viewCopy;
  v16 = themePage;
  [v11 _setBackgroundViewConfigurationProvider:v18];

  return v11;
}

- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section
{
  viewCopy = view;
  if (section == 1 || (v7 = 0.0, !section) && [(BKSearchViewController *)self searchStringIsPageNumber])
  {
    [(BKSearchViewController *)self _resultsHeaderHeight];
    v7 = v8;
  }

  return v7;
}

- (void)_updateLoadingCell:(id)cell
{
  cellCopy = cell;
  searchController = [(BKSearchViewController *)self searchController];
  isSearching = [searchController isSearching];

  activityIndicator = [cellCopy activityIndicator];
  v7 = activityIndicator;
  if (isSearching)
  {
    isAnimating = [activityIndicator isAnimating];

    if ((isAnimating & 1) == 0)
    {
      activityIndicator2 = [cellCopy activityIndicator];
      [activityIndicator2 startAnimating];
    }

    v10 = AEBundle();
    v11 = [v10 localizedStringForKey:@"Searching…" value:&stru_1E7188 table:0];

LABEL_13:
    v23 = 0;
    goto LABEL_14;
  }

  [activityIndicator stopAnimating];

  searchController2 = [(BKSearchViewController *)self searchController];
  wasAborted = [searchController2 wasAborted];

  if (wasAborted)
  {
    v14 = @"Search Cancelled";
    goto LABEL_11;
  }

  searchController3 = [(BKSearchViewController *)self searchController];
  hasPartialResults = [searchController3 hasPartialResults];

  if (hasPartialResults)
  {
    v14 = @"Load More…";
    goto LABEL_11;
  }

  searchController4 = [(BKSearchViewController *)self searchController];
  searchWasCompleted = [searchController4 searchWasCompleted];

  if (searchWasCompleted)
  {
    v14 = @"Search Completed";
LABEL_11:
    v19 = AEBundle();
    v11 = [v19 localizedStringForKey:v14 value:&stru_1E7188 table:0];

    if (v11)
    {
      searchController5 = [(BKSearchViewController *)self searchController];
      results = [searchController5 results];
      v22 = [results count];

      v23 = [NSString ae_searchResultDetailTextWithCount:v22];
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  v23 = 0;
  v11 = 0;
LABEL_14:
  textLabel = [cellCopy textLabel];
  [textLabel setText:v11];

  detailTextLabel = [cellCopy detailTextLabel];
  [detailTextLabel setText:v23];
}

- (void)_configureLoadingCell:(id)cell
{
  if (cell)
  {
    cellCopy = cell;
    [cellCopy setSelectionStyle:0];
    v11 = [UIFont preferredFontForTextStyle:UIFontTextStyleTitle1];
    v4 = kBESearchResultFontSize;
    [v11 _scaledValueForValue:kBESearchResultFontSize];
    v5 = [UIFont systemFontOfSize:"systemFontOfSize:weight:" weight:?];
    textLabel = [cellCopy textLabel];
    [textLabel setFont:v5];

    textLabel2 = [cellCopy textLabel];
    [textLabel2 setTextAlignment:1];

    [v11 _scaledValueForValue:v4];
    v8 = [UIFont systemFontOfSize:?];
    textLabel3 = [cellCopy textLabel];
    [textLabel3 setFont:v8];

    detailTextLabel = [cellCopy detailTextLabel];

    [detailTextLabel setTextAlignment:1];
  }
}

- (id)_loadingCellForTableView:(id)view
{
  viewCopy = view;
  themePage = [(BKSearchViewController *)self themePage];
  v6 = [themePage isNight:self];
  v7 = @"loadingCell";
  if (v6)
  {
    v7 = @"loadingCell-night";
  }

  v8 = v7;
  v9 = [viewCopy dequeueReusableCellWithIdentifier:v8];

  if (!v9)
  {
    v9 = [[BKSearchLoadingTableViewCell alloc] initWithStyle:3 reuseIdentifier:v8];
    [(BKSearchViewController *)self _configureLoadingCell:v9];
  }

  primaryTextColor = [themePage primaryTextColor];
  backgroundColor = [(UITableView *)self->_resultsTable backgroundColor];
  [(BKSearchLoadingTableViewCell *)v9 setBackgroundColor:backgroundColor];
  contentView = [(BKSearchLoadingTableViewCell *)v9 contentView];
  [contentView setBackgroundColor:backgroundColor];

  activityIndicator = [(BKSearchLoadingTableViewCell *)v9 activityIndicator];
  [activityIndicator setColor:primaryTextColor];

  textLabel = [(BKSearchLoadingTableViewCell *)v9 textLabel];
  [textLabel setTextColor:primaryTextColor];

  detailTextLabel = [(BKSearchLoadingTableViewCell *)v9 detailTextLabel];
  [detailTextLabel setTextColor:primaryTextColor];

  [(BKSearchViewController *)self _updateLoadingCell:v9];

  return v9;
}

- (void)_configureResultsCell:(id)cell forRow:(unint64_t)row inTableView:(id)view
{
  cellCopy = cell;
  viewCopy = view;
  themePage = [(BKSearchViewController *)self themePage];
  primaryTextColor = [themePage primaryTextColor];
  backgroundColor = [(UITableView *)self->_resultsTable backgroundColor];
  titleLabel = [cellCopy titleLabel];
  [titleLabel setTextColor:primaryTextColor];

  resultLabel = [cellCopy resultLabel];
  [resultLabel setTextColor:primaryTextColor];

  v15 = [themePage isNight:self];
  if (v15)
  {
    buttonTitleColor = [themePage buttonTitleColor];
  }

  else
  {
    buttonTitleColor = 0;
  }

  resultLabel2 = [cellCopy resultLabel];
  [resultLabel2 setBoldColor:buttonTitleColor];

  if (v15)
  {
  }

  secondaryTextColor = [themePage secondaryTextColor];
  pageNumberLabel = [cellCopy pageNumberLabel];
  [pageNumberLabel setTextColor:secondaryTextColor];

  tableViewCellSelectedColor = [themePage tableViewCellSelectedColor];
  selectedBackgroundView = [cellCopy selectedBackgroundView];
  [selectedBackgroundView setBackgroundColor:tableViewCellSelectedColor];

  [cellCopy setBackgroundColor:backgroundColor];
  [viewCopy frame];
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;

  v64.origin.x = v23;
  v64.origin.y = v25;
  v64.size.width = v27;
  v64.size.height = v29;
  [cellCopy setMaxWidth:CGRectGetWidth(v64)];
  searchController = [(BKSearchViewController *)self searchController];
  results = [searchController results];
  v32 = [results count];

  if (v32 > row)
  {
    objc_opt_class();
    searchController2 = [(BKSearchViewController *)self searchController];
    results2 = [searchController2 results];
    v35 = [results2 objectAtIndex:row];
    v36 = BUDynamicCast();

    searchDelegate = [(BKSearchViewController *)self searchDelegate];
    v38 = [searchDelegate searchViewController:self pageNumberForDocumentOrdinal:{objc_msgSend(v36, "ordinal")}];

    integerValue = 0x7FFFFFFFFFFFFFFFLL;
    if (v38 == 0x7FFFFFFFFFFFFFFFLL || (integerValue = v38 + [v36 pageOffset], -[BKSearchViewController searchController](self, "searchController"), v40 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v40, "searchBook"), results2 = objc_claimAutoreleasedReturnValue(), v41 = objc_msgSend(results2, "suppressTOC"), results2, v40, (v41 & 1) != 0))
    {
      v42 = 0;
    }

    else
    {
      paginationController = [(BKSearchViewController *)self paginationController];

      if (paginationController)
      {
        results2 = [(BKSearchViewController *)self paginationController];
        [results2 titleForChapterAtPageNumber:integerValue];
      }

      else
      {
        results2 = [(BKSearchViewController *)self searchDelegate];
        [results2 searchViewController:self chapterNameForSearchResult:v36 pageNumber:integerValue];
      }
      v42 = ;
    }

    showPhysicalPages = [(BKSearchViewController *)self showPhysicalPages];
    if (showPhysicalPages & 1) != 0 || (-[BKSearchViewController searchController](self, "searchController"), results2 = objc_claimAutoreleasedReturnValue(), [results2 searchBook], v5 = objc_claimAutoreleasedReturnValue(), (objc_msgSend(v5, "isFixedLayout")))
    {
      pageTitle = [v36 pageTitle];

      if ((showPhysicalPages & 1) == 0)
      {
      }

      if (!pageTitle)
      {
LABEL_22:
        if ((integerValue - 1) <= 0x7FFFFFFFFFFFFFFDLL)
        {
          if (v42)
          {
            v46 = v42;
          }

          else
          {
            v46 = &stru_1E7188;
          }

          v50 = [NSNumberFormatter imaxLocalizedUnsignedInteger:integerValue usesGroupingSeparator:0];
          goto LABEL_35;
        }

        pageTitle2 = [v36 pageTitle];
        v48 = [pageTitle2 length];

        if (v48)
        {
          if (v42)
          {
            v49 = AEBundle();
            v50 = &stru_1E7188;
            v51 = [v49 localizedStringForKey:@"%@ value:%@" table:{&stru_1E7188, 0}];
            pageTitle3 = [v36 pageTitle];
            v46 = [NSString stringWithFormat:v51, v42, pageTitle3];

LABEL_35:
            titleLabel2 = [cellCopy titleLabel];
            [titleLabel2 setText:v46];

            text = [v36 text];
            resultLabel3 = [cellCopy resultLabel];
            [resultLabel3 setText:text];

            searchStringRange = [v36 searchStringRange];
            v59 = v58;
            resultLabel4 = [cellCopy resultLabel];
            [resultLabel4 setBoldRange:{searchStringRange, v59}];

            pageNumberLabel2 = [cellCopy pageNumberLabel];
            [pageNumberLabel2 setText:v50];

            [cellCopy applyLabelFonts];
            [cellCopy updateConstraintsIfNeeded];

            goto LABEL_36;
          }

          pageTitle4 = [v36 pageTitle];
        }

        else
        {
          if (!v42)
          {
            v50 = &stru_1E7188;
            v46 = &stru_1E7188;
            goto LABEL_35;
          }

          pageTitle4 = v42;
        }

        v46 = pageTitle4;
        v50 = &stru_1E7188;
        goto LABEL_35;
      }

      results2 = [v36 pageTitle];
      integerValue = [results2 integerValue];
    }

    else
    {
    }

    goto LABEL_22;
  }

LABEL_36:
}

- (id)_resultsCellForRow:(unint64_t)row inTableView:(id)view
{
  viewCopy = view;
  themePage = [(BKSearchViewController *)self themePage];
  v8 = [themePage isNight:self];

  v9 = &kBESearchTableViewCellResultsNightIdentifier;
  if (!v8)
  {
    v9 = &kBESearchTableViewCellResultsIdentifier;
  }

  v10 = *v9;
  v11 = [viewCopy dequeueReusableCellWithIdentifier:v10];
  if (!v11)
  {
    v11 = [[BESearchResultTableViewCell alloc] initWithStyle:0 reuseIdentifier:v10];
  }

  [(BKSearchViewController *)self _configureResultsCell:v11 forRow:row inTableView:viewCopy];

  return v11;
}

- (id)tableView:(id)view willSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  if ([pathCopy section] == &dword_0 + 1 && (v8 = objc_msgSend(pathCopy, "row"), v8 >= (objc_msgSend(viewCopy, "numberOfRowsInSection:", 1) - 1)) && (-[BKSearchViewController searchController](self, "searchController"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "hasPartialResults"), v9, !v10))
  {
    v11 = 0;
  }

  else
  {
    v11 = pathCopy;
  }

  return v11;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  if ([pathCopy section] != &dword_0 + 1)
  {
    if ([pathCopy section])
    {
      goto LABEL_14;
    }

    searchString = [(BKSearchViewController *)self searchString];
    if ([(BKSearchViewController *)self showPhysicalPages])
    {
      v12 = [(BKSearchViewController *)self physicalPageMapForPageTitle:searchString];
      v13 = [v12 valueForKey:@"href"];

      if (!v13)
      {
LABEL_12:

        goto LABEL_13;
      }

      searchString2 = [[BKAnchorPathLocation alloc] initWithPath:v13];
      WeakRetained = objc_loadWeakRetained(&self->_searchDelegate);
      [WeakRetained searchViewController:self turnToLocation:searchString2 animated:1];
    }

    else
    {
      v13 = objc_loadWeakRetained(&self->_searchDelegate);
      searchString2 = [(BKSearchViewController *)self searchString];
      [v13 searchViewController:self turnToPageNumber:-[BKAnchorPathLocation intValue](searchString2 animated:{"intValue"), 1}];
    }

    goto LABEL_12;
  }

  v7 = [pathCopy row];
  if (v7 >= ([viewCopy numberOfRowsInSection:1] - 1))
  {
    searchController = [(BKSearchViewController *)self searchController];
    hasPartialResults = [searchController hasPartialResults];

    if (!hasPartialResults)
    {
      goto LABEL_14;
    }

    searchString = [(BKSearchViewController *)self searchController];
    [searchString loadMore];
  }

  else
  {
    objc_opt_class();
    searchController2 = [(BKSearchViewController *)self searchController];
    results = [searchController2 results];
    v10 = [results objectAtIndex:{objc_msgSend(pathCopy, "row")}];
    searchString = BUDynamicCast();

    [(BKSearchViewController *)self revealSearchResult:searchString];
  }

LABEL_13:

LABEL_14:
}

- (double)_resultsEstimatedRowHeight
{
  if (![(BKSearchViewController *)self isModalSheet])
  {
    v3 = &kBESearchSectionSearchResultCellHeightPad;
    return *v3;
  }

  v2 = kBESearchSectionSearchResultCellHeightPhone;
  if (+[UIFont bc_accessibilityFontSizesEnabled])
  {
    if ([UIFont bc_contentSizeCategoryIsGreaterThan:UIContentSizeCategoryAccessibilityExtraLarge])
    {
      v3 = &kBESearchSectionSearchResultCellAccessibilityLargestHeightPhone;
      return *v3;
    }

    if ([UIFont bc_contentSizeCategoryIsGreaterThan:UIContentSizeCategoryAccessibilityLarge])
    {
      return kBESearchSectionSearchResultCellAccessibilityLargerHeightPhone;
    }
  }

  return v2;
}

- (double)_resultsHeaderHeight
{
  if (!+[UIFont bc_accessibilityFontSizesEnabled])
  {
    v2 = &kBESearchTableViewHeaderHeight;
    return *v2;
  }

  if ([UIFont bc_contentSizeCategoryIsGreaterThan:UIContentSizeCategoryAccessibilityExtraLarge])
  {
    v2 = &kBESearchTableViewAccessibilityHeaderLargestHeight;
    return *v2;
  }

  v4 = kBESearchTableViewAccessibilityHeaderLargeHeight;
  v5 = [UIFont bc_contentSizeCategoryIsGreaterThan:UIContentSizeCategoryAccessibilityLarge];
  result = kBESearchTableViewAccessibilityHeaderLargerHeight;
  if (!v5)
  {
    return v4;
  }

  return result;
}

- (void)updateSearchResultsForSearchController:(id)controller
{
  text = [(UISearchBar *)self->_searchField text];
  searchController = [(BKSearchViewController *)self searchController];
  [searchController setSearchString:text];

  [(BKSearchViewController *)self _updateWebsearchButtonsStatus];
  [(BKSearchViewController *)self _updateContentSize:1];

  [(BKSearchViewController *)self _updateFooterConstraint];
}

- (void)searchBarSearchButtonClicked:(id)clicked
{
  clickedCopy = clicked;
  text = [clickedCopy text];
  searchController = [(BKSearchViewController *)self searchController];
  searchString = [searchController searchString];
  if ([text isEqualToString:searchString])
  {
    searchController2 = [(BKSearchViewController *)self searchController];
    results = [searchController2 results];
    if (results)
    {
      v9 = results;
      searchController3 = [(BKSearchViewController *)self searchController];
      results2 = [searchController3 results];
      v12 = [results2 count];

      v13 = clickedCopy;
      if (v12)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }
  }

LABEL_7:
  text2 = [clickedCopy text];
  searchController4 = [(BKSearchViewController *)self searchController];
  [searchController4 setSearchString:text2];

  searchController5 = [(BKSearchViewController *)self searchController];
  [searchController5 beginSearchWithReportAnalytics:1];

  v13 = clickedCopy;
LABEL_8:
  [v13 resignFirstResponder];
}

- (void)searchBarCancelButtonClicked:(id)clicked
{
  if (isPhone())
  {
    searchController = [(BKSearchViewController *)self searchController];
    [searchController pauseSearch];

    [(BKSearchViewController *)self revealSearchResult:0];
  }
}

- (void)searchControllerWillBeginSearching:(id)searching reportAnalytics:(BOOL)analytics
{
  searchString = [searching searchString];
  [(BKSearchViewController *)self _analyticsSubmitInBookSearchEventWithSearchText:searchString];

  self->_maxContentHeightWasReached = 0;

  [(BKSearchViewController *)self _reloadResultsAndResizeIfNecessary:1];
}

- (void)_reloadResultsAndResizeIfNecessary:(BOOL)necessary
{
  necessaryCopy = necessary;
  if (![(BKSearchViewController *)self isModalSheet]&& !self->_maxContentHeightWasReached)
  {
    [(BKSearchViewController *)self _updateContentSize:necessaryCopy];
    [(BKSearchViewController *)self _updateFooterConstraint];
  }

  resultsTable = self->_resultsTable;

  [(UITableView *)resultsTable reloadData];
}

- (void)searchControllerFinishedSearchingChapter:(id)chapter
{
  v4 = [(BKSearchViewController *)self _loadingCellForTableView:self->_resultsTable];
  [(BKSearchViewController *)self _updateLoadingCell:v4];
}

- (id)environmentOverrideViewForSearchController:(id)controller
{
  if ([(BKSearchViewController *)self isModalSheet])
  {
    viewIfLoaded = [(BKSearchViewController *)self viewIfLoaded];
    window = [viewIfLoaded window];
    if (window)
    {
      v6 = window;
      view = [(BKSearchViewController *)self view];

      if (view)
      {
        goto LABEL_7;
      }
    }

    else
    {
    }
  }

  searchDelegate = [(BKSearchViewController *)self searchDelegate];
  view = [searchDelegate environmentOverrideViewForSearchViewController:self];

LABEL_7:

  return view;
}

- (BOOL)_isRTL
{
  view = [(BKSearchViewController *)self view];
  v3 = +[UIView userInterfaceLayoutDirectionForSemanticContentAttribute:](UIView, "userInterfaceLayoutDirectionForSemanticContentAttribute:", [view semanticContentAttribute]) == &dword_0 + 1;

  return v3;
}

- (void)_analyticsSubmitInBookSearchEventWithSearchText:(id)text
{
  ba_effectiveAnalyticsTracker = [(BKSearchViewController *)self ba_effectiveAnalyticsTracker];
  searchDelegate = [(BKSearchViewController *)self searchDelegate];
  v5 = [searchDelegate readingSessionDataForSearchViewController:self];

  searchDelegate2 = [(BKSearchViewController *)self searchDelegate];
  v7 = [searchDelegate2 contentDataForSearchViewController:self];

  if (ba_effectiveAnalyticsTracker && v5 && v7)
  {
    v8 = +[BAEventReporter sharedReporter];
    [v8 emitInBookSearchEventWithTracker:ba_effectiveAnalyticsTracker readingSessionData:v5 contentData:v7];
  }
}

- (id)pointerInteraction:(id)interaction regionForRequest:(id)request defaultRegion:(id)region
{
  regionCopy = region;
  requestCopy = request;
  view = [interaction view];
  titleLabel = [view titleLabel];
  [titleLabel bounds];
  [titleLabel convertRect:view toView:?];
  v12 = v11;
  v14 = v13;
  [regionCopy rect];
  v16 = v15;
  v18 = v17;

  [requestCopy location];
  v20 = v19;
  v22 = v21;

  v27.origin.x = v12;
  v27.origin.y = v16;
  v27.size.width = v14;
  v27.size.height = v18;
  v26.x = v20;
  v26.y = v22;
  if (CGRectContainsPoint(v27, v26))
  {
    v23 = [UIPointerRegion regionWithRect:0 identifier:v12, v16, v14, v18];
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

- (id)pointerInteraction:(id)interaction styleForRegion:(id)region
{
  view = [interaction view];
  titleLabel = [view titleLabel];
  [titleLabel bounds];
  v7 = v6 + -8.0;
  v9 = v8 + -4.0;
  v11 = v10 + 16.0;
  v13 = v12 + 8.0;
  superview = [titleLabel superview];
  [titleLabel convertRect:superview toView:{v7, v9, v11, v13}];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;

  v23 = [UIPointerShape shapeWithRoundedRect:v16, v18, v20, v22];
  v24 = [[UITargetedPreview alloc] initWithView:titleLabel];
  v25 = [UIPointerHighlightEffect effectWithPreview:v24];
  v26 = [UIPointerStyle styleWithEffect:v25 shape:v23];

  return v26;
}

- (BKSearchViewControllerDelegate)searchDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_searchDelegate);

  return WeakRetained;
}

@end