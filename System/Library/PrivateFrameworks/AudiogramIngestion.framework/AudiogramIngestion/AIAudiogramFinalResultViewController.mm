@interface AIAudiogramFinalResultViewController
- (AIAudiogramConfirmResultsViewControllerDelegate)audiogramConfirmationDelegate;
- (AIAudiogramFinalResultViewController)initWithAudiogram:(id)audiogram selectedFrequencies:(id)frequencies audiogramConfirmationDelegate:(id)delegate audiogramManualIngestionDelegate:(id)ingestionDelegate;
- (AIAudiogramManualIngestionDelegate)audiogramManualIngestionDelegate;
- (BOOL)_isAudiogramValid;
- (double)tableView:(id)view heightForFooterInSection:(int64_t)section;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view viewForFooterInSection:(int64_t)section;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_cancelTapped:(id)tapped;
- (void)_editFrequencyTapped:(id)tapped;
- (void)_saveToHealth:(id)health;
- (void)_updateMaxHearingLevelWidth;
- (void)_updateTableViewHeight;
- (void)contentCategoryDidChange:(id)change;
- (void)dateCellDidPickDate:(id)date;
- (void)enableDoneButton;
- (void)reloadAudiogram:(id)audiogram;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)updateFrequencies:(id)frequencies;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation AIAudiogramFinalResultViewController

- (AIAudiogramFinalResultViewController)initWithAudiogram:(id)audiogram selectedFrequencies:(id)frequencies audiogramConfirmationDelegate:(id)delegate audiogramManualIngestionDelegate:(id)ingestionDelegate
{
  audiogramCopy = audiogram;
  frequenciesCopy = frequencies;
  delegateCopy = delegate;
  ingestionDelegateCopy = ingestionDelegate;
  v37.receiver = self;
  v37.super_class = AIAudiogramFinalResultViewController;
  v14 = [(AIAudiogramFinalResultViewController *)&v37 initWithTitle:&stru_28535F0B0 detailText:0 symbolName:0 contentLayout:3];
  v15 = v14;
  if (v14)
  {
    [(AIAudiogramFinalResultViewController *)v14 setAudiogramConfirmationDelegate:delegateCopy];
    [(AIAudiogramFinalResultViewController *)v15 setAudiogramManualIngestionDelegate:ingestionDelegateCopy];
    [(AIAudiogramFinalResultViewController *)v15 setFrequencies:frequenciesCopy];
    [(AIAudiogramFinalResultViewController *)v15 setAudiogram:audiogramCopy];
    v43 = 0;
    v44 = &v43;
    v45 = 0x2050000000;
    v16 = getHKHealthStoreClass_softClass_0;
    v46 = getHKHealthStoreClass_softClass_0;
    if (!getHKHealthStoreClass_softClass_0)
    {
      v38 = MEMORY[0x277D85DD0];
      v39 = 3221225472;
      v40 = __getHKHealthStoreClass_block_invoke_0;
      v41 = &unk_278CEC150;
      v42 = &v43;
      __getHKHealthStoreClass_block_invoke_0(&v38);
      v16 = v44[3];
    }

    v17 = v16;
    _Block_object_dispose(&v43, 8);
    v18 = objc_alloc_init(v16);
    [(AIAudiogramFinalResultViewController *)v15 setHealthStore:v18];

    v43 = 0;
    v44 = &v43;
    v45 = 0x2050000000;
    v19 = getHKSingleAudiogramChartViewControllerClass_softClass_0;
    v46 = getHKSingleAudiogramChartViewControllerClass_softClass_0;
    if (!getHKSingleAudiogramChartViewControllerClass_softClass_0)
    {
      v38 = MEMORY[0x277D85DD0];
      v39 = 3221225472;
      v40 = __getHKSingleAudiogramChartViewControllerClass_block_invoke_0;
      v41 = &unk_278CEC150;
      v42 = &v43;
      __getHKSingleAudiogramChartViewControllerClass_block_invoke_0(&v38);
      v19 = v44[3];
    }

    v20 = v19;
    _Block_object_dispose(&v43, 8);
    v21 = [v19 alloc];
    healthStore = [(AIAudiogramFinalResultViewController *)v15 healthStore];
    audiogram = [(AIAudiogramFinalResultViewController *)v15 audiogram];
    v24 = [v21 initWithHealthStore:healthStore staticAudiogram:audiogram selectedFrequency:0];
    [(AIAudiogramFinalResultViewController *)v15 setChartViewController:v24];

    chartViewController = [(AIAudiogramFinalResultViewController *)v15 chartViewController];
    view = [chartViewController view];
    systemBackgroundColor = [MEMORY[0x277D75348] systemBackgroundColor];
    [view setBackgroundColor:systemBackgroundColor];

    boldButton = [MEMORY[0x277D37618] boldButton];
    [(AIAudiogramFinalResultViewController *)v15 setDoneButton:boldButton];

    doneButton = [(AIAudiogramFinalResultViewController *)v15 doneButton];
    v30 = aiLocString(@"AudiogramIngestionButtonDone");
    [doneButton setTitle:v30 forState:0];

    doneButton2 = [(AIAudiogramFinalResultViewController *)v15 doneButton];
    [doneButton2 addTarget:v15 action:sel__saveToHealth_ forControlEvents:64];

    buttonTray = [(AIAudiogramFinalResultViewController *)v15 buttonTray];
    doneButton3 = [(AIAudiogramFinalResultViewController *)v15 doneButton];
    [buttonTray addButton:doneButton3];

    [(AIAudiogramFinalResultViewController *)v15 enableDoneButton];
    v34 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:v15 action:sel__cancelTapped_];
    navigationItem = [(OBBaseWelcomeController *)v15 navigationItem];
    [navigationItem setRightBarButtonItem:v34];
  }

  return v15;
}

