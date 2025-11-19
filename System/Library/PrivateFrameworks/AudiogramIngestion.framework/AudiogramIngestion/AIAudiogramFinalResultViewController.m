@interface AIAudiogramFinalResultViewController
- (AIAudiogramConfirmResultsViewControllerDelegate)audiogramConfirmationDelegate;
- (AIAudiogramFinalResultViewController)initWithAudiogram:(id)a3 selectedFrequencies:(id)a4 audiogramConfirmationDelegate:(id)a5 audiogramManualIngestionDelegate:(id)a6;
- (AIAudiogramManualIngestionDelegate)audiogramManualIngestionDelegate;
- (BOOL)_isAudiogramValid;
- (double)tableView:(id)a3 heightForFooterInSection:(int64_t)a4;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 viewForFooterInSection:(int64_t)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_cancelTapped:(id)a3;
- (void)_editFrequencyTapped:(id)a3;
- (void)_saveToHealth:(id)a3;
- (void)_updateMaxHearingLevelWidth;
- (void)_updateTableViewHeight;
- (void)contentCategoryDidChange:(id)a3;
- (void)dateCellDidPickDate:(id)a3;
- (void)enableDoneButton;
- (void)reloadAudiogram:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)updateFrequencies:(id)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation AIAudiogramFinalResultViewController

- (AIAudiogramFinalResultViewController)initWithAudiogram:(id)a3 selectedFrequencies:(id)a4 audiogramConfirmationDelegate:(id)a5 audiogramManualIngestionDelegate:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v37.receiver = self;
  v37.super_class = AIAudiogramFinalResultViewController;
  v14 = [(AIAudiogramFinalResultViewController *)&v37 initWithTitle:&stru_28535F0B0 detailText:0 symbolName:0 contentLayout:3];
  v15 = v14;
  if (v14)
  {
    [(AIAudiogramFinalResultViewController *)v14 setAudiogramConfirmationDelegate:v12];
    [(AIAudiogramFinalResultViewController *)v15 setAudiogramManualIngestionDelegate:v13];
    [(AIAudiogramFinalResultViewController *)v15 setFrequencies:v11];
    [(AIAudiogramFinalResultViewController *)v15 setAudiogram:v10];
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
    v22 = [(AIAudiogramFinalResultViewController *)v15 healthStore];
    v23 = [(AIAudiogramFinalResultViewController *)v15 audiogram];
    v24 = [v21 initWithHealthStore:v22 staticAudiogram:v23 selectedFrequency:0];
    [(AIAudiogramFinalResultViewController *)v15 setChartViewController:v24];

    v25 = [(AIAudiogramFinalResultViewController *)v15 chartViewController];
    v26 = [v25 view];
    v27 = [MEMORY[0x277D75348] systemBackgroundColor];
    [v26 setBackgroundColor:v27];

    v28 = [MEMORY[0x277D37618] boldButton];
    [(AIAudiogramFinalResultViewController *)v15 setDoneButton:v28];

    v29 = [(AIAudiogramFinalResultViewController *)v15 doneButton];
    v30 = aiLocString(@"AudiogramIngestionButtonDone");
    [v29 setTitle:v30 forState:0];

    v31 = [(AIAudiogramFinalResultViewController *)v15 doneButton];
    [v31 addTarget:v15 action:sel__saveToHealth_ forControlEvents:64];

    v32 = [(AIAudiogramFinalResultViewController *)v15 buttonTray];
    v33 = [(AIAudiogramFinalResultViewController *)v15 doneButton];
    [v32 addButton:v33];

    [(AIAudiogramFinalResultViewController *)v15 enableDoneButton];
    v34 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:v15 action:sel__cancelTapped_];
    v35 = [(OBBaseWelcomeController *)v15 navigationItem];
    [v35 setRightBarButtonItem:v34];
  }

  return v15;
}

- (void)_cancelTapped:(id)a3
{
  v3 = [(AIAudiogramFinalResultViewController *)self audiogramManualIngestionDelegate];
  [v3 cancelButtonTapped];
}

