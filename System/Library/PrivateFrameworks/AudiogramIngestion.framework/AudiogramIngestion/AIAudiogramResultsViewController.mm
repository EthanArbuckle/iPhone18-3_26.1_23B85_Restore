@interface AIAudiogramResultsViewController
- (AIAudiogramConfirmResultsViewControllerDelegate)audiogramConfirmationDelegate;
- (AIAudiogramResultsViewController)initWithDelegate:(id)a3 audiogram:(id)a4;
- (BOOL)_scrollToIndexPathIfNecessary:(id)a3 animated:(BOOL)a4;
- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_confirmTapped:(id)a3;
- (void)_reloadAudiogramWithSensitivityPoints:(id)a3 date:(id)a4;
- (void)_setCellActive:(BOOL)a3 indexPath:(id)a4 scroll:(BOOL)a5;
- (void)_updateTableViewHeight;
- (void)dateCellDidPickDate:(id)a3;
- (void)dealloc;
- (void)earCellDidBeginEditingForFrequency:(id)a3 forEar:(int64_t)a4;
- (void)earCellDidEndEditingForFrequency:(id)a3 forEar:(int64_t)a4;
- (void)earCellDidUpdateHearingLevel:(id)a3 forFrequency:(id)a4 forEar:(int64_t)a5;
- (void)keyboardDoneTapped;
- (void)keyboardNegationTapped;
- (void)keyboardNextTapped;
- (void)keyboardPreviousTapped;
- (void)scrollViewDidEndScrollingAnimation:(id)a3;
- (void)setActiveIndexPath:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)timeCellDidPickDate:(id)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation AIAudiogramResultsViewController