- (void)_cancelTapped:(id)tapped
{
  audiogramManualIngestionDelegate = [(AIAudiogramFinalResultViewController *)self audiogramManualIngestionDelegate];
  [audiogramManualIngestionDelegate cancelButtonTapped];
}

- (void)_editFrequencyTapped:(id)tapped
{
  v4 = [AIAudiogramFrequencySelectionViewController alloc];
  v5 = aiLocString(@"AudiogramFrequencyAddRemoveFrequenciesTitle");
  v6 = aiLocString(@"AudiogramFrequencyAddRemoveFrequenciesSubtitle");
  frequencies = [(AIAudiogramFinalResultViewController *)self frequencies];
  audiogramManualIngestionDelegate = [(AIAudiogramFinalResultViewController *)self audiogramManualIngestionDelegate];
  v10 = [(AIAudiogramFrequencySelectionViewController *)v4 initWithTitle:v5 detailText:v6 selectedFrequencies:frequencies delegate:audiogramManualIngestionDelegate isModal:1];

  v9 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v10];
  [(AIAudiogramFinalResultViewController *)self presentViewController:v9 animated:1 completion:0];
}

- (void)_saveToHealth:(id)health
{
  if ([(AIAudiogramFinalResultViewController *)self _isAudiogramValid])
  {
    healthStore = [(AIAudiogramFinalResultViewController *)self healthStore];
    audiogram = [(AIAudiogramFinalResultViewController *)self audiogram];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __54__AIAudiogramFinalResultViewController__saveToHealth___block_invoke;
    v6[3] = &unk_278CEC370;
    v6[4] = self;
    [healthStore saveObject:audiogram withCompletion:v6];
  }
}

void __54__AIAudiogramFinalResultViewController__saveToHealth___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v6 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __54__AIAudiogramFinalResultViewController__saveToHealth___block_invoke_312;
    block[3] = &unk_278CEC280;
    block[4] = *(a1 + 32);
    dispatch_async(v6, block);

    AXPerformBlockOnMainThread();
  }

  else
  {
    v7 = AXLogAudiogram();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __54__AIAudiogramFinalResultViewController__saveToHealth___block_invoke_cold_1(v5, v7);
    }
  }
}

void __54__AIAudiogramFinalResultViewController__saveToHealth___block_invoke_312(uint64_t a1)
{
  v11[4] = *MEMORY[0x277D85DE8];
  v10[0] = @"adjusted";
  v2 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(*(a1 + 32), "analyticsDidMakeAdjustments")}];
  v11[0] = v2;
  v10[1] = @"completed";
  v3 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(*(a1 + 32), "analyticsDidCompleteIngestion")}];
  v11[1] = v3;
  v10[2] = @"import_source";
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 32), "analyticsImportSource")}];
  v11[2] = v4;
  v10[3] = @"client";
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 32), "analyticsClient")}];
  v11[3] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:4];

  v7 = AXLogAggregate();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = 138412290;
    v9 = v6;
    _os_log_impl(&dword_24179B000, v7, OS_LOG_TYPE_INFO, "Audiogram Ingestion completed: %@", &v8, 0xCu);
  }

  AnalyticsSendEvent();
}

void __54__AIAudiogramFinalResultViewController__saveToHealth___block_invoke_331(uint64_t a1)
{
  v2 = [*(a1 + 32) audiogramConfirmationDelegate];

  if (v2)
  {
    v3 = [*(a1 + 32) audiogramConfirmationDelegate];
    v4 = [*(a1 + 32) audiogram];
    [v3 audiogramIngestionDidSaveAudiogram:v4];

    v5 = [*(a1 + 32) audiogramManualIngestionDelegate];
    [v5 completedAudiogramManualIngestion];
  }
}

