@interface ASCredentialRequestPaneViewController
- (ASCredentialRequestPaneViewControllerDelegate)delegate;
- (BOOL)_isContentUnderTray;
- (UIBarButtonItem)cancelBarButtonItem;
- (double)_blurryTrayMinimumHeight;
- (double)_intrinsicContentHeight;
- (double)_maximumContentHeight;
- (id)_indexPathForLastRow;
- (id)_newContainerView;
- (id)_newStackView;
- (id)initRequiringTableView:(BOOL)a3;
- (int64_t)_safeIndexWithCount:(int64_t)a3;
- (void)_adjustForPositionOfScrollView:(id)a3;
- (void)_cancelButtonSelected:(id)a3;
- (void)_setCompressedHeightForView:(id)a3;
- (void)_setUpContexts;
- (void)_updateBlurForTray;
- (void)traitCollectionDidChange:(id)a3;
- (void)updatePreferredContentSizeAndLayoutIfNeeded:(BOOL)a3 allowShrinking:(BOOL)a4;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewSafeAreaInsetsDidChange;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation ASCredentialRequestPaneViewController

- (id)initRequiringTableView:(BOOL)a3
{
  v10.receiver = self;
  v10.super_class = ASCredentialRequestPaneViewController;
  v4 = [(ASCredentialRequestPaneViewController *)&v10 initWithNibName:0 bundle:0];
  v5 = v4;
  if (v4)
  {
    v4->_isTableViewRequired = a3;
    [(ASCredentialRequestPaneViewController *)v4 setModalInPresentation:1];
    v6 = objc_alloc_init(_ASNavigationTitleView);
    v7 = [(ASCredentialRequestPaneViewController *)v5 navigationItem];
    [v7 setTitleView:v6];

    v8 = v5;
  }

  return v5;
}

