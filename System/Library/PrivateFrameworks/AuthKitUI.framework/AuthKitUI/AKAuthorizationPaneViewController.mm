@interface AKAuthorizationPaneViewController
- (AKAuthorizationEditableDataSources)editableDataSources;
- (AKAuthorizationPaneDelegate)paneDelegate;
- (AKAuthorizationPaneViewController)init;
- (AKAuthorizationPaneViewController)initWithCoder:(id)coder;
- (AKAuthorizationPaneViewController)initWithNibName:(id)name bundle:(id)bundle;
- (AKAuthorizationPaneViewController)initWithStyle:(int64_t)style;
- (BOOL)_isContentUnderNavigationBar;
- (BOOL)_isContentUnderTray;
- (BOOL)_shouldEmbedContentTray;
- (double)_contentTrayOffsetAdjustedForScrollInset:(BOOL)inset;
- (double)_deviceSafeAreaBottomInset;
- (double)_navigationBarHeaderHeight;
- (double)contentScrollOffset;
- (double)intrinsicContentHeight;
- (double)maximumContentHeight;
- (double)maximumContentWidth;
- (double)tableView:(id)view heightForFooterInSection:(int64_t)section;
- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section;
- (id)_indexPathForLastRow;
- (id)_newContainerView;
- (id)_newStackView;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view viewForFooterInSection:(int64_t)section;
- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section;
- (int64_t)_safeIndexWithCount:(int64_t)count;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_adjustForPositionOfScrollView:(id)view;
- (void)_configureContentTrayIfNeeded;
- (void)_setCompressedHeightForView:(id)view;
- (void)_setupContexts;
- (void)_updateBlurForTray;
- (void)scrollViewDidScroll:(id)scroll;
- (void)sizeToFitPaneContent;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewSafeAreaInsetsDidChange;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillLayoutSubviews;
@end

@implementation AKAuthorizationPaneViewController

- (AKAuthorizationPaneViewController)init
{
  v5 = a2;
  v6 = 0;
  v4.receiver = self;
  v4.super_class = AKAuthorizationPaneViewController;
  v6 = [(AKAuthorizationPaneViewController *)&v4 initWithNibName:0 bundle:?];
  objc_storeStrong(&v6, v6);
  [(AKAuthorizationPaneViewController *)v6 setModalInPresentation:1];
  v3 = MEMORY[0x277D82BE0](v6);
  objc_storeStrong(&v6, 0);
  return v3;
}