- (void)enableDoneButton
{
  doneButton = [(AIAudiogramFinalResultViewController *)self doneButton];
  [doneButton setEnabled:{-[AIAudiogramFinalResultViewController _isAudiogramValid](self, "_isAudiogramValid")}];
}

- (BOOL)_isAudiogramValid
{
  audiogram = [(AIAudiogramFinalResultViewController *)self audiogram];
  if (audiogram)
  {
    audiogram2 = [(AIAudiogramFinalResultViewController *)self audiogram];
    sensitivityPoints = [audiogram2 sensitivityPoints];
    v6 = [sensitivityPoints count] != 0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)viewDidLoad
{
  v109[2] = *MEMORY[0x277D85DE8];
  v107.receiver = self;
  v107.super_class = AIAudiogramFinalResultViewController;
  [(OBBaseWelcomeController *)&v107 viewDidLoad];
  v3 = objc_opt_new();
  [v3 setTextAlignment:1];
  v4 = [MEMORY[0x277D74300] _preferredFontForTextStyle:*MEMORY[0x277D76A08] weight:*MEMORY[0x277D743F8]];
  [v3 setFont:v4];

  [v3 setAdjustsFontForContentSizeCategory:1];
  [v3 setNumberOfLines:0];
  v5 = aiLocString(@"AudiogramIngestionFinalResultsTitle");
  v106 = v3;
  [v3 setText:v5];

  v6 = objc_opt_new();
  [v6 setTextAlignment:1];
  v7 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
  [v6 setFont:v7];

  [v6 setAdjustsFontForContentSizeCategory:1];
  [v6 setNumberOfLines:0];
  v8 = aiLocString(@"AudiogramIngestionFinalResultsSubtitle");
  v105 = v6;
  [v6 setText:v8];

  v9 = objc_alloc(MEMORY[0x277D75A68]);
  v109[0] = v3;
  v109[1] = v6;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v109 count:2];
  v11 = [v9 initWithArrangedSubviews:v10];

  [v11 setAxis:1];
  [v11 setSpacing:4.0];
  systemBackgroundColor = [MEMORY[0x277D75348] systemBackgroundColor];
  [v11 setBackgroundColor:systemBackgroundColor];

  [v11 setLayoutMarginsRelativeArrangement:1];
  [v11 setLayoutMargins:{4.0, 16.0, 4.0, 16.0}];
  [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
  contentView = [(AIAudiogramFinalResultViewController *)self contentView];
  v14 = v11;
  [contentView addSubview:v11];

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel_contentCategoryDidChange_ name:*MEMORY[0x277D76810] object:0];

  chartViewController = [(AIAudiogramFinalResultViewController *)self chartViewController];
  view = [chartViewController view];
  [view setUserInteractionEnabled:0];

  chartViewController2 = [(AIAudiogramFinalResultViewController *)self chartViewController];
  view2 = [chartViewController2 view];
  [view2 setTranslatesAutoresizingMaskIntoConstraints:0];

  contentView2 = [(AIAudiogramFinalResultViewController *)self contentView];
  chartViewController3 = [(AIAudiogramFinalResultViewController *)self chartViewController];
  view3 = [chartViewController3 view];
  [contentView2 addSubview:view3];

  chartViewController4 = [(AIAudiogramFinalResultViewController *)self chartViewController];
  [(AIAudiogramFinalResultViewController *)self addChildViewController:chartViewController4];

  chartViewController5 = [(AIAudiogramFinalResultViewController *)self chartViewController];
  [chartViewController5 didMoveToParentViewController:self];

  chartViewController6 = [(AIAudiogramFinalResultViewController *)self chartViewController];
  view4 = [chartViewController6 view];
  [view4 _setSafeAreaInsetsFrozen:1];

  v27 = objc_alloc(MEMORY[0x277D75B40]);
  v28 = [v27 initWithFrame:2 style:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [(AIAudiogramFinalResultViewController *)self setTableView:v28];

  tableView = [(AIAudiogramFinalResultViewController *)self tableView];
  [tableView setDataSource:self];

  tableView2 = [(AIAudiogramFinalResultViewController *)self tableView];
  [tableView2 setDelegate:self];

  tableView3 = [(AIAudiogramFinalResultViewController *)self tableView];
  [tableView3 setScrollEnabled:0];

  tableView4 = [(AIAudiogramFinalResultViewController *)self tableView];
  [tableView4 setTranslatesAutoresizingMaskIntoConstraints:0];

  tableView5 = [(AIAudiogramFinalResultViewController *)self tableView];
  systemGroupedBackgroundColor = [MEMORY[0x277D75348] systemGroupedBackgroundColor];
  [tableView5 setBackgroundColor:systemGroupedBackgroundColor];

  tableView6 = [(AIAudiogramFinalResultViewController *)self tableView];
  [tableView6 setSectionHeaderTopPadding:8.0];

  contentView3 = [(AIAudiogramFinalResultViewController *)self contentView];
  tableView7 = [(AIAudiogramFinalResultViewController *)self tableView];
  [contentView3 addSubview:tableView7];

  view5 = [(AIAudiogramFinalResultViewController *)self view];
  systemGroupedBackgroundColor2 = [MEMORY[0x277D75348] systemGroupedBackgroundColor];
  [view5 setBackgroundColor:systemGroupedBackgroundColor2];

  v79 = MEMORY[0x277CCAAD0];
  topAnchor = [v14 topAnchor];
  contentView4 = [(AIAudiogramFinalResultViewController *)self contentView];
  topAnchor2 = [contentView4 topAnchor];
  v100 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:-50.0];
  v108[0] = v100;
  leadingAnchor = [v14 leadingAnchor];
  view6 = [(AIAudiogramFinalResultViewController *)self view];
  leadingAnchor2 = [view6 leadingAnchor];
  v96 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v108[1] = v96;
  v104 = v14;
  trailingAnchor = [v14 trailingAnchor];
  view7 = [(AIAudiogramFinalResultViewController *)self view];
  trailingAnchor2 = [view7 trailingAnchor];
  v92 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v108[2] = v92;
  chartViewController7 = [(AIAudiogramFinalResultViewController *)self chartViewController];
  view8 = [chartViewController7 view];
  topAnchor3 = [view8 topAnchor];
  bottomAnchor = [v14 bottomAnchor];
  v87 = [topAnchor3 constraintEqualToAnchor:bottomAnchor];
  v108[3] = v87;
  chartViewController8 = [(AIAudiogramFinalResultViewController *)self chartViewController];
  view9 = [chartViewController8 view];
  leadingAnchor3 = [view9 leadingAnchor];
  view10 = [(AIAudiogramFinalResultViewController *)self view];
  leadingAnchor4 = [view10 leadingAnchor];
  v81 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  v108[4] = v81;
  chartViewController9 = [(AIAudiogramFinalResultViewController *)self chartViewController];
  view11 = [chartViewController9 view];
  trailingAnchor3 = [view11 trailingAnchor];
  view12 = [(AIAudiogramFinalResultViewController *)self view];
  trailingAnchor4 = [view12 trailingAnchor];
  v74 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  v108[5] = v74;
  chartViewController10 = [(AIAudiogramFinalResultViewController *)self chartViewController];
  view13 = [chartViewController10 view];
  heightAnchor = [view13 heightAnchor];
  view14 = [(AIAudiogramFinalResultViewController *)self view];
  heightAnchor2 = [view14 heightAnchor];
  v68 = [heightAnchor constraintEqualToAnchor:heightAnchor2 multiplier:0.4];
  v108[6] = v68;
  tableView8 = [(AIAudiogramFinalResultViewController *)self tableView];
  topAnchor4 = [tableView8 topAnchor];
  chartViewController11 = [(AIAudiogramFinalResultViewController *)self chartViewController];
  view15 = [chartViewController11 view];
  bottomAnchor2 = [view15 bottomAnchor];
  v62 = [topAnchor4 constraintEqualToAnchor:bottomAnchor2];
  v108[7] = v62;
  tableView9 = [(AIAudiogramFinalResultViewController *)self tableView];
  leadingAnchor5 = [tableView9 leadingAnchor];
  view16 = [(AIAudiogramFinalResultViewController *)self view];
  leadingAnchor6 = [view16 leadingAnchor];
  v57 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
  v108[8] = v57;
  tableView10 = [(AIAudiogramFinalResultViewController *)self tableView];
  trailingAnchor5 = [tableView10 trailingAnchor];
  view17 = [(AIAudiogramFinalResultViewController *)self view];
  trailingAnchor6 = [view17 trailingAnchor];
  v42 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6];
  v108[9] = v42;
  tableView11 = [(AIAudiogramFinalResultViewController *)self tableView];
  bottomAnchor3 = [tableView11 bottomAnchor];
  contentView5 = [(AIAudiogramFinalResultViewController *)self contentView];
  bottomAnchor4 = [contentView5 bottomAnchor];
  v47 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
  v108[10] = v47;
  v48 = [MEMORY[0x277CBEA60] arrayWithObjects:v108 count:11];
  [v79 activateConstraints:v48];

  tableView12 = [(AIAudiogramFinalResultViewController *)self tableView];
  v50 = objc_opt_class();
  v51 = +[AIAudiogramFrequencyInputCell reuseIdentifier];
  [tableView12 registerClass:v50 forCellReuseIdentifier:v51];

  tableView13 = [(AIAudiogramFinalResultViewController *)self tableView];
  v53 = objc_opt_class();
  v54 = +[AIAudiogramV2ResultDateCell reuseIdentifier];
  [tableView13 registerClass:v53 forCellReuseIdentifier:v54];

  [(AIAudiogramFinalResultViewController *)self _updateMaxHearingLevelWidth];
}