- (void)viewDidLoad
{
  v152[10] = *MEMORY[0x1E69E9840];
  v145.receiver = self;
  v145.super_class = ASCredentialRequestPaneViewController;
  [(ASCredentialRequestPaneViewController *)&v145 viewDidLoad];
  v3 = [(ASCredentialRequestPaneViewController *)self view];
  v4 = [(ASCredentialRequestPaneViewController *)self _newStackView];
  paneHeaderStackView = self->_paneHeaderStackView;
  self->_paneHeaderStackView = v4;

  v144 = v3;
  if (self->_isTableViewRequired)
  {
    v6 = [(ASCredentialRequestPaneViewController *)self view];
    [v6 bounds];
    Width = CGRectGetWidth(v153);

    v8 = [objc_alloc(MEMORY[0x1E69DD020]) initWithFrame:+[ASViewServiceInterfaceUtilities tableViewStyle](ASViewServiceInterfaceUtilities style:{"tableViewStyle"), 0.0, 0.0, Width, 0.0}];
    tableView = self->_tableView;
    self->_tableView = v8;

    [(UITableView *)self->_tableView setTranslatesAutoresizingMaskIntoConstraints:0];
    v10 = [MEMORY[0x1E69DC888] clearColor];
    [(UITableView *)self->_tableView setBackgroundColor:v10];

    [(UITableView *)self->_tableView setAlwaysBounceVertical:0];
    [(UITableView *)self->_tableView setShowsVerticalScrollIndicator:0];
    +[ASViewServiceInterfaceUtilities tableViewRowHeight];
    [(UITableView *)self->_tableView setEstimatedRowHeight:?];
    [(UITableView *)self->_tableView setSeparatorInsetReference:1];
    [(UITableView *)self->_tableView setDelegate:self];
    [(UITableView *)self->_tableView _setSectionContentInset:0.0, 32.0, 0.0, 32.0];
    v11 = [(ASCredentialRequestPaneViewController *)self _newContainerView];
    [(UITableView *)self->_tableView setTableHeaderView:v11];

    v12 = [(UITableView *)self->_tableView tableHeaderView];
    [v12 setTranslatesAutoresizingMaskIntoConstraints:0];

    v13 = [(UITableView *)self->_tableView tableHeaderView];
    [v13 addSubview:self->_paneHeaderStackView];

    [v3 addSubview:self->_tableView];
    v14 = [objc_alloc(MEMORY[0x1E69DD298]) initWithEffect:0];
    blurryTray = self->_blurryTray;
    self->_blurryTray = v14;

    [(UIVisualEffectView *)self->_blurryTray setTranslatesAutoresizingMaskIntoConstraints:0];
    v16 = [(ASCredentialRequestPaneViewController *)self _newStackView];
    paneFooterStackView = self->_paneFooterStackView;
    self->_paneFooterStackView = v16;

    v18 = [(UIVisualEffectView *)self->_blurryTray contentView];
    [v18 addSubview:self->_paneFooterStackView];

    [(ASCredentialRequestPaneViewController *)self _footerStackViewSpacing];
    [(UIStackView *)self->_paneFooterStackView setSpacing:?];
    [v3 addSubview:self->_blurryTray];
    [(ASCredentialRequestPaneViewController *)self _setUpContexts];
    v108 = MEMORY[0x1E696ACD8];
    v133 = [(UIStackView *)self->_paneHeaderStackView topAnchor];
    v141 = [(UITableView *)self->_tableView tableHeaderView];
    v128 = [v141 topAnchor];
    v123 = [v133 constraintEqualToAnchor:v128];
    v151[0] = v123;
    v113 = [(UIStackView *)self->_paneHeaderStackView bottomAnchor];
    v118 = [(UITableView *)self->_tableView tableHeaderView];
    v110 = [v118 bottomAnchor];
    v106 = [v113 constraintEqualToAnchor:v110];
    v151[1] = v106;
    v104 = [(UIStackView *)self->_paneHeaderStackView leadingAnchor];
    v19 = [(UITableView *)self->_tableView tableHeaderView];
    v20 = [v19 leadingAnchor];
    v21 = [v104 constraintEqualToAnchor:v20];
    v151[2] = v21;
    v22 = [(UIStackView *)self->_paneHeaderStackView trailingAnchor];
    v23 = [(UITableView *)self->_tableView tableHeaderView];
    v24 = [v23 trailingAnchor];
    v25 = [v22 constraintEqualToAnchor:v24];
    v151[3] = v25;
    v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v151 count:4];
    [v108 activateConstraints:v26];

    v114 = MEMORY[0x1E696ACD8];
    v142 = [(UITableView *)self->_tableView centerXAnchor];
    v134 = [v144 centerXAnchor];
    v129 = [v142 constraintEqualToAnchor:v134];
    v150[0] = v129;
    v124 = [(UITableView *)self->_tableView widthAnchor];
    v119 = [v144 widthAnchor];
    v27 = [v124 constraintEqualToAnchor:v119];
    v150[1] = v27;
    v28 = [(UITableView *)self->_tableView topAnchor];
    v29 = [v144 topAnchor];
    v30 = [v28 constraintEqualToAnchor:v29];
    v150[2] = v30;
    v31 = [(UITableView *)self->_tableView bottomAnchor];
    v32 = [(UIVisualEffectView *)self->_blurryTray topAnchor];
    v33 = [v31 constraintEqualToAnchor:v32];
    v150[3] = v33;
    v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:v150 count:4];
    [v114 activateConstraints:v34];

    v35 = [(UIVisualEffectView *)self->_blurryTray heightAnchor];
    v36 = [v35 constraintEqualToConstant:0.0];

    [v36 priority];
    *&v38 = v37 + -1.0;
    [v36 setPriority:v38];
    v115 = MEMORY[0x1E696ACD8];
    v143 = v36;
    v149[0] = v36;
    v135 = [(UIVisualEffectView *)self->_blurryTray heightAnchor];
    [(ASCredentialRequestPaneViewController *)self _blurryTrayMinimumHeight];
    v130 = [v135 constraintGreaterThanOrEqualToConstant:?];
    v149[1] = v130;
    v125 = [(UIVisualEffectView *)self->_blurryTray widthAnchor];
    v120 = [v144 widthAnchor];
    v39 = [v125 constraintEqualToAnchor:v120];
    v149[2] = v39;
    v40 = [(UIVisualEffectView *)self->_blurryTray bottomAnchor];
    v41 = [v144 bottomAnchor];
    v42 = [v40 constraintEqualToAnchor:v41];
    v149[3] = v42;
    v43 = [(UIVisualEffectView *)self->_blurryTray centerXAnchor];
    v44 = [v144 centerXAnchor];
    v45 = [v43 constraintEqualToAnchor:v44];
    v149[4] = v45;
    v46 = [MEMORY[0x1E695DEC8] arrayWithObjects:v149 count:5];
    [v115 activateConstraints:v46];

    v47 = [(UIStackView *)self->_paneFooterStackView leadingAnchor];
    v48 = [(UIVisualEffectView *)self->_blurryTray contentView];
    v49 = [v48 leadingAnchor];
    v50 = [v47 constraintEqualToAnchor:v49 constant:32.0];
    v148[0] = v50;
    v51 = [(UIVisualEffectView *)self->_blurryTray contentView];
    v52 = [v51 trailingAnchor];
    v53 = [(UIStackView *)self->_paneFooterStackView trailingAnchor];
    v54 = [v52 constraintEqualToAnchor:v53 constant:32.0];
    v148[1] = v54;
    v55 = [MEMORY[0x1E695DEC8] arrayWithObjects:v148 count:2];
    v136 = [v55 mutableCopy];

    v126 = [(UIVisualEffectView *)self->_blurryTray bottomAnchor];
    v131 = [(ASCredentialRequestPaneViewController *)self view];
    v121 = [v131 bottomAnchor];
    v116 = [v126 constraintEqualToAnchor:v121];
    v147[0] = v116;
    v111 = [(UIStackView *)self->_paneFooterStackView topAnchor];
    v56 = [(UIVisualEffectView *)self->_blurryTray contentView];
    v57 = [v56 topAnchor];
    v58 = [v111 constraintGreaterThanOrEqualToAnchor:v57 constant:24.0];
    v147[1] = v58;
    v59 = [(UIStackView *)self->_paneFooterStackView bottomAnchor];
    v60 = [(UIVisualEffectView *)self->_blurryTray contentView];
    v61 = [v60 bottomAnchor];
    v62 = [v59 constraintLessThanOrEqualToAnchor:v61 constant:-38.0];
    v147[2] = v62;
    v63 = [MEMORY[0x1E695DEC8] arrayWithObjects:v147 count:3];
    v64 = v136;
    [v136 addObjectsFromArray:v63];

    [MEMORY[0x1E696ACD8] activateConstraints:v136];
    v65 = [(UIStackView *)self->_paneHeaderStackView widthAnchor];
    v66 = [v65 constraintEqualToConstant:0.0];
    headerWidthConstraint = self->_headerWidthConstraint;
    self->_headerWidthConstraint = v66;

    v68 = [(UIStackView *)self->_paneFooterStackView widthAnchor];
    v69 = [v68 constraintEqualToConstant:0.0];
    footerWidthConstraint = self->_footerWidthConstraint;
    self->_footerWidthConstraint = v69;

    v71 = MEMORY[0x1E696ACD8];
    v72 = self->_footerWidthConstraint;
    v146[0] = self->_headerWidthConstraint;
    v146[1] = v72;
    v73 = [MEMORY[0x1E695DEC8] arrayWithObjects:v146 count:2];
    [v71 activateConstraints:v73];

    [(ASCredentialRequestPaneViewController *)self sizeToFitPaneContent];
  }

  else
  {
    v74 = objc_alloc_init(MEMORY[0x1E69DCEF8]);
    [v74 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v74 setClipsToBounds:1];
    [v74 setContentInset:{0.0, 0.0, 0.0, 0.0}];
    [v74 setContentInsetAdjustmentBehavior:2];
    [v74 addSubview:self->_paneHeaderStackView];
    [v3 addSubview:v74];
    v75 = [v74 contentLayoutGuide];
    v76 = [v74 frameLayoutGuide];
    v77 = [(UIStackView *)self->_paneHeaderStackView heightAnchor];
    v100 = v76;
    v78 = [v76 heightAnchor];
    v79 = [v77 constraintEqualToAnchor:v78];

    LODWORD(v80) = 1144750080;
    v81 = v79;
    v101 = v79;
    [v79 setPriority:v80];
    v103 = MEMORY[0x1E696ACD8];
    v139 = [v74 topAnchor];
    v140 = [v3 layoutMarginsGuide];
    v138 = [v140 topAnchor];
    v137 = [v139 constraintEqualToSystemSpacingBelowAnchor:v138 multiplier:1.0];
    v152[0] = v137;
    v132 = [v74 leadingAnchor];
    v127 = [v3 leadingAnchor];
    v122 = [v132 constraintEqualToAnchor:v127];
    v152[1] = v122;
    v117 = [v74 trailingAnchor];
    v112 = [v3 trailingAnchor];
    v109 = [v117 constraintEqualToAnchor:v112];
    v152[2] = v109;
    v143 = v74;
    v107 = [v74 bottomAnchor];
    v105 = [v3 bottomAnchor];
    v102 = [v107 constraintEqualToAnchor:v105];
    v152[3] = v102;
    v99 = [(UIStackView *)self->_paneHeaderStackView leadingAnchor];
    v82 = v75;
    v98 = [v75 leadingAnchor];
    v97 = [v99 constraintEqualToAnchor:v98];
    v152[4] = v97;
    v96 = [(UIStackView *)self->_paneHeaderStackView trailingAnchor];
    v95 = [v75 trailingAnchor];
    v94 = [v96 constraintEqualToAnchor:v95];
    v152[5] = v94;
    v93 = [(UIStackView *)self->_paneHeaderStackView topAnchor];
    v92 = [v75 topAnchor];
    v83 = [v93 constraintEqualToAnchor:v92];
    v152[6] = v83;
    v84 = [(UIStackView *)self->_paneHeaderStackView bottomAnchor];
    v85 = [v82 bottomAnchor];
    v86 = [v84 constraintEqualToAnchor:v85];
    v152[7] = v86;
    v152[8] = v81;
    v87 = [(UIStackView *)self->_paneHeaderStackView widthAnchor];
    v88 = [v76 widthAnchor];
    v89 = [v87 constraintEqualToAnchor:v88 constant:-0.0];
    v152[9] = v89;
    v90 = [MEMORY[0x1E695DEC8] arrayWithObjects:v152 count:10];
    [v103 activateConstraints:v90];

    v64 = v82;
    [(ASCredentialRequestPaneViewController *)self _setUpContexts];
    [(ASCredentialRequestPaneViewController *)self sizeToFitPaneContent];
  }

  v91 = *MEMORY[0x1E69E9840];
}

