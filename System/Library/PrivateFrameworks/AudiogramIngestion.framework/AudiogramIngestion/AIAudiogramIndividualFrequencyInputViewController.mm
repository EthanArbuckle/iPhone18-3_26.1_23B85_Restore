@interface AIAudiogramIndividualFrequencyInputViewController
- (AIAudiogramConfirmResultsViewControllerDelegate)audiogramConfirmationDelegate;
- (AIAudiogramIndividualFrequencyInputViewController)initWithDelegate:(id)a3 audiogramConfirmationDelegate:(id)a4 audiogram:(id)a5 currentFrequency:(id)a6 isModalViewController:(BOOL)a7 selectedSymbols:(id)a8;
- (AIAudiogramManualIngestionDelegate)delegate;
- (BOOL)_scrollToIndexPathIfNecessary:(id)a3 animated:(BOOL)a4;
- (id)_earCellForEar:(int64_t)a3;
- (id)earCellForTableView:(id)a3 atIndexPath:(id)a4 withEar:(int64_t)a5;
- (id)newSensitivityPointForHearingLevel:(id)a3 ear:(int64_t)a4 updateIndex:(int64_t)a5 masked:(BOOL)a6;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int64_t)indexOfFrequencyInSensitivityPoints:(id)a3;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (void)_cancelTapped:(id)a3;
- (void)_continueToNextFrequencyInput:(id)a3;
- (void)_doneButtonTapped:(id)a3;
- (void)_reloadAudiogramWithSensitivityPoints:(id)a3;
- (void)_updateTableViewHeight;
- (void)addSensitivityPoint:(id)a3;
- (void)adjustHearingLevel:(int64_t)a3 forEar:(int64_t)a4;
- (void)contentCategoryDidChange:(id)a3;
- (void)earCellDidUpdateHearingLevel:(id)a3 forEar:(int64_t)a4 masked:(BOOL)a5;
- (void)keyboardDoneTapped;
- (void)keyboardNegationTapped;
- (void)reloadAudiogram;
- (void)symbolSelectionForFrequencyHasChanged:(int64_t)a3 masked:(BOOL)a4 noneSelected:(BOOL)a5;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)updateActiveIndexPathForEar:(int64_t)a3 beginEditing:(BOOL)a4;
- (void)updateSensitivityPoint:(id)a3 atIndex:(int64_t)a4;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation AIAudiogramIndividualFrequencyInputViewController