- (void)viewWillAppear:(BOOL)appear
{
  v13.receiver = self;
  v13.super_class = AIAudiogramFinalResultViewController;
  [(AIAudiogramFinalResultViewController *)&v13 viewWillAppear:appear];
  if (![(AIAudiogramFinalResultViewController *)self didAddBackgroundLayer])
  {
    layer = [MEMORY[0x277CD9ED0] layer];
    systemBackgroundColor = [MEMORY[0x277D75348] systemBackgroundColor];
    [layer setBackgroundColor:{objc_msgSend(systemBackgroundColor, "CGColor")}];

    view = [(AIAudiogramFinalResultViewController *)self view];
    [view bounds];
    v8 = v7;
    view2 = [(AIAudiogramFinalResultViewController *)self view];
    [view2 bounds];
    [layer setFrame:{0.0, 0.0, v8, v10 * 0.4}];

    view3 = [(AIAudiogramFinalResultViewController *)self view];
    layer2 = [view3 layer];
    [layer2 insertSublayer:layer atIndex:0];

    [(AIAudiogramFinalResultViewController *)self setDidAddBackgroundLayer:1];
  }
}

- (void)contentCategoryDidChange:(id)change
{
  [(AIAudiogramFinalResultViewController *)self _updateMaxHearingLevelWidth];
  tableView = [(AIAudiogramFinalResultViewController *)self tableView];
  [tableView reloadData];

  [(AIAudiogramFinalResultViewController *)self _updateTableViewHeight];
}

