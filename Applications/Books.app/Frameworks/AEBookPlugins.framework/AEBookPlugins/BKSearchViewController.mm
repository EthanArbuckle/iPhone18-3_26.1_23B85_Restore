@interface BKSearchViewController
- (BESearchResultTableViewCell)dummySearchResultsCell;
- (BKSearchLoadingTableViewCell)dummySearchLoadingCell;
- (BKSearchViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (BKSearchViewControllerDelegate)searchDelegate;
- (BOOL)_isRTL;
- (BOOL)_shouldShowSearchResultsView;
- (BOOL)searchStringIsPageNumber;
- (CGSize)_preferredContentSizeIsMinimum:(BOOL *)a3;
- (double)_resultsEstimatedRowHeight;
- (double)_resultsHeaderHeight;
- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4;
- (id)_escapedSearchString;
- (id)_loadingCellForTableView:(id)a3;
- (id)_resultsCellForRow:(unint64_t)a3 inTableView:(id)a4;
- (id)environmentOverrideViewForSearchController:(id)a3;
- (id)physicalPageMapForPageTitle:(id)a3;
- (id)pointerInteraction:(id)a3 regionForRequest:(id)a4 defaultRegion:(id)a5;
- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4;
- (id)searchController;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4;
- (id)tableView:(id)a3 willSelectRowAtIndexPath:(id)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (unint64_t)supportedInterfaceOrientations;
- (void)_analyticsSubmitInBookSearchEventWithSearchText:(id)a3;
- (void)_buildConstraints;
- (void)_configureLoadingCell:(id)a3;
- (void)_configureResultsCell:(id)a3 forRow:(unint64_t)a4 inTableView:(id)a5;
- (void)_reloadResultsAndResizeIfNecessary:(BOOL)a3;
- (void)_traitCollectionDidChange:(id)a3 previousTraitCollection:(id)a4;
- (void)_updateCancelButton;
- (void)_updateContentSize:(BOOL)a3;
- (void)_updateFooterConstraint;
- (void)_updateLoadingCell:(id)a3;
- (void)_updateWebsearchButtonsStatus;
- (void)dealloc;
- (void)didReceiveMemoryWarning;
- (void)handleDone:(id)a3;
- (void)openURLUsingNSString:(id)a3;
- (void)paginationComplete;
- (void)releaseViews;
- (void)revealSearchResult:(id)a3 animated:(BOOL)a4;
- (void)searchBarCancelButtonClicked:(id)a3;
- (void)searchBarSearchButtonClicked:(id)a3;
- (void)searchControllerFinishedSearchingChapter:(id)a3;
- (void)searchControllerWillBeginSearching:(id)a3 reportAnalytics:(BOOL)a4;
- (void)searchEncyclopediaForString:(id)a3;
- (void)searchWeb:(id)a3;
- (void)searchWebForString:(id)a3;
- (void)searchWikipedia:(id)a3;
- (void)setPaginationController:(id)a3;
- (void)setSearchString:(id)a3;
- (void)setShowPhysicalPages:(BOOL)a3;
- (void)setTheme:(id)a3;
- (void)stylizeForTheme;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)updateSearchResultsForSearchController:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)a3;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation BKSearchViewController

