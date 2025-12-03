@interface EKEventProposeNewTimeViewController
+ (id)_participantsInArray:(id)array thatAreNotInArray:(id)inArray;
- (BOOL)proposedTimeChanged;
- (BOOL)tableView:(id)view canEditRowAtIndexPath:(id)path;
- (EKEventProposeNewTimeViewController)initWithEvent:(id)event model:(id)model;
- (EKUIEventStatusButtonsView)statusButtonsView;
- (EKUIViewControllerNavigationDelegate)navigationDelegate;
- (EKViewControllerRemoteUIDelegate)remoteUIDelegate;
- (SingleToolbarItemContainerView)statusButtonsContainerView;
- (double)tableView:(id)view estimatedHeightForRowAtIndexPath:(id)path;
- (double)tableView:(id)view heightForRowAtIndexPath:(id)path;
- (id)_sectionForIndex:(unint64_t)index;
- (id)defaultAlertTitleForEditItem:(id)item;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (id)tableView:(id)view willSelectRowAtIndexPath:(id)path;
- (int64_t)_indexForSection:(id)section;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (int64_t)tableView:(id)view editingStyleForRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (unint64_t)supportedInterfaceOrientations;
- (void)_cancelAvailabilitySpinnerTimer;
- (void)_dismiss:(id)_dismiss;
- (void)_dismissPresentedViewControllerAnimated:(BOOL)animated;
- (void)_eventModified:(id)modified;
- (void)_fontSizeDefinitionsChanged:(id)changed;
- (void)_popViewControllerAnimated:(BOOL)animated;
- (void)_presentViewController:(id)controller;
- (void)_pushViewController:(id)controller animated:(BOOL)animated;
- (void)_refreshIfNeeded;
- (void)_scheduleAvailabilitySpinnerTimer;
- (void)_searcherStateChanged:(int64_t)changed;
- (void)_updateStatusButtons;
- (void)availabilityDateChangedTo:(id)to;
- (void)dateChangedTo:(id)to;
- (void)editItem:(id)item wantsRowInsertions:(id)insertions rowDeletions:(id)deletions;
- (void)editItemRequiresHeightChange:(id)change;
- (void)editItemViewController:(id)controller didCompleteWithAction:(int)action;
- (void)eventStatusButtonsView:(id)view didSelectAction:(int64_t)action sourceView:(id)sourceView sourceRect:(CGRect)rect appliesToAll:(BOOL)all ifCancelled:(id)cancelled;
- (void)loadView;
- (void)resetBackgroundColor;
- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path;
- (void)tableView:(id)view didDeselectRowAtIndexPath:(id)path;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view willDisplayHeaderView:(id)headerView forSection:(int64_t)section;
- (void)updateCheckmark;
- (void)updateCustomBackButton;
- (void)viewAvailabilityTapped;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation EKEventProposeNewTimeViewController

- (EKEventProposeNewTimeViewController)initWithEvent:(id)event model:(id)model
{
  v25[3] = *MEMORY[0x1E69E9840];
  eventCopy = event;
  modelCopy = model;
  v24.receiver = self;
  v24.super_class = EKEventProposeNewTimeViewController;
  v8 = [(EKEventProposeNewTimeViewController *)&v24 initWithNibName:0 bundle:0];
  if (v8)
  {
    proposedStartDate = [eventCopy proposedStartDate];
    if (proposedStartDate)
    {
      [(EKEventProposeNewTimeViewController *)v8 setOriginalDate:proposedStartDate];
    }

    else
    {
      startDate = [eventCopy startDate];
      [(EKEventProposeNewTimeViewController *)v8 setOriginalDate:startDate];
    }

    proposedStartDate2 = [eventCopy proposedStartDate];
    [(EKEventProposeNewTimeViewController *)v8 setProposedStartDate:proposedStartDate2];

    [(EKEventProposeNewTimeViewController *)v8 setEvent:eventCopy];
    [(EKEventProposeNewTimeViewController *)v8 setResetConflictResolutionSections:1];
    objc_storeStrong(&v8->_model, model);
    objc_initWeak(&location, v8);
    v12 = objc_alloc(MEMORY[0x1E6966A38]);
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __59__EKEventProposeNewTimeViewController_initWithEvent_model___block_invoke;
    v21[3] = &unk_1E843F058;
    objc_copyWeak(&v22, &location);
    v13 = [v12 initWithStateChangedCallback:v21];
    [(EKEventProposeNewTimeViewController *)v8 setAvailabilitySearcher:v13];

    availabilitySearcher = [(EKEventProposeNewTimeViewController *)v8 availabilitySearcher];
    [availabilitySearcher setNoConflictRequired:1];

    v25[0] = objc_opt_class();
    v25[1] = objc_opt_class();
    v25[2] = objc_opt_class();
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:3];
    objc_initWeak(&from, v8);
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __59__EKEventProposeNewTimeViewController_initWithEvent_model___block_invoke_3;
    v18[3] = &unk_1E843EBE8;
    objc_copyWeak(&v19, &from);
    v16 = [(EKEventProposeNewTimeViewController *)v8 registerForTraitChanges:v15 withHandler:v18];
    objc_destroyWeak(&v19);
    objc_destroyWeak(&from);

    objc_destroyWeak(&v22);
    objc_destroyWeak(&location);
  }

  return v8;
}

void __59__EKEventProposeNewTimeViewController_initWithEvent_model___block_invoke(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __59__EKEventProposeNewTimeViewController_initWithEvent_model___block_invoke_2;
  v3[3] = &unk_1E843F030;
  objc_copyWeak(v4, (a1 + 32));
  v4[1] = a2;
  dispatch_async(MEMORY[0x1E69E96A0], v3);
  objc_destroyWeak(v4);
}

void __59__EKEventProposeNewTimeViewController_initWithEvent_model___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _searcherStateChanged:*(a1 + 40)];
}

void __59__EKEventProposeNewTimeViewController_initWithEvent_model___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v16 = a2;
  v5 = a3;
  v6 = [v16 traitCollection];
  v7 = [v6 _presentationSemanticContext];
  v8 = [v5 _presentationSemanticContext];

  if (v7 != v8)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained resetBackgroundColor];
  }

  v10 = [v5 horizontalSizeClass];
  v11 = [v16 traitCollection];
  if (v10 != [v11 horizontalSizeClass])
  {

    goto LABEL_7;
  }

  v12 = [v5 verticalSizeClass];
  v13 = [v16 traitCollection];
  v14 = [v13 verticalSizeClass];

  if (v12 != v14)
  {
LABEL_7:
    v15 = objc_loadWeakRetained((a1 + 32));
    [v15 _updateStatusButtons];
  }
}

- (EKUIEventStatusButtonsView)statusButtonsView
{
  statusButtonsView = self->_statusButtonsView;
  if (!statusButtonsView)
  {
    v4 = [EKUIEventStatusButtonsView alloc];
    _statusButtons = [(EKEventProposeNewTimeViewController *)self _statusButtons];
    v6 = [(EKUIEventStatusButtonsView *)v4 initWithFrame:_statusButtons actions:self delegate:1 options:1 textSizeMode:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    v7 = self->_statusButtonsView;
    self->_statusButtonsView = v6;

    [(EKUIEventStatusButtonsView *)self->_statusButtonsView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(EKUIEventStatusButtonsView *)self->_statusButtonsView setDisableButtonHighlights:0];
    statusButtonsView = self->_statusButtonsView;
  }

  return statusButtonsView;
}

- (SingleToolbarItemContainerView)statusButtonsContainerView
{
  statusButtonsContainerView = self->_statusButtonsContainerView;
  if (!statusButtonsContainerView)
  {
    v4 = [SingleToolbarItemContainerView alloc];
    v5 = [(SingleToolbarItemContainerView *)v4 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    v6 = self->_statusButtonsContainerView;
    self->_statusButtonsContainerView = v5;

    statusButtonsContainerView = self->_statusButtonsContainerView;
  }

  return statusButtonsContainerView;
}

- (void)_updateStatusButtons
{
  v49[4] = *MEMORY[0x1E69E9840];
  _statusButtons = [(EKEventProposeNewTimeViewController *)self _statusButtons];
  [(EKEventProposeNewTimeViewController *)self setStatusButtonsViewCachedFontSize:0.0];
  proposedStartDate = [(EKEventProposeNewTimeViewController *)self proposedStartDate];

  if (proposedStartDate)
  {
    navigationController = [(EKEventProposeNewTimeViewController *)self navigationController];
    [navigationController setToolbarHidden:0];

    v6 = MEMORY[0x1D38B98D0]();
    toolbarItems = [(EKEventProposeNewTimeViewController *)self toolbarItems];
    v8 = toolbarItems;
    if (!v6)
    {
      if (!toolbarItems || ([(EKEventProposeNewTimeViewController *)self statusButtonsContainerView], v18 = objc_claimAutoreleasedReturnValue(), v18, v8, !v18))
      {
        statusButtonsContainerView = [(EKEventProposeNewTimeViewController *)self statusButtonsContainerView];
        statusButtonsView = [(EKEventProposeNewTimeViewController *)self statusButtonsView];
        [statusButtonsContainerView addSubview:statusButtonsView];
        v42 = MEMORY[0x1E696ACD8];
        leadingAnchor = [statusButtonsView leadingAnchor];
        leadingAnchor2 = [statusButtonsContainerView leadingAnchor];
        v45 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
        v49[0] = v45;
        trailingAnchor = [statusButtonsView trailingAnchor];
        trailingAnchor2 = [statusButtonsContainerView trailingAnchor];
        v41 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
        v49[1] = v41;
        topAnchor = [statusButtonsView topAnchor];
        topAnchor2 = [statusButtonsContainerView topAnchor];
        v22 = [topAnchor constraintEqualToAnchor:topAnchor2];
        v49[2] = v22;
        bottomAnchor = [statusButtonsView bottomAnchor];
        [statusButtonsContainerView bottomAnchor];
        v25 = v24 = _statusButtons;
        v26 = [bottomAnchor constraintEqualToAnchor:v25];
        v49[3] = v26;
        v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v49 count:4];
        [v42 activateConstraints:v27];

        _statusButtons = v24;
        v28 = [objc_alloc(MEMORY[0x1E69DC708]) initWithCustomView:statusButtonsContainerView];
        v48 = v28;
        v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v48 count:1];
        [(EKEventProposeNewTimeViewController *)self setToolbarItems:v29 animated:1];
      }

      navigationController2 = [(EKEventProposeNewTimeViewController *)self navigationController];
      toolbar = [navigationController2 toolbar];

      statusButtonsContainerView2 = [(EKEventProposeNewTimeViewController *)self statusButtonsContainerView];
      [statusButtonsContainerView2 setBoundsWithToolbar:toolbar];

      statusButtonsContainerView3 = [(EKEventProposeNewTimeViewController *)self statusButtonsContainerView];
      [statusButtonsContainerView3 frame];
      v34 = v33;
      statusButtonsContainerView4 = [(EKEventProposeNewTimeViewController *)self statusButtonsContainerView];
      [statusButtonsContainerView4 frame];
      v37 = v36;

      statusButtonsView2 = [(EKEventProposeNewTimeViewController *)self statusButtonsView];
      [statusButtonsView2 setFrame:{0.0, 0.0, v34, v37}];

      statusButtonsView3 = [(EKEventProposeNewTimeViewController *)self statusButtonsView];
      [statusButtonsView3 setActions:_statusButtons];

      goto LABEL_14;
    }

    if (!v8)
    {
      statusButtonsView4 = [(EKEventProposeNewTimeViewController *)self statusButtonsView];
      toolbar = [statusButtonsView4 statusButtons];

      v11 = objc_opt_new();
      if ([toolbar count])
      {
        v12 = 0;
        do
        {
          v13 = objc_alloc(MEMORY[0x1E69DC708]);
          v14 = [toolbar objectAtIndexedSubscript:v12];
          v15 = [v13 initWithCustomView:v14];

          [v11 addObject:v15];
          ++v12;
        }

        while ([toolbar count] > v12);
      }

      [(EKEventProposeNewTimeViewController *)self setToolbarItems:v11 animated:1];

LABEL_14:
    }
  }

  else
  {
    toolbarItems2 = [(EKEventProposeNewTimeViewController *)self toolbarItems];

    if (toolbarItems2)
    {
      navigationController3 = [(EKEventProposeNewTimeViewController *)self navigationController];
      [navigationController3 setToolbarHidden:1];

      [(EKEventProposeNewTimeViewController *)self setToolbarItems:0 animated:1];
    }
  }
}

