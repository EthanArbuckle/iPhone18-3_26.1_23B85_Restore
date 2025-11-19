@interface AKAuthorizationPaneViewController
- (AKAuthorizationEditableDataSources)editableDataSources;
- (AKAuthorizationPaneDelegate)paneDelegate;
- (AKAuthorizationPaneViewController)init;
- (AKAuthorizationPaneViewController)initWithCoder:(id)a3;
- (AKAuthorizationPaneViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (AKAuthorizationPaneViewController)initWithStyle:(int64_t)a3;
- (BOOL)_isContentUnderNavigationBar;
- (BOOL)_isContentUnderTray;
- (BOOL)_shouldEmbedContentTray;
- (double)_contentTrayOffsetAdjustedForScrollInset:(BOOL)a3;
- (double)_deviceSafeAreaBottomInset;
- (double)_navigationBarHeaderHeight;
- (double)contentScrollOffset;
- (double)intrinsicContentHeight;
- (double)maximumContentHeight;
- (double)maximumContentWidth;
- (double)tableView:(id)a3 heightForFooterInSection:(int64_t)a4;
- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4;
- (id)_indexPathForLastRow;
- (id)_newContainerView;
- (id)_newStackView;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 viewForFooterInSection:(int64_t)a4;
- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4;
- (int64_t)_safeIndexWithCount:(int64_t)a3;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_adjustForPositionOfScrollView:(id)a3;
- (void)_configureContentTrayIfNeeded;
- (void)_setCompressedHeightForView:(id)a3;
- (void)_setupContexts;
- (void)_updateBlurForTray;
- (void)scrollViewDidScroll:(id)a3;
- (void)sizeToFitPaneContent;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewSafeAreaInsetsDidChange;
- (void)viewWillAppear:(BOOL)a3;
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
  v81 = self;
  v80 = a2;
  v79.receiver = self;
  v79.super_class = AKAuthorizationPaneViewController;
  [(AKAuthorizationPaneViewController *)&v79 viewDidLoad];
  v18 = [(AKAuthorizationPaneViewController *)v81 view];
  [v18 bounds];
  v76 = v84;
  CGRectGetWidth(v84);
  CGRectMake_0();
  *&v77 = v2;
  *(&v77 + 1) = v3;
  *&v78 = v4;
  *(&v78 + 1) = v5;
  MEMORY[0x277D82BD8](v18);
  v19 = [objc_alloc(MEMORY[0x277D75B40]) initWithFrame:+[AKAuthorizationAppearance tableViewStyle](AKAuthorizationAppearance style:{"tableViewStyle"), v77, v78}];
  [(AKAuthorizationPaneViewController *)v81 setTableView:?];
  MEMORY[0x277D82BD8](v19);
  +[AKAuthorizationPaneMetrics tableSectionFooterHeight];
  v20 = v6;
  v21 = [(AKAuthorizationPaneViewController *)v81 tableView];
  [(UITableView *)v21 setSectionFooterHeight:v20];
  MEMORY[0x277D82BD8](v21);
  v22 = [(AKAuthorizationPaneViewController *)v81 tableView];
  [(UITableView *)v22 setTranslatesAutoresizingMaskIntoConstraints:0];
  MEMORY[0x277D82BD8](v22);
  v24 = [MEMORY[0x277D75348] clearColor];
  v23 = [(AKAuthorizationPaneViewController *)v81 tableView];
  [(UITableView *)v23 setBackgroundColor:v24];
  MEMORY[0x277D82BD8](v23);
  MEMORY[0x277D82BD8](v24);
  v25 = [(AKAuthorizationPaneViewController *)v81 tableView];
  [(UITableView *)v25 setAlwaysBounceVertical:0];
  MEMORY[0x277D82BD8](v25);
  v26 = [(AKAuthorizationPaneViewController *)v81 tableView];
  [(UITableView *)v26 setShowsVerticalScrollIndicator:0];
  MEMORY[0x277D82BD8](v26);
  v7 = [(AKAuthorizationPaneViewController *)v81 _newStackView];
  paneHeaderStackView = v81->_paneHeaderStackView;
  v81->_paneHeaderStackView = v7;
  MEMORY[0x277D82BD8](paneHeaderStackView);
  v28 = [(AKAuthorizationPaneViewController *)v81 _newContainerView];
  v27 = [(AKAuthorizationPaneViewController *)v81 tableView];
  [(UITableView *)v27 setTableHeaderView:v28];
  MEMORY[0x277D82BD8](v27);
  MEMORY[0x277D82BD8](v28);
  v30 = [(AKAuthorizationPaneViewController *)v81 tableView];
  v29 = [(UITableView *)v30 tableHeaderView];
  [(UIView *)v29 addSubview:v81->_paneHeaderStackView];
  MEMORY[0x277D82BD8](v29);
  MEMORY[0x277D82BD8](v30);
  v75 = 0;
  v9 = objc_alloc(MEMORY[0x277D75D68]);
  v10 = [v9 initWithEffect:v75];
  blurryTray = v81->_blurryTray;
  v81->_blurryTray = v10;
  MEMORY[0x277D82BD8](blurryTray);
  [(UIVisualEffectView *)v81->_blurryTray setTranslatesAutoresizingMaskIntoConstraints:0];
  v12 = [(AKAuthorizationPaneViewController *)v81 _newStackView];
  paneFooterStackView = v81->_paneFooterStackView;
  v81->_paneFooterStackView = v12;
  MEMORY[0x277D82BD8](paneFooterStackView);
  v31 = [(UIVisualEffectView *)v81->_blurryTray contentView];
  [(UIView *)v31 addSubview:v81->_paneFooterStackView];
  MEMORY[0x277D82BD8](v31);
  [(UIStackView *)v81->_paneFooterStackView setSpacing:1.17549435e-38];
  v33 = [(AKAuthorizationPaneViewController *)v81 view];
  v32 = [(AKAuthorizationPaneViewController *)v81 tableView];
  [v33 addSubview:?];
  MEMORY[0x277D82BD8](v32);
  MEMORY[0x277D82BD8](v33);
  v34 = [(AKAuthorizationPaneViewController *)v81 view];
  [v34 setAccessibilityIdentifier:*MEMORY[0x277CEFEA0]];
  MEMORY[0x277D82BD8](v34);
  [(AKAuthorizationPaneViewController *)v81 _setupContexts];
  v74 = [MEMORY[0x277CBEB18] array];
  v35 = v74;
  v60 = [(AKAuthorizationPaneViewController *)v81 paneHeaderStackView];
  v59 = [(UIStackView *)v60 topAnchor];
  v58 = [(AKAuthorizationPaneViewController *)v81 tableView];
  v57 = [(UITableView *)v58 tableHeaderView];
  v56 = [(UIView *)v57 topAnchor];
  v55 = [v59 constraintEqualToAnchor:?];
  v83[0] = v55;
  v54 = [(AKAuthorizationPaneViewController *)v81 paneHeaderStackView];
  v53 = [(UIStackView *)v54 bottomAnchor];
  v52 = [(AKAuthorizationPaneViewController *)v81 tableView];
  v51 = [(UITableView *)v52 tableHeaderView];
  v50 = [(UIView *)v51 bottomAnchor];
  v49 = [v53 constraintEqualToAnchor:?];
  v83[1] = v49;
  v48 = [(AKAuthorizationPaneViewController *)v81 paneHeaderStackView];
  v47 = [(UIStackView *)v48 leadingAnchor];
  v46 = [(AKAuthorizationPaneViewController *)v81 tableView];
  v45 = [(UITableView *)v46 tableHeaderView];
  v44 = [(UIView *)v45 leadingAnchor];
  v43 = [v47 constraintEqualToAnchor:?];
  v83[2] = v43;
  v42 = [(AKAuthorizationPaneViewController *)v81 paneHeaderStackView];
  v41 = [(UIStackView *)v42 trailingAnchor];
  v40 = [(AKAuthorizationPaneViewController *)v81 tableView];
  v39 = [(UITableView *)v40 tableHeaderView];
  v38 = [(UIView *)v39 trailingAnchor];
  v37 = [v41 constraintEqualToAnchor:?];
  v83[3] = v37;
  v36 = [MEMORY[0x277CBEA60] arrayWithObjects:v83 count:4];
  [v35 addObjectsFromArray:?];
  MEMORY[0x277D82BD8](v36);
  MEMORY[0x277D82BD8](v37);
  MEMORY[0x277D82BD8](v38);
  MEMORY[0x277D82BD8](v39);
  MEMORY[0x277D82BD8](v40);
  MEMORY[0x277D82BD8](v41);
  MEMORY[0x277D82BD8](v42);
  MEMORY[0x277D82BD8](v43);
  MEMORY[0x277D82BD8](v44);
  MEMORY[0x277D82BD8](v45);
  MEMORY[0x277D82BD8](v46);
  MEMORY[0x277D82BD8](v47);
  MEMORY[0x277D82BD8](v48);
  MEMORY[0x277D82BD8](v49);
  MEMORY[0x277D82BD8](v50);
  MEMORY[0x277D82BD8](v51);
  MEMORY[0x277D82BD8](v52);
  MEMORY[0x277D82BD8](v53);
  MEMORY[0x277D82BD8](v54);
  MEMORY[0x277D82BD8](v55);
  MEMORY[0x277D82BD8](v56);
  MEMORY[0x277D82BD8](v57);
  MEMORY[0x277D82BD8](v58);
  MEMORY[0x277D82BD8](v59);
  MEMORY[0x277D82BD8](v60);
  v62 = v74;
  v61 = MEMORY[0x277CCAAD0];
  v65 = [(AKAuthorizationPaneViewController *)v81 tableView];
  v64 = [(AKAuthorizationPaneViewController *)v81 view];
  v63 = [v61 ak_constraintsForView:v65 equalToView:?];
  [v62 addObjectsFromArray:?];
  MEMORY[0x277D82BD8](v63);
  MEMORY[0x277D82BD8](v64);
  MEMORY[0x277D82BD8](v65);
  v67 = [(AKAuthorizationPaneViewController *)v81 paneHeaderStackView];
  v66 = [(UIStackView *)v67 widthAnchor];
  v14 = [v66 constraintEqualToConstant:0.0];
  headerWidthConstraint = v81->_headerWidthConstraint;
  v81->_headerWidthConstraint = v14;
  MEMORY[0x277D82BD8](headerWidthConstraint);
  MEMORY[0x277D82BD8](v66);
  MEMORY[0x277D82BD8](v67);
  v69 = [(AKAuthorizationPaneViewController *)v81 paneFooterStackView];
  v68 = [(UIStackView *)v69 widthAnchor];
  v16 = [v68 constraintEqualToConstant:0.0];
  footerWidthConstraint = v81->_footerWidthConstraint;
  v81->_footerWidthConstraint = v16;
  MEMORY[0x277D82BD8](footerWidthConstraint);
  MEMORY[0x277D82BD8](v68);
  MEMORY[0x277D82BD8](v69);
  v70 = v74;
  v73 = [(AKAuthorizationPaneViewController *)v81 headerWidthConstraint];
  v82[0] = v73;
  v72 = [(AKAuthorizationPaneViewController *)v81 footerWidthConstraint];
  v82[1] = v72;
  v71 = [MEMORY[0x277CBEA60] arrayWithObjects:v82 count:2];
  [v70 addObjectsFromArray:?];
  MEMORY[0x277D82BD8](v71);
  MEMORY[0x277D82BD8](v72);
  MEMORY[0x277D82BD8](v73);
  [MEMORY[0x277CCAAD0] activateConstraints:v74];
  [(AKAuthorizationPaneViewController *)v81 sizeToFitPaneContent];
  objc_storeStrong(&v74, 0);
  objc_storeStrong(&v75, 0);
  *MEMORY[0x277D85DE8];
}

