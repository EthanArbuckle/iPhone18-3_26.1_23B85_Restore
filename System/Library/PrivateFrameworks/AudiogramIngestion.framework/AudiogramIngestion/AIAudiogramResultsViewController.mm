@interface AIAudiogramResultsViewController
- (AIAudiogramConfirmResultsViewControllerDelegate)audiogramConfirmationDelegate;
- (AIAudiogramResultsViewController)initWithDelegate:(id)delegate audiogram:(id)audiogram;
- (BOOL)_scrollToIndexPathIfNecessary:(id)necessary animated:(BOOL)animated;
- (double)tableView:(id)view heightForRowAtIndexPath:(id)path;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_confirmTapped:(id)tapped;
- (void)_reloadAudiogramWithSensitivityPoints:(id)points date:(id)date;
- (void)_setCellActive:(BOOL)active indexPath:(id)path scroll:(BOOL)scroll;
- (void)_updateTableViewHeight;
- (void)dateCellDidPickDate:(id)date;
- (void)dealloc;
- (void)earCellDidBeginEditingForFrequency:(id)frequency forEar:(int64_t)ear;
- (void)earCellDidEndEditingForFrequency:(id)frequency forEar:(int64_t)ear;
- (void)earCellDidUpdateHearingLevel:(id)level forFrequency:(id)frequency forEar:(int64_t)ear;
- (void)keyboardDoneTapped;
- (void)keyboardNegationTapped;
- (void)keyboardNextTapped;
- (void)keyboardPreviousTapped;
- (void)scrollViewDidEndScrollingAnimation:(id)animation;
- (void)setActiveIndexPath:(id)path;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)timeCellDidPickDate:(id)date;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation AIAudiogramResultsViewController

- (AIAudiogramResultsViewController)initWithDelegate:(id)delegate audiogram:(id)audiogram
{
  v39[1] = *MEMORY[0x277D85DE8];
  delegateCopy = delegate;
  audiogramCopy = audiogram;
  v8 = aiLocString(@"AudiogramIngestionResultsTitle");
  v9 = aiLocString(@"AudiogramIngestionResultsDetailText");
  v38.receiver = self;
  v38.super_class = AIAudiogramResultsViewController;
  v10 = [(AIAudiogramResultsViewController *)&v38 initWithTitle:v8 detailText:v9 symbolName:0 contentLayout:3];

  if (v10)
  {
    [(AIAudiogramResultsViewController *)v10 setAudiogram:audiogramCopy];
    [(AIAudiogramResultsViewController *)v10 setAudiogramConfirmationDelegate:delegateCopy];
    v11 = [AIAudiogramValidFrequencies copy];
    [(AIAudiogramResultsViewController *)v10 setFrequencies:v11];

    v12 = objc_opt_new();
    [(AIAudiogramResultsViewController *)v10 setTableViewCells:v12];

    v34 = 0;
    v35 = &v34;
    v36 = 0x2020000000;
    audiogram = [(AIAudiogramResultsViewController *)v10 audiogram];
    v14 = audiogram == 0;

    v37 = v14;
    if (v35[3])
    {
      goto LABEL_6;
    }

    location = 0;
    p_location = &location;
    v30 = 0x3032000000;
    v31 = __Block_byref_object_copy__3;
    v32 = __Block_byref_object_dispose__3;
    frequencies = [(AIAudiogramResultsViewController *)v10 frequencies];
    v33 = [frequencies mutableCopy];

    [p_location[5] removeObject:&unk_2853656C8];
    [p_location[5] removeObject:&unk_2853656E0];
    [p_location[5] removeObject:&unk_2853656F8];
    [p_location[5] removeObject:&unk_285365710];
    [p_location[5] removeObject:&unk_285365728];
    audiogram2 = [(AIAudiogramResultsViewController *)v10 audiogram];
    sensitivityPoints = [audiogram2 sensitivityPoints];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __63__AIAudiogramResultsViewController_initWithDelegate_audiogram___block_invoke;
    v27[3] = &unk_278CECB50;
    v27[4] = &v34;
    v27[5] = &location;
    [sensitivityPoints enumerateObjectsUsingBlock:v27];

    if ([p_location[5] count])
    {
      *(v35 + 24) = 1;
    }

    _Block_object_dispose(&location, 8);

    if (v35[3])
    {
LABEL_6:
      headerView = [(AIAudiogramResultsViewController *)v10 headerView];
      v19 = aiLocString(@"AudiogramIngestionResultsMissingTitle");
      [headerView setTitle:v19];

      headerView2 = [(AIAudiogramResultsViewController *)v10 headerView];
      v21 = aiLocString(@"AudiogramIngestionResultsMissingDetailText");
      [headerView2 setDetailText:v21];
    }

    objc_initWeak(&location, v10);
    v39[0] = objc_opt_class();
    v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:1];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __63__AIAudiogramResultsViewController_initWithDelegate_audiogram___block_invoke_2;
    v25[3] = &unk_278CECB78;
    objc_copyWeak(&v26, &location);
    v23 = [(AIAudiogramResultsViewController *)v10 registerForTraitChanges:v22 withHandler:v25];

    objc_destroyWeak(&v26);
    objc_destroyWeak(&location);
    _Block_object_dispose(&v34, 8);
  }

  return v10;
}

void __63__AIAudiogramResultsViewController_initWithDelegate_audiogram___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v14 = a2;
  v6 = [v14 leftEarSensitivity];
  if (!v6 || (v7 = v6, [v14 rightEarSensitivity], v8 = objc_claimAutoreleasedReturnValue(), v8, v7, !v8))
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a4 = 1;
  }

  v9 = *(*(*(a1 + 40) + 8) + 40);
  v10 = MEMORY[0x277CCABB0];
  v11 = [v14 frequency];
  v12 = [getHKUnitClass_2() hertzUnit];
  [v11 doubleValueForUnit:v12];
  v13 = [v10 numberWithDouble:?];
  [v9 removeObject:v13];
}

void __63__AIAudiogramResultsViewController_initWithDelegate_audiogram___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [a3 preferredContentSizeCategory];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = [WeakRetained traitCollection];
  v7 = [v6 preferredContentSizeCategory];
  v8 = [v4 isEqualToString:v7];

  if ((v8 & 1) == 0)
  {
    v10 = objc_loadWeakRetained((a1 + 32));
    v9 = [v10 tableView];
    [v9 reloadData];
  }
}