- (BKSearchViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v8.receiver = self;
  v8.super_class = BKSearchViewController;
  v4 = [(BKViewController *)&v8 initWithNibName:a3 bundle:a4];
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
  v9 = [(BKSearchViewController *)self view];
  [v9 addSubview:self->_container];

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
  v16 = [(BKSearchViewController *)self p_setupStandardUISearchController];
  [(BKSearchViewController *)self setUiSearchController:v16];

  v17 = [(BKSearchViewController *)self uiSearchController];
  [v17 setSearchResultsUpdater:self];

  v18 = [(BKSearchViewController *)self uiSearchController];
  v19 = [v18 searchBar];
  [v19 setDelegate:self];

  LODWORD(v18) = self->_contentType;
  v20 = AEBundle();
  v21 = v20;
  if (v18 == 2)
  {
    v22 = @"In this PDF";
  }

  else
  {
    v22 = @"In this book";
  }

  v23 = [v20 localizedStringForKey:v22 value:&stru_1E7188 table:0];
  v24 = [(BKSearchViewController *)self uiSearchController];
  v25 = [v24 searchBar];
  [v25 setPlaceholder:v23];

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
  v30 = [(BKSearchViewController *)self navigationItem];
  [v30 setTitle:v29];

  v31 = [(BKSearchViewController *)self uiSearchController];
  v32 = [v31 searchBar];
  searchField = self->_searchField;
  self->_searchField = v32;

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
  v45 = [(UIButton *)self->_googleButton titleLabel];
  [v45 setFont:v42];
  [v42 pointSize];
  [v45 setMinimumScaleFactor:8.0 / v46];
  [v45 setAdjustsFontSizeToFitWidth:1];
  [v45 setTextAlignment:1];
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
  v55 = [(UIButton *)self->_wikipediaButton titleLabel];
  [v55 setFont:v42];
  [v42 pointSize];
  [v55 setMinimumScaleFactor:8.0 / v56];
  [v55 setAdjustsFontSizeToFitWidth:1];
  [v55 setTextAlignment:1];
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
  v4 = [(BEHairlineDividerView *)headerDividerView constraints];
  [(BEHairlineDividerView *)headerDividerView removeConstraints:v4];

  container = self->_container;
  v6 = [(UIView *)container constraints];
  [(UIView *)container removeConstraints:v6];

  resultsTable = self->_resultsTable;
  v8 = [(UITableView *)resultsTable constraints];
  [(UITableView *)resultsTable removeConstraints:v8];

  footer = self->_footer;
  v10 = [(UIView *)footer constraints];
  [(UIView *)footer removeConstraints:v10];

  googleButton = self->_googleButton;
  v12 = [(UIButton *)googleButton constraints];
  [(UIButton *)googleButton removeConstraints:v12];

  wikipediaButton = self->_wikipediaButton;
  v14 = [(UIButton *)wikipediaButton constraints];
  [(UIButton *)wikipediaButton removeConstraints:v14];

  footerTopBorderView = self->_footerTopBorderView;
  v16 = [(BEHairlineDividerView *)footerTopBorderView constraints];
  [(BEHairlineDividerView *)footerTopBorderView removeConstraints:v16];

  if (!self->_footerHeightConstraint)
  {
    v17 = [NSLayoutConstraint constraintWithItem:self->_footer attribute:8 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:44.0];
    footerHeightConstraint = self->_footerHeightConstraint;
    self->_footerHeightConstraint = v17;

    [(NSLayoutConstraint *)self->_footerHeightConstraint setActive:1];
  }

  v19 = [(BKSearchViewController *)self view];
  v20 = [v19 safeAreaLayoutGuide];
  v111 = [(BEHairlineDividerView *)self->_headerDividerView leftAnchor];
  v110 = [v19 leftAnchor];
  v109 = [v111 constraintEqualToAnchor:v110];
  v112[0] = v109;
  v108 = [(BEHairlineDividerView *)self->_headerDividerView rightAnchor];
  v107 = [v19 rightAnchor];
  v106 = [v108 constraintEqualToAnchor:v107];
  v112[1] = v106;
  v105 = [(BEHairlineDividerView *)self->_headerDividerView topAnchor];
  v104 = [(UIView *)self->_container topAnchor];
  v103 = [v105 constraintEqualToAnchor:v104];
  v112[2] = v103;
  v102 = [(BEHairlineDividerView *)self->_headerDividerView heightAnchor];
  v21 = +[UIScreen mainScreen];
  [v21 scale];
  v23 = 1.0 / v22;

  v101 = [v102 constraintEqualToConstant:v23];
  v112[3] = v101;
  v100 = [(UIView *)self->_container topAnchor];
  v99 = [v20 topAnchor];
  v98 = [v100 constraintEqualToAnchor:v99];
  v112[4] = v98;
  v97 = [(UIView *)self->_container leadingAnchor];
  v96 = [v19 leadingAnchor];
  v95 = [v97 constraintEqualToAnchor:v96];
  v112[5] = v95;
  v94 = [(UIView *)self->_container trailingAnchor];
  v93 = [v19 trailingAnchor];
  v92 = [v94 constraintEqualToAnchor:v93];
  v112[6] = v92;
  v91 = [(UIView *)self->_container bottomAnchor];
  v90 = [v20 bottomAnchor];
  v88 = [v91 constraintEqualToAnchor:v90];
  v112[7] = v88;
  v87 = [(UITableView *)self->_resultsTable leftAnchor];
  v86 = [(UIView *)self->_container leftAnchor];
  v85 = [v87 constraintEqualToAnchor:v86];
  v112[8] = v85;
  v84 = [(UITableView *)self->_resultsTable topAnchor];
  v83 = [(BEHairlineDividerView *)self->_headerDividerView bottomAnchor];
  v82 = [v84 constraintEqualToAnchor:v83];
  v112[9] = v82;
  v81 = [(UITableView *)self->_resultsTable rightAnchor];
  v80 = [(UIView *)self->_container rightAnchor];
  v79 = [v81 constraintEqualToAnchor:v80];
  v112[10] = v79;
  v78 = [(UITableView *)self->_resultsTable bottomAnchor];
  v76 = [(UIView *)self->_footer topAnchor];
  v75 = [v78 constraintEqualToAnchor:v76];
  v112[11] = v75;
  v73 = [(UIView *)self->_footer leftAnchor];
  v89 = v19;
  v72 = [v19 leftAnchor];
  v71 = [v73 constraintEqualToAnchor:v72];
  v112[12] = v71;
  v70 = [(UIView *)self->_footer rightAnchor];
  v69 = [v19 rightAnchor];
  v67 = [v70 constraintEqualToAnchor:v69];
  v112[13] = v67;
  v66 = [(UIView *)self->_footer bottomAnchor];
  v65 = [(UIView *)self->_container bottomAnchor];
  v64 = [v66 constraintEqualToAnchor:v65];
  v112[14] = v64;
  v63 = [(UIView *)self->_footer widthAnchor];
  v62 = [(UIView *)self->_container widthAnchor];
  v61 = [v63 constraintEqualToAnchor:v62];
  v112[15] = v61;
  v60 = [(UIButton *)self->_googleButton leadingAnchor];
  v74 = v20;
  v59 = [v20 leadingAnchor];
  v58 = [v60 constraintEqualToAnchor:v59 constant:15.0];
  v112[16] = v58;
  v57 = [(UIButton *)self->_googleButton bottomAnchor];
  v56 = [(UIView *)self->_footer bottomAnchor];
  v55 = [v57 constraintEqualToAnchor:v56];
  v112[17] = v55;
  v54 = [(UIButton *)self->_googleButton widthAnchor];
  v53 = [(UIView *)self->_footer widthAnchor];
  v52 = [v54 constraintEqualToAnchor:v53 multiplier:0.5 constant:-15.0];
  v112[18] = v52;
  v68 = [(UIButton *)self->_googleButton heightAnchor];
  v51 = [(UIView *)self->_footer heightAnchor];
  v50 = [v68 constraintEqualToAnchor:v51];
  v112[19] = v50;
  v49 = [(UIButton *)self->_wikipediaButton trailingAnchor];
  v48 = [v20 trailingAnchor];
  v47 = [v49 constraintEqualToAnchor:v48 constant:-15.0];
  v112[20] = v47;
  v46 = [(UIButton *)self->_wikipediaButton bottomAnchor];
  v45 = [(UIView *)self->_footer bottomAnchor];
  v44 = [v46 constraintEqualToAnchor:v45];
  v112[21] = v44;
  v43 = [(UIButton *)self->_wikipediaButton widthAnchor];
  v42 = [(UIView *)self->_footer widthAnchor];
  v41 = [v43 constraintEqualToAnchor:v42 multiplier:0.5 constant:-15.0];
  v112[22] = v41;
  v77 = [(UIButton *)self->_wikipediaButton heightAnchor];
  v40 = [(UIView *)self->_footer heightAnchor];
  v39 = [v77 constraintEqualToAnchor:v40];
  v112[23] = v39;
  v38 = [(BEHairlineDividerView *)self->_footerTopBorderView leadingAnchor];
  v37 = [(BEHairlineDividerView *)self->_footerTopBorderView leadingAnchor];
  v36 = [v38 constraintEqualToAnchor:v37];
  v112[24] = v36;
  v24 = [(BEHairlineDividerView *)self->_footerTopBorderView topAnchor];
  v25 = [(BEHairlineDividerView *)self->_footerTopBorderView topAnchor];
  v26 = [v24 constraintEqualToAnchor:v25];
  v112[25] = v26;
  v27 = [(BEHairlineDividerView *)self->_footerTopBorderView widthAnchor];
  v28 = [(BEHairlineDividerView *)self->_footerTopBorderView widthAnchor];
  v29 = [v27 constraintEqualToAnchor:v28];
  v112[26] = v29;
  v30 = [(BEHairlineDividerView *)self->_footerTopBorderView heightAnchor];
  v31 = +[UIScreen mainScreen];
  [v31 scale];
  v33 = 1.0 / v32;

  v34 = [v30 constraintEqualToConstant:v33];
  v112[27] = v34;
  v35 = [NSArray arrayWithObjects:v112 count:28];
  [NSLayoutConstraint activateConstraints:v35];

  [(UIView *)self->_footer setHidden:_UISolariumEnabled()];
}

