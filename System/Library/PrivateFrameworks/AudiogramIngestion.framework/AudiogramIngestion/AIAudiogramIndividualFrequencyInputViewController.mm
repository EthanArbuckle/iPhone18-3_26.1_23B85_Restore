@interface AIAudiogramIndividualFrequencyInputViewController
- (AIAudiogramConfirmResultsViewControllerDelegate)audiogramConfirmationDelegate;
- (AIAudiogramIndividualFrequencyInputViewController)initWithDelegate:(id)delegate audiogramConfirmationDelegate:(id)confirmationDelegate audiogram:(id)audiogram currentFrequency:(id)frequency isModalViewController:(BOOL)controller selectedSymbols:(id)symbols;
- (AIAudiogramManualIngestionDelegate)delegate;
- (BOOL)_scrollToIndexPathIfNecessary:(id)necessary animated:(BOOL)animated;
- (id)_earCellForEar:(int64_t)ear;
- (id)earCellForTableView:(id)view atIndexPath:(id)path withEar:(int64_t)ear;
- (id)newSensitivityPointForHearingLevel:(id)level ear:(int64_t)ear updateIndex:(int64_t)index masked:(BOOL)masked;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)indexOfFrequencyInSensitivityPoints:(id)points;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (void)_cancelTapped:(id)tapped;
- (void)_continueToNextFrequencyInput:(id)input;
- (void)_doneButtonTapped:(id)tapped;
- (void)_reloadAudiogramWithSensitivityPoints:(id)points;
- (void)_updateTableViewHeight;
- (void)addSensitivityPoint:(id)point;
- (void)adjustHearingLevel:(int64_t)level forEar:(int64_t)ear;
- (void)contentCategoryDidChange:(id)change;
- (void)earCellDidUpdateHearingLevel:(id)level forEar:(int64_t)ear masked:(BOOL)masked;
- (void)keyboardDoneTapped;
- (void)keyboardNegationTapped;
- (void)reloadAudiogram;
- (void)symbolSelectionForFrequencyHasChanged:(int64_t)changed masked:(BOOL)masked noneSelected:(BOOL)selected;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)updateActiveIndexPathForEar:(int64_t)ear beginEditing:(BOOL)editing;
- (void)updateSensitivityPoint:(id)point atIndex:(int64_t)index;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation AIAudiogramIndividualFrequencyInputViewController