- (void)viewDidLoad
{
  v83[4] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v80 = a2;
  v79.receiver = self;
  v79.super_class = AKAuthorizationPaneViewController;
  [(AKAuthorizationPaneViewController *)&v79 viewDidLoad];
  view = [(AKAuthorizationPaneViewController *)selfCopy view];
  [view bounds];
  v76 = v84;
  CGRectGetWidth(v84);
  CGRectMake_0();
  *&v77 = v2;
  *(&v77 + 1) = v3;
  *&v78 = v4;
  *(&v78 + 1) = v5;
  MEMORY[0x277D82BD8](view);
  v19 = [objc_alloc(MEMORY[0x277D75B40]) initWithFrame:+[AKAuthorizationAppearance tableViewStyle](AKAuthorizationAppearance style:{"tableViewStyle"), v77, v78}];
  [(AKAuthorizationPaneViewController *)selfCopy setTableView:?];
  MEMORY[0x277D82BD8](v19);
  +[AKAuthorizationPaneMetrics tableSectionFooterHeight];
  v20 = v6;
  tableView = [(AKAuthorizationPaneViewController *)selfCopy tableView];
  [(UITableView *)tableView setSectionFooterHeight:v20];
  MEMORY[0x277D82BD8](tableView);
  tableView2 = [(AKAuthorizationPaneViewController *)selfCopy tableView];
  [(UITableView *)tableView2 setTranslatesAutoresizingMaskIntoConstraints:0];
  MEMORY[0x277D82BD8](tableView2);
  clearColor = [MEMORY[0x277D75348] clearColor];
  tableView3 = [(AKAuthorizationPaneViewController *)selfCopy tableView];
  [(UITableView *)tableView3 setBackgroundColor:clearColor];
  MEMORY[0x277D82BD8](tableView3);
  MEMORY[0x277D82BD8](clearColor);
  tableView4 = [(AKAuthorizationPaneViewController *)selfCopy tableView];
  [(UITableView *)tableView4 setAlwaysBounceVertical:0];
  MEMORY[0x277D82BD8](tableView4);
  tableView5 = [(AKAuthorizationPaneViewController *)selfCopy tableView];
  [(UITableView *)tableView5 setShowsVerticalScrollIndicator:0];
  MEMORY[0x277D82BD8](tableView5);
  _newStackView = [(AKAuthorizationPaneViewController *)selfCopy _newStackView];
  paneHeaderStackView = selfCopy->_paneHeaderStackView;
  selfCopy->_paneHeaderStackView = _newStackView;
  MEMORY[0x277D82BD8](paneHeaderStackView);
  _newContainerView = [(AKAuthorizationPaneViewController *)selfCopy _newContainerView];
  tableView6 = [(AKAuthorizationPaneViewController *)selfCopy tableView];
  [(UITableView *)tableView6 setTableHeaderView:_newContainerView];
  MEMORY[0x277D82BD8](tableView6);
  MEMORY[0x277D82BD8](_newContainerView);
  tableView7 = [(AKAuthorizationPaneViewController *)selfCopy tableView];
  tableHeaderView = [(UITableView *)tableView7 tableHeaderView];
  [(UIView *)tableHeaderView addSubview:selfCopy->_paneHeaderStackView];
  MEMORY[0x277D82BD8](tableHeaderView);
  MEMORY[0x277D82BD8](tableView7);
  v75 = 0;
  v9 = objc_alloc(MEMORY[0x277D75D68]);
  v10 = [v9 initWithEffect:v75];
  blurryTray = selfCopy->_blurryTray;
  selfCopy->_blurryTray = v10;
  MEMORY[0x277D82BD8](blurryTray);
  [(UIVisualEffectView *)selfCopy->_blurryTray setTranslatesAutoresizingMaskIntoConstraints:0];
  _newStackView2 = [(AKAuthorizationPaneViewController *)selfCopy _newStackView];
  paneFooterStackView = selfCopy->_paneFooterStackView;
  selfCopy->_paneFooterStackView = _newStackView2;
  MEMORY[0x277D82BD8](paneFooterStackView);
  contentView = [(UIVisualEffectView *)selfCopy->_blurryTray contentView];
  [(UIView *)contentView addSubview:selfCopy->_paneFooterStackView];
  MEMORY[0x277D82BD8](contentView);
  [(UIStackView *)selfCopy->_paneFooterStackView setSpacing:1.17549435e-38];
  view2 = [(AKAuthorizationPaneViewController *)selfCopy view];
  tableView8 = [(AKAuthorizationPaneViewController *)selfCopy tableView];
  [view2 addSubview:?];
  MEMORY[0x277D82BD8](tableView8);
  MEMORY[0x277D82BD8](view2);
  view3 = [(AKAuthorizationPaneViewController *)selfCopy view];
  [view3 setAccessibilityIdentifier:*MEMORY[0x277CEFEA0]];
  MEMORY[0x277D82BD8](view3);
  [(AKAuthorizationPaneViewController *)selfCopy _setupContexts];
  array = [MEMORY[0x277CBEB18] array];
  v35 = array;
  paneHeaderStackView = [(AKAuthorizationPaneViewController *)selfCopy paneHeaderStackView];
  topAnchor = [(UIStackView *)paneHeaderStackView topAnchor];
  tableView9 = [(AKAuthorizationPaneViewController *)selfCopy tableView];
  tableHeaderView2 = [(UITableView *)tableView9 tableHeaderView];
  topAnchor2 = [(UIView *)tableHeaderView2 topAnchor];
  v55 = [topAnchor constraintEqualToAnchor:?];
  v83[0] = v55;
  paneHeaderStackView2 = [(AKAuthorizationPaneViewController *)selfCopy paneHeaderStackView];
  bottomAnchor = [(UIStackView *)paneHeaderStackView2 bottomAnchor];
  tableView10 = [(AKAuthorizationPaneViewController *)selfCopy tableView];
  tableHeaderView3 = [(UITableView *)tableView10 tableHeaderView];
  bottomAnchor2 = [(UIView *)tableHeaderView3 bottomAnchor];
  v49 = [bottomAnchor constraintEqualToAnchor:?];
  v83[1] = v49;
  paneHeaderStackView3 = [(AKAuthorizationPaneViewController *)selfCopy paneHeaderStackView];
  leadingAnchor = [(UIStackView *)paneHeaderStackView3 leadingAnchor];
  tableView11 = [(AKAuthorizationPaneViewController *)selfCopy tableView];
  tableHeaderView4 = [(UITableView *)tableView11 tableHeaderView];
  leadingAnchor2 = [(UIView *)tableHeaderView4 leadingAnchor];
  v43 = [leadingAnchor constraintEqualToAnchor:?];
  v83[2] = v43;
  paneHeaderStackView4 = [(AKAuthorizationPaneViewController *)selfCopy paneHeaderStackView];
  trailingAnchor = [(UIStackView *)paneHeaderStackView4 trailingAnchor];
  tableView12 = [(AKAuthorizationPaneViewController *)selfCopy tableView];
  tableHeaderView5 = [(UITableView *)tableView12 tableHeaderView];
  trailingAnchor2 = [(UIView *)tableHeaderView5 trailingAnchor];
  v37 = [trailingAnchor constraintEqualToAnchor:?];
  v83[3] = v37;
  v36 = [MEMORY[0x277CBEA60] arrayWithObjects:v83 count:4];
  [v35 addObjectsFromArray:?];
  MEMORY[0x277D82BD8](v36);
  MEMORY[0x277D82BD8](v37);
  MEMORY[0x277D82BD8](trailingAnchor2);
  MEMORY[0x277D82BD8](tableHeaderView5);
  MEMORY[0x277D82BD8](tableView12);
  MEMORY[0x277D82BD8](trailingAnchor);
  MEMORY[0x277D82BD8](paneHeaderStackView4);
  MEMORY[0x277D82BD8](v43);
  MEMORY[0x277D82BD8](leadingAnchor2);
  MEMORY[0x277D82BD8](tableHeaderView4);
  MEMORY[0x277D82BD8](tableView11);
  MEMORY[0x277D82BD8](leadingAnchor);
  MEMORY[0x277D82BD8](paneHeaderStackView3);
  MEMORY[0x277D82BD8](v49);
  MEMORY[0x277D82BD8](bottomAnchor2);
  MEMORY[0x277D82BD8](tableHeaderView3);
  MEMORY[0x277D82BD8](tableView10);
  MEMORY[0x277D82BD8](bottomAnchor);
  MEMORY[0x277D82BD8](paneHeaderStackView2);
  MEMORY[0x277D82BD8](v55);
  MEMORY[0x277D82BD8](topAnchor2);
  MEMORY[0x277D82BD8](tableHeaderView2);
  MEMORY[0x277D82BD8](tableView9);
  MEMORY[0x277D82BD8](topAnchor);
  MEMORY[0x277D82BD8](paneHeaderStackView);
  v62 = array;
  v61 = MEMORY[0x277CCAAD0];
  tableView13 = [(AKAuthorizationPaneViewController *)selfCopy tableView];
  view4 = [(AKAuthorizationPaneViewController *)selfCopy view];
  v63 = [v61 ak_constraintsForView:tableView13 equalToView:?];
  [v62 addObjectsFromArray:?];
  MEMORY[0x277D82BD8](v63);
  MEMORY[0x277D82BD8](view4);
  MEMORY[0x277D82BD8](tableView13);
  paneHeaderStackView5 = [(AKAuthorizationPaneViewController *)selfCopy paneHeaderStackView];
  widthAnchor = [(UIStackView *)paneHeaderStackView5 widthAnchor];
  v14 = [widthAnchor constraintEqualToConstant:0.0];
  headerWidthConstraint = selfCopy->_headerWidthConstraint;
  selfCopy->_headerWidthConstraint = v14;
  MEMORY[0x277D82BD8](headerWidthConstraint);
  MEMORY[0x277D82BD8](widthAnchor);
  MEMORY[0x277D82BD8](paneHeaderStackView5);
  paneFooterStackView = [(AKAuthorizationPaneViewController *)selfCopy paneFooterStackView];
  widthAnchor2 = [(UIStackView *)paneFooterStackView widthAnchor];
  v16 = [widthAnchor2 constraintEqualToConstant:0.0];
  footerWidthConstraint = selfCopy->_footerWidthConstraint;
  selfCopy->_footerWidthConstraint = v16;
  MEMORY[0x277D82BD8](footerWidthConstraint);
  MEMORY[0x277D82BD8](widthAnchor2);
  MEMORY[0x277D82BD8](paneFooterStackView);
  v70 = array;
  headerWidthConstraint = [(AKAuthorizationPaneViewController *)selfCopy headerWidthConstraint];
  v82[0] = headerWidthConstraint;
  footerWidthConstraint = [(AKAuthorizationPaneViewController *)selfCopy footerWidthConstraint];
  v82[1] = footerWidthConstraint;
  v71 = [MEMORY[0x277CBEA60] arrayWithObjects:v82 count:2];
  [v70 addObjectsFromArray:?];
  MEMORY[0x277D82BD8](v71);
  MEMORY[0x277D82BD8](footerWidthConstraint);
  MEMORY[0x277D82BD8](headerWidthConstraint);
  [MEMORY[0x277CCAAD0] activateConstraints:array];
  [(AKAuthorizationPaneViewController *)selfCopy sizeToFitPaneContent];
  objc_storeStrong(&array, 0);
  objc_storeStrong(&v75, 0);
  *MEMORY[0x277D85DE8];
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  v17 = a2;
  appearCopy = appear;
  v15.receiver = self;
  v15.super_class = AKAuthorizationPaneViewController;
  [(AKAuthorizationPaneViewController *)&v15 viewWillAppear:appear];
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];
  MEMORY[0x277D82BD8](currentDevice);
  if (userInterfaceIdiom == 1)
  {
    navigationController = [(AKAuthorizationPaneViewController *)selfCopy navigationController];
    view = [navigationController view];
    [view frame];
    v12 = v3;
    v13 = v4;
    MEMORY[0x277D82BD8](view);
    MEMORY[0x277D82BD8](navigationController);
    navigationController2 = [(AKAuthorizationPaneViewController *)selfCopy navigationController];
    navigationBar = [navigationController2 navigationBar];
    [navigationBar size];
    v14 = v12 - v5;
    MEMORY[0x277D82BD8](navigationBar);
    MEMORY[0x277D82BD8](navigationController2);
    [(AKAuthorizationPaneViewController *)selfCopy setPreferredContentSize:v13, v14];
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  v9 = a2;
  appearCopy = appear;
  v7.receiver = self;
  v7.super_class = AKAuthorizationPaneViewController;
  [(AKAuthorizationPaneViewController *)&v7 viewDidAppear:appear];
  view = [(AKAuthorizationPaneViewController *)selfCopy view];
  [view setNeedsLayout];
  MEMORY[0x277D82BD8](view);
  view2 = [(AKAuthorizationPaneViewController *)selfCopy view];
  [view2 layoutIfNeeded];
  MEMORY[0x277D82BD8](view2);
  v5 = selfCopy;
  tableView = [(AKAuthorizationPaneViewController *)selfCopy tableView];
  [(AKAuthorizationPaneViewController *)v5 _adjustForPositionOfScrollView:?];
  MEMORY[0x277D82BD8](tableView);
}

- (void)viewSafeAreaInsetsDidChange
{
  selfCopy = self;
  v5 = a2;
  v4.receiver = self;
  v4.super_class = AKAuthorizationPaneViewController;
  [(AKAuthorizationPaneViewController *)&v4 viewSafeAreaInsetsDidChange];
  blurryTray = [(AKAuthorizationPaneViewController *)selfCopy blurryTray];
  [(UIVisualEffectView *)blurryTray setNeedsUpdateConstraints];
  MEMORY[0x277D82BD8](blurryTray);
  blurryTray2 = [(AKAuthorizationPaneViewController *)selfCopy blurryTray];
  [(UIVisualEffectView *)blurryTray2 layoutIfNeeded];
  MEMORY[0x277D82BD8](blurryTray2);
}