- (void)viewDidLoad
{
  v60[4] = *MEMORY[0x277D85DE8];
  v59.receiver = self;
  v59.super_class = AIAudiogramResultsViewController;
  [(OBBaseWelcomeController *)&v59 viewDidLoad];
  [(AIAudiogramResultsViewController *)self setShouldAdjustScrollViewInsetForKeyboard:1];
  v3 = objc_alloc(MEMORY[0x277D751E0]);
  v4 = aiLocString(@"AudiogramIngestionResultsNextButton");
  v57 = [v3 initWithTitle:v4 style:0 target:self action:sel__confirmTapped_];

  navigationItem = [(OBBaseWelcomeController *)self navigationItem];
  [navigationItem setRightBarButtonItem:v57];

  v6 = [AIAudiogramKeyboardToolbar alloc];
  view = [(AIAudiogramResultsViewController *)self view];
  [view frame];
  v8 = [(AIAudiogramKeyboardToolbar *)v6 initWithFrame:self target:0.0, 0.0];
  [(AIAudiogramResultsViewController *)self setKeyboardToolbar:v8];

  v9 = objc_alloc(MEMORY[0x277D75B40]);
  v10 = [v9 initWithFrame:2 style:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [(AIAudiogramResultsViewController *)self setTableView:v10];

  tableView = [(AIAudiogramResultsViewController *)self tableView];
  [tableView setDataSource:self];

  tableView2 = [(AIAudiogramResultsViewController *)self tableView];
  [tableView2 setDelegate:self];

  tableView3 = [(AIAudiogramResultsViewController *)self tableView];
  [tableView3 setScrollEnabled:0];

  tableView4 = [(AIAudiogramResultsViewController *)self tableView];
  systemGroupedBackgroundColor = [MEMORY[0x277D75348] systemGroupedBackgroundColor];
  [tableView4 setBackgroundColor:systemGroupedBackgroundColor];

  tableView5 = [(AIAudiogramResultsViewController *)self tableView];
  [tableView5 setTranslatesAutoresizingMaskIntoConstraints:0];

  contentView = [(AIAudiogramResultsViewController *)self contentView];
  tableView6 = [(AIAudiogramResultsViewController *)self tableView];
  [contentView addSubview:tableView6];

  v47 = MEMORY[0x277CCAAD0];
  tableView7 = [(AIAudiogramResultsViewController *)self tableView];
  topAnchor = [tableView7 topAnchor];
  contentView2 = [(AIAudiogramResultsViewController *)self contentView];
  topAnchor2 = [contentView2 topAnchor];
  v52 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v60[0] = v52;
  tableView8 = [(AIAudiogramResultsViewController *)self tableView];
  leadingAnchor = [tableView8 leadingAnchor];
  view2 = [(AIAudiogramResultsViewController *)self view];
  leadingAnchor2 = [view2 leadingAnchor];
  v46 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v60[1] = v46;
  tableView9 = [(AIAudiogramResultsViewController *)self tableView];
  trailingAnchor = [tableView9 trailingAnchor];
  view3 = [(AIAudiogramResultsViewController *)self view];
  trailingAnchor2 = [view3 trailingAnchor];
  v21 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v60[2] = v21;
  tableView10 = [(AIAudiogramResultsViewController *)self tableView];
  bottomAnchor = [tableView10 bottomAnchor];
  contentView3 = [(AIAudiogramResultsViewController *)self contentView];
  bottomAnchor2 = [contentView3 bottomAnchor];
  v26 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v60[3] = v26;
  v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v60 count:4];
  [v47 activateConstraints:v27];

  tableView11 = [(AIAudiogramResultsViewController *)self tableView];
  v29 = objc_opt_class();
  v30 = +[AIAudiogramResultGraphCell reuseIdentifier];
  [tableView11 registerClass:v29 forCellReuseIdentifier:v30];

  tableView12 = [(AIAudiogramResultsViewController *)self tableView];
  v32 = objc_opt_class();
  v33 = +[AIAudiogramResultDateCell reuseIdentifier];
  [tableView12 registerClass:v32 forCellReuseIdentifier:v33];

  tableView13 = [(AIAudiogramResultsViewController *)self tableView];
  v35 = objc_opt_class();
  v36 = +[AIAudiogramResultTimeCell reuseIdentifier];
  [tableView13 registerClass:v35 forCellReuseIdentifier:v36];

  tableView14 = [(AIAudiogramResultsViewController *)self tableView];
  v38 = objc_opt_class();
  v39 = +[AIAudiogramResultEarCell reuseIdentifier];
  [tableView14 registerClass:v38 forCellReuseIdentifier:v39];

  scrollView = [(AIAudiogramResultsViewController *)self scrollView];
  [scrollView _addScrollViewScrollObserver:self];

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  v42 = *MEMORY[0x277D76BA8];
  v58[0] = MEMORY[0x277D85DD0];
  v58[1] = 3221225472;
  v58[2] = __47__AIAudiogramResultsViewController_viewDidLoad__block_invoke;
  v58[3] = &unk_278CEC230;
  v58[4] = self;
  v43 = [defaultCenter addObserverForName:v42 object:0 queue:0 usingBlock:v58];
}

void __47__AIAudiogramResultsViewController_viewDidLoad__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) activeIndexPath];

  if (v2)
  {
    v3 = *(a1 + 32);
    v4 = [v3 activeIndexPath];
    [v3 _scrollToIndexPathIfNecessary:v4 animated:1];
  }
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = AIAudiogramResultsViewController;
  [(AIAudiogramResultsViewController *)&v4 dealloc];
}

- (void)viewDidLayoutSubviews
{
  [(AIAudiogramResultsViewController *)self _updateTableViewHeight];
  v3.receiver = self;
  v3.super_class = AIAudiogramResultsViewController;
  [(OBBaseWelcomeController *)&v3 viewDidLayoutSubviews];
}

- (void)_updateTableViewHeight
{
  [(UITableView *)self->_tableView contentSize];
  v4 = v3;
  tableViewHeightConstraint = [(AIAudiogramResultsViewController *)self tableViewHeightConstraint];
  if (tableViewHeightConstraint)
  {
  }

  else
  {
    tableView = [(AIAudiogramResultsViewController *)self tableView];

    if (tableView)
    {
      tableView2 = [(AIAudiogramResultsViewController *)self tableView];
      heightAnchor = [tableView2 heightAnchor];
      v12 = [heightAnchor constraintEqualToConstant:v4];
      [(AIAudiogramResultsViewController *)self setTableViewHeightConstraint:v12];

      tableViewHeightConstraint2 = [(AIAudiogramResultsViewController *)self tableViewHeightConstraint];
      [tableViewHeightConstraint2 setActive:1];
      goto LABEL_7;
    }
  }

  tableViewHeightConstraint3 = [(AIAudiogramResultsViewController *)self tableViewHeightConstraint];
  [tableViewHeightConstraint3 constant];
  v8 = v7;

  if (v4 == v8)
  {
    return;
  }

  tableViewHeightConstraint2 = [(AIAudiogramResultsViewController *)self tableViewHeightConstraint];
  [tableViewHeightConstraint2 setConstant:v4];
LABEL_7:
}

- (void)_confirmTapped:(id)tapped
{
  v4 = [AIAudiogramConfirmResultsViewController alloc];
  audiogramConfirmationDelegate = [(AIAudiogramResultsViewController *)self audiogramConfirmationDelegate];
  audiogram = [(AIAudiogramResultsViewController *)self audiogram];
  v10 = [(AIAudiogramConfirmResultsViewController *)v4 initWithDelegate:audiogramConfirmationDelegate audiogram:audiogram];

  healthStore = [(AIAudiogramResultsViewController *)self healthStore];
  [(AIAudiogramConfirmResultsViewController *)v10 setHealthStore:healthStore];

  unitPreferenceController = [(AIAudiogramResultsViewController *)self unitPreferenceController];
  [(AIAudiogramConfirmResultsViewController *)v10 setUnitPreferenceController:unitPreferenceController];

  [(AIAudiogramConfirmResultsViewController *)v10 setAnalyticsDidCompleteIngestion:[(AIAudiogramResultsViewController *)self analyticsDidCompleteIngestion]];
  [(AIAudiogramConfirmResultsViewController *)v10 setAnalyticsDidMakeAdjustments:[(AIAudiogramResultsViewController *)self analyticsDidMakeAdjustments]];
  [(AIAudiogramConfirmResultsViewController *)v10 setAnalyticsImportSource:[(AIAudiogramResultsViewController *)self analyticsImportSource]];
  [(AIAudiogramConfirmResultsViewController *)v10 setAnalyticsClient:[(AIAudiogramResultsViewController *)self analyticsClient]];
  navigationController = [(AIAudiogramResultsViewController *)self navigationController];
  [navigationController pushViewController:v10 animated:1];
}

