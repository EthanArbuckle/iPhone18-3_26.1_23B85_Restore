@interface EKEventProposeNewTimeViewController
+ (id)_participantsInArray:(id)a3 thatAreNotInArray:(id)a4;
- (BOOL)proposedTimeChanged;
- (BOOL)tableView:(id)a3 canEditRowAtIndexPath:(id)a4;
- (EKEventProposeNewTimeViewController)initWithEvent:(id)a3 model:(id)a4;
- (EKUIEventStatusButtonsView)statusButtonsView;
- (EKUIViewControllerNavigationDelegate)navigationDelegate;
- (EKViewControllerRemoteUIDelegate)remoteUIDelegate;
- (SingleToolbarItemContainerView)statusButtonsContainerView;
- (double)tableView:(id)a3 estimatedHeightForRowAtIndexPath:(id)a4;
- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4;
- (id)_sectionForIndex:(unint64_t)a3;
- (id)defaultAlertTitleForEditItem:(id)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4;
- (id)tableView:(id)a3 willSelectRowAtIndexPath:(id)a4;
- (int64_t)_indexForSection:(id)a3;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (int64_t)tableView:(id)a3 editingStyleForRowAtIndexPath:(id)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (unint64_t)supportedInterfaceOrientations;
- (void)_cancelAvailabilitySpinnerTimer;
- (void)_dismiss:(id)a3;
- (void)_dismissPresentedViewControllerAnimated:(BOOL)a3;
- (void)_eventModified:(id)a3;
- (void)_fontSizeDefinitionsChanged:(id)a3;
- (void)_popViewControllerAnimated:(BOOL)a3;
- (void)_presentViewController:(id)a3;
- (void)_pushViewController:(id)a3 animated:(BOOL)a4;
- (void)_refreshIfNeeded;
- (void)_scheduleAvailabilitySpinnerTimer;
- (void)_searcherStateChanged:(int64_t)a3;
- (void)_updateStatusButtons;
- (void)availabilityDateChangedTo:(id)a3;
- (void)dateChangedTo:(id)a3;
- (void)editItem:(id)a3 wantsRowInsertions:(id)a4 rowDeletions:(id)a5;
- (void)editItemRequiresHeightChange:(id)a3;
- (void)editItemViewController:(id)a3 didCompleteWithAction:(int)a4;
- (void)eventStatusButtonsView:(id)a3 didSelectAction:(int64_t)a4 sourceView:(id)a5 sourceRect:(CGRect)a6 appliesToAll:(BOOL)a7 ifCancelled:(id)a8;
- (void)loadView;
- (void)resetBackgroundColor;
- (void)tableView:(id)a3 commitEditingStyle:(int64_t)a4 forRowAtIndexPath:(id)a5;
- (void)tableView:(id)a3 didDeselectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 willDisplayHeaderView:(id)a4 forSection:(int64_t)a5;
- (void)updateCheckmark;
- (void)updateCustomBackButton;
- (void)viewAvailabilityTapped;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation EKEventProposeNewTimeViewController

- (EKEventProposeNewTimeViewController)initWithEvent:(id)a3 model:(id)a4
{
  v25[3] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v24.receiver = self;
  v24.super_class = EKEventProposeNewTimeViewController;
  v8 = [(EKEventProposeNewTimeViewController *)&v24 initWithNibName:0 bundle:0];
  if (v8)
  {
    v9 = [v6 proposedStartDate];
    if (v9)
    {
      [(EKEventProposeNewTimeViewController *)v8 setOriginalDate:v9];
    }

    else
    {
      v10 = [v6 startDate];
      [(EKEventProposeNewTimeViewController *)v8 setOriginalDate:v10];
    }

    v11 = [v6 proposedStartDate];
    [(EKEventProposeNewTimeViewController *)v8 setProposedStartDate:v11];

    [(EKEventProposeNewTimeViewController *)v8 setEvent:v6];
    [(EKEventProposeNewTimeViewController *)v8 setResetConflictResolutionSections:1];
    objc_storeStrong(&v8->_model, a4);
    objc_initWeak(&location, v8);
    v12 = objc_alloc(MEMORY[0x1E6966A38]);
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __59__EKEventProposeNewTimeViewController_initWithEvent_model___block_invoke;
    v21[3] = &unk_1E843F058;
    objc_copyWeak(&v22, &location);
    v13 = [v12 initWithStateChangedCallback:v21];
    [(EKEventProposeNewTimeViewController *)v8 setAvailabilitySearcher:v13];

    v14 = [(EKEventProposeNewTimeViewController *)v8 availabilitySearcher];
    [v14 setNoConflictRequired:1];

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
    v5 = [(EKEventProposeNewTimeViewController *)self _statusButtons];
    v6 = [(EKUIEventStatusButtonsView *)v4 initWithFrame:v5 actions:self delegate:1 options:1 textSizeMode:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
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
  v3 = [(EKEventProposeNewTimeViewController *)self _statusButtons];
  [(EKEventProposeNewTimeViewController *)self setStatusButtonsViewCachedFontSize:0.0];
  v4 = [(EKEventProposeNewTimeViewController *)self proposedStartDate];

  if (v4)
  {
    v5 = [(EKEventProposeNewTimeViewController *)self navigationController];
    [v5 setToolbarHidden:0];

    v6 = MEMORY[0x1D38B98D0]();
    v7 = [(EKEventProposeNewTimeViewController *)self toolbarItems];
    v8 = v7;
    if (!v6)
    {
      if (!v7 || ([(EKEventProposeNewTimeViewController *)self statusButtonsContainerView], v18 = objc_claimAutoreleasedReturnValue(), v18, v8, !v18))
      {
        v19 = [(EKEventProposeNewTimeViewController *)self statusButtonsContainerView];
        v20 = [(EKEventProposeNewTimeViewController *)self statusButtonsView];
        [v19 addSubview:v20];
        v42 = MEMORY[0x1E696ACD8];
        v47 = [v20 leadingAnchor];
        v46 = [v19 leadingAnchor];
        v45 = [v47 constraintEqualToAnchor:v46];
        v49[0] = v45;
        v44 = [v20 trailingAnchor];
        v43 = [v19 trailingAnchor];
        v41 = [v44 constraintEqualToAnchor:v43];
        v49[1] = v41;
        v40 = [v20 topAnchor];
        v21 = [v19 topAnchor];
        v22 = [v40 constraintEqualToAnchor:v21];
        v49[2] = v22;
        v23 = [v20 bottomAnchor];
        [v19 bottomAnchor];
        v25 = v24 = v3;
        v26 = [v23 constraintEqualToAnchor:v25];
        v49[3] = v26;
        v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v49 count:4];
        [v42 activateConstraints:v27];

        v3 = v24;
        v28 = [objc_alloc(MEMORY[0x1E69DC708]) initWithCustomView:v19];
        v48 = v28;
        v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v48 count:1];
        [(EKEventProposeNewTimeViewController *)self setToolbarItems:v29 animated:1];
      }

      v30 = [(EKEventProposeNewTimeViewController *)self navigationController];
      v10 = [v30 toolbar];

      v31 = [(EKEventProposeNewTimeViewController *)self statusButtonsContainerView];
      [v31 setBoundsWithToolbar:v10];

      v32 = [(EKEventProposeNewTimeViewController *)self statusButtonsContainerView];
      [v32 frame];
      v34 = v33;
      v35 = [(EKEventProposeNewTimeViewController *)self statusButtonsContainerView];
      [v35 frame];
      v37 = v36;

      v38 = [(EKEventProposeNewTimeViewController *)self statusButtonsView];
      [v38 setFrame:{0.0, 0.0, v34, v37}];

      v39 = [(EKEventProposeNewTimeViewController *)self statusButtonsView];
      [v39 setActions:v3];

      goto LABEL_14;
    }

    if (!v8)
    {
      v9 = [(EKEventProposeNewTimeViewController *)self statusButtonsView];
      v10 = [v9 statusButtons];

      v11 = objc_opt_new();
      if ([v10 count])
      {
        v12 = 0;
        do
        {
          v13 = objc_alloc(MEMORY[0x1E69DC708]);
          v14 = [v10 objectAtIndexedSubscript:v12];
          v15 = [v13 initWithCustomView:v14];

          [v11 addObject:v15];
          ++v12;
        }

        while ([v10 count] > v12);
      }

      [(EKEventProposeNewTimeViewController *)self setToolbarItems:v11 animated:1];

LABEL_14:
    }
  }

  else
  {
    v16 = [(EKEventProposeNewTimeViewController *)self toolbarItems];

    if (v16)
    {
      v17 = [(EKEventProposeNewTimeViewController *)self navigationController];
      [v17 setToolbarHidden:1];

      [(EKEventProposeNewTimeViewController *)self setToolbarItems:0 animated:1];
    }
  }
}