- (void)_setupContexts
{
  v2 = [AKAuthorizationPaneContext alloc];
  paneHeaderStackView = [(AKAuthorizationPaneViewController *)self paneHeaderStackView];
  v3 = [(AKAuthorizationPaneContext *)v2 initWithPaneViewController:self stackView:?];
  [(AKAuthorizationPaneViewController *)self setHeaderPaneContext:?];
  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](paneHeaderStackView);
  v5 = [AKAuthorizationPaneContext alloc];
  paneFooterStackView = [(AKAuthorizationPaneViewController *)self paneFooterStackView];
  v6 = [(AKAuthorizationPaneContext *)v5 initWithPaneViewController:self stackView:?];
  [(AKAuthorizationPaneViewController *)self setFooterPaneContext:?];
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BD8](paneFooterStackView);
  array = [MEMORY[0x277CBEB18] array];
  [(AKAuthorizationPaneViewController *)self setMutableConstraints:?];
  MEMORY[0x277D82BD8](array);
}

- (void)viewWillLayoutSubviews
{
  selfCopy = self;
  v8 = a2;
  v7.receiver = self;
  v7.super_class = AKAuthorizationPaneViewController;
  [(AKAuthorizationPaneViewController *)&v7 viewWillLayoutSubviews];
  view = [(AKAuthorizationPaneViewController *)selfCopy view];
  [view frame];
  v4 = v2;
  MEMORY[0x277D82BD8](view);
  headerWidthConstraint = [(AKAuthorizationPaneViewController *)selfCopy headerWidthConstraint];
  [(NSLayoutConstraint *)headerWidthConstraint setConstant:v4];
  MEMORY[0x277D82BD8](headerWidthConstraint);
  footerWidthConstraint = [(AKAuthorizationPaneViewController *)selfCopy footerWidthConstraint];
  [(NSLayoutConstraint *)footerWidthConstraint setConstant:v4];
  MEMORY[0x277D82BD8](footerWidthConstraint);
}

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
  v34 = a2;
  v33.receiver = self;
  v33.super_class = AKAuthorizationPaneViewController;
  [(AKAuthorizationPaneViewController *)&v33 viewDidLayoutSubviews];
  tableView = [(AKAuthorizationPaneViewController *)selfCopy tableView];
  tableHeaderView = [(UITableView *)tableView tableHeaderView];
  MEMORY[0x277D82BD8](tableView);
  if (tableHeaderView)
  {
    [(AKAuthorizationPaneViewController *)selfCopy _setCompressedHeightForView:tableHeaderView];
  }

  tableView2 = [(AKAuthorizationPaneViewController *)selfCopy tableView];
  location = [(UITableView *)tableView2 tableFooterView];
  MEMORY[0x277D82BD8](tableView2);
  if (location)
  {
    [(AKAuthorizationPaneViewController *)selfCopy _setCompressedHeightForView:location];
  }

  [(AKAuthorizationPaneViewController *)selfCopy _contentTrayOffsetAdjustedForScrollInset:1];
  UIEdgeInsetsMake_0();
  v27 = v2;
  v28 = v3;
  v29 = v4;
  v30 = v5;
  tableView3 = [(AKAuthorizationPaneViewController *)selfCopy tableView];
  [(UITableView *)tableView3 _setContentScrollInset:v27, v28, v29, v30];
  MEMORY[0x277D82BD8](tableView3);
  tableView4 = [(AKAuthorizationPaneViewController *)selfCopy tableView];
  tableHeaderView2 = [(UITableView *)tableView4 tableHeaderView];
  [(UIView *)tableHeaderView2 setNeedsLayout];
  MEMORY[0x277D82BD8](tableHeaderView2);
  MEMORY[0x277D82BD8](tableView4);
  tableView5 = [(AKAuthorizationPaneViewController *)selfCopy tableView];
  tableHeaderView3 = [(UITableView *)tableView5 tableHeaderView];
  [(UIView *)tableHeaderView3 layoutIfNeeded];
  MEMORY[0x277D82BD8](tableHeaderView3);
  MEMORY[0x277D82BD8](tableView5);
  tableView6 = [(AKAuthorizationPaneViewController *)selfCopy tableView];
  tableView7 = [(AKAuthorizationPaneViewController *)selfCopy tableView];
  tableHeaderView4 = [(UITableView *)tableView7 tableHeaderView];
  [(UITableView *)tableView6 setTableHeaderView:?];
  MEMORY[0x277D82BD8](tableHeaderView4);
  MEMORY[0x277D82BD8](tableView7);
  MEMORY[0x277D82BD8](tableView6);
  tableView8 = [(AKAuthorizationPaneViewController *)selfCopy tableView];
  tableFooterView = [(UITableView *)tableView8 tableFooterView];
  [(UIView *)tableFooterView setNeedsLayout];
  MEMORY[0x277D82BD8](tableFooterView);
  MEMORY[0x277D82BD8](tableView8);
  tableView9 = [(AKAuthorizationPaneViewController *)selfCopy tableView];
  tableFooterView2 = [(UITableView *)tableView9 tableFooterView];
  [(UIView *)tableFooterView2 layoutIfNeeded];
  MEMORY[0x277D82BD8](tableFooterView2);
  MEMORY[0x277D82BD8](tableView9);
  tableView10 = [(AKAuthorizationPaneViewController *)selfCopy tableView];
  tableView11 = [(AKAuthorizationPaneViewController *)selfCopy tableView];
  tableFooterView3 = [(UITableView *)tableView11 tableFooterView];
  [(UITableView *)tableView10 setTableFooterView:?];
  MEMORY[0x277D82BD8](tableFooterView3);
  MEMORY[0x277D82BD8](tableView11);
  MEMORY[0x277D82BD8](tableView10);
  tableView12 = [(AKAuthorizationPaneViewController *)selfCopy tableView];
  [(UITableView *)tableView12 setNeedsLayout];
  MEMORY[0x277D82BD8](tableView12);
  tableView13 = [(AKAuthorizationPaneViewController *)selfCopy tableView];
  [(UITableView *)tableView13 layoutIfNeeded];
  MEMORY[0x277D82BD8](tableView13);
  blurryTray = [(AKAuthorizationPaneViewController *)selfCopy blurryTray];
  [(UIVisualEffectView *)blurryTray setNeedsLayout];
  MEMORY[0x277D82BD8](blurryTray);
  blurryTray2 = [(AKAuthorizationPaneViewController *)selfCopy blurryTray];
  [(UIVisualEffectView *)blurryTray2 layoutIfNeeded];
  MEMORY[0x277D82BD8](blurryTray2);
  [(AKAuthorizationPaneViewController *)selfCopy _configureContentTrayIfNeeded];
  [(AKAuthorizationPaneViewController *)selfCopy sizeToFitPaneContent];
  [(AKAuthorizationPaneViewController *)selfCopy _updateBlurForTray];
  objc_storeStrong(&location, 0);
  objc_storeStrong(&tableHeaderView, 0);
}

- (void)_setCompressedHeightForView:(id)view
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  [location[0] systemLayoutSizeFittingSize:{*MEMORY[0x277D76C78], *(MEMORY[0x277D76C78] + 8)}];
  v8 = v3;
  [location[0] frame];
  if (v7 != v8)
  {
    [location[0] setFrame:{v4, v5, v6, v8}];
  }

  objc_storeStrong(location, 0);
}