- (void)viewSafeAreaInsetsDidChange
{
  v3.receiver = self;
  v3.super_class = ASCredentialRequestPaneViewController;
  [(ASCredentialRequestPaneViewController *)&v3 viewSafeAreaInsetsDidChange];
  [(UIVisualEffectView *)self->_blurryTray setNeedsUpdateConstraints];
  [(UIVisualEffectView *)self->_blurryTray layoutIfNeeded];
}

- (void)viewWillLayoutSubviews
{
  v6.receiver = self;
  v6.super_class = ASCredentialRequestPaneViewController;
  [(ASCredentialRequestPaneViewController *)&v6 viewWillLayoutSubviews];
  v3 = [(ASCredentialRequestPaneViewController *)self view];
  [v3 frame];
  v5 = v4;

  [(NSLayoutConstraint *)self->_headerWidthConstraint setConstant:v5];
  [(NSLayoutConstraint *)self->_footerWidthConstraint setConstant:v5];
}

- (void)viewDidLayoutSubviews
{
  v7.receiver = self;
  v7.super_class = ASCredentialRequestPaneViewController;
  [(ASCredentialRequestPaneViewController *)&v7 viewDidLayoutSubviews];
  v3 = [(UITableView *)self->_tableView tableHeaderView];
  paneHeaderStackView = v3;
  if (!v3)
  {
    paneHeaderStackView = self->_paneHeaderStackView;
  }

  v5 = paneHeaderStackView;

  v6 = [(UITableView *)self->_tableView tableHeaderView];

  if (v6)
  {
    [(ASCredentialRequestPaneViewController *)self _setCompressedHeightForView:v5];
  }

  [(UIStackView *)v5 layoutIfNeeded];
  [(UITableView *)self->_tableView setNeedsLayout];
  [(UITableView *)self->_tableView layoutIfNeeded];
  [(UIVisualEffectView *)self->_blurryTray setNeedsLayout];
  [(UIVisualEffectView *)self->_blurryTray layoutIfNeeded];
  [(ASCredentialRequestPaneViewController *)self updatePreferredContentSize];
  [(ASCredentialRequestPaneViewController *)self _updateBlurForTray];
}