- (void)loadView
{
  v5 = [MEMORY[0x1E696AD88] defaultCenter];
  [v5 addObserver:self selector:sel__eventModified_ name:*MEMORY[0x1E6966918] object:self->_event];
  [v5 addObserver:self selector:sel__fontSizeDefinitionsChanged_ name:*MEMORY[0x1E69DDC48] object:0];
  v3 = [EKUIEventInviteesView alloc];
  v4 = [(EKUIEventInviteesView *)v3 initWithFrame:2 style:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  [(EKUIEventInviteesView *)v4 setDelegate:self];
  [(EKUIEventInviteesView *)v4 setDataSource:self];
  [(EKEventProposeNewTimeViewController *)self setTableView:v4];
  [(EKEventProposeNewTimeViewController *)self resetBackgroundColor];
}

- (void)resetBackgroundColor
{
  v3 = [(UIViewController *)self isPresentedInsidePopover];
  v5 = [(EKEventProposeNewTimeViewController *)self tableView];
  if (v3)
  {
    [MEMORY[0x1E69DC888] clearColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] systemGroupedBackgroundColor];
  }
  v4 = ;
  [v5 setBackgroundColor:v4];
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

  v5 = [(EKEventProposeNewTimeViewController *)self event];
  v6 = [v5 title];
  v7 = [(EKEventProposeNewTimeViewController *)self navigationItem];
  [v7 setSubtitle:v6];

  objc_initWeak(&location, self);
  v8 = objc_alloc_init(EKEventDateEditItem);
  [(EKEventProposeNewTimeViewController *)self setProposeTimeItem:v8];

  v9 = [(EKEventProposeNewTimeViewController *)self proposeTimeItem];
  [v9 setProposedTime:1];

  v10 = [(EKEventProposeNewTimeViewController *)self proposeTimeItem];
  v11 = [(EKEventProposeNewTimeViewController *)self event];
  v12 = [(EKEventProposeNewTimeViewController *)self event];
  v13 = [v12 eventStore];
  [v10 setCalendarItem:v11 store:v13];

  v14 = [(EKEventProposeNewTimeViewController *)self proposeTimeItem];
  [v14 setDelegate:self];

  v15 = [(EKEventProposeNewTimeViewController *)self proposeTimeItem];
  [v15 setEventDateEditItemDelegate:self];

  v16 = objc_alloc_init(EKUIInviteesViewOriginalConflictSection);
  [(EKEventProposeNewTimeViewController *)self setOriginalConflictSection:v16];

  v17 = [(EKEventProposeNewTimeViewController *)self event];
  v18 = [v17 startTimeZone];
  v19 = [(EKEventProposeNewTimeViewController *)self originalConflictSection];
  [v19 setTimeZone:v18];

  v20 = EventKitUIBundle();
  v21 = [v20 localizedStringForKey:@"Original Time" value:&stru_1F4EF6790 table:0];
  v22 = [(EKEventProposeNewTimeViewController *)self originalConflictSection];
  [v22 setTitle:v21];

  v23 = objc_alloc_init(EKUIInviteesViewAllInviteesCanAttendSection);
  [(EKEventProposeNewTimeViewController *)self setAllInviteesCanAttendSection:v23];

  v24 = [(EKEventProposeNewTimeViewController *)self event];
  v25 = [v24 startTimeZone];
  v26 = [(EKEventProposeNewTimeViewController *)self allInviteesCanAttendSection];
  [v26 setTimeZone:v25];

  v27 = [(EKEventProposeNewTimeViewController *)self tableView];
  if (EKUICatalyst())
  {
    [v27 setSeparatorStyle:1];
  }

  v142 = 0u;
  v143 = 0u;
  v140 = 0u;
  v141 = 0u;
  v28 = [(EKEventProposeNewTimeViewController *)self event];
  v29 = [v28 attendees];

  v30 = [v29 countByEnumeratingWithState:&v140 objects:v151 count:16];
  if (v30)
  {
    v31 = *v141;
    while (2)
    {
      for (i = 0; i != v30; ++i)
      {
        if (*v141 != v31)
        {
          objc_enumerationMutation(v29);
        }

        v33 = *(*(&v140 + 1) + 8 * i);
        if (([v33 isCurrentUser] & 1) == 0 && objc_msgSend(v33, "participantRole") != 3)
        {

          v34 = objc_alloc_init(EKUIInviteesViewSomeInviteesCanAttendSection);
          [(EKEventProposeNewTimeViewController *)self setSomeInviteesCanAttendSection:v34];

          v29 = [(EKEventProposeNewTimeViewController *)self event];
          v35 = [v29 startTimeZone];
          v36 = [(EKEventProposeNewTimeViewController *)self someInviteesCanAttendSection];
          [v36 setTimeZone:v35];

          v96 = 1;
          goto LABEL_14;
        }
      }

      v30 = [v29 countByEnumeratingWithState:&v140 objects:v151 count:16];
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

  v38 = [(EKEventProposeNewTimeViewController *)self viewAvailabilitySection];
  [v38 setIsForAttendeeProposedTime:1];

  v39 = [(EKEventProposeNewTimeViewController *)self viewAvailabilitySection];
  v40 = [(EKEventProposeNewTimeViewController *)self event];
  [v39 updateWithEvent:v40];

  v138[0] = MEMORY[0x1E69E9820];
  v138[1] = 3221225472;
  v138[2] = __50__EKEventProposeNewTimeViewController_viewDidLoad__block_invoke;
  v138[3] = &unk_1E843F080;
  objc_copyWeak(&v139, &location);
  v41 = [(EKEventProposeNewTimeViewController *)self viewAvailabilitySection];
  [v41 setViewAvailabilityTapped:v138];

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __50__EKEventProposeNewTimeViewController_viewDidLoad__block_invoke_2;
  aBlock[3] = &unk_1E843F0A8;
  objc_copyWeak(&v137, &location);
  v42 = v27;
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
  v47 = [(EKEventProposeNewTimeViewController *)self originalConflictSection];
  v48 = [(EKEventProposeNewTimeViewController *)self availabilitySearcher];
  [v47 setAvailabilitySearcher:v48];

  v126[0] = MEMORY[0x1E69E9820];
  v126[1] = 3221225472;
  v126[2] = __50__EKEventProposeNewTimeViewController_viewDidLoad__block_invoke_53;
  v126[3] = &unk_1E843F148;
  objc_copyWeak(&v128, &location);
  v49 = v44;
  v127 = v49;
  v50 = [(EKEventProposeNewTimeViewController *)self originalConflictSection];
  [v50 setShowPreviewOfEventAtTime:v126];

  v123[0] = MEMORY[0x1E69E9820];
  v123[1] = 3221225472;
  v123[2] = __50__EKEventProposeNewTimeViewController_viewDidLoad__block_invoke_2_55;
  v123[3] = &unk_1E843F170;
  v51 = v43;
  v124 = v51;
  objc_copyWeak(&v125, &location);
  v52 = [(EKEventProposeNewTimeViewController *)self originalConflictSection];
  [v52 setTableViewCellHook:v123];

  v120[0] = MEMORY[0x1E69E9820];
  v120[1] = 3221225472;
  v120[2] = __50__EKEventProposeNewTimeViewController_viewDidLoad__block_invoke_3;
  v120[3] = &unk_1E843F198;
  v53 = v45;
  v121 = v53;
  objc_copyWeak(&v122, &location);
  v54 = [(EKEventProposeNewTimeViewController *)self originalConflictSection];
  [v54 setNewTimeChosen:v120];

  v55 = [(EKEventProposeNewTimeViewController *)self allInviteesCanAttendSection];
  v56 = [(EKEventProposeNewTimeViewController *)self availabilitySearcher];
  [v55 setAvailabilitySearcher:v56];

  v118[0] = MEMORY[0x1E69E9820];
  v118[1] = 3221225472;
  v118[2] = __50__EKEventProposeNewTimeViewController_viewDidLoad__block_invoke_4;
  v118[3] = &unk_1E843F1C0;
  v93 = v49;
  v119 = v93;
  v57 = [(EKEventProposeNewTimeViewController *)self allInviteesCanAttendSection];
  [v57 setShowPreviewOfEventAtTime:v118];

  v115[0] = MEMORY[0x1E69E9820];
  v115[1] = 3221225472;
  v115[2] = __50__EKEventProposeNewTimeViewController_viewDidLoad__block_invoke_5;
  v115[3] = &unk_1E843F170;
  v92 = v51;
  v116 = v92;
  objc_copyWeak(&v117, &location);
  v58 = [(EKEventProposeNewTimeViewController *)self allInviteesCanAttendSection];
  [v58 setTableViewCellHook:v115];

  v112[0] = MEMORY[0x1E69E9820];
  v112[1] = 3221225472;
  v112[2] = __50__EKEventProposeNewTimeViewController_viewDidLoad__block_invoke_6;
  v112[3] = &unk_1E843F198;
  v91 = v53;
  v113 = v91;
  objc_copyWeak(&v114, &location);
  v59 = [(EKEventProposeNewTimeViewController *)self allInviteesCanAttendSection];
  [v59 setNewTimeChosen:v112];

  v60 = [(EKEventProposeNewTimeViewController *)self allInviteesCanAttendSection];
  [v60 setShowMoreAlternativeTimesTapped:v98];

  if (v96)
  {
    v61 = [(EKEventProposeNewTimeViewController *)self someInviteesCanAttendSection];
    v62 = [(EKEventProposeNewTimeViewController *)self availabilitySearcher];
    [v61 setAvailabilitySearcher:v62];

    v110[0] = MEMORY[0x1E69E9820];
    v110[1] = 3221225472;
    v110[2] = __50__EKEventProposeNewTimeViewController_viewDidLoad__block_invoke_7;
    v110[3] = &unk_1E843F1C0;
    v111 = v93;
    v63 = [(EKEventProposeNewTimeViewController *)self someInviteesCanAttendSection];
    [v63 setShowPreviewOfEventAtTime:v110];

    v107[0] = MEMORY[0x1E69E9820];
    v107[1] = 3221225472;
    v107[2] = __50__EKEventProposeNewTimeViewController_viewDidLoad__block_invoke_8;
    v107[3] = &unk_1E843F170;
    v108 = v92;
    objc_copyWeak(&v109, &location);
    v64 = [(EKEventProposeNewTimeViewController *)self someInviteesCanAttendSection];
    [v64 setTableViewCellHook:v107];

    v104[0] = MEMORY[0x1E69E9820];
    v104[1] = 3221225472;
    v104[2] = __50__EKEventProposeNewTimeViewController_viewDidLoad__block_invoke_9;
    v104[3] = &unk_1E843F198;
    v105 = v91;
    objc_copyWeak(&v106, &location);
    v65 = [(EKEventProposeNewTimeViewController *)self someInviteesCanAttendSection];
    [v65 setNewTimeChosen:v104];

    v66 = [(EKEventProposeNewTimeViewController *)self someInviteesCanAttendSection];
    [v66 setShowMoreAlternativeTimesTapped:v98];

    objc_destroyWeak(&v106);
    objc_destroyWeak(&v109);
  }

  v99 = [MEMORY[0x1E695DF70] array];
  v67 = [(EKEventProposeNewTimeViewController *)self viewAvailabilitySection];
  v150[0] = v67;
  v68 = [(EKEventProposeNewTimeViewController *)self originalConflictSection];
  v150[1] = v68;
  v69 = [(EKEventProposeNewTimeViewController *)self allInviteesCanAttendSection];
  v150[2] = v69;
  v70 = [MEMORY[0x1E695DEC8] arrayWithObjects:v150 count:3];
  [v99 addObjectsFromArray:v70];

  if (v96)
  {
    v71 = [(EKEventProposeNewTimeViewController *)self someInviteesCanAttendSection];
    [v99 addObject:v71];
  }

  [(EKEventProposeNewTimeViewController *)self setSections:v99];
  v72 = kEKUILogInviteesHandle;
  if (os_log_type_enabled(v72, OS_LOG_TYPE_DEBUG))
  {
    v73 = [(EKEventProposeNewTimeViewController *)self sections];
    *buf = 138412290;
    v149 = v73;
    _os_log_impl(&dword_1D3400000, v72, OS_LOG_TYPE_DEBUG, "Set up sections: [%@].", buf, 0xCu);
  }

  v102 = 0u;
  v103 = 0u;
  v100 = 0u;
  v101 = 0u;
  v74 = [(EKEventProposeNewTimeViewController *)self sections];
  v75 = [v74 countByEnumeratingWithState:&v100 objects:v147 count:16];
  if (v75)
  {
    v76 = *v101;
    do
    {
      for (j = 0; j != v75; ++j)
      {
        if (*v101 != v76)
        {
          objc_enumerationMutation(v74);
        }

        [*(*(&v100 + 1) + 8 * j) reloadAndRegisterReusableCellsWithTableView:v46];
      }

      v75 = [v74 countByEnumeratingWithState:&v100 objects:v147 count:16];
    }

    while (v75);
  }

  [(EKEventProposeNewTimeViewController *)self _updateStatusButtons];
  v78 = objc_alloc_init(MEMORY[0x1E69DC638]);
  [(EKEventProposeNewTimeViewController *)self setAvailabilitySearcherRunningSpinner:v78];

  v79 = [(EKEventProposeNewTimeViewController *)self availabilitySearcherRunningSpinner];
  [v79 setTranslatesAutoresizingMaskIntoConstraints:0];

  v80 = [(EKEventProposeNewTimeViewController *)self view];
  v81 = [(EKEventProposeNewTimeViewController *)self availabilitySearcherRunningSpinner];
  [v80 addSubview:v81];

  v90 = MEMORY[0x1E696ACD8];
  v97 = [(EKEventProposeNewTimeViewController *)self availabilitySearcherRunningSpinner];
  v94 = [v97 centerXAnchor];
  v95 = [(EKEventProposeNewTimeViewController *)self view];
  v82 = [v95 centerXAnchor];
  v83 = [v94 constraintEqualToAnchor:v82];
  v146[0] = v83;
  v84 = [(EKEventProposeNewTimeViewController *)self availabilitySearcherRunningSpinner];
  v85 = [v84 centerYAnchor];
  v86 = [(EKEventProposeNewTimeViewController *)self view];
  v87 = [v86 centerYAnchor];
  v88 = [v85 constraintEqualToAnchor:v87];
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
  v3 = [(EKEventProposeNewTimeViewController *)self event];
  v4 = [v3 proposedStartDate];

  if (v4)
  {
    v5 = [(EKEventProposeNewTimeViewController *)self event];
    v6 = [v5 proposedStartDate];
    v7 = [(EKEventProposeNewTimeViewController *)self proposedStartDate];
    v8 = [v6 isEqualToDate:v7];
  }

  else
  {
    v5 = [(EKEventProposeNewTimeViewController *)self proposedStartDate];
    if (!v5)
    {
      v10 = 0;
      goto LABEL_6;
    }

    v6 = [(EKEventProposeNewTimeViewController *)self proposedStartDate];
    v7 = [(EKEventProposeNewTimeViewController *)self event];
    v9 = [v7 startDate];
    v8 = [v6 isEqualToDate:v9];
  }

  v10 = v8 ^ 1;

LABEL_6:
  return v10;
}

- (void)updateCustomBackButton
{
  v7 = [MEMORY[0x1E695DF70] array];
  if ([(EKEventProposeNewTimeViewController *)self proposedTimeChanged])
  {
    v3 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:0 target:self action:sel__dismiss_];
    v4 = [(EKEventProposeNewTimeViewController *)self navigationItem];
    [v4 setLeftBarButtonItem:v3];

    v5 = +[_TtC10EventKitUI22EKRemoteUIButtonAction Done];
    [v7 addObject:v5];
  }

  v6 = [(EKEventProposeNewTimeViewController *)self remoteUIDelegate];
  [v6 viewController:self didChangeLeftBarButtons:MEMORY[0x1E695E0F0] rightBarButtons:v7];
}

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = EKEventProposeNewTimeViewController;
  [(EKEventProposeNewTimeViewController *)&v4 viewWillAppear:a3];
  [(EKEventProposeNewTimeViewController *)self updateCustomBackButton];
  [(EKEventProposeNewTimeViewController *)self _refreshIfNeeded];
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  [(EKEventProposeNewTimeViewController *)self setViewIsVisible:1];
  v5.receiver = self;
  v5.super_class = EKEventProposeNewTimeViewController;
  [(EKEventProposeNewTimeViewController *)&v5 viewDidAppear:v3];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = EKEventProposeNewTimeViewController;
  [(EKEventProposeNewTimeViewController *)&v4 viewWillDisappear:a3];
  [(EKEventProposeNewTimeViewController *)self setViewIsVisible:0];
}