- (void)_configureContentTrayIfNeeded
{
  v129[4] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v124 = a2;
  tableView = [(AKAuthorizationPaneViewController *)self tableView];
  tableFooterView = [(UITableView *)tableView tableFooterView];
  v114 = tableFooterView != 0;
  MEMORY[0x277D82BD8](tableFooterView);
  MEMORY[0x277D82BD8](tableView);
  v123 = v114;
  _shouldEmbedContentTray = [(AKAuthorizationPaneViewController *)selfCopy _shouldEmbedContentTray];
  v119 = 0;
  v117 = 0;
  v115 = 1;
  if (_shouldEmbedContentTray == v114)
  {
    blurryTray = [(AKAuthorizationPaneViewController *)selfCopy blurryTray];
    v119 = 1;
    superview = [(UIVisualEffectView *)blurryTray superview];
    v117 = 1;
    v115 = superview == 0;
  }

  if (v117)
  {
    MEMORY[0x277D82BD8](superview);
  }

  if (v119)
  {
    MEMORY[0x277D82BD8](blurryTray);
  }

  v121 = v115;
  if (v115)
  {
    blurryTray2 = [(AKAuthorizationPaneViewController *)selfCopy blurryTray];
    superview2 = [(UIVisualEffectView *)blurryTray2 superview];
    MEMORY[0x277D82BD8](superview2);
    MEMORY[0x277D82BD8](blurryTray2);
    if (superview2)
    {
      blurryTray3 = [(AKAuthorizationPaneViewController *)selfCopy blurryTray];
      [(UIVisualEffectView *)blurryTray3 removeFromSuperview];
      MEMORY[0x277D82BD8](blurryTray3);
    }

    tableView2 = [(AKAuthorizationPaneViewController *)selfCopy tableView];
    tableFooterView2 = [(UITableView *)tableView2 tableFooterView];
    MEMORY[0x277D82BD8](tableFooterView2);
    MEMORY[0x277D82BD8](tableView2);
    if (tableFooterView2)
    {
      tableView3 = [(AKAuthorizationPaneViewController *)selfCopy tableView];
      [(UITableView *)tableView3 setTableFooterView:0];
      MEMORY[0x277D82BD8](tableView3);
    }

    array = [MEMORY[0x277CBEB18] array];
    mEMORY[0x277CF0228] = [MEMORY[0x277CF0228] sharedManager];
    isAuthKitSolariumFeatureEnabled = [mEMORY[0x277CF0228] isAuthKitSolariumFeatureEnabled];
    MEMORY[0x277D82BD8](mEMORY[0x277CF0228]);
    if (isAuthKitSolariumFeatureEnabled)
    {
      paneFooterStackView = [(AKAuthorizationPaneViewController *)selfCopy paneFooterStackView];
      topAnchor = [(UIStackView *)paneFooterStackView topAnchor];
      blurryTray4 = [(AKAuthorizationPaneViewController *)selfCopy blurryTray];
      contentView = [(UIVisualEffectView *)blurryTray4 contentView];
      topAnchor2 = [(UIView *)contentView topAnchor];
      v99 = [topAnchor constraintEqualToAnchor:?];
      v129[0] = v99;
      paneFooterStackView2 = [(AKAuthorizationPaneViewController *)selfCopy paneFooterStackView];
      bottomAnchor = [(UIStackView *)paneFooterStackView2 bottomAnchor];
      blurryTray5 = [(AKAuthorizationPaneViewController *)selfCopy blurryTray];
      contentView2 = [(UIVisualEffectView *)blurryTray5 contentView];
      bottomAnchor2 = [(UIView *)contentView2 bottomAnchor];
      v93 = [bottomAnchor constraintEqualToAnchor:?];
      v129[1] = v93;
      paneFooterStackView3 = [(AKAuthorizationPaneViewController *)selfCopy paneFooterStackView];
      leadingAnchor = [(UIStackView *)paneFooterStackView3 leadingAnchor];
      blurryTray6 = [(AKAuthorizationPaneViewController *)selfCopy blurryTray];
      contentView3 = [(UIVisualEffectView *)blurryTray6 contentView];
      leadingAnchor2 = [(UIView *)contentView3 leadingAnchor];
      v87 = [leadingAnchor constraintEqualToAnchor:?];
      v129[2] = v87;
      paneFooterStackView4 = [(AKAuthorizationPaneViewController *)selfCopy paneFooterStackView];
      trailingAnchor = [(UIStackView *)paneFooterStackView4 trailingAnchor];
      blurryTray7 = [(AKAuthorizationPaneViewController *)selfCopy blurryTray];
      contentView4 = [(UIVisualEffectView *)blurryTray7 contentView];
      trailingAnchor2 = [(UIView *)contentView4 trailingAnchor];
      v81 = [trailingAnchor constraintEqualToAnchor:?];
      v129[3] = v81;
      v80 = [MEMORY[0x277CBEA60] arrayWithObjects:v129 count:4];
      [array addObjectsFromArray:?];
      MEMORY[0x277D82BD8](v80);
      MEMORY[0x277D82BD8](v81);
      MEMORY[0x277D82BD8](trailingAnchor2);
      MEMORY[0x277D82BD8](contentView4);
      MEMORY[0x277D82BD8](blurryTray7);
      MEMORY[0x277D82BD8](trailingAnchor);
      MEMORY[0x277D82BD8](paneFooterStackView4);
      MEMORY[0x277D82BD8](v87);
      MEMORY[0x277D82BD8](leadingAnchor2);
      MEMORY[0x277D82BD8](contentView3);
      MEMORY[0x277D82BD8](blurryTray6);
      MEMORY[0x277D82BD8](leadingAnchor);
      MEMORY[0x277D82BD8](paneFooterStackView3);
      MEMORY[0x277D82BD8](v93);
      MEMORY[0x277D82BD8](bottomAnchor2);
      MEMORY[0x277D82BD8](contentView2);
      MEMORY[0x277D82BD8](blurryTray5);
      MEMORY[0x277D82BD8](bottomAnchor);
      MEMORY[0x277D82BD8](paneFooterStackView2);
      MEMORY[0x277D82BD8](v99);
      MEMORY[0x277D82BD8](topAnchor2);
      MEMORY[0x277D82BD8](contentView);
      MEMORY[0x277D82BD8](blurryTray4);
      MEMORY[0x277D82BD8](topAnchor);
      MEMORY[0x277D82BD8](paneFooterStackView);
    }

    else
    {
      paneFooterStackView5 = [(AKAuthorizationPaneViewController *)selfCopy paneFooterStackView];
      topAnchor3 = [(UIStackView *)paneFooterStackView5 topAnchor];
      blurryTray8 = [(AKAuthorizationPaneViewController *)selfCopy blurryTray];
      contentView5 = [(UIVisualEffectView *)blurryTray8 contentView];
      topAnchor4 = [(UIView *)contentView5 topAnchor];
      v74 = [topAnchor3 constraintGreaterThanOrEqualToSystemSpacingBelowAnchor:1.0 multiplier:?];
      v128[0] = v74;
      paneFooterStackView6 = [(AKAuthorizationPaneViewController *)selfCopy paneFooterStackView];
      bottomAnchor3 = [(UIStackView *)paneFooterStackView6 bottomAnchor];
      blurryTray9 = [(AKAuthorizationPaneViewController *)selfCopy blurryTray];
      contentView6 = [(UIVisualEffectView *)blurryTray9 contentView];
      bottomAnchor4 = [(UIView *)contentView6 bottomAnchor];
      v68 = [bottomAnchor3 constraintLessThanOrEqualToSystemSpacingBelowAnchor:-1.0 multiplier:?];
      v128[1] = v68;
      paneFooterStackView7 = [(AKAuthorizationPaneViewController *)selfCopy paneFooterStackView];
      centerYAnchor = [(UIStackView *)paneFooterStackView7 centerYAnchor];
      blurryTray10 = [(AKAuthorizationPaneViewController *)selfCopy blurryTray];
      contentView7 = [(UIVisualEffectView *)blurryTray10 contentView];
      centerYAnchor2 = [(UIView *)contentView7 centerYAnchor];
      v62 = [centerYAnchor constraintEqualToAnchor:?];
      v128[2] = v62;
      paneFooterStackView8 = [(AKAuthorizationPaneViewController *)selfCopy paneFooterStackView];
      leadingAnchor3 = [(UIStackView *)paneFooterStackView8 leadingAnchor];
      blurryTray11 = [(AKAuthorizationPaneViewController *)selfCopy blurryTray];
      contentView8 = [(UIVisualEffectView *)blurryTray11 contentView];
      leadingAnchor4 = [(UIView *)contentView8 leadingAnchor];
      v56 = [leadingAnchor3 constraintEqualToAnchor:?];
      v128[3] = v56;
      paneFooterStackView9 = [(AKAuthorizationPaneViewController *)selfCopy paneFooterStackView];
      trailingAnchor3 = [(UIStackView *)paneFooterStackView9 trailingAnchor];
      blurryTray12 = [(AKAuthorizationPaneViewController *)selfCopy blurryTray];
      contentView9 = [(UIVisualEffectView *)blurryTray12 contentView];
      trailingAnchor4 = [(UIView *)contentView9 trailingAnchor];
      v50 = [trailingAnchor3 constraintEqualToAnchor:?];
      v128[4] = v50;
      v49 = [MEMORY[0x277CBEA60] arrayWithObjects:v128 count:5];
      [array addObjectsFromArray:?];
      MEMORY[0x277D82BD8](v49);
      MEMORY[0x277D82BD8](v50);
      MEMORY[0x277D82BD8](trailingAnchor4);
      MEMORY[0x277D82BD8](contentView9);
      MEMORY[0x277D82BD8](blurryTray12);
      MEMORY[0x277D82BD8](trailingAnchor3);
      MEMORY[0x277D82BD8](paneFooterStackView9);
      MEMORY[0x277D82BD8](v56);
      MEMORY[0x277D82BD8](leadingAnchor4);
      MEMORY[0x277D82BD8](contentView8);
      MEMORY[0x277D82BD8](blurryTray11);
      MEMORY[0x277D82BD8](leadingAnchor3);
      MEMORY[0x277D82BD8](paneFooterStackView8);
      MEMORY[0x277D82BD8](v62);
      MEMORY[0x277D82BD8](centerYAnchor2);
      MEMORY[0x277D82BD8](contentView7);
      MEMORY[0x277D82BD8](blurryTray10);
      MEMORY[0x277D82BD8](centerYAnchor);
      MEMORY[0x277D82BD8](paneFooterStackView7);
      MEMORY[0x277D82BD8](v68);
      MEMORY[0x277D82BD8](bottomAnchor4);
      MEMORY[0x277D82BD8](contentView6);
      MEMORY[0x277D82BD8](blurryTray9);
      MEMORY[0x277D82BD8](bottomAnchor3);
      MEMORY[0x277D82BD8](paneFooterStackView6);
      MEMORY[0x277D82BD8](v74);
      MEMORY[0x277D82BD8](topAnchor4);
      MEMORY[0x277D82BD8](contentView5);
      MEMORY[0x277D82BD8](blurryTray8);
      MEMORY[0x277D82BD8](topAnchor3);
      MEMORY[0x277D82BD8](paneFooterStackView5);
    }

    if (_shouldEmbedContentTray)
    {
      tableView4 = [(AKAuthorizationPaneViewController *)selfCopy tableView];
      _newContainerView = [(AKAuthorizationPaneViewController *)selfCopy _newContainerView];
      [(UITableView *)tableView4 setTableFooterView:?];
      MEMORY[0x277D82BD8](_newContainerView);
      MEMORY[0x277D82BD8](tableView4);
      tableView5 = [(AKAuthorizationPaneViewController *)selfCopy tableView];
      tableFooterView3 = [(UITableView *)tableView5 tableFooterView];
      blurryTray13 = [(AKAuthorizationPaneViewController *)selfCopy blurryTray];
      [(UIView *)tableFooterView3 addSubview:?];
      MEMORY[0x277D82BD8](blurryTray13);
      MEMORY[0x277D82BD8](tableFooterView3);
      MEMORY[0x277D82BD8](tableView5);
      blurryTray14 = [(AKAuthorizationPaneViewController *)selfCopy blurryTray];
      topAnchor5 = [(UIVisualEffectView *)blurryTray14 topAnchor];
      tableView6 = [(AKAuthorizationPaneViewController *)selfCopy tableView];
      tableFooterView4 = [(UITableView *)tableView6 tableFooterView];
      topAnchor6 = [(UIView *)tableFooterView4 topAnchor];
      v43 = [topAnchor5 constraintEqualToAnchor:?];
      v127[0] = v43;
      blurryTray15 = [(AKAuthorizationPaneViewController *)selfCopy blurryTray];
      bottomAnchor5 = [(UIVisualEffectView *)blurryTray15 bottomAnchor];
      tableView7 = [(AKAuthorizationPaneViewController *)selfCopy tableView];
      tableFooterView5 = [(UITableView *)tableView7 tableFooterView];
      bottomAnchor6 = [(UIView *)tableFooterView5 bottomAnchor];
      v37 = [bottomAnchor5 constraintEqualToAnchor:?];
      v127[1] = v37;
      blurryTray16 = [(AKAuthorizationPaneViewController *)selfCopy blurryTray];
      leadingAnchor5 = [(UIVisualEffectView *)blurryTray16 leadingAnchor];
      tableView8 = [(AKAuthorizationPaneViewController *)selfCopy tableView];
      tableFooterView6 = [(UITableView *)tableView8 tableFooterView];
      leadingAnchor6 = [(UIView *)tableFooterView6 leadingAnchor];
      v31 = [leadingAnchor5 constraintEqualToAnchor:?];
      v127[2] = v31;
      blurryTray17 = [(AKAuthorizationPaneViewController *)selfCopy blurryTray];
      trailingAnchor5 = [(UIVisualEffectView *)blurryTray17 trailingAnchor];
      tableView9 = [(AKAuthorizationPaneViewController *)selfCopy tableView];
      tableFooterView7 = [(UITableView *)tableView9 tableFooterView];
      trailingAnchor6 = [(UIView *)tableFooterView7 trailingAnchor];
      v25 = [trailingAnchor5 constraintEqualToAnchor:?];
      v127[3] = v25;
      v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v127 count:4];
      [array addObjectsFromArray:?];
      MEMORY[0x277D82BD8](v24);
      MEMORY[0x277D82BD8](v25);
      MEMORY[0x277D82BD8](trailingAnchor6);
      MEMORY[0x277D82BD8](tableFooterView7);
      MEMORY[0x277D82BD8](tableView9);
      MEMORY[0x277D82BD8](trailingAnchor5);
      MEMORY[0x277D82BD8](blurryTray17);
      MEMORY[0x277D82BD8](v31);
      MEMORY[0x277D82BD8](leadingAnchor6);
      MEMORY[0x277D82BD8](tableFooterView6);
      MEMORY[0x277D82BD8](tableView8);
      MEMORY[0x277D82BD8](leadingAnchor5);
      MEMORY[0x277D82BD8](blurryTray16);
      MEMORY[0x277D82BD8](v37);
      MEMORY[0x277D82BD8](bottomAnchor6);
      MEMORY[0x277D82BD8](tableFooterView5);
      MEMORY[0x277D82BD8](tableView7);
      MEMORY[0x277D82BD8](bottomAnchor5);
      MEMORY[0x277D82BD8](blurryTray15);
      MEMORY[0x277D82BD8](v43);
      MEMORY[0x277D82BD8](topAnchor6);
      MEMORY[0x277D82BD8](tableFooterView4);
      MEMORY[0x277D82BD8](tableView6);
      MEMORY[0x277D82BD8](topAnchor5);
      MEMORY[0x277D82BD8](blurryTray14);
    }

    else
    {
      view = [(AKAuthorizationPaneViewController *)selfCopy view];
      blurryTray18 = [(AKAuthorizationPaneViewController *)selfCopy blurryTray];
      [view addSubview:?];
      MEMORY[0x277D82BD8](blurryTray18);
      MEMORY[0x277D82BD8](view);
      blurryTray19 = [(AKAuthorizationPaneViewController *)selfCopy blurryTray];
      heightAnchor = [(UIVisualEffectView *)blurryTray19 heightAnchor];
      +[AKAuthorizationPaneMetrics blurryTrayHeight];
      v16 = [heightAnchor constraintGreaterThanOrEqualToConstant:?];
      v126[0] = v16;
      blurryTray20 = [(AKAuthorizationPaneViewController *)selfCopy blurryTray];
      bottomAnchor7 = [(UIVisualEffectView *)blurryTray20 bottomAnchor];
      view2 = [(AKAuthorizationPaneViewController *)selfCopy view];
      bottomAnchor8 = [view2 bottomAnchor];
      v11 = [bottomAnchor7 constraintEqualToAnchor:?];
      v126[1] = v11;
      blurryTray21 = [(AKAuthorizationPaneViewController *)selfCopy blurryTray];
      centerXAnchor = [(UIVisualEffectView *)blurryTray21 centerXAnchor];
      view3 = [(AKAuthorizationPaneViewController *)selfCopy view];
      centerXAnchor2 = [view3 centerXAnchor];
      v6 = [centerXAnchor constraintEqualToAnchor:?];
      v126[2] = v6;
      v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v126 count:3];
      [array addObjectsFromArray:?];
      MEMORY[0x277D82BD8](v5);
      MEMORY[0x277D82BD8](v6);
      MEMORY[0x277D82BD8](centerXAnchor2);
      MEMORY[0x277D82BD8](view3);
      MEMORY[0x277D82BD8](centerXAnchor);
      MEMORY[0x277D82BD8](blurryTray21);
      MEMORY[0x277D82BD8](v11);
      MEMORY[0x277D82BD8](bottomAnchor8);
      MEMORY[0x277D82BD8](view2);
      MEMORY[0x277D82BD8](bottomAnchor7);
      MEMORY[0x277D82BD8](blurryTray20);
      MEMORY[0x277D82BD8](v16);
      MEMORY[0x277D82BD8](heightAnchor);
      MEMORY[0x277D82BD8](blurryTray19);
    }

    [MEMORY[0x277CCAAD0] activateConstraints:array];
    objc_storeStrong(&array, 0);
  }

  *MEMORY[0x277D85DE8];
}