- (void)viewWillAppear:(BOOL)a3
{
  v18 = self;
  v17 = a2;
  v16 = a3;
  v15.receiver = self;
  v15.super_class = AKAuthorizationPaneViewController;
  [(AKAuthorizationPaneViewController *)&v15 viewWillAppear:a3];
  v10 = [MEMORY[0x277D75418] currentDevice];
  v11 = [v10 userInterfaceIdiom];
  MEMORY[0x277D82BD8](v10);
  if (v11 == 1)
  {
    v7 = [(AKAuthorizationPaneViewController *)v18 navigationController];
    v6 = [v7 view];
    [v6 frame];
    v12 = v3;
    v13 = v4;
    MEMORY[0x277D82BD8](v6);
    MEMORY[0x277D82BD8](v7);
    v9 = [(AKAuthorizationPaneViewController *)v18 navigationController];
    v8 = [v9 navigationBar];
    [v8 size];
    v14 = v12 - v5;
    MEMORY[0x277D82BD8](v8);
    MEMORY[0x277D82BD8](v9);
    [(AKAuthorizationPaneViewController *)v18 setPreferredContentSize:v13, v14];
  }
}

- (void)viewDidAppear:(BOOL)a3
{
  v10 = self;
  v9 = a2;
  v8 = a3;
  v7.receiver = self;
  v7.super_class = AKAuthorizationPaneViewController;
  [(AKAuthorizationPaneViewController *)&v7 viewDidAppear:a3];
  v3 = [(AKAuthorizationPaneViewController *)v10 view];
  [v3 setNeedsLayout];
  MEMORY[0x277D82BD8](v3);
  v4 = [(AKAuthorizationPaneViewController *)v10 view];
  [v4 layoutIfNeeded];
  MEMORY[0x277D82BD8](v4);
  v5 = v10;
  v6 = [(AKAuthorizationPaneViewController *)v10 tableView];
  [(AKAuthorizationPaneViewController *)v5 _adjustForPositionOfScrollView:?];
  MEMORY[0x277D82BD8](v6);
}

