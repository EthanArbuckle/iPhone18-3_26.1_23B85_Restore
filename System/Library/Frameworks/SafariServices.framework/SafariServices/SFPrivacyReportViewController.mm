@interface SFPrivacyReportViewController
- (BOOL)_privacyProxyTip:(int64_t *)tip;
- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path;
- (SFPrivacyReportViewController)initWithDomain:(id)domain;
- (SFPrivacyReportViewController)initWithNibName:(id)name bundle:(id)bundle;
- (SFPrivacyReportViewController)initWithWebView:(id)view;
- (double)tableView:(id)view estimatedHeightForRowAtIndexPath:(id)path;
- (id)_cellForRowWithIndexPath:(id)path itemIdentifier:(id)identifier;
- (id)dataSource:(id)source headerTextForSection:(int64_t)section;
- (int64_t)_sectionTypeFromSectionIndex:(int64_t)index;
- (void)_createTableViewIfNeededLoadingReport:(BOOL)report;
- (void)_reloadDataLoadingReport:(BOOL)report;
- (void)_updateLayoutMargins;
- (void)_updateUsesInsetStyle;
- (void)cellDidToggleDetailType:(id)type;
- (void)cellDidToggleExpandDetailedExplanation:(id)explanation;
- (void)cellPrivacyProxyUpsellDismissed:(id)dismissed;
- (void)setNeedsUpdateRowHeight;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation SFPrivacyReportViewController

- (SFPrivacyReportViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v8.receiver = self;
  v8.super_class = SFPrivacyReportViewController;
  v4 = [(SFPrivacyReportViewController *)&v8 initWithNibName:name bundle:bundle];
  v5 = v4;
  if (v4)
  {
    [(SFPrivacyReportViewController *)v4 setPreferredContentSize:540.0, 564.0];
    v6 = v5;
  }

  return v5;
}

- (SFPrivacyReportViewController)initWithDomain:(id)domain
{
  v12[1] = *MEMORY[0x1E69E9840];
  domainCopy = domain;
  v5 = [(SFPrivacyReportViewController *)self initWithNibName:0 bundle:0];
  if (v5)
  {
    v6 = [domainCopy copy];
    domain = v5->_domain;
    v5->_domain = v6;

    v12[0] = objc_opt_class();
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
    v9 = [(SFPrivacyReportViewController *)v5 registerForTraitChanges:v8 withTarget:v5 action:sel_setNeedsUpdateRowHeight];

    v10 = v5;
  }

  return v5;
}

- (SFPrivacyReportViewController)initWithWebView:(id)view
{
  viewCopy = view;
  v6 = [viewCopy URL];
  host = [v6 host];
  safari_highLevelDomainFromHost = [host safari_highLevelDomainFromHost];
  v9 = [(SFPrivacyReportViewController *)self initWithDomain:safari_highLevelDomainFromHost];

  if (v9)
  {
    objc_storeStrong(&v9->_webView, view);
    v10 = v9;
  }

  return v9;
}