- (AIAudiogramIndividualFrequencyInputViewController)initWithDelegate:(id)a3 audiogramConfirmationDelegate:(id)a4 audiogram:(id)a5 currentFrequency:(id)a6 isModalViewController:(BOOL)a7 selectedSymbols:(id)a8
{
  v9 = a7;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a8;
  v64.receiver = self;
  v64.super_class = AIAudiogramIndividualFrequencyInputViewController;
  v19 = [(AIAudiogramIndividualFrequencyInputViewController *)&v64 initWithTitle:&stru_28535F0B0 detailText:&stru_28535F0B0 symbolName:0 contentLayout:3];
  v20 = v19;
  if (v19)
  {
    [(AIAudiogramIndividualFrequencyInputViewController *)v19 setDelegate:v14];
    [(AIAudiogramIndividualFrequencyInputViewController *)v20 setAudiogramConfirmationDelegate:v15];
    [(AIAudiogramIndividualFrequencyInputViewController *)v20 setAudiogram:v16];
    [(AIAudiogramIndividualFrequencyInputViewController *)v20 setUserAddedFrequencyAfterOptical:0];
    v70 = 0;
    v71 = &v70;
    v72 = 0x2050000000;
    v21 = getHKHealthStoreClass_softClass;
    v73 = getHKHealthStoreClass_softClass;
    if (!getHKHealthStoreClass_softClass)
    {
      v65 = MEMORY[0x277D85DD0];
      v66 = 3221225472;
      v67 = __getHKHealthStoreClass_block_invoke;
      v68 = &unk_278CEC150;
      v69 = &v70;
      __getHKHealthStoreClass_block_invoke(&v65);
      v21 = v71[3];
    }

    v22 = v21;
    _Block_object_dispose(&v70, 8);
    v23 = objc_alloc_init(v21);
    v70 = 0;
    v71 = &v70;
    v72 = 0x2050000000;
    v24 = getHKSingleAudiogramChartViewControllerClass_softClass;
    v73 = getHKSingleAudiogramChartViewControllerClass_softClass;
    if (!getHKSingleAudiogramChartViewControllerClass_softClass)
    {
      v65 = MEMORY[0x277D85DD0];
      v66 = 3221225472;
      v67 = __getHKSingleAudiogramChartViewControllerClass_block_invoke;
      v68 = &unk_278CEC150;
      v69 = &v70;
      __getHKSingleAudiogramChartViewControllerClass_block_invoke(&v65);
      v24 = v71[3];
    }

    v63 = v14;
    v25 = v24;
    _Block_object_dispose(&v70, 8);
    v26 = [v24 alloc];
    v27 = [(AIAudiogramIndividualFrequencyInputViewController *)v20 audiogram];
    v28 = [v26 initWithHealthStore:v23 staticAudiogram:v27 selectedFrequency:v17];
    [(AIAudiogramIndividualFrequencyInputViewController *)v20 setChartViewController:v28];

    v29 = [(AIAudiogramIndividualFrequencyInputViewController *)v20 chartViewController];
    v30 = [v29 view];
    v31 = [MEMORY[0x277D75348] systemBackgroundColor];
    [v30 setBackgroundColor:v31];

    v32 = objc_alloc(MEMORY[0x277D756B8]);
    v33 = [v32 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    [(AIAudiogramIndividualFrequencyInputViewController *)v20 setFrequencyTitleLabel:v33];

    v34 = [(AIAudiogramIndividualFrequencyInputViewController *)v20 frequencyTitleLabel];
    [v34 setTranslatesAutoresizingMaskIntoConstraints:0];

    v35 = [(AIAudiogramIndividualFrequencyInputViewController *)v20 frequencyTitleLabel];
    v36 = 1;
    [v35 setTextAlignment:1];

    v37 = [MEMORY[0x277D74300] _preferredFontForTextStyle:*MEMORY[0x277D76A08] weight:*MEMORY[0x277D743F8]];
    v38 = [(AIAudiogramIndividualFrequencyInputViewController *)v20 frequencyTitleLabel];
    [v38 setFont:v37];

    v39 = [(AIAudiogramIndividualFrequencyInputViewController *)v20 frequencyTitleLabel];
    [v39 setAdjustsFontForContentSizeCategory:1];

    v40 = [(AIAudiogramIndividualFrequencyInputViewController *)v20 frequencyTitleLabel];
    [v40 setNumberOfLines:0];

    v62 = v17;
    [(AIAudiogramIndividualFrequencyInputViewController *)v20 setCurrentFrequency:v17];
    v41 = [v16 sensitivityPoints];
    v42 = [v41 mutableCopy];
    [(AIAudiogramIndividualFrequencyInputViewController *)v20 setSensitivityPoints:v42];

    [(AIAudiogramIndividualFrequencyInputViewController *)v20 setSymbols:v18];
    v43 = [(AIAudiogramIndividualFrequencyInputViewController *)v20 symbols];
    -[AIAudiogramIndividualFrequencyInputViewController setHasLeftSymbols:](v20, "setHasLeftSymbols:", [v43 containsObject:&unk_2853655F0]);

    v44 = [(AIAudiogramIndividualFrequencyInputViewController *)v20 symbols];
    -[AIAudiogramIndividualFrequencyInputViewController setHasRightSymbols:](v20, "setHasRightSymbols:", [v44 containsObject:&unk_285365608]);

    if (![(AIAudiogramIndividualFrequencyInputViewController *)v20 hasLeftSymbols])
    {
      v36 = [v18 containsObject:&unk_285365620];
    }

    v45 = v16;
    [(AIAudiogramIndividualFrequencyInputViewController *)v20 setHasLeftSymbols:v36];
    -[AIAudiogramIndividualFrequencyInputViewController setHasLeftMaskedSymbol:](v20, "setHasLeftMaskedSymbol:", [v18 containsObject:&unk_285365620]);
    v46 = v15;
    if ([(AIAudiogramIndividualFrequencyInputViewController *)v20 hasRightSymbols])
    {
      v47 = 1;
    }

    else
    {
      v47 = [v18 containsObject:&unk_285365638];
    }

    v48 = v23;
    [(AIAudiogramIndividualFrequencyInputViewController *)v20 setHasRightSymbols:v47];
    -[AIAudiogramIndividualFrequencyInputViewController setHasRightMaskedSymbol:](v20, "setHasRightMaskedSymbol:", [v18 containsObject:&unk_285365638]);
    v49 = [MEMORY[0x277D37618] boldButton];
    [(AIAudiogramIndividualFrequencyInputViewController *)v20 setFooterButton:v49];

    if (v9)
    {
      v50 = @"AudiogramIngestionButtonDone";
    }

    else
    {
      v50 = @"AudiogramIngestionButtonContinue";
    }

    v51 = aiLocString(v50);
    v52 = [(AIAudiogramIndividualFrequencyInputViewController *)v20 footerButton];
    [v52 setTitle:v51 forState:0];

    if (v9)
    {
      v53 = sel__doneButtonTapped_;
    }

    else
    {
      v53 = sel__continueToNextFrequencyInput_;
    }

    v54 = [(AIAudiogramIndividualFrequencyInputViewController *)v20 footerButton];
    [v54 addTarget:v20 action:v53 forControlEvents:64];

    v55 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:v20 action:sel__cancelTapped_];
    v56 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:v20 action:sel__doneButtonTapped_];
    if ([(AIAudiogramIndividualFrequencyInputViewController *)v20 userAddedFrequencyAfterOptical])
    {
      v57 = [(OBBaseWelcomeController *)v20 navigationItem];
      [v57 setLeftBarButtonItem:v55];
      v58 = v56;
    }

    else
    {
      v57 = [(AIAudiogramIndividualFrequencyInputViewController *)v20 buttonTray];
      v59 = [(AIAudiogramIndividualFrequencyInputViewController *)v20 footerButton];
      [v57 addButton:v59];

      v58 = v55;
    }

    v60 = [(OBBaseWelcomeController *)v20 navigationItem];
    [v60 setRightBarButtonItem:v58];

    v15 = v46;
    v16 = v45;
    v17 = v62;
    v14 = v63;
  }

  return v20;
}