- (void)viewDidLayoutSubviews
{
  [(AIAudiogramFinalResultViewController *)self _updateTableViewHeight];
  v3.receiver = self;
  v3.super_class = AIAudiogramFinalResultViewController;
  [(OBBaseWelcomeController *)&v3 viewDidLayoutSubviews];
}

- (void)_updateTableViewHeight
{
  [(UITableView *)self->_tableView layoutIfNeeded];
  [(UITableView *)self->_tableView contentSize];
  v4 = v3 + 100.0;
  tableViewHeightConstraint = [(AIAudiogramFinalResultViewController *)self tableViewHeightConstraint];
  if (tableViewHeightConstraint)
  {
  }

  else
  {
    tableView = [(AIAudiogramFinalResultViewController *)self tableView];

    if (tableView)
    {
      tableView2 = [(AIAudiogramFinalResultViewController *)self tableView];
      heightAnchor = [tableView2 heightAnchor];
      v12 = [heightAnchor constraintEqualToConstant:v4];
      [(AIAudiogramFinalResultViewController *)self setTableViewHeightConstraint:v12];

      tableViewHeightConstraint2 = [(AIAudiogramFinalResultViewController *)self tableViewHeightConstraint];
      [tableViewHeightConstraint2 setActive:1];
      goto LABEL_7;
    }
  }

  tableViewHeightConstraint3 = [(AIAudiogramFinalResultViewController *)self tableViewHeightConstraint];
  [tableViewHeightConstraint3 constant];
  v8 = v7;

  if (v4 == v8)
  {
    return;
  }

  tableViewHeightConstraint2 = [(AIAudiogramFinalResultViewController *)self tableViewHeightConstraint];
  [tableViewHeightConstraint2 setConstant:v4];
LABEL_7:
}

- (void)reloadAudiogram:(id)audiogram
{
  audiogramCopy = audiogram;
  [(AIAudiogramFinalResultViewController *)self setAudiogram:audiogramCopy];
  chartViewController = [(AIAudiogramFinalResultViewController *)self chartViewController];
  [chartViewController updateStaticAudiogram:audiogramCopy];

  [(AIAudiogramFinalResultViewController *)self _updateMaxHearingLevelWidth];
  tableView = [(AIAudiogramFinalResultViewController *)self tableView];
  [tableView reloadData];

  [(AIAudiogramFinalResultViewController *)self enableDoneButton];
}

- (void)updateFrequencies:(id)frequencies
{
  [(AIAudiogramFinalResultViewController *)self setFrequencies:frequencies];
  tableView = [(AIAudiogramFinalResultViewController *)self tableView];
  [tableView reloadData];
}