- (void)viewDidLoad
{
  v13.receiver = self;
  v13.super_class = SFPrivacyReportViewController;
  [(SFPrivacyReportViewController *)&v13 viewDidLoad];
  v3 = _WBSLocalizedString();
  [(SFPrivacyReportViewController *)self setTitle:v3];

  navigationItem = [(SFPrivacyReportViewController *)self navigationItem];
  sf_preferredDismissOrDoneButtonItem = [navigationItem sf_preferredDismissOrDoneButtonItem];

  if (!sf_preferredDismissOrDoneButtonItem)
  {
    v6 = objc_alloc(MEMORY[0x1E69DC708]);
    v7 = [v6 initWithBarButtonSystemItem:objc_msgSend(MEMORY[0x1E69DC708] target:"_sf_popoverDoneButtonItem") action:{self, sel__doneBarButtonItemAction_}];
    [navigationItem sf_setPreferredDismissOrDoneButtonItem:v7];
    sf_preferredDismissOrDoneButtonItem2 = [navigationItem sf_preferredDismissOrDoneButtonItem];
    [sf_preferredDismissOrDoneButtonItem2 setAccessibilityIdentifier:@"PrivacyReportDoneButton"];
  }

  [(SFPrivacyReportViewController *)self _updateUsesInsetStyle];
  [(SFPrivacyReportViewController *)self _createTableViewIfNeededLoadingReport:1];
  v9 = [objc_alloc(MEMORY[0x1E69C9810]) initWithProfileIdentifiers:self->_profileIdentifiers histories:self->_histories];
  privacyReportData = self->_privacyReportData;
  self->_privacyReportData = v9;

  [(WBSPrivacyReportData *)self->_privacyReportData setWebView:self->_webView];
  v11 = self->_privacyReportData;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __44__SFPrivacyReportViewController_viewDidLoad__block_invoke;
  v12[3] = &unk_1E848F810;
  v12[4] = self;
  [(WBSPrivacyReportData *)v11 loadDataWithCompletionHandler:v12];
}

void __44__SFPrivacyReportViewController_viewDidLoad__block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__SFPrivacyReportViewController_viewDidLoad__block_invoke_2;
  block[3] = &unk_1E848F810;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)_createTableViewIfNeededLoadingReport:(BOOL)report
{
  reportCopy = report;
  if (self->_usesInsetStyle)
  {
    v5 = 2;
  }

  else
  {
    v5 = 1;
  }

  tableView = self->_tableView;
  if (tableView && [(UITableView *)tableView style]== v5)
  {

    [(SFPrivacyReportViewController *)self _updateLayoutMargins];
  }

  else
  {
    objc_initWeak(&location, self);
    [(UITableView *)self->_tableView removeFromSuperview];
    view = [(SFPrivacyReportViewController *)self view];
    v8 = objc_alloc(MEMORY[0x1E69DD020]);
    [view bounds];
    v9 = [v8 initWithFrame:v5 style:?];
    v10 = self->_tableView;
    self->_tableView = v9;

    v11 = objc_alloc_init(MEMORY[0x1E69DD250]);
    [(UITableView *)self->_tableView setTableHeaderView:v11];

    [(UITableView *)self->_tableView setAccessibilityIdentifier:@"PrivacyReportWindow"];
    [(UITableView *)self->_tableView setAutoresizingMask:18];
    [view addSubview:self->_tableView];
    [(UITableView *)self->_tableView setDelegate:self];
    [(UITableView *)self->_tableView registerClass:objc_opt_class() forCellReuseIdentifier:@"trackingProtectionExplanationCell"];
    [(UITableView *)self->_tableView registerClass:objc_opt_class() forCellReuseIdentifier:@"noReportAvailableCell"];
    [(UITableView *)self->_tableView registerClass:objc_opt_class() forCellReuseIdentifier:@"gridViewCellIdentifier"];
    [(UITableView *)self->_tableView registerClass:objc_opt_class() forCellReuseIdentifier:@"detailTypeToggleCell"];
    [(UITableView *)self->_tableView registerClass:objc_opt_class() forCellReuseIdentifier:@"websiteCell"];
    [(UITableView *)self->_tableView registerClass:objc_opt_class() forCellReuseIdentifier:@"trackerCell"];
    [(UITableView *)self->_tableView registerClass:objc_opt_class() forCellReuseIdentifier:@"subheaderCell"];
    [(UITableView *)self->_tableView registerClass:objc_opt_class() forCellReuseIdentifier:@"privacyProxyTipCell"];
    [(SFPrivacyReportViewController *)self _updateLayoutMargins];
    v12 = objc_alloc(MEMORY[0x1E69B1BC8]);
    v13 = self->_tableView;
    v16 = MEMORY[0x1E69E9820];
    v17 = 3221225472;
    v18 = __71__SFPrivacyReportViewController__createTableViewIfNeededLoadingReport___block_invoke;
    v19 = &unk_1E848F838;
    objc_copyWeak(&v20, &location);
    v14 = [v12 initWithTableView:v13 cellProvider:&v16];
    diffableDataSource = self->_diffableDataSource;
    self->_diffableDataSource = v14;

    [(SFTableViewDiffableDataSource *)self->_diffableDataSource setDefaultRowAnimation:0, v16, v17, v18, v19];
    [(SFTableViewDiffableDataSource *)self->_diffableDataSource setDelegate:self];
    [(SFPrivacyReportViewController *)self _reloadDataLoadingReport:reportCopy];
    objc_destroyWeak(&v20);

    objc_destroyWeak(&location);
  }
}

