@interface SFPrivacyReportViewController
- (BOOL)_privacyProxyTip:(int64_t *)a3;
- (BOOL)tableView:(id)a3 shouldHighlightRowAtIndexPath:(id)a4;
- (SFPrivacyReportViewController)initWithDomain:(id)a3;
- (SFPrivacyReportViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (SFPrivacyReportViewController)initWithWebView:(id)a3;
- (double)tableView:(id)a3 estimatedHeightForRowAtIndexPath:(id)a4;
- (id)_cellForRowWithIndexPath:(id)a3 itemIdentifier:(id)a4;
- (id)dataSource:(id)a3 headerTextForSection:(int64_t)a4;
- (int64_t)_sectionTypeFromSectionIndex:(int64_t)a3;
- (void)_createTableViewIfNeededLoadingReport:(BOOL)a3;
- (void)_reloadDataLoadingReport:(BOOL)a3;
- (void)_updateLayoutMargins;
- (void)_updateUsesInsetStyle;
- (void)cellDidToggleDetailType:(id)a3;
- (void)cellDidToggleExpandDetailedExplanation:(id)a3;
- (void)cellPrivacyProxyUpsellDismissed:(id)a3;
- (void)setNeedsUpdateRowHeight;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation SFPrivacyReportViewController

- (SFPrivacyReportViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v8.receiver = self;
  v8.super_class = SFPrivacyReportViewController;
  v4 = [(SFPrivacyReportViewController *)&v8 initWithNibName:a3 bundle:a4];
  v5 = v4;
  if (v4)
  {
    [(SFPrivacyReportViewController *)v4 setPreferredContentSize:540.0, 564.0];
    v6 = v5;
  }

  return v5;
}

- (SFPrivacyReportViewController)initWithDomain:(id)a3
{
  v12[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(SFPrivacyReportViewController *)self initWithNibName:0 bundle:0];
  if (v5)
  {
    v6 = [v4 copy];
    domain = v5->_domain;
    v5->_domain = v6;

    v12[0] = objc_opt_class();
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
    v9 = [(SFPrivacyReportViewController *)v5 registerForTraitChanges:v8 withTarget:v5 action:sel_setNeedsUpdateRowHeight];

    v10 = v5;
  }

  return v5;
}

- (SFPrivacyReportViewController)initWithWebView:(id)a3
{
  v5 = a3;
  v6 = [v5 URL];
  v7 = [v6 host];
  v8 = [v7 safari_highLevelDomainFromHost];
  v9 = [(SFPrivacyReportViewController *)self initWithDomain:v8];

  if (v9)
  {
    objc_storeStrong(&v9->_webView, a3);
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

  v4 = [(SFPrivacyReportViewController *)self navigationItem];
  v5 = [v4 sf_preferredDismissOrDoneButtonItem];

  if (!v5)
  {
    v6 = objc_alloc(MEMORY[0x1E69DC708]);
    v7 = [v6 initWithBarButtonSystemItem:objc_msgSend(MEMORY[0x1E69DC708] target:"_sf_popoverDoneButtonItem") action:{self, sel__doneBarButtonItemAction_}];
    [v4 sf_setPreferredDismissOrDoneButtonItem:v7];
    v8 = [v4 sf_preferredDismissOrDoneButtonItem];
    [v8 setAccessibilityIdentifier:@"PrivacyReportDoneButton"];
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

- (void)_createTableViewIfNeededLoadingReport:(BOOL)a3
{
  v3 = a3;
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
    v7 = [(SFPrivacyReportViewController *)self view];
    v8 = objc_alloc(MEMORY[0x1E69DD020]);
    [v7 bounds];
    v9 = [v8 initWithFrame:v5 style:?];
    v10 = self->_tableView;
    self->_tableView = v9;

    v11 = objc_alloc_init(MEMORY[0x1E69DD250]);
    [(UITableView *)self->_tableView setTableHeaderView:v11];

    [(UITableView *)self->_tableView setAccessibilityIdentifier:@"PrivacyReportWindow"];
    [(UITableView *)self->_tableView setAutoresizingMask:18];
    [v7 addSubview:self->_tableView];
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
    [(SFPrivacyReportViewController *)self _reloadDataLoadingReport:v3];
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
  v3 = [(SFPrivacyReportViewController *)self view];
  [v3 bounds];
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

  v4 = [(UITableView *)self->_tableView tableHeaderView];
  [v4 frame];
  [v4 setFrame:?];
  [(UITableView *)self->_tableView setTableHeaderView:v4];
  [(UITableView *)self->_tableView setLayoutMargins:35.0, v3, 40.0, v3];
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __84__SFPrivacyReportViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v4[3] = &unk_1E848F860;
  v4[4] = self;
  [a4 animateAlongsideTransition:v4 completion:0];
}

uint64_t __84__SFPrivacyReportViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _updateUsesInsetStyle];
  [*(a1 + 32) _createTableViewIfNeededLoadingReport:0];
  v2 = *(*(a1 + 32) + 992);

  return [v2 reloadData];
}

- (void)_reloadDataLoadingReport:(BOOL)a3
{
  v3 = a3;
  v49[1] = *MEMORY[0x1E69E9840];
  self->_showingCurrentWebsite = 0;
  v5 = objc_alloc_init(MEMORY[0x1E69955A0]);
  v6 = v5;
  if (!v3)
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

      v19 = [(WBSPrivacyReportData *)self->_privacyReportData knownTrackers];
      v20 = [v19 firstObject];
      v21 = [v20 firstParties];
      self->_maxCountForDetailList = [v21 count];

      v22 = [(WBSPrivacyReportData *)self->_privacyReportData knownTrackers];
      v23 = v22;
      v24 = &__block_literal_global_2;
    }

    else
    {
      v26 = [(WBSPrivacyReportData *)self->_privacyReportData trackedFirstParties];
      v27 = [v26 firstObject];
      v28 = [v27 trackers];
      self->_maxCountForDetailList = [v28 count];

      v29 = [(WBSPrivacyReportData *)self->_privacyReportData trackedFirstParties];
      v23 = v29;
      if (self->_domain)
      {
        v42[0] = MEMORY[0x1E69E9820];
        v42[1] = 3221225472;
        v42[2] = __58__SFPrivacyReportViewController__reloadDataLoadingReport___block_invoke_2;
        v42[3] = &unk_1E848F8A8;
        v42[4] = self;
        v30 = [v29 indexOfObjectPassingTest:v42];
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
      v22 = v23;
    }

    v40 = [v22 safari_mapObjectsUsingBlock:v24];
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
  [(SFTableViewDiffableDataSource *)self->_diffableDataSource applySnapshot:v6 animatingDifferences:!v3];
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

- (int64_t)_sectionTypeFromSectionIndex:(int64_t)a3
{
  v4 = [(SFTableViewDiffableDataSource *)self->_diffableDataSource snapshot];
  v5 = [v4 sectionIdentifiers];
  v6 = [v5 objectAtIndexedSubscript:a3];
  v7 = [v6 integerValue];

  return v7;
}

- (id)_cellForRowWithIndexPath:(id)a3 itemIdentifier:(id)a4
{
  v33[3] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v7 type];
  v9 = 0;
  if (v8 > 6)
  {
    if ((v8 - 9) < 4)
    {
      v9 = [(UITableView *)self->_tableView dequeueReusableCellWithIdentifier:@"privacyProxyTipCell" forIndexPath:v6];
      [v9 setUsesInsetStyle:self->_usesInsetStyle];
      [v9 setDelegate:self];
      goto LABEL_30;
    }

    if (v8 == 7)
    {
      v9 = [(UITableView *)self->_tableView dequeueReusableCellWithIdentifier:@"trackerCell" forIndexPath:v6];
      v14 = [v7 userInfo];
      [v9 setTracker:v14];
LABEL_29:

      [v9 setMaxCount:self->_maxCountForDetailList];
      goto LABEL_30;
    }

    if (v8 != 8)
    {
      goto LABEL_30;
    }

    v9 = [(UITableView *)self->_tableView dequeueReusableCellWithIdentifier:@"subheaderCell" forIndexPath:v6];
    v13 = [v7 userInfo];
    [v9 setSubheaderText:v13];
LABEL_27:

    goto LABEL_30;
  }

  if (v8 > 2)
  {
    if (v8 <= 4)
    {
      if (v8 == 3)
      {
        v9 = [(UITableView *)self->_tableView dequeueReusableCellWithIdentifier:@"gridViewCellIdentifier" forIndexPath:v6];
        v15 = [v9 gridView];
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
        v9 = [(UITableView *)self->_tableView dequeueReusableCellWithIdentifier:@"gridViewCellIdentifier" forIndexPath:v6];
        v10 = [v9 gridView];
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

      v18 = [v9 gridView];
      [v18 setUsesInsetStyle:self->_usesInsetStyle];

      goto LABEL_30;
    }

    if (v8 == 5)
    {
      v9 = [(UITableView *)self->_tableView dequeueReusableCellWithIdentifier:@"detailTypeToggleCell" forIndexPath:v6];
      [v9 setDetailType:self->_listDetailType];
      [v9 setDelegate:self];
      [v9 setUseCurrentWebsiteHeader:self->_showingCurrentWebsite];
      goto LABEL_30;
    }

    v9 = [(UITableView *)self->_tableView dequeueReusableCellWithIdentifier:@"websiteCell" forIndexPath:v6];
    v14 = [v7 userInfo];
    [v9 setWebsite:v14];
    goto LABEL_29;
  }

  switch(v8)
  {
    case 0:
      v9 = [(UITableView *)self->_tableView dequeueReusableCellWithIdentifier:@"loadingReportCell"];
      if (v9)
      {
        break;
      }

      v9 = [objc_alloc(MEMORY[0x1E69DD028]) initWithStyle:0 reuseIdentifier:@"loadingReportCell"];
      [v9 setBackgroundView:0];
      v19 = [MEMORY[0x1E69DC888] clearColor];
      [v9 setBackgroundColor:v19];

      v13 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:100];
      [v13 setTranslatesAutoresizingMaskIntoConstraints:0];
      v20 = [v9 contentView];
      [v20 addSubview:v13];
      v28 = MEMORY[0x1E696ACD8];
      v32 = [v13 centerXAnchor];
      v31 = [v20 centerXAnchor];
      v30 = [v32 constraintEqualToAnchor:v31];
      v33[0] = v30;
      v29 = [v13 centerYAnchor];
      v27 = [v20 centerYAnchor];
      v21 = [v29 constraintEqualToAnchor:v27];
      v33[1] = v21;
      v22 = [v20 heightAnchor];
      v23 = [v13 heightAnchor];
      v24 = [v22 constraintEqualToAnchor:v23 multiplier:1.0 constant:20.0];
      v33[2] = v24;
      v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:3];
      [v28 activateConstraints:v25];

      [v13 startAnimating];
      goto LABEL_26;
    case 1:
      v9 = [(UITableView *)self->_tableView dequeueReusableCellWithIdentifier:@"noReportAvailableCell"];
      v13 = [v9 textLabel];
      [v13 setNumberOfLines:0];
      v20 = _WBSLocalizedString();
      [v13 setText:v20];
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

- (BOOL)_privacyProxyTip:(int64_t *)a3
{
  v4 = [MEMORY[0x1E69C9808] sharedManager];
  if (![v4 isPrivacyProxyActive])
  {
    goto LABEL_3;
  }

  v5 = [v4 state];
  v6 = [v4 isUserAccountInSubscriberTierForPrivacyProxy];
  if (v5 == 2)
  {
    goto LABEL_3;
  }

  if (v6)
  {
    if (v5 == 1)
    {
      v9 = 12;
      goto LABEL_15;
    }

    if (!v5)
    {
      v9 = 11;
LABEL_15:
      *a3 = v9;
      v7 = 1;
      goto LABEL_4;
    }
  }

  else
  {
    if (v5 != 1)
    {
      v9 = 9;
      goto LABEL_15;
    }

    v10 = [MEMORY[0x1E695E000] safari_browserDefaults];
    v11 = [v10 BOOLForKey:@"PrivacyReportPrivacyProxyDismissed"];

    if ((v11 & 1) == 0 && ([v4 isPrivacyProxyPaidTierUnavailableInUserCountry] & 1) == 0)
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

- (void)cellDidToggleDetailType:(id)a3
{
  self->_listDetailType = [a3 detailType];

  [(SFPrivacyReportViewController *)self _reloadDataLoadingReport:0];
}

- (void)cellDidToggleExpandDetailedExplanation:(id)a3
{
  self->_showExplanationDetailView = [a3 isExpanded];

  [(SFPrivacyReportViewController *)self _reloadDataLoadingReport:0];
}

- (void)cellPrivacyProxyUpsellDismissed:(id)a3
{
  v4 = [MEMORY[0x1E695E000] safari_browserDefaults];
  [v4 setBool:1 forKey:@"PrivacyReportPrivacyProxyDismissed"];

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

- (id)dataSource:(id)a3 headerTextForSection:(int64_t)a4
{
  if ([(SFPrivacyReportViewController *)self _sectionTypeFromSectionIndex:a4]== 3)
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

- (BOOL)tableView:(id)a3 shouldHighlightRowAtIndexPath:(id)a4
{
  v4 = [(SFTableViewDiffableDataSource *)self->_diffableDataSource itemIdentifierForIndexPath:a4];
  v5 = [v4 type];

  return (v5 & 0xFFFFFFFFFFFFFFFELL) == 6;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a4;
  [a3 deselectRowAtIndexPath:v6 animated:1];
  v14 = [(SFTableViewDiffableDataSource *)self->_diffableDataSource itemIdentifierForIndexPath:v6];

  v7 = [v14 type];
  if (v7 == 6)
  {
    v11 = [SFPrivacyReportWebsiteDetailViewController alloc];
    v12 = [v14 userInfo];
    v10 = [(SFPrivacyReportWebsiteDetailViewController *)v11 initWithWebsite:v12];

    [(SFPrivacyReportWebsiteDetailViewController *)v10 setSeparatesBlockedTrackers:self->_websiteDetailShouldSeparateBlockedTrackers];
  }

  else
  {
    if (v7 != 7)
    {
      goto LABEL_6;
    }

    v8 = [SFPrivacyReportTrackerDetailViewController alloc];
    v9 = [v14 userInfo];
    v10 = [(SFPrivacyReportTrackerDetailViewController *)v8 initWithTracker:v9];
  }

  v13 = [(SFPrivacyReportViewController *)self navigationController];
  [v13 pushViewController:v10 animated:1];

LABEL_6:
}

- (double)tableView:(id)a3 estimatedHeightForRowAtIndexPath:(id)a4
{
  v5 = a3;
  v6 = MEMORY[0x1E696AC88];
  v7 = a4;
  v8 = [v6 indexPathForRow:0 inSection:0];
  v9 = [v7 isEqual:v8];

  if (v9)
  {
    [v5 frame];
    Height = CGRectGetHeight(v13);
    [v5 frame];
    v11 = fmax(Height, CGRectGetWidth(v14));
  }

  else
  {
    v11 = *MEMORY[0x1E69DE3D0];
  }

  return v11;
}

@end