- (void)_reloadAudiogramWithSensitivityPoints:(id)points date:(id)date
{
  pointsCopy = points;
  dateCopy = date;
  audiogram = [(AIAudiogramResultsViewController *)self audiogram];
  if ([pointsCopy count])
  {
    v15 = 0;
    v16 = &v15;
    v17 = 0x2050000000;
    v9 = getHKAudiogramSampleClass_softClass_1;
    v18 = getHKAudiogramSampleClass_softClass_1;
    if (!getHKAudiogramSampleClass_softClass_1)
    {
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __getHKAudiogramSampleClass_block_invoke_1;
      v14[3] = &unk_278CEC150;
      v14[4] = &v15;
      __getHKAudiogramSampleClass_block_invoke_1(v14);
      v9 = v16[3];
    }

    v10 = v9;
    _Block_object_dispose(&v15, 8);
    v11 = metadataForHKAudiogramSample();
    v12 = [v9 audiogramSampleWithSensitivityPoints:pointsCopy startDate:dateCopy endDate:dateCopy metadata:v11];
    [(AIAudiogramResultsViewController *)self setAudiogram:v12];
  }

  else
  {
    [(AIAudiogramResultsViewController *)self setAudiogram:0];
  }

  v13 = audiogram;
  AXPerformBlockOnMainThread();
}

void __79__AIAudiogramResultsViewController__reloadAudiogramWithSensitivityPoints_date___block_invoke(uint64_t a1)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCAA70] indexPathForRow:0 inSection:0];
  if (!*(a1 + 32))
  {
LABEL_5:
    v7 = [*(a1 + 40) audiogram];

    if (v7)
    {
      v8 = [*(a1 + 40) tableView];
      v12[0] = v2;
      v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
      [v8 insertRowsAtIndexPaths:v9 withRowAnimation:100];
      goto LABEL_10;
    }

    if (!*(a1 + 32))
    {
      goto LABEL_11;
    }

LABEL_8:
    v10 = [*(a1 + 40) audiogram];

    if (v10)
    {
      goto LABEL_11;
    }

    v8 = [*(a1 + 40) tableView];
    v11 = v2;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:&v11 count:1];
    [v8 deleteRowsAtIndexPaths:v9 withRowAnimation:100];
LABEL_10:

    goto LABEL_11;
  }

  v3 = [*(a1 + 40) audiogram];

  if (!v3)
  {
    if (*(a1 + 32))
    {
      goto LABEL_8;
    }

    goto LABEL_5;
  }

  v4 = [*(a1 + 40) tableViewCells];
  v5 = [v4 objectForKey:v2];

  v6 = [*(a1 + 40) audiogram];
  [v5 setAudiogram:v6];

LABEL_11:
}

- (void)_setCellActive:(BOOL)active indexPath:(id)path scroll:(BOOL)scroll
{
  scrollCopy = scroll;
  activeCopy = active;
  pathCopy = path;
  if (!scrollCopy || ![(AIAudiogramResultsViewController *)self _scrollToIndexPathIfNecessary:pathCopy animated:1])
  {
    tableViewCells = [(AIAudiogramResultsViewController *)self tableViewCells];
    v10 = [tableViewCells objectForKey:pathCopy];

    if ([pathCopy section] == 1)
    {
      if (![pathCopy row])
      {
        v19 = pathCopy;
        AXPerformBlockOnMainThread();
      }
    }

    else
    {
      if ([pathCopy section] == 2 || objc_msgSend(pathCopy, "section") == 3)
      {
        [v10 showActive:activeCopy];
        section = [pathCopy section];
        if (section == 3)
        {
          v12 = [pathCopy row];
          tableViewCells = [(AIAudiogramResultsViewController *)self frequencies];
          v13 = v12 != [tableViewCells count] - 1;
        }

        else
        {
          v13 = 1;
        }

        keyboardToolbar = [(AIAudiogramResultsViewController *)self keyboardToolbar];
        nextItemButton = [keyboardToolbar nextItemButton];
        [nextItemButton setEnabled:v13];

        if (section == 3)
        {
        }

        v16 = [pathCopy section] != 2 || objc_msgSend(pathCopy, "row") != 0;
        keyboardToolbar2 = [(AIAudiogramResultsViewController *)self keyboardToolbar];
        previousItemButton = [keyboardToolbar2 previousItemButton];
        [previousItemButton setEnabled:v16];
      }

      else
      {
        keyboardToolbar2 = AXLogAudiogram();
        if (os_log_type_enabled(keyboardToolbar2, OS_LOG_TYPE_ERROR))
        {
          [AIAudiogramResultsViewController _setCellActive:indexPath:scroll:];
        }
      }
    }
  }
}

void __68__AIAudiogramResultsViewController__setCellActive_indexPath_scroll___block_invoke(uint64_t a1)
{
  v4[1] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) tableView];
  v4[0] = *(a1 + 40);
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];
  [v2 reloadRowsAtIndexPaths:v3 withRowAnimation:100];
}

- (BOOL)_scrollToIndexPathIfNecessary:(id)necessary animated:(BOOL)animated
{
  v49 = *MEMORY[0x277D85DE8];
  necessaryCopy = necessary;
  tableView = [(AIAudiogramResultsViewController *)self tableView];
  [tableView rectForRowAtIndexPath:necessaryCopy];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  view = [(AIAudiogramResultsViewController *)self view];
  tableView2 = [(AIAudiogramResultsViewController *)self tableView];
  v42 = v10;
  v43 = v8;
  [view convertRect:tableView2 fromView:{v8, v10, v12, v14}];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;

  scrollView = [(AIAudiogramResultsViewController *)self scrollView];
  [scrollView frame];
  v27 = v20 - v26;

  scrollView2 = [(AIAudiogramResultsViewController *)self scrollView];
  [scrollView2 frame];
  v30 = v29;
  scrollView3 = [(AIAudiogramResultsViewController *)self scrollView];
  [scrollView3 contentInset];
  v33 = v30 - v32;

  v34 = v24 + v27;
  v35 = AXLogAudiogram();
  if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
  {
    v36 = v34 > v33 || v27 < 0.0;
    v50.origin.x = v18;
    v50.origin.y = v27;
    v50.size.width = v22;
    v50.size.height = v24;
    v37 = NSStringFromCGRect(v50);
    *buf = 67109378;
    v46 = v36;
    v47 = 2112;
    v48 = v37;
    _os_log_impl(&dword_24179B000, v35, OS_LOG_TYPE_INFO, "Should scroll to row rect in view? %d %@", buf, 0x12u);

    if (v36)
    {
      goto LABEL_10;
    }
  }

  else
  {

    if (v27 < 0.0 || v34 > v33)
    {
LABEL_10:
      scrollView4 = [(AIAudiogramResultsViewController *)self scrollView];
      tableView3 = [(AIAudiogramResultsViewController *)self tableView];
      [scrollView4 convertRect:tableView3 fromView:{v43, v42, v12, v14}];

      v44 = necessaryCopy;
      AXPerformBlockOnMainThread();

      v38 = 1;
      goto LABEL_11;
    }
  }

  v38 = 0;
LABEL_11:

  return v38;
}