id __71__SFPrivacyReportViewController__createTableViewIfNeededLoadingReport___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a4;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v9 = [WeakRetained _cellForRowWithIndexPath:v7 itemIdentifier:v6];

  return v9;
}

- (void)_updateUsesInsetStyle
{
  view = [(SFPrivacyReportViewController *)self view];
  [view bounds];
  v5 = v4;
  v7 = v6;

  [(SFPrivacyReportViewController *)self preferredContentSize];
  v9 = v5 >= v8;
  if (v7 < v10)
  {
    v9 = 0;
  }

  self->_usesInsetStyle = v9;
}

- (void)_updateLayoutMargins
{
  if (self->_usesInsetStyle)
  {
    v3 = 48.0;
  }

  else
  {
    v3 = 16.0;
  }

  tableHeaderView = [(UITableView *)self->_tableView tableHeaderView];
  [tableHeaderView frame];
  [tableHeaderView setFrame:?];
  [(UITableView *)self->_tableView setTableHeaderView:tableHeaderView];
  [(UITableView *)self->_tableView setLayoutMargins:35.0, v3, 40.0, v3];
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __84__SFPrivacyReportViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v4[3] = &unk_1E848F860;
  v4[4] = self;
  [coordinator animateAlongsideTransition:v4 completion:0];
}

uint64_t __84__SFPrivacyReportViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _updateUsesInsetStyle];
  [*(a1 + 32) _createTableViewIfNeededLoadingReport:0];
  v2 = *(*(a1 + 32) + 992);

  return [v2 reloadData];
}