- (void)viewDidLoad
{
  v105[1] = *MEMORY[0x277D85DE8];
  v103.receiver = self;
  v103.super_class = AIAudiogramIndividualFrequencyInputViewController;
  [(OBBaseWelcomeController *)&v103 viewDidLoad];
  v3 = [AIAudiogramKeyboardToolbarForSensitivityPoint alloc];
  v4 = [(AIAudiogramIndividualFrequencyInputViewController *)self view];
  [v4 frame];
  v5 = [(AIAudiogramKeyboardToolbarForSensitivityPoint *)v3 initWithFrame:self target:0.0, 0.0];
  [(AIAudiogramIndividualFrequencyInputViewController *)self setKeyboardToolbar:v5];

  [(AIAudiogramIndividualFrequencyInputViewController *)self setShouldAdjustScrollViewInsetForKeyboard:1];
  v6 = [MEMORY[0x277CCAB98] defaultCenter];
  [v6 addObserver:self selector:sel_contentCategoryDidChange_ name:*MEMORY[0x277D76810] object:0];

  v7 = [(AIAudiogramIndividualFrequencyInputViewController *)self chartViewController];
  v8 = [v7 view];
  [v8 setUserInteractionEnabled:0];

  v9 = [(AIAudiogramIndividualFrequencyInputViewController *)self chartViewController];
  v10 = [v9 view];
  [v10 setTranslatesAutoresizingMaskIntoConstraints:0];

  v11 = [(AIAudiogramIndividualFrequencyInputViewController *)self contentView];
  v12 = [(AIAudiogramIndividualFrequencyInputViewController *)self chartViewController];
  v13 = [v12 view];
  [v11 addSubview:v13];

  v14 = [(AIAudiogramIndividualFrequencyInputViewController *)self chartViewController];
  [(AIAudiogramIndividualFrequencyInputViewController *)self addChildViewController:v14];

  v15 = [(AIAudiogramIndividualFrequencyInputViewController *)self chartViewController];
  [v15 didMoveToParentViewController:self];

  v16 = objc_alloc(MEMORY[0x277D75B40]);
  v17 = [v16 initWithFrame:2 style:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [(AIAudiogramIndividualFrequencyInputViewController *)self setTableView:v17];

  v18 = [(AIAudiogramIndividualFrequencyInputViewController *)self tableView];
  [v18 setDataSource:self];

  v19 = [(AIAudiogramIndividualFrequencyInputViewController *)self tableView];
  [v19 setDelegate:self];

  v20 = [(AIAudiogramIndividualFrequencyInputViewController *)self tableView];
  [v20 setScrollEnabled:0];

  v21 = [(AIAudiogramIndividualFrequencyInputViewController *)self tableView];
  [v21 setTranslatesAutoresizingMaskIntoConstraints:0];

  v22 = [(AIAudiogramIndividualFrequencyInputViewController *)self tableView];
  [v22 setSectionHeaderTopPadding:8.0];

  v23 = [(AIAudiogramIndividualFrequencyInputViewController *)self tableView];
  [v23 setAllowsSelection:0];

  v24 = [(AIAudiogramIndividualFrequencyInputViewController *)self tableView];
  v25 = [MEMORY[0x277D75348] systemGroupedBackgroundColor];
  [v24 setBackgroundColor:v25];

  v26 = [(AIAudiogramIndividualFrequencyInputViewController *)self contentView];
  v27 = [(AIAudiogramIndividualFrequencyInputViewController *)self tableView];
  [v26 addSubview:v27];

  v28 = [(AIAudiogramIndividualFrequencyInputViewController *)self view];
  v29 = [MEMORY[0x277D75348] systemGroupedBackgroundColor];
  [v28 setBackgroundColor:v29];

  v30 = objc_alloc(MEMORY[0x277D75A68]);
  v31 = [(AIAudiogramIndividualFrequencyInputViewController *)self frequencyTitleLabel];
  v105[0] = v31;
  v32 = [MEMORY[0x277CBEA60] arrayWithObjects:v105 count:1];
  v33 = [v30 initWithArrangedSubviews:v32];

  v34 = [MEMORY[0x277D75348] systemGroupedBackgroundColor];
  [v33 setBackgroundColor:v34];

  [v33 setLayoutMarginsRelativeArrangement:1];
  [v33 setLayoutMargins:{20.0, 16.0, 4.0, 16.0}];
  [v33 setTranslatesAutoresizingMaskIntoConstraints:0];
  v35 = [(AIAudiogramIndividualFrequencyInputViewController *)self contentView];
  [v35 addSubview:v33];

  v76 = MEMORY[0x277CCAAD0];
  v101 = [(AIAudiogramIndividualFrequencyInputViewController *)self chartViewController];
  v100 = [v101 view];
  v98 = [v100 topAnchor];
  v99 = [(AIAudiogramIndividualFrequencyInputViewController *)self contentView];
  v97 = [v99 topAnchor];
  v96 = [v98 constraintEqualToAnchor:v97 constant:-50.0];
  v104[0] = v96;
  v95 = [(AIAudiogramIndividualFrequencyInputViewController *)self chartViewController];
  v94 = [v95 view];
  v92 = [v94 leadingAnchor];
  v93 = [(AIAudiogramIndividualFrequencyInputViewController *)self view];
  v91 = [v93 leadingAnchor];
  v90 = [v92 constraintEqualToAnchor:v91];
  v104[1] = v90;
  v89 = [(AIAudiogramIndividualFrequencyInputViewController *)self chartViewController];
  v87 = [v89 view];
  v85 = [v87 trailingAnchor];
  v86 = [(AIAudiogramIndividualFrequencyInputViewController *)self view];
  v84 = [v86 trailingAnchor];
  v83 = [v85 constraintEqualToAnchor:v84];
  v104[2] = v83;
  v82 = [(AIAudiogramIndividualFrequencyInputViewController *)self chartViewController];
  v81 = [v82 view];
  v79 = [v81 heightAnchor];
  v80 = [(AIAudiogramIndividualFrequencyInputViewController *)self view];
  v78 = [v80 heightAnchor];
  v77 = [v79 constraintEqualToAnchor:v78 multiplier:0.4];
  v104[3] = v77;
  v74 = [v33 topAnchor];
  v75 = [(AIAudiogramIndividualFrequencyInputViewController *)self chartViewController];
  v73 = [v75 view];
  v72 = [v73 bottomAnchor];
  v71 = [v74 constraintEqualToAnchor:v72];
  v104[4] = v71;
  v69 = [v33 leadingAnchor];
  v70 = [(AIAudiogramIndividualFrequencyInputViewController *)self view];
  v68 = [v70 leadingAnchor];
  v67 = [v69 constraintEqualToAnchor:v68];
  v104[5] = v67;
  v88 = v33;
  v65 = [v33 trailingAnchor];
  v66 = [(AIAudiogramIndividualFrequencyInputViewController *)self view];
  v64 = [v66 trailingAnchor];
  v63 = [v65 constraintEqualToAnchor:v64];
  v104[6] = v63;
  v62 = [(AIAudiogramIndividualFrequencyInputViewController *)self tableView];
  v61 = [v62 topAnchor];
  v60 = [v33 bottomAnchor];
  v59 = [v61 constraintEqualToAnchor:v60];
  v104[7] = v59;
  v58 = [(AIAudiogramIndividualFrequencyInputViewController *)self tableView];
  v56 = [v58 leadingAnchor];
  v57 = [(AIAudiogramIndividualFrequencyInputViewController *)self view];
  v55 = [v57 leadingAnchor];
  v54 = [v56 constraintEqualToAnchor:v55];
  v104[8] = v54;
  v53 = [(AIAudiogramIndividualFrequencyInputViewController *)self tableView];
  v52 = [v53 trailingAnchor];
  v36 = [(AIAudiogramIndividualFrequencyInputViewController *)self view];
  v37 = [v36 trailingAnchor];
  v38 = [v52 constraintEqualToAnchor:v37];
  v104[9] = v38;
  v39 = [(AIAudiogramIndividualFrequencyInputViewController *)self tableView];
  v40 = [v39 bottomAnchor];
  v41 = [(AIAudiogramIndividualFrequencyInputViewController *)self contentView];
  v42 = [v41 bottomAnchor];
  v43 = [v40 constraintEqualToAnchor:v42];
  v104[10] = v43;
  v44 = [MEMORY[0x277CBEA60] arrayWithObjects:v104 count:11];
  [v76 activateConstraints:v44];

  v45 = [(AIAudiogramIndividualFrequencyInputViewController *)self tableView];
  v46 = objc_opt_class();
  v47 = +[AIAudiogramIndividualFrequencyEarCell reuseIdentifier];
  [v45 registerClass:v46 forCellReuseIdentifier:v47];

  v48 = [(AIAudiogramIndividualFrequencyInputViewController *)self scrollView];
  [v48 _addScrollViewScrollObserver:self];

  v49 = [MEMORY[0x277CCAB98] defaultCenter];
  v50 = *MEMORY[0x277D76BA8];
  v102[0] = MEMORY[0x277D85DD0];
  v102[1] = 3221225472;
  v102[2] = __64__AIAudiogramIndividualFrequencyInputViewController_viewDidLoad__block_invoke;
  v102[3] = &unk_278CEC230;
  v102[4] = self;
  v51 = [v49 addObserverForName:v50 object:0 queue:0 usingBlock:v102];
}

void __64__AIAudiogramIndividualFrequencyInputViewController_viewDidLoad__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) activeIndexPath];

  if (v2)
  {
    v3 = *(a1 + 32);
    v4 = [v3 activeIndexPath];
    [v3 _scrollToIndexPathIfNecessary:v4 animated:1];
  }
}