- (void)_editFrequencyTapped:(id)a3
{
  v4 = [AIAudiogramFrequencySelectionViewController alloc];
  v5 = aiLocString(@"AudiogramFrequencyAddRemoveFrequenciesTitle");
  v6 = aiLocString(@"AudiogramFrequencyAddRemoveFrequenciesSubtitle");
  v7 = [(AIAudiogramFinalResultViewController *)self frequencies];
  v8 = [(AIAudiogramFinalResultViewController *)self audiogramManualIngestionDelegate];
  v10 = [(AIAudiogramFrequencySelectionViewController *)v4 initWithTitle:v5 detailText:v6 selectedFrequencies:v7 delegate:v8 isModal:1];

  v9 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v10];
  [(AIAudiogramFinalResultViewController *)self presentViewController:v9 animated:1 completion:0];
}

- (void)_saveToHealth:(id)a3
{
  if ([(AIAudiogramFinalResultViewController *)self _isAudiogramValid])
  {
    v4 = [(AIAudiogramFinalResultViewController *)self healthStore];
    v5 = [(AIAudiogramFinalResultViewController *)self audiogram];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __54__AIAudiogramFinalResultViewController__saveToHealth___block_invoke;
    v6[3] = &unk_278CEC370;
    v6[4] = self;
    [v4 saveObject:v5 withCompletion:v6];
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
  v3 = [(AIAudiogramFinalResultViewController *)self doneButton];
  [v3 setEnabled:{-[AIAudiogramFinalResultViewController _isAudiogramValid](self, "_isAudiogramValid")}];
}

- (BOOL)_isAudiogramValid
{
  v3 = [(AIAudiogramFinalResultViewController *)self audiogram];
  if (v3)
  {
    v4 = [(AIAudiogramFinalResultViewController *)self audiogram];
    v5 = [v4 sensitivityPoints];
    v6 = [v5 count] != 0;
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
  v12 = [MEMORY[0x277D75348] systemBackgroundColor];
  [v11 setBackgroundColor:v12];

  [v11 setLayoutMarginsRelativeArrangement:1];
  [v11 setLayoutMargins:{4.0, 16.0, 4.0, 16.0}];
  [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
  v13 = [(AIAudiogramFinalResultViewController *)self contentView];
  v14 = v11;
  [v13 addSubview:v11];

  v15 = [MEMORY[0x277CCAB98] defaultCenter];
  [v15 addObserver:self selector:sel_contentCategoryDidChange_ name:*MEMORY[0x277D76810] object:0];

  v16 = [(AIAudiogramFinalResultViewController *)self chartViewController];
  v17 = [v16 view];
  [v17 setUserInteractionEnabled:0];

  v18 = [(AIAudiogramFinalResultViewController *)self chartViewController];
  v19 = [v18 view];
  [v19 setTranslatesAutoresizingMaskIntoConstraints:0];

  v20 = [(AIAudiogramFinalResultViewController *)self contentView];
  v21 = [(AIAudiogramFinalResultViewController *)self chartViewController];
  v22 = [v21 view];
  [v20 addSubview:v22];

  v23 = [(AIAudiogramFinalResultViewController *)self chartViewController];
  [(AIAudiogramFinalResultViewController *)self addChildViewController:v23];

  v24 = [(AIAudiogramFinalResultViewController *)self chartViewController];
  [v24 didMoveToParentViewController:self];

  v25 = [(AIAudiogramFinalResultViewController *)self chartViewController];
  v26 = [v25 view];
  [v26 _setSafeAreaInsetsFrozen:1];

  v27 = objc_alloc(MEMORY[0x277D75B40]);
  v28 = [v27 initWithFrame:2 style:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [(AIAudiogramFinalResultViewController *)self setTableView:v28];

  v29 = [(AIAudiogramFinalResultViewController *)self tableView];
  [v29 setDataSource:self];

  v30 = [(AIAudiogramFinalResultViewController *)self tableView];
  [v30 setDelegate:self];

  v31 = [(AIAudiogramFinalResultViewController *)self tableView];
  [v31 setScrollEnabled:0];

  v32 = [(AIAudiogramFinalResultViewController *)self tableView];
  [v32 setTranslatesAutoresizingMaskIntoConstraints:0];

  v33 = [(AIAudiogramFinalResultViewController *)self tableView];
  v34 = [MEMORY[0x277D75348] systemGroupedBackgroundColor];
  [v33 setBackgroundColor:v34];

  v35 = [(AIAudiogramFinalResultViewController *)self tableView];
  [v35 setSectionHeaderTopPadding:8.0];

  v36 = [(AIAudiogramFinalResultViewController *)self contentView];
  v37 = [(AIAudiogramFinalResultViewController *)self tableView];
  [v36 addSubview:v37];

  v38 = [(AIAudiogramFinalResultViewController *)self view];
  v39 = [MEMORY[0x277D75348] systemGroupedBackgroundColor];
  [v38 setBackgroundColor:v39];

  v79 = MEMORY[0x277CCAAD0];
  v102 = [v14 topAnchor];
  v103 = [(AIAudiogramFinalResultViewController *)self contentView];
  v101 = [v103 topAnchor];
  v100 = [v102 constraintEqualToAnchor:v101 constant:-50.0];
  v108[0] = v100;
  v98 = [v14 leadingAnchor];
  v99 = [(AIAudiogramFinalResultViewController *)self view];
  v97 = [v99 leadingAnchor];
  v96 = [v98 constraintEqualToAnchor:v97];
  v108[1] = v96;
  v104 = v14;
  v94 = [v14 trailingAnchor];
  v95 = [(AIAudiogramFinalResultViewController *)self view];
  v93 = [v95 trailingAnchor];
  v92 = [v94 constraintEqualToAnchor:v93];
  v108[2] = v92;
  v91 = [(AIAudiogramFinalResultViewController *)self chartViewController];
  v90 = [v91 view];
  v89 = [v90 topAnchor];
  v88 = [v14 bottomAnchor];
  v87 = [v89 constraintEqualToAnchor:v88];
  v108[3] = v87;
  v86 = [(AIAudiogramFinalResultViewController *)self chartViewController];
  v85 = [v86 view];
  v83 = [v85 leadingAnchor];
  v84 = [(AIAudiogramFinalResultViewController *)self view];
  v82 = [v84 leadingAnchor];
  v81 = [v83 constraintEqualToAnchor:v82];
  v108[4] = v81;
  v80 = [(AIAudiogramFinalResultViewController *)self chartViewController];
  v78 = [v80 view];
  v76 = [v78 trailingAnchor];
  v77 = [(AIAudiogramFinalResultViewController *)self view];
  v75 = [v77 trailingAnchor];
  v74 = [v76 constraintEqualToAnchor:v75];
  v108[5] = v74;
  v73 = [(AIAudiogramFinalResultViewController *)self chartViewController];
  v72 = [v73 view];
  v70 = [v72 heightAnchor];
  v71 = [(AIAudiogramFinalResultViewController *)self view];
  v69 = [v71 heightAnchor];
  v68 = [v70 constraintEqualToAnchor:v69 multiplier:0.4];
  v108[6] = v68;
  v67 = [(AIAudiogramFinalResultViewController *)self tableView];
  v65 = [v67 topAnchor];
  v66 = [(AIAudiogramFinalResultViewController *)self chartViewController];
  v64 = [v66 view];
  v63 = [v64 bottomAnchor];
  v62 = [v65 constraintEqualToAnchor:v63];
  v108[7] = v62;
  v61 = [(AIAudiogramFinalResultViewController *)self tableView];
  v59 = [v61 leadingAnchor];
  v60 = [(AIAudiogramFinalResultViewController *)self view];
  v58 = [v60 leadingAnchor];
  v57 = [v59 constraintEqualToAnchor:v58];
  v108[8] = v57;
  v56 = [(AIAudiogramFinalResultViewController *)self tableView];
  v55 = [v56 trailingAnchor];
  v40 = [(AIAudiogramFinalResultViewController *)self view];
  v41 = [v40 trailingAnchor];
  v42 = [v55 constraintEqualToAnchor:v41];
  v108[9] = v42;
  v43 = [(AIAudiogramFinalResultViewController *)self tableView];
  v44 = [v43 bottomAnchor];
  v45 = [(AIAudiogramFinalResultViewController *)self contentView];
  v46 = [v45 bottomAnchor];
  v47 = [v44 constraintEqualToAnchor:v46];
  v108[10] = v47;
  v48 = [MEMORY[0x277CBEA60] arrayWithObjects:v108 count:11];
  [v79 activateConstraints:v48];

  v49 = [(AIAudiogramFinalResultViewController *)self tableView];
  v50 = objc_opt_class();
  v51 = +[AIAudiogramFrequencyInputCell reuseIdentifier];
  [v49 registerClass:v50 forCellReuseIdentifier:v51];

  v52 = [(AIAudiogramFinalResultViewController *)self tableView];
  v53 = objc_opt_class();
  v54 = +[AIAudiogramV2ResultDateCell reuseIdentifier];
  [v52 registerClass:v53 forCellReuseIdentifier:v54];

  [(AIAudiogramFinalResultViewController *)self _updateMaxHearingLevelWidth];
}

- (void)viewWillAppear:(BOOL)a3
{
  v13.receiver = self;
  v13.super_class = AIAudiogramFinalResultViewController;
  [(AIAudiogramFinalResultViewController *)&v13 viewWillAppear:a3];
  if (![(AIAudiogramFinalResultViewController *)self didAddBackgroundLayer])
  {
    v4 = [MEMORY[0x277CD9ED0] layer];
    v5 = [MEMORY[0x277D75348] systemBackgroundColor];
    [v4 setBackgroundColor:{objc_msgSend(v5, "CGColor")}];

    v6 = [(AIAudiogramFinalResultViewController *)self view];
    [v6 bounds];
    v8 = v7;
    v9 = [(AIAudiogramFinalResultViewController *)self view];
    [v9 bounds];
    [v4 setFrame:{0.0, 0.0, v8, v10 * 0.4}];

    v11 = [(AIAudiogramFinalResultViewController *)self view];
    v12 = [v11 layer];
    [v12 insertSublayer:v4 atIndex:0];

    [(AIAudiogramFinalResultViewController *)self setDidAddBackgroundLayer:1];
  }
}

- (void)contentCategoryDidChange:(id)a3
{
  [(AIAudiogramFinalResultViewController *)self _updateMaxHearingLevelWidth];
  v4 = [(AIAudiogramFinalResultViewController *)self tableView];
  [v4 reloadData];

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
  v5 = [(AIAudiogramFinalResultViewController *)self tableViewHeightConstraint];
  if (v5)
  {
  }

  else
  {
    v9 = [(AIAudiogramFinalResultViewController *)self tableView];

    if (v9)
    {
      v10 = [(AIAudiogramFinalResultViewController *)self tableView];
      v11 = [v10 heightAnchor];
      v12 = [v11 constraintEqualToConstant:v4];
      [(AIAudiogramFinalResultViewController *)self setTableViewHeightConstraint:v12];

      v13 = [(AIAudiogramFinalResultViewController *)self tableViewHeightConstraint];
      [v13 setActive:1];
      goto LABEL_7;
    }
  }

  v6 = [(AIAudiogramFinalResultViewController *)self tableViewHeightConstraint];
  [v6 constant];
  v8 = v7;

  if (v4 == v8)
  {
    return;
  }

  v13 = [(AIAudiogramFinalResultViewController *)self tableViewHeightConstraint];
  [v13 setConstant:v4];
LABEL_7:
}

- (void)reloadAudiogram:(id)a3
{
  v4 = a3;
  [(AIAudiogramFinalResultViewController *)self setAudiogram:v4];
  v5 = [(AIAudiogramFinalResultViewController *)self chartViewController];
  [v5 updateStaticAudiogram:v4];

  [(AIAudiogramFinalResultViewController *)self _updateMaxHearingLevelWidth];
  v6 = [(AIAudiogramFinalResultViewController *)self tableView];
  [v6 reloadData];

  [(AIAudiogramFinalResultViewController *)self enableDoneButton];
}

- (void)updateFrequencies:(id)a3
{
  [(AIAudiogramFinalResultViewController *)self setFrequencies:a3];
  v4 = [(AIAudiogramFinalResultViewController *)self tableView];
  [v4 reloadData];
}

- (void)_updateMaxHearingLevelWidth
{
  v69[1] = *MEMORY[0x277D85DE8];
  v57 = [getHKUnitClass_0() decibelHearingLevelUnit];
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
  v50 = self;
  v12 = [(AIAudiogramFinalResultViewController *)self audiogram];
  v13 = [v12 sensitivityPoints];

  obj = v13;
  v53 = [v13 countByEnumeratingWithState:&v62 objects:v67 count:16];
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
      v18 = [v17 tests];
      v19 = [v18 countByEnumeratingWithState:&v58 objects:v66 count:16];
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
            objc_enumerationMutation(v18);
          }

          v26 = *(*(&v58 + 1) + 8 * j);
          v27 = [v26 sensitivity];
          [v27 doubleValueForUnit:v57];
          v29 = v28;

          v30 = MEMORY[0x277CCACA8];
          v31 = aiLocString(@"AudiogramIngestionResultsFrequency");
          v32 = [MEMORY[0x277CCABB0] numberWithDouble:v29];
          v33 = [v30 stringWithFormat:v31, v32, v56];

          [v33 sizeWithAttributes:v55];
          v35 = v34;
          v36 = [v26 side];
          v37 = fmax(v14, v35);
          v38 = fmax(v24, v35);
          if (v36)
          {
            v21 = 1;
          }

          else
          {
            v22 = 1;
          }

          if (v36)
          {
            v14 = v37;
          }

          else
          {
            v24 = v38;
          }
        }

        v20 = [v18 countByEnumeratingWithState:&v58 objects:v66 count:16];
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

  v39 = [(AIAudiogramFinalResultViewController *)v50 audiogram];
  v40 = [v39 sensitivityPoints];
  v41 = [v40 count];
  v42 = [(AIAudiogramFinalResultViewController *)v50 frequencies];
  v43 = [v42 count];

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
  [(AIAudiogramFinalResultViewController *)v50 setMaxLeftHearingLevelWidth:v47];

  v48 = [MEMORY[0x277CCABB0] numberWithDouble:v46];
  [(AIAudiogramFinalResultViewController *)v50 setMaxRightHearingLevelWidth:v48];
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v7 section])
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
    v8 = [(AIAudiogramFinalResultViewController *)self frequencies];
    v9 = [v8 objectAtIndex:{objc_msgSend(v7, "row")}];

    v10 = [getHKUnitClass_0() decibelHearingLevelUnit];
    v37 = 0;
    v38 = &v37;
    v39 = 0x2020000000;
    v40 = 0;
    v33 = 0;
    v34 = &v33;
    v35 = 0x2020000000;
    v36 = 0;
    v11 = [(AIAudiogramFinalResultViewController *)self audiogram];
    v12 = [v11 sensitivityPoints];
    v23 = MEMORY[0x277D85DD0];
    v24 = 3221225472;
    v25 = __72__AIAudiogramFinalResultViewController_tableView_cellForRowAtIndexPath___block_invoke;
    v26 = &unk_278CEC3C0;
    v13 = v9;
    v27 = v13;
    v29 = &v47;
    v14 = v10;
    v28 = v14;
    v30 = &v37;
    v31 = &v41;
    v32 = &v33;
    [v12 enumerateObjectsUsingBlock:&v23];

    v15 = [AIAudiogramFrequencyInputCell reuseIdentifier:v23];
    v16 = [v6 dequeueReusableCellWithIdentifier:v15];

    v17 = [(AIAudiogramFinalResultViewController *)self maxLeftHearingLevelWidth];
    [v16 setLeftEarLabelWidth:v17];

    v18 = [(AIAudiogramFinalResultViewController *)self maxRightHearingLevelWidth];
    [v16 setRightEarLabelWidth:v18];

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
    v16 = [v6 dequeueReusableCellWithIdentifier:v19];

    v20 = [(AIAudiogramFinalResultViewController *)self audiogramManualIngestionDelegate];
    v21 = [v20 getPickedDate];
    [v16 setDate:v21];

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

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  if (!a4)
  {
    return 1;
  }

  v4 = [(AIAudiogramFinalResultViewController *)self frequencies];
  v5 = [v4 count];

  return v5;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v10 = a3;
  v6 = a4;
  [v10 deselectRowAtIndexPath:v6 animated:1];
  if ([v6 section])
  {
    v7 = [v10 cellForRowAtIndexPath:v6];
    v8 = [v7 frequency];
    v9 = [(AIAudiogramFinalResultViewController *)self audiogramManualIngestionDelegate];
    [v9 didSelectNodeToEditWithSelectedFrequency:v8];
  }
}

