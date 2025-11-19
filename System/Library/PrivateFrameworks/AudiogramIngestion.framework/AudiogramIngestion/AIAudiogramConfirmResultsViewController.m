@interface AIAudiogramConfirmResultsViewController
- (AIAudiogramConfirmResultsViewController)initWithDelegate:(id)a3 audiogram:(id)a4;
- (AIAudiogramConfirmResultsViewControllerDelegate)delegate;
- (void)_saveToHealth:(id)a3;
- (void)viewDidLoad;
@end

@implementation AIAudiogramConfirmResultsViewController

- (AIAudiogramConfirmResultsViewController)initWithDelegate:(id)a3 audiogram:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = aiLocString(@"AudiogramIngestionResultsTitle");
  v9 = aiLocString(@"AudiogramIngestionConfirmResultsDetailTitle");
  v12.receiver = self;
  v12.super_class = AIAudiogramConfirmResultsViewController;
  v10 = [(AIAudiogramConfirmResultsViewController *)&v12 initWithTitle:v8 detailText:v9 symbolName:0 contentLayout:3];

  if (v10)
  {
    [(AIAudiogramConfirmResultsViewController *)v10 setAudiogram:v7];
    [(AIAudiogramConfirmResultsViewController *)v10 setDelegate:v6];
  }

  return v10;
}

- (void)viewDidLoad
{
  v71[1] = *MEMORY[0x277D85DE8];
  v60.receiver = self;
  v60.super_class = AIAudiogramConfirmResultsViewController;
  [(OBBaseWelcomeController *)&v60 viewDidLoad];
  v2 = [(AIAudiogramConfirmResultsViewController *)self healthStore];
  v3 = v2 == 0;

  if (v3)
  {
    v66 = 0;
    v67 = &v66;
    v68 = 0x2050000000;
    v4 = getHKHealthStoreClass_softClass_1;
    v69 = getHKHealthStoreClass_softClass_1;
    if (!getHKHealthStoreClass_softClass_1)
    {
      v61 = MEMORY[0x277D85DD0];
      v62 = 3221225472;
      v63 = __getHKHealthStoreClass_block_invoke_1;
      v64 = &unk_278CEC150;
      v65 = &v66;
      __getHKHealthStoreClass_block_invoke_1(&v61);
      v4 = v67[3];
    }

    v5 = v4;
    _Block_object_dispose(&v66, 8);
    v6 = objc_alloc_init(v4);
    [(AIAudiogramConfirmResultsViewController *)self setHealthStore:v6];
  }

  v7 = [(AIAudiogramConfirmResultsViewController *)self unitPreferenceController];
  v8 = v7 == 0;

  if (v8)
  {
    v66 = 0;
    v67 = &v66;
    v68 = 0x2050000000;
    v9 = getHKUnitPreferenceControllerClass_softClass;
    v69 = getHKUnitPreferenceControllerClass_softClass;
    if (!getHKUnitPreferenceControllerClass_softClass)
    {
      v61 = MEMORY[0x277D85DD0];
      v62 = 3221225472;
      v63 = __getHKUnitPreferenceControllerClass_block_invoke;
      v64 = &unk_278CEC150;
      v65 = &v66;
      __getHKUnitPreferenceControllerClass_block_invoke(&v61);
      v9 = v67[3];
    }

    v10 = v9;
    _Block_object_dispose(&v66, 8);
    v11 = [v9 alloc];
    v12 = [(AIAudiogramConfirmResultsViewController *)self healthStore];
    v13 = [v11 initWithHealthStore:v12];
    [(AIAudiogramConfirmResultsViewController *)self setUnitPreferenceController:v13];
  }

  v66 = 0;
  v67 = &v66;
  v68 = 0x2050000000;
  v14 = getHKSampleTypeUpdateControllerClass_softClass;
  v69 = getHKSampleTypeUpdateControllerClass_softClass;
  if (!getHKSampleTypeUpdateControllerClass_softClass)
  {
    v61 = MEMORY[0x277D85DD0];
    v62 = 3221225472;
    v63 = __getHKSampleTypeUpdateControllerClass_block_invoke;
    v64 = &unk_278CEC150;
    v65 = &v66;
    __getHKSampleTypeUpdateControllerClass_block_invoke(&v61);
    v14 = v67[3];
  }

  v15 = v14;
  _Block_object_dispose(&v66, 8);
  v16 = [v14 alloc];
  v17 = [(AIAudiogramConfirmResultsViewController *)self healthStore];
  v58 = [v16 initWithHealthStore:v17];

  v66 = 0;
  v67 = &v66;
  v68 = 0x2050000000;
  v18 = getHKAudiogramChartViewControllerClass_softClass;
  v69 = getHKAudiogramChartViewControllerClass_softClass;
  if (!getHKAudiogramChartViewControllerClass_softClass)
  {
    v61 = MEMORY[0x277D85DD0];
    v62 = 3221225472;
    v63 = __getHKAudiogramChartViewControllerClass_block_invoke;
    v64 = &unk_278CEC150;
    v65 = &v66;
    __getHKAudiogramChartViewControllerClass_block_invoke(&v61);
    v18 = v67[3];
  }

  v19 = v18;
  _Block_object_dispose(&v66, 8);
  v20 = [v18 alloc];
  v21 = [(AIAudiogramConfirmResultsViewController *)self unitPreferenceController];
  v22 = [v20 initWithUnitController:v21 sampleTypeUpdateController:v58 minimumAudiogramHeight:400.0];

  v23 = [v22 view];
  [v23 setTranslatesAutoresizingMaskIntoConstraints:0];

  v24 = [(AIAudiogramConfirmResultsViewController *)self audiogram];
  v71[0] = v24;
  v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v71 count:1];
  [v22 setAudiograms:v25];

  [v22 setIsAccessibilityElement:1];
  v26 = [(AIAudiogramConfirmResultsViewController *)self contentView];
  v27 = [v22 view];
  [v26 addSubview:v27];

  [(AIAudiogramConfirmResultsViewController *)self addChildViewController:v22];
  v42 = MEMORY[0x277CCAAD0];
  v57 = [v22 view];
  v55 = [v57 topAnchor];
  v56 = [(AIAudiogramConfirmResultsViewController *)self contentView];
  v54 = [v56 topAnchor];
  v53 = [v55 constraintEqualToAnchor:v54];
  v70[0] = v53;
  v52 = [v22 view];
  v50 = [v52 leadingAnchor];
  v51 = [(AIAudiogramConfirmResultsViewController *)self contentView];
  v49 = [v51 leadingAnchor];
  v48 = [v50 constraintEqualToAnchor:v49 constant:16.0];
  v70[1] = v48;
  v47 = [v22 view];
  v45 = [v47 trailingAnchor];
  v46 = [(AIAudiogramConfirmResultsViewController *)self contentView];
  v44 = [v46 trailingAnchor];
  v43 = [v45 constraintEqualToAnchor:v44 constant:-16.0];
  v70[2] = v43;
  v28 = [v22 view];
  v29 = [v28 bottomAnchor];
  v30 = [(AIAudiogramConfirmResultsViewController *)self contentView];
  v31 = [v30 bottomAnchor];
  v32 = [v29 constraintEqualToAnchor:v31 constant:-16.0];
  v70[3] = v32;
  v33 = [v22 view];
  v34 = [v33 heightAnchor];
  v35 = [v34 constraintEqualToConstant:400.0];
  v70[4] = v35;
  v36 = [MEMORY[0x277CBEA60] arrayWithObjects:v70 count:5];
  [v42 activateConstraints:v36];

  v37 = [MEMORY[0x277D37618] boldButton];
  v38 = aiLocString(@"AudiogramIngestionConfirmResultsSaveButton");
  [v37 setTitle:v38 forState:0];

  [v37 addTarget:self action:sel__saveToHealth_ forControlEvents:64];
  v39 = [(AIAudiogramConfirmResultsViewController *)self buttonTray];
  [v39 addButton:v37];

  v40 = [(AIAudiogramConfirmResultsViewController *)self buttonTray];
  v41 = [MEMORY[0x277D75348] systemBackgroundColor];
  [v40 setBackgroundColor:v41];
}