- (unint64_t)supportedInterfaceOrientations
{
  v2 = [(EKEventProposeNewTimeViewController *)self view];
  if (EKUICurrentWidthSizeClassIsCompactInViewHierarchy(v2))
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
  v10 = [(EKEventProposeNewTimeViewController *)self proposedStartDate];
  v3 = [(EKEventProposeNewTimeViewController *)self proposedStartDate];
  v4 = [(EKEventProposeNewTimeViewController *)self event];
  [v4 duration];
  v5 = [v3 dateByAddingTimeInterval:?];

  v6 = [EKUIAvailabilityViewController alloc];
  v7 = [(EKEventProposeNewTimeViewController *)self event];
  v8 = [(EKUIAvailabilityViewController *)v6 initWithEvent:v7 isAttendeeProposeTime:1 proposedStartDate:v10 proposedEndDate:v5];

  [(EKEditItemViewController *)v8 setEditDelegate:self];
  [(EKUIAvailabilityViewController *)v8 setFromDetail:0];
  v9 = [[EKUIAvailabilityNavigationController alloc] initWithRootViewController:v8];
  [(EKUIAvailabilityViewController *)v8 preferredContentSize];
  [(EKUIAvailabilityNavigationController *)v9 setPreferredContentSize:?];
  [(EKEventProposeNewTimeViewController *)self _presentViewController:v9];
}