- (id)tableView:(id)a3 viewForFooterInSection:(int64_t)a4
{
  v46[4] = *MEMORY[0x277D85DE8];
  if (a4)
  {
    v5 = MEMORY[0x277D75D18];
    v45 = a3;
    v6 = [v5 alloc];
    v7 = [v6 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    v8 = objc_alloc_init(MEMORY[0x277D75A68]);
    [(AIAudiogramFinalResultViewController *)self setStackView:v8];

    v9 = [(AIAudiogramFinalResultViewController *)self stackView];
    [v9 setAxis:1];

    v10 = [(AIAudiogramFinalResultViewController *)self stackView];
    [v10 setTranslatesAutoresizingMaskIntoConstraints:0];

    v11 = [(AIAudiogramFinalResultViewController *)self stackView];
    [v7 addSubview:v11];

    v12 = [MEMORY[0x277D75220] buttonWithType:1];
    v13 = aiLocString(@"AudiogramFrequencyAddRemoveFrequenciesTitle");
    [v12 setTitle:v13 forState:0];

    v14 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
    v15 = [v12 titleLabel];
    [v15 setFont:v14];

    v16 = [v12 titleLabel];
    [v16 setNumberOfLines:0];

    [v12 setContentHorizontalAlignment:4];
    v44 = v12;
    [v12 addTarget:self action:sel__editFrequencyTapped_ forControlEvents:64];
    v17 = [(AIAudiogramFinalResultViewController *)self stackView];
    [v17 addArrangedSubview:v12];

    v36 = MEMORY[0x277CCAAD0];
    v43 = [(AIAudiogramFinalResultViewController *)self stackView];
    v42 = [v43 leadingAnchor];
    v41 = [v7 leadingAnchor];
    v40 = [v42 constraintEqualToAnchor:v41 constant:16.0];
    v46[0] = v40;
    v39 = [(AIAudiogramFinalResultViewController *)self stackView];
    v37 = [v39 trailingAnchor];
    v35 = [v7 trailingAnchor];
    v34 = [v37 constraintEqualToAnchor:v35 constant:-16.0];
    v46[1] = v34;
    v18 = [(AIAudiogramFinalResultViewController *)self stackView];
    v19 = [v18 topAnchor];
    v38 = v7;
    v20 = [v7 topAnchor];
    v21 = [v19 constraintEqualToAnchor:v20 constant:14.0];
    v46[2] = v21;
    v22 = [(AIAudiogramFinalResultViewController *)self stackView];
    v23 = [v22 bottomAnchor];
    v24 = [v7 bottomAnchor];
    v25 = [v23 constraintEqualToAnchor:v24];
    v46[3] = v25;
    v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v46 count:4];
    [v36 activateConstraints:v26];

    v27 = [(AIAudiogramFinalResultViewController *)self stackView];
    [v27 layoutIfNeeded];

    [v45 frame];
    v29 = v28;

    v30 = self;
    v31 = v38;
    v32 = [(AIAudiogramFinalResultViewController *)v30 stackView];
    [v32 frame];
    [v38 setFrame:{0.0, 0.0, v29}];
  }

  else
  {
    v31 = 0;
  }

  return v31;
}

- (double)tableView:(id)a3 heightForFooterInSection:(int64_t)a4
{
  result = *MEMORY[0x277D76F30];
  if (!a4)
  {
    return 0.01;
  }

  return result;
}

- (void)dateCellDidPickDate:(id)a3
{
  v4 = a3;
  v5 = [(AIAudiogramFinalResultViewController *)self audiogramManualIngestionDelegate];
  [v5 updateAudiogramDate:v4];
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