- (void)_updateBlurForTray
{
  v8[2] = self;
  v8[1] = a2;
  v2 = MEMORY[0x277D75D18];
  v3 = MEMORY[0x277D85DD0];
  v4 = -1073741824;
  v5 = 0;
  v6 = __55__AKAuthorizationPaneViewController__updateBlurForTray__block_invoke;
  v7 = &unk_2784A5C90;
  v8[0] = MEMORY[0x277D82BE0](self);
  [v2 animateWithDuration:0.2 animations:?];
  objc_storeStrong(v8, 0);
}

uint64_t __55__AKAuthorizationPaneViewController__updateBlurForTray__block_invoke(uint64_t a1)
{
  v7 = 0;
  v6 = 0;
  if ([*(a1 + 32) _isContentUnderTray])
  {
    v8 = [MEMORY[0x277CF0228] sharedManager];
    v7 = 1;
    v6 = [v8 isAuthKitSolariumFeatureEnabled] == 0;
  }

  if (v7)
  {
    MEMORY[0x277D82BD8](v8);
  }

  if (v6)
  {
    v4 = [MEMORY[0x277D75210] effectWithStyle:{+[AKAuthorizationAppearance paneBlurEffectStyle](AKAuthorizationAppearance, "paneBlurEffectStyle")}];
    v3 = [*(a1 + 32) blurryTray];
    [v3 setEffect:v4];
    MEMORY[0x277D82BD8](v3);
    return MEMORY[0x277D82BD8](v4);
  }

  else
  {
    v2 = [*(a1 + 32) blurryTray];
    [v2 setEffect:0];
    return MEMORY[0x277D82BD8](v2);
  }
}