void __75__AIAudiogramResultsViewController__scrollToIndexPathIfNecessary_animated___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CBF348];
  if (*(a1 + 88) == 1)
  {
    MinY = CGRectGetMinY(*(a1 + 48));
    v4 = AXLogAudiogram();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = *(a1 + 32);
      v12.x = v2;
      v12.y = MinY;
      v6 = NSStringFromCGPoint(v12);
      *v10 = 138412546;
      *&v10[4] = v5;
      *&v10[12] = 2112;
      *&v10[14] = v6;
      v7 = "Scrolling up to row: %@ - %@";
LABEL_7:
      _os_log_impl(&dword_24179B000, v4, OS_LOG_TYPE_INFO, v7, v10, 0x16u);
    }
  }

  else
  {
    if (*(a1 + 89) != 1)
    {
      MinY = *(MEMORY[0x277CBF348] + 8);
      goto LABEL_10;
    }

    MinY = CGRectGetMaxY(*(a1 + 48)) - *(a1 + 80);
    v4 = AXLogAudiogram();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v8 = *(a1 + 32);
      v13.x = v2;
      v13.y = MinY;
      v6 = NSStringFromCGPoint(v13);
      *v10 = 138412546;
      *&v10[4] = v8;
      *&v10[12] = 2112;
      *&v10[14] = v6;
      v7 = "Scrolling down to row: %@ - %@";
      goto LABEL_7;
    }
  }

LABEL_10:
  v9 = [*(a1 + 40) scrollView];
  [v9 setContentOffset:*(a1 + 90) animated:{v2, MinY}];
}

- (void)setActiveIndexPath:(id)path
{
  v18 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  v6 = AXLogAudiogram();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    activeIndexPath = self->_activeIndexPath;
    v14 = 138412546;
    v15 = activeIndexPath;
    v16 = 2112;
    v17 = pathCopy;
    _os_log_impl(&dword_24179B000, v6, OS_LOG_TYPE_INFO, "Updating active index path %@ -> %@", &v14, 0x16u);
  }

  activeIndexPath = [(AIAudiogramResultsViewController *)self activeIndexPath];

  if (activeIndexPath != pathCopy)
  {
    activeIndexPath2 = [(AIAudiogramResultsViewController *)self activeIndexPath];
    objc_storeStrong(&self->_activeIndexPath, path);
    v10 = [MEMORY[0x277CCAA70] indexPathForRow:0 inSection:1];
    if (activeIndexPath2 == v10)
    {
      [(AIAudiogramResultsViewController *)self _setCellActive:0 indexPath:v10 scroll:0];
    }

    activeIndexPath3 = [(AIAudiogramResultsViewController *)self activeIndexPath];
    v12 = activeIndexPath3;
    if (activeIndexPath3 != v10)
    {

LABEL_12:
      goto LABEL_13;
    }

    if ([activeIndexPath2 section] == 2)
    {
    }

    else
    {
      section = [activeIndexPath2 section];

      if (section != 3)
      {
        goto LABEL_12;
      }
    }

    [(AIAudiogramResultsViewController *)self _setCellActive:0 indexPath:activeIndexPath2 scroll:0];
    goto LABEL_12;
  }

LABEL_13:
}

- (void)keyboardDoneTapped
{
  [(AIAudiogramResultsViewController *)self setActiveIndexPath:0];
  tableView = [(AIAudiogramResultsViewController *)self tableView];
  [tableView endEditing:1];
}

- (void)keyboardNegationTapped
{
  v5 = *MEMORY[0x277D85DE8];
  activeIndexPath = [self activeIndexPath];
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(&dword_24179B000, a2, OS_LOG_TYPE_ERROR, "Attempted to negate value on a cell that was not active or in the wrong section %@", v4, 0xCu);
}

void __58__AIAudiogramResultsViewController_keyboardNegationTapped__block_invoke(uint64_t a1)
{
  v1 = *MEMORY[0x277D76438];
  v2 = MEMORY[0x277CCACA8];
  v4 = [*(a1 + 32) hearingLevel];
  v3 = [v2 stringWithFormat:@"%@", v4];
  UIAccessibilityPostNotification(v1, v3);
}

- (void)keyboardPreviousTapped
{
  v36 = *MEMORY[0x277D85DE8];
  activeIndexPath = [(AIAudiogramResultsViewController *)self activeIndexPath];

  if (activeIndexPath)
  {
    activeIndexPath2 = [(AIAudiogramResultsViewController *)self activeIndexPath];
    section = [activeIndexPath2 section];

    if (section == 2)
    {
      tableView = [(AIAudiogramResultsViewController *)self tableView];
      v7 = [(AIAudiogramResultsViewController *)self tableView:tableView numberOfRowsInSection:2];

      activeIndexPath3 = [(AIAudiogramResultsViewController *)self activeIndexPath];
      if ([activeIndexPath3 row] <= 0)
      {
      }

      else
      {
        activeIndexPath4 = [(AIAudiogramResultsViewController *)self activeIndexPath];
        v10 = [activeIndexPath4 row];

        if (v10 < v7)
        {
          v11 = MEMORY[0x277CCAA70];
          activeIndexPath5 = [(AIAudiogramResultsViewController *)self activeIndexPath];
          v13 = [activeIndexPath5 row] - 1;
          v14 = v11;
          v15 = 2;
LABEL_13:
          tableView3 = [v14 indexPathForRow:v13 inSection:v15];

LABEL_18:
          v28 = AXLogAudiogram();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
          {
            v34 = 138412290;
            v35 = tableView3;
            _os_log_impl(&dword_24179B000, v28, OS_LOG_TYPE_INFO, "Moving focus backwards to %@", &v34, 0xCu);
          }

          if (tableView3)
          {
            [(AIAudiogramResultsViewController *)self setActiveIndexPath:tableView3];
            activeIndexPath6 = [(AIAudiogramResultsViewController *)self activeIndexPath];
            selfCopy2 = self;
            v31 = 1;
            v32 = activeIndexPath6;
            v33 = 1;
          }

          else
          {
            activeIndexPath6 = [(AIAudiogramResultsViewController *)self activeIndexPath];
            selfCopy2 = self;
            v31 = 0;
            v32 = activeIndexPath6;
            v33 = 0;
          }

          [(AIAudiogramResultsViewController *)selfCopy2 _setCellActive:v31 indexPath:v32 scroll:v33];

          goto LABEL_24;
        }
      }
    }

    else
    {
      activeIndexPath7 = [(AIAudiogramResultsViewController *)self activeIndexPath];
      section2 = [activeIndexPath7 section];

      if (section2 == 3)
      {
        tableView2 = [(AIAudiogramResultsViewController *)self tableView];
        v21 = [(AIAudiogramResultsViewController *)self tableView:tableView2 numberOfRowsInSection:3];

        activeIndexPath8 = [(AIAudiogramResultsViewController *)self activeIndexPath];
        if ([activeIndexPath8 row] <= 0)
        {
        }

        else
        {
          activeIndexPath9 = [(AIAudiogramResultsViewController *)self activeIndexPath];
          v24 = [activeIndexPath9 row];

          if (v24 < v21)
          {
            v25 = MEMORY[0x277CCAA70];
            activeIndexPath5 = [(AIAudiogramResultsViewController *)self activeIndexPath];
            v13 = [activeIndexPath5 row] - 1;
            v14 = v25;
            v15 = 3;
            goto LABEL_13;
          }
        }

        activeIndexPath10 = [(AIAudiogramResultsViewController *)self activeIndexPath];
        v27 = [activeIndexPath10 row];

        if (!v27)
        {
          tableView3 = [MEMORY[0x277CCAA70] indexPathForRow:v21 - 1 inSection:2];
          goto LABEL_18;
        }
      }
    }

    tableView3 = 0;
    goto LABEL_18;
  }

  v16 = AXLogAudiogram();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    [AIAudiogramResultsViewController keyboardPreviousTapped];
  }

  tableView3 = [(AIAudiogramResultsViewController *)self tableView];
  [tableView3 endEditing:1];