- (void)_reloadDataLoadingReport:(BOOL)report
{
  reportCopy = report;
  v49[1] = *MEMORY[0x1E69E9840];
  self->_showingCurrentWebsite = 0;
  v5 = objc_alloc_init(MEMORY[0x1E69955A0]);
  v6 = v5;
  if (!reportCopy)
  {
    if (([(WBSPrivacyReportData *)self->_privacyReportData hasData]& 1) == 0)
    {
      [v6 appendSectionsWithIdentifiers:&unk_1F50236E0];
      v7 = [[SFPrivacyReportItem alloc] initWithType:1];
      v48 = v7;
      v8 = MEMORY[0x1E695DEC8];
      v9 = &v48;
      goto LABEL_10;
    }

    [v6 appendSectionsWithIdentifiers:&unk_1F50236F8];
    v10 = [[SFPrivacyReportItem alloc] initWithType:2];
    v47 = v10;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v47 count:1];
    [v6 appendItemsWithIdentifiers:v11];

    if (self->_showExplanationDetailView)
    {
      v12 = [[SFPrivacyReportItem alloc] initWithType:3];
      v46 = v12;
      v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v46 count:1];
      [v6 appendItemsWithIdentifiers:v13];
    }

    [v6 appendSectionsWithIdentifiers:&unk_1F5023710];
    v14 = [[SFPrivacyReportItem alloc] initWithType:4];
    v45 = v14;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v45 count:1];
    [v6 appendItemsWithIdentifiers:v15];

    [v6 appendSectionsWithIdentifiers:&unk_1F5023728];
    v16 = [[SFPrivacyReportItem alloc] initWithType:5];
    v44 = v16;
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v44 count:1];
    [v6 appendItemsWithIdentifiers:v17];

    listDetailType = self->_listDetailType;
    if (listDetailType)
    {
      if (listDetailType != 1)
      {
LABEL_16:
        self->_maxCountForDetailList = fmax(self->_maxCountForDetailList, 10.0);
        goto LABEL_17;
      }

      knownTrackers = [(WBSPrivacyReportData *)self->_privacyReportData knownTrackers];
      firstObject = [knownTrackers firstObject];
      firstParties = [firstObject firstParties];
      self->_maxCountForDetailList = [firstParties count];

      knownTrackers2 = [(WBSPrivacyReportData *)self->_privacyReportData knownTrackers];
      v23 = knownTrackers2;
      v24 = &__block_literal_global_2;
    }

    else
    {
      trackedFirstParties = [(WBSPrivacyReportData *)self->_privacyReportData trackedFirstParties];
      firstObject2 = [trackedFirstParties firstObject];
      trackers = [firstObject2 trackers];
      self->_maxCountForDetailList = [trackers count];

      trackedFirstParties2 = [(WBSPrivacyReportData *)self->_privacyReportData trackedFirstParties];
      v23 = trackedFirstParties2;
      if (self->_domain)
      {
        v42[0] = MEMORY[0x1E69E9820];
        v42[1] = 3221225472;
        v42[2] = __58__SFPrivacyReportViewController__reloadDataLoadingReport___block_invoke_2;
        v42[3] = &unk_1E848F8A8;
        v42[4] = self;
        v30 = [trackedFirstParties2 indexOfObjectPassingTest:v42];
        if (v30 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v31 = v30;
          self->_showingCurrentWebsite = 1;
          v32 = [SFPrivacyReportItem alloc];
          v41 = [v23 objectAtIndexedSubscript:v31];
          v33 = [(SFPrivacyReportItem *)v32 initWithType:6 userInfo:v41];
          v43[0] = v33;
          v34 = [SFPrivacyReportItem alloc];
          v35 = _WBSLocalizedString();
          v36 = [(SFPrivacyReportItem *)v34 initWithType:8 userInfo:v35];
          v43[1] = v36;
          v37 = [MEMORY[0x1E695DEC8] arrayWithObjects:v43 count:2];
          [v6 appendItemsWithIdentifiers:v37];

          v38 = [v23 mutableCopy];
          [v38 removeObjectAtIndex:v31];
          v39 = [v38 copy];

          v23 = v39;
        }
      }

      v24 = &__block_literal_global_93;
      knownTrackers2 = v23;
    }

    v40 = [knownTrackers2 safari_mapObjectsUsingBlock:v24];
    [v6 appendItemsWithIdentifiers:v40];

    goto LABEL_16;
  }

  [v5 appendSectionsWithIdentifiers:&unk_1F50236C8];
  v7 = [[SFPrivacyReportItem alloc] initWithType:0];
  v49[0] = v7;
  v8 = MEMORY[0x1E695DEC8];
  v9 = v49;
LABEL_10:
  v25 = [v8 arrayWithObjects:v9 count:1];
  [v6 appendItemsWithIdentifiers:v25];

LABEL_17:
  [(SFTableViewDiffableDataSource *)self->_diffableDataSource applySnapshot:v6 animatingDifferences:!reportCopy];
}

SFPrivacyReportItem *__58__SFPrivacyReportViewController__reloadDataLoadingReport___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[SFPrivacyReportItem alloc] initWithType:7 userInfo:v2];

  return v3;
}

uint64_t __58__SFPrivacyReportViewController__reloadDataLoadingReport___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 domain];
  v4 = [v3 isEqualToString:*(*(a1 + 32) + 1072)];

  return v4;
}