- (void)viewSafeAreaInsetsDidChange
{
  v6 = self;
  v5 = a2;
  v4.receiver = self;
  v4.super_class = AKAuthorizationPaneViewController;
  [(AKAuthorizationPaneViewController *)&v4 viewSafeAreaInsetsDidChange];
  v2 = [(AKAuthorizationPaneViewController *)v6 blurryTray];
  [(UIVisualEffectView *)v2 setNeedsUpdateConstraints];
  MEMORY[0x277D82BD8](v2);
  v3 = [(AKAuthorizationPaneViewController *)v6 blurryTray];
  [(UIVisualEffectView *)v3 layoutIfNeeded];
  MEMORY[0x277D82BD8](v3);
}

- (void)_setupContexts
{
  v2 = [AKAuthorizationPaneContext alloc];
  v4 = [(AKAuthorizationPaneViewController *)self paneHeaderStackView];
  v3 = [(AKAuthorizationPaneContext *)v2 initWithPaneViewController:self stackView:?];
  [(AKAuthorizationPaneViewController *)self setHeaderPaneContext:?];
  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](v4);
  v5 = [AKAuthorizationPaneContext alloc];
  v7 = [(AKAuthorizationPaneViewController *)self paneFooterStackView];
  v6 = [(AKAuthorizationPaneContext *)v5 initWithPaneViewController:self stackView:?];
  [(AKAuthorizationPaneViewController *)self setFooterPaneContext:?];
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BD8](v7);
  v8 = [MEMORY[0x277CBEB18] array];
  [(AKAuthorizationPaneViewController *)self setMutableConstraints:?];
  MEMORY[0x277D82BD8](v8);
}

- (void)viewWillLayoutSubviews
{
  v9 = self;
  v8 = a2;
  v7.receiver = self;
  v7.super_class = AKAuthorizationPaneViewController;
  [(AKAuthorizationPaneViewController *)&v7 viewWillLayoutSubviews];
  v3 = [(AKAuthorizationPaneViewController *)v9 view];
  [v3 frame];
  v4 = v2;
  MEMORY[0x277D82BD8](v3);
  v5 = [(AKAuthorizationPaneViewController *)v9 headerWidthConstraint];
  [(NSLayoutConstraint *)v5 setConstant:v4];
  MEMORY[0x277D82BD8](v5);
  v6 = [(AKAuthorizationPaneViewController *)v9 footerWidthConstraint];
  [(NSLayoutConstraint *)v6 setConstant:v4];
  MEMORY[0x277D82BD8](v6);
}

- (void)viewDidLayoutSubviews
{
  v35 = self;
  v34 = a2;
  v33.receiver = self;
  v33.super_class = AKAuthorizationPaneViewController;
  [(AKAuthorizationPaneViewController *)&v33 viewDidLayoutSubviews];
  v26 = [(AKAuthorizationPaneViewController *)v35 tableView];
  v32 = [(UITableView *)v26 tableHeaderView];
  MEMORY[0x277D82BD8](v26);
  if (v32)
  {
    [(AKAuthorizationPaneViewController *)v35 _setCompressedHeightForView:v32];
  }

  v25 = [(AKAuthorizationPaneViewController *)v35 tableView];
  location = [(UITableView *)v25 tableFooterView];
  MEMORY[0x277D82BD8](v25);
  if (location)
  {
    [(AKAuthorizationPaneViewController *)v35 _setCompressedHeightForView:location];
  }

  [(AKAuthorizationPaneViewController *)v35 _contentTrayOffsetAdjustedForScrollInset:1];
  UIEdgeInsetsMake_0();
  v27 = v2;
  v28 = v3;
  v29 = v4;
  v30 = v5;
  v6 = [(AKAuthorizationPaneViewController *)v35 tableView];
  [(UITableView *)v6 _setContentScrollInset:v27, v28, v29, v30];
  MEMORY[0x277D82BD8](v6);
  v8 = [(AKAuthorizationPaneViewController *)v35 tableView];
  v7 = [(UITableView *)v8 tableHeaderView];
  [(UIView *)v7 setNeedsLayout];
  MEMORY[0x277D82BD8](v7);
  MEMORY[0x277D82BD8](v8);
  v10 = [(AKAuthorizationPaneViewController *)v35 tableView];
  v9 = [(UITableView *)v10 tableHeaderView];
  [(UIView *)v9 layoutIfNeeded];
  MEMORY[0x277D82BD8](v9);
  MEMORY[0x277D82BD8](v10);
  v13 = [(AKAuthorizationPaneViewController *)v35 tableView];
  v12 = [(AKAuthorizationPaneViewController *)v35 tableView];
  v11 = [(UITableView *)v12 tableHeaderView];
  [(UITableView *)v13 setTableHeaderView:?];
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v12);
  MEMORY[0x277D82BD8](v13);
  v15 = [(AKAuthorizationPaneViewController *)v35 tableView];
  v14 = [(UITableView *)v15 tableFooterView];
  [(UIView *)v14 setNeedsLayout];
  MEMORY[0x277D82BD8](v14);
  MEMORY[0x277D82BD8](v15);
  v17 = [(AKAuthorizationPaneViewController *)v35 tableView];
  v16 = [(UITableView *)v17 tableFooterView];
  [(UIView *)v16 layoutIfNeeded];
  MEMORY[0x277D82BD8](v16);
  MEMORY[0x277D82BD8](v17);
  v20 = [(AKAuthorizationPaneViewController *)v35 tableView];
  v19 = [(AKAuthorizationPaneViewController *)v35 tableView];
  v18 = [(UITableView *)v19 tableFooterView];
  [(UITableView *)v20 setTableFooterView:?];
  MEMORY[0x277D82BD8](v18);
  MEMORY[0x277D82BD8](v19);
  MEMORY[0x277D82BD8](v20);
  v21 = [(AKAuthorizationPaneViewController *)v35 tableView];
  [(UITableView *)v21 setNeedsLayout];
  MEMORY[0x277D82BD8](v21);
  v22 = [(AKAuthorizationPaneViewController *)v35 tableView];
  [(UITableView *)v22 layoutIfNeeded];
  MEMORY[0x277D82BD8](v22);
  v23 = [(AKAuthorizationPaneViewController *)v35 blurryTray];
  [(UIVisualEffectView *)v23 setNeedsLayout];
  MEMORY[0x277D82BD8](v23);
  v24 = [(AKAuthorizationPaneViewController *)v35 blurryTray];
  [(UIVisualEffectView *)v24 layoutIfNeeded];
  MEMORY[0x277D82BD8](v24);
  [(AKAuthorizationPaneViewController *)v35 _configureContentTrayIfNeeded];
  [(AKAuthorizationPaneViewController *)v35 sizeToFitPaneContent];
  [(AKAuthorizationPaneViewController *)v35 _updateBlurForTray];
  objc_storeStrong(&location, 0);
  objc_storeStrong(&v32, 0);
}