- (void)_setCompressedHeightForView:(id)a3
{
  v6 = a3;
  [v6 systemLayoutSizeFittingSize:{*MEMORY[0x1E69DE090], *(MEMORY[0x1E69DE090] + 8)}];
  v4 = v3;
  [v6 frame];
  if (v5 != v4)
  {
    [v6 setFrame:?];
  }
}

- (void)updatePreferredContentSizeAndLayoutIfNeeded:(BOOL)a3 allowShrinking:(BOOL)a4
{
  v5 = a3;
  [(ASCredentialRequestPaneViewController *)self _intrinsicContentHeight];
  v8 = v7;
  [(ASCredentialRequestPaneViewController *)self _maximumContentHeight];
  v10 = v9;
  v11 = v8;
  if (!a4)
  {
    [(ASCredentialRequestPaneViewController *)self preferredContentSize];
    if (v8 >= v12)
    {
      v11 = v8;
    }

    else
    {
      v11 = v12;
    }
  }

  if (v11 < 0.0)
  {
    v11 = 0.0;
  }

  if (v11 < v10)
  {
    v10 = v11;
  }

  [(UITableView *)self->_tableView setScrollEnabled:v10 < v8];
  v13 = [(ASCredentialRequestPaneViewController *)self view];
  [v13 bounds];
  v15 = v14;

  [(ASCredentialRequestPaneViewController *)self preferredContentSize];
  if (v17 != v15 || v16 != v10)
  {
    [(ASCredentialRequestPaneViewController *)self setPreferredContentSize:v15, v10];
    if (v5)
    {
      v18 = [(ASCredentialRequestPaneViewController *)self view];
      [v18 layoutIfNeeded];
    }
  }
}