- (void)loadView
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel__eventModified_ name:*MEMORY[0x1E6966918] object:self->_event];
  [defaultCenter addObserver:self selector:sel__fontSizeDefinitionsChanged_ name:*MEMORY[0x1E69DDC48] object:0];
  v3 = [EKUIEventInviteesView alloc];
  v4 = [(EKUIEventInviteesView *)v3 initWithFrame:2 style:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  [(EKUIEventInviteesView *)v4 setDelegate:self];
  [(EKUIEventInviteesView *)v4 setDataSource:self];
  [(EKEventProposeNewTimeViewController *)self setTableView:v4];
  [(EKEventProposeNewTimeViewController *)self resetBackgroundColor];
}

- (void)resetBackgroundColor
{
  isPresentedInsidePopover = [(UIViewController *)self isPresentedInsidePopover];
  tableView = [(EKEventProposeNewTimeViewController *)self tableView];
  if (isPresentedInsidePopover)
  {
    [MEMORY[0x1E69DC888] clearColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] systemGroupedBackgroundColor];
  }
  v4 = ;
  [tableView setBackgroundColor:v4];
}

- (void)viewDidLoad
{
  v152 = *MEMORY[0x1E69E9840];
  v145.receiver = self;
  v145.super_class = EKEventProposeNewTimeViewController;
  [(EKEventProposeNewTimeViewController *)&v145 viewDidLoad];
  v3 = EventKitUIBundle();
  v4 = [v3 localizedStringForKey:@"Propose New Time" value:&stru_1F4EF6790 table:0];
  [(EKEventProposeNewTimeViewController *)self setTitle:v4];

  event = [(EKEventProposeNewTimeViewController *)self event];
  title = [event title];
  navigationItem = [(EKEventProposeNewTimeViewController *)self navigationItem];
  [navigationItem setSubtitle:title];

  objc_initWeak(&location, self);
  v8 = objc_alloc_init(EKEventDateEditItem);
  [(EKEventProposeNewTimeViewController *)self setProposeTimeItem:v8];

  proposeTimeItem = [(EKEventProposeNewTimeViewController *)self proposeTimeItem];
  [proposeTimeItem setProposedTime:1];

  proposeTimeItem2 = [(EKEventProposeNewTimeViewController *)self proposeTimeItem];
  event2 = [(EKEventProposeNewTimeViewController *)self event];
  event3 = [(EKEventProposeNewTimeViewController *)self event];
  eventStore = [event3 eventStore];
  [proposeTimeItem2 setCalendarItem:event2 store:eventStore];

  proposeTimeItem3 = [(EKEventProposeNewTimeViewController *)self proposeTimeItem];
  [proposeTimeItem3 setDelegate:self];

  proposeTimeItem4 = [(EKEventProposeNewTimeViewController *)self proposeTimeItem];
  [proposeTimeItem4 setEventDateEditItemDelegate:self];

  v16 = objc_alloc_init(EKUIInviteesViewOriginalConflictSection);
  [(EKEventProposeNewTimeViewController *)self setOriginalConflictSection:v16];

  event4 = [(EKEventProposeNewTimeViewController *)self event];
  startTimeZone = [event4 startTimeZone];
  originalConflictSection = [(EKEventProposeNewTimeViewController *)self originalConflictSection];
  [originalConflictSection setTimeZone:startTimeZone];

  v20 = EventKitUIBundle();
  v21 = [v20 localizedStringForKey:@"Original Time" value:&stru_1F4EF6790 table:0];
  originalConflictSection2 = [(EKEventProposeNewTimeViewController *)self originalConflictSection];
  [originalConflictSection2 setTitle:v21];

  v23 = objc_alloc_init(EKUIInviteesViewAllInviteesCanAttendSection);
  [(EKEventProposeNewTimeViewController *)self setAllInviteesCanAttendSection:v23];

  event5 = [(EKEventProposeNewTimeViewController *)self event];
  startTimeZone2 = [event5 startTimeZone];
  allInviteesCanAttendSection = [(EKEventProposeNewTimeViewController *)self allInviteesCanAttendSection];
  [allInviteesCanAttendSection setTimeZone:startTimeZone2];

  tableView = [(EKEventProposeNewTimeViewController *)self tableView];
  if (EKUICatalyst())
  {
    [tableView setSeparatorStyle:1];
  }

  v142 = 0u;
  v143 = 0u;
  v140 = 0u;
  v141 = 0u;
  event6 = [(EKEventProposeNewTimeViewController *)self event];
  attendees = [event6 attendees];

  v30 = [attendees countByEnumeratingWithState:&v140 objects:v151 count:16];
  if (v30)
  {
    v31 = *v141;
    while (2)
    {
      for (i = 0; i != v30; ++i)
      {
        if (*v141 != v31)
        {
          objc_enumerationMutation(attendees);
        }

        v33 = *(*(&v140 + 1) + 8 * i);
        if (([v33 isCurrentUser] & 1) == 0 && objc_msgSend(v33, "participantRole") != 3)
        {

          v34 = objc_alloc_init(EKUIInviteesViewSomeInviteesCanAttendSection);
          [(EKEventProposeNewTimeViewController *)self setSomeInviteesCanAttendSection:v34];

          attendees = [(EKEventProposeNewTimeViewController *)self event];
          startTimeZone3 = [attendees startTimeZone];
          someInviteesCanAttendSection = [(EKEventProposeNewTimeViewController *)self someInviteesCanAttendSection];
          [someInviteesCanAttendSection setTimeZone:startTimeZone3];

          v96 = 1;
          goto LABEL_14;
        }
      }

      v30 = [attendees countByEnumeratingWithState:&v140 objects:v151 count:16];
      if (v30)
      {
        continue;
      }

      break;
    }
  }

  v96 = 0;
LABEL_14:

  v37 = objc_alloc_init(EKUIInviteesViewAvailabilitySection);
  [(EKEventProposeNewTimeViewController *)self setViewAvailabilitySection:v37];

  viewAvailabilitySection = [(EKEventProposeNewTimeViewController *)self viewAvailabilitySection];
  [viewAvailabilitySection setIsForAttendeeProposedTime:1];

  viewAvailabilitySection2 = [(EKEventProposeNewTimeViewController *)self viewAvailabilitySection];
  event7 = [(EKEventProposeNewTimeViewController *)self event];
  [viewAvailabilitySection2 updateWithEvent:event7];

  v138[0] = MEMORY[0x1E69E9820];
  v138[1] = 3221225472;
  v138[2] = __50__EKEventProposeNewTimeViewController_viewDidLoad__block_invoke;
  v138[3] = &unk_1E843F080;
  objc_copyWeak(&v139, &location);
  viewAvailabilitySection3 = [(EKEventProposeNewTimeViewController *)self viewAvailabilitySection];
  [viewAvailabilitySection3 setViewAvailabilityTapped:v138];

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __50__EKEventProposeNewTimeViewController_viewDidLoad__block_invoke_2;
  aBlock[3] = &unk_1E843F0A8;
  objc_copyWeak(&v137, &location);
  v42 = tableView;
  v136 = v42;
  v43 = _Block_copy(aBlock);
  v133[0] = MEMORY[0x1E69E9820];
  v133[1] = 3221225472;
  v133[2] = __50__EKEventProposeNewTimeViewController_viewDidLoad__block_invoke_46;
  v133[3] = &unk_1E843F0D0;
  objc_copyWeak(&v134, &location);
  v44 = _Block_copy(v133);
  v131[0] = MEMORY[0x1E69E9820];
  v131[1] = 3221225472;
  v131[2] = __50__EKEventProposeNewTimeViewController_viewDidLoad__block_invoke_49;
  v131[3] = &unk_1E843F0F8;
  objc_copyWeak(&v132, &location);
  v131[4] = self;
  v45 = _Block_copy(v131);
  v129[0] = MEMORY[0x1E69E9820];
  v129[1] = 3221225472;
  v129[2] = __50__EKEventProposeNewTimeViewController_viewDidLoad__block_invoke_51;
  v129[3] = &unk_1E843F120;
  v46 = v42;
  v130 = v46;
  v98 = _Block_copy(v129);
  originalConflictSection3 = [(EKEventProposeNewTimeViewController *)self originalConflictSection];
  availabilitySearcher = [(EKEventProposeNewTimeViewController *)self availabilitySearcher];
  [originalConflictSection3 setAvailabilitySearcher:availabilitySearcher];

  v126[0] = MEMORY[0x1E69E9820];
  v126[1] = 3221225472;
  v126[2] = __50__EKEventProposeNewTimeViewController_viewDidLoad__block_invoke_53;
  v126[3] = &unk_1E843F148;
  objc_copyWeak(&v128, &location);
  v49 = v44;
  v127 = v49;
  originalConflictSection4 = [(EKEventProposeNewTimeViewController *)self originalConflictSection];
  [originalConflictSection4 setShowPreviewOfEventAtTime:v126];

  v123[0] = MEMORY[0x1E69E9820];
  v123[1] = 3221225472;
  v123[2] = __50__EKEventProposeNewTimeViewController_viewDidLoad__block_invoke_2_55;
  v123[3] = &unk_1E843F170;
  v51 = v43;
  v124 = v51;
  objc_copyWeak(&v125, &location);
  originalConflictSection5 = [(EKEventProposeNewTimeViewController *)self originalConflictSection];
  [originalConflictSection5 setTableViewCellHook:v123];

  v120[0] = MEMORY[0x1E69E9820];
  v120[1] = 3221225472;
  v120[2] = __50__EKEventProposeNewTimeViewController_viewDidLoad__block_invoke_3;
  v120[3] = &unk_1E843F198;
  v53 = v45;
  v121 = v53;
  objc_copyWeak(&v122, &location);
  originalConflictSection6 = [(EKEventProposeNewTimeViewController *)self originalConflictSection];
  [originalConflictSection6 setNewTimeChosen:v120];

  allInviteesCanAttendSection2 = [(EKEventProposeNewTimeViewController *)self allInviteesCanAttendSection];
  availabilitySearcher2 = [(EKEventProposeNewTimeViewController *)self availabilitySearcher];
  [allInviteesCanAttendSection2 setAvailabilitySearcher:availabilitySearcher2];

  v118[0] = MEMORY[0x1E69E9820];
  v118[1] = 3221225472;
  v118[2] = __50__EKEventProposeNewTimeViewController_viewDidLoad__block_invoke_4;
  v118[3] = &unk_1E843F1C0;
  v93 = v49;
  v119 = v93;
  allInviteesCanAttendSection3 = [(EKEventProposeNewTimeViewController *)self allInviteesCanAttendSection];
  [allInviteesCanAttendSection3 setShowPreviewOfEventAtTime:v118];

  v115[0] = MEMORY[0x1E69E9820];
  v115[1] = 3221225472;
  v115[2] = __50__EKEventProposeNewTimeViewController_viewDidLoad__block_invoke_5;
  v115[3] = &unk_1E843F170;
  v92 = v51;
  v116 = v92;
  objc_copyWeak(&v117, &location);
  allInviteesCanAttendSection4 = [(EKEventProposeNewTimeViewController *)self allInviteesCanAttendSection];
  [allInviteesCanAttendSection4 setTableViewCellHook:v115];

  v112[0] = MEMORY[0x1E69E9820];
  v112[1] = 3221225472;
  v112[2] = __50__EKEventProposeNewTimeViewController_viewDidLoad__block_invoke_6;
  v112[3] = &unk_1E843F198;
  v91 = v53;
  v113 = v91;
  objc_copyWeak(&v114, &location);
  allInviteesCanAttendSection5 = [(EKEventProposeNewTimeViewController *)self allInviteesCanAttendSection];
  [allInviteesCanAttendSection5 setNewTimeChosen:v112];

  allInviteesCanAttendSection6 = [(EKEventProposeNewTimeViewController *)self allInviteesCanAttendSection];
  [allInviteesCanAttendSection6 setShowMoreAlternativeTimesTapped:v98];

  if (v96)
  {
    someInviteesCanAttendSection2 = [(EKEventProposeNewTimeViewController *)self someInviteesCanAttendSection];
    availabilitySearcher3 = [(EKEventProposeNewTimeViewController *)self availabilitySearcher];
    [someInviteesCanAttendSection2 setAvailabilitySearcher:availabilitySearcher3];

    v110[0] = MEMORY[0x1E69E9820];
    v110[1] = 3221225472;
    v110[2] = __50__EKEventProposeNewTimeViewController_viewDidLoad__block_invoke_7;
    v110[3] = &unk_1E843F1C0;
    v111 = v93;
    someInviteesCanAttendSection3 = [(EKEventProposeNewTimeViewController *)self someInviteesCanAttendSection];
    [someInviteesCanAttendSection3 setShowPreviewOfEventAtTime:v110];

    v107[0] = MEMORY[0x1E69E9820];
    v107[1] = 3221225472;
    v107[2] = __50__EKEventProposeNewTimeViewController_viewDidLoad__block_invoke_8;
    v107[3] = &unk_1E843F170;
    v108 = v92;
    objc_copyWeak(&v109, &location);
    someInviteesCanAttendSection4 = [(EKEventProposeNewTimeViewController *)self someInviteesCanAttendSection];
    [someInviteesCanAttendSection4 setTableViewCellHook:v107];

    v104[0] = MEMORY[0x1E69E9820];
    v104[1] = 3221225472;
    v104[2] = __50__EKEventProposeNewTimeViewController_viewDidLoad__block_invoke_9;
    v104[3] = &unk_1E843F198;
    v105 = v91;
    objc_copyWeak(&v106, &location);
    someInviteesCanAttendSection5 = [(EKEventProposeNewTimeViewController *)self someInviteesCanAttendSection];
    [someInviteesCanAttendSection5 setNewTimeChosen:v104];

    someInviteesCanAttendSection6 = [(EKEventProposeNewTimeViewController *)self someInviteesCanAttendSection];
    [someInviteesCanAttendSection6 setShowMoreAlternativeTimesTapped:v98];

    objc_destroyWeak(&v106);
    objc_destroyWeak(&v109);
  }

  array = [MEMORY[0x1E695DF70] array];
  viewAvailabilitySection4 = [(EKEventProposeNewTimeViewController *)self viewAvailabilitySection];
  v150[0] = viewAvailabilitySection4;
  originalConflictSection7 = [(EKEventProposeNewTimeViewController *)self originalConflictSection];
  v150[1] = originalConflictSection7;
  allInviteesCanAttendSection7 = [(EKEventProposeNewTimeViewController *)self allInviteesCanAttendSection];
  v150[2] = allInviteesCanAttendSection7;
  v70 = [MEMORY[0x1E695DEC8] arrayWithObjects:v150 count:3];
  [array addObjectsFromArray:v70];

  if (v96)
  {
    someInviteesCanAttendSection7 = [(EKEventProposeNewTimeViewController *)self someInviteesCanAttendSection];
    [array addObject:someInviteesCanAttendSection7];
  }

  [(EKEventProposeNewTimeViewController *)self setSections:array];
  v72 = kEKUILogInviteesHandle;
  if (os_log_type_enabled(v72, OS_LOG_TYPE_DEBUG))
  {
    sections = [(EKEventProposeNewTimeViewController *)self sections];
    *buf = 138412290;
    v149 = sections;
    _os_log_impl(&dword_1D3400000, v72, OS_LOG_TYPE_DEBUG, "Set up sections: [%@].", buf, 0xCu);
  }

  v102 = 0u;
  v103 = 0u;
  v100 = 0u;
  v101 = 0u;
  sections2 = [(EKEventProposeNewTimeViewController *)self sections];
  v75 = [sections2 countByEnumeratingWithState:&v100 objects:v147 count:16];
  if (v75)
  {
    v76 = *v101;
    do
    {
      for (j = 0; j != v75; ++j)
      {
        if (*v101 != v76)
        {
          objc_enumerationMutation(sections2);
        }

        [*(*(&v100 + 1) + 8 * j) reloadAndRegisterReusableCellsWithTableView:v46];
      }

      v75 = [sections2 countByEnumeratingWithState:&v100 objects:v147 count:16];
    }

    while (v75);
  }

  [(EKEventProposeNewTimeViewController *)self _updateStatusButtons];
  v78 = objc_alloc_init(MEMORY[0x1E69DC638]);
  [(EKEventProposeNewTimeViewController *)self setAvailabilitySearcherRunningSpinner:v78];

  availabilitySearcherRunningSpinner = [(EKEventProposeNewTimeViewController *)self availabilitySearcherRunningSpinner];
  [availabilitySearcherRunningSpinner setTranslatesAutoresizingMaskIntoConstraints:0];

  view = [(EKEventProposeNewTimeViewController *)self view];
  availabilitySearcherRunningSpinner2 = [(EKEventProposeNewTimeViewController *)self availabilitySearcherRunningSpinner];
  [view addSubview:availabilitySearcherRunningSpinner2];

  v90 = MEMORY[0x1E696ACD8];
  availabilitySearcherRunningSpinner3 = [(EKEventProposeNewTimeViewController *)self availabilitySearcherRunningSpinner];
  centerXAnchor = [availabilitySearcherRunningSpinner3 centerXAnchor];
  view2 = [(EKEventProposeNewTimeViewController *)self view];
  centerXAnchor2 = [view2 centerXAnchor];
  v83 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v146[0] = v83;
  availabilitySearcherRunningSpinner4 = [(EKEventProposeNewTimeViewController *)self availabilitySearcherRunningSpinner];
  centerYAnchor = [availabilitySearcherRunningSpinner4 centerYAnchor];
  view3 = [(EKEventProposeNewTimeViewController *)self view];
  centerYAnchor2 = [view3 centerYAnchor];
  v88 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v146[1] = v88;
  v89 = [MEMORY[0x1E695DEC8] arrayWithObjects:v146 count:2];
  [v90 activateConstraints:v89];

  [(EKEventProposeNewTimeViewController *)self _refreshIfNeeded];
  objc_destroyWeak(&v114);

  objc_destroyWeak(&v117);
  objc_destroyWeak(&v122);

  objc_destroyWeak(&v125);
  objc_destroyWeak(&v128);

  objc_destroyWeak(&v132);
  objc_destroyWeak(&v134);

  objc_destroyWeak(&v137);
  objc_destroyWeak(&v139);

  objc_destroyWeak(&location);
}

