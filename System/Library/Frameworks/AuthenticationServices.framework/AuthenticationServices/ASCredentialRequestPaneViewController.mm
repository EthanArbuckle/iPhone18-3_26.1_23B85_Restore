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
- (id)initRequiringTableView:(BOOL)view;
- (int64_t)_safeIndexWithCount:(int64_t)count;
- (void)_adjustForPositionOfScrollView:(id)view;
- (void)_cancelButtonSelected:(id)selected;
- (void)_setCompressedHeightForView:(id)view;
- (void)_setUpContexts;
- (void)_updateBlurForTray;
- (void)traitCollectionDidChange:(id)change;
- (void)updatePreferredContentSizeAndLayoutIfNeeded:(BOOL)needed allowShrinking:(BOOL)shrinking;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewSafeAreaInsetsDidChange;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation ASCredentialRequestPaneViewController

- (id)initRequiringTableView:(BOOL)view
{
  v10.receiver = self;
  v10.super_class = ASCredentialRequestPaneViewController;
  v4 = [(ASCredentialRequestPaneViewController *)&v10 initWithNibName:0 bundle:0];
  v5 = v4;
  if (v4)
  {
    v4->_isTableViewRequired = view;
    [(ASCredentialRequestPaneViewController *)v4 setModalInPresentation:1];
    v6 = objc_alloc_init(_ASNavigationTitleView);
    navigationItem = [(ASCredentialRequestPaneViewController *)v5 navigationItem];
    [navigationItem setTitleView:v6];

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
  view = [(ASCredentialRequestPaneViewController *)self view];
  _newStackView = [(ASCredentialRequestPaneViewController *)self _newStackView];
  paneHeaderStackView = self->_paneHeaderStackView;
  self->_paneHeaderStackView = _newStackView;

  v144 = view;
  if (self->_isTableViewRequired)
  {
    view2 = [(ASCredentialRequestPaneViewController *)self view];
    [view2 bounds];
    Width = CGRectGetWidth(v153);

    v8 = [objc_alloc(MEMORY[0x1E69DD020]) initWithFrame:+[ASViewServiceInterfaceUtilities tableViewStyle](ASViewServiceInterfaceUtilities style:{"tableViewStyle"), 0.0, 0.0, Width, 0.0}];
    tableView = self->_tableView;
    self->_tableView = v8;

    [(UITableView *)self->_tableView setTranslatesAutoresizingMaskIntoConstraints:0];
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [(UITableView *)self->_tableView setBackgroundColor:clearColor];

    [(UITableView *)self->_tableView setAlwaysBounceVertical:0];
    [(UITableView *)self->_tableView setShowsVerticalScrollIndicator:0];
    +[ASViewServiceInterfaceUtilities tableViewRowHeight];
    [(UITableView *)self->_tableView setEstimatedRowHeight:?];
    [(UITableView *)self->_tableView setSeparatorInsetReference:1];
    [(UITableView *)self->_tableView setDelegate:self];
    [(UITableView *)self->_tableView _setSectionContentInset:0.0, 32.0, 0.0, 32.0];
    _newContainerView = [(ASCredentialRequestPaneViewController *)self _newContainerView];
    [(UITableView *)self->_tableView setTableHeaderView:_newContainerView];

    tableHeaderView = [(UITableView *)self->_tableView tableHeaderView];
    [tableHeaderView setTranslatesAutoresizingMaskIntoConstraints:0];

    tableHeaderView2 = [(UITableView *)self->_tableView tableHeaderView];
    [tableHeaderView2 addSubview:self->_paneHeaderStackView];

    [view addSubview:self->_tableView];
    v14 = [objc_alloc(MEMORY[0x1E69DD298]) initWithEffect:0];
    blurryTray = self->_blurryTray;
    self->_blurryTray = v14;

    [(UIVisualEffectView *)self->_blurryTray setTranslatesAutoresizingMaskIntoConstraints:0];
    _newStackView2 = [(ASCredentialRequestPaneViewController *)self _newStackView];
    paneFooterStackView = self->_paneFooterStackView;
    self->_paneFooterStackView = _newStackView2;

    contentView = [(UIVisualEffectView *)self->_blurryTray contentView];
    [contentView addSubview:self->_paneFooterStackView];

    [(ASCredentialRequestPaneViewController *)self _footerStackViewSpacing];
    [(UIStackView *)self->_paneFooterStackView setSpacing:?];
    [view addSubview:self->_blurryTray];
    [(ASCredentialRequestPaneViewController *)self _setUpContexts];
    v108 = MEMORY[0x1E696ACD8];
    topAnchor = [(UIStackView *)self->_paneHeaderStackView topAnchor];
    tableHeaderView3 = [(UITableView *)self->_tableView tableHeaderView];
    topAnchor2 = [tableHeaderView3 topAnchor];
    v123 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v151[0] = v123;
    bottomAnchor = [(UIStackView *)self->_paneHeaderStackView bottomAnchor];
    tableHeaderView4 = [(UITableView *)self->_tableView tableHeaderView];
    bottomAnchor2 = [tableHeaderView4 bottomAnchor];
    v106 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v151[1] = v106;
    leadingAnchor = [(UIStackView *)self->_paneHeaderStackView leadingAnchor];
    tableHeaderView5 = [(UITableView *)self->_tableView tableHeaderView];
    leadingAnchor2 = [tableHeaderView5 leadingAnchor];
    v21 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v151[2] = v21;
    trailingAnchor = [(UIStackView *)self->_paneHeaderStackView trailingAnchor];
    tableHeaderView6 = [(UITableView *)self->_tableView tableHeaderView];
    trailingAnchor2 = [tableHeaderView6 trailingAnchor];
    v25 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v151[3] = v25;
    v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v151 count:4];
    [v108 activateConstraints:v26];

    v114 = MEMORY[0x1E696ACD8];
    centerXAnchor = [(UITableView *)self->_tableView centerXAnchor];
    centerXAnchor2 = [v144 centerXAnchor];
    v129 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v150[0] = v129;
    widthAnchor = [(UITableView *)self->_tableView widthAnchor];
    widthAnchor2 = [v144 widthAnchor];
    v27 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
    v150[1] = v27;
    topAnchor3 = [(UITableView *)self->_tableView topAnchor];
    topAnchor4 = [v144 topAnchor];
    v30 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
    v150[2] = v30;
    bottomAnchor3 = [(UITableView *)self->_tableView bottomAnchor];
    topAnchor5 = [(UIVisualEffectView *)self->_blurryTray topAnchor];
    v33 = [bottomAnchor3 constraintEqualToAnchor:topAnchor5];
    v150[3] = v33;
    v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:v150 count:4];
    [v114 activateConstraints:v34];

    heightAnchor = [(UIVisualEffectView *)self->_blurryTray heightAnchor];
    v36 = [heightAnchor constraintEqualToConstant:0.0];

    [v36 priority];
    *&v38 = v37 + -1.0;
    [v36 setPriority:v38];
    v115 = MEMORY[0x1E696ACD8];
    v143 = v36;
    v149[0] = v36;
    heightAnchor2 = [(UIVisualEffectView *)self->_blurryTray heightAnchor];
    [(ASCredentialRequestPaneViewController *)self _blurryTrayMinimumHeight];
    v130 = [heightAnchor2 constraintGreaterThanOrEqualToConstant:?];
    v149[1] = v130;
    widthAnchor3 = [(UIVisualEffectView *)self->_blurryTray widthAnchor];
    widthAnchor4 = [v144 widthAnchor];
    v39 = [widthAnchor3 constraintEqualToAnchor:widthAnchor4];
    v149[2] = v39;
    bottomAnchor4 = [(UIVisualEffectView *)self->_blurryTray bottomAnchor];
    bottomAnchor5 = [v144 bottomAnchor];
    v42 = [bottomAnchor4 constraintEqualToAnchor:bottomAnchor5];
    v149[3] = v42;
    centerXAnchor3 = [(UIVisualEffectView *)self->_blurryTray centerXAnchor];
    centerXAnchor4 = [v144 centerXAnchor];
    v45 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
    v149[4] = v45;
    v46 = [MEMORY[0x1E695DEC8] arrayWithObjects:v149 count:5];
    [v115 activateConstraints:v46];

    leadingAnchor3 = [(UIStackView *)self->_paneFooterStackView leadingAnchor];
    contentView2 = [(UIVisualEffectView *)self->_blurryTray contentView];
    leadingAnchor4 = [contentView2 leadingAnchor];
    v50 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:32.0];
    v148[0] = v50;
    contentView3 = [(UIVisualEffectView *)self->_blurryTray contentView];
    trailingAnchor3 = [contentView3 trailingAnchor];
    trailingAnchor4 = [(UIStackView *)self->_paneFooterStackView trailingAnchor];
    v54 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4 constant:32.0];
    v148[1] = v54;
    v55 = [MEMORY[0x1E695DEC8] arrayWithObjects:v148 count:2];
    v136 = [v55 mutableCopy];

    bottomAnchor6 = [(UIVisualEffectView *)self->_blurryTray bottomAnchor];
    view3 = [(ASCredentialRequestPaneViewController *)self view];
    bottomAnchor7 = [view3 bottomAnchor];
    v116 = [bottomAnchor6 constraintEqualToAnchor:bottomAnchor7];
    v147[0] = v116;
    topAnchor6 = [(UIStackView *)self->_paneFooterStackView topAnchor];
    contentView4 = [(UIVisualEffectView *)self->_blurryTray contentView];
    topAnchor7 = [contentView4 topAnchor];
    v58 = [topAnchor6 constraintGreaterThanOrEqualToAnchor:topAnchor7 constant:24.0];
    v147[1] = v58;
    bottomAnchor8 = [(UIStackView *)self->_paneFooterStackView bottomAnchor];
    contentView5 = [(UIVisualEffectView *)self->_blurryTray contentView];
    bottomAnchor9 = [contentView5 bottomAnchor];
    v62 = [bottomAnchor8 constraintLessThanOrEqualToAnchor:bottomAnchor9 constant:-38.0];
    v147[2] = v62;
    v63 = [MEMORY[0x1E695DEC8] arrayWithObjects:v147 count:3];
    v64 = v136;
    [v136 addObjectsFromArray:v63];

    [MEMORY[0x1E696ACD8] activateConstraints:v136];
    widthAnchor5 = [(UIStackView *)self->_paneHeaderStackView widthAnchor];
    v66 = [widthAnchor5 constraintEqualToConstant:0.0];
    headerWidthConstraint = self->_headerWidthConstraint;
    self->_headerWidthConstraint = v66;

    widthAnchor6 = [(UIStackView *)self->_paneFooterStackView widthAnchor];
    v69 = [widthAnchor6 constraintEqualToConstant:0.0];
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
    [view addSubview:v74];
    contentLayoutGuide = [v74 contentLayoutGuide];
    frameLayoutGuide = [v74 frameLayoutGuide];
    heightAnchor3 = [(UIStackView *)self->_paneHeaderStackView heightAnchor];
    v100 = frameLayoutGuide;
    heightAnchor4 = [frameLayoutGuide heightAnchor];
    v79 = [heightAnchor3 constraintEqualToAnchor:heightAnchor4];

    LODWORD(v80) = 1144750080;
    v81 = v79;
    v101 = v79;
    [v79 setPriority:v80];
    v103 = MEMORY[0x1E696ACD8];
    topAnchor8 = [v74 topAnchor];
    layoutMarginsGuide = [view layoutMarginsGuide];
    topAnchor9 = [layoutMarginsGuide topAnchor];
    v137 = [topAnchor8 constraintEqualToSystemSpacingBelowAnchor:topAnchor9 multiplier:1.0];
    v152[0] = v137;
    leadingAnchor5 = [v74 leadingAnchor];
    leadingAnchor6 = [view leadingAnchor];
    v122 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
    v152[1] = v122;
    trailingAnchor5 = [v74 trailingAnchor];
    trailingAnchor6 = [view trailingAnchor];
    v109 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6];
    v152[2] = v109;
    v143 = v74;
    bottomAnchor10 = [v74 bottomAnchor];
    bottomAnchor11 = [view bottomAnchor];
    v102 = [bottomAnchor10 constraintEqualToAnchor:bottomAnchor11];
    v152[3] = v102;
    leadingAnchor7 = [(UIStackView *)self->_paneHeaderStackView leadingAnchor];
    v82 = contentLayoutGuide;
    leadingAnchor8 = [contentLayoutGuide leadingAnchor];
    v97 = [leadingAnchor7 constraintEqualToAnchor:leadingAnchor8];
    v152[4] = v97;
    trailingAnchor7 = [(UIStackView *)self->_paneHeaderStackView trailingAnchor];
    trailingAnchor8 = [contentLayoutGuide trailingAnchor];
    v94 = [trailingAnchor7 constraintEqualToAnchor:trailingAnchor8];
    v152[5] = v94;
    topAnchor10 = [(UIStackView *)self->_paneHeaderStackView topAnchor];
    topAnchor11 = [contentLayoutGuide topAnchor];
    v83 = [topAnchor10 constraintEqualToAnchor:topAnchor11];
    v152[6] = v83;
    bottomAnchor12 = [(UIStackView *)self->_paneHeaderStackView bottomAnchor];
    bottomAnchor13 = [v82 bottomAnchor];
    v86 = [bottomAnchor12 constraintEqualToAnchor:bottomAnchor13];
    v152[7] = v86;
    v152[8] = v81;
    widthAnchor7 = [(UIStackView *)self->_paneHeaderStackView widthAnchor];
    widthAnchor8 = [frameLayoutGuide widthAnchor];
    v89 = [widthAnchor7 constraintEqualToAnchor:widthAnchor8 constant:-0.0];
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
  view = [(ASCredentialRequestPaneViewController *)self view];
  [view frame];
  v5 = v4;

  [(NSLayoutConstraint *)self->_headerWidthConstraint setConstant:v5];
  [(NSLayoutConstraint *)self->_footerWidthConstraint setConstant:v5];
}