- (void)_setCompressedHeightForView:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
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
  v125 = self;
  v124 = a2;
  v113 = [(AKAuthorizationPaneViewController *)self tableView];
  v2 = [(UITableView *)v113 tableFooterView];
  v114 = v2 != 0;
  MEMORY[0x277D82BD8](v2);
  MEMORY[0x277D82BD8](v113);
  v123 = v114;
  v122 = [(AKAuthorizationPaneViewController *)v125 _shouldEmbedContentTray];
  v119 = 0;
  v117 = 0;
  v115 = 1;
  if (v122 == v114)
  {
    v120 = [(AKAuthorizationPaneViewController *)v125 blurryTray];
    v119 = 1;
    v118 = [(UIVisualEffectView *)v120 superview];
    v117 = 1;
    v115 = v118 == 0;
  }

  if (v117)
  {
    MEMORY[0x277D82BD8](v118);
  }

  if (v119)
  {
    MEMORY[0x277D82BD8](v120);
  }

  v121 = v115;
  if (v115)
  {
    v111 = [(AKAuthorizationPaneViewController *)v125 blurryTray];
    v112 = [(UIVisualEffectView *)v111 superview];
    MEMORY[0x277D82BD8](v112);
    MEMORY[0x277D82BD8](v111);
    if (v112)
    {
      v110 = [(AKAuthorizationPaneViewController *)v125 blurryTray];
      [(UIVisualEffectView *)v110 removeFromSuperview];
      MEMORY[0x277D82BD8](v110);
    }

    v108 = [(AKAuthorizationPaneViewController *)v125 tableView];
    v109 = [(UITableView *)v108 tableFooterView];
    MEMORY[0x277D82BD8](v109);
    MEMORY[0x277D82BD8](v108);
    if (v109)
    {
      v107 = [(AKAuthorizationPaneViewController *)v125 tableView];
      [(UITableView *)v107 setTableFooterView:0];
      MEMORY[0x277D82BD8](v107);
    }

    v116 = [MEMORY[0x277CBEB18] array];
    v105 = [MEMORY[0x277CF0228] sharedManager];
    v106 = [v105 isAuthKitSolariumFeatureEnabled];
    MEMORY[0x277D82BD8](v105);
    if (v106)
    {
      v104 = [(AKAuthorizationPaneViewController *)v125 paneFooterStackView];
      v103 = [(UIStackView *)v104 topAnchor];
      v102 = [(AKAuthorizationPaneViewController *)v125 blurryTray];
      v101 = [(UIVisualEffectView *)v102 contentView];
      v100 = [(UIView *)v101 topAnchor];
      v99 = [v103 constraintEqualToAnchor:?];
      v129[0] = v99;
      v98 = [(AKAuthorizationPaneViewController *)v125 paneFooterStackView];
      v97 = [(UIStackView *)v98 bottomAnchor];
      v96 = [(AKAuthorizationPaneViewController *)v125 blurryTray];
      v95 = [(UIVisualEffectView *)v96 contentView];
      v94 = [(UIView *)v95 bottomAnchor];
      v93 = [v97 constraintEqualToAnchor:?];
      v129[1] = v93;
      v92 = [(AKAuthorizationPaneViewController *)v125 paneFooterStackView];
      v91 = [(UIStackView *)v92 leadingAnchor];
      v90 = [(AKAuthorizationPaneViewController *)v125 blurryTray];
      v89 = [(UIVisualEffectView *)v90 contentView];
      v88 = [(UIView *)v89 leadingAnchor];
      v87 = [v91 constraintEqualToAnchor:?];
      v129[2] = v87;
      v86 = [(AKAuthorizationPaneViewController *)v125 paneFooterStackView];
      v85 = [(UIStackView *)v86 trailingAnchor];
      v84 = [(AKAuthorizationPaneViewController *)v125 blurryTray];
      v83 = [(UIVisualEffectView *)v84 contentView];
      v82 = [(UIView *)v83 trailingAnchor];
      v81 = [v85 constraintEqualToAnchor:?];
      v129[3] = v81;
      v80 = [MEMORY[0x277CBEA60] arrayWithObjects:v129 count:4];
      [v116 addObjectsFromArray:?];
      MEMORY[0x277D82BD8](v80);
      MEMORY[0x277D82BD8](v81);
      MEMORY[0x277D82BD8](v82);
      MEMORY[0x277D82BD8](v83);
      MEMORY[0x277D82BD8](v84);
      MEMORY[0x277D82BD8](v85);
      MEMORY[0x277D82BD8](v86);
      MEMORY[0x277D82BD8](v87);
      MEMORY[0x277D82BD8](v88);
      MEMORY[0x277D82BD8](v89);
      MEMORY[0x277D82BD8](v90);
      MEMORY[0x277D82BD8](v91);
      MEMORY[0x277D82BD8](v92);
      MEMORY[0x277D82BD8](v93);
      MEMORY[0x277D82BD8](v94);
      MEMORY[0x277D82BD8](v95);
      MEMORY[0x277D82BD8](v96);
      MEMORY[0x277D82BD8](v97);
      MEMORY[0x277D82BD8](v98);
      MEMORY[0x277D82BD8](v99);
      MEMORY[0x277D82BD8](v100);
      MEMORY[0x277D82BD8](v101);
      MEMORY[0x277D82BD8](v102);
      MEMORY[0x277D82BD8](v103);
      MEMORY[0x277D82BD8](v104);
    }

    else
    {
      v79 = [(AKAuthorizationPaneViewController *)v125 paneFooterStackView];
      v78 = [(UIStackView *)v79 topAnchor];
      v77 = [(AKAuthorizationPaneViewController *)v125 blurryTray];
      v76 = [(UIVisualEffectView *)v77 contentView];
      v75 = [(UIView *)v76 topAnchor];
      v74 = [v78 constraintGreaterThanOrEqualToSystemSpacingBelowAnchor:1.0 multiplier:?];
      v128[0] = v74;
      v73 = [(AKAuthorizationPaneViewController *)v125 paneFooterStackView];
      v72 = [(UIStackView *)v73 bottomAnchor];
      v71 = [(AKAuthorizationPaneViewController *)v125 blurryTray];
      v70 = [(UIVisualEffectView *)v71 contentView];
      v69 = [(UIView *)v70 bottomAnchor];
      v68 = [v72 constraintLessThanOrEqualToSystemSpacingBelowAnchor:-1.0 multiplier:?];
      v128[1] = v68;
      v67 = [(AKAuthorizationPaneViewController *)v125 paneFooterStackView];
      v66 = [(UIStackView *)v67 centerYAnchor];
      v65 = [(AKAuthorizationPaneViewController *)v125 blurryTray];
      v64 = [(UIVisualEffectView *)v65 contentView];
      v63 = [(UIView *)v64 centerYAnchor];
      v62 = [v66 constraintEqualToAnchor:?];
      v128[2] = v62;
      v61 = [(AKAuthorizationPaneViewController *)v125 paneFooterStackView];
      v60 = [(UIStackView *)v61 leadingAnchor];
      v59 = [(AKAuthorizationPaneViewController *)v125 blurryTray];
      v58 = [(UIVisualEffectView *)v59 contentView];
      v57 = [(UIView *)v58 leadingAnchor];
      v56 = [v60 constraintEqualToAnchor:?];
      v128[3] = v56;
      v55 = [(AKAuthorizationPaneViewController *)v125 paneFooterStackView];
      v54 = [(UIStackView *)v55 trailingAnchor];
      v53 = [(AKAuthorizationPaneViewController *)v125 blurryTray];
      v52 = [(UIVisualEffectView *)v53 contentView];
      v51 = [(UIView *)v52 trailingAnchor];
      v50 = [v54 constraintEqualToAnchor:?];
      v128[4] = v50;
      v49 = [MEMORY[0x277CBEA60] arrayWithObjects:v128 count:5];
      [v116 addObjectsFromArray:?];
      MEMORY[0x277D82BD8](v49);
      MEMORY[0x277D82BD8](v50);
      MEMORY[0x277D82BD8](v51);
      MEMORY[0x277D82BD8](v52);
      MEMORY[0x277D82BD8](v53);
      MEMORY[0x277D82BD8](v54);
      MEMORY[0x277D82BD8](v55);
      MEMORY[0x277D82BD8](v56);
      MEMORY[0x277D82BD8](v57);
      MEMORY[0x277D82BD8](v58);
      MEMORY[0x277D82BD8](v59);
      MEMORY[0x277D82BD8](v60);
      MEMORY[0x277D82BD8](v61);
      MEMORY[0x277D82BD8](v62);
      MEMORY[0x277D82BD8](v63);
      MEMORY[0x277D82BD8](v64);
      MEMORY[0x277D82BD8](v65);
      MEMORY[0x277D82BD8](v66);
      MEMORY[0x277D82BD8](v67);
      MEMORY[0x277D82BD8](v68);
      MEMORY[0x277D82BD8](v69);
      MEMORY[0x277D82BD8](v70);
      MEMORY[0x277D82BD8](v71);
      MEMORY[0x277D82BD8](v72);
      MEMORY[0x277D82BD8](v73);
      MEMORY[0x277D82BD8](v74);
      MEMORY[0x277D82BD8](v75);
      MEMORY[0x277D82BD8](v76);
      MEMORY[0x277D82BD8](v77);
      MEMORY[0x277D82BD8](v78);
      MEMORY[0x277D82BD8](v79);
    }

    if (v122)
    {
      v20 = [(AKAuthorizationPaneViewController *)v125 tableView];
      v19 = [(AKAuthorizationPaneViewController *)v125 _newContainerView];
      [(UITableView *)v20 setTableFooterView:?];
      MEMORY[0x277D82BD8](v19);
      MEMORY[0x277D82BD8](v20);
      v23 = [(AKAuthorizationPaneViewController *)v125 tableView];
      v22 = [(UITableView *)v23 tableFooterView];
      v21 = [(AKAuthorizationPaneViewController *)v125 blurryTray];
      [(UIView *)v22 addSubview:?];
      MEMORY[0x277D82BD8](v21);
      MEMORY[0x277D82BD8](v22);
      MEMORY[0x277D82BD8](v23);
      v48 = [(AKAuthorizationPaneViewController *)v125 blurryTray];
      v47 = [(UIVisualEffectView *)v48 topAnchor];
      v46 = [(AKAuthorizationPaneViewController *)v125 tableView];
      v45 = [(UITableView *)v46 tableFooterView];
      v44 = [(UIView *)v45 topAnchor];
      v43 = [v47 constraintEqualToAnchor:?];
      v127[0] = v43;
      v42 = [(AKAuthorizationPaneViewController *)v125 blurryTray];
      v41 = [(UIVisualEffectView *)v42 bottomAnchor];
      v40 = [(AKAuthorizationPaneViewController *)v125 tableView];
      v39 = [(UITableView *)v40 tableFooterView];
      v38 = [(UIView *)v39 bottomAnchor];
      v37 = [v41 constraintEqualToAnchor:?];
      v127[1] = v37;
      v36 = [(AKAuthorizationPaneViewController *)v125 blurryTray];
      v35 = [(UIVisualEffectView *)v36 leadingAnchor];
      v34 = [(AKAuthorizationPaneViewController *)v125 tableView];
      v33 = [(UITableView *)v34 tableFooterView];
      v32 = [(UIView *)v33 leadingAnchor];
      v31 = [v35 constraintEqualToAnchor:?];
      v127[2] = v31;
      v30 = [(AKAuthorizationPaneViewController *)v125 blurryTray];
      v29 = [(UIVisualEffectView *)v30 trailingAnchor];
      v28 = [(AKAuthorizationPaneViewController *)v125 tableView];
      v27 = [(UITableView *)v28 tableFooterView];
      v26 = [(UIView *)v27 trailingAnchor];
      v25 = [v29 constraintEqualToAnchor:?];
      v127[3] = v25;
      v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v127 count:4];
      [v116 addObjectsFromArray:?];
      MEMORY[0x277D82BD8](v24);
      MEMORY[0x277D82BD8](v25);
      MEMORY[0x277D82BD8](v26);
      MEMORY[0x277D82BD8](v27);
      MEMORY[0x277D82BD8](v28);
      MEMORY[0x277D82BD8](v29);
      MEMORY[0x277D82BD8](v30);
      MEMORY[0x277D82BD8](v31);
      MEMORY[0x277D82BD8](v32);
      MEMORY[0x277D82BD8](v33);
      MEMORY[0x277D82BD8](v34);
      MEMORY[0x277D82BD8](v35);
      MEMORY[0x277D82BD8](v36);
      MEMORY[0x277D82BD8](v37);
      MEMORY[0x277D82BD8](v38);
      MEMORY[0x277D82BD8](v39);
      MEMORY[0x277D82BD8](v40);
      MEMORY[0x277D82BD8](v41);
      MEMORY[0x277D82BD8](v42);
      MEMORY[0x277D82BD8](v43);
      MEMORY[0x277D82BD8](v44);
      MEMORY[0x277D82BD8](v45);
      MEMORY[0x277D82BD8](v46);
      MEMORY[0x277D82BD8](v47);
      MEMORY[0x277D82BD8](v48);
    }

    else
    {
      v4 = [(AKAuthorizationPaneViewController *)v125 view];
      v3 = [(AKAuthorizationPaneViewController *)v125 blurryTray];
      [v4 addSubview:?];
      MEMORY[0x277D82BD8](v3);
      MEMORY[0x277D82BD8](v4);
      v18 = [(AKAuthorizationPaneViewController *)v125 blurryTray];
      v17 = [(UIVisualEffectView *)v18 heightAnchor];
      +[AKAuthorizationPaneMetrics blurryTrayHeight];
      v16 = [v17 constraintGreaterThanOrEqualToConstant:?];
      v126[0] = v16;
      v15 = [(AKAuthorizationPaneViewController *)v125 blurryTray];
      v14 = [(UIVisualEffectView *)v15 bottomAnchor];
      v13 = [(AKAuthorizationPaneViewController *)v125 view];
      v12 = [v13 bottomAnchor];
      v11 = [v14 constraintEqualToAnchor:?];
      v126[1] = v11;
      v10 = [(AKAuthorizationPaneViewController *)v125 blurryTray];
      v9 = [(UIVisualEffectView *)v10 centerXAnchor];
      v8 = [(AKAuthorizationPaneViewController *)v125 view];
      v7 = [v8 centerXAnchor];
      v6 = [v9 constraintEqualToAnchor:?];
      v126[2] = v6;
      v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v126 count:3];
      [v116 addObjectsFromArray:?];
      MEMORY[0x277D82BD8](v5);
      MEMORY[0x277D82BD8](v6);
      MEMORY[0x277D82BD8](v7);
      MEMORY[0x277D82BD8](v8);
      MEMORY[0x277D82BD8](v9);
      MEMORY[0x277D82BD8](v10);
      MEMORY[0x277D82BD8](v11);
      MEMORY[0x277D82BD8](v12);
      MEMORY[0x277D82BD8](v13);
      MEMORY[0x277D82BD8](v14);
      MEMORY[0x277D82BD8](v15);
      MEMORY[0x277D82BD8](v16);
      MEMORY[0x277D82BD8](v17);
      MEMORY[0x277D82BD8](v18);
    }

    [MEMORY[0x277CCAAD0] activateConstraints:v116];
    objc_storeStrong(&v116, 0);
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