- (void)_updateMaxHearingLevelWidth
{
  v69[1] = *MEMORY[0x277D85DE8];
  decibelHearingLevelUnit = [getHKUnitClass_0() decibelHearingLevelUnit];
  v3 = aiLocString(@"AudiogramIngestionDecibelAbbreviation");
  v68 = *MEMORY[0x277D740A8];
  v4 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76988]];
  v69[0] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v69 forKeys:&v68 count:1];

  v6 = MEMORY[0x277CCACA8];
  v7 = aiLocString(@"AudiogramIngestionResultsFrequency");
  v8 = aiLocString(@"AudiogramIngestionResultsNoData");
  v56 = v3;
  v9 = [v6 stringWithFormat:v7, v8, v3];

  v55 = v5;
  [v9 sizeWithAttributes:v5];
  v11 = v10;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  selfCopy = self;
  audiogram = [(AIAudiogramFinalResultViewController *)self audiogram];
  sensitivityPoints = [audiogram sensitivityPoints];

  obj = sensitivityPoints;
  v53 = [sensitivityPoints countByEnumeratingWithState:&v62 objects:v67 count:16];
  v49 = v9;
  if (!v53)
  {
    v14 = 0.0;
    v15 = 0.0;
    goto LABEL_30;
  }

  v52 = *v63;
  v14 = 0.0;
  v15 = 0.0;
  do
  {
    for (i = 0; i != v53; ++i)
    {
      if (*v63 != v52)
      {
        objc_enumerationMutation(obj);
      }

      v17 = *(*(&v62 + 1) + 8 * i);
      v58 = 0u;
      v59 = 0u;
      v60 = 0u;
      v61 = 0u;
      tests = [v17 tests];
      v19 = [tests countByEnumeratingWithState:&v58 objects:v66 count:16];
      if (!v19)
      {

        v15 = fmax(v15, v11);
        continue;
      }

      v20 = v19;
      v54 = i;
      v21 = 0;
      v22 = 0;
      v23 = *v59;
      v24 = v15;
      do
      {
        for (j = 0; j != v20; ++j)
        {
          if (*v59 != v23)
          {
            objc_enumerationMutation(tests);
          }

          v26 = *(*(&v58 + 1) + 8 * j);
          sensitivity = [v26 sensitivity];
          [sensitivity doubleValueForUnit:decibelHearingLevelUnit];
          v29 = v28;

          v30 = MEMORY[0x277CCACA8];
          v31 = aiLocString(@"AudiogramIngestionResultsFrequency");
          v32 = [MEMORY[0x277CCABB0] numberWithDouble:v29];
          v33 = [v30 stringWithFormat:v31, v32, v56];

          [v33 sizeWithAttributes:v55];
          v35 = v34;
          side = [v26 side];
          v37 = fmax(v14, v35);
          v38 = fmax(v24, v35);
          if (side)
          {
            v21 = 1;
          }

          else
          {
            v22 = 1;
          }

          if (side)
          {
            v14 = v37;
          }

          else
          {
            v24 = v38;
          }
        }

        v20 = [tests countByEnumeratingWithState:&v58 objects:v66 count:16];
      }

      while (v20);

      v15 = fmax(v24, v11);
      if ((v21 & 1) == 0)
      {
        i = v54;
        if ((v22 & 1) == 0)
        {
          continue;
        }

        v14 = fmax(v14, v11);
LABEL_25:
        v15 = v24;
        continue;
      }

      i = v54;
      if (v22)
      {
        goto LABEL_25;
      }
    }

    v53 = [obj countByEnumeratingWithState:&v62 objects:v67 count:16];
  }

  while (v53);