- (void)viewWillAppear:(BOOL)a3
{
  v20.receiver = self;
  v20.super_class = AIAudiogramIndividualFrequencyInputViewController;
  [(AIAudiogramIndividualFrequencyInputViewController *)&v20 viewWillAppear:a3];
  v4 = [(AIAudiogramIndividualFrequencyInputViewController *)self delegate];
  v5 = [v4 getCurrentAudiogram];
  [(AIAudiogramIndividualFrequencyInputViewController *)self setAudiogram:v5];

  v6 = [(AIAudiogramIndividualFrequencyInputViewController *)self audiogram];
  v7 = [v6 sensitivityPoints];
  v8 = [v7 mutableCopy];
  [(AIAudiogramIndividualFrequencyInputViewController *)self setSensitivityPoints:v8];

  v9 = [(AIAudiogramIndividualFrequencyInputViewController *)self sensitivityPoints];
  [(AIAudiogramIndividualFrequencyInputViewController *)self _reloadAudiogramWithSensitivityPoints:v9];

  v10 = [(AIAudiogramIndividualFrequencyInputViewController *)self tableView];
  [v10 reloadData];

  if (![(AIAudiogramIndividualFrequencyInputViewController *)self didAddBackgroundLayer])
  {
    v11 = [MEMORY[0x277CD9ED0] layer];
    v12 = [MEMORY[0x277D75348] systemBackgroundColor];
    [v11 setBackgroundColor:{objc_msgSend(v12, "CGColor")}];

    v13 = [(AIAudiogramIndividualFrequencyInputViewController *)self view];
    [v13 bounds];
    v15 = v14;
    v16 = [(AIAudiogramIndividualFrequencyInputViewController *)self view];
    [v16 bounds];
    [v11 setFrame:{0.0, 0.0, v15, v17 * 0.4}];

    v18 = [(AIAudiogramIndividualFrequencyInputViewController *)self view];
    v19 = [v18 layer];
    [v19 insertSublayer:v11 atIndex:0];

    [(AIAudiogramIndividualFrequencyInputViewController *)self setDidAddBackgroundLayer:1];
  }
}

- (void)viewDidLayoutSubviews
{
  [(AIAudiogramIndividualFrequencyInputViewController *)self _updateTableViewHeight];
  v3.receiver = self;
  v3.super_class = AIAudiogramIndividualFrequencyInputViewController;
  [(OBBaseWelcomeController *)&v3 viewDidLayoutSubviews];
}

- (void)_updateTableViewHeight
{
  [(UITableView *)self->_tableView contentSize];
  v4 = v3;
  v5 = [(AIAudiogramIndividualFrequencyInputViewController *)self tableViewHeightConstraint];
  if (v5)
  {
  }

  else
  {
    v9 = [(AIAudiogramIndividualFrequencyInputViewController *)self tableView];

    if (v9)
    {
      v10 = [(AIAudiogramIndividualFrequencyInputViewController *)self tableView];
      v11 = [v10 heightAnchor];
      v12 = [v11 constraintEqualToConstant:v4];
      [(AIAudiogramIndividualFrequencyInputViewController *)self setTableViewHeightConstraint:v12];

      v13 = [(AIAudiogramIndividualFrequencyInputViewController *)self tableViewHeightConstraint];
      [v13 setActive:1];
      goto LABEL_7;
    }
  }

  v6 = [(AIAudiogramIndividualFrequencyInputViewController *)self tableViewHeightConstraint];
  [v6 constant];
  v8 = v7;

  if (v4 == v8)
  {
    return;
  }

  v13 = [(AIAudiogramIndividualFrequencyInputViewController *)self tableViewHeightConstraint];
  [v13 setConstant:v4];
LABEL_7:
}

- (void)_cancelTapped:(id)a3
{
  v3 = [(AIAudiogramIndividualFrequencyInputViewController *)self delegate];
  [v3 cancelButtonTapped];
}

- (void)_doneButtonTapped:(id)a3
{
  v5 = [(AIAudiogramIndividualFrequencyInputViewController *)self delegate];
  v4 = [(AIAudiogramIndividualFrequencyInputViewController *)self audiogram];
  [v5 dismissCurrentFrequencyInputViewControllerWithAudiogram:v4];
}

- (void)_continueToNextFrequencyInput:(id)a3
{
  v6 = [(AIAudiogramIndividualFrequencyInputViewController *)self delegate];
  v4 = [(AIAudiogramIndividualFrequencyInputViewController *)self audiogram];
  v5 = [(AIAudiogramIndividualFrequencyInputViewController *)self currentFrequency];
  [v6 showNextFrequencyInputViewControllerWithAudiogram:v4 previousFrequency:v5];
}