- (int64_t)numberOfSectionsInTableView:(id)a3
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

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  if (a4)
  {
    v4 = [(EKEventProposeNewTimeViewController *)self _sectionForIndex:a4];
    v5 = [v4 numberOfRows];
  }

  else
  {
    v4 = [(EKEventProposeNewTimeViewController *)self proposeTimeItem];
    v5 = [v4 numberOfSubitems];
  }

  v6 = v5;

  return v6;
}

- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4
{
  if (a4)
  {
    v4 = [(EKEventProposeNewTimeViewController *)self _sectionForIndex:a4];
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

- (void)tableView:(id)a3 willDisplayHeaderView:(id)a4 forSection:(int64_t)a5
{
  v10 = a3;
  v6 = a4;
  if (EKUICatalyst())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
      v8 = [v10 backgroundColor];
      v9 = [v7 contentView];

      [v9 setBackgroundColor:v8];
    }
  }
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v7 section])
  {
    v8 = -[EKEventProposeNewTimeViewController _sectionForIndex:](self, "_sectionForIndex:", [v7 section]);
    v9 = [v8 cellForIndexPath:v7 inTableView:v6];
  }

  else
  {
    v8 = [(EKEventProposeNewTimeViewController *)self proposeTimeItem];
    v10 = [v7 row];

    v9 = [v8 cellForSubitemAtIndex:v10];
  }

  if (EKUICatalyst())
  {
    v11 = [v6 backgroundColor];
    [v9 setBackgroundColor:v11];
  }

  return v9;
}