SFPrivacyReportItem *__58__SFPrivacyReportViewController__reloadDataLoadingReport___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[SFPrivacyReportItem alloc] initWithType:6 userInfo:v2];

  return v3;
}

- (int64_t)_sectionTypeFromSectionIndex:(int64_t)index
{
  snapshot = [(SFTableViewDiffableDataSource *)self->_diffableDataSource snapshot];
  sectionIdentifiers = [snapshot sectionIdentifiers];
  v6 = [sectionIdentifiers objectAtIndexedSubscript:index];
  integerValue = [v6 integerValue];

  return integerValue;
}

- (id)_cellForRowWithIndexPath:(id)path itemIdentifier:(id)identifier
{
  v33[3] = *MEMORY[0x1E69E9840];
  pathCopy = path;
  identifierCopy = identifier;
  type = [identifierCopy type];
  v9 = 0;
  if (type > 6)
  {
    if ((type - 9) < 4)
    {
      v9 = [(UITableView *)self->_tableView dequeueReusableCellWithIdentifier:@"privacyProxyTipCell" forIndexPath:pathCopy];
      [v9 setUsesInsetStyle:self->_usesInsetStyle];
      [v9 setDelegate:self];
      goto LABEL_30;
    }

    if (type == 7)
    {
      v9 = [(UITableView *)self->_tableView dequeueReusableCellWithIdentifier:@"trackerCell" forIndexPath:pathCopy];
      userInfo = [identifierCopy userInfo];
      [v9 setTracker:userInfo];
LABEL_29:

      [v9 setMaxCount:self->_maxCountForDetailList];
      goto LABEL_30;
    }

    if (type != 8)
    {
      goto LABEL_30;
    }

    v9 = [(UITableView *)self->_tableView dequeueReusableCellWithIdentifier:@"subheaderCell" forIndexPath:pathCopy];
    userInfo2 = [identifierCopy userInfo];
    [v9 setSubheaderText:userInfo2];
LABEL_27:

    goto LABEL_30;
  }

  if (type > 2)
  {
    if (type <= 4)
    {
      if (type == 3)
      {
        v9 = [(UITableView *)self->_tableView dequeueReusableCellWithIdentifier:@"gridViewCellIdentifier" forIndexPath:pathCopy];
        gridView = [v9 gridView];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if ((isKindOfClass & 1) == 0)
        {
          v12 = objc_alloc_init(SFPrivacyReportExplanationDetailView);
          goto LABEL_20;
        }
      }

      else
      {
        v9 = [(UITableView *)self->_tableView dequeueReusableCellWithIdentifier:@"gridViewCellIdentifier" forIndexPath:pathCopy];
        gridView2 = [v9 gridView];
        objc_opt_class();
        v11 = objc_opt_isKindOfClass();

        if ((v11 & 1) == 0)
        {
          v12 = [objc_alloc(MEMORY[0x1E69B1B60]) initWithPrivacyReportDataProvider:self->_privacyReportData];
LABEL_20:
          v17 = v12;
          [(SFPrivacyReportGridView *)v12 setDelegate:self];
          [v9 setGridView:v17];
        }
      }

      gridView3 = [v9 gridView];
      [gridView3 setUsesInsetStyle:self->_usesInsetStyle];

      goto LABEL_30;
    }

    if (type == 5)
    {
      v9 = [(UITableView *)self->_tableView dequeueReusableCellWithIdentifier:@"detailTypeToggleCell" forIndexPath:pathCopy];
      [v9 setDetailType:self->_listDetailType];
      [v9 setDelegate:self];
      [v9 setUseCurrentWebsiteHeader:self->_showingCurrentWebsite];
      goto LABEL_30;
    }

    v9 = [(UITableView *)self->_tableView dequeueReusableCellWithIdentifier:@"websiteCell" forIndexPath:pathCopy];
    userInfo = [identifierCopy userInfo];
    [v9 setWebsite:userInfo];
    goto LABEL_29;
  }

  switch(type)
  {
    case 0:
      v9 = [(UITableView *)self->_tableView dequeueReusableCellWithIdentifier:@"loadingReportCell"];
      if (v9)
      {
        break;
      }

      v9 = [objc_alloc(MEMORY[0x1E69DD028]) initWithStyle:0 reuseIdentifier:@"loadingReportCell"];
      [v9 setBackgroundView:0];
      clearColor = [MEMORY[0x1E69DC888] clearColor];
      [v9 setBackgroundColor:clearColor];

      userInfo2 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:100];
      [userInfo2 setTranslatesAutoresizingMaskIntoConstraints:0];
      contentView = [v9 contentView];
      [contentView addSubview:userInfo2];
      v28 = MEMORY[0x1E696ACD8];
      centerXAnchor = [userInfo2 centerXAnchor];
      centerXAnchor2 = [contentView centerXAnchor];
      v30 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
      v33[0] = v30;
      centerYAnchor = [userInfo2 centerYAnchor];
      centerYAnchor2 = [contentView centerYAnchor];
      v21 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
      v33[1] = v21;
      heightAnchor = [contentView heightAnchor];
      heightAnchor2 = [userInfo2 heightAnchor];
      v24 = [heightAnchor constraintEqualToAnchor:heightAnchor2 multiplier:1.0 constant:20.0];
      v33[2] = v24;
      v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:3];
      [v28 activateConstraints:v25];

      [userInfo2 startAnimating];
      goto LABEL_26;
    case 1:
      v9 = [(UITableView *)self->_tableView dequeueReusableCellWithIdentifier:@"noReportAvailableCell"];
      userInfo2 = [v9 textLabel];
      [userInfo2 setNumberOfLines:0];
      contentView = _WBSLocalizedString();
      [userInfo2 setText:contentView];