void __50__EKEventProposeNewTimeViewController_viewDidLoad__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained viewAvailabilityTapped];
}

id __50__EKEventProposeNewTimeViewController_viewDidLoad__block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = v5;
  if (a3 < 0)
  {
    v11 = kEKUILogInviteesHandle;
    if (os_log_type_enabled(kEKUILogInviteesHandle, OS_LOG_TYPE_ERROR))
    {
      v12 = MEMORY[0x1E696AD98];
      v13 = v11;
      v14 = [v12 numberWithInteger:a3];
      v20 = 138412290;
      v21 = v14;
      _os_log_impl(&dword_1D3400000, v13, OS_LOG_TYPE_ERROR, "Invalid row index given: [%@].  Will not attempt to acquire a cell.", &v20, 0xCu);
    }
  }

  else if ([v5 sectionShouldBeShown])
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v8 = [WeakRetained _indexForSection:v6];

    if (v8 != -1)
    {
      v9 = [MEMORY[0x1E696AC88] indexPathForRow:a3 inSection:v8];
      v10 = [*(a1 + 32) cellForRowAtIndexPath:v9];

      goto LABEL_10;
    }

    v15 = kEKUILogInviteesHandle;
    if (os_log_type_enabled(kEKUILogInviteesHandle, OS_LOG_TYPE_ERROR))
    {
      v16 = MEMORY[0x1E696AD98];
      v17 = v15;
      v18 = [v16 numberWithInteger:-1];
      v20 = 138412290;
      v21 = v18;
      _os_log_impl(&dword_1D3400000, v17, OS_LOG_TYPE_ERROR, "Invalid section index found: [%@].  Will not attempt to acquire a cell.", &v20, 0xCu);
    }
  }

  v10 = 0;