- (AIAudiogramResultsViewController)initWithDelegate:(id)a3 audiogram:(id)a4
{
  v39[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = aiLocString(@"AudiogramIngestionResultsTitle");
  v9 = aiLocString(@"AudiogramIngestionResultsDetailText");
  v38.receiver = self;
  v38.super_class = AIAudiogramResultsViewController;
  v10 = [(AIAudiogramResultsViewController *)&v38 initWithTitle:v8 detailText:v9 symbolName:0 contentLayout:3];

  if (v10)
  {
    [(AIAudiogramResultsViewController *)v10 setAudiogram:v7];
    [(AIAudiogramResultsViewController *)v10 setAudiogramConfirmationDelegate:v6];
    v11 = [AIAudiogramValidFrequencies copy];
    [(AIAudiogramResultsViewController *)v10 setFrequencies:v11];

    v12 = objc_opt_new();
    [(AIAudiogramResultsViewController *)v10 setTableViewCells:v12];

    v34 = 0;
    v35 = &v34;
    v36 = 0x2020000000;
    v13 = [(AIAudiogramResultsViewController *)v10 audiogram];
    v14 = v13 == 0;

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
    v15 = [(AIAudiogramResultsViewController *)v10 frequencies];
    v33 = [v15 mutableCopy];

    [p_location[5] removeObject:&unk_2853656C8];
    [p_location[5] removeObject:&unk_2853656E0];
    [p_location[5] removeObject:&unk_2853656F8];
    [p_location[5] removeObject:&unk_285365710];
    [p_location[5] removeObject:&unk_285365728];
    v16 = [(AIAudiogramResultsViewController *)v10 audiogram];
    v17 = [v16 sensitivityPoints];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __63__AIAudiogramResultsViewController_initWithDelegate_audiogram___block_invoke;
    v27[3] = &unk_278CECB50;
    v27[4] = &v34;
    v27[5] = &location;
    [v17 enumerateObjectsUsingBlock:v27];

    if ([p_location[5] count])
    {
      *(v35 + 24) = 1;
    }

    _Block_object_dispose(&location, 8);

    if (v35[3])
    {
LABEL_6:
      v18 = [(AIAudiogramResultsViewController *)v10 headerView];
      v19 = aiLocString(@"AudiogramIngestionResultsMissingTitle");
      [v18 setTitle:v19];

      v20 = [(AIAudiogramResultsViewController *)v10 headerView];
      v21 = aiLocString(@"AudiogramIngestionResultsMissingDetailText");
      [v20 setDetailText:v21];
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

  v5 = [(OBBaseWelcomeController *)self navigationItem];
  [v5 setRightBarButtonItem:v57];

  v6 = [AIAudiogramKeyboardToolbar alloc];
  v7 = [(AIAudiogramResultsViewController *)self view];
  [v7 frame];
  v8 = [(AIAudiogramKeyboardToolbar *)v6 initWithFrame:self target:0.0, 0.0];
  [(AIAudiogramResultsViewController *)self setKeyboardToolbar:v8];

  v9 = objc_alloc(MEMORY[0x277D75B40]);
  v10 = [v9 initWithFrame:2 style:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [(AIAudiogramResultsViewController *)self setTableView:v10];

  v11 = [(AIAudiogramResultsViewController *)self tableView];
  [v11 setDataSource:self];

  v12 = [(AIAudiogramResultsViewController *)self tableView];
  [v12 setDelegate:self];

  v13 = [(AIAudiogramResultsViewController *)self tableView];
  [v13 setScrollEnabled:0];

  v14 = [(AIAudiogramResultsViewController *)self tableView];
  v15 = [MEMORY[0x277D75348] systemGroupedBackgroundColor];
  [v14 setBackgroundColor:v15];

  v16 = [(AIAudiogramResultsViewController *)self tableView];
  [v16 setTranslatesAutoresizingMaskIntoConstraints:0];

  v17 = [(AIAudiogramResultsViewController *)self contentView];
  v18 = [(AIAudiogramResultsViewController *)self tableView];
  [v17 addSubview:v18];

  v47 = MEMORY[0x277CCAAD0];
  v56 = [(AIAudiogramResultsViewController *)self tableView];
  v54 = [v56 topAnchor];
  v55 = [(AIAudiogramResultsViewController *)self contentView];
  v53 = [v55 topAnchor];
  v52 = [v54 constraintEqualToAnchor:v53];
  v60[0] = v52;
  v51 = [(AIAudiogramResultsViewController *)self tableView];
  v49 = [v51 leadingAnchor];
  v50 = [(AIAudiogramResultsViewController *)self view];
  v48 = [v50 leadingAnchor];
  v46 = [v49 constraintEqualToAnchor:v48];
  v60[1] = v46;
  v45 = [(AIAudiogramResultsViewController *)self tableView];
  v44 = [v45 trailingAnchor];
  v19 = [(AIAudiogramResultsViewController *)self view];
  v20 = [v19 trailingAnchor];
  v21 = [v44 constraintEqualToAnchor:v20];
  v60[2] = v21;
  v22 = [(AIAudiogramResultsViewController *)self tableView];
  v23 = [v22 bottomAnchor];
  v24 = [(AIAudiogramResultsViewController *)self contentView];
  v25 = [v24 bottomAnchor];
  v26 = [v23 constraintEqualToAnchor:v25];
  v60[3] = v26;
  v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v60 count:4];
  [v47 activateConstraints:v27];

  v28 = [(AIAudiogramResultsViewController *)self tableView];
  v29 = objc_opt_class();
  v30 = +[AIAudiogramResultGraphCell reuseIdentifier];
  [v28 registerClass:v29 forCellReuseIdentifier:v30];

  v31 = [(AIAudiogramResultsViewController *)self tableView];
  v32 = objc_opt_class();
  v33 = +[AIAudiogramResultDateCell reuseIdentifier];
  [v31 registerClass:v32 forCellReuseIdentifier:v33];

  v34 = [(AIAudiogramResultsViewController *)self tableView];
  v35 = objc_opt_class();
  v36 = +[AIAudiogramResultTimeCell reuseIdentifier];
  [v34 registerClass:v35 forCellReuseIdentifier:v36];

  v37 = [(AIAudiogramResultsViewController *)self tableView];
  v38 = objc_opt_class();
  v39 = +[AIAudiogramResultEarCell reuseIdentifier];
  [v37 registerClass:v38 forCellReuseIdentifier:v39];

  v40 = [(AIAudiogramResultsViewController *)self scrollView];
  [v40 _addScrollViewScrollObserver:self];

  v41 = [MEMORY[0x277CCAB98] defaultCenter];
  v42 = *MEMORY[0x277D76BA8];
  v58[0] = MEMORY[0x277D85DD0];
  v58[1] = 3221225472;
  v58[2] = __47__AIAudiogramResultsViewController_viewDidLoad__block_invoke;
  v58[3] = &unk_278CEC230;
  v58[4] = self;
  v43 = [v41 addObserverForName:v42 object:0 queue:0 usingBlock:v58];
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
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

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
  v5 = [(AIAudiogramResultsViewController *)self tableViewHeightConstraint];
  if (v5)
  {
  }

  else
  {
    v9 = [(AIAudiogramResultsViewController *)self tableView];

    if (v9)
    {
      v10 = [(AIAudiogramResultsViewController *)self tableView];
      v11 = [v10 heightAnchor];
      v12 = [v11 constraintEqualToConstant:v4];
      [(AIAudiogramResultsViewController *)self setTableViewHeightConstraint:v12];

      v13 = [(AIAudiogramResultsViewController *)self tableViewHeightConstraint];
      [v13 setActive:1];
      goto LABEL_7;
    }
  }

  v6 = [(AIAudiogramResultsViewController *)self tableViewHeightConstraint];
  [v6 constant];
  v8 = v7;

  if (v4 == v8)
  {
    return;
  }

  v13 = [(AIAudiogramResultsViewController *)self tableViewHeightConstraint];
  [v13 setConstant:v4];
LABEL_7:
}

- (void)_confirmTapped:(id)a3
{
  v4 = [AIAudiogramConfirmResultsViewController alloc];
  v5 = [(AIAudiogramResultsViewController *)self audiogramConfirmationDelegate];
  v6 = [(AIAudiogramResultsViewController *)self audiogram];
  v10 = [(AIAudiogramConfirmResultsViewController *)v4 initWithDelegate:v5 audiogram:v6];

  v7 = [(AIAudiogramResultsViewController *)self healthStore];
  [(AIAudiogramConfirmResultsViewController *)v10 setHealthStore:v7];

  v8 = [(AIAudiogramResultsViewController *)self unitPreferenceController];
  [(AIAudiogramConfirmResultsViewController *)v10 setUnitPreferenceController:v8];

  [(AIAudiogramConfirmResultsViewController *)v10 setAnalyticsDidCompleteIngestion:[(AIAudiogramResultsViewController *)self analyticsDidCompleteIngestion]];
  [(AIAudiogramConfirmResultsViewController *)v10 setAnalyticsDidMakeAdjustments:[(AIAudiogramResultsViewController *)self analyticsDidMakeAdjustments]];
  [(AIAudiogramConfirmResultsViewController *)v10 setAnalyticsImportSource:[(AIAudiogramResultsViewController *)self analyticsImportSource]];
  [(AIAudiogramConfirmResultsViewController *)v10 setAnalyticsClient:[(AIAudiogramResultsViewController *)self analyticsClient]];
  v9 = [(AIAudiogramResultsViewController *)self navigationController];
  [v9 pushViewController:v10 animated:1];
}

- (void)_reloadAudiogramWithSensitivityPoints:(id)a3 date:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(AIAudiogramResultsViewController *)self audiogram];
  if ([v6 count])
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
    v12 = [v9 audiogramSampleWithSensitivityPoints:v6 startDate:v7 endDate:v7 metadata:v11];
    [(AIAudiogramResultsViewController *)self setAudiogram:v12];
  }

  else
  {
    [(AIAudiogramResultsViewController *)self setAudiogram:0];
  }

  v13 = v8;
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

- (void)_setCellActive:(BOOL)a3 indexPath:(id)a4 scroll:(BOOL)a5
{
  v5 = a5;
  v6 = a3;
  v8 = a4;
  if (!v5 || ![(AIAudiogramResultsViewController *)self _scrollToIndexPathIfNecessary:v8 animated:1])
  {
    v9 = [(AIAudiogramResultsViewController *)self tableViewCells];
    v10 = [v9 objectForKey:v8];

    if ([v8 section] == 1)
    {
      if (![v8 row])
      {
        v19 = v8;
        AXPerformBlockOnMainThread();
      }
    }

    else
    {
      if ([v8 section] == 2 || objc_msgSend(v8, "section") == 3)
      {
        [v10 showActive:v6];
        v11 = [v8 section];
        if (v11 == 3)
        {
          v12 = [v8 row];
          v9 = [(AIAudiogramResultsViewController *)self frequencies];
          v13 = v12 != [v9 count] - 1;
        }

        else
        {
          v13 = 1;
        }

        v14 = [(AIAudiogramResultsViewController *)self keyboardToolbar];
        v15 = [v14 nextItemButton];
        [v15 setEnabled:v13];

        if (v11 == 3)
        {
        }

        v16 = [v8 section] != 2 || objc_msgSend(v8, "row") != 0;
        v17 = [(AIAudiogramResultsViewController *)self keyboardToolbar];
        v18 = [v17 previousItemButton];
        [v18 setEnabled:v16];
      }

      else
      {
        v17 = AXLogAudiogram();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
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

- (BOOL)_scrollToIndexPathIfNecessary:(id)a3 animated:(BOOL)a4
{
  v49 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [(AIAudiogramResultsViewController *)self tableView];
  [v6 rectForRowAtIndexPath:v5];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v15 = [(AIAudiogramResultsViewController *)self view];
  v16 = [(AIAudiogramResultsViewController *)self tableView];
  v42 = v10;
  v43 = v8;
  [v15 convertRect:v16 fromView:{v8, v10, v12, v14}];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;

  v25 = [(AIAudiogramResultsViewController *)self scrollView];
  [v25 frame];
  v27 = v20 - v26;

  v28 = [(AIAudiogramResultsViewController *)self scrollView];
  [v28 frame];
  v30 = v29;
  v31 = [(AIAudiogramResultsViewController *)self scrollView];
  [v31 contentInset];
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
      v39 = [(AIAudiogramResultsViewController *)self scrollView];
      v40 = [(AIAudiogramResultsViewController *)self tableView];
      [v39 convertRect:v40 fromView:{v43, v42, v12, v14}];

      v44 = v5;
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

- (void)setActiveIndexPath:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = AXLogAudiogram();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    activeIndexPath = self->_activeIndexPath;
    v14 = 138412546;
    v15 = activeIndexPath;
    v16 = 2112;
    v17 = v5;
    _os_log_impl(&dword_24179B000, v6, OS_LOG_TYPE_INFO, "Updating active index path %@ -> %@", &v14, 0x16u);
  }

  v8 = [(AIAudiogramResultsViewController *)self activeIndexPath];

  if (v8 != v5)
  {
    v9 = [(AIAudiogramResultsViewController *)self activeIndexPath];
    objc_storeStrong(&self->_activeIndexPath, a3);
    v10 = [MEMORY[0x277CCAA70] indexPathForRow:0 inSection:1];
    if (v9 == v10)
    {
      [(AIAudiogramResultsViewController *)self _setCellActive:0 indexPath:v10 scroll:0];
    }

    v11 = [(AIAudiogramResultsViewController *)self activeIndexPath];
    v12 = v11;
    if (v11 != v10)
    {

LABEL_12:
      goto LABEL_13;
    }

    if ([v9 section] == 2)
    {
    }

    else
    {
      v13 = [v9 section];

      if (v13 != 3)
      {
        goto LABEL_12;
      }
    }

    [(AIAudiogramResultsViewController *)self _setCellActive:0 indexPath:v9 scroll:0];
    goto LABEL_12;
  }

LABEL_13:
}

- (void)keyboardDoneTapped
{
  [(AIAudiogramResultsViewController *)self setActiveIndexPath:0];
  v3 = [(AIAudiogramResultsViewController *)self tableView];
  [v3 endEditing:1];
}

- (void)keyboardNegationTapped
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = [a1 activeIndexPath];
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
  v3 = [(AIAudiogramResultsViewController *)self activeIndexPath];

  if (v3)
  {
    v4 = [(AIAudiogramResultsViewController *)self activeIndexPath];
    v5 = [v4 section];

    if (v5 == 2)
    {
      v6 = [(AIAudiogramResultsViewController *)self tableView];
      v7 = [(AIAudiogramResultsViewController *)self tableView:v6 numberOfRowsInSection:2];

      v8 = [(AIAudiogramResultsViewController *)self activeIndexPath];
      if ([v8 row] <= 0)
      {
      }

      else
      {
        v9 = [(AIAudiogramResultsViewController *)self activeIndexPath];
        v10 = [v9 row];

        if (v10 < v7)
        {
          v11 = MEMORY[0x277CCAA70];
          v12 = [(AIAudiogramResultsViewController *)self activeIndexPath];
          v13 = [v12 row] - 1;
          v14 = v11;
          v15 = 2;
LABEL_13:
          v17 = [v14 indexPathForRow:v13 inSection:v15];

LABEL_18:
          v28 = AXLogAudiogram();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
          {
            v34 = 138412290;
            v35 = v17;
            _os_log_impl(&dword_24179B000, v28, OS_LOG_TYPE_INFO, "Moving focus backwards to %@", &v34, 0xCu);
          }

          if (v17)
          {
            [(AIAudiogramResultsViewController *)self setActiveIndexPath:v17];
            v29 = [(AIAudiogramResultsViewController *)self activeIndexPath];
            v30 = self;
            v31 = 1;
            v32 = v29;
            v33 = 1;
          }

          else
          {
            v29 = [(AIAudiogramResultsViewController *)self activeIndexPath];
            v30 = self;
            v31 = 0;
            v32 = v29;
            v33 = 0;
          }

          [(AIAudiogramResultsViewController *)v30 _setCellActive:v31 indexPath:v32 scroll:v33];

          goto LABEL_24;
        }
      }
    }

    else
    {
      v18 = [(AIAudiogramResultsViewController *)self activeIndexPath];
      v19 = [v18 section];

      if (v19 == 3)
      {
        v20 = [(AIAudiogramResultsViewController *)self tableView];
        v21 = [(AIAudiogramResultsViewController *)self tableView:v20 numberOfRowsInSection:3];

        v22 = [(AIAudiogramResultsViewController *)self activeIndexPath];
        if ([v22 row] <= 0)
        {
        }

        else
        {
          v23 = [(AIAudiogramResultsViewController *)self activeIndexPath];
          v24 = [v23 row];

          if (v24 < v21)
          {
            v25 = MEMORY[0x277CCAA70];
            v12 = [(AIAudiogramResultsViewController *)self activeIndexPath];
            v13 = [v12 row] - 1;
            v14 = v25;
            v15 = 3;
            goto LABEL_13;
          }
        }

        v26 = [(AIAudiogramResultsViewController *)self activeIndexPath];
        v27 = [v26 row];

        if (!v27)
        {
          v17 = [MEMORY[0x277CCAA70] indexPathForRow:v21 - 1 inSection:2];
          goto LABEL_18;
        }
      }
    }

    v17 = 0;
    goto LABEL_18;
  }

  v16 = AXLogAudiogram();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    [AIAudiogramResultsViewController keyboardPreviousTapped];
  }

  v17 = [(AIAudiogramResultsViewController *)self tableView];
  [v17 endEditing:1];
LABEL_24:
}

- (void)keyboardNextTapped
{
  v37 = *MEMORY[0x277D85DE8];
  v3 = [(AIAudiogramResultsViewController *)self activeIndexPath];

  if (v3)
  {
    v4 = [(AIAudiogramResultsViewController *)self activeIndexPath];
    v5 = [v4 section];

    if (v5 == 2)
    {
      v6 = [(AIAudiogramResultsViewController *)self tableView];
      v7 = [(AIAudiogramResultsViewController *)self tableView:v6 numberOfRowsInSection:2];

      v8 = [(AIAudiogramResultsViewController *)self activeIndexPath];
      if ([v8 row] < 0)
      {

        v11 = v7 - 1;
      }

      else
      {
        v9 = [(AIAudiogramResultsViewController *)self activeIndexPath];
        v10 = [v9 row];
        v11 = v7 - 1;

        if (v10 < v7 - 1)
        {
          v12 = MEMORY[0x277CCAA70];
          v13 = [(AIAudiogramResultsViewController *)self activeIndexPath];
          v14 = [v13 row] + 1;
          v15 = v12;
          v16 = 2;
LABEL_13:
          v18 = [v15 indexPathForRow:v14 inSection:v16];

LABEL_19:
          v29 = AXLogAudiogram();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
          {
            v35 = 138412290;
            v36 = v18;
            _os_log_impl(&dword_24179B000, v29, OS_LOG_TYPE_INFO, "Moving focus forwards to %@", &v35, 0xCu);
          }

          if (v18)
          {
            [(AIAudiogramResultsViewController *)self setActiveIndexPath:v18];
            v30 = [(AIAudiogramResultsViewController *)self activeIndexPath];
            v31 = self;
            v32 = 1;
            v33 = v30;
            v34 = 1;
          }

          else
          {
            v30 = [(AIAudiogramResultsViewController *)self activeIndexPath];
            v31 = self;
            v32 = 0;
            v33 = v30;
            v34 = 0;
          }

          [(AIAudiogramResultsViewController *)v31 _setCellActive:v32 indexPath:v33 scroll:v34];

          goto LABEL_25;
        }
      }

      v27 = [(AIAudiogramResultsViewController *)self activeIndexPath];
      v28 = [v27 row];

      if (v28 == v11)
      {
        v18 = [MEMORY[0x277CCAA70] indexPathForRow:0 inSection:3];
        goto LABEL_19;
      }
    }

    else
    {
      v19 = [(AIAudiogramResultsViewController *)self activeIndexPath];
      v20 = [v19 section];

      if (v20 == 3)
      {
        v21 = [(AIAudiogramResultsViewController *)self tableView];
        v22 = [(AIAudiogramResultsViewController *)self tableView:v21 numberOfRowsInSection:3];

        v23 = [(AIAudiogramResultsViewController *)self activeIndexPath];
        if ([v23 row] < 0)
        {
        }

        else
        {
          v24 = [(AIAudiogramResultsViewController *)self activeIndexPath];
          v25 = [v24 row];

          if (v25 < v22 - 1)
          {
            v26 = MEMORY[0x277CCAA70];
            v13 = [(AIAudiogramResultsViewController *)self activeIndexPath];
            v14 = [v13 row] + 1;
            v15 = v26;
            v16 = 3;
            goto LABEL_13;
          }
        }
      }
    }

    v18 = 0;
    goto LABEL_19;
  }

  v17 = AXLogAudiogram();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    [AIAudiogramResultsViewController keyboardPreviousTapped];
  }

  v18 = [(AIAudiogramResultsViewController *)self tableView];
  [v18 endEditing:1];
LABEL_25:
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = MEMORY[0x277CCAA70];
  v8 = a4;
  v9 = [v8 row];
  v10 = [v8 section];

  v11 = [v7 indexPathForRow:v9 inSection:v10];
  v12 = objc_opt_new();
  v13 = [(AIAudiogramResultsViewController *)self activeIndexPath];

  v14 = [v11 section];
  if (v14 > 1)
  {
    if (v14 == 2)
    {
      v33 = [(AIAudiogramResultsViewController *)self frequencies];
      v17 = [v33 objectAtIndex:{objc_msgSend(v11, "row")}];

      v54 = 0;
      v55 = &v54;
      v56 = 0x3032000000;
      v57 = __Block_byref_object_copy__3;
      v58 = __Block_byref_object_dispose__3;
      v59 = 0;
      v34 = [(AIAudiogramResultsViewController *)self audiogram];

      if (v34)
      {
        v35 = [(AIAudiogramResultsViewController *)self audiogram];
        v36 = [v35 sensitivityPoints];
        v51[0] = MEMORY[0x277D85DD0];
        v51[1] = 3221225472;
        v51[2] = __68__AIAudiogramResultsViewController_tableView_cellForRowAtIndexPath___block_invoke;
        v51[3] = &unk_278CECBC8;
        v52 = v17;
        v53 = &v54;
        [v36 enumerateObjectsUsingBlock:v51];
      }

      v37 = +[AIAudiogramResultEarCell reuseIdentifier];
      v21 = [v6 dequeueReusableCellWithIdentifier:v37];

      [v21 setFrequency:v17];
      [v21 setHearingLevel:v55[5]];
      [v21 setEar:1];
      [v21 setDelegate:self];
      v38 = [(AIAudiogramResultsViewController *)self keyboardToolbar];
      [v21 setKeyboardToolbar:v38];

      [v21 configureLayout];
      v29 = [(AIAudiogramResultsViewController *)self tableViewCells];
      [v29 setObject:v21 forKey:v11];
    }

    else
    {
      if (v14 != 3)
      {
        goto LABEL_16;
      }

      v23 = [(AIAudiogramResultsViewController *)self frequencies];
      v17 = [v23 objectAtIndex:{objc_msgSend(v11, "row")}];

      v54 = 0;
      v55 = &v54;
      v56 = 0x3032000000;
      v57 = __Block_byref_object_copy__3;
      v58 = __Block_byref_object_dispose__3;
      v59 = 0;
      v24 = [(AIAudiogramResultsViewController *)self audiogram];

      if (v24)
      {
        v25 = [(AIAudiogramResultsViewController *)self audiogram];
        v26 = [v25 sensitivityPoints];
        v45 = MEMORY[0x277D85DD0];
        v46 = 3221225472;
        v47 = __68__AIAudiogramResultsViewController_tableView_cellForRowAtIndexPath___block_invoke_2;
        v48 = &unk_278CECBC8;
        v49 = v17;
        v50 = &v54;
        [v26 enumerateObjectsUsingBlock:&v45];
      }

      v27 = [AIAudiogramResultEarCell reuseIdentifier:v45];
      v21 = [v6 dequeueReusableCellWithIdentifier:v27];

      [v21 setFrequency:v17];
      [v21 setHearingLevel:v55[5]];
      [v21 setEar:2];
      [v21 setDelegate:self];
      v28 = [(AIAudiogramResultsViewController *)self keyboardToolbar];
      [v21 setKeyboardToolbar:v28];

      [v21 configureLayout];
      v29 = [(AIAudiogramResultsViewController *)self tableViewCells];
      [v29 setObject:v21 forKey:v11];
    }

    _Block_object_dispose(&v54, 8);
LABEL_23:

    goto LABEL_32;
  }

  if (!v14)
  {
    v31 = +[AIAudiogramResultGraphCell reuseIdentifier];
    v21 = [v6 dequeueReusableCellWithIdentifier:v31];

    v32 = [(AIAudiogramResultsViewController *)self audiogram];
    [v21 setAudiogram:v32];

    goto LABEL_31;
  }

  if (v14 != 1)
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
      v16 = [(AIAudiogramResultsViewController *)self audiogram];
      v17 = [v16 startDate];

      if (!v17)
      {
        v18 = [(AIAudiogramResultsViewController *)self initialDate];
        if (!v18)
        {
          v18 = [MEMORY[0x277CBEAA8] date];
        }

        v17 = v18;
      }

      v19 = v13 == v11;
      v20 = +[AIAudiogramResultDateCell reuseIdentifier];
      v21 = [v6 dequeueReusableCellWithIdentifier:v20];

      [v21 showActive:v19];
      [v21 setDate:v17];
      [v21 setDelegate:self];
      [v21 configureLayout];
      v22 = [(AIAudiogramResultsViewController *)self tableViewCells];
      [v22 setObject:v21 forKey:v11];

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
  v21 = [v6 dequeueReusableCellWithIdentifier:v39];

  v40 = [(AIAudiogramResultsViewController *)self audiogram];
  if (v40)
  {
    v41 = [(AIAudiogramResultsViewController *)self audiogram];
    v42 = [v41 startDate];
    [v21 setDate:v42];
  }

  else
  {
    v41 = [MEMORY[0x277CBEAA8] date];
    [v21 setDate:v41];
  }

  [v21 setDelegate:self];
  [v21 configureLayout];
LABEL_31:
  v43 = [(AIAudiogramResultsViewController *)self tableViewCells];
  [v43 setObject:v21 forKey:v11];

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

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v6 = a3;
  if ((a4 - 2) < 2)
  {
    v12 = [(AIAudiogramResultsViewController *)self frequencies];
    v11 = [v12 count];
  }

  else if (a4 == 1)
  {
    v11 = 2;
  }

  else if (a4)
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
    v7 = [(OBBaseWelcomeController *)self navigationItem];
    v8 = [v7 rightBarButtonItem];
    v9 = [(AIAudiogramResultsViewController *)self audiogram];
    [v8 setEnabled:v9 != 0];

    v10 = [(AIAudiogramResultsViewController *)self audiogram];
    v11 = v10 != 0;
  }

  return v11;
}

- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4
{
  v5 = a3;
  if (a4 > 1)
  {
    if (a4 == 2)
    {
      v7 = 1;
    }

    else
    {
      if (a4 != 3)
      {
        goto LABEL_8;
      }

      v7 = 2;
    }

    v6 = Soft_HKAudiogramEarLocalizedDisplayNameForEar(v7);
    goto LABEL_13;
  }

  if (!a4)
  {
    goto LABEL_14;
  }

  if (a4 == 1)
  {
    v6 = aiLocString(@"AudiogramIngestionResultsDate");
LABEL_13:
    a4 = v6;
    goto LABEL_14;
  }

LABEL_8:
  v8 = AXLogAudiogram();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    [AIAudiogramResultsViewController tableView:titleForHeaderInSection:];
  }

  a4 = 0;
LABEL_14:

  return a4;
}

- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4
{
  if ([a4 section])
  {
    return *MEMORY[0x277D76F30];
  }

  +[AIAudiogramResultGraphCell cellHeight];
  return result;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v10 = a4;
  [a3 deselectRowAtIndexPath:v10 animated:1];
  v6 = [(AIAudiogramResultsViewController *)self activeIndexPath];

  v7 = [v10 section];
  if ((v7 - 2) < 2 || v7 == 1 && ![v10 row])
  {
    if (v6 == v10)
    {
      v8 = 0;
    }

    else
    {
      v8 = v10;
    }

    [(AIAudiogramResultsViewController *)self setActiveIndexPath:v8];
    v9 = [(AIAudiogramResultsViewController *)self activeIndexPath];
    [(AIAudiogramResultsViewController *)self _setCellActive:v9 != 0 indexPath:v10 scroll:1];
  }
}