LABEL_26:

      goto LABEL_27;
    case 2:
      v9 = [(UITableView *)self->_tableView dequeueReusableCellWithIdentifier:@"trackingProtectionExplanationCell"];
      [v9 setDelegate:self];
      [v9 setExpanded:self->_showExplanationDetailView];
      break;
  }

LABEL_30:

  return v9;
}

- (BOOL)_privacyProxyTip:(int64_t *)tip
{
  mEMORY[0x1E69C9808] = [MEMORY[0x1E69C9808] sharedManager];
  if (![mEMORY[0x1E69C9808] isPrivacyProxyActive])
  {
    goto LABEL_3;
  }

  state = [mEMORY[0x1E69C9808] state];
  isUserAccountInSubscriberTierForPrivacyProxy = [mEMORY[0x1E69C9808] isUserAccountInSubscriberTierForPrivacyProxy];
  if (state == 2)
  {
    goto LABEL_3;
  }

  if (isUserAccountInSubscriberTierForPrivacyProxy)
  {
    if (state == 1)
    {
      v9 = 12;
      goto LABEL_15;
    }

    if (!state)
    {
      v9 = 11;
LABEL_15:
      *tip = v9;
      v7 = 1;
      goto LABEL_4;
    }
  }

  else
  {
    if (state != 1)
    {
      v9 = 9;
      goto LABEL_15;
    }

    safari_browserDefaults = [MEMORY[0x1E695E000] safari_browserDefaults];
    v11 = [safari_browserDefaults BOOLForKey:@"PrivacyReportPrivacyProxyDismissed"];

    if ((v11 & 1) == 0 && ([mEMORY[0x1E69C9808] isPrivacyProxyPaidTierUnavailableInUserCountry] & 1) == 0)
    {
      v9 = 10;
      goto LABEL_15;
    }
  }

LABEL_3:
  v7 = 0;
LABEL_4:

  return v7;
}

- (void)cellDidToggleDetailType:(id)type
{
  self->_listDetailType = [type detailType];

  [(SFPrivacyReportViewController *)self _reloadDataLoadingReport:0];
}