LABEL_10:

  return v10;
}

void __50__EKEventProposeNewTimeViewController_viewDidLoad__block_invoke_46(uint64_t a1, void *a2, void *a3, void *a4)
{
  v19 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v11 = kEKUILogInviteesHandle;
    if (os_log_type_enabled(kEKUILogInviteesHandle, OS_LOG_TYPE_DEBUG))
    {
      v13 = 138412802;
      v14 = v7;
      v15 = 2112;
      v16 = v8;
      v17 = 2112;
      v18 = v9;
      _os_log_impl(&dword_1D3400000, v11, OS_LOG_TYPE_DEBUG, "Showing preview of event.  Date to show: [%@].  Overridden start date: [%@]  Overridden start date: [%@]", &v13, 0x20u);
    }

    v12 = [[EKDayPreviewController alloc] initWithDate:v7 event:WeakRetained[137] overriddenEventStartDate:v8 overriddenEventEndDate:v9 model:WeakRetained[130]];
    [(EKDayPreviewController *)v12 setStyle:2];
    [WeakRetained _pushViewController:v12 animated:1];
  }
}

void __50__EKEventProposeNewTimeViewController_viewDidLoad__block_invoke_49(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v24 = *MEMORY[0x1E69E9840];
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = kEKUILogInviteesHandle;
  if (os_log_type_enabled(kEKUILogInviteesHandle, OS_LOG_TYPE_DEBUG))
  {
    v20 = 138412546;
    v21 = v9;
    v22 = 2112;
    v23 = v10;
    _os_log_impl(&dword_1D3400000, v13, OS_LOG_TYPE_DEBUG, "Setting selected date.  Start date:[%@]  End date: [%@].", &v20, 0x16u);
  }

  [v11 clearCheckmark];
  [v12 clearCheckmark];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setProposedStartDate:v9];

  v15 = objc_loadWeakRetained((a1 + 40));
  v16 = [v15 proposeTimeItem];
  [v16 setPendingProposedTime:v9];

  v17 = objc_loadWeakRetained((a1 + 40));
  v18 = [v17 proposeTimeItem];
  [v18 refreshFromCalendarItemAndStore];

  v19 = objc_loadWeakRetained((a1 + 40));
  [v19 updateCustomBackButton];

  [*(a1 + 32) _updateStatusButtons];
}

void __50__EKEventProposeNewTimeViewController_viewDidLoad__block_invoke_51(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = kEKUILogInviteesHandle;
  if (os_log_type_enabled(kEKUILogInviteesHandle, OS_LOG_TYPE_DEBUG))
  {
    *v5 = 0;
    _os_log_impl(&dword_1D3400000, v4, OS_LOG_TYPE_DEBUG, "'Show more alternative times' tapped.", v5, 2u);
  }

  if ([v3 count])
  {
    [*(a1 + 32) reloadData];
  }
}

void __50__EKEventProposeNewTimeViewController_viewDidLoad__block_invoke_53(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v14 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = [WeakRetained event];
  if ([v7 isStartDateDirty])
  {
    v8 = v14;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  v10 = objc_loadWeakRetained((a1 + 40));
  v11 = [v10 event];
  if ([v11 isEndDateDirty])
  {
    v12 = v5;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  (*(*(a1 + 32) + 16))();
}

id __50__EKEventProposeNewTimeViewController_viewDidLoad__block_invoke_2_55(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = [WeakRetained originalConflictSection];
  v6 = (*(v3 + 16))(v3, v5, a2);

  return v6;
}

void __50__EKEventProposeNewTimeViewController_viewDidLoad__block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = [WeakRetained allInviteesCanAttendSection];
  v9 = objc_loadWeakRetained((a1 + 40));
  v10 = [v9 someInviteesCanAttendSection];
  (*(v5 + 16))(v5, v7, v6, v8, v10);
}

id __50__EKEventProposeNewTimeViewController_viewDidLoad__block_invoke_5(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = [WeakRetained allInviteesCanAttendSection];
  v6 = (*(v3 + 16))(v3, v5, a2);

  return v6;
}

void __50__EKEventProposeNewTimeViewController_viewDidLoad__block_invoke_6(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = [WeakRetained originalConflictSection];
  v9 = objc_loadWeakRetained((a1 + 40));
  v10 = [v9 someInviteesCanAttendSection];
  (*(v5 + 16))(v5, v7, v6, v8, v10);
}

id __50__EKEventProposeNewTimeViewController_viewDidLoad__block_invoke_8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = [WeakRetained someInviteesCanAttendSection];
  v6 = (*(v3 + 16))(v3, v5, a2);

  return v6;
}

void __50__EKEventProposeNewTimeViewController_viewDidLoad__block_invoke_9(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = [WeakRetained originalConflictSection];
  v9 = objc_loadWeakRetained((a1 + 40));
  v10 = [v9 allInviteesCanAttendSection];
  (*(v5 + 16))(v5, v7, v6, v8, v10);
}

- (BOOL)proposedTimeChanged
{
  event = [(EKEventProposeNewTimeViewController *)self event];
  proposedStartDate = [event proposedStartDate];

  if (proposedStartDate)
  {
    event2 = [(EKEventProposeNewTimeViewController *)self event];
    proposedStartDate2 = [event2 proposedStartDate];
    proposedStartDate3 = [(EKEventProposeNewTimeViewController *)self proposedStartDate];
    v8 = [proposedStartDate2 isEqualToDate:proposedStartDate3];
  }

  else
  {
    event2 = [(EKEventProposeNewTimeViewController *)self proposedStartDate];
    if (!event2)
    {
      v10 = 0;
      goto LABEL_6;
    }

    proposedStartDate2 = [(EKEventProposeNewTimeViewController *)self proposedStartDate];
    proposedStartDate3 = [(EKEventProposeNewTimeViewController *)self event];
    startDate = [proposedStartDate3 startDate];
    v8 = [proposedStartDate2 isEqualToDate:startDate];
  }

  v10 = v8 ^ 1;

LABEL_6:
  return v10;
}

- (void)updateCustomBackButton
{
  array = [MEMORY[0x1E695DF70] array];
  if ([(EKEventProposeNewTimeViewController *)self proposedTimeChanged])
  {
    v3 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:0 target:self action:sel__dismiss_];
    navigationItem = [(EKEventProposeNewTimeViewController *)self navigationItem];
    [navigationItem setLeftBarButtonItem:v3];

    v5 = +[_TtC10EventKitUI22EKRemoteUIButtonAction Done];
    [array addObject:v5];
  }

  remoteUIDelegate = [(EKEventProposeNewTimeViewController *)self remoteUIDelegate];
  [remoteUIDelegate viewController:self didChangeLeftBarButtons:MEMORY[0x1E695E0F0] rightBarButtons:array];
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = EKEventProposeNewTimeViewController;
  [(EKEventProposeNewTimeViewController *)&v4 viewWillAppear:appear];
  [(EKEventProposeNewTimeViewController *)self updateCustomBackButton];
  [(EKEventProposeNewTimeViewController *)self _refreshIfNeeded];
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  [(EKEventProposeNewTimeViewController *)self setViewIsVisible:1];
  v5.receiver = self;
  v5.super_class = EKEventProposeNewTimeViewController;
  [(EKEventProposeNewTimeViewController *)&v5 viewDidAppear:appearCopy];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = EKEventProposeNewTimeViewController;
  [(EKEventProposeNewTimeViewController *)&v4 viewWillDisappear:disappear];
  [(EKEventProposeNewTimeViewController *)self setViewIsVisible:0];
}

- (unint64_t)supportedInterfaceOrientations
{
  view = [(EKEventProposeNewTimeViewController *)self view];
  if (EKUICurrentWidthSizeClassIsCompactInViewHierarchy(view))
  {
    v3 = 26;
  }

  else
  {
    v3 = 30;
  }

  return v3;
}