LABEL_24:
}

- (void)keyboardNextTapped
{
  v37 = *MEMORY[0x277D85DE8];
  activeIndexPath = [(AIAudiogramResultsViewController *)self activeIndexPath];

  if (activeIndexPath)
  {
    activeIndexPath2 = [(AIAudiogramResultsViewController *)self activeIndexPath];
    section = [activeIndexPath2 section];

    if (section == 2)
    {
      tableView = [(AIAudiogramResultsViewController *)self tableView];
      v7 = [(AIAudiogramResultsViewController *)self tableView:tableView numberOfRowsInSection:2];

      activeIndexPath3 = [(AIAudiogramResultsViewController *)self activeIndexPath];
      if ([activeIndexPath3 row] < 0)
      {

        v11 = v7 - 1;
      }

      else
      {
        activeIndexPath4 = [(AIAudiogramResultsViewController *)self activeIndexPath];
        v10 = [activeIndexPath4 row];
        v11 = v7 - 1;

        if (v10 < v7 - 1)
        {
          v12 = MEMORY[0x277CCAA70];
          activeIndexPath5 = [(AIAudiogramResultsViewController *)self activeIndexPath];
          v14 = [activeIndexPath5 row] + 1;
          v15 = v12;
          v16 = 2;
LABEL_13:
          tableView3 = [v15 indexPathForRow:v14 inSection:v16];

LABEL_19:
          v29 = AXLogAudiogram();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
          {
            v35 = 138412290;
            v36 = tableView3;
            _os_log_impl(&dword_24179B000, v29, OS_LOG_TYPE_INFO, "Moving focus forwards to %@", &v35, 0xCu);
          }

          if (tableView3)
          {
            [(AIAudiogramResultsViewController *)self setActiveIndexPath:tableView3];
            activeIndexPath6 = [(AIAudiogramResultsViewController *)self activeIndexPath];
            selfCopy2 = self;
            v32 = 1;
            v33 = activeIndexPath6;
            v34 = 1;
          }

          else
          {
            activeIndexPath6 = [(AIAudiogramResultsViewController *)self activeIndexPath];
            selfCopy2 = self;
            v32 = 0;
            v33 = activeIndexPath6;
            v34 = 0;
          }

          [(AIAudiogramResultsViewController *)selfCopy2 _setCellActive:v32 indexPath:v33 scroll:v34];

          goto LABEL_25;
        }
      }

      activeIndexPath7 = [(AIAudiogramResultsViewController *)self activeIndexPath];
      v28 = [activeIndexPath7 row];

      if (v28 == v11)
      {
        tableView3 = [MEMORY[0x277CCAA70] indexPathForRow:0 inSection:3];
        goto LABEL_19;
      }
    }

    else
    {
      activeIndexPath8 = [(AIAudiogramResultsViewController *)self activeIndexPath];
      section2 = [activeIndexPath8 section];

      if (section2 == 3)
      {
        tableView2 = [(AIAudiogramResultsViewController *)self tableView];
        v22 = [(AIAudiogramResultsViewController *)self tableView:tableView2 numberOfRowsInSection:3];

        activeIndexPath9 = [(AIAudiogramResultsViewController *)self activeIndexPath];
        if ([activeIndexPath9 row] < 0)
        {
        }

        else
        {
          activeIndexPath10 = [(AIAudiogramResultsViewController *)self activeIndexPath];
          v25 = [activeIndexPath10 row];

          if (v25 < v22 - 1)
          {
            v26 = MEMORY[0x277CCAA70];
            activeIndexPath5 = [(AIAudiogramResultsViewController *)self activeIndexPath];
            v14 = [activeIndexPath5 row] + 1;
            v15 = v26;
            v16 = 3;
            goto LABEL_13;
          }
        }
      }
    }

    tableView3 = 0;
    goto LABEL_19;
  }

  v17 = AXLogAudiogram();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    [AIAudiogramResultsViewController keyboardPreviousTapped];
  }

  tableView3 = [(AIAudiogramResultsViewController *)self tableView];
  [tableView3 endEditing:1];