- (double)_contentTrayOffsetAdjustedForScrollInset:(BOOL)a3
{
  v45 = self;
  v44 = a2;
  v43 = a3;
  if ([(AKAuthorizationPaneViewController *)self _shouldEmbedContentTray])
  {
    return 0.0;
  }

  location = [(AKAuthorizationPaneViewController *)v45 _indexPathForLastRow];
  v38 = *MEMORY[0x277CBF3A0];
  v40 = *(MEMORY[0x277CBF3A0] + 16);
  if ([location row] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v29 = [(AKAuthorizationPaneViewController *)v45 tableView];
    v28 = [(UITableView *)v29 tableHeaderView];
    [(UIView *)v28 frame];
    *&v34 = v7;
    *(&v34 + 1) = v8;
    *&v35 = v9;
    *(&v35 + 1) = v10;
    v39 = v34;
    v41 = v35;
    MEMORY[0x277D82BD8](v28);
    MEMORY[0x277D82BD8](v29);
  }

  else
  {
    v30 = [(AKAuthorizationPaneViewController *)v45 tableView];
    [(UITableView *)v30 rectForRowAtIndexPath:location];
    *&v36 = v3;
    *(&v36 + 1) = v4;
    *&v37 = v5;
    *(&v37 + 1) = v6;
    v39 = v36;
    v41 = v37;
    MEMORY[0x277D82BD8](v30);
  }

  v27 = [(AKAuthorizationPaneViewController *)v45 tableView];
  v26 = [(AKAuthorizationPaneViewController *)v45 view];
  [(UITableView *)v27 convertRect:v39 toView:v41];
  v33.origin.x = v11;
  v33.origin.y = v12;
  v33.size.width = v13;
  v33.size.height = v14;
  MEMORY[0x277D82BD8](v26);
  MEMORY[0x277D82BD8](v27);
  if (v43)
  {
    v24 = [(AKAuthorizationPaneViewController *)v45 tableView];
    [(UITableView *)v24 contentOffset];
    v25 = v15;
    [(AKAuthorizationPaneViewController *)v45 _navigationBarHeaderHeight];
    v33.origin.y = v33.origin.y + v25 + v16;
    MEMORY[0x277D82BD8](v24);
  }

  v31 = 0;
  if (v43)
  {
    [(AKAuthorizationPaneViewController *)v45 contentScrollOffset];
    Height = v17;
  }

  else
  {
    v32 = [(AKAuthorizationPaneViewController *)v45 blurryTray];
    v31 = 1;
    [(UIVisualEffectView *)v32 frame];
    Height = CGRectGetHeight(v47);
  }

  if (v31)
  {
    MEMORY[0x277D82BD8](v32);
  }

  MaxY = CGRectGetMaxY(v33);
  v20 = [(AKAuthorizationPaneViewController *)v45 view];
  [v20 frame];
  v22 = MaxY - (CGRectGetMaxY(v48) - Height);
  MEMORY[0x277D82BD8](v20);
  if (v43 && v22 > 0.0)
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
  v7 = [(AKAuthorizationPaneViewController *)self tableView];
  [(UITableView *)v7 contentOffset];
  v5 = v2;
  v6 = [(AKAuthorizationPaneViewController *)self navigationController];
  v4 = [v6 navigationBar];
  [v4 frame];
  v8 = v5 > -CGRectGetHeight(v10);
  MEMORY[0x277D82BD8](v4);
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BD8](v7);
  return v8;
}