- (void)viewAvailabilityTapped
{
  proposedStartDate = [(EKEventProposeNewTimeViewController *)self proposedStartDate];
  proposedStartDate2 = [(EKEventProposeNewTimeViewController *)self proposedStartDate];
  event = [(EKEventProposeNewTimeViewController *)self event];
  [event duration];
  v5 = [proposedStartDate2 dateByAddingTimeInterval:?];

  v6 = [EKUIAvailabilityViewController alloc];
  event2 = [(EKEventProposeNewTimeViewController *)self event];
  v8 = [(EKUIAvailabilityViewController *)v6 initWithEvent:event2 isAttendeeProposeTime:1 proposedStartDate:proposedStartDate proposedEndDate:v5];

  [(EKEditItemViewController *)v8 setEditDelegate:self];
  [(EKUIAvailabilityViewController *)v8 setFromDetail:0];
  v9 = [[EKUIAvailabilityNavigationController alloc] initWithRootViewController:v8];
  [(EKUIAvailabilityViewController *)v8 preferredContentSize];
  [(EKUIAvailabilityNavigationController *)v9 setPreferredContentSize:?];
  [(EKEventProposeNewTimeViewController *)self _presentViewController:v9];
}

- (int64_t)numberOfSectionsInTableView:(id)view
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = self->_sections;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    v7 = 1;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v7 += [*(*(&v10 + 1) + 8 * i) sectionShouldBeShown];
      }

      v5 = [(NSArray *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  if (section)
  {
    proposeTimeItem = [(EKEventProposeNewTimeViewController *)self _sectionForIndex:section];
    numberOfRows = [proposeTimeItem numberOfRows];
  }

  else
  {
    proposeTimeItem = [(EKEventProposeNewTimeViewController *)self proposeTimeItem];
    numberOfRows = [proposeTimeItem numberOfSubitems];
  }

  v6 = numberOfRows;

  return v6;
}

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  if (section)
  {
    v4 = [(EKEventProposeNewTimeViewController *)self _sectionForIndex:section];
    [v4 headerTitle];
  }

  else
  {
    v4 = EventKitUIBundle();
    [v4 localizedStringForKey:@"Proposed Start Time" value:&stru_1F4EF6790 table:0];
  }
  v5 = ;

  return v5;
}

- (void)tableView:(id)view willDisplayHeaderView:(id)headerView forSection:(int64_t)section
{
  viewCopy = view;
  headerViewCopy = headerView;
  if (EKUICatalyst())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = headerViewCopy;
      backgroundColor = [viewCopy backgroundColor];
      contentView = [v7 contentView];

      [contentView setBackgroundColor:backgroundColor];
    }
  }
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  if ([pathCopy section])
  {
    proposeTimeItem = -[EKEventProposeNewTimeViewController _sectionForIndex:](self, "_sectionForIndex:", [pathCopy section]);
    v9 = [proposeTimeItem cellForIndexPath:pathCopy inTableView:viewCopy];
  }

  else
  {
    proposeTimeItem = [(EKEventProposeNewTimeViewController *)self proposeTimeItem];
    v10 = [pathCopy row];

    v9 = [proposeTimeItem cellForSubitemAtIndex:v10];
  }

  if (EKUICatalyst())
  {
    backgroundColor = [viewCopy backgroundColor];
    [v9 setBackgroundColor:backgroundColor];
  }

  return v9;
}