- (BOOL)_scrollToIndexPathIfNecessary:(id)a3 animated:(BOOL)a4
{
  v49 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [(AIAudiogramIndividualFrequencyInputViewController *)self tableView];
  [v6 rectForRowAtIndexPath:v5];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v15 = [(AIAudiogramIndividualFrequencyInputViewController *)self view];
  v16 = [(AIAudiogramIndividualFrequencyInputViewController *)self tableView];
  v42 = v10;
  v43 = v8;
  [v15 convertRect:v16 fromView:{v8, v10, v12, v14}];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;

  v25 = [(AIAudiogramIndividualFrequencyInputViewController *)self scrollView];
  [v25 frame];
  v27 = v20 - v26;

  v28 = [(AIAudiogramIndividualFrequencyInputViewController *)self scrollView];
  [v28 frame];
  v30 = v29;
  v31 = [(AIAudiogramIndividualFrequencyInputViewController *)self scrollView];
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
      v39 = [(AIAudiogramIndividualFrequencyInputViewController *)self scrollView];
      v40 = [(AIAudiogramIndividualFrequencyInputViewController *)self tableView];
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

void __92__AIAudiogramIndividualFrequencyInputViewController__scrollToIndexPathIfNecessary_animated___block_invoke(uint64_t a1)
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

- (void)contentCategoryDidChange:(id)a3
{
  v3 = [(AIAudiogramIndividualFrequencyInputViewController *)self tableView];
  [v3 reloadData];
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v8 = a4;
  [a3 deselectRowAtIndexPath:v8 animated:1];
  v6 = [(AIAudiogramIndividualFrequencyInputViewController *)self activeIndexPath];

  if ([v8 section] <= 1)
  {
    if (v6 == v8)
    {
      v7 = 0;
    }

    else
    {
      v7 = v8;
    }

    [(AIAudiogramIndividualFrequencyInputViewController *)self setActiveIndexPath:v7];
    [(AIAudiogramIndividualFrequencyInputViewController *)self _scrollToIndexPathIfNecessary:v8 animated:1];
  }
}

- (void)symbolSelectionForFrequencyHasChanged:(int64_t)a3 masked:(BOOL)a4 noneSelected:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v9 = [(AIAudiogramIndividualFrequencyInputViewController *)self _earCellForEar:?];
  v15 = v9;
  if (v5)
  {
    v10 = [(AIAudiogramIndividualFrequencyInputViewController *)self currentFrequency];
    v11 = [(AIAudiogramIndividualFrequencyInputViewController *)self indexOfFrequencyInSensitivityPoints:v10];

    v12 = [(AIAudiogramIndividualFrequencyInputViewController *)self newSensitivityPointForHearingLevel:0 ear:a3 updateIndex:v11 masked:v6];
    if (v12)
    {
      if (v11 == -1)
      {
        [(AIAudiogramIndividualFrequencyInputViewController *)self addSensitivityPoint:v12];
      }

      else
      {
        [(AIAudiogramIndividualFrequencyInputViewController *)self updateSensitivityPoint:v12 atIndex:v11];
      }
    }

    else if (v11 != -1)
    {
      v13 = [(AIAudiogramIndividualFrequencyInputViewController *)self sensitivityPoints];
      [v13 removeObjectAtIndex:v11];
    }

    [(AIAudiogramIndividualFrequencyInputViewController *)self reloadAudiogram];
  }

  else
  {
    v12 = [v9 hearingLevel];
    -[AIAudiogramIndividualFrequencyInputViewController earCellDidUpdateHearingLevel:forEar:masked:](self, "earCellDidUpdateHearingLevel:forEar:masked:", v12, [v15 ear], v6);
  }

  v14 = [(AIAudiogramIndividualFrequencyInputViewController *)self symbols];
  [v15 updateSymbols:v14 ear:a3 masked:v6];
}

- (void)adjustHearingLevel:(int64_t)a3 forEar:(int64_t)a4
{
  v12 = [(AIAudiogramIndividualFrequencyInputViewController *)self _earCellForEar:a4];
  v6 = MEMORY[0x277CCABB0];
  v7 = [v12 hearingLevel];
  [v7 doubleValue];
  v9 = [v6 numberWithDouble:v8 + a3];
  v10 = validateHearingLevel(v9);
  [v12 setHearingLevel:v10];

  v11 = [v12 hearingLevel];
  -[AIAudiogramIndividualFrequencyInputViewController earCellDidUpdateHearingLevel:forEar:masked:](self, "earCellDidUpdateHearingLevel:forEar:masked:", v11, [v12 ear], objc_msgSend(v12, "masked"));
}

- (void)_reloadAudiogramWithSensitivityPoints:(id)a3
{
  v4 = a3;
  v5 = [(AIAudiogramIndividualFrequencyInputViewController *)self delegate];
  v6 = [v5 getPickedDate];

  if ([v4 count])
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x2050000000;
    v7 = getHKAudiogramSampleClass_softClass;
    v15 = getHKAudiogramSampleClass_softClass;
    if (!getHKAudiogramSampleClass_softClass)
    {
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __getHKAudiogramSampleClass_block_invoke;
      v11[3] = &unk_278CEC150;
      v11[4] = &v12;
      __getHKAudiogramSampleClass_block_invoke(v11);
      v7 = v13[3];
    }

    v8 = v7;
    _Block_object_dispose(&v12, 8);
    v9 = metadataForHKAudiogramSample();
    v10 = [v7 audiogramSampleWithSensitivityPoints:v4 startDate:v6 endDate:v6 metadata:v9];
    [(AIAudiogramIndividualFrequencyInputViewController *)self setAudiogram:v10];
  }

  else
  {
    [(AIAudiogramIndividualFrequencyInputViewController *)self setAudiogram:0];
  }

  AXPerformBlockOnMainThread();
}

void __91__AIAudiogramIndividualFrequencyInputViewController__reloadAudiogramWithSensitivityPoints___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) chartViewController];
  v3 = [*(a1 + 32) audiogram];
  [v2 updateStaticAudiogram:v3];

  v5 = [*(a1 + 32) audiogram];
  v4 = [*(a1 + 32) footerButton];
  [v4 setEnabled:v5 != 0];
}

- (void)keyboardDoneTapped
{
  [(AIAudiogramIndividualFrequencyInputViewController *)self setActiveIndexPath:0];
  v3 = [(AIAudiogramIndividualFrequencyInputViewController *)self tableView];
  [v3 endEditing:1];
}