- (double)contentScrollOffset
{
  v3 = [(AKAuthorizationPaneViewController *)self blurryTray];
  [(UIVisualEffectView *)v3 frame];
  Height = CGRectGetHeight(v5);
  MEMORY[0x277D82BD8](v3);
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
  v19 = self;
  location[1] = a2;
  location[0] = [(AKAuthorizationPaneViewController *)self tableView];
  v8 = [location[0] tableHeaderView];
  v10 = MEMORY[0x277D76C78];
  [v8 systemLayoutSizeFittingSize:{*MEMORY[0x277D76C78], *(MEMORY[0x277D76C78] + 8)}];
  v9 = v2;
  MEMORY[0x277D82BD8](v8);
  v11 = [location[0] tableFooterView];
  [v11 systemLayoutSizeFittingSize:{*v10, v10[1]}];
  v12 = v3;
  MEMORY[0x277D82BD8](v11);
  v16 = 0;
  if (v12 == 0.0)
  {
    v17 = [(AKAuthorizationPaneViewController *)v19 blurryTray];
    v16 = 1;
    [(UIVisualEffectView *)v17 frame];
    Height = CGRectGetHeight(v20);
  }

  else
  {
    Height = 0.0;
  }

  if (v16)
  {
    MEMORY[0x277D82BD8](v17);
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
  v9 = [MEMORY[0x277D759A0] mainScreen];
  [v9 bounds];
  v10 = v2;
  MEMORY[0x277D82BD8](v9);
  v11 = [MEMORY[0x277CF0228] sharedManager];
  v20 = 0;
  v18 = 0;
  v16 = 0;
  v14 = 0;
  v12 = 0;
  if ([v11 isAuthKitSolariumFeatureEnabled])
  {
    v21 = [(AKAuthorizationPaneViewController *)self view];
    v20 = 1;
    v19 = [v21 window];
    v18 = 1;
    v8 = 1;
    if ([v19 interfaceOrientation] != 4)
    {
      v17 = [(AKAuthorizationPaneViewController *)self view];
      v16 = 1;
      v15 = [v17 window];
      v14 = 1;
      v8 = [v15 interfaceOrientation] == 3;
    }

    v12 = v8;
  }

  if (v14)
  {
    MEMORY[0x277D82BD8](v15);
  }

  if (v16)
  {
    MEMORY[0x277D82BD8](v17);
  }

  if (v18)
  {
    MEMORY[0x277D82BD8](v19);
  }

  if (v20)
  {
    MEMORY[0x277D82BD8](v21);
  }

  MEMORY[0x277D82BD8](v11);
  if (v12)
  {
    return v10 * 4.0 / 5.0;
  }

  +[AKAuthorizationPaneMetrics maximumContentHeightFactor];
  v13 = v10 * v3;
  v6 = [MEMORY[0x277CF0228] sharedManager];
  v7 = [v6 isLisbonAvailable];
  MEMORY[0x277D82BD8](v6);
  if (!v7)
  {
    [(AKAuthorizationPaneViewController *)self _navigationBarHeaderHeight];
    return v13 - v4;
  }

  return v13;
}

- (double)maximumContentWidth
{
  v8 = [MEMORY[0x277CF0228] sharedManager];
  v16 = 0;
  v14 = 0;
  v12 = 0;
  v10 = 0;
  v9 = 0;
  if ([v8 isAuthKitSolariumFeatureEnabled])
  {
    v17 = [(AKAuthorizationPaneViewController *)self view];
    v16 = 1;
    v15 = [v17 window];
    v14 = 1;
    v7 = 1;
    if ([v15 interfaceOrientation] != 4)
    {
      v13 = [(AKAuthorizationPaneViewController *)self view];
      v12 = 1;
      v11 = [v13 window];
      v10 = 1;
      v7 = [v11 interfaceOrientation] == 3;
    }

    v9 = v7;
  }

  if (v10)
  {
    MEMORY[0x277D82BD8](v11);
  }

  if (v12)
  {
    MEMORY[0x277D82BD8](v13);
  }

  if (v14)
  {
    MEMORY[0x277D82BD8](v15);
  }

  if (v16)
  {
    MEMORY[0x277D82BD8](v17);
  }

  MEMORY[0x277D82BD8](v8);
  if (v9)
  {
    v6 = [MEMORY[0x277D759A0] mainScreen];
    [v6 bounds];
    v19 = v2 / 2.0;
    MEMORY[0x277D82BD8](v6);
  }

  else
  {
    v5 = [MEMORY[0x277D759A0] mainScreen];
    [v5 bounds];
    v19 = v3;
    MEMORY[0x277D82BD8](v5);
  }

  return v19;
}

- (void)sizeToFitPaneContent
{
  v46[1] = *MEMORY[0x277D85DE8];
  v45 = self;
  v44 = a2;
  if ([(AKAuthorizationPaneViewController *)self isViewLoaded])
  {
    v24 = [MEMORY[0x277D75418] currentDevice];
    v25 = [v24 userInterfaceIdiom];
    MEMORY[0x277D82BD8](v24);
    if (v25 != 1)
    {
      v21 = [(AKAuthorizationPaneViewController *)v45 view];
      [v21 bounds];
      v42 = v47;
      Width = CGRectGetWidth(v47);
      MEMORY[0x277D82BD8](v21);
      v43 = Width;
      [(AKAuthorizationPaneViewController *)v45 intrinsicContentHeight];
      v41 = v2;
      v23 = v2;
      [(AKAuthorizationPaneViewController *)v45 maximumContentHeight];
      if (v23 > v3)
      {
        [(AKAuthorizationPaneViewController *)v45 maximumContentHeight];
        v41 = v4;
      }

      v5 = v43;
      if (v43 == 0.0 || ([(AKAuthorizationPaneViewController *)v45 maximumContentWidth], v7 = v6, v5 = v43, v43 > v7))
      {
        [(AKAuthorizationPaneViewController *)v45 maximumContentWidth];
        v43 = v8;
      }

      CGSizeMake_0();
      *&v40 = v9;
      *(&v40 + 1) = v10;
      v39 = v40;
      [(AKAuthorizationPaneViewController *)v45 setPreferredContentSize:v9, v10];
      v19 = [MEMORY[0x277CF0228] sharedManager];
      v20 = [v19 isAuthKitSolariumFeatureEnabled];
      MEMORY[0x277D82BD8](v19);
      if (v20)
      {
        v38 = [(AKAuthorizationPaneViewController *)v45 sheetPresentationController];
        if (v38)
        {
          [v38 setDelegate:v45];
          v37 = MEMORY[0x277D82BE0](@"detentIdentifier");
          v15 = MEMORY[0x277D75A28];
          v14 = v37;
          v30 = MEMORY[0x277D85DD0];
          v31 = -1073741824;
          v32 = 0;
          v33 = __57__AKAuthorizationPaneViewController_sizeToFitPaneContent__block_invoke;
          v34 = &unk_2784A5E70;
          v35 = MEMORY[0x277D82BE0](v45);
          location = [v15 customDetentWithIdentifier:v14 resolver:&v30];
          v16 = [(AKAuthorizationPaneViewController *)v45 view];
          v17 = [v16 window];
          v28 = 0;
          v26 = 0;
          v18 = 1;
          if ([v17 interfaceOrientation] != 4)
          {
            v29 = [(AKAuthorizationPaneViewController *)v45 view];
            v28 = 1;
            v27 = [v29 window];
            v26 = 1;
            v18 = [v27 interfaceOrientation] == 3;
          }

          if (v26)
          {
            MEMORY[0x277D82BD8](v27);
          }

          if (v28)
          {
            MEMORY[0x277D82BD8](v29);
          }

          MEMORY[0x277D82BD8](v17);
          MEMORY[0x277D82BD8](v16);
          if (v18)
          {
            [v38 setPrefersEdgeAttachedInCompactHeight:1];
            [v38 setWidthFollowsPreferredContentSizeWhenEdgeAttached:1];
          }

          else
          {
            v12 = v38;
            v46[0] = location;
            v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v46 count:1];
            [v12 setDetents:?];
            MEMORY[0x277D82BD8](v13);
            [v38 setSelectedDetentIdentifier:v37];
          }

          objc_storeStrong(&location, 0);
          objc_storeStrong(&v35, 0);
          objc_storeStrong(&v37, 0);
        }

        objc_storeStrong(&v38, 0);
      }

      v11 = [(AKAuthorizationPaneViewController *)v45 view];
      [v11 layoutIfNeeded];
      MEMORY[0x277D82BD8](v11);
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

- (void)traitCollectionDidChange:(id)a3
{
  v9 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v7.receiver = v9;
  v7.super_class = AKAuthorizationPaneViewController;
  [(AKAuthorizationPaneViewController *)&v7 traitCollectionDidChange:location[0]];
  v5 = [(AKAuthorizationPaneViewController *)v9 traitCollection];
  v4 = [v5 preferredContentSizeCategory];
  v3 = [location[0] preferredContentSizeCategory];
  v6 = [v4 isEqualToString:?];
  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](v4);
  MEMORY[0x277D82BD8](v5);
  if (!v6)
  {
    [(AKAuthorizationPaneViewController *)v9 sizeToFitPaneContent];
  }

  objc_storeStrong(location, 0);
}

- (double)_deviceSafeAreaBottomInset
{
  v7[2] = self;
  v7[1] = a2;
  v5 = [MEMORY[0x277D75128] sharedApplication];
  v4 = [v5 windows];
  v7[0] = [v4 firstObject];
  MEMORY[0x277D82BD8](v4);
  MEMORY[0x277D82BD8](v5);
  [v7[0] _sceneSafeAreaInsetsIncludingStatusBar:0];
  v6 = v2;
  objc_storeStrong(v7, 0);
  return v6;
}

- (double)_navigationBarHeaderHeight
{
  v4 = [(AKAuthorizationPaneViewController *)self navigationController];
  v3 = [v4 navigationBar];
  [v3 frame];
  Height = CGRectGetHeight(v6);
  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](v4);
  return Height;
}

- (void)scrollViewDidScroll:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [(AKAuthorizationPaneViewController *)v4 _adjustForPositionOfScrollView:location[0]];
  objc_storeStrong(location, 0);
}