- (BOOL)tableView:(id)view canEditRowAtIndexPath:(id)path
{
  pathCopy = path;
  if ([pathCopy section])
  {
    v6 = -[EKEventProposeNewTimeViewController _sectionForIndex:](self, "_sectionForIndex:", [pathCopy section]);
    v7 = [v6 canEditRow:pathCopy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path
{
  pathCopy = path;
  if ([pathCopy section])
  {
    v7 = -[EKEventProposeNewTimeViewController _sectionForIndex:](self, "_sectionForIndex:", [pathCopy section]);
    [v7 commitEditingStyle:style forRow:pathCopy];
  }
}

- (double)tableView:(id)view estimatedHeightForRowAtIndexPath:(id)path
{
  pathCopy = path;
  if ([pathCopy section])
  {
    v6 = -[EKEventProposeNewTimeViewController _sectionForIndex:](self, "_sectionForIndex:", [pathCopy section]);
    [v6 estimatedHeightForRow:pathCopy];
    v8 = v7;
  }

  else
  {
    v8 = *MEMORY[0x1E69DE3D0];
  }

  return v8;
}

- (double)tableView:(id)view heightForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  [viewCopy rowHeight];
  v9 = v8;
  if (![pathCopy section])
  {
    [viewCopy bounds];
    v11 = v10;
    [viewCopy _backgroundInset];
    v13 = v11 + v12 * -2.0;
    proposeTimeItem = [(EKEventProposeNewTimeViewController *)self proposeTimeItem];
    [proposeTimeItem defaultCellHeightForSubitemAtIndex:objc_msgSend(pathCopy forWidth:{"row"), v13}];
    v16 = v15;

    if (v16 > 0.0)
    {
      v9 = v16;
    }

    if (EKUIUnscaledCatalyst())
    {
      v9 = EKUIUnscaledCatalystTableRowHeightDefault();
    }
  }

  return v9;
}

- (id)tableView:(id)view willSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  if ([pathCopy section])
  {
    v6 = -[EKEventProposeNewTimeViewController _sectionForIndex:](self, "_sectionForIndex:", [pathCopy section]);
    v7 = [v6 canSelectRow:pathCopy];
    v8 = pathCopy;
    if ((v7 & 1) == 0)
    {

      v8 = 0;
    }

    v9 = v8;

    v10 = v9;
  }

  else
  {
    proposeTimeItem = [(EKEventProposeNewTimeViewController *)self proposeTimeItem];
    v12 = [proposeTimeItem editor:0 canSelectSubitem:{objc_msgSend(pathCopy, "row")}];

    v10 = 0;
    v9 = pathCopy;
    if (v12)
    {
      v9 = pathCopy;
      v10 = v9;
    }
  }

  return v10;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  if ([pathCopy section])
  {
    v7 = -[EKEventProposeNewTimeViewController _sectionForIndex:](self, "_sectionForIndex:", [pathCopy section]);
    [v7 selectRow:pathCopy];
  }

  else
  {
    v7 = [viewCopy cellForRowAtIndexPath:pathCopy];
    if ([v7 selectionStyle])
    {
      [viewCopy selectRowAtIndexPath:0 animated:1 scrollPosition:0];
      _popoverController = [(EKEventProposeNewTimeViewController *)self _popoverController];

      if (!_popoverController)
      {
        proposeTimeItem = [(EKEventProposeNewTimeViewController *)self proposeTimeItem];
        selectedResponder = [proposeTimeItem selectedResponder];
        [selectedResponder resignFirstResponder];
      }

      proposeTimeItem2 = [(EKEventProposeNewTimeViewController *)self proposeTimeItem];
      [proposeTimeItem2 editor:0 didSelectSubitem:{objc_msgSend(pathCopy, "row")}];
    }
  }

  [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
}

- (void)tableView:(id)view didDeselectRowAtIndexPath:(id)path
{
  pathCopy = path;
  if (![pathCopy section])
  {
    proposeTimeItem = [(EKEventProposeNewTimeViewController *)self proposeTimeItem];
    [proposeTimeItem editor:0 didDeselectSubitem:{objc_msgSend(pathCopy, "row")}];
  }
}

- (int64_t)tableView:(id)view editingStyleForRowAtIndexPath:(id)path
{
  pathCopy = path;
  if ([pathCopy section])
  {
    v6 = -[EKEventProposeNewTimeViewController _sectionForIndex:](self, "_sectionForIndex:", [pathCopy section]);
    v7 = [v6 editingStyleForRow:pathCopy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)editItemViewController:(id)controller didCompleteWithAction:(int)action
{
  v12 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  if (!action)
  {
    v8 = kEKUILogInviteesHandle;
    if (os_log_type_enabled(kEKUILogInviteesHandle, OS_LOG_TYPE_DEBUG))
    {
      v10 = 138412290;
      v11 = controllerCopy;
      _os_log_impl(&dword_1D3400000, v8, OS_LOG_TYPE_DEBUG, "The user cancelled out from this controller: [%@]", &v10, 0xCu);
    }

    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    modifiedStartDate = [controllerCopy modifiedStartDate];
    [(EKEventProposeNewTimeViewController *)self availabilityDateChangedTo:modifiedStartDate];

LABEL_7:
    [(EKEventProposeNewTimeViewController *)self _dismissPresentedViewControllerAnimated:1];
    goto LABEL_8;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    goto LABEL_7;
  }

  v9 = kEKUILogInviteesHandle;
  if (os_log_type_enabled(kEKUILogInviteesHandle, OS_LOG_TYPE_ERROR))
  {
    v10 = 138412290;
    v11 = controllerCopy;
    _os_log_impl(&dword_1D3400000, v9, OS_LOG_TYPE_ERROR, "Unrecognized controller completed: [%@]", &v10, 0xCu);
  }

LABEL_8:
}

- (void)availabilityDateChangedTo:(id)to
{
  toCopy = to;
  [(EKEventProposeNewTimeViewController *)self dateChangedTo:toCopy];
  proposeTimeItem = [(EKEventProposeNewTimeViewController *)self proposeTimeItem];
  [proposeTimeItem updateStartDateToDate:toCopy];
}

- (void)eventStatusButtonsView:(id)view didSelectAction:(int64_t)action sourceView:(id)sourceView sourceRect:(CGRect)rect appliesToAll:(BOOL)all ifCancelled:(id)cancelled
{
  v9 = [(EKEventProposeNewTimeViewController *)self event:view];
  [v9 setProposedStartDate:0];

  eKUI_editor = [(UIResponder *)self EKUI_editor];
  event = [(EKEventProposeNewTimeViewController *)self event];
  [eKUI_editor saveEvent:event span:0 error:0];

  if (CalSolariumEnabled())
  {
    [(EKEventProposeNewTimeViewController *)self _dismissPresentedViewControllerAnimated:1];
  }

  else
  {
    navigationController = [(EKEventProposeNewTimeViewController *)self navigationController];
    v12 = [navigationController popViewControllerAnimated:1];
  }
}

- (void)_dismiss:(id)_dismiss
{
  _dismissCopy = _dismiss;
  if ([(EKEventProposeNewTimeViewController *)self proposedTimeChanged])
  {
    event = [(EKEventProposeNewTimeViewController *)self event];
    serverSupportedProposeNewTime = [event serverSupportedProposeNewTime];

    event2 = [(EKEventProposeNewTimeViewController *)self event];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __48__EKEventProposeNewTimeViewController__dismiss___block_invoke;
    v14[3] = &unk_1E843F210;
    v16 = serverSupportedProposeNewTime;
    v14[4] = self;
    v15 = event2;
    v8 = *MEMORY[0x1E695F050];
    v9 = *(MEMORY[0x1E695F050] + 8);
    v10 = *(MEMORY[0x1E695F050] + 16);
    v11 = *(MEMORY[0x1E695F050] + 24);
    v12 = event2;
    v13 = [EKUISendInviteAlertController presentInviteAlertWithOptions:8 sourceView:0 sourceRect:_dismissCopy sourceItem:self viewController:v14 withCompletionHandler:v8, v9, v10, v11];
  }

  else if (CalSolariumEnabled())
  {
    [(EKEventProposeNewTimeViewController *)self _dismissPresentedViewControllerAnimated:1];
  }

  else
  {
    [(EKEventProposeNewTimeViewController *)self _popViewControllerAnimated:1];
  }
}

void __48__EKEventProposeNewTimeViewController__dismiss___block_invoke(uint64_t a1, int a2)
{
  v58[1] = *MEMORY[0x1E69E9840];
  if (a2 != 1)
  {
    if (a2)
    {
      return;
    }

    v3 = [*(a1 + 32) proposedStartDate];
    if (v3)
    {
      v4 = *(a1 + 48);

      if (v4 != 1)
      {
        v21 = [*(a1 + 40) organizer];
        v58[0] = v21;
        v49 = [MEMORY[0x1E695DEC8] arrayWithObjects:v58 count:1];

        if ([EKUIEmailCompositionManager canShowViewControllerForEvent:*(a1 + 40) withParticipantRecipients:v49])
        {
          v22 = EventKitUIBundle();
          v48 = [v22 localizedStringForKey:@"NEW TIME PROPOSAL:" value:&stru_1F4EF6790 table:0];

          v23 = MEMORY[0x1E696AEC0];
          v24 = EventKitUIBundle();
          v25 = [v24 localizedStringForKey:@"Can we move this event to <b>%@</b>?" value:&stru_1F4EF6790 table:0];
          v26 = MEMORY[0x1E6992F68];
          v27 = [*(a1 + 32) proposedStartDate];
          v28 = [*(a1 + 32) event];
          v29 = [v28 timeZone];
          v30 = [v26 longStringForDateAndTime:v27 inTimeZone:v29];
          v31 = [v23 localizedStringWithFormat:v25, v30];

          v32 = [[EKUIEmailCompositionManager alloc] initWithEvent:*(*(a1 + 32) + 1096) participantRecipients:v49 subjectPrefix:v48 bodyPrefix:v31];
          [*(a1 + 32) setMessageSendingManager:v32];

          v33 = [*(a1 + 32) EKUI_editor];
          v34 = [*(a1 + 32) messageSendingManager];
          objc_initWeak(&location, v34);

          objc_initWeak(&from, *(a1 + 32));
          v51[0] = MEMORY[0x1E69E9820];
          v51[1] = 3221225472;
          v51[2] = __48__EKEventProposeNewTimeViewController__dismiss___block_invoke_2;
          v51[3] = &unk_1E843F1E8;
          objc_copyWeak(&v54, &location);
          objc_copyWeak(&v55, &from);
          v52 = *(a1 + 40);
          v35 = v33;
          v53 = v35;
          v36 = [*(a1 + 32) messageSendingManager];
          [v36 setMessageSendingComplete:v51];

          v37 = [*(a1 + 32) messageSendingManager];
          v38 = [v37 viewController];
          [v38 setModalPresentationStyle:2];

          v39 = *(a1 + 32);
          v40 = [v39 messageSendingManager];
          v41 = [v40 viewController];
          [v39 _presentViewController:v41];

          objc_destroyWeak(&v55);
          objc_destroyWeak(&v54);
          objc_destroyWeak(&from);
          objc_destroyWeak(&location);
        }

        else
        {
          [*(a1 + 40) rollback];
          v42 = CalSolariumEnabled();
          v43 = *(a1 + 32);
          if (v42)
          {
            [v43 _dismissPresentedViewControllerAnimated:1];
          }

          else
          {
            [v43 _popViewControllerAnimated:1];
          }
        }

        return;
      }
    }

    v5 = [*(a1 + 32) event];
    if ([v5 participationStatus] != 2)
    {
      v6 = [*(a1 + 32) event];
      v7 = [v6 participationStatus];

      if (v7 == 4)
      {
LABEL_9:
        if (*(a1 + 48) == 1)
        {
          v9 = [*(a1 + 32) proposedStartDate];

          v10 = v9 == 0;
          v11 = MEMORY[0x1E6993410];
          v12 = [*(a1 + 32) event];
          v13 = [v12 responseComment];
          if (v10)
          {
            v14 = [v11 stringWithAutoCommentRemoved:v13];
            v15 = [*(a1 + 32) event];
            [v15 setResponseComment:v14];
          }

          else
          {
            v14 = [*(a1 + 32) proposedStartDate];
            v15 = [*(a1 + 32) event];
            v16 = [v15 timeZone];
            v17 = [v11 comment:v13 withInsertedAutoCommentForDate:v14 timeZone:v16];
            v18 = [*(a1 + 32) event];
            [v18 setResponseComment:v17];
          }
        }

        v44 = [*(a1 + 32) proposedStartDate];
        v45 = [*(a1 + 32) event];
        [v45 setProposedStartDate:v44];

        v50 = [*(a1 + 32) EKUI_editor];
        [v50 saveEvent:*(a1 + 40) span:0 error:0];
        v46 = CalSolariumEnabled();
        v47 = *(a1 + 32);
        if (v46)
        {
          [v47 _dismissPresentedViewControllerAnimated:1];
        }

        else
        {
          [v47 _popViewControllerAnimated:1];
        }

        return;
      }

      v8 = [*(a1 + 32) event];
      [v8 setInvitationStatus:0];

      v5 = [*(a1 + 32) event];
      [v5 setParticipationStatus:4];
    }

    goto LABEL_9;
  }

  [*(a1 + 40) rollback];
  v19 = CalSolariumEnabled();
  v20 = *(a1 + 32);
  if (v19)
  {

    [v20 _dismissPresentedViewControllerAnimated:1];
  }

  else
  {

    [v20 _popViewControllerAnimated:1];
  }
}

void __48__EKEventProposeNewTimeViewController__dismiss___block_invoke_2(id *a1, char a2)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v4 = objc_loadWeakRetained(a1 + 7);
  if (WeakRetained)
  {
    v5 = objc_loadWeakRetained(a1 + 6);

    if (v5)
    {
      if (a2)
      {
        [a1[5] saveEvent:a1[4] span:0 error:0];
      }

      else
      {
        [a1[4] rollback];
      }

      v6 = [WeakRetained viewController];
      v7 = [v6 presentingViewController];
      [v7 dismissViewControllerAnimated:1 completion:0];

      if (CalSolariumEnabled())
      {
        [v4 _dismissPresentedViewControllerAnimated:1];
      }

      else
      {
        [v4 _popViewControllerAnimated:1];
      }
    }
  }
}

- (void)_eventModified:(id)modified
{
  [(EKEventProposeNewTimeViewController *)self setResetConflictResolutionSections:1];
  if ([(EKEventProposeNewTimeViewController *)self viewIsVisible])
  {

    [(EKEventProposeNewTimeViewController *)self _refreshIfNeeded];
  }
}

- (void)_fontSizeDefinitionsChanged:(id)changed
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __67__EKEventProposeNewTimeViewController__fontSizeDefinitionsChanged___block_invoke;
  block[3] = &unk_1E843EC60;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __67__EKEventProposeNewTimeViewController__fontSizeDefinitionsChanged___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [*(a1 + 32) sections];
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      v6 = 0;
      do
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v10 + 1) + 8 * v6);
        v8 = [*(a1 + 32) tableView];
        [v7 reloadAndRegisterReusableCellsWithTableView:v8];

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  v9 = [*(a1 + 32) tableView];
  [v9 reloadData];
}

- (void)_popViewControllerAnimated:(BOOL)animated
{
  animatedCopy = animated;
  WeakRetained = objc_loadWeakRetained(&self->_navigationDelegate);
  v6 = WeakRetained;
  if (WeakRetained)
  {
    navigationController = WeakRetained;
  }

  else
  {
    navigationController = [(EKEventProposeNewTimeViewController *)self navigationController];
  }

  v8 = navigationController;

  if (objc_opt_respondsToSelector())
  {
    [v8 popViewControllerAnimated:animatedCopy];
  }
}

- (void)_pushViewController:(id)controller animated:(BOOL)animated
{
  animatedCopy = animated;
  controllerCopy = controller;
  WeakRetained = objc_loadWeakRetained(&self->_navigationDelegate);
  v7 = WeakRetained;
  if (WeakRetained)
  {
    navigationController = WeakRetained;
  }

  else
  {
    navigationController = [(EKEventProposeNewTimeViewController *)self navigationController];
  }

  v9 = navigationController;

  if (objc_opt_respondsToSelector())
  {
    [v9 pushViewController:controllerCopy animated:animatedCopy];
  }
}

- (void)_presentViewController:(id)controller
{
  controllerCopy = controller;
  WeakRetained = objc_loadWeakRetained(&self->_navigationDelegate);
  v6 = WeakRetained;
  if (WeakRetained)
  {
    v7 = WeakRetained;
  }

  else
  {
    v7 = [EKEditItemViewController preferredViewControllerForPresentationsFromViewController:self];
  }

  v8 = v7;

  [v8 presentViewController:controllerCopy animated:1 completion:0];
}

- (void)_dismissPresentedViewControllerAnimated:(BOOL)animated
{
  animatedCopy = animated;
  WeakRetained = objc_loadWeakRetained(&self->_navigationDelegate);
  v6 = WeakRetained;
  if (WeakRetained)
  {
    v7 = WeakRetained;
  }

  else
  {
    v7 = [EKEditItemViewController preferredViewControllerForPresentationsFromViewController:self];
  }

  v8 = v7;

  [v8 dismissViewControllerAnimated:animatedCopy completion:0];
}