- (BOOL)tableView:(id)a3 canEditRowAtIndexPath:(id)a4
{
  v5 = a4;
  if ([v5 section])
  {
    v6 = -[EKEventProposeNewTimeViewController _sectionForIndex:](self, "_sectionForIndex:", [v5 section]);
    v7 = [v6 canEditRow:v5];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)tableView:(id)a3 commitEditingStyle:(int64_t)a4 forRowAtIndexPath:(id)a5
{
  v8 = a5;
  if ([v8 section])
  {
    v7 = -[EKEventProposeNewTimeViewController _sectionForIndex:](self, "_sectionForIndex:", [v8 section]);
    [v7 commitEditingStyle:a4 forRow:v8];
  }
}

- (double)tableView:(id)a3 estimatedHeightForRowAtIndexPath:(id)a4
{
  v5 = a4;
  if ([v5 section])
  {
    v6 = -[EKEventProposeNewTimeViewController _sectionForIndex:](self, "_sectionForIndex:", [v5 section]);
    [v6 estimatedHeightForRow:v5];
    v8 = v7;
  }

  else
  {
    v8 = *MEMORY[0x1E69DE3D0];
  }

  return v8;
}

- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  [v6 rowHeight];
  v9 = v8;
  if (![v7 section])
  {
    [v6 bounds];
    v11 = v10;
    [v6 _backgroundInset];
    v13 = v11 + v12 * -2.0;
    v14 = [(EKEventProposeNewTimeViewController *)self proposeTimeItem];
    [v14 defaultCellHeightForSubitemAtIndex:objc_msgSend(v7 forWidth:{"row"), v13}];
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

- (id)tableView:(id)a3 willSelectRowAtIndexPath:(id)a4
{
  v5 = a4;
  if ([v5 section])
  {
    v6 = -[EKEventProposeNewTimeViewController _sectionForIndex:](self, "_sectionForIndex:", [v5 section]);
    v7 = [v6 canSelectRow:v5];
    v8 = v5;
    if ((v7 & 1) == 0)
    {

      v8 = 0;
    }

    v9 = v8;

    v10 = v9;
  }

  else
  {
    v11 = [(EKEventProposeNewTimeViewController *)self proposeTimeItem];
    v12 = [v11 editor:0 canSelectSubitem:{objc_msgSend(v5, "row")}];

    v10 = 0;
    v9 = v5;
    if (v12)
    {
      v9 = v5;
      v10 = v9;
    }
  }

  return v10;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v12 = a3;
  v6 = a4;
  if ([v6 section])
  {
    v7 = -[EKEventProposeNewTimeViewController _sectionForIndex:](self, "_sectionForIndex:", [v6 section]);
    [v7 selectRow:v6];
  }

  else
  {
    v7 = [v12 cellForRowAtIndexPath:v6];
    if ([v7 selectionStyle])
    {
      [v12 selectRowAtIndexPath:0 animated:1 scrollPosition:0];
      v8 = [(EKEventProposeNewTimeViewController *)self _popoverController];

      if (!v8)
      {
        v9 = [(EKEventProposeNewTimeViewController *)self proposeTimeItem];
        v10 = [v9 selectedResponder];
        [v10 resignFirstResponder];
      }

      v11 = [(EKEventProposeNewTimeViewController *)self proposeTimeItem];
      [v11 editor:0 didSelectSubitem:{objc_msgSend(v6, "row")}];
    }
  }

  [v12 deselectRowAtIndexPath:v6 animated:1];
}

- (void)tableView:(id)a3 didDeselectRowAtIndexPath:(id)a4
{
  v6 = a4;
  if (![v6 section])
  {
    v5 = [(EKEventProposeNewTimeViewController *)self proposeTimeItem];
    [v5 editor:0 didDeselectSubitem:{objc_msgSend(v6, "row")}];
  }
}

- (int64_t)tableView:(id)a3 editingStyleForRowAtIndexPath:(id)a4
{
  v5 = a4;
  if ([v5 section])
  {
    v6 = -[EKEventProposeNewTimeViewController _sectionForIndex:](self, "_sectionForIndex:", [v5 section]);
    v7 = [v6 editingStyleForRow:v5];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)editItemViewController:(id)a3 didCompleteWithAction:(int)a4
{
  v12 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (!a4)
  {
    v8 = kEKUILogInviteesHandle;
    if (os_log_type_enabled(kEKUILogInviteesHandle, OS_LOG_TYPE_DEBUG))
    {
      v10 = 138412290;
      v11 = v6;
      _os_log_impl(&dword_1D3400000, v8, OS_LOG_TYPE_DEBUG, "The user cancelled out from this controller: [%@]", &v10, 0xCu);
    }

    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v6 modifiedStartDate];
    [(EKEventProposeNewTimeViewController *)self availabilityDateChangedTo:v7];

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
    v11 = v6;
    _os_log_impl(&dword_1D3400000, v9, OS_LOG_TYPE_ERROR, "Unrecognized controller completed: [%@]", &v10, 0xCu);
  }

LABEL_8:
}

- (void)availabilityDateChangedTo:(id)a3
{
  v4 = a3;
  [(EKEventProposeNewTimeViewController *)self dateChangedTo:v4];
  v5 = [(EKEventProposeNewTimeViewController *)self proposeTimeItem];
  [v5 updateStartDateToDate:v4];
}

- (void)eventStatusButtonsView:(id)a3 didSelectAction:(int64_t)a4 sourceView:(id)a5 sourceRect:(CGRect)a6 appliesToAll:(BOOL)a7 ifCancelled:(id)a8
{
  v9 = [(EKEventProposeNewTimeViewController *)self event:a3];
  [v9 setProposedStartDate:0];

  v13 = [(UIResponder *)self EKUI_editor];
  v10 = [(EKEventProposeNewTimeViewController *)self event];
  [v13 saveEvent:v10 span:0 error:0];

  if (CalSolariumEnabled())
  {
    [(EKEventProposeNewTimeViewController *)self _dismissPresentedViewControllerAnimated:1];
  }

  else
  {
    v11 = [(EKEventProposeNewTimeViewController *)self navigationController];
    v12 = [v11 popViewControllerAnimated:1];
  }
}

- (void)_dismiss:(id)a3
{
  v4 = a3;
  if ([(EKEventProposeNewTimeViewController *)self proposedTimeChanged])
  {
    v5 = [(EKEventProposeNewTimeViewController *)self event];
    v6 = [v5 serverSupportedProposeNewTime];

    v7 = [(EKEventProposeNewTimeViewController *)self event];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __48__EKEventProposeNewTimeViewController__dismiss___block_invoke;
    v14[3] = &unk_1E843F210;
    v16 = v6;
    v14[4] = self;
    v15 = v7;
    v8 = *MEMORY[0x1E695F050];
    v9 = *(MEMORY[0x1E695F050] + 8);
    v10 = *(MEMORY[0x1E695F050] + 16);
    v11 = *(MEMORY[0x1E695F050] + 24);
    v12 = v7;
    v13 = [EKUISendInviteAlertController presentInviteAlertWithOptions:8 sourceView:0 sourceRect:v4 sourceItem:self viewController:v14 withCompletionHandler:v8, v9, v10, v11];
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

- (void)_eventModified:(id)a3
{
  [(EKEventProposeNewTimeViewController *)self setResetConflictResolutionSections:1];
  if ([(EKEventProposeNewTimeViewController *)self viewIsVisible])
  {

    [(EKEventProposeNewTimeViewController *)self _refreshIfNeeded];
  }
}

- (void)_fontSizeDefinitionsChanged:(id)a3
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

- (void)_popViewControllerAnimated:(BOOL)a3
{
  v3 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_navigationDelegate);
  v6 = WeakRetained;
  if (WeakRetained)
  {
    v7 = WeakRetained;
  }

  else
  {
    v7 = [(EKEventProposeNewTimeViewController *)self navigationController];
  }

  v8 = v7;

  if (objc_opt_respondsToSelector())
  {
    [v8 popViewControllerAnimated:v3];
  }
}

- (void)_pushViewController:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v10 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_navigationDelegate);
  v7 = WeakRetained;
  if (WeakRetained)
  {
    v8 = WeakRetained;
  }

  else
  {
    v8 = [(EKEventProposeNewTimeViewController *)self navigationController];
  }

  v9 = v8;

  if (objc_opt_respondsToSelector())
  {
    [v9 pushViewController:v10 animated:v4];
  }
}

- (void)_presentViewController:(id)a3
{
  v4 = a3;
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

  [v8 presentViewController:v4 animated:1 completion:0];
}

- (void)_dismissPresentedViewControllerAnimated:(BOOL)a3
{
  v3 = a3;
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

  [v8 dismissViewControllerAnimated:v3 completion:0];
}

+ (id)_participantsInArray:(id)a3 thatAreNotInArray:(id)a4
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v20 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (v5 != v6)
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v19 = v5;
    v7 = v5;
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
          v13 = v6;
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

    v5 = v19;
  }

  return v20;
}