- (void)_saveToHealth:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [(AIAudiogramConfirmResultsViewController *)self healthStore];
  v6 = [(AIAudiogramConfirmResultsViewController *)self audiogram];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __57__AIAudiogramConfirmResultsViewController__saveToHealth___block_invoke;
  v7[3] = &unk_278CECAF8;
  v7[4] = self;
  objc_copyWeak(&v8, &location);
  [v5 saveObject:v6 withCompletion:v7];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __57__AIAudiogramConfirmResultsViewController__saveToHealth___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v6 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __57__AIAudiogramConfirmResultsViewController__saveToHealth___block_invoke_308;
    block[3] = &unk_278CEC280;
    block[4] = *(a1 + 32);
    dispatch_async(v6, block);

    objc_copyWeak(&v8, (a1 + 40));
    AXPerformBlockOnMainThread();
    objc_destroyWeak(&v8);
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

void __57__AIAudiogramConfirmResultsViewController__saveToHealth___block_invoke_308(uint64_t a1)
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

void __57__AIAudiogramConfirmResultsViewController__saveToHealth___block_invoke_327(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];

  if (v2)
  {
    v3 = [*(a1 + 32) delegate];
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v5 = [WeakRetained audiogram];
    [v3 audiogramIngestionDidSaveAudiogram:v5];
  }

  v6 = objc_loadWeakRetained((a1 + 40));
  [v6 dismissViewControllerAnimated:1 completion:0];
}

- (AIAudiogramConfirmResultsViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end