- (void)scrollViewDidEndScrollingAnimation:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = [(AIAudiogramResultsViewController *)self activeIndexPath];

  if (v4)
  {
    v5 = AXLogAudiogram();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = [(AIAudiogramResultsViewController *)self activeIndexPath];
      v8 = 138412290;
      v9 = v6;
      _os_log_impl(&dword_24179B000, v5, OS_LOG_TYPE_INFO, "Finished scrolling to index path %@", &v8, 0xCu);
    }

    v7 = [(AIAudiogramResultsViewController *)self activeIndexPath];
    [(AIAudiogramResultsViewController *)self _setCellActive:1 indexPath:v7 scroll:0];
  }
}

- (void)dateCellDidPickDate:(id)a3
{
  v10[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(AIAudiogramResultsViewController *)self audiogram];
  v6 = [v5 sensitivityPoints];
  [(AIAudiogramResultsViewController *)self _reloadAudiogramWithSensitivityPoints:v6 date:v4];

  v7 = [MEMORY[0x277CCAA70] indexPathForRow:1 inSection:1];
  v8 = [(AIAudiogramResultsViewController *)self tableView];
  v10[0] = v7;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
  [v8 reloadRowsAtIndexPaths:v9 withRowAnimation:5];
}

- (void)timeCellDidPickDate:(id)a3
{
  v10[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(AIAudiogramResultsViewController *)self audiogram];
  v6 = [v5 sensitivityPoints];
  [(AIAudiogramResultsViewController *)self _reloadAudiogramWithSensitivityPoints:v6 date:v4];

  v7 = [MEMORY[0x277CCAA70] indexPathForRow:0 inSection:1];
  v8 = [(AIAudiogramResultsViewController *)self tableView];
  v10[0] = v7;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
  [v8 reloadRowsAtIndexPaths:v9 withRowAnimation:5];
}