- (void)viewDidLayoutSubviews
{
  v7.receiver = self;
  v7.super_class = ASCredentialRequestPaneViewController;
  [(ASCredentialRequestPaneViewController *)&v7 viewDidLayoutSubviews];
  tableHeaderView = [(UITableView *)self->_tableView tableHeaderView];
  paneHeaderStackView = tableHeaderView;
  if (!tableHeaderView)
  {
    paneHeaderStackView = self->_paneHeaderStackView;
  }

  v5 = paneHeaderStackView;

  tableHeaderView2 = [(UITableView *)self->_tableView tableHeaderView];

  if (tableHeaderView2)
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

- (void)_setCompressedHeightForView:(id)view
{
  viewCopy = view;
  [viewCopy systemLayoutSizeFittingSize:{*MEMORY[0x1E69DE090], *(MEMORY[0x1E69DE090] + 8)}];
  v4 = v3;
  [viewCopy frame];
  if (v5 != v4)
  {
    [viewCopy setFrame:?];
  }
}

- (void)updatePreferredContentSizeAndLayoutIfNeeded:(BOOL)needed allowShrinking:(BOOL)shrinking
{
  neededCopy = needed;
  [(ASCredentialRequestPaneViewController *)self _intrinsicContentHeight];
  v8 = v7;
  [(ASCredentialRequestPaneViewController *)self _maximumContentHeight];
  v10 = v9;
  v11 = v8;
  if (!shrinking)
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
  view = [(ASCredentialRequestPaneViewController *)self view];
  [view bounds];
  v15 = v14;

  [(ASCredentialRequestPaneViewController *)self preferredContentSize];
  if (v17 != v15 || v16 != v10)
  {
    [(ASCredentialRequestPaneViewController *)self setPreferredContentSize:v15, v10];
    if (neededCopy)
    {
      view2 = [(ASCredentialRequestPaneViewController *)self view];
      [view2 layoutIfNeeded];
    }
  }
}

- (void)traitCollectionDidChange:(id)change
{
  v8.receiver = self;
  v8.super_class = ASCredentialRequestPaneViewController;
  changeCopy = change;
  [(ASCredentialRequestPaneViewController *)&v8 traitCollectionDidChange:changeCopy];
  v5 = [(ASCredentialRequestPaneViewController *)self traitCollection:v8.receiver];
  preferredContentSizeCategory = [v5 preferredContentSizeCategory];
  preferredContentSizeCategory2 = [changeCopy preferredContentSizeCategory];

  LOBYTE(changeCopy) = [preferredContentSizeCategory isEqualToString:preferredContentSizeCategory2];
  if ((changeCopy & 1) == 0)
  {
    [(ASCredentialRequestPaneViewController *)self sizeToFitPaneContent];
  }
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v9.receiver = self;
  v9.super_class = ASCredentialRequestPaneViewController;
  coordinatorCopy = coordinator;
  [(ASCredentialRequestPaneViewController *)&v9 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __92__ASCredentialRequestPaneViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v8[3] = &unk_1E7AF8C58;
  v8[4] = self;
  [coordinatorCopy animateAlongsideTransition:v8 completion:0];
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

- (void)_cancelButtonSelected:(id)selected
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
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [v2 setBackgroundColor:clearColor];

  return v2;
}

- (void)_setUpContexts
{
  v3 = [ASCredentialRequestPaneContext alloc];
  paneHeaderStackView = [(ASCredentialRequestPaneViewController *)self paneHeaderStackView];
  v5 = [(ASCredentialRequestPaneContext *)v3 initWithPaneViewController:self stackView:paneHeaderStackView];
  headerPaneContext = self->_headerPaneContext;
  self->_headerPaneContext = v5;

  if (self->_isTableViewRequired)
  {
    v7 = [ASCredentialRequestPaneContext alloc];
    paneFooterStackView = [(ASCredentialRequestPaneViewController *)self paneFooterStackView];
    v8 = [(ASCredentialRequestPaneContext *)v7 initWithPaneViewController:self stackView:paneFooterStackView];
    footerPaneContext = self->_footerPaneContext;
    self->_footerPaneContext = v8;
  }
}

- (void)_adjustForPositionOfScrollView:(id)view
{
  navigationController = [(ASCredentialRequestPaneViewController *)self navigationController];
  navigationBar = [navigationController navigationBar];
  [navigationBar setBackgroundEffects:0];

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

  _indexPathForLastRow = [(ASCredentialRequestPaneViewController *)self _indexPathForLastRow];
  if ([_indexPathForLastRow row] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = 0;
  }

  else
  {
    [(UITableView *)self->_tableView rectForRowAtIndexPath:_indexPathForLastRow];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    tableView = self->_tableView;
    view = [(ASCredentialRequestPaneViewController *)self view];
    [(UITableView *)tableView convertRect:view toView:v6, v8, v10, v12];
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

- (int64_t)_safeIndexWithCount:(int64_t)count
{
  if (count <= 0)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    return count - 1;
  }
}

- (double)_maximumContentHeight
{
  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen bounds];
  v5 = v4;

  navigationController = [(ASCredentialRequestPaneViewController *)self navigationController];
  navigationBar = [navigationController navigationBar];
  [navigationBar bounds];
  v9 = v5 * 0.86 - v8;

  return v9;
}

- (double)_intrinsicContentHeight
{
  tableView = [(ASCredentialRequestPaneViewController *)self tableView];
  paneHeaderStackView = [(ASCredentialRequestPaneViewController *)self paneHeaderStackView];
  [paneHeaderStackView bounds];
  v6 = v5;
  LODWORD(v5) = 1148846080;
  LODWORD(v7) = 1112014848;
  v8 = 0.0;
  [paneHeaderStackView systemLayoutSizeFittingSize:v6 withHorizontalFittingPriority:0.0 verticalFittingPriority:{v5, v7}];
  v10 = v9;
  [(UIVisualEffectView *)self->_blurryTray frame];
  Height = CGRectGetHeight(v17);
  if ([tableView numberOfSections] >= 1)
  {
    v12 = 0;
    do
    {
      if (![tableView numberOfRowsInSection:v12])
      {
        break;
      }

      [tableView rectForSection:v12];
      v8 = v8 + CGRectGetHeight(v18);
      ++v12;
    }

    while (v12 < [tableView numberOfSections]);
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