LABEL_25:
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  viewCopy = view;
  v7 = MEMORY[0x277CCAA70];
  pathCopy = path;
  v9 = [pathCopy row];
  section = [pathCopy section];

  v11 = [v7 indexPathForRow:v9 inSection:section];
  v12 = objc_opt_new();
  activeIndexPath = [(AIAudiogramResultsViewController *)self activeIndexPath];

  section2 = [v11 section];
  if (section2 > 1)
  {
    if (section2 == 2)
    {
      frequencies = [(AIAudiogramResultsViewController *)self frequencies];
      startDate = [frequencies objectAtIndex:{objc_msgSend(v11, "row")}];

      v54 = 0;
      v55 = &v54;
      v56 = 0x3032000000;
      v57 = __Block_byref_object_copy__3;
      v58 = __Block_byref_object_dispose__3;
      v59 = 0;
      audiogram = [(AIAudiogramResultsViewController *)self audiogram];

      if (audiogram)
      {
        audiogram2 = [(AIAudiogramResultsViewController *)self audiogram];
        sensitivityPoints = [audiogram2 sensitivityPoints];
        v51[0] = MEMORY[0x277D85DD0];
        v51[1] = 3221225472;
        v51[2] = __68__AIAudiogramResultsViewController_tableView_cellForRowAtIndexPath___block_invoke;
        v51[3] = &unk_278CECBC8;
        v52 = startDate;
        v53 = &v54;
        [sensitivityPoints enumerateObjectsUsingBlock:v51];
      }

      v37 = +[AIAudiogramResultEarCell reuseIdentifier];
      v21 = [viewCopy dequeueReusableCellWithIdentifier:v37];

      [v21 setFrequency:startDate];
      [v21 setHearingLevel:v55[5]];
      [v21 setEar:1];
      [v21 setDelegate:self];
      keyboardToolbar = [(AIAudiogramResultsViewController *)self keyboardToolbar];
      [v21 setKeyboardToolbar:keyboardToolbar];

      [v21 configureLayout];
      tableViewCells = [(AIAudiogramResultsViewController *)self tableViewCells];
      [tableViewCells setObject:v21 forKey:v11];
    }

    else
    {
      if (section2 != 3)
      {
        goto LABEL_16;
      }

      frequencies2 = [(AIAudiogramResultsViewController *)self frequencies];
      startDate = [frequencies2 objectAtIndex:{objc_msgSend(v11, "row")}];

      v54 = 0;
      v55 = &v54;
      v56 = 0x3032000000;
      v57 = __Block_byref_object_copy__3;
      v58 = __Block_byref_object_dispose__3;
      v59 = 0;
      audiogram3 = [(AIAudiogramResultsViewController *)self audiogram];

      if (audiogram3)
      {
        audiogram4 = [(AIAudiogramResultsViewController *)self audiogram];
        sensitivityPoints2 = [audiogram4 sensitivityPoints];
        v45 = MEMORY[0x277D85DD0];
        v46 = 3221225472;
        v47 = __68__AIAudiogramResultsViewController_tableView_cellForRowAtIndexPath___block_invoke_2;
        v48 = &unk_278CECBC8;
        v49 = startDate;
        v50 = &v54;
        [sensitivityPoints2 enumerateObjectsUsingBlock:&v45];
      }

      v27 = [AIAudiogramResultEarCell reuseIdentifier:v45];
      v21 = [viewCopy dequeueReusableCellWithIdentifier:v27];

      [v21 setFrequency:startDate];
      [v21 setHearingLevel:v55[5]];
      [v21 setEar:2];
      [v21 setDelegate:self];
      keyboardToolbar2 = [(AIAudiogramResultsViewController *)self keyboardToolbar];
      [v21 setKeyboardToolbar:keyboardToolbar2];

      [v21 configureLayout];
      tableViewCells = [(AIAudiogramResultsViewController *)self tableViewCells];
      [tableViewCells setObject:v21 forKey:v11];
    }

    _Block_object_dispose(&v54, 8);
LABEL_23:

    goto LABEL_32;
  }

  if (!section2)
  {
    v31 = +[AIAudiogramResultGraphCell reuseIdentifier];
    v21 = [viewCopy dequeueReusableCellWithIdentifier:v31];

    audiogram5 = [(AIAudiogramResultsViewController *)self audiogram];
    [v21 setAudiogram:audiogram5];

    goto LABEL_31;
  }

  if (section2 != 1)
  {
LABEL_16:
    v30 = AXLogAudiogram();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      [AIAudiogramIndividualFrequencyInputViewController tableView:v11 cellForRowAtIndexPath:v30];
    }

LABEL_28:

    v21 = v12;
    goto LABEL_32;
  }

  v15 = [v11 row];
  if (v15 != 1)
  {
    if (!v15)
    {
      audiogram6 = [(AIAudiogramResultsViewController *)self audiogram];
      startDate = [audiogram6 startDate];

      if (!startDate)
      {
        initialDate = [(AIAudiogramResultsViewController *)self initialDate];
        if (!initialDate)
        {
          initialDate = [MEMORY[0x277CBEAA8] date];
        }

        startDate = initialDate;
      }

      v19 = activeIndexPath == v11;
      v20 = +[AIAudiogramResultDateCell reuseIdentifier];
      v21 = [viewCopy dequeueReusableCellWithIdentifier:v20];

      [v21 showActive:v19];
      [v21 setDate:startDate];
      [v21 setDelegate:self];
      [v21 configureLayout];
      tableViewCells2 = [(AIAudiogramResultsViewController *)self tableViewCells];
      [tableViewCells2 setObject:v21 forKey:v11];

      goto LABEL_23;
    }

    v30 = AXLogAudiogram();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      [AIAudiogramResultsViewController tableView:cellForRowAtIndexPath:];
    }

    goto LABEL_28;
  }

  v39 = +[AIAudiogramResultTimeCell reuseIdentifier];
  v21 = [viewCopy dequeueReusableCellWithIdentifier:v39];

  audiogram7 = [(AIAudiogramResultsViewController *)self audiogram];
  if (audiogram7)
  {
    audiogram8 = [(AIAudiogramResultsViewController *)self audiogram];
    startDate2 = [audiogram8 startDate];
    [v21 setDate:startDate2];
  }

  else
  {
    audiogram8 = [MEMORY[0x277CBEAA8] date];
    [v21 setDate:audiogram8];
  }

  [v21 setDelegate:self];
  [v21 configureLayout];
LABEL_31:
  tableViewCells3 = [(AIAudiogramResultsViewController *)self tableViewCells];
  [tableViewCells3 setObject:v21 forKey:v11];

LABEL_32:

  return v21;
}

void __68__AIAudiogramResultsViewController_tableView_cellForRowAtIndexPath___block_invoke(uint64_t a1, void *a2)
{
  v13 = a2;
  v3 = [v13 frequency];
  v4 = [getHKUnitClass_2() hertzUnit];
  [v3 doubleValueForUnit:v4];
  v6 = v5;
  [*(a1 + 32) doubleValue];
  if (v6 == v7)
  {
    v8 = [v13 leftEarSensitivity];

    if (!v8)
    {
      goto LABEL_5;
    }

    v9 = MEMORY[0x277CCABB0];
    v3 = [v13 leftEarSensitivity];
    v4 = [getHKUnitClass_2() decibelHearingLevelUnit];
    [v3 doubleValueForUnit:v4];
    v10 = [v9 numberWithDouble:?];
    v11 = *(*(a1 + 40) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;
  }

LABEL_5:
}

void __68__AIAudiogramResultsViewController_tableView_cellForRowAtIndexPath___block_invoke_2(uint64_t a1, void *a2)
{
  v13 = a2;
  v3 = [v13 frequency];
  v4 = [getHKUnitClass_2() hertzUnit];
  [v3 doubleValueForUnit:v4];
  v6 = v5;
  [*(a1 + 32) doubleValue];
  if (v6 == v7)
  {
    v8 = [v13 rightEarSensitivity];

    if (!v8)
    {
      goto LABEL_5;
    }

    v9 = MEMORY[0x277CCABB0];
    v3 = [v13 rightEarSensitivity];
    v4 = [getHKUnitClass_2() decibelHearingLevelUnit];
    [v3 doubleValueForUnit:v4];
    v10 = [v9 numberWithDouble:?];
    v11 = *(*(a1 + 40) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;
  }

LABEL_5:
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  viewCopy = view;
  if ((section - 2) < 2)
  {
    frequencies = [(AIAudiogramResultsViewController *)self frequencies];
    v11 = [frequencies count];
  }

  else if (section == 1)
  {
    v11 = 2;
  }

  else if (section)
  {
    v13 = AXLogAudiogram();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [AIAudiogramResultsViewController tableView:numberOfRowsInSection:];
    }

    v11 = 0;
  }

  else
  {
    navigationItem = [(OBBaseWelcomeController *)self navigationItem];
    rightBarButtonItem = [navigationItem rightBarButtonItem];
    audiogram = [(AIAudiogramResultsViewController *)self audiogram];
    [rightBarButtonItem setEnabled:audiogram != 0];

    audiogram2 = [(AIAudiogramResultsViewController *)self audiogram];
    v11 = audiogram2 != 0;
  }

  return v11;
}

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  viewCopy = view;
  if (section > 1)
  {
    if (section == 2)
    {
      v7 = 1;
    }

    else
    {
      if (section != 3)
      {
        goto LABEL_8;
      }

      v7 = 2;
    }

    v6 = Soft_HKAudiogramEarLocalizedDisplayNameForEar(v7);
    goto LABEL_13;
  }

  if (!section)
  {
    goto LABEL_14;
  }

  if (section == 1)
  {
    v6 = aiLocString(@"AudiogramIngestionResultsDate");
LABEL_13:
    section = v6;
    goto LABEL_14;
  }

LABEL_8:
  v8 = AXLogAudiogram();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    [AIAudiogramResultsViewController tableView:titleForHeaderInSection:];
  }

  section = 0;