- (double)_contentTrayOffsetAdjustedForScrollInset:(BOOL)inset
{
  selfCopy = self;
  v44 = a2;
  insetCopy = inset;
  if ([(AKAuthorizationPaneViewController *)self _shouldEmbedContentTray])
  {
    return 0.0;
  }

  location = [(AKAuthorizationPaneViewController *)selfCopy _indexPathForLastRow];
  v38 = *MEMORY[0x277CBF3A0];
  v40 = *(MEMORY[0x277CBF3A0] + 16);
  if ([location row] == 0x7FFFFFFFFFFFFFFFLL)
  {
    tableView = [(AKAuthorizationPaneViewController *)selfCopy tableView];
    tableHeaderView = [(UITableView *)tableView tableHeaderView];
    [(UIView *)tableHeaderView frame];
    *&v34 = v7;
    *(&v34 + 1) = v8;
    *&v35 = v9;
    *(&v35 + 1) = v10;
    v39 = v34;
    v41 = v35;
    MEMORY[0x277D82BD8](tableHeaderView);
    MEMORY[0x277D82BD8](tableView);
  }

  else
  {
    tableView2 = [(AKAuthorizationPaneViewController *)selfCopy tableView];
    [(UITableView *)tableView2 rectForRowAtIndexPath:location];
    *&v36 = v3;
    *(&v36 + 1) = v4;
    *&v37 = v5;
    *(&v37 + 1) = v6;
    v39 = v36;
    v41 = v37;
    MEMORY[0x277D82BD8](tableView2);
  }

  tableView3 = [(AKAuthorizationPaneViewController *)selfCopy tableView];
  view = [(AKAuthorizationPaneViewController *)selfCopy view];
  [(UITableView *)tableView3 convertRect:v39 toView:v41];
  v33.origin.x = v11;
  v33.origin.y = v12;
  v33.size.width = v13;
  v33.size.height = v14;
  MEMORY[0x277D82BD8](view);
  MEMORY[0x277D82BD8](tableView3);
  if (insetCopy)
  {
    tableView4 = [(AKAuthorizationPaneViewController *)selfCopy tableView];
    [(UITableView *)tableView4 contentOffset];
    v25 = v15;
    [(AKAuthorizationPaneViewController *)selfCopy _navigationBarHeaderHeight];
    v33.origin.y = v33.origin.y + v25 + v16;
    MEMORY[0x277D82BD8](tableView4);
  }

  v31 = 0;
  if (insetCopy)
  {
    [(AKAuthorizationPaneViewController *)selfCopy contentScrollOffset];
    Height = v17;
  }

  else
  {
    blurryTray = [(AKAuthorizationPaneViewController *)selfCopy blurryTray];
    v31 = 1;
    [(UIVisualEffectView *)blurryTray frame];
    Height = CGRectGetHeight(v47);
  }

  if (v31)
  {
    MEMORY[0x277D82BD8](blurryTray);
  }

  MaxY = CGRectGetMaxY(v33);
  view2 = [(AKAuthorizationPaneViewController *)selfCopy view];
  [view2 frame];
  v22 = MaxY - (CGRectGetMaxY(v48) - Height);
  MEMORY[0x277D82BD8](view2);
  if (insetCopy && v22 > 0.0)
  {
    v46 = Height;
  }

  else
  {
    v18 = CGFloatMax(v22, 0.0);
    v46 = CGFloatMin(Height, v18);
  }

  objc_storeStrong(&location, 0);
  return v46;
}

- (BOOL)_isContentUnderTray
{
  [(AKAuthorizationPaneViewController *)self _contentTrayOffsetAdjustedForScrollInset:0];
  v5 = v2;
  +[AKAuthorizationPaneMetrics contentOffsetThresholdToShowBlurTray];
  return v5 > v3;
}

- (BOOL)_isContentUnderNavigationBar
{
  tableView = [(AKAuthorizationPaneViewController *)self tableView];
  [(UITableView *)tableView contentOffset];
  v5 = v2;
  navigationController = [(AKAuthorizationPaneViewController *)self navigationController];
  navigationBar = [navigationController navigationBar];
  [navigationBar frame];
  v8 = v5 > -CGRectGetHeight(v10);
  MEMORY[0x277D82BD8](navigationBar);
  MEMORY[0x277D82BD8](navigationController);
  MEMORY[0x277D82BD8](tableView);
  return v8;
}

- (double)contentScrollOffset
{
  blurryTray = [(AKAuthorizationPaneViewController *)self blurryTray];
  [(UIVisualEffectView *)blurryTray frame];
  Height = CGRectGetHeight(v5);
  MEMORY[0x277D82BD8](blurryTray);
  return Height;
}

- (BOOL)_shouldEmbedContentTray
{
  v6 = 0;
  if ([(AKAuthorizationPaneViewController *)self shouldEmbedContentTrayIfNeeded])
  {
    [(AKAuthorizationPaneViewController *)self intrinsicContentHeight];
    v5 = v2;
    [(AKAuthorizationPaneViewController *)self maximumContentHeight];
    return v5 >= v3;
  }

  return v6;
}

- (double)intrinsicContentHeight
{
  selfCopy = self;
  location[1] = a2;
  location[0] = [(AKAuthorizationPaneViewController *)self tableView];
  tableHeaderView = [location[0] tableHeaderView];
  v10 = MEMORY[0x277D76C78];
  [tableHeaderView systemLayoutSizeFittingSize:{*MEMORY[0x277D76C78], *(MEMORY[0x277D76C78] + 8)}];
  v9 = v2;
  MEMORY[0x277D82BD8](tableHeaderView);
  tableFooterView = [location[0] tableFooterView];
  [tableFooterView systemLayoutSizeFittingSize:{*v10, v10[1]}];
  v12 = v3;
  MEMORY[0x277D82BD8](tableFooterView);
  v16 = 0;
  if (v12 == 0.0)
  {
    blurryTray = [(AKAuthorizationPaneViewController *)selfCopy blurryTray];
    v16 = 1;
    [(UIVisualEffectView *)blurryTray frame];
    Height = CGRectGetHeight(v20);
  }

  else
  {
    Height = 0.0;
  }

  if (v16)
  {
    MEMORY[0x277D82BD8](blurryTray);
  }

  +[AKAuthorizationPaneMetrics paneAdditionSafeAreaInsets];
  v15 = v4;
  v14 = 0.0;
  for (i = 0; ; ++i)
  {
    v6 = 0;
    if (i < [location[0] numberOfSections])
    {
      v6 = [location[0] numberOfRowsInSection:i] != 0;
    }

    if (!v6)
    {
      break;
    }

    [location[0] rectForSection:i];
    v14 = v14 + CGRectGetHeight(v21);
  }

  if (v14 == 0.0)
  {
    v14 = 12.0;
  }

  objc_storeStrong(location, 0);
  return v9 + v14 + v12 + Height + v15;
}