- (void)keyboardNegationTapped
{
  v3 = [(AIAudiogramIndividualFrequencyInputViewController *)self activeIndexPath];

  if (v3)
  {
    v4 = [(AIAudiogramIndividualFrequencyInputViewController *)self activeIndexPath];
    if ([v4 section])
    {
      v5 = 2;
    }

    else
    {
      v5 = 1;
    }

    v12 = [(AIAudiogramIndividualFrequencyInputViewController *)self _earCellForEar:v5];

    v6 = [v12 hearingLevel];

    if (v6)
    {
      v7 = MEMORY[0x277CCABB0];
      v8 = [v12 hearingLevel];
      [v8 doubleValue];
      v10 = [v7 numberWithDouble:-v9];
      [v12 setHearingLevel:v10];

      v11 = [v12 hearingLevel];
      -[AIAudiogramIndividualFrequencyInputViewController earCellDidUpdateHearingLevel:forEar:masked:](self, "earCellDidUpdateHearingLevel:forEar:masked:", v11, [v12 ear], objc_msgSend(v12, "masked"));
    }
  }
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
  v13 = [(AIAudiogramIndividualFrequencyInputViewController *)self numberOfSectionsInTableView:v6];
  if ([(AIAudiogramIndividualFrequencyInputViewController *)self hasRightSymbols])
  {
    v14 = [(AIAudiogramIndividualFrequencyInputViewController *)self numberOfSectionsInTableView:v6]== 1;
  }

  else
  {
    v14 = 0;
  }

  v15 = [v11 section];
  if (v15 == 1)
  {
    if ([(AIAudiogramIndividualFrequencyInputViewController *)self hasRightSymbols]&& v13 >= 1)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if (!v15)
    {
      if ([(AIAudiogramIndividualFrequencyInputViewController *)self hasLeftSymbols]&& v13 >= 1)
      {
        v16 = self;
        v17 = v6;
        v18 = v11;
        v19 = 1;
LABEL_17:
        v21 = [(AIAudiogramIndividualFrequencyInputViewController *)v16 earCellForTableView:v17 atIndexPath:v18 withEar:v19];

        v12 = v21;
        goto LABEL_18;
      }

      if (!v14)
      {
        goto LABEL_18;
      }

LABEL_16:
      v16 = self;
      v17 = v6;
      v18 = v11;
      v19 = 2;
      goto LABEL_17;
    }

    v20 = AXLogAudiogram();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [AIAudiogramIndividualFrequencyInputViewController tableView:v11 cellForRowAtIndexPath:v20];
    }
  }

LABEL_18:

  return v12;
}

- (id)earCellForTableView:(id)a3 atIndexPath:(id)a4 withEar:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__0;
  v30 = __Block_byref_object_dispose__0;
  v31 = 0;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  v10 = [(AIAudiogramIndividualFrequencyInputViewController *)self audiogram];

  if (v10)
  {
    v11 = [(AIAudiogramIndividualFrequencyInputViewController *)self currentFrequency];
    [v11 doubleValue];
    v13 = v12;

    v14 = [(AIAudiogramIndividualFrequencyInputViewController *)self audiogram];
    v15 = [v14 sensitivityPoints];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __93__AIAudiogramIndividualFrequencyInputViewController_earCellForTableView_atIndexPath_withEar___block_invoke;
    v21[3] = &unk_278CEC2A8;
    v21[6] = v13;
    v21[7] = a5;
    v21[4] = &v26;
    v21[5] = &v22;
    [v15 enumerateObjectsUsingBlock:v21];
  }

  v16 = +[AIAudiogramIndividualFrequencyEarCell reuseIdentifier];
  v17 = [v8 dequeueReusableCellWithIdentifier:v16];

  [v17 setHearingLevel:v27[5]];
  [v17 setEar:a5];
  [v17 setMasked:*(v23 + 24)];
  v18 = [(AIAudiogramIndividualFrequencyInputViewController *)self symbols];
  [v17 updateSymbols:v18 ear:a5 masked:*(v23 + 24)];

  [v17 setDelegate:self];
  v19 = [(AIAudiogramIndividualFrequencyInputViewController *)self keyboardToolbar];
  [v17 setKeyboardToolbar:v19];

  [v17 configureLayout];
  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(&v26, 8);

  return v17;
}

void __93__AIAudiogramIndividualFrequencyInputViewController_earCellForTableView_atIndexPath_withEar___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v30 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = [v6 frequency];
  v8 = [getHKUnitClass() hertzUnit];
  [v7 doubleValueForUnit:v8];
  v10 = v9;
  v11 = *(a1 + 48);

  if (v10 == v11)
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v12 = [v6 tests];
    v13 = [v12 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v26;
      while (2)
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v26 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v25 + 1) + 8 * i);
          v18 = *(a1 + 56);
          if (v18 == 1)
          {
            if (![*(*(&v25 + 1) + 8 * i) side])
            {
              goto LABEL_15;
            }

            v18 = *(a1 + 56);
          }

          if (v18 == 2 && [v17 side] == 1)
          {
LABEL_15:
            v19 = MEMORY[0x277CCABB0];
            v20 = [v17 sensitivity];
            v21 = [getHKUnitClass() decibelHearingLevelUnit];
            [v20 doubleValueForUnit:v21];
            v22 = [v19 numberWithDouble:?];
            v23 = *(*(a1 + 32) + 8);
            v24 = *(v23 + 40);
            *(v23 + 40) = v22;

            *(*(*(a1 + 40) + 8) + 24) = [v17 masked];
            *a4 = 1;
            goto LABEL_16;
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v25 objects:v29 count:16];
        if (v14)
        {
          continue;
        }

        break;
      }
    }

LABEL_16:
  }
}

- (id)_earCellForEar:(int64_t)a3
{
  v5 = [MEMORY[0x277CCAA70] indexPathForRow:0 inSection:a3 != 1];
  if (a3 == 2 && ![(AIAudiogramIndividualFrequencyInputViewController *)self hasLeftSymbols])
  {
    v6 = [MEMORY[0x277CCAA70] indexPathForRow:0 inSection:0];

    v5 = v6;
  }

  v7 = [(AIAudiogramIndividualFrequencyInputViewController *)self tableView];
  v8 = [v7 cellForRowAtIndexPath:v5];

  return v8;
}

- (int64_t)numberOfSectionsInTableView:(id)a3
{
  if (![(AIAudiogramIndividualFrequencyInputViewController *)self hasLeftSymbols])
  {
    return 1;
  }

  if ([(AIAudiogramIndividualFrequencyInputViewController *)self hasRightSymbols])
  {
    return 2;
  }

  return 1;
}