+ (id)_participantsInArray:(id)array thatAreNotInArray:(id)inArray
{
  v31 = *MEMORY[0x1E69E9840];
  arrayCopy = array;
  inArrayCopy = inArray;
  v20 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (arrayCopy != inArrayCopy)
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v19 = arrayCopy;
    v7 = arrayCopy;
    v8 = [v7 countByEnumeratingWithState:&v25 objects:v30 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v26;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v26 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v25 + 1) + 8 * i);
          v21 = 0u;
          v22 = 0u;
          v23 = 0u;
          v24 = 0u;
          v13 = inArrayCopy;
          v14 = [v13 countByEnumeratingWithState:&v21 objects:v29 count:16];
          if (v14)
          {
            v15 = v14;
            v16 = *v22;
            while (2)
            {
              for (j = 0; j != v15; ++j)
              {
                if (*v22 != v16)
                {
                  objc_enumerationMutation(v13);
                }

                if ([v12 isEqualToParticipant:{*(*(&v21 + 1) + 8 * j), v19}])
                {

                  goto LABEL_17;
                }
              }

              v15 = [v13 countByEnumeratingWithState:&v21 objects:v29 count:16];
              if (v15)
              {
                continue;
              }

              break;
            }
          }

          [v20 addObject:v12];
LABEL_17:
          ;
        }

        v9 = [v7 countByEnumeratingWithState:&v25 objects:v30 count:16];
      }

      while (v9);
    }

    arrayCopy = v19;
  }

  return v20;
}

- (int64_t)_indexForSection:(id)section
{
  v20 = *MEMORY[0x1E69E9840];
  sectionCopy = section;
  if (sectionCopy)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    sections = [(EKEventProposeNewTimeViewController *)self sections];
    v6 = [sections countByEnumeratingWithState:&v14 objects:v19 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v15;
      v9 = 1;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(sections);
          }

          v11 = *(*(&v14 + 1) + 8 * i);
          if ([v11 sectionShouldBeShown])
          {
            if (v11 == sectionCopy)
            {
              goto LABEL_13;
            }

            ++v9;
          }
        }

        v7 = [sections countByEnumeratingWithState:&v14 objects:v19 count:16];
      }

      while (v7);
    }

    v9 = -1;
LABEL_13:
  }

  else
  {
    v12 = kEKUILogInviteesHandle;
    if (os_log_type_enabled(kEKUILogInviteesHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1D3400000, v12, OS_LOG_TYPE_ERROR, "No section given.  Will not try to find an index.", buf, 2u);
    }

    v9 = -1;
  }

  return v9;
}

- (id)_sectionForIndex:(unint64_t)index
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = self->_sections;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    v8 = 1;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        if ([v10 sectionShouldBeShown])
        {
          if (v8 == index)
          {
            v11 = v10;
            goto LABEL_13;
          }

          ++v8;
        }
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_13:

  return v11;
}

- (void)_refreshIfNeeded
{
  if ([(EKEventProposeNewTimeViewController *)self resetConflictResolutionSections])
  {
    [(EKEventProposeNewTimeViewController *)self setResetConflictResolutionSections:0];
    event = [(EKEventProposeNewTimeViewController *)self event];
    calendar = [event calendar];
    source = [calendar source];
    ownerAddresses = [source ownerAddresses];
    anyObject = [ownerAddresses anyObject];

    availabilitySearcher = [(EKEventProposeNewTimeViewController *)self availabilitySearcher];
    event2 = [(EKEventProposeNewTimeViewController *)self event];
    [availabilitySearcher resetWithEvent:event2 organizerAddressForNewlyScheduledEvent:anyObject];
  }
}

- (void)_searcherStateChanged:(int64_t)changed
{
  originalConflictSection = [(EKEventProposeNewTimeViewController *)self originalConflictSection];
  sectionShouldBeShown = [originalConflictSection sectionShouldBeShown];

  allInviteesCanAttendSection = [(EKEventProposeNewTimeViewController *)self allInviteesCanAttendSection];
  sectionShouldBeShown2 = [allInviteesCanAttendSection sectionShouldBeShown];

  someInviteesCanAttendSection = [(EKEventProposeNewTimeViewController *)self someInviteesCanAttendSection];
  sectionShouldBeShown3 = [someInviteesCanAttendSection sectionShouldBeShown];

  originalConflictSection2 = [(EKEventProposeNewTimeViewController *)self originalConflictSection];
  v55 = [(EKEventProposeNewTimeViewController *)self _indexForSection:originalConflictSection2];

  allInviteesCanAttendSection2 = [(EKEventProposeNewTimeViewController *)self allInviteesCanAttendSection];
  v56 = [(EKEventProposeNewTimeViewController *)self _indexForSection:allInviteesCanAttendSection2];

  someInviteesCanAttendSection2 = [(EKEventProposeNewTimeViewController *)self someInviteesCanAttendSection];
  v50 = [(EKEventProposeNewTimeViewController *)self _indexForSection:someInviteesCanAttendSection2];

  originalConflictSection3 = [(EKEventProposeNewTimeViewController *)self originalConflictSection];
  numberOfRows = [originalConflictSection3 numberOfRows];

  allInviteesCanAttendSection3 = [(EKEventProposeNewTimeViewController *)self allInviteesCanAttendSection];
  numberOfRows2 = [allInviteesCanAttendSection3 numberOfRows];

  someInviteesCanAttendSection3 = [(EKEventProposeNewTimeViewController *)self someInviteesCanAttendSection];
  numberOfRows3 = [someInviteesCanAttendSection3 numberOfRows];

  originalConflictSection4 = [(EKEventProposeNewTimeViewController *)self originalConflictSection];
  [originalConflictSection4 availabilitySearcherChangedState:changed];

  allInviteesCanAttendSection4 = [(EKEventProposeNewTimeViewController *)self allInviteesCanAttendSection];
  [allInviteesCanAttendSection4 availabilitySearcherChangedState:changed];

  someInviteesCanAttendSection4 = [(EKEventProposeNewTimeViewController *)self someInviteesCanAttendSection];
  changedCopy = changed;
  [someInviteesCanAttendSection4 availabilitySearcherChangedState:changed];

  originalConflictSection5 = [(EKEventProposeNewTimeViewController *)self originalConflictSection];
  sectionShouldBeShown4 = [originalConflictSection5 sectionShouldBeShown];

  allInviteesCanAttendSection5 = [(EKEventProposeNewTimeViewController *)self allInviteesCanAttendSection];
  sectionShouldBeShown5 = [allInviteesCanAttendSection5 sectionShouldBeShown];

  someInviteesCanAttendSection5 = [(EKEventProposeNewTimeViewController *)self someInviteesCanAttendSection];
  sectionShouldBeShown6 = [someInviteesCanAttendSection5 sectionShouldBeShown];

  originalConflictSection6 = [(EKEventProposeNewTimeViewController *)self originalConflictSection];
  v22 = [(EKEventProposeNewTimeViewController *)self _indexForSection:originalConflictSection6];

  allInviteesCanAttendSection6 = [(EKEventProposeNewTimeViewController *)self allInviteesCanAttendSection];
  v24 = [(EKEventProposeNewTimeViewController *)self _indexForSection:allInviteesCanAttendSection6];

  someInviteesCanAttendSection6 = [(EKEventProposeNewTimeViewController *)self someInviteesCanAttendSection];
  v47 = [(EKEventProposeNewTimeViewController *)self _indexForSection:someInviteesCanAttendSection6];

  originalConflictSection7 = [(EKEventProposeNewTimeViewController *)self originalConflictSection];
  numberOfRows4 = [originalConflictSection7 numberOfRows];

  allInviteesCanAttendSection7 = [(EKEventProposeNewTimeViewController *)self allInviteesCanAttendSection];
  numberOfRows5 = [allInviteesCanAttendSection7 numberOfRows];

  someInviteesCanAttendSection7 = [(EKEventProposeNewTimeViewController *)self someInviteesCanAttendSection];
  numberOfRows6 = [someInviteesCanAttendSection7 numberOfRows];

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __61__EKEventProposeNewTimeViewController__searcherStateChanged___block_invoke;
  aBlock[3] = &unk_1E843F238;
  aBlock[4] = self;
  v32 = _Block_copy(aBlock);
  tableView = [(EKEventProposeNewTimeViewController *)self tableView];
  [tableView beginUpdates];

  originalConflictSection8 = [(EKEventProposeNewTimeViewController *)self originalConflictSection];
  (*(v32 + 2))(v32, originalConflictSection8, sectionShouldBeShown, v55, numberOfRows, sectionShouldBeShown4, v22, numberOfRows4, 0);

  allInviteesCanAttendSection8 = [(EKEventProposeNewTimeViewController *)self allInviteesCanAttendSection];
  LOBYTE(v44) = 1;
  (*(v32 + 2))(v32, allInviteesCanAttendSection8, sectionShouldBeShown2, v56, numberOfRows2, sectionShouldBeShown5, v24, numberOfRows5, v44);

  someInviteesCanAttendSection8 = [(EKEventProposeNewTimeViewController *)self someInviteesCanAttendSection];

  if (someInviteesCanAttendSection8)
  {
    someInviteesCanAttendSection9 = [(EKEventProposeNewTimeViewController *)self someInviteesCanAttendSection];
    LOBYTE(v45) = 1;
    (*(v32 + 2))(v32, someInviteesCanAttendSection9, sectionShouldBeShown3, v50, numberOfRows3, sectionShouldBeShown6, v47, numberOfRows6, v45);
  }

  tableView2 = [(EKEventProposeNewTimeViewController *)self tableView];
  [tableView2 endUpdates];

  [(EKEventProposeNewTimeViewController *)self updateCheckmark];
  calendar = [(EKEvent *)self->_event calendar];
  source = [calendar source];
  constraints = [source constraints];
  supportsAvailabilityRequests = [constraints supportsAvailabilityRequests];

  if (supportsAvailabilityRequests)
  {
    if (changedCopy)
    {
      [(EKEventProposeNewTimeViewController *)self _cancelAvailabilitySpinnerTimer];
      availabilitySearcherRunningSpinner = [(EKEventProposeNewTimeViewController *)self availabilitySearcherRunningSpinner];
      [availabilitySearcherRunningSpinner stopAnimating];
    }

    else
    {
      [(EKEventProposeNewTimeViewController *)self _scheduleAvailabilitySpinnerTimer];
    }
  }
}