- (double)maximumContentHeight
{
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen bounds];
  v10 = v2;
  MEMORY[0x277D82BD8](mainScreen);
  mEMORY[0x277CF0228] = [MEMORY[0x277CF0228] sharedManager];
  v20 = 0;
  v18 = 0;
  v16 = 0;
  v14 = 0;
  v12 = 0;
  if ([mEMORY[0x277CF0228] isAuthKitSolariumFeatureEnabled])
  {
    view = [(AKAuthorizationPaneViewController *)self view];
    v20 = 1;
    window = [view window];
    v18 = 1;
    v8 = 1;
    if ([window interfaceOrientation] != 4)
    {
      view2 = [(AKAuthorizationPaneViewController *)self view];
      v16 = 1;
      window2 = [view2 window];
      v14 = 1;
      v8 = [window2 interfaceOrientation] == 3;
    }

    v12 = v8;
  }

  if (v14)
  {
    MEMORY[0x277D82BD8](window2);
  }

  if (v16)
  {
    MEMORY[0x277D82BD8](view2);
  }

  if (v18)
  {
    MEMORY[0x277D82BD8](window);
  }

  if (v20)
  {
    MEMORY[0x277D82BD8](view);
  }

  MEMORY[0x277D82BD8](mEMORY[0x277CF0228]);
  if (v12)
  {
    return v10 * 4.0 / 5.0;
  }

  +[AKAuthorizationPaneMetrics maximumContentHeightFactor];
  v13 = v10 * v3;
  mEMORY[0x277CF0228]2 = [MEMORY[0x277CF0228] sharedManager];
  isLisbonAvailable = [mEMORY[0x277CF0228]2 isLisbonAvailable];
  MEMORY[0x277D82BD8](mEMORY[0x277CF0228]2);
  if (!isLisbonAvailable)
  {
    [(AKAuthorizationPaneViewController *)self _navigationBarHeaderHeight];
    return v13 - v4;
  }

  return v13;
}

- (double)maximumContentWidth
{
  mEMORY[0x277CF0228] = [MEMORY[0x277CF0228] sharedManager];
  v16 = 0;
  v14 = 0;
  v12 = 0;
  v10 = 0;
  v9 = 0;
  if ([mEMORY[0x277CF0228] isAuthKitSolariumFeatureEnabled])
  {
    view = [(AKAuthorizationPaneViewController *)self view];
    v16 = 1;
    window = [view window];
    v14 = 1;
    v7 = 1;
    if ([window interfaceOrientation] != 4)
    {
      view2 = [(AKAuthorizationPaneViewController *)self view];
      v12 = 1;
      window2 = [view2 window];
      v10 = 1;
      v7 = [window2 interfaceOrientation] == 3;
    }

    v9 = v7;
  }

  if (v10)
  {
    MEMORY[0x277D82BD8](window2);
  }

  if (v12)
  {
    MEMORY[0x277D82BD8](view2);
  }

  if (v14)
  {
    MEMORY[0x277D82BD8](window);
  }

  if (v16)
  {
    MEMORY[0x277D82BD8](view);
  }

  MEMORY[0x277D82BD8](mEMORY[0x277CF0228]);
  if (v9)
  {
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen bounds];
    v19 = v2 / 2.0;
    MEMORY[0x277D82BD8](mainScreen);
  }

  else
  {
    mainScreen2 = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen2 bounds];
    v19 = v3;
    MEMORY[0x277D82BD8](mainScreen2);
  }

  return v19;
}

- (void)sizeToFitPaneContent
{
  v46[1] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v44 = a2;
  if ([(AKAuthorizationPaneViewController *)self isViewLoaded])
  {
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];
    MEMORY[0x277D82BD8](currentDevice);
    if (userInterfaceIdiom != 1)
    {
      view = [(AKAuthorizationPaneViewController *)selfCopy view];
      [view bounds];
      v42 = v47;
      Width = CGRectGetWidth(v47);
      MEMORY[0x277D82BD8](view);
      v43 = Width;
      [(AKAuthorizationPaneViewController *)selfCopy intrinsicContentHeight];
      v41 = v2;
      v23 = v2;
      [(AKAuthorizationPaneViewController *)selfCopy maximumContentHeight];
      if (v23 > v3)
      {
        [(AKAuthorizationPaneViewController *)selfCopy maximumContentHeight];
        v41 = v4;
      }

      v5 = v43;
      if (v43 == 0.0 || ([(AKAuthorizationPaneViewController *)selfCopy maximumContentWidth], v7 = v6, v5 = v43, v43 > v7))
      {
        [(AKAuthorizationPaneViewController *)selfCopy maximumContentWidth];
        v43 = v8;
      }

      CGSizeMake_0();
      *&v40 = v9;
      *(&v40 + 1) = v10;
      v39 = v40;
      [(AKAuthorizationPaneViewController *)selfCopy setPreferredContentSize:v9, v10];
      mEMORY[0x277CF0228] = [MEMORY[0x277CF0228] sharedManager];
      isAuthKitSolariumFeatureEnabled = [mEMORY[0x277CF0228] isAuthKitSolariumFeatureEnabled];
      MEMORY[0x277D82BD8](mEMORY[0x277CF0228]);
      if (isAuthKitSolariumFeatureEnabled)
      {
        sheetPresentationController = [(AKAuthorizationPaneViewController *)selfCopy sheetPresentationController];
        if (sheetPresentationController)
        {
          [sheetPresentationController setDelegate:selfCopy];
          v37 = MEMORY[0x277D82BE0](@"detentIdentifier");
          v15 = MEMORY[0x277D75A28];
          v14 = v37;
          v30 = MEMORY[0x277D85DD0];
          v31 = -1073741824;
          v32 = 0;
          v33 = __57__AKAuthorizationPaneViewController_sizeToFitPaneContent__block_invoke;
          v34 = &unk_2784A5E70;
          v35 = MEMORY[0x277D82BE0](selfCopy);
          location = [v15 customDetentWithIdentifier:v14 resolver:&v30];
          view2 = [(AKAuthorizationPaneViewController *)selfCopy view];
          window = [view2 window];
          v28 = 0;
          v26 = 0;
          v18 = 1;
          if ([window interfaceOrientation] != 4)
          {
            view3 = [(AKAuthorizationPaneViewController *)selfCopy view];
            v28 = 1;
            window2 = [view3 window];
            v26 = 1;
            v18 = [window2 interfaceOrientation] == 3;
          }

          if (v26)
          {
            MEMORY[0x277D82BD8](window2);
          }

          if (v28)
          {
            MEMORY[0x277D82BD8](view3);
          }

          MEMORY[0x277D82BD8](window);
          MEMORY[0x277D82BD8](view2);
          if (v18)
          {
            [sheetPresentationController setPrefersEdgeAttachedInCompactHeight:1];
            [sheetPresentationController setWidthFollowsPreferredContentSizeWhenEdgeAttached:1];
          }

          else
          {
            v12 = sheetPresentationController;
            v46[0] = location;
            v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v46 count:1];
            [v12 setDetents:?];
            MEMORY[0x277D82BD8](v13);
            [sheetPresentationController setSelectedDetentIdentifier:v37];
          }

          objc_storeStrong(&location, 0);
          objc_storeStrong(&v35, 0);
          objc_storeStrong(&v37, 0);
        }

        objc_storeStrong(&sheetPresentationController, 0);
      }

      view4 = [(AKAuthorizationPaneViewController *)selfCopy view];
      [view4 layoutIfNeeded];
      MEMORY[0x277D82BD8](view4);
    }
  }

  *MEMORY[0x277D85DE8];
}

double __57__AKAuthorizationPaneViewController_sizeToFitPaneContent__block_invoke(id *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  [a1[4] preferredContentSize];
  v6 = v2;
  +[AKAuthorizationPaneMetrics magicPocketPadding];
  v7 = v6 + v3;
  objc_storeStrong(location, 0);
  return v7;
}