- (void)earCellDidUpdateHearingLevel:(id)a3 forEar:(int64_t)a4 masked:(BOOL)a5
{
  v5 = a5;
  v30 = *MEMORY[0x277D85DE8];
  v8 = a3;
  [(AIAudiogramIndividualFrequencyInputViewController *)self setAnalyticsDidMakeAdjustments:1];
  v9 = AXLogAudiogram();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v23 = 0;
    v24 = &v23;
    v25 = 0x2020000000;
    v10 = getHKAudiogramEarLocalizedDisplayNameForEarSymbolLoc_ptr;
    v26 = getHKAudiogramEarLocalizedDisplayNameForEarSymbolLoc_ptr;
    if (!getHKAudiogramEarLocalizedDisplayNameForEarSymbolLoc_ptr)
    {
      *buf = MEMORY[0x277D85DD0];
      *&buf[8] = 3221225472;
      *&buf[16] = __getHKAudiogramEarLocalizedDisplayNameForEarSymbolLoc_block_invoke;
      v28 = &unk_278CEC150;
      v29 = &v23;
      v11 = HealthUILibrary();
      v12 = dlsym(v11, "HKAudiogramEarLocalizedDisplayNameForEar");
      *(v29[1] + 24) = v12;
      getHKAudiogramEarLocalizedDisplayNameForEarSymbolLoc_ptr = *(v29[1] + 24);
      v10 = v24[3];
    }

    _Block_object_dispose(&v23, 8);
    if (!v10)
    {
      metadataForHKAudiogramSample_cold_1();
      __break(1u);
    }

    v13 = v10(a4, 0);
    *buf = 67109378;
    *&buf[4] = a4;
    *&buf[8] = 2112;
    *&buf[10] = v13;
    _os_log_impl(&dword_24179B000, v9, OS_LOG_TYPE_INFO, "Updating %i (%@) ear of audiogram", buf, 0x12u);
  }

  v14 = [(AIAudiogramIndividualFrequencyInputViewController *)self currentFrequency];
  v15 = [(AIAudiogramIndividualFrequencyInputViewController *)self indexOfFrequencyInSensitivityPoints:v14];

  v16 = AXLogAudiogram();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = [(AIAudiogramIndividualFrequencyInputViewController *)self sensitivityPoints];
    v18 = [v17 count];
    *buf = 134218240;
    *&buf[4] = v15;
    *&buf[12] = 2048;
    *&buf[14] = v18;
    _os_log_impl(&dword_24179B000, v16, OS_LOG_TYPE_INFO, "Updating audiogram point %li of %li points", buf, 0x16u);
  }

  if (!v8)
  {
    v22 = [(AIAudiogramIndividualFrequencyInputViewController *)self _earCellForEar:a4];
    v19 = v22;
    AXPerformBlockOnMainThreadAfterDelay();

    v8 = &unk_285365650;
  }

  v20 = [(AIAudiogramIndividualFrequencyInputViewController *)self newSensitivityPointForHearingLevel:v8 ear:a4 updateIndex:v15 masked:v5];
  if (v20)
  {
    if (v15 == -1)
    {
      [(AIAudiogramIndividualFrequencyInputViewController *)self addSensitivityPoint:v20];
    }

    else
    {
      [(AIAudiogramIndividualFrequencyInputViewController *)self updateSensitivityPoint:v20 atIndex:v15];
    }

    [(AIAudiogramIndividualFrequencyInputViewController *)self reloadAudiogram];
  }

  else
  {
    v21 = AXLogAudiogram();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [AIAudiogramIndividualFrequencyInputViewController earCellDidUpdateHearingLevel:forEar:masked:];
    }
  }
}

- (int64_t)indexOfFrequencyInSensitivityPoints:(id)a3
{
  v4 = a3;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = -1;
  v5 = [getHKUnitClass() hertzUnit];
  v6 = [(AIAudiogramIndividualFrequencyInputViewController *)self sensitivityPoints];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __89__AIAudiogramIndividualFrequencyInputViewController_indexOfFrequencyInSensitivityPoints___block_invoke;
  v11[3] = &unk_278CEC2D0;
  v7 = v5;
  v12 = v7;
  v8 = v4;
  v13 = v8;
  v14 = &v15;
  [v6 enumerateObjectsUsingBlock:v11];

  v9 = v16[3];
  _Block_object_dispose(&v15, 8);

  return v9;
}

void __89__AIAudiogramIndividualFrequencyInputViewController_indexOfFrequencyInSensitivityPoints___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = [a2 frequency];
  [v7 doubleValueForUnit:*(a1 + 32)];
  v9 = v8;
  [*(a1 + 40) doubleValue];
  v11 = v10;

  if (v9 == v11)
  {
    *(*(*(a1 + 48) + 8) + 24) = a3;
    *a4 = 1;
  }
}

- (id)newSensitivityPointForHearingLevel:(id)a3 ear:(int64_t)a4 updateIndex:(int64_t)a5 masked:(BOOL)a6
{
  v6 = a6;
  v10 = a3;
  v11 = [getHKUnitClass() hertzUnit];
  v12 = [getHKUnitClass() decibelHearingLevelUnit];
  HKQuantityClass = getHKQuantityClass();
  v14 = [(AIAudiogramIndividualFrequencyInputViewController *)self currentFrequency];
  [v14 doubleValue];
  v15 = [HKQuantityClass quantityWithUnit:v11 doubleValue:?];

  v45 = v12;
  if (v10)
  {
    v16 = getHKQuantityClass();
    [v10 doubleValue];
    v17 = [v16 quantityWithUnit:v12 doubleValue:?];
  }

  else
  {
    v17 = 0;
  }

  v25 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (a4 == 2)
  {
    if (v17)
    {
      v49 = 0;
      v28 = [objc_alloc(getHKAudiogramSensitivityTestClass()) initWithSensitivity:v17 type:0 masked:v6 side:1 clampingRange:0 error:&v49];
      v27 = v49;
      if (v28)
      {
        [v25 addObject:v28];
      }

      else
      {
        v35 = AXLogAudiogram();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          [AIAudiogramIndividualFrequencyInputViewController newSensitivityPointForHearingLevel:ear:updateIndex:masked:];
        }
      }
    }

    else
    {
      v27 = 0;
    }

    if (a5 != -1)
    {
      v36 = [(AIAudiogramIndividualFrequencyInputViewController *)self sensitivityPoints];
      v37 = [v36 objectAtIndexedSubscript:a5];
      v32 = [v37 tests];

      v47[0] = MEMORY[0x277D85DD0];
      v47[1] = 3221225472;
      v47[2] = __111__AIAudiogramIndividualFrequencyInputViewController_newSensitivityPointForHearingLevel_ear_updateIndex_masked___block_invoke_357;
      v47[3] = &unk_278CEC2F8;
      v33 = &v48;
      v48 = v25;
      v34 = v47;
      goto LABEL_27;
    }
  }

  else
  {
    if (a4 != 1)
    {
      v27 = 0;
      goto LABEL_28;
    }

    if (v17)
    {
      v52 = 0;
      v26 = [objc_alloc(getHKAudiogramSensitivityTestClass()) initWithSensitivity:v17 type:0 masked:v6 side:0 clampingRange:0 error:&v52];
      v27 = v52;
      if (v26)
      {
        [v25 addObject:v26];
      }

      else
      {
        v29 = AXLogAudiogram();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          [AIAudiogramIndividualFrequencyInputViewController newSensitivityPointForHearingLevel:ear:updateIndex:masked:];
        }
      }
    }

    else
    {
      v27 = 0;
    }

    if (a5 != -1)
    {
      v30 = [(AIAudiogramIndividualFrequencyInputViewController *)self sensitivityPoints];
      v31 = [v30 objectAtIndexedSubscript:a5];
      v32 = [v31 tests];

      v50[0] = MEMORY[0x277D85DD0];
      v50[1] = 3221225472;
      v50[2] = __111__AIAudiogramIndividualFrequencyInputViewController_newSensitivityPointForHearingLevel_ear_updateIndex_masked___block_invoke;
      v50[3] = &unk_278CEC2F8;
      v33 = &v51;
      v51 = v25;
      v34 = v50;
LABEL_27:
      [v32 enumerateObjectsUsingBlock:{v34, v45}];
    }
  }