void __61__EKEventProposeNewTimeViewController__searcherStateChanged___block_invoke(uint64_t a1, void *a2, int a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8)
{
  v29 = *MEMORY[0x1E69E9840];
  v15 = a2;
  v16 = v15;
  if (a3 != a6)
  {
    if (a3)
    {
      v17 = [MEMORY[0x1E696AC90] indexSetWithIndex:a4];
      v18 = kEKUILogInviteesHandle;
      if (os_log_type_enabled(kEKUILogInviteesHandle, OS_LOG_TYPE_DEBUG))
      {
        v27 = 138412290;
        v28 = v17;
        _os_log_impl(&dword_1D3400000, v18, OS_LOG_TYPE_DEBUG, "Deleting sections at index paths: [%@]", &v27, 0xCu);
      }

      v19 = [*(a1 + 32) tableView];
      [v19 deleteSections:v17 withRowAnimation:0];
    }

    else
    {
      v17 = [MEMORY[0x1E696AC90] indexSetWithIndex:a7];
      v25 = kEKUILogInviteesHandle;
      if (os_log_type_enabled(kEKUILogInviteesHandle, OS_LOG_TYPE_DEBUG))
      {
        v27 = 138412290;
        v28 = v17;
        _os_log_impl(&dword_1D3400000, v25, OS_LOG_TYPE_DEBUG, "Inserting sections at index paths: [%@]", &v27, 0xCu);
      }

      v19 = [*(a1 + 32) tableView];
      [v19 insertSections:v17 withRowAnimation:0];
    }

LABEL_20:

    goto LABEL_21;
  }

  v20 = a8 - a5;
  if (a8 != a5 && a6)
  {
    if ([v15 injectNewRowsBeforeLastExistingRow])
    {
      v21 = a8 - 1;
      v17 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v22 = a5 - 1;
      if (v22 < v21)
      {
        do
        {
          v23 = [MEMORY[0x1E696AC88] indexPathForRow:v22 inSection:a7];
          [v17 addObject:v23];

          ++v22;
          --v20;
        }

        while (v20);
      }

      v24 = kEKUILogInviteesHandle;
      if (os_log_type_enabled(kEKUILogInviteesHandle, OS_LOG_TYPE_DEBUG))
      {
        v27 = 138412290;
        v28 = v17;
        _os_log_impl(&dword_1D3400000, v24, OS_LOG_TYPE_DEBUG, "Inserting rows at index paths: [%@]", &v27, 0xCu);
      }

      v19 = [*(a1 + 32) tableView];
      [v19 insertRowsAtIndexPaths:v17 withRowAnimation:0];
    }

    else
    {
      v17 = [MEMORY[0x1E696AC90] indexSetWithIndex:a7];
      v26 = kEKUILogInviteesHandle;
      if (os_log_type_enabled(kEKUILogInviteesHandle, OS_LOG_TYPE_DEBUG))
      {
        v27 = 138412290;
        v28 = v17;
        _os_log_impl(&dword_1D3400000, v26, OS_LOG_TYPE_DEBUG, "Reloading sections at index paths: [%@]", &v27, 0xCu);
      }

      v19 = [*(a1 + 32) tableView];
      [v19 reloadSections:v17 withRowAnimation:0];
    }

    goto LABEL_20;
  }

LABEL_21:
}

- (void)_scheduleAvailabilitySpinnerTimer
{
  [(EKEventProposeNewTimeViewController *)self _cancelAvailabilitySpinnerTimer];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __72__EKEventProposeNewTimeViewController__scheduleAvailabilitySpinnerTimer__block_invoke;
  v4[3] = &unk_1E843F260;
  v4[4] = self;
  v3 = [MEMORY[0x1E695DFF0] scheduledTimerWithTimeInterval:0 repeats:v4 block:1.0];
  [(EKEventProposeNewTimeViewController *)self setAvailabilitySearcherRunningSpinnerTimer:v3];
}

void __72__EKEventProposeNewTimeViewController__scheduleAvailabilitySpinnerTimer__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) availabilitySearcherRunningSpinner];
  [v1 startAnimating];
}

- (void)_cancelAvailabilitySpinnerTimer
{
  availabilitySearcherRunningSpinnerTimer = [(EKEventProposeNewTimeViewController *)self availabilitySearcherRunningSpinnerTimer];
  [availabilitySearcherRunningSpinnerTimer invalidate];

  [(EKEventProposeNewTimeViewController *)self setAvailabilitySearcherRunningSpinnerTimer:0];
}

- (void)updateCheckmark
{
  originalConflictSection = [(EKEventProposeNewTimeViewController *)self originalConflictSection];
  [originalConflictSection clearCheckmark];

  allInviteesCanAttendSection = [(EKEventProposeNewTimeViewController *)self allInviteesCanAttendSection];
  [allInviteesCanAttendSection clearCheckmark];

  someInviteesCanAttendSection = [(EKEventProposeNewTimeViewController *)self someInviteesCanAttendSection];
  [someInviteesCanAttendSection clearCheckmark];

  originalConflictSection2 = [(EKEventProposeNewTimeViewController *)self originalConflictSection];
  [originalConflictSection2 refreshCellsAfterStateChange];

  allInviteesCanAttendSection2 = [(EKEventProposeNewTimeViewController *)self allInviteesCanAttendSection];
  [allInviteesCanAttendSection2 refreshCellsAfterStateChange];

  someInviteesCanAttendSection2 = [(EKEventProposeNewTimeViewController *)self someInviteesCanAttendSection];
  [someInviteesCanAttendSection2 refreshCellsAfterStateChange];

  proposedStartDate = [(EKEventProposeNewTimeViewController *)self proposedStartDate];
  if (!proposedStartDate || (v10 = proposedStartDate, -[EKEventProposeNewTimeViewController proposedStartDate](self, "proposedStartDate"), v11 = objc_claimAutoreleasedReturnValue(), -[EKEventProposeNewTimeViewController event](self, "event"), v12 = objc_claimAutoreleasedReturnValue(), [v12 startDate], v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v11, "isEqualToDate:", v13), v13, v12, v11, v10, v14))
  {
    originalConflictSection3 = [(EKEventProposeNewTimeViewController *)self originalConflictSection];
    [originalConflictSection3 selectRow:0];
  }
}

- (void)dateChangedTo:(id)to
{
  v11 = *MEMORY[0x1E69E9840];
  toCopy = to;
  proposedStartDate = [(EKEventProposeNewTimeViewController *)self proposedStartDate];
  v6 = [toCopy isEqual:proposedStartDate];

  if (v6)
  {
    v7 = kEKUILogInviteesHandle;
    if (os_log_type_enabled(kEKUILogInviteesHandle, OS_LOG_TYPE_INFO))
    {
      v9 = 138412290;
      v10 = toCopy;
      _os_log_impl(&dword_1D3400000, v7, OS_LOG_TYPE_INFO, "Proposed time has not changed. Do nothing. Date: %@", &v9, 0xCu);
    }
  }

  else
  {
    [(EKEventProposeNewTimeViewController *)self setProposedStartDate:toCopy];
    [(EKEventProposeNewTimeViewController *)self updateCustomBackButton];
    [(EKEventProposeNewTimeViewController *)self _updateStatusButtons];
    [(EKEventProposeNewTimeViewController *)self updateCheckmark];
    proposeTimeItem = [(EKEventProposeNewTimeViewController *)self proposeTimeItem];
    [proposeTimeItem setPendingProposedTime:0];
  }
}

- (void)editItem:(id)item wantsRowInsertions:(id)insertions rowDeletions:(id)deletions
{
  insertionsCopy = insertions;
  deletionsCopy = deletions;
  tableView = [(EKEventProposeNewTimeViewController *)self tableView];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __80__EKEventProposeNewTimeViewController_editItem_wantsRowInsertions_rowDeletions___block_invoke;
  v12[3] = &unk_1E843EC38;
  v13 = insertionsCopy;
  selfCopy = self;
  v15 = deletionsCopy;
  v10 = deletionsCopy;
  v11 = insertionsCopy;
  [tableView performBatchUpdates:v12 completion:&__block_literal_global_4];
}

void __80__EKEventProposeNewTimeViewController_editItem_wantsRowInsertions_rowDeletions___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v2, "count")}];
    v4 = *(a1 + 32);
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __80__EKEventProposeNewTimeViewController_editItem_wantsRowInsertions_rowDeletions___block_invoke_2;
    v17[3] = &unk_1E843F288;
    v18 = v3;
    v5 = v3;
    [v4 enumerateIndexesUsingBlock:v17];
    v6 = [*(a1 + 40) tableView];
    [v6 insertRowsAtIndexPaths:v5 withRowAnimation:0];
  }

  v7 = *(a1 + 48);
  if (v7)
  {
    v8 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v7, "count")}];
    v9 = *(a1 + 48);
    v12 = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v14 = __80__EKEventProposeNewTimeViewController_editItem_wantsRowInsertions_rowDeletions___block_invoke_3;
    v15 = &unk_1E843F288;
    v16 = v8;
    v10 = v8;
    [v9 enumerateIndexesUsingBlock:&v12];
    v11 = [*(a1 + 40) tableView];
    [v11 deleteRowsAtIndexPaths:v10 withRowAnimation:0];
  }
}

void __80__EKEventProposeNewTimeViewController_editItem_wantsRowInsertions_rowDeletions___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = [MEMORY[0x1E696AC88] indexPathForRow:a2 inSection:0];
  [*(a1 + 32) addObject:v3];
}

void __80__EKEventProposeNewTimeViewController_editItem_wantsRowInsertions_rowDeletions___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v3 = [MEMORY[0x1E696AC88] indexPathForRow:a2 inSection:0];
  [*(a1 + 32) addObject:v3];
}

- (void)editItemRequiresHeightChange:(id)change
{
  tableView = [(EKEventProposeNewTimeViewController *)self tableView];
  [tableView beginUpdates];

  tableView2 = [(EKEventProposeNewTimeViewController *)self tableView];
  [tableView2 endUpdates];
}

- (id)defaultAlertTitleForEditItem:(id)item
{
  v3 = EventKitUIBundle();
  v4 = [v3 localizedStringForKey:@"Cannot Save Event" value:&stru_1F4EF6790 table:0];

  return v4;
}

- (EKUIViewControllerNavigationDelegate)navigationDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_navigationDelegate);

  return WeakRetained;
}

- (EKViewControllerRemoteUIDelegate)remoteUIDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_remoteUIDelegate);

  return WeakRetained;
}

@end