LABEL_14:

  return section;
}

- (double)tableView:(id)view heightForRowAtIndexPath:(id)path
{
  if ([path section])
  {
    return *MEMORY[0x277D76F30];
  }

  +[AIAudiogramResultGraphCell cellHeight];
  return result;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  [view deselectRowAtIndexPath:pathCopy animated:1];
  activeIndexPath = [(AIAudiogramResultsViewController *)self activeIndexPath];

  section = [pathCopy section];
  if ((section - 2) < 2 || section == 1 && ![pathCopy row])
  {
    if (activeIndexPath == pathCopy)
    {
      v8 = 0;
    }

    else
    {
      v8 = pathCopy;
    }

    [(AIAudiogramResultsViewController *)self setActiveIndexPath:v8];
    activeIndexPath2 = [(AIAudiogramResultsViewController *)self activeIndexPath];
    [(AIAudiogramResultsViewController *)self _setCellActive:activeIndexPath2 != 0 indexPath:pathCopy scroll:1];
  }
}

- (void)scrollViewDidEndScrollingAnimation:(id)animation
{
  v10 = *MEMORY[0x277D85DE8];
  activeIndexPath = [(AIAudiogramResultsViewController *)self activeIndexPath];

  if (activeIndexPath)
  {
    v5 = AXLogAudiogram();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      activeIndexPath2 = [(AIAudiogramResultsViewController *)self activeIndexPath];
      v8 = 138412290;
      v9 = activeIndexPath2;
      _os_log_impl(&dword_24179B000, v5, OS_LOG_TYPE_INFO, "Finished scrolling to index path %@", &v8, 0xCu);
    }

    activeIndexPath3 = [(AIAudiogramResultsViewController *)self activeIndexPath];
    [(AIAudiogramResultsViewController *)self _setCellActive:1 indexPath:activeIndexPath3 scroll:0];
  }
}

- (void)dateCellDidPickDate:(id)date
{
  v10[1] = *MEMORY[0x277D85DE8];
  dateCopy = date;
  audiogram = [(AIAudiogramResultsViewController *)self audiogram];
  sensitivityPoints = [audiogram sensitivityPoints];
  [(AIAudiogramResultsViewController *)self _reloadAudiogramWithSensitivityPoints:sensitivityPoints date:dateCopy];

  v7 = [MEMORY[0x277CCAA70] indexPathForRow:1 inSection:1];
  tableView = [(AIAudiogramResultsViewController *)self tableView];
  v10[0] = v7;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
  [tableView reloadRowsAtIndexPaths:v9 withRowAnimation:5];
}

- (void)timeCellDidPickDate:(id)date
{
  v10[1] = *MEMORY[0x277D85DE8];
  dateCopy = date;
  audiogram = [(AIAudiogramResultsViewController *)self audiogram];
  sensitivityPoints = [audiogram sensitivityPoints];
  [(AIAudiogramResultsViewController *)self _reloadAudiogramWithSensitivityPoints:sensitivityPoints date:dateCopy];

  v7 = [MEMORY[0x277CCAA70] indexPathForRow:0 inSection:1];
  tableView = [(AIAudiogramResultsViewController *)self tableView];
  v10[0] = v7;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
  [tableView reloadRowsAtIndexPaths:v9 withRowAnimation:5];
}

- (void)earCellDidUpdateHearingLevel:(id)level forFrequency:(id)frequency forEar:(int64_t)ear
{
  v67 = *MEMORY[0x277D85DE8];
  levelCopy = level;
  frequencyCopy = frequency;
  [(AIAudiogramResultsViewController *)self setAnalyticsDidMakeAdjustments:1];
  v9 = AXLogAudiogram();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = Soft_HKAudiogramEarLocalizedDisplayNameForEar(ear);
    *buf = 67109378;
    *&buf[4] = ear;
    LOWORD(v58) = 2112;
    *(&v58 + 2) = v10;
    _os_log_impl(&dword_24179B000, v9, OS_LOG_TYPE_INFO, "Updating %i (%@) ear of audiogram", buf, 0x12u);
  }

  audiogram = [(AIAudiogramResultsViewController *)self audiogram];
  if (audiogram)
  {
    audiogram2 = [(AIAudiogramResultsViewController *)self audiogram];
    sensitivityPoints = [audiogram2 sensitivityPoints];
    v14 = [sensitivityPoints mutableCopy];
  }

  else
  {
    v14 = objc_opt_new();
  }

  *buf = 0;
  *&v58 = buf;
  *(&v58 + 1) = 0x3032000000;
  v59 = __Block_byref_object_copy__3;
  v60 = __Block_byref_object_dispose__3;
  hertzUnit = [getHKUnitClass_2() hertzUnit];
  v49 = 0;
  v50 = &v49;
  v51 = 0x2020000000;
  v52 = -1;
  v45[0] = MEMORY[0x277D85DD0];
  v45[1] = 3221225472;
  v45[2] = __85__AIAudiogramResultsViewController_earCellDidUpdateHearingLevel_forFrequency_forEar___block_invoke;
  v45[3] = &unk_278CECBF0;
  v47 = buf;
  v41 = frequencyCopy;
  v46 = v41;
  v48 = &v49;
  [v14 enumerateObjectsUsingBlock:v45];
  v15 = AXLogAudiogram();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = v50[3];
    v17 = [v14 count];
    *v62 = 67109376;
    *&v62[4] = v16;
    LOWORD(v63) = 1024;
    *(&v63 + 2) = v17;
    _os_log_impl(&dword_24179B000, v15, OS_LOG_TYPE_INFO, "Updating audiogram point %i of %i points", v62, 0xEu);
  }

  decibelHearingLevelUnit = [getHKUnitClass_2() decibelHearingLevelUnit];
  if (levelCopy)
  {
    HKQuantityClass_1 = getHKQuantityClass_1();
    [levelCopy doubleValue];
    v19 = [HKQuantityClass_1 quantityWithUnit:decibelHearingLevelUnit doubleValue:?];
  }

  else
  {
    v19 = 0;
  }

  v20 = v19;
  if (ear != 1)
  {
    if (v50[3] != -1)
    {
      v21 = [v14 objectAtIndexedSubscript:?];
      leftEarSensitivity = [v21 leftEarSensitivity];

      goto LABEL_16;
    }

    v20 = 0;
  }

  leftEarSensitivity = v20;