LABEL_28:
  v54 = 0;
  v55 = &v54;
  v56 = 0x2050000000;
  v38 = getHKAudiogramSensitivityPointClass_softClass;
  v57 = getHKAudiogramSensitivityPointClass_softClass;
  if (!getHKAudiogramSensitivityPointClass_softClass)
  {
    v53[0] = MEMORY[0x277D85DD0];
    v53[1] = 3221225472;
    v53[2] = __getHKAudiogramSensitivityPointClass_block_invoke;
    v53[3] = &unk_278CEC150;
    v53[4] = &v54;
    __getHKAudiogramSensitivityPointClass_block_invoke(v53, v18, v19, v20, v21, v22, v23, v24, v45);
    v38 = v55[3];
  }

  v39 = v38;
  _Block_object_dispose(&v54, 8);
  v46 = v27;
  v40 = [v38 sensitivityPointWithFrequency:v15 tests:v25 error:&v46];
  v41 = v46;

  if (v41 || !v40)
  {
    v43 = AXLogAudiogram();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      [AIAudiogramIndividualFrequencyInputViewController newSensitivityPointForHearingLevel:ear:updateIndex:masked:];
    }

    v42 = 0;
  }

  else
  {
    v42 = v40;
  }

  return v42;
}

void __111__AIAudiogramIndividualFrequencyInputViewController_newSensitivityPointForHearingLevel_ear_updateIndex_masked___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  if ([v7 side] == 1)
  {
    v6 = [v7 sensitivity];

    if (v6)
    {
      [*(a1 + 32) addObject:v7];
      *a4 = 1;
    }
  }
}

void __111__AIAudiogramIndividualFrequencyInputViewController_newSensitivityPointForHearingLevel_ear_updateIndex_masked___block_invoke_357(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  if (![v6 side])
  {
    [*(a1 + 32) addObject:v6];
    *a4 = 1;
  }
}

- (void)addSensitivityPoint:(id)a3
{
  v4 = a3;
  v5 = [(AIAudiogramIndividualFrequencyInputViewController *)self sensitivityPoints];
  [v5 addObject:v4];

  v6 = [(AIAudiogramIndividualFrequencyInputViewController *)self sensitivityPoints];
  [v6 sortUsingComparator:&__block_literal_global];
}

uint64_t __73__AIAudiogramIndividualFrequencyInputViewController_addSensitivityPoint___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 frequency];
  v6 = [v4 frequency];

  v7 = [v5 compare:v6];
  return v7;
}

- (void)updateSensitivityPoint:(id)a3 atIndex:(int64_t)a4
{
  v6 = a3;
  if (a4 < 0 || (-[AIAudiogramIndividualFrequencyInputViewController sensitivityPoints](self, "sensitivityPoints"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 count], v7, v8 <= a4))
  {
    v10 = AXLogAudiogram();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [AIAudiogramIndividualFrequencyInputViewController updateSensitivityPoint:atIndex:];
    }
  }

  else
  {
    v9 = [(AIAudiogramIndividualFrequencyInputViewController *)self sensitivityPoints];
    [v9 setObject:v6 atIndexedSubscript:a4];
  }
}

- (void)reloadAudiogram
{
  v3 = [(AIAudiogramIndividualFrequencyInputViewController *)self sensitivityPoints];
  [(AIAudiogramIndividualFrequencyInputViewController *)self _reloadAudiogramWithSensitivityPoints:v3];
}

- (void)updateActiveIndexPathForEar:(int64_t)a3 beginEditing:(BOOL)a4
{
  v4 = a4;
  v11 = [MEMORY[0x277CCAA70] indexPathForRow:0 inSection:a3 != 1];
  v6 = [(AIAudiogramIndividualFrequencyInputViewController *)self activeIndexPath];
  v7 = [v11 isEqual:v6];

  if (!v4)
  {
    if (!v7)
    {
LABEL_7:
      [(AIAudiogramIndividualFrequencyInputViewController *)self setActiveIndexPath:v11];
      v10 = [(AIAudiogramIndividualFrequencyInputViewController *)self activeIndexPath];
      [(AIAudiogramIndividualFrequencyInputViewController *)self _scrollToIndexPathIfNecessary:v10 animated:1];

      v8 = v11;
      goto LABEL_8;
    }

    v9 = 0;
LABEL_6:
    [(AIAudiogramIndividualFrequencyInputViewController *)self setActiveIndexPath:v9];
    goto LABEL_7;
  }

  v8 = v11;
  v9 = v11;
  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_8:
}

- (AIAudiogramManualIngestionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (AIAudiogramConfirmResultsViewControllerDelegate)audiogramConfirmationDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_audiogramConfirmationDelegate);

  return WeakRetained;
}

- (void)tableView:(void *)a1 cellForRowAtIndexPath:(NSObject *)a2 .cold.1(void *a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v3[0] = 67109120;
  v3[1] = [a1 section];
  _os_log_error_impl(&dword_24179B000, a2, OS_LOG_TYPE_ERROR, "Unexpected section (%i) creating row for audiogram table view", v3, 8u);
}

@end