- (void)traitCollectionDidChange:(id)a3
{
  v8.receiver = self;
  v8.super_class = ASCredentialRequestPaneViewController;
  v4 = a3;
  [(ASCredentialRequestPaneViewController *)&v8 traitCollectionDidChange:v4];
  v5 = [(ASCredentialRequestPaneViewController *)self traitCollection:v8.receiver];
  v6 = [v5 preferredContentSizeCategory];
  v7 = [v4 preferredContentSizeCategory];

  LOBYTE(v4) = [v6 isEqualToString:v7];
  if ((v4 & 1) == 0)
  {
    [(ASCredentialRequestPaneViewController *)self sizeToFitPaneContent];
  }
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v9.receiver = self;
  v9.super_class = ASCredentialRequestPaneViewController;
  v7 = a4;
  [(ASCredentialRequestPaneViewController *)&v9 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __92__ASCredentialRequestPaneViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v8[3] = &unk_1E7AF8C58;
  v8[4] = self;
  [v7 animateAlongsideTransition:v8 completion:0];
}

- (double)_blurryTrayMinimumHeight
{
  result = 66.0;
  if (!self->_isTableViewRequired)
  {
    return 0.0;
  }

  return result;
}

- (UIBarButtonItem)cancelBarButtonItem
{
  v2 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:24 target:self action:sel__cancelButtonSelected_];

  return v2;
}

- (void)_cancelButtonSelected:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E698DF70] code:2 userInfo:0];
  [WeakRetained requestPaneViewController:self dismissWithCredential:0 error:v4];
}

- (id)_newStackView
{
  v2 = objc_alloc_init(MEMORY[0x1E69DCF90]);
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v2 setAlignment:0];
  [v2 setAxis:1];
  [v2 setDistribution:0];
  return v2;
}

- (id)_newContainerView
{
  v2 = objc_alloc_init(MEMORY[0x1E69DD250]);
  v3 = [MEMORY[0x1E69DC888] clearColor];
  [v2 setBackgroundColor:v3];

  return v2;
}

- (void)_setUpContexts
{
  v3 = [ASCredentialRequestPaneContext alloc];
  v4 = [(ASCredentialRequestPaneViewController *)self paneHeaderStackView];
  v5 = [(ASCredentialRequestPaneContext *)v3 initWithPaneViewController:self stackView:v4];
  headerPaneContext = self->_headerPaneContext;
  self->_headerPaneContext = v5;

  if (self->_isTableViewRequired)
  {
    v7 = [ASCredentialRequestPaneContext alloc];
    v10 = [(ASCredentialRequestPaneViewController *)self paneFooterStackView];
    v8 = [(ASCredentialRequestPaneContext *)v7 initWithPaneViewController:self stackView:v10];
    footerPaneContext = self->_footerPaneContext;
    self->_footerPaneContext = v8;
  }
}