- (void)earCellDidUpdateHearingLevel:(id)a3 forFrequency:(id)a4 forEar:(int64_t)a5
{
  v67 = *MEMORY[0x277D85DE8];
  v42 = a3;
  v8 = a4;
  [(AIAudiogramResultsViewController *)self setAnalyticsDidMakeAdjustments:1];
  v9 = AXLogAudiogram();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = Soft_HKAudiogramEarLocalizedDisplayNameForEar(a5);
    *buf = 67109378;
    *&buf[4] = a5;
    LOWORD(v58) = 2112;
    *(&v58 + 2) = v10;
    _os_log_impl(&dword_24179B000, v9, OS_LOG_TYPE_INFO, "Updating %i (%@) ear of audiogram", buf, 0x12u);
  }

  v11 = [(AIAudiogramResultsViewController *)self audiogram];
  if (v11)
  {
    v12 = [(AIAudiogramResultsViewController *)self audiogram];
    v13 = [v12 sensitivityPoints];
    v14 = [v13 mutableCopy];
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
  v61 = [getHKUnitClass_2() hertzUnit];
  v49 = 0;
  v50 = &v49;
  v51 = 0x2020000000;
  v52 = -1;
  v45[0] = MEMORY[0x277D85DD0];
  v45[1] = 3221225472;
  v45[2] = __85__AIAudiogramResultsViewController_earCellDidUpdateHearingLevel_forFrequency_forEar___block_invoke;
  v45[3] = &unk_278CECBF0;
  v47 = buf;
  v41 = v8;
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

  v40 = [getHKUnitClass_2() decibelHearingLevelUnit];
  if (v42)
  {
    HKQuantityClass_1 = getHKQuantityClass_1();
    [v42 doubleValue];
    v19 = [HKQuantityClass_1 quantityWithUnit:v40 doubleValue:?];
  }

  else
  {
    v19 = 0;
  }

  v20 = v19;
  if (a5 != 1)
  {
    if (v50[3] != -1)
    {
      v21 = [v14 objectAtIndexedSubscript:?];
      v22 = [v21 leftEarSensitivity];

      goto LABEL_16;
    }

    v20 = 0;
  }

  v22 = v20;
LABEL_16:
  v23 = v19;
  if (a5 == 2)
  {
LABEL_20:
    v25 = v23;
    goto LABEL_21;
  }

  if (v50[3] == -1)
  {
    v23 = 0;
    goto LABEL_20;
  }

  v24 = [v14 objectAtIndexedSubscript:?];
  v25 = [v24 rightEarSensitivity];

LABEL_21:
  v26 = getHKQuantityClass_1();
  v27 = *(v58 + 40);
  [v41 doubleValue];
  v28 = [v26 quantityWithUnit:v27 doubleValue:?];
  if (!(v22 | v25))
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
  v31 = [v29 sensitivityPointWithFrequency:v28 leftEarSensitivity:v22 rightEarSensitivity:v25 error:&v44];
  v32 = v44;
  if (v32)
  {
    v33 = v32;
    v34 = AXLogAudiogram();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
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

  v33 = [(AIAudiogramResultsViewController *)self audiogram];
  if (v33)
  {
    v34 = [(AIAudiogramResultsViewController *)self audiogram];
    v38 = [v34 startDate];
  }

  else
  {
    v38 = [MEMORY[0x277CBEAA8] date];
    v34 = v38;
  }

  [(AIAudiogramResultsViewController *)self _reloadAudiogramWithSensitivityPoints:v14 date:v38];
  if (v33)
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

- (void)earCellDidBeginEditingForFrequency:(id)a3 forEar:(int64_t)a4
{
  if (a4 == 1)
  {
    v5 = 2;
  }

  else
  {
    v5 = 3;
  }

  v6 = a3;
  v7 = [(AIAudiogramResultsViewController *)self frequencies];
  v8 = [v7 indexOfObject:v6];

  v12 = [MEMORY[0x277CCAA70] indexPathForRow:v8 inSection:v5];
  v9 = [(AIAudiogramResultsViewController *)self activeIndexPath];

  v10 = v12;
  if (v12 != v9)
  {
    [(AIAudiogramResultsViewController *)self setActiveIndexPath:v12];
    v11 = [(AIAudiogramResultsViewController *)self activeIndexPath];
    [(AIAudiogramResultsViewController *)self _scrollToIndexPathIfNecessary:v11 animated:1];

    v10 = v12;
  }
}

- (void)earCellDidEndEditingForFrequency:(id)a3 forEar:(int64_t)a4
{
  if (a4 == 1)
  {
    v5 = 2;
  }

  else
  {
    v5 = 3;
  }

  v6 = a3;
  v7 = [(AIAudiogramResultsViewController *)self frequencies];
  v8 = [v7 indexOfObject:v6];

  v11 = [MEMORY[0x277CCAA70] indexPathForRow:v8 inSection:v5];
  v9 = [(AIAudiogramResultsViewController *)self activeIndexPath];

  v10 = v11;
  if (v11 == v9)
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