LABEL_16:
  v23 = v19;
  if (ear == 2)
  {
LABEL_20:
    rightEarSensitivity = v23;
    goto LABEL_21;
  }

  if (v50[3] == -1)
  {
    v23 = 0;
    goto LABEL_20;
  }

  v24 = [v14 objectAtIndexedSubscript:?];
  rightEarSensitivity = [v24 rightEarSensitivity];

LABEL_21:
  v26 = getHKQuantityClass_1();
  v27 = *(v58 + 40);
  [v41 doubleValue];
  v28 = [v26 quantityWithUnit:v27 doubleValue:?];
  if (!(leftEarSensitivity | rightEarSensitivity))
  {
    goto LABEL_32;
  }

  v53 = 0;
  v54 = &v53;
  v55 = 0x2050000000;
  v29 = getHKAudiogramSensitivityPointClass_softClass_1;
  v56 = getHKAudiogramSensitivityPointClass_softClass_1;
  if (!getHKAudiogramSensitivityPointClass_softClass_1)
  {
    *v62 = MEMORY[0x277D85DD0];
    v63 = 3221225472;
    v64 = __getHKAudiogramSensitivityPointClass_block_invoke_1;
    v65 = &unk_278CEC150;
    v66 = &v53;
    __getHKAudiogramSensitivityPointClass_block_invoke_1(v62);
    v29 = v54[3];
  }

  v30 = v29;
  _Block_object_dispose(&v53, 8);
  v44 = 0;
  v31 = [v29 sensitivityPointWithFrequency:v28 leftEarSensitivity:leftEarSensitivity rightEarSensitivity:rightEarSensitivity error:&v44];
  v32 = v44;
  if (v32)
  {
    audiogram3 = v32;
    audiogram4 = AXLogAudiogram();
    if (os_log_type_enabled(audiogram4, OS_LOG_TYPE_ERROR))
    {
      [AIAudiogramResultsViewController earCellDidUpdateHearingLevel:forFrequency:forEar:];
    }

    goto LABEL_45;
  }

  if (v31)
  {
    if (v50[3] == -1)
    {
      v39 = AXLogAudiogram();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
      {
        *v62 = 0;
        _os_log_impl(&dword_24179B000, v39, OS_LOG_TYPE_INFO, "Adding audiogram point", v62, 2u);
      }

      [v14 addObject:v31];
      v43[0] = MEMORY[0x277D85DD0];
      v43[1] = 3221225472;
      v43[2] = __85__AIAudiogramResultsViewController_earCellDidUpdateHearingLevel_forFrequency_forEar___block_invoke_99;
      v43[3] = &unk_278CECC18;
      v43[4] = buf;
      [v14 sortUsingComparator:v43];
    }

    else
    {
      v35 = AXLogAudiogram();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
      {
        *v62 = 0;
        _os_log_impl(&dword_24179B000, v35, OS_LOG_TYPE_INFO, "Updating audiogram point", v62, 2u);
      }

      [v14 replaceObjectAtIndex:v50[3] withObject:v31];
    }
  }

  else
  {
LABEL_32:
    if (v50[3] == -1)
    {
      v37 = AXLogAudiogram();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
      {
        *v62 = 0;
        _os_log_impl(&dword_24179B000, v37, OS_LOG_TYPE_INFO, "No update needed for blank audiogram point", v62, 2u);
      }
    }

    else
    {
      v36 = AXLogAudiogram();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
      {
        *v62 = 0;
        _os_log_impl(&dword_24179B000, v36, OS_LOG_TYPE_INFO, "Removing audiogram point", v62, 2u);
      }

      [v14 removeObjectAtIndex:v50[3]];
    }

    v31 = 0;
  }

  audiogram3 = [(AIAudiogramResultsViewController *)self audiogram];
  if (audiogram3)
  {
    audiogram4 = [(AIAudiogramResultsViewController *)self audiogram];
    startDate = [audiogram4 startDate];
  }

  else
  {
    startDate = [MEMORY[0x277CBEAA8] date];
    audiogram4 = startDate;
  }

  [(AIAudiogramResultsViewController *)self _reloadAudiogramWithSensitivityPoints:v14 date:startDate];
  if (audiogram3)
  {
  }

LABEL_45:

  _Block_object_dispose(&v49, 8);
  _Block_object_dispose(buf, 8);
}

void __85__AIAudiogramResultsViewController_earCellDidUpdateHearingLevel_forFrequency_forEar___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = [a2 frequency];
  [v7 doubleValueForUnit:*(*(*(a1 + 40) + 8) + 40)];
  v9 = v8;
  [*(a1 + 32) doubleValue];
  v11 = v10;

  if (v9 == v11)
  {
    *(*(*(a1 + 48) + 8) + 24) = a3;
    *a4 = 1;
  }
}

BOOL __85__AIAudiogramResultsViewController_earCellDidUpdateHearingLevel_forFrequency_forEar___block_invoke_99(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 frequency];
  [v6 doubleValueForUnit:*(*(*(a1 + 32) + 8) + 40)];
  v8 = v7;
  v9 = [v5 frequency];

  [v9 doubleValueForUnit:*(*(*(a1 + 32) + 8) + 40)];
  v11 = v8 > v10;

  return v11;
}

- (void)earCellDidBeginEditingForFrequency:(id)frequency forEar:(int64_t)ear
{
  if (ear == 1)
  {
    v5 = 2;
  }

  else
  {
    v5 = 3;
  }

  frequencyCopy = frequency;
  frequencies = [(AIAudiogramResultsViewController *)self frequencies];
  v8 = [frequencies indexOfObject:frequencyCopy];

  v12 = [MEMORY[0x277CCAA70] indexPathForRow:v8 inSection:v5];
  activeIndexPath = [(AIAudiogramResultsViewController *)self activeIndexPath];

  v10 = v12;
  if (v12 != activeIndexPath)
  {
    [(AIAudiogramResultsViewController *)self setActiveIndexPath:v12];
    activeIndexPath2 = [(AIAudiogramResultsViewController *)self activeIndexPath];
    [(AIAudiogramResultsViewController *)self _scrollToIndexPathIfNecessary:activeIndexPath2 animated:1];

    v10 = v12;
  }
}

- (void)earCellDidEndEditingForFrequency:(id)frequency forEar:(int64_t)ear
{
  if (ear == 1)
  {
    v5 = 2;
  }

  else
  {
    v5 = 3;
  }

  frequencyCopy = frequency;
  frequencies = [(AIAudiogramResultsViewController *)self frequencies];
  v8 = [frequencies indexOfObject:frequencyCopy];

  v11 = [MEMORY[0x277CCAA70] indexPathForRow:v8 inSection:v5];
  activeIndexPath = [(AIAudiogramResultsViewController *)self activeIndexPath];

  v10 = v11;
  if (v11 == activeIndexPath)
  {
    [(AIAudiogramResultsViewController *)self setActiveIndexPath:0];
    v10 = v11;
  }
}

- (AIAudiogramConfirmResultsViewControllerDelegate)audiogramConfirmationDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_audiogramConfirmationDelegate);

  return WeakRetained;
}

- (void)_setCellActive:indexPath:scroll:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)tableView:cellForRowAtIndexPath:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)earCellDidUpdateHearingLevel:forFrequency:forEar:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

@end