- (AIAudiogramIndividualFrequencyInputViewController)initWithDelegate:(id)delegate audiogramConfirmationDelegate:(id)confirmationDelegate audiogram:(id)audiogram currentFrequency:(id)frequency isModalViewController:(BOOL)controller selectedSymbols:(id)symbols
{
  controllerCopy = controller;
  delegateCopy = delegate;
  confirmationDelegateCopy = confirmationDelegate;
  audiogramCopy = audiogram;
  frequencyCopy = frequency;
  symbolsCopy = symbols;
  v64.receiver = self;
  v64.super_class = AIAudiogramIndividualFrequencyInputViewController;
  v19 = [(AIAudiogramIndividualFrequencyInputViewController *)&v64 initWithTitle:&stru_28535F0B0 detailText:&stru_28535F0B0 symbolName:0 contentLayout:3];
  v20 = v19;
  if (v19)
  {
    [(AIAudiogramIndividualFrequencyInputViewController *)v19 setDelegate:delegateCopy];
    [(AIAudiogramIndividualFrequencyInputViewController *)v20 setAudiogramConfirmationDelegate:confirmationDelegateCopy];
    [(AIAudiogramIndividualFrequencyInputViewController *)v20 setAudiogram:audiogramCopy];
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

    v63 = delegateCopy;
    v25 = v24;
    _Block_object_dispose(&v70, 8);
    v26 = [v24 alloc];
    audiogram = [(AIAudiogramIndividualFrequencyInputViewController *)v20 audiogram];
    v28 = [v26 initWithHealthStore:v23 staticAudiogram:audiogram selectedFrequency:frequencyCopy];
    [(AIAudiogramIndividualFrequencyInputViewController *)v20 setChartViewController:v28];

    chartViewController = [(AIAudiogramIndividualFrequencyInputViewController *)v20 chartViewController];
    view = [chartViewController view];
    systemBackgroundColor = [MEMORY[0x277D75348] systemBackgroundColor];
    [view setBackgroundColor:systemBackgroundColor];

    v32 = objc_alloc(MEMORY[0x277D756B8]);
    v33 = [v32 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    [(AIAudiogramIndividualFrequencyInputViewController *)v20 setFrequencyTitleLabel:v33];

    frequencyTitleLabel = [(AIAudiogramIndividualFrequencyInputViewController *)v20 frequencyTitleLabel];
    [frequencyTitleLabel setTranslatesAutoresizingMaskIntoConstraints:0];

    frequencyTitleLabel2 = [(AIAudiogramIndividualFrequencyInputViewController *)v20 frequencyTitleLabel];
    v36 = 1;
    [frequencyTitleLabel2 setTextAlignment:1];

    v37 = [MEMORY[0x277D74300] _preferredFontForTextStyle:*MEMORY[0x277D76A08] weight:*MEMORY[0x277D743F8]];
    frequencyTitleLabel3 = [(AIAudiogramIndividualFrequencyInputViewController *)v20 frequencyTitleLabel];
    [frequencyTitleLabel3 setFont:v37];

    frequencyTitleLabel4 = [(AIAudiogramIndividualFrequencyInputViewController *)v20 frequencyTitleLabel];
    [frequencyTitleLabel4 setAdjustsFontForContentSizeCategory:1];

    frequencyTitleLabel5 = [(AIAudiogramIndividualFrequencyInputViewController *)v20 frequencyTitleLabel];
    [frequencyTitleLabel5 setNumberOfLines:0];

    v62 = frequencyCopy;
    [(AIAudiogramIndividualFrequencyInputViewController *)v20 setCurrentFrequency:frequencyCopy];
    sensitivityPoints = [audiogramCopy sensitivityPoints];
    v42 = [sensitivityPoints mutableCopy];
    [(AIAudiogramIndividualFrequencyInputViewController *)v20 setSensitivityPoints:v42];

    [(AIAudiogramIndividualFrequencyInputViewController *)v20 setSymbols:symbolsCopy];
    symbols = [(AIAudiogramIndividualFrequencyInputViewController *)v20 symbols];
    -[AIAudiogramIndividualFrequencyInputViewController setHasLeftSymbols:](v20, "setHasLeftSymbols:", [symbols containsObject:&unk_2853655F0]);

    symbols2 = [(AIAudiogramIndividualFrequencyInputViewController *)v20 symbols];
    -[AIAudiogramIndividualFrequencyInputViewController setHasRightSymbols:](v20, "setHasRightSymbols:", [symbols2 containsObject:&unk_285365608]);

    if (![(AIAudiogramIndividualFrequencyInputViewController *)v20 hasLeftSymbols])
    {
      v36 = [symbolsCopy containsObject:&unk_285365620];
    }

    v45 = audiogramCopy;
    [(AIAudiogramIndividualFrequencyInputViewController *)v20 setHasLeftSymbols:v36];
    -[AIAudiogramIndividualFrequencyInputViewController setHasLeftMaskedSymbol:](v20, "setHasLeftMaskedSymbol:", [symbolsCopy containsObject:&unk_285365620]);
    v46 = confirmationDelegateCopy;
    if ([(AIAudiogramIndividualFrequencyInputViewController *)v20 hasRightSymbols])
    {
      v47 = 1;
    }

    else
    {
      v47 = [symbolsCopy containsObject:&unk_285365638];
    }

    v48 = v23;
    [(AIAudiogramIndividualFrequencyInputViewController *)v20 setHasRightSymbols:v47];
    -[AIAudiogramIndividualFrequencyInputViewController setHasRightMaskedSymbol:](v20, "setHasRightMaskedSymbol:", [symbolsCopy containsObject:&unk_285365638]);
    boldButton = [MEMORY[0x277D37618] boldButton];
    [(AIAudiogramIndividualFrequencyInputViewController *)v20 setFooterButton:boldButton];

    if (controllerCopy)
    {
      v50 = @"AudiogramIngestionButtonDone";
    }

    else
    {
      v50 = @"AudiogramIngestionButtonContinue";
    }

    v51 = aiLocString(v50);
    footerButton = [(AIAudiogramIndividualFrequencyInputViewController *)v20 footerButton];
    [footerButton setTitle:v51 forState:0];

    if (controllerCopy)
    {
      v53 = sel__doneButtonTapped_;
    }

    else
    {
      v53 = sel__continueToNextFrequencyInput_;
    }

    footerButton2 = [(AIAudiogramIndividualFrequencyInputViewController *)v20 footerButton];
    [footerButton2 addTarget:v20 action:v53 forControlEvents:64];

    v55 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:v20 action:sel__cancelTapped_];
    v56 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:v20 action:sel__doneButtonTapped_];
    if ([(AIAudiogramIndividualFrequencyInputViewController *)v20 userAddedFrequencyAfterOptical])
    {
      navigationItem = [(OBBaseWelcomeController *)v20 navigationItem];
      [navigationItem setLeftBarButtonItem:v55];
      v58 = v56;
    }

    else
    {
      navigationItem = [(AIAudiogramIndividualFrequencyInputViewController *)v20 buttonTray];
      footerButton3 = [(AIAudiogramIndividualFrequencyInputViewController *)v20 footerButton];
      [navigationItem addButton:footerButton3];

      v58 = v55;
    }

    navigationItem2 = [(OBBaseWelcomeController *)v20 navigationItem];
    [navigationItem2 setRightBarButtonItem:v58];

    confirmationDelegateCopy = v46;
    audiogramCopy = v45;
    frequencyCopy = v62;
    delegateCopy = v63;
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
  view = [(AIAudiogramIndividualFrequencyInputViewController *)self view];
  [view frame];
  v5 = [(AIAudiogramKeyboardToolbarForSensitivityPoint *)v3 initWithFrame:self target:0.0, 0.0];
  [(AIAudiogramIndividualFrequencyInputViewController *)self setKeyboardToolbar:v5];

  [(AIAudiogramIndividualFrequencyInputViewController *)self setShouldAdjustScrollViewInsetForKeyboard:1];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel_contentCategoryDidChange_ name:*MEMORY[0x277D76810] object:0];

  chartViewController = [(AIAudiogramIndividualFrequencyInputViewController *)self chartViewController];
  view2 = [chartViewController view];
  [view2 setUserInteractionEnabled:0];

  chartViewController2 = [(AIAudiogramIndividualFrequencyInputViewController *)self chartViewController];
  view3 = [chartViewController2 view];
  [view3 setTranslatesAutoresizingMaskIntoConstraints:0];

  contentView = [(AIAudiogramIndividualFrequencyInputViewController *)self contentView];
  chartViewController3 = [(AIAudiogramIndividualFrequencyInputViewController *)self chartViewController];
  view4 = [chartViewController3 view];
  [contentView addSubview:view4];

  chartViewController4 = [(AIAudiogramIndividualFrequencyInputViewController *)self chartViewController];
  [(AIAudiogramIndividualFrequencyInputViewController *)self addChildViewController:chartViewController4];

  chartViewController5 = [(AIAudiogramIndividualFrequencyInputViewController *)self chartViewController];
  [chartViewController5 didMoveToParentViewController:self];

  v16 = objc_alloc(MEMORY[0x277D75B40]);
  v17 = [v16 initWithFrame:2 style:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [(AIAudiogramIndividualFrequencyInputViewController *)self setTableView:v17];

  tableView = [(AIAudiogramIndividualFrequencyInputViewController *)self tableView];
  [tableView setDataSource:self];

  tableView2 = [(AIAudiogramIndividualFrequencyInputViewController *)self tableView];
  [tableView2 setDelegate:self];

  tableView3 = [(AIAudiogramIndividualFrequencyInputViewController *)self tableView];
  [tableView3 setScrollEnabled:0];

  tableView4 = [(AIAudiogramIndividualFrequencyInputViewController *)self tableView];
  [tableView4 setTranslatesAutoresizingMaskIntoConstraints:0];

  tableView5 = [(AIAudiogramIndividualFrequencyInputViewController *)self tableView];
  [tableView5 setSectionHeaderTopPadding:8.0];

  tableView6 = [(AIAudiogramIndividualFrequencyInputViewController *)self tableView];
  [tableView6 setAllowsSelection:0];

  tableView7 = [(AIAudiogramIndividualFrequencyInputViewController *)self tableView];
  systemGroupedBackgroundColor = [MEMORY[0x277D75348] systemGroupedBackgroundColor];
  [tableView7 setBackgroundColor:systemGroupedBackgroundColor];

  contentView2 = [(AIAudiogramIndividualFrequencyInputViewController *)self contentView];
  tableView8 = [(AIAudiogramIndividualFrequencyInputViewController *)self tableView];
  [contentView2 addSubview:tableView8];

  view5 = [(AIAudiogramIndividualFrequencyInputViewController *)self view];
  systemGroupedBackgroundColor2 = [MEMORY[0x277D75348] systemGroupedBackgroundColor];
  [view5 setBackgroundColor:systemGroupedBackgroundColor2];

  v30 = objc_alloc(MEMORY[0x277D75A68]);
  frequencyTitleLabel = [(AIAudiogramIndividualFrequencyInputViewController *)self frequencyTitleLabel];
  v105[0] = frequencyTitleLabel;
  v32 = [MEMORY[0x277CBEA60] arrayWithObjects:v105 count:1];
  v33 = [v30 initWithArrangedSubviews:v32];

  systemGroupedBackgroundColor3 = [MEMORY[0x277D75348] systemGroupedBackgroundColor];
  [v33 setBackgroundColor:systemGroupedBackgroundColor3];

  [v33 setLayoutMarginsRelativeArrangement:1];
  [v33 setLayoutMargins:{20.0, 16.0, 4.0, 16.0}];
  [v33 setTranslatesAutoresizingMaskIntoConstraints:0];
  contentView3 = [(AIAudiogramIndividualFrequencyInputViewController *)self contentView];
  [contentView3 addSubview:v33];

  v76 = MEMORY[0x277CCAAD0];
  chartViewController6 = [(AIAudiogramIndividualFrequencyInputViewController *)self chartViewController];
  view6 = [chartViewController6 view];
  topAnchor = [view6 topAnchor];
  contentView4 = [(AIAudiogramIndividualFrequencyInputViewController *)self contentView];
  topAnchor2 = [contentView4 topAnchor];
  v96 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:-50.0];
  v104[0] = v96;
  chartViewController7 = [(AIAudiogramIndividualFrequencyInputViewController *)self chartViewController];
  view7 = [chartViewController7 view];
  leadingAnchor = [view7 leadingAnchor];
  view8 = [(AIAudiogramIndividualFrequencyInputViewController *)self view];
  leadingAnchor2 = [view8 leadingAnchor];
  v90 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v104[1] = v90;
  chartViewController8 = [(AIAudiogramIndividualFrequencyInputViewController *)self chartViewController];
  view9 = [chartViewController8 view];
  trailingAnchor = [view9 trailingAnchor];
  view10 = [(AIAudiogramIndividualFrequencyInputViewController *)self view];
  trailingAnchor2 = [view10 trailingAnchor];
  v83 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v104[2] = v83;
  chartViewController9 = [(AIAudiogramIndividualFrequencyInputViewController *)self chartViewController];
  view11 = [chartViewController9 view];
  heightAnchor = [view11 heightAnchor];
  view12 = [(AIAudiogramIndividualFrequencyInputViewController *)self view];
  heightAnchor2 = [view12 heightAnchor];
  v77 = [heightAnchor constraintEqualToAnchor:heightAnchor2 multiplier:0.4];
  v104[3] = v77;
  topAnchor3 = [v33 topAnchor];
  chartViewController10 = [(AIAudiogramIndividualFrequencyInputViewController *)self chartViewController];
  view13 = [chartViewController10 view];
  bottomAnchor = [view13 bottomAnchor];
  v71 = [topAnchor3 constraintEqualToAnchor:bottomAnchor];
  v104[4] = v71;
  leadingAnchor3 = [v33 leadingAnchor];
  view14 = [(AIAudiogramIndividualFrequencyInputViewController *)self view];
  leadingAnchor4 = [view14 leadingAnchor];
  v67 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  v104[5] = v67;
  v88 = v33;
  trailingAnchor3 = [v33 trailingAnchor];
  view15 = [(AIAudiogramIndividualFrequencyInputViewController *)self view];
  trailingAnchor4 = [view15 trailingAnchor];
  v63 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  v104[6] = v63;
  tableView9 = [(AIAudiogramIndividualFrequencyInputViewController *)self tableView];
  topAnchor4 = [tableView9 topAnchor];
  bottomAnchor2 = [v33 bottomAnchor];
  v59 = [topAnchor4 constraintEqualToAnchor:bottomAnchor2];
  v104[7] = v59;
  tableView10 = [(AIAudiogramIndividualFrequencyInputViewController *)self tableView];
  leadingAnchor5 = [tableView10 leadingAnchor];
  view16 = [(AIAudiogramIndividualFrequencyInputViewController *)self view];
  leadingAnchor6 = [view16 leadingAnchor];
  v54 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
  v104[8] = v54;
  tableView11 = [(AIAudiogramIndividualFrequencyInputViewController *)self tableView];
  trailingAnchor5 = [tableView11 trailingAnchor];
  view17 = [(AIAudiogramIndividualFrequencyInputViewController *)self view];
  trailingAnchor6 = [view17 trailingAnchor];
  v38 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6];
  v104[9] = v38;
  tableView12 = [(AIAudiogramIndividualFrequencyInputViewController *)self tableView];
  bottomAnchor3 = [tableView12 bottomAnchor];
  contentView5 = [(AIAudiogramIndividualFrequencyInputViewController *)self contentView];
  bottomAnchor4 = [contentView5 bottomAnchor];
  v43 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
  v104[10] = v43;
  v44 = [MEMORY[0x277CBEA60] arrayWithObjects:v104 count:11];
  [v76 activateConstraints:v44];

  tableView13 = [(AIAudiogramIndividualFrequencyInputViewController *)self tableView];
  v46 = objc_opt_class();
  v47 = +[AIAudiogramIndividualFrequencyEarCell reuseIdentifier];
  [tableView13 registerClass:v46 forCellReuseIdentifier:v47];

  scrollView = [(AIAudiogramIndividualFrequencyInputViewController *)self scrollView];
  [scrollView _addScrollViewScrollObserver:self];

  defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
  v50 = *MEMORY[0x277D76BA8];
  v102[0] = MEMORY[0x277D85DD0];
  v102[1] = 3221225472;
  v102[2] = __64__AIAudiogramIndividualFrequencyInputViewController_viewDidLoad__block_invoke;
  v102[3] = &unk_278CEC230;
  v102[4] = self;
  v51 = [defaultCenter2 addObserverForName:v50 object:0 queue:0 usingBlock:v102];
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