- (void)viewWillAppear:(BOOL)a3
{
  v9.receiver = self;
  v9.super_class = BKSearchViewController;
  [(BKSearchViewController *)&v9 viewWillAppear:a3];
  v4 = [(BKSearchViewController *)self ba_analyticsTracker];

  if (!v4)
  {
    v5 = [(BKSearchViewController *)self ba_setupNewAnalyticsTrackerWithName:@"ContentSearch"];
  }

  resultsTable = self->_resultsTable;
  v7 = [(UITableView *)resultsTable indexPathForSelectedRow];
  [(UITableView *)resultsTable deselectRowAtIndexPath:v7 animated:0];

  [(BKSearchViewController *)self stylizeForTheme];
  [(BKSearchViewController *)self _updateCancelButton];
  v8 = [(BKSearchViewController *)self searchDelegate];
  [v8 searchViewControllerWillAppear:self];
}

- (void)viewIsAppearing:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = BKSearchViewController;
  [(BKSearchViewController *)&v4 viewIsAppearing:a3];
  [(BKSearchViewController *)self _updateWebsearchButtonsStatus];
  [(BKSearchViewController *)self _updateContentSize:0];
}

- (void)viewDidAppear:(BOOL)a3
{
  v13.receiver = self;
  v13.super_class = BKSearchViewController;
  [(BKSearchViewController *)&v13 viewDidAppear:a3];
  v4 = [(BKSearchViewController *)self searchString];
  [(UISearchBar *)self->_searchField setText:v4];
  if (_UISolariumEnabled())
  {
    v5 = [(BKSearchViewController *)self uiSearchController];
    [v5 setActive:1];
  }

  else
  {
    if ([v4 length] <= 2 && !-[BKSearchViewController accessibilityRequiresActivateForSearchField](self, "accessibilityRequiresActivateForSearchField"))
    {
      [(UISearchBar *)self->_searchField becomeFirstResponder];
      goto LABEL_12;
    }

    v6 = [(BKSearchViewController *)self searchController];
    if ([v6 searchWasCompleted])
    {

      goto LABEL_12;
    }

    v7 = [(BKSearchViewController *)self searchController];
    v8 = [v7 isSearching];

    if (v8)
    {
      goto LABEL_12;
    }

    v9 = [(BKSearchViewController *)self searchController];
    v10 = [v9 results];
    v11 = [v10 count];

    v12 = [(BKSearchViewController *)self searchController];
    v5 = v12;
    if (v11)
    {
      [v12 continueSearch];
    }

    else
    {
      [v12 beginSearchWithReportAnalytics:1];
    }
  }

LABEL_12:
}

- (void)viewDidDisappear:(BOOL)a3
{
  v9.receiver = self;
  v9.super_class = BKSearchViewController;
  [(BKSearchViewController *)&v9 viewDidDisappear:a3];
  v4 = [(BKSearchViewController *)self searchController];
  v5 = [v4 searchWasCompleted];

  if ((v5 & 1) == 0)
  {
    v6 = [(BKSearchViewController *)self searchController];
    [v6 pauseSearch];
  }

  v7 = [(BKSearchViewController *)self uiSearchController];
  [v7 setActive:0];

  [(BKSearchViewController *)self _updateWebsearchButtonsStatus];
  [(BKSearchViewController *)self _updateContentSize:0];
  v8 = [(BKSearchViewController *)self searchDelegate];
  [v8 searchViewControllerDidDisappear:self];
}

- (void)handleDone:(id)a3
{
  v3 = [(BKSearchViewController *)self presentingViewController];
  [v3 dismissViewControllerAnimated:1 completion:0];
}

- (void)_traitCollectionDidChange:(id)a3 previousTraitCollection:(id)a4
{
  [(BKSearchViewController *)self stylizeForTheme:a3];
  [(BKSearchViewController *)self _updateCancelButton];
  [(BKSearchViewController *)self _updateWebsearchButtonsStatus];

  [(BKSearchViewController *)self _updateContentSize:0];
}