- (void)traitCollectionDidChange:(id)change
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, change);
  v7.receiver = selfCopy;
  v7.super_class = AKAuthorizationPaneViewController;
  [(AKAuthorizationPaneViewController *)&v7 traitCollectionDidChange:location[0]];
  traitCollection = [(AKAuthorizationPaneViewController *)selfCopy traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  preferredContentSizeCategory2 = [location[0] preferredContentSizeCategory];
  v6 = [preferredContentSizeCategory isEqualToString:?];
  MEMORY[0x277D82BD8](preferredContentSizeCategory2);
  MEMORY[0x277D82BD8](preferredContentSizeCategory);
  MEMORY[0x277D82BD8](traitCollection);
  if (!v6)
  {
    [(AKAuthorizationPaneViewController *)selfCopy sizeToFitPaneContent];
  }

  objc_storeStrong(location, 0);
}

- (double)_deviceSafeAreaBottomInset
{
  v7[2] = self;
  v7[1] = a2;
  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
  windows = [mEMORY[0x277D75128] windows];
  v7[0] = [windows firstObject];
  MEMORY[0x277D82BD8](windows);
  MEMORY[0x277D82BD8](mEMORY[0x277D75128]);
  [v7[0] _sceneSafeAreaInsetsIncludingStatusBar:0];
  v6 = v2;
  objc_storeStrong(v7, 0);
  return v6;
}

- (double)_navigationBarHeaderHeight
{
  navigationController = [(AKAuthorizationPaneViewController *)self navigationController];
  navigationBar = [navigationController navigationBar];
  [navigationBar frame];
  Height = CGRectGetHeight(v6);
  MEMORY[0x277D82BD8](navigationBar);
  MEMORY[0x277D82BD8](navigationController);
  return Height;
}

- (void)scrollViewDidScroll:(id)scroll
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, scroll);
  [(AKAuthorizationPaneViewController *)selfCopy _adjustForPositionOfScrollView:location[0]];
  objc_storeStrong(location, 0);
}

- (void)_adjustForPositionOfScrollView:(id)view
{
  v18[1] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  [location[0] contentOffset];
  v12 = v3;
  navigationController = [(AKAuthorizationPaneViewController *)selfCopy navigationController];
  navigationBar = [navigationController navigationBar];
  [navigationBar frame];
  v14 = 0;
  v13 = 0;
  if (v12 > -CGRectGetHeight(v19))
  {
    mEMORY[0x277CF0228] = [MEMORY[0x277CF0228] sharedManager];
    v14 = 1;
    v13 = [mEMORY[0x277CF0228] isAuthKitSolariumFeatureEnabled] == 0;
  }

  if (v14)
  {
    MEMORY[0x277D82BD8](mEMORY[0x277CF0228]);
  }

  MEMORY[0x277D82BD8](navigationBar);
  MEMORY[0x277D82BD8](navigationController);
  if (v13)
  {
    v9 = [MEMORY[0x277D75210] effectWithStyle:{+[AKAuthorizationAppearance paneBlurEffectStyle](AKAuthorizationAppearance, "paneBlurEffectStyle")}];
    v18[0] = v9;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:1];
    navigationController2 = [(AKAuthorizationPaneViewController *)selfCopy navigationController];
    navigationBar2 = [navigationController2 navigationBar];
    [navigationBar2 setBackgroundEffects:v8];
    MEMORY[0x277D82BD8](navigationBar2);
    MEMORY[0x277D82BD8](navigationController2);
    MEMORY[0x277D82BD8](v8);
    MEMORY[0x277D82BD8](v9);
  }

  else
  {
    navigationController3 = [(AKAuthorizationPaneViewController *)selfCopy navigationController];
    navigationBar3 = [navigationController3 navigationBar];
    [navigationBar3 setBackgroundEffects:0];
    MEMORY[0x277D82BD8](navigationBar3);
    MEMORY[0x277D82BD8](navigationController3);
  }

  [(AKAuthorizationPaneViewController *)selfCopy _updateBlurForTray];
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  objc_storeStrong(location, 0);
  return 0;
}

- (id)tableView:(id)view viewForFooterInSection:(int64_t)section
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  objc_storeStrong(location, 0);
  return 0;
}

- (double)tableView:(id)view heightForFooterInSection:(int64_t)section
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  v5 = *MEMORY[0x277D76F30];
  objc_storeStrong(location, 0);
  return v5;
}

- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  if (section)
  {
    +[AKAuthorizationPaneMetrics interScopeFieldSpacing];
  }

  else
  {
    +[AKAuthorizationPaneMetrics infoLabelToTableSpacing];
  }

  v8 = v4;
  objc_storeStrong(location, 0);
  return v8;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  v6 = 0;
  objc_storeStrong(&v6, path);
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
  return 0;
}

- (int64_t)numberOfSectionsInTableView:(id)view
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  objc_storeStrong(location, 0);
  return 0;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  objc_storeStrong(location, 0);
  return 0;
}

- (id)_newContainerView
{
  v5[2] = self;
  v5[1] = a2;
  v5[0] = objc_alloc_init(MEMORY[0x277D75D18]);
  clearColor = [MEMORY[0x277D75348] clearColor];
  [v5[0] setBackgroundColor:?];
  MEMORY[0x277D82BD8](clearColor);
  v4 = MEMORY[0x277D82BE0](v5[0]);
  objc_storeStrong(v5, 0);
  return v4;
}

- (id)_newStackView
{
  v4[2] = self;
  v4[1] = a2;
  v4[0] = objc_alloc_init(MEMORY[0x277D75A68]);
  [v4[0] setTranslatesAutoresizingMaskIntoConstraints:0];
  [v4[0] setAlignment:3];
  [v4[0] setAxis:1];
  [v4[0] setDistribution:0];
  v3 = MEMORY[0x277D82BE0](v4[0]);
  objc_storeStrong(v4, 0);
  return v3;
}

- (id)_indexPathForLastRow
{
  tableView = [(AKAuthorizationPaneViewController *)self tableView];
  v7 = [(AKAuthorizationPaneViewController *)self _safeIndexWithCount:[(UITableView *)tableView numberOfSections]];
  MEMORY[0x277D82BD8](tableView);
  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = [MEMORY[0x277CCAA70] indexPathForRow:0x7FFFFFFFFFFFFFFFLL inSection:?];
  }

  else
  {
    tableView2 = [(AKAuthorizationPaneViewController *)self tableView];
    v4 = [(AKAuthorizationPaneViewController *)self _safeIndexWithCount:[(UITableView *)tableView2 numberOfRowsInSection:v7]];
    MEMORY[0x277D82BD8](tableView2);
    v9 = [MEMORY[0x277CCAA70] indexPathForRow:v4 inSection:v7];
  }

  return v9;
}

- (int64_t)_safeIndexWithCount:(int64_t)count
{
  if (count - 1 < 0)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    return count - 1;
  }
}

- (AKAuthorizationPaneViewController)initWithNibName:(id)name bundle:(id)bundle
{
  selfCopy = self;
  v8 = a2;
  location = 0;
  objc_storeStrong(&location, name);
  v6 = 0;
  objc_storeStrong(&v6, bundle);
  [(AKAuthorizationPaneViewController *)selfCopy doesNotRecognizeSelector:v8];
  objc_storeStrong(&v6, 0);
  objc_storeStrong(&location, 0);
  objc_storeStrong(&selfCopy, 0);
  return 0;
}

- (AKAuthorizationPaneViewController)initWithCoder:(id)coder
{
  selfCopy = self;
  v5 = a2;
  location = 0;
  objc_storeStrong(&location, coder);
  [(AKAuthorizationPaneViewController *)selfCopy doesNotRecognizeSelector:v5];
  objc_storeStrong(&location, 0);
  objc_storeStrong(&selfCopy, 0);
  return 0;
}

- (AKAuthorizationPaneViewController)initWithStyle:(int64_t)style
{
  selfCopy = self;
  [(AKAuthorizationPaneViewController *)self doesNotRecognizeSelector:a2];
  objc_storeStrong(&selfCopy, 0);
  return 0;
}

- (AKAuthorizationPaneDelegate)paneDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_paneDelegate);

  return WeakRetained;
}

- (AKAuthorizationEditableDataSources)editableDataSources
{
  WeakRetained = objc_loadWeakRetained(&self->_editableDataSources);

  return WeakRetained;
}

@end