LABEL_30:

  audiogram2 = [(AIAudiogramFinalResultViewController *)selfCopy audiogram];
  sensitivityPoints2 = [audiogram2 sensitivityPoints];
  v41 = [sensitivityPoints2 count];
  frequencies = [(AIAudiogramFinalResultViewController *)selfCopy frequencies];
  v43 = [frequencies count];

  v44 = fmax(v15, v11);
  v45 = fmax(v14, v11);
  if (v41 == v43)
  {
    v46 = v14;
  }

  else
  {
    v46 = v45;
  }

  if (v41 == v43)
  {
    v44 = v15;
  }

  v47 = [MEMORY[0x277CCABB0] numberWithDouble:v44];
  [(AIAudiogramFinalResultViewController *)selfCopy setMaxLeftHearingLevelWidth:v47];

  v48 = [MEMORY[0x277CCABB0] numberWithDouble:v46];
  [(AIAudiogramFinalResultViewController *)selfCopy setMaxRightHearingLevelWidth:v48];
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  if ([pathCopy section])
  {
    v47 = 0;
    v48 = &v47;
    v49 = 0x3032000000;
    v50 = __Block_byref_object_copy__1;
    v51 = __Block_byref_object_dispose__1;
    v52 = 0;
    v41 = 0;
    v42 = &v41;
    v43 = 0x3032000000;
    v44 = __Block_byref_object_copy__1;
    v45 = __Block_byref_object_dispose__1;
    v46 = 0;
    frequencies = [(AIAudiogramFinalResultViewController *)self frequencies];
    v9 = [frequencies objectAtIndex:{objc_msgSend(pathCopy, "row")}];

    decibelHearingLevelUnit = [getHKUnitClass_0() decibelHearingLevelUnit];
    v37 = 0;
    v38 = &v37;
    v39 = 0x2020000000;
    v40 = 0;
    v33 = 0;
    v34 = &v33;
    v35 = 0x2020000000;
    v36 = 0;
    audiogram = [(AIAudiogramFinalResultViewController *)self audiogram];
    sensitivityPoints = [audiogram sensitivityPoints];
    v23 = MEMORY[0x277D85DD0];
    v24 = 3221225472;
    v25 = __72__AIAudiogramFinalResultViewController_tableView_cellForRowAtIndexPath___block_invoke;
    v26 = &unk_278CEC3C0;
    v13 = v9;
    v27 = v13;
    v29 = &v47;
    v14 = decibelHearingLevelUnit;
    v28 = v14;
    v30 = &v37;
    v31 = &v41;
    v32 = &v33;
    [sensitivityPoints enumerateObjectsUsingBlock:&v23];

    v15 = [AIAudiogramFrequencyInputCell reuseIdentifier:v23];
    v16 = [viewCopy dequeueReusableCellWithIdentifier:v15];

    maxLeftHearingLevelWidth = [(AIAudiogramFinalResultViewController *)self maxLeftHearingLevelWidth];
    [v16 setLeftEarLabelWidth:maxLeftHearingLevelWidth];

    maxRightHearingLevelWidth = [(AIAudiogramFinalResultViewController *)self maxRightHearingLevelWidth];
    [v16 setRightEarLabelWidth:maxRightHearingLevelWidth];

    [v16 setFrequency:v13];
    [v16 setLeftHearingLevel:v48[5]];
    [v16 setRightHearingLevel:v42[5]];
    [v16 setLeftEarMasked:*(v38 + 24)];
    [v16 setRightEarMasked:*(v34 + 24)];
    [v16 configureLayout];
    [v16 setAccessoryType:1];

    _Block_object_dispose(&v33, 8);
    _Block_object_dispose(&v37, 8);

    _Block_object_dispose(&v41, 8);
    _Block_object_dispose(&v47, 8);
  }

  else
  {
    v19 = +[AIAudiogramV2ResultDateCell reuseIdentifier];
    v16 = [viewCopy dequeueReusableCellWithIdentifier:v19];

    audiogramManualIngestionDelegate = [(AIAudiogramFinalResultViewController *)self audiogramManualIngestionDelegate];
    getPickedDate = [audiogramManualIngestionDelegate getPickedDate];
    [v16 setDate:getPickedDate];

    [v16 setDelegate:self];
    [v16 setSelectionStyle:0];
    [v16 configureLayout];
  }

  return v16;
}

void __72__AIAudiogramFinalResultViewController_tableView_cellForRowAtIndexPath___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 frequency];
  v5 = [getHKUnitClass_0() hertzUnit];
  [v4 doubleValueForUnit:v5];
  v7 = v6;
  [*(a1 + 32) doubleValue];
  v9 = v8;

  if (v7 == v9)
  {
    v10 = [v3 tests];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __72__AIAudiogramFinalResultViewController_tableView_cellForRowAtIndexPath___block_invoke_2;
    v14[3] = &unk_278CEC398;
    v13 = *(a1 + 40);
    v11 = v13;
    v12 = *(a1 + 56);
    v15 = v13;
    v16 = v12;
    v17 = *(a1 + 72);
    [v10 enumerateObjectsUsingBlock:v14];
  }
}