- (int64_t)_indexForSection:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = [(EKEventProposeNewTimeViewController *)self sections];
    v6 = [v5 countByEnumeratingWithState:&v14 objects:v19 count:16];
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
            objc_enumerationMutation(v5);
          }

          v11 = *(*(&v14 + 1) + 8 * i);
          if ([v11 sectionShouldBeShown])
          {
            if (v11 == v4)
            {
              goto LABEL_13;
            }

            ++v9;
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v14 objects:v19 count:16];
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

- (id)_sectionForIndex:(unint64_t)a3
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
          if (v8 == a3)
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
    v3 = [(EKEventProposeNewTimeViewController *)self event];
    v4 = [v3 calendar];
    v5 = [v4 source];
    v6 = [v5 ownerAddresses];
    v9 = [v6 anyObject];

    v7 = [(EKEventProposeNewTimeViewController *)self availabilitySearcher];
    v8 = [(EKEventProposeNewTimeViewController *)self event];
    [v7 resetWithEvent:v8 organizerAddressForNewlyScheduledEvent:v9];
  }
}

- (void)_searcherStateChanged:(int64_t)a3
{
  v5 = [(EKEventProposeNewTimeViewController *)self originalConflictSection];
  v57 = [v5 sectionShouldBeShown];

  v6 = [(EKEventProposeNewTimeViewController *)self allInviteesCanAttendSection];
  v58 = [v6 sectionShouldBeShown];

  v7 = [(EKEventProposeNewTimeViewController *)self someInviteesCanAttendSection];
  v51 = [v7 sectionShouldBeShown];

  v8 = [(EKEventProposeNewTimeViewController *)self originalConflictSection];
  v55 = [(EKEventProposeNewTimeViewController *)self _indexForSection:v8];

  v9 = [(EKEventProposeNewTimeViewController *)self allInviteesCanAttendSection];
  v56 = [(EKEventProposeNewTimeViewController *)self _indexForSection:v9];

  v10 = [(EKEventProposeNewTimeViewController *)self someInviteesCanAttendSection];
  v50 = [(EKEventProposeNewTimeViewController *)self _indexForSection:v10];

  v11 = [(EKEventProposeNewTimeViewController *)self originalConflictSection];
  v53 = [v11 numberOfRows];

  v12 = [(EKEventProposeNewTimeViewController *)self allInviteesCanAttendSection];
  v54 = [v12 numberOfRows];

  v13 = [(EKEventProposeNewTimeViewController *)self someInviteesCanAttendSection];
  v49 = [v13 numberOfRows];

  v14 = [(EKEventProposeNewTimeViewController *)self originalConflictSection];
  [v14 availabilitySearcherChangedState:a3];

  v15 = [(EKEventProposeNewTimeViewController *)self allInviteesCanAttendSection];
  [v15 availabilitySearcherChangedState:a3];

  v16 = [(EKEventProposeNewTimeViewController *)self someInviteesCanAttendSection];
  v46 = a3;
  [v16 availabilitySearcherChangedState:a3];

  v17 = [(EKEventProposeNewTimeViewController *)self originalConflictSection];
  v18 = [v17 sectionShouldBeShown];

  v19 = [(EKEventProposeNewTimeViewController *)self allInviteesCanAttendSection];
  v52 = [v19 sectionShouldBeShown];

  v20 = [(EKEventProposeNewTimeViewController *)self someInviteesCanAttendSection];
  v48 = [v20 sectionShouldBeShown];

  v21 = [(EKEventProposeNewTimeViewController *)self originalConflictSection];
  v22 = [(EKEventProposeNewTimeViewController *)self _indexForSection:v21];

  v23 = [(EKEventProposeNewTimeViewController *)self allInviteesCanAttendSection];
  v24 = [(EKEventProposeNewTimeViewController *)self _indexForSection:v23];

  v25 = [(EKEventProposeNewTimeViewController *)self someInviteesCanAttendSection];
  v47 = [(EKEventProposeNewTimeViewController *)self _indexForSection:v25];

  v26 = [(EKEventProposeNewTimeViewController *)self originalConflictSection];
  v27 = [v26 numberOfRows];

  v28 = [(EKEventProposeNewTimeViewController *)self allInviteesCanAttendSection];
  v29 = [v28 numberOfRows];

  v30 = [(EKEventProposeNewTimeViewController *)self someInviteesCanAttendSection];
  v31 = [v30 numberOfRows];

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __61__EKEventProposeNewTimeViewController__searcherStateChanged___block_invoke;
  aBlock[3] = &unk_1E843F238;
  aBlock[4] = self;
  v32 = _Block_copy(aBlock);
  v33 = [(EKEventProposeNewTimeViewController *)self tableView];
  [v33 beginUpdates];

  v34 = [(EKEventProposeNewTimeViewController *)self originalConflictSection];
  (*(v32 + 2))(v32, v34, v57, v55, v53, v18, v22, v27, 0);

  v35 = [(EKEventProposeNewTimeViewController *)self allInviteesCanAttendSection];
  LOBYTE(v44) = 1;
  (*(v32 + 2))(v32, v35, v58, v56, v54, v52, v24, v29, v44);

  v36 = [(EKEventProposeNewTimeViewController *)self someInviteesCanAttendSection];

  if (v36)
  {
    v37 = [(EKEventProposeNewTimeViewController *)self someInviteesCanAttendSection];
    LOBYTE(v45) = 1;
    (*(v32 + 2))(v32, v37, v51, v50, v49, v48, v47, v31, v45);
  }

  v38 = [(EKEventProposeNewTimeViewController *)self tableView];
  [v38 endUpdates];

  [(EKEventProposeNewTimeViewController *)self updateCheckmark];
  v39 = [(EKEvent *)self->_event calendar];
  v40 = [v39 source];
  v41 = [v40 constraints];
  v42 = [v41 supportsAvailabilityRequests];

  if (v42)
  {
    if (v46)
    {
      [(EKEventProposeNewTimeViewController *)self _cancelAvailabilitySpinnerTimer];
      v43 = [(EKEventProposeNewTimeViewController *)self availabilitySearcherRunningSpinner];
      [v43 stopAnimating];
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
  v3 = [(EKEventProposeNewTimeViewController *)self availabilitySearcherRunningSpinnerTimer];
  [v3 invalidate];

  [(EKEventProposeNewTimeViewController *)self setAvailabilitySearcherRunningSpinnerTimer:0];
}

- (void)updateCheckmark
{
  v3 = [(EKEventProposeNewTimeViewController *)self originalConflictSection];
  [v3 clearCheckmark];

  v4 = [(EKEventProposeNewTimeViewController *)self allInviteesCanAttendSection];
  [v4 clearCheckmark];

  v5 = [(EKEventProposeNewTimeViewController *)self someInviteesCanAttendSection];
  [v5 clearCheckmark];

  v6 = [(EKEventProposeNewTimeViewController *)self originalConflictSection];
  [v6 refreshCellsAfterStateChange];

  v7 = [(EKEventProposeNewTimeViewController *)self allInviteesCanAttendSection];
  [v7 refreshCellsAfterStateChange];

  v8 = [(EKEventProposeNewTimeViewController *)self someInviteesCanAttendSection];
  [v8 refreshCellsAfterStateChange];

  v9 = [(EKEventProposeNewTimeViewController *)self proposedStartDate];
  if (!v9 || (v10 = v9, -[EKEventProposeNewTimeViewController proposedStartDate](self, "proposedStartDate"), v11 = objc_claimAutoreleasedReturnValue(), -[EKEventProposeNewTimeViewController event](self, "event"), v12 = objc_claimAutoreleasedReturnValue(), [v12 startDate], v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v11, "isEqualToDate:", v13), v13, v12, v11, v10, v14))
  {
    v15 = [(EKEventProposeNewTimeViewController *)self originalConflictSection];
    [v15 selectRow:0];
  }
}

- (void)dateChangedTo:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(EKEventProposeNewTimeViewController *)self proposedStartDate];
  v6 = [v4 isEqual:v5];

  if (v6)
  {
    v7 = kEKUILogInviteesHandle;
    if (os_log_type_enabled(kEKUILogInviteesHandle, OS_LOG_TYPE_INFO))
    {
      v9 = 138412290;
      v10 = v4;
      _os_log_impl(&dword_1D3400000, v7, OS_LOG_TYPE_INFO, "Proposed time has not changed. Do nothing. Date: %@", &v9, 0xCu);
    }
  }

  else
  {
    [(EKEventProposeNewTimeViewController *)self setProposedStartDate:v4];
    [(EKEventProposeNewTimeViewController *)self updateCustomBackButton];
    [(EKEventProposeNewTimeViewController *)self _updateStatusButtons];
    [(EKEventProposeNewTimeViewController *)self updateCheckmark];
    v8 = [(EKEventProposeNewTimeViewController *)self proposeTimeItem];
    [v8 setPendingProposedTime:0];
  }
}

- (void)editItem:(id)a3 wantsRowInsertions:(id)a4 rowDeletions:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [(EKEventProposeNewTimeViewController *)self tableView];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __80__EKEventProposeNewTimeViewController_editItem_wantsRowInsertions_rowDeletions___block_invoke;
  v12[3] = &unk_1E843EC38;
  v13 = v7;
  v14 = self;
  v15 = v8;
  v10 = v8;
  v11 = v7;
  [v9 performBatchUpdates:v12 completion:&__block_literal_global_4];
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

- (void)editItemRequiresHeightChange:(id)a3
{
  v4 = [(EKEventProposeNewTimeViewController *)self tableView];
  [v4 beginUpdates];

  v5 = [(EKEventProposeNewTimeViewController *)self tableView];
  [v5 endUpdates];
}

- (id)defaultAlertTitleForEditItem:(id)a3
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