- (void)_adjustForPositionOfScrollView:(id)a3
{
  v4 = [(ASCredentialRequestPaneViewController *)self navigationController];
  v5 = [v4 navigationBar];
  [v5 setBackgroundEffects:0];

  [(ASCredentialRequestPaneViewController *)self _updateBlurForTray];
}

- (void)_updateBlurForTray
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __59__ASCredentialRequestPaneViewController__updateBlurForTray__block_invoke;
  v2[3] = &unk_1E7AF7608;
  v2[4] = self;
  [MEMORY[0x1E69DD250] animateWithDuration:v2 animations:0.2];
}

void __59__ASCredentialRequestPaneViewController__updateBlurForTray__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _isContentUnderTray];
  if (v2)
  {
    v3 = [MEMORY[0x1E69DC730] effectWithStyle:4];
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  [*(*(a1 + 32) + 1000) setEffect:v3];
  if (v2)
  {
  }
}

- (BOOL)_isContentUnderTray
{
  if (!self->_isTableViewRequired)
  {
    return 0;
  }

  v3 = [(ASCredentialRequestPaneViewController *)self _indexPathForLastRow];
  if ([v3 row] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = 0;
  }

  else
  {
    [(UITableView *)self->_tableView rectForRowAtIndexPath:v3];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    tableView = self->_tableView;
    v14 = [(ASCredentialRequestPaneViewController *)self view];
    [(UITableView *)tableView convertRect:v14 toView:v6, v8, v10, v12];
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v22 = v21;

    v25.origin.x = v16;
    v25.origin.y = v18;
    v25.size.width = v20;
    v25.size.height = v22;
    MaxY = CGRectGetMaxY(v25);
    [(UIVisualEffectView *)self->_blurryTray frame];
    v4 = MaxY > CGRectGetMinY(v26);
  }

  return v4;
}

- (id)_indexPathForLastRow
{
  v3 = [(ASCredentialRequestPaneViewController *)self _safeIndexWithCount:[(UITableView *)self->_tableView numberOfSections]];
  if (v3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = MEMORY[0x1E696AC88];
    v5 = 0x7FFFFFFFFFFFFFFFLL;
    v6 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
    v5 = [(ASCredentialRequestPaneViewController *)self _safeIndexWithCount:[(UITableView *)self->_tableView numberOfRowsInSection:v3]];
    v4 = MEMORY[0x1E696AC88];
    v6 = v7;
  }

  v8 = [v4 indexPathForRow:v5 inSection:v6];

  return v8;
}

- (int64_t)_safeIndexWithCount:(int64_t)a3
{
  if (a3 <= 0)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    return a3 - 1;
  }
}

- (double)_maximumContentHeight
{
  v3 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v3 bounds];
  v5 = v4;

  v6 = [(ASCredentialRequestPaneViewController *)self navigationController];
  v7 = [v6 navigationBar];
  [v7 bounds];
  v9 = v5 * 0.86 - v8;

  return v9;
}

- (double)_intrinsicContentHeight
{
  v3 = [(ASCredentialRequestPaneViewController *)self tableView];
  v4 = [(ASCredentialRequestPaneViewController *)self paneHeaderStackView];
  [v4 bounds];
  v6 = v5;
  LODWORD(v5) = 1148846080;
  LODWORD(v7) = 1112014848;
  v8 = 0.0;
  [v4 systemLayoutSizeFittingSize:v6 withHorizontalFittingPriority:0.0 verticalFittingPriority:{v5, v7}];
  v10 = v9;
  [(UIVisualEffectView *)self->_blurryTray frame];
  Height = CGRectGetHeight(v17);
  if ([v3 numberOfSections] >= 1)
  {
    v12 = 0;
    do
    {
      if (![v3 numberOfRowsInSection:v12])
      {
        break;
      }

      [v3 rectForSection:v12];
      v8 = v8 + CGRectGetHeight(v18);
      ++v12;
    }

    while (v12 < [v3 numberOfSections]);
  }

  v13 = 12.0;
  if (v8 != 0.0)
  {
    v13 = v8;
  }

  v14 = Height + v10 + v13;
  v15 = ceilf(v14);

  return v15;
}

- (ASCredentialRequestPaneViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end