void __72__AIAudiogramFinalResultViewController_tableView_cellForRowAtIndexPath___block_invoke_2(uint64_t a1, void *a2)
{
  v11 = a2;
  if ([v11 side])
  {
    if ([v11 side] != 1)
    {
      goto LABEL_6;
    }

    v3 = v11;
    v4 = 64;
    v5 = 56;
  }

  else
  {
    v3 = v11;
    v4 = 48;
    v5 = 40;
  }

  v6 = MEMORY[0x277CCABB0];
  v7 = [v3 sensitivity];
  [v7 doubleValueForUnit:*(a1 + 32)];
  v8 = [v6 numberWithDouble:?];
  v9 = *(*(a1 + v5) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  *(*(*(a1 + v4) + 8) + 24) = [v11 masked];
LABEL_6:
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  if (!section)
  {
    return 1;
  }

  frequencies = [(AIAudiogramFinalResultViewController *)self frequencies];
  v5 = [frequencies count];

  return v5;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
  if ([pathCopy section])
  {
    v7 = [viewCopy cellForRowAtIndexPath:pathCopy];
    frequency = [v7 frequency];
    audiogramManualIngestionDelegate = [(AIAudiogramFinalResultViewController *)self audiogramManualIngestionDelegate];
    [audiogramManualIngestionDelegate didSelectNodeToEditWithSelectedFrequency:frequency];
  }
}

- (id)tableView:(id)view viewForFooterInSection:(int64_t)section
{
  v46[4] = *MEMORY[0x277D85DE8];
  if (section)
  {
    v5 = MEMORY[0x277D75D18];
    viewCopy = view;
    v6 = [v5 alloc];
    v7 = [v6 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    v8 = objc_alloc_init(MEMORY[0x277D75A68]);
    [(AIAudiogramFinalResultViewController *)self setStackView:v8];

    stackView = [(AIAudiogramFinalResultViewController *)self stackView];
    [stackView setAxis:1];

    stackView2 = [(AIAudiogramFinalResultViewController *)self stackView];
    [stackView2 setTranslatesAutoresizingMaskIntoConstraints:0];

    stackView3 = [(AIAudiogramFinalResultViewController *)self stackView];
    [v7 addSubview:stackView3];

    v12 = [MEMORY[0x277D75220] buttonWithType:1];
    v13 = aiLocString(@"AudiogramFrequencyAddRemoveFrequenciesTitle");
    [v12 setTitle:v13 forState:0];

    v14 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
    titleLabel = [v12 titleLabel];
    [titleLabel setFont:v14];

    titleLabel2 = [v12 titleLabel];
    [titleLabel2 setNumberOfLines:0];

    [v12 setContentHorizontalAlignment:4];
    v44 = v12;
    [v12 addTarget:self action:sel__editFrequencyTapped_ forControlEvents:64];
    stackView4 = [(AIAudiogramFinalResultViewController *)self stackView];
    [stackView4 addArrangedSubview:v12];

    v36 = MEMORY[0x277CCAAD0];
    stackView5 = [(AIAudiogramFinalResultViewController *)self stackView];
    leadingAnchor = [stackView5 leadingAnchor];
    leadingAnchor2 = [v7 leadingAnchor];
    v40 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:16.0];
    v46[0] = v40;
    stackView6 = [(AIAudiogramFinalResultViewController *)self stackView];
    trailingAnchor = [stackView6 trailingAnchor];
    trailingAnchor2 = [v7 trailingAnchor];
    v34 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-16.0];
    v46[1] = v34;
    stackView7 = [(AIAudiogramFinalResultViewController *)self stackView];
    topAnchor = [stackView7 topAnchor];
    v38 = v7;
    topAnchor2 = [v7 topAnchor];
    v21 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:14.0];
    v46[2] = v21;
    stackView8 = [(AIAudiogramFinalResultViewController *)self stackView];
    bottomAnchor = [stackView8 bottomAnchor];
    bottomAnchor2 = [v7 bottomAnchor];
    v25 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v46[3] = v25;
    v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v46 count:4];
    [v36 activateConstraints:v26];

    stackView9 = [(AIAudiogramFinalResultViewController *)self stackView];
    [stackView9 layoutIfNeeded];

    [viewCopy frame];
    v29 = v28;

    selfCopy = self;
    v31 = v38;
    stackView10 = [(AIAudiogramFinalResultViewController *)selfCopy stackView];
    [stackView10 frame];
    [v38 setFrame:{0.0, 0.0, v29}];
  }

  else
  {
    v31 = 0;
  }

  return v31;
}

- (double)tableView:(id)view heightForFooterInSection:(int64_t)section
{
  result = *MEMORY[0x277D76F30];
  if (!section)
  {
    return 0.01;
  }

  return result;
}

- (void)dateCellDidPickDate:(id)date
{
  dateCopy = date;
  audiogramManualIngestionDelegate = [(AIAudiogramFinalResultViewController *)self audiogramManualIngestionDelegate];
  [audiogramManualIngestionDelegate updateAudiogramDate:dateCopy];
}

- (AIAudiogramConfirmResultsViewControllerDelegate)audiogramConfirmationDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_audiogramConfirmationDelegate);

  return WeakRetained;
}

- (AIAudiogramManualIngestionDelegate)audiogramManualIngestionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_audiogramManualIngestionDelegate);

  return WeakRetained;
}

void __54__AIAudiogramFinalResultViewController__saveToHealth___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_24179B000, a2, OS_LOG_TYPE_ERROR, "Failed to write audiogram sample to HK with error: %@", &v2, 0xCu);
}

@end