- (void)cellDidToggleExpandDetailedExplanation:(id)explanation
{
  self->_showExplanationDetailView = [explanation isExpanded];

  [(SFPrivacyReportViewController *)self _reloadDataLoadingReport:0];
}

- (void)cellPrivacyProxyUpsellDismissed:(id)dismissed
{
  safari_browserDefaults = [MEMORY[0x1E695E000] safari_browserDefaults];
  [safari_browserDefaults setBool:1 forKey:@"PrivacyReportPrivacyProxyDismissed"];

  [(SFPrivacyReportViewController *)self _reloadDataLoadingReport:0];
}

- (void)setNeedsUpdateRowHeight
{
  if (!self->_needsRowHeightUpdate)
  {
    objc_initWeak(&location, self);
    self->_needsRowHeightUpdate = 1;
    v3 = dispatch_time(0, 0);
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __56__SFPrivacyReportViewController_setNeedsUpdateRowHeight__block_invoke;
    v4[3] = &unk_1E848F8F0;
    objc_copyWeak(&v5, &location);
    dispatch_after(v3, MEMORY[0x1E69E96A0], v4);
    objc_destroyWeak(&v5);
    objc_destroyWeak(&location);
  }
}

void __56__SFPrivacyReportViewController_setNeedsUpdateRowHeight__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained[124] beginUpdates];
    [v2[124] endUpdates];
    WeakRetained = v2;
    *(v2 + 1024) = 0;
  }
}

- (id)dataSource:(id)source headerTextForSection:(int64_t)section
{
  if ([(SFPrivacyReportViewController *)self _sectionTypeFromSectionIndex:section]== 3)
  {
    v4 = MEMORY[0x1E696AEC0];
    v5 = _WBSLocalizedString();
    v6 = [v4 localizedStringWithFormat:v5, 30];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path
{
  v4 = [(SFTableViewDiffableDataSource *)self->_diffableDataSource itemIdentifierForIndexPath:path];
  type = [v4 type];

  return (type & 0xFFFFFFFFFFFFFFFELL) == 6;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  [view deselectRowAtIndexPath:pathCopy animated:1];
  v14 = [(SFTableViewDiffableDataSource *)self->_diffableDataSource itemIdentifierForIndexPath:pathCopy];

  type = [v14 type];
  if (type == 6)
  {
    v11 = [SFPrivacyReportWebsiteDetailViewController alloc];
    userInfo = [v14 userInfo];
    v10 = [(SFPrivacyReportWebsiteDetailViewController *)v11 initWithWebsite:userInfo];

    [(SFPrivacyReportWebsiteDetailViewController *)v10 setSeparatesBlockedTrackers:self->_websiteDetailShouldSeparateBlockedTrackers];
  }

  else
  {
    if (type != 7)
    {
      goto LABEL_6;
    }

    v8 = [SFPrivacyReportTrackerDetailViewController alloc];
    userInfo2 = [v14 userInfo];
    v10 = [(SFPrivacyReportTrackerDetailViewController *)v8 initWithTracker:userInfo2];
  }

  navigationController = [(SFPrivacyReportViewController *)self navigationController];
  [navigationController pushViewController:v10 animated:1];

LABEL_6:
}

- (double)tableView:(id)view estimatedHeightForRowAtIndexPath:(id)path
{
  viewCopy = view;
  v6 = MEMORY[0x1E696AC88];
  pathCopy = path;
  v8 = [v6 indexPathForRow:0 inSection:0];
  v9 = [pathCopy isEqual:v8];

  if (v9)
  {
    [viewCopy frame];
    Height = CGRectGetHeight(v13);
    [viewCopy frame];
    v11 = fmax(Height, CGRectGetWidth(v14));
  }

  else
  {
    v11 = *MEMORY[0x1E69DE3D0];
  }

  return v11;
}

@end