- (void)viewWillAppear:(BOOL)appear
{
  v20.receiver = self;
  v20.super_class = AIAudiogramIndividualFrequencyInputViewController;
  [(AIAudiogramIndividualFrequencyInputViewController *)&v20 viewWillAppear:appear];
  delegate = [(AIAudiogramIndividualFrequencyInputViewController *)self delegate];
  getCurrentAudiogram = [delegate getCurrentAudiogram];
  [(AIAudiogramIndividualFrequencyInputViewController *)self setAudiogram:getCurrentAudiogram];

  audiogram = [(AIAudiogramIndividualFrequencyInputViewController *)self audiogram];
  sensitivityPoints = [audiogram sensitivityPoints];
  v8 = [sensitivityPoints mutableCopy];
  [(AIAudiogramIndividualFrequencyInputViewController *)self setSensitivityPoints:v8];

  sensitivityPoints2 = [(AIAudiogramIndividualFrequencyInputViewController *)self sensitivityPoints];
  [(AIAudiogramIndividualFrequencyInputViewController *)self _reloadAudiogramWithSensitivityPoints:sensitivityPoints2];

  tableView = [(AIAudiogramIndividualFrequencyInputViewController *)self tableView];
  [tableView reloadData];

  if (![(AIAudiogramIndividualFrequencyInputViewController *)self didAddBackgroundLayer])
  {
    layer = [MEMORY[0x277CD9ED0] layer];
    systemBackgroundColor = [MEMORY[0x277D75348] systemBackgroundColor];
    [layer setBackgroundColor:{objc_msgSend(systemBackgroundColor, "CGColor")}];

    view = [(AIAudiogramIndividualFrequencyInputViewController *)self view];
    [view bounds];
    v15 = v14;
    view2 = [(AIAudiogramIndividualFrequencyInputViewController *)self view];
    [view2 bounds];
    [layer setFrame:{0.0, 0.0, v15, v17 * 0.4}];

    view3 = [(AIAudiogramIndividualFrequencyInputViewController *)self view];
    layer2 = [view3 layer];
    [layer2 insertSublayer:layer atIndex:0];

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
  tableViewHeightConstraint = [(AIAudiogramIndividualFrequencyInputViewController *)self tableViewHeightConstraint];
  if (tableViewHeightConstraint)
  {
  }

  else
  {
    tableView = [(AIAudiogramIndividualFrequencyInputViewController *)self tableView];

    if (tableView)
    {
      tableView2 = [(AIAudiogramIndividualFrequencyInputViewController *)self tableView];
      heightAnchor = [tableView2 heightAnchor];
      v12 = [heightAnchor constraintEqualToConstant:v4];
      [(AIAudiogramIndividualFrequencyInputViewController *)self setTableViewHeightConstraint:v12];

      tableViewHeightConstraint2 = [(AIAudiogramIndividualFrequencyInputViewController *)self tableViewHeightConstraint];
      [tableViewHeightConstraint2 setActive:1];
      goto LABEL_7;
    }
  }

  tableViewHeightConstraint3 = [(AIAudiogramIndividualFrequencyInputViewController *)self tableViewHeightConstraint];
  [tableViewHeightConstraint3 constant];
  v8 = v7;

  if (v4 == v8)
  {
    return;
  }

  tableViewHeightConstraint2 = [(AIAudiogramIndividualFrequencyInputViewController *)self tableViewHeightConstraint];
  [tableViewHeightConstraint2 setConstant:v4];
LABEL_7:
}

- (void)_cancelTapped:(id)tapped
{
  delegate = [(AIAudiogramIndividualFrequencyInputViewController *)self delegate];
  [delegate cancelButtonTapped];
}

- (void)_doneButtonTapped:(id)tapped
{
  delegate = [(AIAudiogramIndividualFrequencyInputViewController *)self delegate];
  audiogram = [(AIAudiogramIndividualFrequencyInputViewController *)self audiogram];
  [delegate dismissCurrentFrequencyInputViewControllerWithAudiogram:audiogram];
}

- (void)_continueToNextFrequencyInput:(id)input
{
  delegate = [(AIAudiogramIndividualFrequencyInputViewController *)self delegate];
  audiogram = [(AIAudiogramIndividualFrequencyInputViewController *)self audiogram];
  currentFrequency = [(AIAudiogramIndividualFrequencyInputViewController *)self currentFrequency];
  [delegate showNextFrequencyInputViewControllerWithAudiogram:audiogram previousFrequency:currentFrequency];
}

- (BOOL)_scrollToIndexPathIfNecessary:(id)necessary animated:(BOOL)animated
{
  v49 = *MEMORY[0x277D85DE8];
  necessaryCopy = necessary;
  tableView = [(AIAudiogramIndividualFrequencyInputViewController *)self tableView];
  [tableView rectForRowAtIndexPath:necessaryCopy];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  view = [(AIAudiogramIndividualFrequencyInputViewController *)self view];
  tableView2 = [(AIAudiogramIndividualFrequencyInputViewController *)self tableView];
  v42 = v10;
  v43 = v8;
  [view convertRect:tableView2 fromView:{v8, v10, v12, v14}];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;

  scrollView = [(AIAudiogramIndividualFrequencyInputViewController *)self scrollView];
  [scrollView frame];
  v27 = v20 - v26;

  scrollView2 = [(AIAudiogramIndividualFrequencyInputViewController *)self scrollView];
  [scrollView2 frame];
  v30 = v29;
  scrollView3 = [(AIAudiogramIndividualFrequencyInputViewController *)self scrollView];
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
      scrollView4 = [(AIAudiogramIndividualFrequencyInputViewController *)self scrollView];
      tableView3 = [(AIAudiogramIndividualFrequencyInputViewController *)self tableView];
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

- (void)contentCategoryDidChange:(id)change
{
  tableView = [(AIAudiogramIndividualFrequencyInputViewController *)self tableView];
  [tableView reloadData];
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  [view deselectRowAtIndexPath:pathCopy animated:1];
  activeIndexPath = [(AIAudiogramIndividualFrequencyInputViewController *)self activeIndexPath];

  if ([pathCopy section] <= 1)
  {
    if (activeIndexPath == pathCopy)
    {
      v7 = 0;
    }

    else
    {
      v7 = pathCopy;
    }

    [(AIAudiogramIndividualFrequencyInputViewController *)self setActiveIndexPath:v7];
    [(AIAudiogramIndividualFrequencyInputViewController *)self _scrollToIndexPathIfNecessary:pathCopy animated:1];
  }
}

- (void)symbolSelectionForFrequencyHasChanged:(int64_t)changed masked:(BOOL)masked noneSelected:(BOOL)selected
{
  selectedCopy = selected;
  maskedCopy = masked;
  v9 = [(AIAudiogramIndividualFrequencyInputViewController *)self _earCellForEar:?];
  v15 = v9;
  if (selectedCopy)
  {
    currentFrequency = [(AIAudiogramIndividualFrequencyInputViewController *)self currentFrequency];
    v11 = [(AIAudiogramIndividualFrequencyInputViewController *)self indexOfFrequencyInSensitivityPoints:currentFrequency];

    hearingLevel = [(AIAudiogramIndividualFrequencyInputViewController *)self newSensitivityPointForHearingLevel:0 ear:changed updateIndex:v11 masked:maskedCopy];
    if (hearingLevel)
    {
      if (v11 == -1)
      {
        [(AIAudiogramIndividualFrequencyInputViewController *)self addSensitivityPoint:hearingLevel];
      }

      else
      {
        [(AIAudiogramIndividualFrequencyInputViewController *)self updateSensitivityPoint:hearingLevel atIndex:v11];
      }
    }

    else if (v11 != -1)
    {
      sensitivityPoints = [(AIAudiogramIndividualFrequencyInputViewController *)self sensitivityPoints];
      [sensitivityPoints removeObjectAtIndex:v11];
    }

    [(AIAudiogramIndividualFrequencyInputViewController *)self reloadAudiogram];
  }

  else
  {
    hearingLevel = [v9 hearingLevel];
    -[AIAudiogramIndividualFrequencyInputViewController earCellDidUpdateHearingLevel:forEar:masked:](self, "earCellDidUpdateHearingLevel:forEar:masked:", hearingLevel, [v15 ear], maskedCopy);
  }

  symbols = [(AIAudiogramIndividualFrequencyInputViewController *)self symbols];
  [v15 updateSymbols:symbols ear:changed masked:maskedCopy];
}

- (void)adjustHearingLevel:(int64_t)level forEar:(int64_t)ear
{
  v12 = [(AIAudiogramIndividualFrequencyInputViewController *)self _earCellForEar:ear];
  v6 = MEMORY[0x277CCABB0];
  hearingLevel = [v12 hearingLevel];
  [hearingLevel doubleValue];
  level = [v6 numberWithDouble:v8 + level];
  v10 = validateHearingLevel(level);
  [v12 setHearingLevel:v10];

  hearingLevel2 = [v12 hearingLevel];
  -[AIAudiogramIndividualFrequencyInputViewController earCellDidUpdateHearingLevel:forEar:masked:](self, "earCellDidUpdateHearingLevel:forEar:masked:", hearingLevel2, [v12 ear], objc_msgSend(v12, "masked"));
}

- (void)_reloadAudiogramWithSensitivityPoints:(id)points
{
  pointsCopy = points;
  delegate = [(AIAudiogramIndividualFrequencyInputViewController *)self delegate];
  getPickedDate = [delegate getPickedDate];

  if ([pointsCopy count])
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
    v10 = [v7 audiogramSampleWithSensitivityPoints:pointsCopy startDate:getPickedDate endDate:getPickedDate metadata:v9];
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
  tableView = [(AIAudiogramIndividualFrequencyInputViewController *)self tableView];
  [tableView endEditing:1];
}

- (void)keyboardNegationTapped
{
  activeIndexPath = [(AIAudiogramIndividualFrequencyInputViewController *)self activeIndexPath];

  if (activeIndexPath)
  {
    activeIndexPath2 = [(AIAudiogramIndividualFrequencyInputViewController *)self activeIndexPath];
    if ([activeIndexPath2 section])
    {
      v5 = 2;
    }

    else
    {
      v5 = 1;
    }

    v12 = [(AIAudiogramIndividualFrequencyInputViewController *)self _earCellForEar:v5];

    hearingLevel = [v12 hearingLevel];

    if (hearingLevel)
    {
      v7 = MEMORY[0x277CCABB0];
      hearingLevel2 = [v12 hearingLevel];
      [hearingLevel2 doubleValue];
      v10 = [v7 numberWithDouble:-v9];
      [v12 setHearingLevel:v10];

      hearingLevel3 = [v12 hearingLevel];
      -[AIAudiogramIndividualFrequencyInputViewController earCellDidUpdateHearingLevel:forEar:masked:](self, "earCellDidUpdateHearingLevel:forEar:masked:", hearingLevel3, [v12 ear], objc_msgSend(v12, "masked"));
    }
  }
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
  v13 = [(AIAudiogramIndividualFrequencyInputViewController *)self numberOfSectionsInTableView:viewCopy];
  if ([(AIAudiogramIndividualFrequencyInputViewController *)self hasRightSymbols])
  {
    v14 = [(AIAudiogramIndividualFrequencyInputViewController *)self numberOfSectionsInTableView:viewCopy]== 1;
  }

  else
  {
    v14 = 0;
  }

  section2 = [v11 section];
  if (section2 == 1)
  {
    if ([(AIAudiogramIndividualFrequencyInputViewController *)self hasRightSymbols]&& v13 >= 1)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if (!section2)
    {
      if ([(AIAudiogramIndividualFrequencyInputViewController *)self hasLeftSymbols]&& v13 >= 1)
      {
        selfCopy2 = self;
        v17 = viewCopy;
        v18 = v11;
        v19 = 1;
LABEL_17:
        v21 = [(AIAudiogramIndividualFrequencyInputViewController *)selfCopy2 earCellForTableView:v17 atIndexPath:v18 withEar:v19];

        v12 = v21;
        goto LABEL_18;
      }

      if (!v14)
      {
        goto LABEL_18;
      }

LABEL_16:
      selfCopy2 = self;
      v17 = viewCopy;
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

- (id)earCellForTableView:(id)view atIndexPath:(id)path withEar:(int64_t)ear
{
  viewCopy = view;
  pathCopy = path;
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
  audiogram = [(AIAudiogramIndividualFrequencyInputViewController *)self audiogram];

  if (audiogram)
  {
    currentFrequency = [(AIAudiogramIndividualFrequencyInputViewController *)self currentFrequency];
    [currentFrequency doubleValue];
    v13 = v12;

    audiogram2 = [(AIAudiogramIndividualFrequencyInputViewController *)self audiogram];
    sensitivityPoints = [audiogram2 sensitivityPoints];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __93__AIAudiogramIndividualFrequencyInputViewController_earCellForTableView_atIndexPath_withEar___block_invoke;
    v21[3] = &unk_278CEC2A8;
    v21[6] = v13;
    v21[7] = ear;
    v21[4] = &v26;
    v21[5] = &v22;
    [sensitivityPoints enumerateObjectsUsingBlock:v21];
  }

  v16 = +[AIAudiogramIndividualFrequencyEarCell reuseIdentifier];
  v17 = [viewCopy dequeueReusableCellWithIdentifier:v16];

  [v17 setHearingLevel:v27[5]];
  [v17 setEar:ear];
  [v17 setMasked:*(v23 + 24)];
  symbols = [(AIAudiogramIndividualFrequencyInputViewController *)self symbols];
  [v17 updateSymbols:symbols ear:ear masked:*(v23 + 24)];

  [v17 setDelegate:self];
  keyboardToolbar = [(AIAudiogramIndividualFrequencyInputViewController *)self keyboardToolbar];
  [v17 setKeyboardToolbar:keyboardToolbar];

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

- (id)_earCellForEar:(int64_t)ear
{
  v5 = [MEMORY[0x277CCAA70] indexPathForRow:0 inSection:ear != 1];
  if (ear == 2 && ![(AIAudiogramIndividualFrequencyInputViewController *)self hasLeftSymbols])
  {
    v6 = [MEMORY[0x277CCAA70] indexPathForRow:0 inSection:0];

    v5 = v6;
  }

  tableView = [(AIAudiogramIndividualFrequencyInputViewController *)self tableView];
  v8 = [tableView cellForRowAtIndexPath:v5];

  return v8;
}

- (int64_t)numberOfSectionsInTableView:(id)view
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

- (void)earCellDidUpdateHearingLevel:(id)level forEar:(int64_t)ear masked:(BOOL)masked
{
  maskedCopy = masked;
  v30 = *MEMORY[0x277D85DE8];
  levelCopy = level;
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

    v13 = v10(ear, 0);
    *buf = 67109378;
    *&buf[4] = ear;
    *&buf[8] = 2112;
    *&buf[10] = v13;
    _os_log_impl(&dword_24179B000, v9, OS_LOG_TYPE_INFO, "Updating %i (%@) ear of audiogram", buf, 0x12u);
  }

  currentFrequency = [(AIAudiogramIndividualFrequencyInputViewController *)self currentFrequency];
  v15 = [(AIAudiogramIndividualFrequencyInputViewController *)self indexOfFrequencyInSensitivityPoints:currentFrequency];

  v16 = AXLogAudiogram();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    sensitivityPoints = [(AIAudiogramIndividualFrequencyInputViewController *)self sensitivityPoints];
    v18 = [sensitivityPoints count];
    *buf = 134218240;
    *&buf[4] = v15;
    *&buf[12] = 2048;
    *&buf[14] = v18;
    _os_log_impl(&dword_24179B000, v16, OS_LOG_TYPE_INFO, "Updating audiogram point %li of %li points", buf, 0x16u);
  }

  if (!levelCopy)
  {
    v22 = [(AIAudiogramIndividualFrequencyInputViewController *)self _earCellForEar:ear];
    v19 = v22;
    AXPerformBlockOnMainThreadAfterDelay();

    levelCopy = &unk_285365650;
  }

  v20 = [(AIAudiogramIndividualFrequencyInputViewController *)self newSensitivityPointForHearingLevel:levelCopy ear:ear updateIndex:v15 masked:maskedCopy];
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

- (int64_t)indexOfFrequencyInSensitivityPoints:(id)points
{
  pointsCopy = points;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = -1;
  hertzUnit = [getHKUnitClass() hertzUnit];
  sensitivityPoints = [(AIAudiogramIndividualFrequencyInputViewController *)self sensitivityPoints];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __89__AIAudiogramIndividualFrequencyInputViewController_indexOfFrequencyInSensitivityPoints___block_invoke;
  v11[3] = &unk_278CEC2D0;
  v7 = hertzUnit;
  v12 = v7;
  v8 = pointsCopy;
  v13 = v8;
  v14 = &v15;
  [sensitivityPoints enumerateObjectsUsingBlock:v11];

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

- (id)newSensitivityPointForHearingLevel:(id)level ear:(int64_t)ear updateIndex:(int64_t)index masked:(BOOL)masked
{
  maskedCopy = masked;
  levelCopy = level;
  hertzUnit = [getHKUnitClass() hertzUnit];
  decibelHearingLevelUnit = [getHKUnitClass() decibelHearingLevelUnit];
  HKQuantityClass = getHKQuantityClass();
  currentFrequency = [(AIAudiogramIndividualFrequencyInputViewController *)self currentFrequency];
  [currentFrequency doubleValue];
  v15 = [HKQuantityClass quantityWithUnit:hertzUnit doubleValue:?];

  v45 = decibelHearingLevelUnit;
  if (levelCopy)
  {
    v16 = getHKQuantityClass();
    [levelCopy doubleValue];
    v17 = [v16 quantityWithUnit:decibelHearingLevelUnit doubleValue:?];
  }

  else
  {
    v17 = 0;
  }

  v25 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (ear == 2)
  {
    if (v17)
    {
      v49 = 0;
      v28 = [objc_alloc(getHKAudiogramSensitivityTestClass()) initWithSensitivity:v17 type:0 masked:maskedCopy side:1 clampingRange:0 error:&v49];
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

    if (index != -1)
    {
      sensitivityPoints = [(AIAudiogramIndividualFrequencyInputViewController *)self sensitivityPoints];
      v37 = [sensitivityPoints objectAtIndexedSubscript:index];
      tests = [v37 tests];

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
    if (ear != 1)
    {
      v27 = 0;
      goto LABEL_28;
    }

    if (v17)
    {
      v52 = 0;
      v26 = [objc_alloc(getHKAudiogramSensitivityTestClass()) initWithSensitivity:v17 type:0 masked:maskedCopy side:0 clampingRange:0 error:&v52];
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

    if (index != -1)
    {
      sensitivityPoints2 = [(AIAudiogramIndividualFrequencyInputViewController *)self sensitivityPoints];
      v31 = [sensitivityPoints2 objectAtIndexedSubscript:index];
      tests = [v31 tests];

      v50[0] = MEMORY[0x277D85DD0];
      v50[1] = 3221225472;
      v50[2] = __111__AIAudiogramIndividualFrequencyInputViewController_newSensitivityPointForHearingLevel_ear_updateIndex_masked___block_invoke;
      v50[3] = &unk_278CEC2F8;
      v33 = &v51;
      v51 = v25;
      v34 = v50;
LABEL_27:
      [tests enumerateObjectsUsingBlock:{v34, v45}];
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

- (void)addSensitivityPoint:(id)point
{
  pointCopy = point;
  sensitivityPoints = [(AIAudiogramIndividualFrequencyInputViewController *)self sensitivityPoints];
  [sensitivityPoints addObject:pointCopy];

  sensitivityPoints2 = [(AIAudiogramIndividualFrequencyInputViewController *)self sensitivityPoints];
  [sensitivityPoints2 sortUsingComparator:&__block_literal_global];
}

uint64_t __73__AIAudiogramIndividualFrequencyInputViewController_addSensitivityPoint___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 frequency];
  v6 = [v4 frequency];

  v7 = [v5 compare:v6];
  return v7;
}

- (void)updateSensitivityPoint:(id)point atIndex:(int64_t)index
{
  pointCopy = point;
  if (index < 0 || (-[AIAudiogramIndividualFrequencyInputViewController sensitivityPoints](self, "sensitivityPoints"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 count], v7, v8 <= index))
  {
    v10 = AXLogAudiogram();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [AIAudiogramIndividualFrequencyInputViewController updateSensitivityPoint:atIndex:];
    }
  }

  else
  {
    sensitivityPoints = [(AIAudiogramIndividualFrequencyInputViewController *)self sensitivityPoints];
    [sensitivityPoints setObject:pointCopy atIndexedSubscript:index];
  }
}

- (void)reloadAudiogram
{
  sensitivityPoints = [(AIAudiogramIndividualFrequencyInputViewController *)self sensitivityPoints];
  [(AIAudiogramIndividualFrequencyInputViewController *)self _reloadAudiogramWithSensitivityPoints:sensitivityPoints];
}

- (void)updateActiveIndexPathForEar:(int64_t)ear beginEditing:(BOOL)editing
{
  editingCopy = editing;
  v11 = [MEMORY[0x277CCAA70] indexPathForRow:0 inSection:ear != 1];
  activeIndexPath = [(AIAudiogramIndividualFrequencyInputViewController *)self activeIndexPath];
  v7 = [v11 isEqual:activeIndexPath];

  if (!editingCopy)
  {
    if (!v7)
    {
LABEL_7:
      [(AIAudiogramIndividualFrequencyInputViewController *)self setActiveIndexPath:v11];
      activeIndexPath2 = [(AIAudiogramIndividualFrequencyInputViewController *)self activeIndexPath];
      [(AIAudiogramIndividualFrequencyInputViewController *)self _scrollToIndexPathIfNecessary:activeIndexPath2 animated:1];

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