- (void)didReceiveMemoryWarning
{
  if ([(BKSearchViewController *)self isViewLoaded])
  {
    v3 = [(BKSearchViewController *)self view];
    v4 = [v3 window];

    if (!v4)
    {
      v5 = [(BKSearchViewController *)self searchController];
      [v5 didReceiveMemoryWarning];
    }
  }

  v6.receiver = self;
  v6.super_class = BKSearchViewController;
  [(BKSearchViewController *)&v6 didReceiveMemoryWarning];
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = a4;
  v20.receiver = self;
  v20.super_class = BKSearchViewController;
  [(BKSearchViewController *)&v20 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  v8 = [(BKSearchViewController *)self view];
  [v8 bounds];
  v10 = v9;
  v12 = v11;

  if (v10 != width || v12 != height)
  {
    WeakRetained = objc_loadWeakRetained(&self->_searchDelegate);
    [WeakRetained searchViewController:self willTransitionToSize:{width, height}];

    v15 = [(BKSearchViewController *)self sizeChangesRequireBookRepagination];
    v16 = v15;
    if (v15)
    {
      v17 = [(BKSearchViewController *)self searchController];
      [v17 cancelSearch];
    }

    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_92F44;
    v18[3] = &unk_1E4EB0;
    v18[4] = self;
    *&v18[5] = width;
    *&v18[6] = height;
    v19 = v16;
    [v7 animateAlongsideTransition:0 completion:v18];
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

- (void)setTheme:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = BKSearchViewController;
  v5 = [(BKSearchViewController *)&v7 theme];

  if (v5 != v4)
  {
    v6.receiver = self;
    v6.super_class = BKSearchViewController;
    [(BKSearchViewController *)&v6 setTheme:v4];
    [(BKSearchViewController *)self stylizeForTheme];
  }
}

- (void)stylizeForTheme
{
  v3 = [(BKSearchViewController *)self viewIfLoaded];
  if (v3)
  {
    v23 = v3;
    v4 = [(BKSearchViewController *)self themePage];
    v5 = [v4 backgroundColorForTraitEnvironment:self];
    v6 = [v4 secondaryTextColor];
    v7 = [UIImage systemImageNamed:@"xmark.circle.fill"];
    v8 = [UIImageSymbolConfiguration configurationWithTextStyle:UIFontTextStyleBody];
    v9 = [v7 imageWithConfiguration:v8];

    v10 = [v9 imageWithTintColor:v6];

    v11 = [v10 imageWithRenderingMode:1];

    v12 = [UIImage systemImageNamed:@"magnifyingglass"];
    v13 = [UIImageSymbolConfiguration configurationWithTextStyle:UIFontTextStyleBody];
    v14 = [v12 imageWithConfiguration:v13];

    v15 = [v14 imageWithTintColor:v6];

    v16 = [v4 keyColor];
    [v23 setTintColor:v16];

    [(UIView *)self->_container setBackgroundColor:v5];
    [v23 setBackgroundColor:v5];
    [(UITableView *)self->_resultsTable setBackgroundColor:v5];
    [(UIView *)self->_footer setBackgroundColor:v5];
    v17 = [v4 tableViewSeparatorColor];
    [(UITableView *)self->_resultsTable setSeparatorColor:v17];

    v18 = [(BKSearchViewController *)self popoverPresentationController];
    [v18 setBackgroundColor:v5];

    v19 = [v4 separatorColor];
    [(BEHairlineDividerView *)self->_headerDividerView setDividerColor:v19];
    [(BEHairlineDividerView *)self->_footerTopBorderView setDividerColor:v19];
    v20 = [v23 window];
    if (v20)
    {
      v21 = v20;
      v22 = [(BKSearchViewController *)self isModalSheet];

      if (v22)
      {
        [(BKSearchViewController *)self setNeedsStatusBarAppearanceUpdate];
      }
    }

    [(UITableView *)self->_resultsTable reloadData];

    v3 = v23;
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

- (id)physicalPageMapForPageTitle:(id)a3
{
  v4 = a3;
  v5 = [(BKSearchViewController *)self searchController];
  v6 = [v5 searchBook];
  v7 = [v6 physicalPageMap];

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
  v8 = v4;
  v12 = v8;
  v13 = &v14;
  [v7 indexOfObjectWithOptions:1 passingTest:v11];
  v9 = v15[5];

  _Block_object_dispose(&v14, 8);

  return v9;
}

- (BOOL)searchStringIsPageNumber
{
  v3 = [(BKSearchViewController *)self searchString];
  if ([(BKSearchViewController *)self showPhysicalPages])
  {
    v4 = [(BKSearchViewController *)self physicalPageMapForPageTitle:v3];
    v5 = v4 != 0;
LABEL_7:

    goto LABEL_8;
  }

  v6 = [v3 intValue];
  if (v6 >= 1)
  {
    v7 = v6;
    v8 = [(BKSearchViewController *)self searchController];
    v9 = [v8 pageCount];

    if (v9 >= v7)
    {
      v4 = +[NSCharacterSet whitespaceAndNewlineCharacterSet];
      v10 = [v3 stringByTrimmingCharactersInSet:v4];
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

  v4 = [(BKSearchViewController *)self searchString];
  if ([v4 length] <= 2)
  {
    v5 = [(BKSearchViewController *)self searchController];
    v6 = [v5 results];
    if ([v6 count])
    {
      v3 = 1;
    }

    else
    {
      v7 = [(BKSearchViewController *)self searchController];
      if ([v7 searchWasCompleted])
      {
        v3 = 1;
      }

      else
      {
        v8 = [(BKSearchViewController *)self searchController];
        if ([v8 isSearching])
        {
          v3 = 1;
        }

        else
        {
          v3 = [(BKSearchViewController *)self searchStringIsPageNumber];
        }
      }
    }
  }

  else
  {
    v3 = 1;
  }

  return v3;
}

- (CGSize)_preferredContentSizeIsMinimum:(BOOL *)a3
{
  if (![(BKSearchViewController *)self isViewLoaded])
  {
    v7 = 0;
    width = CGSizeZero.width;
    height = CGSizeZero.height;
    if (!a3)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  v5 = [(BKSearchViewController *)self view];
  [v5 layoutIfNeeded];

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
  v17 = [(BKSearchViewController *)self _shouldShowSearchResultsView];
  if (v17)
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
    v23 = [(BKSearchViewController *)self searchController];
    v24 = [v23 isSearching];

    if (v24)
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
  v7 = v17 ^ 1;
  height = ceil(v21);
  if (a3)
  {
LABEL_26:
    *a3 = v7;
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
    v4 = [v3 userInterfaceIdiom];

    if (v4 == &dword_0 + 1)
    {
      if (([(BKSearchViewController *)self _isInPopoverPresentation]& 1) != 0)
      {
        v8 = [(BKSearchViewController *)self navigationItem];
        [v8 setRightBarButtonItem:0];
      }

      else
      {
        v8 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:24 target:self action:"handleDone:"];
        v7 = [(BKSearchViewController *)self navigationItem];
        [v7 setRightBarButtonItem:v8];
      }
    }
  }

  else
  {
    v5 = [(BKSearchViewController *)self isModalSheet];
    searchField = self->_searchField;

    [(UISearchBar *)searchField setShowsCancelButton:v5];
  }
}

- (void)_updateContentSize:(BOOL)a3
{
  v12 = 0;
  [(BKSearchViewController *)self _preferredContentSizeIsMinimum:&v12];
  v6 = v5;
  v8 = v7;
  if ([(BKSearchViewController *)self resizeAnimationInProgress]&& a3)
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
  v3 = [(BKSearchViewController *)self searchString];
  v4 = [v3 length];

  v5 = 1.0;
  if (!v4 && ([(BKSearchViewController *)self im_isCompactWidth]& 1) == 0)
  {
    v5 = [(BKSearchViewController *)self im_isCompactHeight];
  }

  v6 = v4 != 0;
  [(UIButton *)self->_wikipediaButton setEnabled:v6];
  [(UIButton *)self->_googleButton setEnabled:v6];
  [(UIButton *)self->_wikipediaButton setAlpha:v5];
  [(UIButton *)self->_googleButton setAlpha:v5];

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
      v7 = [(BKSearchViewController *)self im_isCompactHeight];
      v6 = 44.0;
      if (!v7)
      {
        v6 = 0.0;
      }
    }
  }

  [(NSLayoutConstraint *)self->_footerHeightConstraint setConstant:v6];
  container = self->_container;

  [(UIView *)container layoutIfNeeded];
}

- (void)setSearchString:(id)a3
{
  v8 = a3;
  v4 = [(UISearchBar *)self->_searchField text];
  v5 = [v8 caseInsensitiveCompare:v4];

  if (v5)
  {
    [(UISearchBar *)self->_searchField setText:v8];
    v6 = [(BKSearchViewController *)self searchController];
    [v6 setSearchString:v8];

    v7 = [(BKSearchViewController *)self searchController];
    [v7 beginSearchWithReportAnalytics:1];
  }
}

- (void)setShowPhysicalPages:(BOOL)a3
{
  if (self->_showPhysicalPages != a3)
  {
    self->_showPhysicalPages = a3;
    [(UITableView *)self->_resultsTable reloadData];
  }
}

- (void)paginationComplete
{
  [(BKSearchController *)self->_searchController setPageCount:[(BKPaginationController *)self->_paginationController pageTotal]];
  resultsTable = self->_resultsTable;

  [(UITableView *)resultsTable reloadData];
}

- (void)setPaginationController:(id)a3
{
  v5 = a3;
  paginationController = self->_paginationController;
  v9 = v5;
  if (paginationController != v5)
  {
    if (paginationController)
    {
      v7 = +[NSNotificationCenter defaultCenter];
      [v7 removeObserver:self name:BKPaginationCompleteForBookNotification object:self->_paginationController];
    }

    objc_storeStrong(&self->_paginationController, a3);
    if (self->_paginationController)
    {
      v8 = +[NSNotificationCenter defaultCenter];
      [v8 addObserver:self selector:"paginationComplete" name:BKPaginationCompleteForBookNotification object:self->_paginationController];
    }
  }
}

- (void)revealSearchResult:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v9 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_searchDelegate);
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = objc_loadWeakRetained(&self->_searchDelegate);
    [v8 searchViewController:self revealSearchResult:v9 animated:v4];
  }
}

- (void)searchWebForString:(id)a3
{
  [(BKSearchViewController *)self setSearchString:a3];

  [(BKSearchViewController *)self searchWeb:0];
}

- (void)searchEncyclopediaForString:(id)a3
{
  [(BKSearchViewController *)self setSearchString:a3];

  [(BKSearchViewController *)self searchWikipedia:0];
}

- (void)openURLUsingNSString:(id)a3
{
  if (a3)
  {
    v3 = a3;
    v5 = [[NSURL alloc] initWithString:v3];

    if (v5)
    {
      v4 = +[UIApplication sharedApplication];
      [v4 openURL:v5 options:&__NSDictionary0__struct completionHandler:0];
    }
  }
}

- (id)_escapedSearchString
{
  v2 = [(BKSearchViewController *)self searchString];
  v3 = +[NSCharacterSet URLPathAllowedCharacterSet];
  v4 = [v2 stringByAddingPercentEncodingWithAllowedCharacters:v3];

  return v4;
}

- (void)searchWeb:(id)a3
{
  v4 = [(BKSearchViewController *)self _escapedSearchString];
  v6 = [NSString stringWithFormat:@"x-web-search://?%@", v4];

  v5 = v6;
  if (v6)
  {
    [(BKSearchViewController *)self openURLUsingNSString:v6];
    v5 = v6;
  }
}

- (void)searchWikipedia:(id)a3
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
  v8 = [(BKSearchViewController *)self _escapedSearchString];
  v9 = [NSString stringWithFormat:v7, v8, v5];

  if (v9)
  {
    [(BKSearchViewController *)self openURLUsingNSString:v9];
  }
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v6 = [(BKSearchViewController *)self searchController];
  v7 = v6;
  if (a4)
  {
    v8 = [v6 results];
    v9 = [v8 count];

    v10 = v9 + [(BKSearchViewController *)self _shouldShowSearchResultsView];
  }

  else
  {
    v10 = [(BKSearchViewController *)self searchStringIsPageNumber];
  }

  return v10;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v7 section] == &dword_0 + 1)
  {
    v8 = [v7 row];
    v9 = [(BKSearchViewController *)self searchController];
    v10 = [v9 results];
    v11 = [v10 count];

    if (v8 == v11)
    {
      [(BKSearchViewController *)self _loadingCellForTableView:v6];
    }

    else
    {
      -[BKSearchViewController _resultsCellForRow:inTableView:](self, "_resultsCellForRow:inTableView:", [v7 row], v6);
    }
    v16 = ;
    if (v16)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  if ([v7 section])
  {
    goto LABEL_13;
  }

  v12 = [(BKSearchViewController *)self themePage];
  v13 = [v12 isNight:self];
  v14 = @"pageNumberCell";
  if (v13)
  {
    v14 = @"pageNumberCell-night";
  }

  v15 = v14;
  v16 = [v6 dequeueReusableCellWithIdentifier:v15];
  if (!v16)
  {
    v16 = [[UITableViewCell alloc] initWithStyle:0 reuseIdentifier:v15];
    v17 = [UIFont boldSystemFontOfSize:kBESearchResultFontSize];
    v18 = [v16 textLabel];
    [v18 setFont:v17];

    v19 = [UIView alloc];
    v20 = [v16 contentView];
    [v20 bounds];
    v21 = [v19 initWithFrame:?];
    [v16 setSelectedBackgroundView:v21];
  }

  v42 = v15;
  v22 = [(BKSearchViewController *)self searchController];
  v23 = [v22 searchString];

  v41 = v23;
  if ([(BKSearchViewController *)self showPhysicalPages])
  {
    v24 = [(BKSearchViewController *)self physicalPageMapForPageTitle:v23];
    v25 = [v24 valueForKey:@"name"];

    v26 = AEBundle();
    v27 = [v26 localizedStringForKey:@"Page %@" value:&stru_1E7188 table:0];
    v28 = [NSString stringWithFormat:v27, v25];
  }

  else
  {
    v30 = [v23 integerValue];
    v31 = [(BKSearchViewController *)self searchDelegate];
    v25 = [v31 searchViewController:self chapterNameForSearchResult:0 pageNumber:v30];

    v32 = AEBundle();
    v26 = v32;
    if (v25)
    {
      v27 = [v32 localizedStringForKey:@"Page %@ value:%@" table:{&stru_1E7188, 0}];
      v33 = [NSNumberFormatter imaxLocalizedUnsignedInteger:v30 usesGroupingSeparator:0];
      [NSString stringWithFormat:v27, v33, v25];
    }

    else
    {
      v27 = [v32 localizedStringForKey:@"Page %@" value:&stru_1E7188 table:0];
      v33 = [NSNumberFormatter imaxLocalizedUnsignedInteger:v30 usesGroupingSeparator:0];
      [NSString stringWithFormat:v27, v33, v40];
    }
    v28 = ;
  }

  v34 = [v16 textLabel];
  [v34 setText:v28];

  v35 = [(UITableView *)self->_resultsTable backgroundColor];
  [v16 setBackgroundColor:v35];

  v36 = [v12 primaryTextColor];
  v37 = [v16 textLabel];
  [v37 setTextColor:v36];

  v38 = [v12 tableViewCellSelectedColor];
  v39 = [v16 selectedBackgroundView];
  [v39 setBackgroundColor:v38];

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

- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4
{
  v6 = a3;
  if (a4 == 1)
  {
    v7 = @"Text";
  }

  else
  {
    if (a4 || ![(BKSearchViewController *)self searchStringIsPageNumber])
    {
      v8 = 0;
      goto LABEL_8;
    }

    v7 = @"Page Number";
  }

  v9 = AEBundle();
  v8 = [v9 localizedStringForKey:v7 value:&stru_1E7188 table:0];

LABEL_8:
  v10 = [(BKSearchViewController *)self themePage];
  v11 = [v6 dequeueReusableHeaderFooterViewWithIdentifier:@"BKSearchTableHeaderViewIdentifier"];
  if (!v11)
  {
    v11 = [[UITableViewHeaderFooterView alloc] initWithReuseIdentifier:@"BKSearchTableHeaderViewIdentifier"];
  }

  v12 = [v11 textLabel];
  [v12 setText:v8];

  v13 = [v10 secondaryTextColor];
  v14 = [v11 textLabel];
  [v14 setTextColor:v13];

  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_94CA4;
  v18[3] = &unk_1E4F00;
  v19 = v10;
  v20 = v6;
  v15 = v6;
  v16 = v10;
  [v11 _setBackgroundViewConfigurationProvider:v18];

  return v11;
}

- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4
{
  v6 = a3;
  if (a4 == 1 || (v7 = 0.0, !a4) && [(BKSearchViewController *)self searchStringIsPageNumber])
  {
    [(BKSearchViewController *)self _resultsHeaderHeight];
    v7 = v8;
  }

  return v7;
}

- (void)_updateLoadingCell:(id)a3
{
  v26 = a3;
  v4 = [(BKSearchViewController *)self searchController];
  v5 = [v4 isSearching];

  v6 = [v26 activityIndicator];
  v7 = v6;
  if (v5)
  {
    v8 = [v6 isAnimating];

    if ((v8 & 1) == 0)
    {
      v9 = [v26 activityIndicator];
      [v9 startAnimating];
    }

    v10 = AEBundle();
    v11 = [v10 localizedStringForKey:@"Searching…" value:&stru_1E7188 table:0];

LABEL_13:
    v23 = 0;
    goto LABEL_14;
  }

  [v6 stopAnimating];

  v12 = [(BKSearchViewController *)self searchController];
  v13 = [v12 wasAborted];

  if (v13)
  {
    v14 = @"Search Cancelled";
    goto LABEL_11;
  }

  v15 = [(BKSearchViewController *)self searchController];
  v16 = [v15 hasPartialResults];

  if (v16)
  {
    v14 = @"Load More…";
    goto LABEL_11;
  }

  v17 = [(BKSearchViewController *)self searchController];
  v18 = [v17 searchWasCompleted];

  if (v18)
  {
    v14 = @"Search Completed";
LABEL_11:
    v19 = AEBundle();
    v11 = [v19 localizedStringForKey:v14 value:&stru_1E7188 table:0];

    if (v11)
    {
      v20 = [(BKSearchViewController *)self searchController];
      v21 = [v20 results];
      v22 = [v21 count];

      v23 = [NSString ae_searchResultDetailTextWithCount:v22];
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  v23 = 0;
  v11 = 0;
LABEL_14:
  v24 = [v26 textLabel];
  [v24 setText:v11];

  v25 = [v26 detailTextLabel];
  [v25 setText:v23];
}

- (void)_configureLoadingCell:(id)a3
{
  if (a3)
  {
    v3 = a3;
    [v3 setSelectionStyle:0];
    v11 = [UIFont preferredFontForTextStyle:UIFontTextStyleTitle1];
    v4 = kBESearchResultFontSize;
    [v11 _scaledValueForValue:kBESearchResultFontSize];
    v5 = [UIFont systemFontOfSize:"systemFontOfSize:weight:" weight:?];
    v6 = [v3 textLabel];
    [v6 setFont:v5];

    v7 = [v3 textLabel];
    [v7 setTextAlignment:1];

    [v11 _scaledValueForValue:v4];
    v8 = [UIFont systemFontOfSize:?];
    v9 = [v3 textLabel];
    [v9 setFont:v8];

    v10 = [v3 detailTextLabel];

    [v10 setTextAlignment:1];
  }
}

- (id)_loadingCellForTableView:(id)a3
{
  v4 = a3;
  v5 = [(BKSearchViewController *)self themePage];
  v6 = [v5 isNight:self];
  v7 = @"loadingCell";
  if (v6)
  {
    v7 = @"loadingCell-night";
  }

  v8 = v7;
  v9 = [v4 dequeueReusableCellWithIdentifier:v8];

  if (!v9)
  {
    v9 = [[BKSearchLoadingTableViewCell alloc] initWithStyle:3 reuseIdentifier:v8];
    [(BKSearchViewController *)self _configureLoadingCell:v9];
  }

  v10 = [v5 primaryTextColor];
  v11 = [(UITableView *)self->_resultsTable backgroundColor];
  [(BKSearchLoadingTableViewCell *)v9 setBackgroundColor:v11];
  v12 = [(BKSearchLoadingTableViewCell *)v9 contentView];
  [v12 setBackgroundColor:v11];

  v13 = [(BKSearchLoadingTableViewCell *)v9 activityIndicator];
  [v13 setColor:v10];

  v14 = [(BKSearchLoadingTableViewCell *)v9 textLabel];
  [v14 setTextColor:v10];

  v15 = [(BKSearchLoadingTableViewCell *)v9 detailTextLabel];
  [v15 setTextColor:v10];

  [(BKSearchViewController *)self _updateLoadingCell:v9];

  return v9;
}

- (void)_configureResultsCell:(id)a3 forRow:(unint64_t)a4 inTableView:(id)a5
{
  v62 = a3;
  v9 = a5;
  v10 = [(BKSearchViewController *)self themePage];
  v11 = [v10 primaryTextColor];
  v12 = [(UITableView *)self->_resultsTable backgroundColor];
  v13 = [v62 titleLabel];
  [v13 setTextColor:v11];

  v14 = [v62 resultLabel];
  [v14 setTextColor:v11];

  v15 = [v10 isNight:self];
  if (v15)
  {
    v16 = [v10 buttonTitleColor];
  }

  else
  {
    v16 = 0;
  }

  v17 = [v62 resultLabel];
  [v17 setBoldColor:v16];

  if (v15)
  {
  }

  v18 = [v10 secondaryTextColor];
  v19 = [v62 pageNumberLabel];
  [v19 setTextColor:v18];

  v20 = [v10 tableViewCellSelectedColor];
  v21 = [v62 selectedBackgroundView];
  [v21 setBackgroundColor:v20];

  [v62 setBackgroundColor:v12];
  [v9 frame];
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;

  v64.origin.x = v23;
  v64.origin.y = v25;
  v64.size.width = v27;
  v64.size.height = v29;
  [v62 setMaxWidth:CGRectGetWidth(v64)];
  v30 = [(BKSearchViewController *)self searchController];
  v31 = [v30 results];
  v32 = [v31 count];

  if (v32 > a4)
  {
    objc_opt_class();
    v33 = [(BKSearchViewController *)self searchController];
    v34 = [v33 results];
    v35 = [v34 objectAtIndex:a4];
    v36 = BUDynamicCast();

    v37 = [(BKSearchViewController *)self searchDelegate];
    v38 = [v37 searchViewController:self pageNumberForDocumentOrdinal:{objc_msgSend(v36, "ordinal")}];

    v39 = 0x7FFFFFFFFFFFFFFFLL;
    if (v38 == 0x7FFFFFFFFFFFFFFFLL || (v39 = v38 + [v36 pageOffset], -[BKSearchViewController searchController](self, "searchController"), v40 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v40, "searchBook"), v34 = objc_claimAutoreleasedReturnValue(), v41 = objc_msgSend(v34, "suppressTOC"), v34, v40, (v41 & 1) != 0))
    {
      v42 = 0;
    }

    else
    {
      v43 = [(BKSearchViewController *)self paginationController];

      if (v43)
      {
        v34 = [(BKSearchViewController *)self paginationController];
        [v34 titleForChapterAtPageNumber:v39];
      }

      else
      {
        v34 = [(BKSearchViewController *)self searchDelegate];
        [v34 searchViewController:self chapterNameForSearchResult:v36 pageNumber:v39];
      }
      v42 = ;
    }

    v44 = [(BKSearchViewController *)self showPhysicalPages];
    if (v44 & 1) != 0 || (-[BKSearchViewController searchController](self, "searchController"), v34 = objc_claimAutoreleasedReturnValue(), [v34 searchBook], v5 = objc_claimAutoreleasedReturnValue(), (objc_msgSend(v5, "isFixedLayout")))
    {
      v45 = [v36 pageTitle];

      if ((v44 & 1) == 0)
      {
      }

      if (!v45)
      {
LABEL_22:
        if ((v39 - 1) <= 0x7FFFFFFFFFFFFFFDLL)
        {
          if (v42)
          {
            v46 = v42;
          }

          else
          {
            v46 = &stru_1E7188;
          }

          v50 = [NSNumberFormatter imaxLocalizedUnsignedInteger:v39 usesGroupingSeparator:0];
          goto LABEL_35;
        }

        v47 = [v36 pageTitle];
        v48 = [v47 length];

        if (v48)
        {
          if (v42)
          {
            v49 = AEBundle();
            v50 = &stru_1E7188;
            v51 = [v49 localizedStringForKey:@"%@ value:%@" table:{&stru_1E7188, 0}];
            v52 = [v36 pageTitle];
            v46 = [NSString stringWithFormat:v51, v42, v52];

LABEL_35:
            v54 = [v62 titleLabel];
            [v54 setText:v46];

            v55 = [v36 text];
            v56 = [v62 resultLabel];
            [v56 setText:v55];

            v57 = [v36 searchStringRange];
            v59 = v58;
            v60 = [v62 resultLabel];
            [v60 setBoldRange:{v57, v59}];

            v61 = [v62 pageNumberLabel];
            [v61 setText:v50];

            [v62 applyLabelFonts];
            [v62 updateConstraintsIfNeeded];

            goto LABEL_36;
          }

          v53 = [v36 pageTitle];
        }

        else
        {
          if (!v42)
          {
            v50 = &stru_1E7188;
            v46 = &stru_1E7188;
            goto LABEL_35;
          }

          v53 = v42;
        }

        v46 = v53;
        v50 = &stru_1E7188;
        goto LABEL_35;
      }

      v34 = [v36 pageTitle];
      v39 = [v34 integerValue];
    }

    else
    {
    }

    goto LABEL_22;
  }

LABEL_36:
}

- (id)_resultsCellForRow:(unint64_t)a3 inTableView:(id)a4
{
  v6 = a4;
  v7 = [(BKSearchViewController *)self themePage];
  v8 = [v7 isNight:self];

  v9 = &kBESearchTableViewCellResultsNightIdentifier;
  if (!v8)
  {
    v9 = &kBESearchTableViewCellResultsIdentifier;
  }

  v10 = *v9;
  v11 = [v6 dequeueReusableCellWithIdentifier:v10];
  if (!v11)
  {
    v11 = [[BESearchResultTableViewCell alloc] initWithStyle:0 reuseIdentifier:v10];
  }

  [(BKSearchViewController *)self _configureResultsCell:v11 forRow:a3 inTableView:v6];

  return v11;
}

- (id)tableView:(id)a3 willSelectRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v7 section] == &dword_0 + 1 && (v8 = objc_msgSend(v7, "row"), v8 >= (objc_msgSend(v6, "numberOfRowsInSection:", 1) - 1)) && (-[BKSearchViewController searchController](self, "searchController"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "hasPartialResults"), v9, !v10))
  {
    v11 = 0;
  }

  else
  {
    v11 = v7;
  }

  return v11;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v18 = a3;
  v6 = a4;
  if ([v6 section] != &dword_0 + 1)
  {
    if ([v6 section])
    {
      goto LABEL_14;
    }

    v11 = [(BKSearchViewController *)self searchString];
    if ([(BKSearchViewController *)self showPhysicalPages])
    {
      v12 = [(BKSearchViewController *)self physicalPageMapForPageTitle:v11];
      v13 = [v12 valueForKey:@"href"];

      if (!v13)
      {
LABEL_12:

        goto LABEL_13;
      }

      v14 = [[BKAnchorPathLocation alloc] initWithPath:v13];
      WeakRetained = objc_loadWeakRetained(&self->_searchDelegate);
      [WeakRetained searchViewController:self turnToLocation:v14 animated:1];
    }

    else
    {
      v13 = objc_loadWeakRetained(&self->_searchDelegate);
      v14 = [(BKSearchViewController *)self searchString];
      [v13 searchViewController:self turnToPageNumber:-[BKAnchorPathLocation intValue](v14 animated:{"intValue"), 1}];
    }

    goto LABEL_12;
  }

  v7 = [v6 row];
  if (v7 >= ([v18 numberOfRowsInSection:1] - 1))
  {
    v16 = [(BKSearchViewController *)self searchController];
    v17 = [v16 hasPartialResults];

    if (!v17)
    {
      goto LABEL_14;
    }

    v11 = [(BKSearchViewController *)self searchController];
    [v11 loadMore];
  }

  else
  {
    objc_opt_class();
    v8 = [(BKSearchViewController *)self searchController];
    v9 = [v8 results];
    v10 = [v9 objectAtIndex:{objc_msgSend(v6, "row")}];
    v11 = BUDynamicCast();

    [(BKSearchViewController *)self revealSearchResult:v11];
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

- (void)updateSearchResultsForSearchController:(id)a3
{
  v4 = [(UISearchBar *)self->_searchField text];
  v5 = [(BKSearchViewController *)self searchController];
  [v5 setSearchString:v4];

  [(BKSearchViewController *)self _updateWebsearchButtonsStatus];
  [(BKSearchViewController *)self _updateContentSize:1];

  [(BKSearchViewController *)self _updateFooterConstraint];
}

- (void)searchBarSearchButtonClicked:(id)a3
{
  v17 = a3;
  v4 = [v17 text];
  v5 = [(BKSearchViewController *)self searchController];
  v6 = [v5 searchString];
  if ([v4 isEqualToString:v6])
  {
    v7 = [(BKSearchViewController *)self searchController];
    v8 = [v7 results];
    if (v8)
    {
      v9 = v8;
      v10 = [(BKSearchViewController *)self searchController];
      v11 = [v10 results];
      v12 = [v11 count];

      v13 = v17;
      if (v12)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }
  }

LABEL_7:
  v14 = [v17 text];
  v15 = [(BKSearchViewController *)self searchController];
  [v15 setSearchString:v14];

  v16 = [(BKSearchViewController *)self searchController];
  [v16 beginSearchWithReportAnalytics:1];

  v13 = v17;
LABEL_8:
  [v13 resignFirstResponder];
}

- (void)searchBarCancelButtonClicked:(id)a3
{
  if (isPhone())
  {
    v4 = [(BKSearchViewController *)self searchController];
    [v4 pauseSearch];

    [(BKSearchViewController *)self revealSearchResult:0];
  }
}

- (void)searchControllerWillBeginSearching:(id)a3 reportAnalytics:(BOOL)a4
{
  v5 = [a3 searchString];
  [(BKSearchViewController *)self _analyticsSubmitInBookSearchEventWithSearchText:v5];

  self->_maxContentHeightWasReached = 0;

  [(BKSearchViewController *)self _reloadResultsAndResizeIfNecessary:1];
}

- (void)_reloadResultsAndResizeIfNecessary:(BOOL)a3
{
  v3 = a3;
  if (![(BKSearchViewController *)self isModalSheet]&& !self->_maxContentHeightWasReached)
  {
    [(BKSearchViewController *)self _updateContentSize:v3];
    [(BKSearchViewController *)self _updateFooterConstraint];
  }

  resultsTable = self->_resultsTable;

  [(UITableView *)resultsTable reloadData];
}

- (void)searchControllerFinishedSearchingChapter:(id)a3
{
  v4 = [(BKSearchViewController *)self _loadingCellForTableView:self->_resultsTable];
  [(BKSearchViewController *)self _updateLoadingCell:v4];
}

- (id)environmentOverrideViewForSearchController:(id)a3
{
  if ([(BKSearchViewController *)self isModalSheet])
  {
    v4 = [(BKSearchViewController *)self viewIfLoaded];
    v5 = [v4 window];
    if (v5)
    {
      v6 = v5;
      v7 = [(BKSearchViewController *)self view];

      if (v7)
      {
        goto LABEL_7;
      }
    }

    else
    {
    }
  }

  v8 = [(BKSearchViewController *)self searchDelegate];
  v7 = [v8 environmentOverrideViewForSearchViewController:self];

LABEL_7:

  return v7;
}

- (BOOL)_isRTL
{
  v2 = [(BKSearchViewController *)self view];
  v3 = +[UIView userInterfaceLayoutDirectionForSemanticContentAttribute:](UIView, "userInterfaceLayoutDirectionForSemanticContentAttribute:", [v2 semanticContentAttribute]) == &dword_0 + 1;

  return v3;
}

- (void)_analyticsSubmitInBookSearchEventWithSearchText:(id)a3
{
  v9 = [(BKSearchViewController *)self ba_effectiveAnalyticsTracker];
  v4 = [(BKSearchViewController *)self searchDelegate];
  v5 = [v4 readingSessionDataForSearchViewController:self];

  v6 = [(BKSearchViewController *)self searchDelegate];
  v7 = [v6 contentDataForSearchViewController:self];

  if (v9 && v5 && v7)
  {
    v8 = +[BAEventReporter sharedReporter];
    [v8 emitInBookSearchEventWithTracker:v9 readingSessionData:v5 contentData:v7];
  }
}

- (id)pointerInteraction:(id)a3 regionForRequest:(id)a4 defaultRegion:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = [a3 view];
  v10 = [v9 titleLabel];
  [v10 bounds];
  [v10 convertRect:v9 toView:?];
  v12 = v11;
  v14 = v13;
  [v7 rect];
  v16 = v15;
  v18 = v17;

  [v8 location];
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

- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4
{
  v4 = [a3 view];
  v5 = [v4 titleLabel];
  [v5 bounds];
  v7 = v6 + -8.0;
  v9 = v8 + -4.0;
  v11 = v10 + 16.0;
  v13 = v12 + 8.0;
  v14 = [v5 superview];
  [v5 convertRect:v14 toView:{v7, v9, v11, v13}];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;

  v23 = [UIPointerShape shapeWithRoundedRect:v16, v18, v20, v22];
  v24 = [[UITargetedPreview alloc] initWithView:v5];
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