- (void)_adjustForPositionOfScrollView:(id)a3
{
  v18[1] = *MEMORY[0x277D85DE8];
  v17 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [location[0] contentOffset];
  v12 = v3;
  v10 = [(AKAuthorizationPaneViewController *)v17 navigationController];
  v11 = [v10 navigationBar];
  [v11 frame];
  v14 = 0;
  v13 = 0;
  if (v12 > -CGRectGetHeight(v19))
  {
    v15 = [MEMORY[0x277CF0228] sharedManager];
    v14 = 1;
    v13 = [v15 isAuthKitSolariumFeatureEnabled] == 0;
  }

  if (v14)
  {
    MEMORY[0x277D82BD8](v15);
  }

  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v10);
  if (v13)
  {
    v9 = [MEMORY[0x277D75210] effectWithStyle:{+[AKAuthorizationAppearance paneBlurEffectStyle](AKAuthorizationAppearance, "paneBlurEffectStyle")}];
    v18[0] = v9;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:1];
    v7 = [(AKAuthorizationPaneViewController *)v17 navigationController];
    v6 = [v7 navigationBar];
    [v6 setBackgroundEffects:v8];
    MEMORY[0x277D82BD8](v6);
    MEMORY[0x277D82BD8](v7);
    MEMORY[0x277D82BD8](v8);
    MEMORY[0x277D82BD8](v9);
  }

  else
  {
    v5 = [(AKAuthorizationPaneViewController *)v17 navigationController];
    v4 = [v5 navigationBar];
    [v4 setBackgroundEffects:0];
    MEMORY[0x277D82BD8](v4);
    MEMORY[0x277D82BD8](v5);
  }

  [(AKAuthorizationPaneViewController *)v17 _updateBlurForTray];
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_storeStrong(location, 0);
  return 0;
}

- (id)tableView:(id)a3 viewForFooterInSection:(int64_t)a4
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_storeStrong(location, 0);
  return 0;
}

- (double)tableView:(id)a3 heightForFooterInSection:(int64_t)a4
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5 = *MEMORY[0x277D76F30];
  objc_storeStrong(location, 0);
  return v5;
}

- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (a4)
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

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v6 = 0;
  objc_storeStrong(&v6, a4);
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
  return 0;
}

- (int64_t)numberOfSectionsInTableView:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_storeStrong(location, 0);
  return 0;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_storeStrong(location, 0);
  return 0;
}

- (id)_newContainerView
{
  v5[2] = self;
  v5[1] = a2;
  v5[0] = objc_alloc_init(MEMORY[0x277D75D18]);
  v3 = [MEMORY[0x277D75348] clearColor];
  [v5[0] setBackgroundColor:?];
  MEMORY[0x277D82BD8](v3);
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
  v6 = [(AKAuthorizationPaneViewController *)self tableView];
  v7 = [(AKAuthorizationPaneViewController *)self _safeIndexWithCount:[(UITableView *)v6 numberOfSections]];
  MEMORY[0x277D82BD8](v6);
  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = [MEMORY[0x277CCAA70] indexPathForRow:0x7FFFFFFFFFFFFFFFLL inSection:?];
  }

  else
  {
    v3 = [(AKAuthorizationPaneViewController *)self tableView];
    v4 = [(AKAuthorizationPaneViewController *)self _safeIndexWithCount:[(UITableView *)v3 numberOfRowsInSection:v7]];
    MEMORY[0x277D82BD8](v3);
    v9 = [MEMORY[0x277CCAA70] indexPathForRow:v4 inSection:v7];
  }

  return v9;
}

- (int64_t)_safeIndexWithCount:(int64_t)a3
{
  if (a3 - 1 < 0)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    return a3 - 1;
  }
}

- (AKAuthorizationPaneViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v9 = self;
  v8 = a2;
  location = 0;
  objc_storeStrong(&location, a3);
  v6 = 0;
  objc_storeStrong(&v6, a4);
  [(AKAuthorizationPaneViewController *)v9 doesNotRecognizeSelector:v8];
  objc_storeStrong(&v6, 0);
  objc_storeStrong(&location, 0);
  objc_storeStrong(&v9, 0);
  return 0;
}

- (AKAuthorizationPaneViewController)initWithCoder:(id)a3
{
  v6 = self;
  v5 = a2;
  location = 0;
  objc_storeStrong(&location, a3);
  [(AKAuthorizationPaneViewController *)v6 doesNotRecognizeSelector:v5];
  objc_storeStrong(&location, 0);
  objc_storeStrong(&v6, 0);
  return 0;
}

- (AKAuthorizationPaneViewController)initWithStyle:(int64_t)a3
{
  v4 = self;
  [(AKAuthorizationPaneViewController *)self doesNotRecognizeSelector:a2];
  objc_storeStrong(&v4, 0);
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