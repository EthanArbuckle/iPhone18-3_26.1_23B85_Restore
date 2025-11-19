@interface EKUIEventInviteesViewController
+ (id)_participantsInArray:(id)a3 thatAreNotInArray:(id)a4;
- (BOOL)tableView:(id)a3 canEditRowAtIndexPath:(id)a4;
- (BOOL)tableView:(id)a3 shouldHighlightRowAtIndexPath:(id)a4;
- (BOOL)useCustomBackButton;
- (CGSize)preferredContentSize;
- (EKUIEventInviteesEditViewController)parentController;
- (EKUIEventInviteesViewController)initWithEvent:(id)a3 fromDetail:(BOOL)a4 model:(id)a5;
- (EKUIViewControllerNavigationDelegate)navigationDelegate;
- (EKViewControllerRemoteUIDelegate)remoteUIDelegate;
- (double)tableView:(id)a3 estimatedHeightForRowAtIndexPath:(id)a4;
- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4;
- (id)_sectionForIndex:(unint64_t)a3;
- (id)availabilityTapped;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 contextMenuConfigurationForRowAtIndexPath:(id)a4 point:(CGPoint)a5;
- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4;
- (id)tableView:(id)a3 trailingSwipeActionsConfigurationForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 viewForFooterInSection:(int64_t)a4;
- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4;
- (id)tableView:(id)a3 willSelectRowAtIndexPath:(id)a4;
- (int64_t)_indexForSection:(id)a3;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (int64_t)tableView:(id)a3 editingStyleForRowAtIndexPath:(id)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (unint64_t)supportedInterfaceOrientations;
- (void)_dismiss:(id)a3;
- (void)_dismissPresentedViewControllerAnimated:(BOOL)a3;
- (void)_eventModified:(id)a3;
- (void)_fontSizeDefinitionsChanged:(id)a3;
- (void)_popViewControllerAnimated:(BOOL)a3;
- (void)_presentViewController:(id)a3;
- (void)_pushViewController:(id)a3;
- (void)_refreshIfNeeded;
- (void)_requestDismissal;
- (void)_searcherStateChanged:(int64_t)a3;
- (void)_sendMessageToParticipants:(id)a3;
- (void)_smoothRefreshIfNeededForSections:(id)a3;
- (void)addInviteesTapped;
- (void)dealloc;
- (void)dismissViewControllerAnimated:(BOOL)a3;
- (void)editItemViewController:(id)a3 didCompleteWithAction:(int)a4;
- (void)loadView;
- (void)prepareToReloadAttendeesSections;
- (void)resetBackgroundColor;
- (void)tableView:(id)a3 commitEditingStyle:(int64_t)a4 forRowAtIndexPath:(id)a5;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 willDisplayHeaderView:(id)a4 forSection:(int64_t)a5;
- (void)updateCustomNavigationItemButtons;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation EKUIEventInviteesViewController

- (EKUIEventInviteesViewController)initWithEvent:(id)a3 fromDetail:(BOOL)a4 model:(id)a5
{
  v6 = a4;
  v29[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  v28.receiver = self;
  v28.super_class = EKUIEventInviteesViewController;
  v10 = [(EKUIEventInviteesViewController *)&v28 initWithNibName:0 bundle:0];
  if (v10)
  {
    v11 = EventKitUIBundle();
    v12 = [v11 localizedStringForKey:@"Invitees" value:&stru_1F4EF6790 table:0];
    [(EKUIEventInviteesViewController *)v10 setTitle:v12];

    v13 = [v8 startDate];
    [(EKUIEventInviteesViewController *)v10 setSelectedStartDate:v13];

    v14 = [v8 endDateUnadjustedForLegacyClients];
    [(EKUIEventInviteesViewController *)v10 setSelectedEndDate:v14];

    [(EKUIEventInviteesViewController *)v10 setEvent:v8];
    [(EKUIEventInviteesViewController *)v10 setResetAttendeesSections:1];
    [(EKUIEventInviteesViewController *)v10 setResetConflictResolutionSections:1];
    [(EKUIEventInviteesViewController *)v10 setFromDetail:v6];
    [(EKUIEventInviteesViewController *)v10 setProhibitCallingSearcherStateChanged:0];
    objc_storeStrong(&v10->_model, a5);
    v15 = [(EKUIEventInviteesViewController *)v10 event];
    v16 = [v15 isSelfOrganized];

    if (v16)
    {
      v17 = kEKUILogInviteesHandle;
      if (os_log_type_enabled(kEKUILogInviteesHandle, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(buf[0]) = 0;
        _os_log_impl(&dword_1D3400000, v17, OS_LOG_TYPE_DEBUG, "Initializing the availability searcher.", buf, 2u);
      }

      objc_initWeak(buf, v10);
      v18 = objc_alloc(MEMORY[0x1E6966A38]);
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __66__EKUIEventInviteesViewController_initWithEvent_fromDetail_model___block_invoke;
      v25[3] = &unk_1E843F058;
      objc_copyWeak(&v26, buf);
      v19 = [v18 initWithStateChangedCallback:v25];
      [(EKUIEventInviteesViewController *)v10 setAvailabilitySearcher:v19];

      objc_destroyWeak(&v26);
      objc_destroyWeak(buf);
    }

    objc_initWeak(buf, v10);
    v29[0] = objc_opt_class();
    v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:1];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __66__EKUIEventInviteesViewController_initWithEvent_fromDetail_model___block_invoke_3;
    v23[3] = &unk_1E843EBE8;
    objc_copyWeak(&v24, buf);
    v21 = [(EKUIEventInviteesViewController *)v10 registerForTraitChanges:v20 withHandler:v23];

    objc_destroyWeak(&v24);
    objc_destroyWeak(buf);
  }

  return v10;
}

void __66__EKUIEventInviteesViewController_initWithEvent_fromDetail_model___block_invoke(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __66__EKUIEventInviteesViewController_initWithEvent_fromDetail_model___block_invoke_2;
  v3[3] = &unk_1E843F030;
  objc_copyWeak(v4, (a1 + 32));
  v4[1] = a2;
  dispatch_async(MEMORY[0x1E69E96A0], v3);
  objc_destroyWeak(v4);
}

void __66__EKUIEventInviteesViewController_initWithEvent_fromDetail_model___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _searcherStateChanged:*(a1 + 40)];
}

void __66__EKUIEventInviteesViewController_initWithEvent_fromDetail_model___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained resetBackgroundColor];
}

- (void)dealloc
{
  v3 = [(EKUIEventInviteesViewController *)self inviteesView];
  [v3 setDelegate:0];

  v4 = [(EKUIEventInviteesViewController *)self inviteesView];
  [v4 setDataSource:0];

  v5.receiver = self;
  v5.super_class = EKUIEventInviteesViewController;
  [(EKUIEventInviteesViewController *)&v5 dealloc];
}

- (void)loadView
{
  v3 = objc_alloc(MEMORY[0x1E69DD250]);
  v7 = [v3 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  [v4 addObserver:self selector:sel__eventModified_ name:*MEMORY[0x1E6966918] object:self->_event];
  [v4 addObserver:self selector:sel__fontSizeDefinitionsChanged_ name:*MEMORY[0x1E69DDC48] object:0];
  v5 = [EKUIEventInviteesView alloc];
  [v7 bounds];
  v6 = [(EKUIEventInviteesView *)v5 initWithFrame:2 style:?];
  [(EKUIEventInviteesView *)v6 setAutoresizingMask:18];
  [(EKUIEventInviteesView *)v6 setDelegate:self];
  [(EKUIEventInviteesView *)v6 setDataSource:self];
  [(EKUIEventInviteesViewController *)self setInviteesView:v6];
  if (EKUICatalyst())
  {
    [(EKUIEventInviteesView *)v6 setSeparatorStyle:1];
  }

  [(EKUIEventInviteesViewController *)self setTableView:v6];
  [(EKUIEventInviteesViewController *)self resetBackgroundColor];
  [v7 addSubview:v6];
  [(EKUIEventInviteesViewController *)self setView:v7];
}

- (void)resetBackgroundColor
{
  v3 = [(UIViewController *)self isPresentedInsidePopover];
  v5 = [(EKUIEventInviteesViewController *)self tableView];
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
  v229[6] = *MEMORY[0x1E69E9840];
  v224.receiver = self;
  v224.super_class = EKUIEventInviteesViewController;
  [(EKUIEventInviteesViewController *)&v224 viewDidLoad];
  objc_initWeak(&location, self);
  if (CalSolariumEnabled())
  {
    v3 = objc_alloc_init(EKUIAllInviteesListAndAddSection);
    [(EKUIEventInviteesViewController *)self setAllInviteesAndAddSection:v3];
  }

  else
  {
    v4 = objc_alloc_init(EKUIInviteesViewAddInviteesSection);
    [(EKUIEventInviteesViewController *)self setAddInviteesSection:v4];

    v5 = objc_opt_new();
    [(EKUIEventInviteesViewController *)self setRespondedSection:v5];

    v6 = 0;
    do
    {
      v7 = [(EKUIEventInviteesViewController *)self respondedSection];
      v8 = [[EKUIInviteesViewRespondedInviteesSection alloc] initWithResponseType:v6];
      [v7 addObject:v8];

      v6 = (v6 + 1);
    }

    while (v6 != 3);
    v9 = objc_alloc_init(EKUIInviteesViewNotRespondedInviteesSection);
    [(EKUIEventInviteesViewController *)self setNotRespondedSection:v9];

    v3 = objc_alloc_init(EKUIInviteesViewInvisibleInviteeStatusSection);
    [(EKUIEventInviteesViewController *)self setInvisibleInviteeStatusSection:v3];
  }

  v10 = objc_alloc_init(EKUIInviteesViewAvailabilitySection);
  [(EKUIEventInviteesViewController *)self setAvailabilitySection:v10];

  v11 = objc_alloc_init(EKUIInviteesViewProposedTimeSection);
  [(EKUIEventInviteesViewController *)self setProposedTimeSection:v11];

  v12 = objc_alloc_init(EKUIInviteesViewOriginalConflictSection);
  [(EKUIEventInviteesViewController *)self setOriginalConflictSection:v12];

  v13 = [(EKUIEventInviteesViewController *)self event];
  v14 = [v13 startTimeZone];
  v15 = [(EKUIEventInviteesViewController *)self originalConflictSection];
  [v15 setTimeZone:v14];

  v16 = objc_alloc_init(EKUIInviteesViewAllInviteesCanAttendSection);
  [(EKUIEventInviteesViewController *)self setAllInviteesCanAttendSection:v16];

  v17 = [(EKUIEventInviteesViewController *)self event];
  v18 = [v17 startTimeZone];
  v19 = [(EKUIEventInviteesViewController *)self allInviteesCanAttendSection];
  [v19 setTimeZone:v18];

  v20 = objc_alloc_init(EKUIInviteesViewSomeInviteesCanAttendSection);
  [(EKUIEventInviteesViewController *)self setSomeInviteesCanAttendSection:v20];

  v21 = [(EKUIEventInviteesViewController *)self event];
  v22 = [v21 startTimeZone];
  v23 = [(EKUIEventInviteesViewController *)self someInviteesCanAttendSection];
  [v23 setTimeZone:v22];

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __46__EKUIEventInviteesViewController_viewDidLoad__block_invoke;
  aBlock[3] = &unk_1E843F770;
  objc_copyWeak(&v222, &location);
  v124 = _Block_copy(aBlock);
  v219[0] = MEMORY[0x1E69E9820];
  v219[1] = 3221225472;
  v219[2] = __46__EKUIEventInviteesViewController_viewDidLoad__block_invoke_48;
  v219[3] = &unk_1E843F798;
  objc_copyWeak(&v220, &location);
  v130 = _Block_copy(v219);
  v217[0] = MEMORY[0x1E69E9820];
  v217[1] = 3221225472;
  v217[2] = __46__EKUIEventInviteesViewController_viewDidLoad__block_invoke_51;
  v217[3] = &unk_1E843F810;
  objc_copyWeak(&v218, &location);
  v123 = _Block_copy(v217);
  v215[0] = MEMORY[0x1E69E9820];
  v215[1] = 3221225472;
  v215[2] = __46__EKUIEventInviteesViewController_viewDidLoad__block_invoke_3;
  v215[3] = &unk_1E843F0D0;
  objc_copyWeak(&v216, &location);
  v117 = _Block_copy(v215);
  v213[0] = MEMORY[0x1E69E9820];
  v213[1] = 3221225472;
  v213[2] = __46__EKUIEventInviteesViewController_viewDidLoad__block_invoke_59;
  v213[3] = &unk_1E843F838;
  objc_copyWeak(&v214, &location);
  v115 = _Block_copy(v213);
  v211[0] = MEMORY[0x1E69E9820];
  v211[1] = 3221225472;
  v211[2] = __46__EKUIEventInviteesViewController_viewDidLoad__block_invoke_61;
  v211[3] = &unk_1E843F860;
  objc_copyWeak(&v212, &location);
  v126 = _Block_copy(v211);
  v209[0] = MEMORY[0x1E69E9820];
  v209[1] = 3221225472;
  v209[2] = __46__EKUIEventInviteesViewController_viewDidLoad__block_invoke_63;
  v209[3] = &unk_1E843F888;
  objc_copyWeak(&v210, &location);
  v129 = _Block_copy(v209);
  if (CalSolariumEnabled())
  {
    v24 = [(EKUIEventInviteesViewController *)self allInviteesAndAddSection];
    [v24 setParticipantSetRole:v129];

    v25 = [(EKUIEventInviteesViewController *)self allInviteesAndAddSection];
    [v25 setParticipantTapped:v130];

    v206[0] = MEMORY[0x1E69E9820];
    v206[1] = 3221225472;
    v206[2] = __46__EKUIEventInviteesViewController_viewDidLoad__block_invoke_2_65;
    v206[3] = &unk_1E843F8B0;
    v207 = v123;
    v119 = &v208;
    objc_copyWeak(&v208, &location);
    v26 = [(EKUIEventInviteesViewController *)self allInviteesAndAddSection];
    [v26 setParticipantRemoved:v206];

    v203[0] = MEMORY[0x1E69E9820];
    v203[1] = 3221225472;
    v203[2] = __46__EKUIEventInviteesViewController_viewDidLoad__block_invoke_3_67;
    v203[3] = &unk_1E843F170;
    v204 = v124;
    v121 = &v205;
    objc_copyWeak(&v205, &location);
    v27 = [(EKUIEventInviteesViewController *)self allInviteesAndAddSection];
    [v27 setTableViewCellHook:v203];

    v201[0] = MEMORY[0x1E69E9820];
    v201[1] = 3221225472;
    v201[2] = __46__EKUIEventInviteesViewController_viewDidLoad__block_invoke_4;
    v201[3] = &unk_1E843F080;
    objc_copyWeak(&v202, &location);
    v28 = [(EKUIEventInviteesViewController *)self allInviteesAndAddSection];
    [v28 setAddInviteesTapped:v201];
    v29 = [(EKUIEventInviteesViewController *)self allInviteesAndAddSection];
    [v29 setAddInviteesTapped:v201];

    objc_destroyWeak(&v202);
    v111 = &v207;
    v113 = &v204;
  }

  else
  {
    v30 = [(EKUIEventInviteesViewController *)self addInviteesSection];
    [v30 setParticipantTapped:v130];

    v198[0] = MEMORY[0x1E69E9820];
    v198[1] = 3221225472;
    v198[2] = __46__EKUIEventInviteesViewController_viewDidLoad__block_invoke_5;
    v198[3] = &unk_1E843F8B0;
    v31 = v123;
    v199 = v31;
    v119 = &v200;
    objc_copyWeak(&v200, &location);
    v32 = [(EKUIEventInviteesViewController *)self addInviteesSection];
    [v32 setParticipantRemoved:v198];

    v195[0] = MEMORY[0x1E69E9820];
    v195[1] = 3221225472;
    v195[2] = __46__EKUIEventInviteesViewController_viewDidLoad__block_invoke_6;
    v195[3] = &unk_1E843F170;
    v33 = v124;
    v196 = v33;
    v121 = &v197;
    objc_copyWeak(&v197, &location);
    v34 = [(EKUIEventInviteesViewController *)self addInviteesSection];
    [v34 setTableViewCellHook:v195];

    v35 = [(EKUIEventInviteesViewController *)self addInviteesSection];
    [v35 setParticipantSetRole:v129];

    v36 = [(EKUIEventInviteesViewController *)self invisibleInviteeStatusSection];
    [v36 setParticipantTapped:v130];

    v192[0] = MEMORY[0x1E69E9820];
    v192[1] = 3221225472;
    v192[2] = __46__EKUIEventInviteesViewController_viewDidLoad__block_invoke_7;
    v192[3] = &unk_1E843F8B0;
    v127 = v31;
    v193 = v127;
    objc_copyWeak(&v194, &location);
    v37 = [(EKUIEventInviteesViewController *)self invisibleInviteeStatusSection];
    [v37 setParticipantRemoved:v192];

    v38 = [(EKUIEventInviteesViewController *)self invisibleInviteeStatusSection];
    [v38 setParticipantSetRole:v129];

    v189[0] = MEMORY[0x1E69E9820];
    v189[1] = 3221225472;
    v189[2] = __46__EKUIEventInviteesViewController_viewDidLoad__block_invoke_8;
    v189[3] = &unk_1E843F170;
    v39 = v33;
    v190 = v39;
    objc_copyWeak(&v191, &location);
    v40 = [(EKUIEventInviteesViewController *)self respondedSection];
    v41 = [v40 objectAtIndexedSubscript:2];
    [v41 setTableViewCellHook:v189];

    v42 = 0;
    v111 = &v199;
    v113 = &v196;
    v43 = MEMORY[0x1E69E9820];
    do
    {
      v44 = [(EKUIEventInviteesViewController *)self respondedSection];
      v45 = [v44 objectAtIndexedSubscript:v42];
      [v45 setParticipantTapped:v130];

      v185[0] = v43;
      v185[1] = 3221225472;
      v185[2] = __46__EKUIEventInviteesViewController_viewDidLoad__block_invoke_9;
      v185[3] = &unk_1E843F8D8;
      v46 = v127;
      v186 = v46;
      objc_copyWeak(&v187, &location);
      v188 = v42;
      v47 = [(EKUIEventInviteesViewController *)self respondedSection];
      v48 = [v47 objectAtIndexedSubscript:v42];
      [v48 setParticipantRemoved:v185];

      v181[0] = v43;
      v181[1] = 3221225472;
      v181[2] = __46__EKUIEventInviteesViewController_viewDidLoad__block_invoke_10;
      v181[3] = &unk_1E843F900;
      v49 = v39;
      v182 = v49;
      objc_copyWeak(&v183, &location);
      v184 = v42;
      v50 = [(EKUIEventInviteesViewController *)self respondedSection];
      v51 = [v50 objectAtIndexedSubscript:v42];
      [v51 setTableViewCellHook:v181];

      v52 = [(EKUIEventInviteesViewController *)self respondedSection];
      v53 = [v52 objectAtIndexedSubscript:v42];
      [v53 setParticipantSetRole:v129];

      objc_destroyWeak(&v183);
      objc_destroyWeak(&v187);

      ++v42;
    }

    while (v42 != 3);
    v54 = [(EKUIEventInviteesViewController *)self notRespondedSection];
    [v54 setParticipantSetRole:v129];

    v55 = [(EKUIEventInviteesViewController *)self notRespondedSection];
    [v55 setParticipantTapped:v130];

    v178[0] = MEMORY[0x1E69E9820];
    v178[1] = 3221225472;
    v178[2] = __46__EKUIEventInviteesViewController_viewDidLoad__block_invoke_11;
    v178[3] = &unk_1E843F8B0;
    v179 = v46;
    objc_copyWeak(&v180, &location);
    v56 = [(EKUIEventInviteesViewController *)self notRespondedSection];
    [v56 setParticipantRemoved:v178];

    v175[0] = MEMORY[0x1E69E9820];
    v175[1] = 3221225472;
    v175[2] = __46__EKUIEventInviteesViewController_viewDidLoad__block_invoke_12;
    v175[3] = &unk_1E843F170;
    v176 = v49;
    objc_copyWeak(&v177, &location);
    v57 = [(EKUIEventInviteesViewController *)self notRespondedSection];
    [v57 setTableViewCellHook:v175];

    v173[0] = MEMORY[0x1E69E9820];
    v173[1] = 3221225472;
    v173[2] = __46__EKUIEventInviteesViewController_viewDidLoad__block_invoke_13;
    v173[3] = &unk_1E843F080;
    objc_copyWeak(&v174, &location);
    v58 = [(EKUIEventInviteesViewController *)self notRespondedSection];
    [v58 setAddInviteesTapped:v173];
    v59 = [(EKUIEventInviteesViewController *)self addInviteesSection];
    [v59 setAddInviteesTapped:v173];

    objc_destroyWeak(&v174);
    objc_destroyWeak(&v177);

    objc_destroyWeak(&v180);
    objc_destroyWeak(&v191);

    objc_destroyWeak(&v194);
  }

  objc_destroyWeak(v121);

  objc_destroyWeak(v119);
  v171[0] = MEMORY[0x1E69E9820];
  v171[1] = 3221225472;
  v171[2] = __46__EKUIEventInviteesViewController_viewDidLoad__block_invoke_14;
  v171[3] = &unk_1E843F080;
  objc_copyWeak(&v172, &location);
  v60 = [(EKUIEventInviteesViewController *)self availabilitySection];
  [v60 setViewAvailabilityTapped:v171];

  v168[0] = MEMORY[0x1E69E9820];
  v168[1] = 3221225472;
  v168[2] = __46__EKUIEventInviteesViewController_viewDidLoad__block_invoke_17;
  v168[3] = &unk_1E843F170;
  v61 = v124;
  v169 = v61;
  objc_copyWeak(&v170, &location);
  v62 = [(EKUIEventInviteesViewController *)self availabilitySection];
  [v62 setTableViewCellHook:v168];

  v63 = [(EKUIEventInviteesViewController *)self proposedTimeSection];
  v64 = [(EKUIEventInviteesViewController *)self availabilitySearcher];
  [v63 setAvailabilitySearcher:v64];

  v166[0] = MEMORY[0x1E69E9820];
  v166[1] = 3221225472;
  v166[2] = __46__EKUIEventInviteesViewController_viewDidLoad__block_invoke_18;
  v166[3] = &unk_1E843F1C0;
  v65 = v117;
  v167 = v65;
  v66 = [(EKUIEventInviteesViewController *)self proposedTimeSection];
  [v66 setShowPreviewOfEventAtTime:v166];

  v163[0] = MEMORY[0x1E69E9820];
  v163[1] = 3221225472;
  v163[2] = __46__EKUIEventInviteesViewController_viewDidLoad__block_invoke_19;
  v163[3] = &unk_1E843F170;
  v67 = v61;
  v164 = v67;
  objc_copyWeak(&v165, &location);
  v68 = [(EKUIEventInviteesViewController *)self proposedTimeSection];
  [v68 setTableViewCellHook:v163];

  v160[0] = MEMORY[0x1E69E9820];
  v160[1] = 3221225472;
  v160[2] = __46__EKUIEventInviteesViewController_viewDidLoad__block_invoke_20;
  v160[3] = &unk_1E843F198;
  v69 = v115;
  v161 = v69;
  objc_copyWeak(&v162, &location);
  v70 = [(EKUIEventInviteesViewController *)self proposedTimeSection];
  [v70 setNewTimeChosen:v160];

  v71 = [(EKUIEventInviteesViewController *)self originalConflictSection];
  v72 = [(EKUIEventInviteesViewController *)self availabilitySearcher];
  [v71 setAvailabilitySearcher:v72];

  v157[0] = MEMORY[0x1E69E9820];
  v157[1] = 3221225472;
  v157[2] = __46__EKUIEventInviteesViewController_viewDidLoad__block_invoke_21;
  v157[3] = &unk_1E843F148;
  objc_copyWeak(&v159, &location);
  v73 = v65;
  v158 = v73;
  v74 = [(EKUIEventInviteesViewController *)self originalConflictSection];
  [v74 setShowPreviewOfEventAtTime:v157];

  v154[0] = MEMORY[0x1E69E9820];
  v154[1] = 3221225472;
  v154[2] = __46__EKUIEventInviteesViewController_viewDidLoad__block_invoke_22;
  v154[3] = &unk_1E843F170;
  v75 = v67;
  v155 = v75;
  objc_copyWeak(&v156, &location);
  v76 = [(EKUIEventInviteesViewController *)self originalConflictSection];
  [v76 setTableViewCellHook:v154];

  v151[0] = MEMORY[0x1E69E9820];
  v151[1] = 3221225472;
  v151[2] = __46__EKUIEventInviteesViewController_viewDidLoad__block_invoke_23;
  v151[3] = &unk_1E843F198;
  v77 = v69;
  v152 = v77;
  objc_copyWeak(&v153, &location);
  v78 = [(EKUIEventInviteesViewController *)self originalConflictSection];
  [v78 setNewTimeChosen:v151];

  v79 = [(EKUIEventInviteesViewController *)self allInviteesCanAttendSection];
  v80 = [(EKUIEventInviteesViewController *)self availabilitySearcher];
  [v79 setAvailabilitySearcher:v80];

  v149[0] = MEMORY[0x1E69E9820];
  v149[1] = 3221225472;
  v149[2] = __46__EKUIEventInviteesViewController_viewDidLoad__block_invoke_24;
  v149[3] = &unk_1E843F1C0;
  v81 = v73;
  v150 = v81;
  v82 = [(EKUIEventInviteesViewController *)self allInviteesCanAttendSection];
  [v82 setShowPreviewOfEventAtTime:v149];

  v146[0] = MEMORY[0x1E69E9820];
  v146[1] = 3221225472;
  v146[2] = __46__EKUIEventInviteesViewController_viewDidLoad__block_invoke_25;
  v146[3] = &unk_1E843F170;
  v83 = v75;
  v147 = v83;
  objc_copyWeak(&v148, &location);
  v84 = [(EKUIEventInviteesViewController *)self allInviteesCanAttendSection];
  [v84 setTableViewCellHook:v146];

  v143[0] = MEMORY[0x1E69E9820];
  v143[1] = 3221225472;
  v143[2] = __46__EKUIEventInviteesViewController_viewDidLoad__block_invoke_26;
  v143[3] = &unk_1E843F198;
  v85 = v77;
  v144 = v85;
  objc_copyWeak(&v145, &location);
  v86 = [(EKUIEventInviteesViewController *)self allInviteesCanAttendSection];
  [v86 setNewTimeChosen:v143];

  v87 = [(EKUIEventInviteesViewController *)self allInviteesCanAttendSection];
  [v87 setShowMoreAlternativeTimesTapped:v126];

  v88 = [(EKUIEventInviteesViewController *)self someInviteesCanAttendSection];
  v89 = [(EKUIEventInviteesViewController *)self availabilitySearcher];
  [v88 setAvailabilitySearcher:v89];

  v141[0] = MEMORY[0x1E69E9820];
  v141[1] = 3221225472;
  v141[2] = __46__EKUIEventInviteesViewController_viewDidLoad__block_invoke_27;
  v141[3] = &unk_1E843F1C0;
  v118 = v81;
  v142 = v118;
  v90 = [(EKUIEventInviteesViewController *)self someInviteesCanAttendSection];
  [v90 setShowPreviewOfEventAtTime:v141];

  v138[0] = MEMORY[0x1E69E9820];
  v138[1] = 3221225472;
  v138[2] = __46__EKUIEventInviteesViewController_viewDidLoad__block_invoke_28;
  v138[3] = &unk_1E843F170;
  v114 = v83;
  v139 = v114;
  objc_copyWeak(&v140, &location);
  v91 = [(EKUIEventInviteesViewController *)self someInviteesCanAttendSection];
  [v91 setTableViewCellHook:v138];

  v135[0] = MEMORY[0x1E69E9820];
  v135[1] = 3221225472;
  v135[2] = __46__EKUIEventInviteesViewController_viewDidLoad__block_invoke_29;
  v135[3] = &unk_1E843F198;
  v116 = v85;
  v136 = v116;
  objc_copyWeak(&v137, &location);
  v92 = [(EKUIEventInviteesViewController *)self someInviteesCanAttendSection];
  [v92 setNewTimeChosen:v135];

  v93 = [(EKUIEventInviteesViewController *)self someInviteesCanAttendSection];
  [v93 setShowMoreAlternativeTimesTapped:v126];

  if (CalSolariumEnabled())
  {
    v128 = [(EKUIEventInviteesViewController *)self allInviteesAndAddSection];
    v229[0] = v128;
    v125 = [(EKUIEventInviteesViewController *)self availabilitySection];
    v229[1] = v125;
    v122 = [(EKUIEventInviteesViewController *)self originalConflictSection];
    v229[2] = v122;
    v120 = [(EKUIEventInviteesViewController *)self proposedTimeSection];
    v229[3] = v120;
    v94 = [(EKUIEventInviteesViewController *)self allInviteesCanAttendSection];
    v229[4] = v94;
    v95 = [(EKUIEventInviteesViewController *)self someInviteesCanAttendSection];
    v229[5] = v95;
    v96 = [MEMORY[0x1E695DEC8] arrayWithObjects:v229 count:6];
    [(EKUIEventInviteesViewController *)self setSections:v96];
  }

  else
  {
    v128 = [(EKUIEventInviteesViewController *)self addInviteesSection];
    v228[0] = v128;
    v125 = [(EKUIEventInviteesViewController *)self invisibleInviteeStatusSection];
    v228[1] = v125;
    v122 = [(EKUIEventInviteesViewController *)self respondedSection];
    v120 = [v122 objectAtIndexedSubscript:0];
    v228[2] = v120;
    v94 = [(EKUIEventInviteesViewController *)self respondedSection];
    v95 = [v94 objectAtIndexedSubscript:1];
    v228[3] = v95;
    v96 = [(EKUIEventInviteesViewController *)self respondedSection];
    v112 = [v96 objectAtIndexedSubscript:2];
    v228[4] = v112;
    v110 = [(EKUIEventInviteesViewController *)self notRespondedSection];
    v228[5] = v110;
    v97 = [(EKUIEventInviteesViewController *)self availabilitySection];
    v228[6] = v97;
    v98 = [(EKUIEventInviteesViewController *)self originalConflictSection];
    v228[7] = v98;
    v99 = [(EKUIEventInviteesViewController *)self proposedTimeSection];
    v228[8] = v99;
    v100 = [(EKUIEventInviteesViewController *)self allInviteesCanAttendSection];
    v228[9] = v100;
    v101 = [(EKUIEventInviteesViewController *)self someInviteesCanAttendSection];
    v228[10] = v101;
    v102 = [MEMORY[0x1E695DEC8] arrayWithObjects:v228 count:11];
    [(EKUIEventInviteesViewController *)self setSections:v102];
  }

  v103 = kEKUILogInviteesHandle;
  if (os_log_type_enabled(v103, OS_LOG_TYPE_DEBUG))
  {
    v104 = [(EKUIEventInviteesViewController *)self sections];
    *buf = 138412290;
    v227 = v104;
    _os_log_impl(&dword_1D3400000, v103, OS_LOG_TYPE_DEBUG, "Set up sections: [%@].", buf, 0xCu);
  }

  v105 = [(EKUIEventInviteesViewController *)self inviteesView];
  v133 = 0u;
  v134 = 0u;
  v131 = 0u;
  v132 = 0u;
  v106 = [(EKUIEventInviteesViewController *)self sections];
  v107 = [v106 countByEnumeratingWithState:&v131 objects:v225 count:16];
  if (v107)
  {
    v108 = *v132;
    do
    {
      v109 = 0;
      do
      {
        if (*v132 != v108)
        {
          objc_enumerationMutation(v106);
        }

        [*(*(&v131 + 1) + 8 * v109++) reloadAndRegisterReusableCellsWithTableView:v105];
      }

      while (v107 != v109);
      v107 = [v106 countByEnumeratingWithState:&v131 objects:v225 count:16];
    }

    while (v107);
  }

  [(EKUIEventInviteesViewController *)self _refreshIfNeeded];
  objc_destroyWeak(&v137);

  objc_destroyWeak(&v140);
  objc_destroyWeak(&v145);

  objc_destroyWeak(&v148);
  objc_destroyWeak(&v153);

  objc_destroyWeak(&v156);
  objc_destroyWeak(&v159);
  objc_destroyWeak(&v162);

  objc_destroyWeak(&v165);
  objc_destroyWeak(&v170);

  objc_destroyWeak(&v172);
  objc_destroyWeak(&v210);

  objc_destroyWeak(&v212);
  objc_destroyWeak(&v214);

  objc_destroyWeak(&v216);
  objc_destroyWeak(&v218);

  objc_destroyWeak(&v220);
  objc_destroyWeak(&v222);
  objc_destroyWeak(&location);
}

id __46__EKUIEventInviteesViewController_viewDidLoad__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = v5;
  if (a3 < 0)
  {
    v13 = kEKUILogInviteesHandle;
    if (os_log_type_enabled(kEKUILogInviteesHandle, OS_LOG_TYPE_ERROR))
    {
      v14 = MEMORY[0x1E696AD98];
      v15 = v13;
      v16 = [v14 numberWithInteger:a3];
      v22 = 138412290;
      v23 = v16;
      _os_log_impl(&dword_1D3400000, v15, OS_LOG_TYPE_ERROR, "Invalid row index given: [%@].  Will not attempt to acquire a cell.", &v22, 0xCu);
    }
  }

  else if ([v5 sectionShouldBeShown])
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v8 = [WeakRetained _indexForSection:v6];

    if (v8 != -1)
    {
      v9 = [MEMORY[0x1E696AC88] indexPathForRow:a3 inSection:v8];
      v10 = objc_loadWeakRetained((a1 + 32));
      v11 = [v10 inviteesView];
      v12 = [v11 cellForRowAtIndexPath:v9];

      goto LABEL_10;
    }

    v17 = kEKUILogInviteesHandle;
    if (os_log_type_enabled(kEKUILogInviteesHandle, OS_LOG_TYPE_ERROR))
    {
      v18 = MEMORY[0x1E696AD98];
      v19 = v17;
      v20 = [v18 numberWithInteger:-1];
      v22 = 138412290;
      v23 = v20;
      _os_log_impl(&dword_1D3400000, v19, OS_LOG_TYPE_ERROR, "Invalid section index found: [%@].  Will not attempt to acquire a cell.", &v22, 0xCu);
    }
  }

  v12 = 0;
LABEL_10:

  return v12;
}

void __46__EKUIEventInviteesViewController_viewDidLoad__block_invoke_48(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = kEKUILogInviteesHandle;
  if (os_log_type_enabled(kEKUILogInviteesHandle, OS_LOG_TYPE_DEBUG))
  {
    v7 = 138412290;
    v8 = v3;
    _os_log_impl(&dword_1D3400000, v4, OS_LOG_TYPE_DEBUG, "Participant tapped: [%@].", &v7, 0xCu);
  }

  v5 = [[EKIdentityViewController alloc] initWithIdentity:v3];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _pushViewController:v5];
}

void __46__EKUIEventInviteesViewController_viewDidLoad__block_invoke_51(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v30 = *MEMORY[0x1E69E9840];
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = kEKUILogInviteesHandle;
  if (os_log_type_enabled(kEKUILogInviteesHandle, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v29 = v10;
    _os_log_impl(&dword_1D3400000, v13, OS_LOG_TYPE_DEBUG, "Participant removed: [%@].", buf, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v15 = [WeakRetained inviteesView];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __46__EKUIEventInviteesViewController_viewDidLoad__block_invoke_52;
  v22[3] = &unk_1E843F7C0;
  objc_copyWeak(&v27, (a1 + 32));
  v16 = v12;
  v26 = v16;
  v17 = v10;
  v23 = v17;
  v18 = v9;
  v24 = v18;
  v19 = v11;
  v25 = v19;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __46__EKUIEventInviteesViewController_viewDidLoad__block_invoke_54;
  v20[3] = &unk_1E843F7E8;
  objc_copyWeak(&v21, (a1 + 32));
  [v15 performBatchUpdates:v22 completion:v20];

  objc_destroyWeak(&v21);
  objc_destroyWeak(&v27);
}

void __46__EKUIEventInviteesViewController_viewDidLoad__block_invoke_52(uint64_t a1)
{
  v33 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v3 = [WeakRetained availabilitySection];
  v4 = [v3 sectionShouldBeShown];

  v5 = objc_loadWeakRetained((a1 + 64));
  v6 = [v5 availabilitySection];
  v7 = [v5 _indexForSection:v6];

  (*(*(a1 + 56) + 16))();
  v8 = objc_loadWeakRetained((a1 + 64));
  v9 = [v8 event];
  [v9 removeAttendee:*(a1 + 32)];

  v10 = objc_loadWeakRetained((a1 + 64));
  v11 = [v10 availabilitySection];
  v12 = [v11 sectionShouldBeShown];

  if (v4 && (v12 & 1) == 0)
  {
    v13 = kEKUILogInviteesHandle;
    if (os_log_type_enabled(kEKUILogInviteesHandle, OS_LOG_TYPE_DEBUG))
    {
      v14 = MEMORY[0x1E696AD98];
      v15 = v13;
      v16 = [v14 numberWithInteger:v7];
      *buf = 138412290;
      v32 = v16;
      _os_log_impl(&dword_1D3400000, v15, OS_LOG_TYPE_DEBUG, "The show availability section was present and now is not. Deleting this section: %@", buf, 0xCu);
    }

    v17 = objc_loadWeakRetained((a1 + 64));
    v18 = [v17 inviteesView];
    v19 = [MEMORY[0x1E696AC90] indexSetWithIndex:v7];
    [v18 deleteSections:v19 withRowAnimation:5];
  }

  if ([*(a1 + 40) numberOfRows])
  {
    v20 = kEKUILogInviteesHandle;
    if (os_log_type_enabled(kEKUILogInviteesHandle, OS_LOG_TYPE_DEBUG))
    {
      v21 = *(a1 + 48);
      *buf = 138412290;
      v32 = v21;
      _os_log_impl(&dword_1D3400000, v20, OS_LOG_TYPE_DEBUG, "Deleting row at index path: [%@].", buf, 0xCu);
    }

    v22 = objc_loadWeakRetained((a1 + 64));
    v23 = [v22 inviteesView];
    v30 = *(a1 + 48);
    v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v30 count:1];
    [v23 deleteRowsAtIndexPaths:v24 withRowAnimation:100];
  }

  else
  {
    v25 = [*(a1 + 48) section];
    v26 = kEKUILogInviteesHandle;
    if (os_log_type_enabled(kEKUILogInviteesHandle, OS_LOG_TYPE_DEBUG))
    {
      v27 = MEMORY[0x1E696AD98];
      v28 = v26;
      v29 = [v27 numberWithInteger:v25];
      *buf = 138412290;
      v32 = v29;
      _os_log_impl(&dword_1D3400000, v28, OS_LOG_TYPE_DEBUG, "There are no more attendees left in section [%@].  Deleting this section.", buf, 0xCu);
    }

    v22 = objc_loadWeakRetained((a1 + 64));
    v23 = [v22 inviteesView];
    v24 = [MEMORY[0x1E696AC90] indexSetWithIndex:v25];
    [v23 deleteSections:v24 withRowAnimation:100];
  }
}

void __46__EKUIEventInviteesViewController_viewDidLoad__block_invoke_54(uint64_t a1, int a2)
{
  if (a2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained setProhibitCallingSearcherStateChanged:1];

    v4 = dispatch_time(0, 600000000);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __46__EKUIEventInviteesViewController_viewDidLoad__block_invoke_2;
    block[3] = &unk_1E843F080;
    objc_copyWeak(&v6, (a1 + 32));
    dispatch_after(v4, MEMORY[0x1E69E96A0], block);
    objc_destroyWeak(&v6);
  }
}

void __46__EKUIEventInviteesViewController_viewDidLoad__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setProhibitCallingSearcherStateChanged:0];

  v3 = objc_loadWeakRetained((a1 + 32));
  [v3 setResetConflictResolutionSections:1];

  v4 = objc_loadWeakRetained((a1 + 32));
  [v4 _refreshIfNeeded];

  v5 = objc_loadWeakRetained((a1 + 32));
  [v5 updateCustomNavigationItemButtons];

  v6 = objc_loadWeakRetained((a1 + 32));
  [v6 setDeletedParticipants:1];
}

void __46__EKUIEventInviteesViewController_viewDidLoad__block_invoke_3(uint64_t a1, void *a2, void *a3, void *a4)
{
  v20 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v11 = kEKUILogInviteesHandle;
    if (os_log_type_enabled(kEKUILogInviteesHandle, OS_LOG_TYPE_DEBUG))
    {
      v14 = 138412802;
      v15 = v7;
      v16 = 2112;
      v17 = v8;
      v18 = 2112;
      v19 = v9;
      _os_log_impl(&dword_1D3400000, v11, OS_LOG_TYPE_DEBUG, "Showing preview of event.  Date to show: [%@].  Overridden start date: [%@]  Overridden start date: [%@]", &v14, 0x20u);
    }

    v12 = [[EKDayPreviewController alloc] initWithDate:v7 event:WeakRetained[135] overriddenEventStartDate:v8 overriddenEventEndDate:v9 model:WeakRetained[124]];
    [(EKDayPreviewController *)v12 setStyle:2];
    v13 = [WeakRetained navigationDelegate];
    [v13 pushViewController:v12 animated:1];
  }
}

void __46__EKUIEventInviteesViewController_viewDidLoad__block_invoke_59(uint64_t a1, void *a2, void *a3, void *a4)
{
  v28 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = kEKUILogInviteesHandle;
  if (os_log_type_enabled(kEKUILogInviteesHandle, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412546;
    v25 = v7;
    v26 = 2112;
    v27 = v8;
    _os_log_impl(&dword_1D3400000, v10, OS_LOG_TYPE_DEBUG, "Setting selected date.  Start date:[%@]  End date: [%@].", buf, 0x16u);
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v11 = v9;
  v12 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v20;
    do
    {
      v15 = 0;
      do
      {
        if (*v20 != v14)
        {
          objc_enumerationMutation(v11);
        }

        [*(*(&v19 + 1) + 8 * v15++) clearCheckmark];
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v13);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setSelectedStartDate:v7];

  v17 = objc_loadWeakRetained((a1 + 32));
  [v17 setSelectedEndDate:v8];

  v18 = objc_loadWeakRetained((a1 + 32));
  [v18 updateCustomNavigationItemButtons];
}

void __46__EKUIEventInviteesViewController_viewDidLoad__block_invoke_61(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = kEKUILogInviteesHandle;
  if (os_log_type_enabled(kEKUILogInviteesHandle, OS_LOG_TYPE_DEBUG))
  {
    *v7 = 0;
    _os_log_impl(&dword_1D3400000, v4, OS_LOG_TYPE_DEBUG, "'Show more alternative times' tapped.", v7, 2u);
  }

  if ([v3 count])
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v6 = [WeakRetained inviteesView];
    [v6 reloadData];
  }
}

void __46__EKUIEventInviteesViewController_viewDidLoad__block_invoke_63(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v25 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a4;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v10 = [WeakRetained event];
  v11 = [v10 attendees];

  v12 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v21;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v21 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v20 + 1) + 8 * i);
        if ([v7 isEqualToParticipant:v16])
        {
          [v16 setParticipantRole:a3];
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v13);
  }

  v17 = objc_loadWeakRetained((a1 + 32));
  [v17 setResetAttendeesSections:1];

  v18 = objc_loadWeakRetained((a1 + 32));
  [v18 _smoothRefreshIfNeededForSections:v8];

  v19 = objc_loadWeakRetained((a1 + 32));
  [v19 updateCustomNavigationItemButtons];
}

void __46__EKUIEventInviteesViewController_viewDidLoad__block_invoke_2_65(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = *(a1 + 32);
  v8 = a4;
  v9 = a3;
  v10 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v11 = [WeakRetained allInviteesAndAddSection];
  (*(v7 + 16))(v7, v11, v10, v9, v8);
}

id __46__EKUIEventInviteesViewController_viewDidLoad__block_invoke_3_67(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = [WeakRetained allInviteesAndAddSection];
  v6 = (*(v3 + 16))(v3, v5, a2);

  return v6;
}

void __46__EKUIEventInviteesViewController_viewDidLoad__block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained addInviteesTapped];
}

void __46__EKUIEventInviteesViewController_viewDidLoad__block_invoke_5(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = *(a1 + 32);
  v8 = a4;
  v9 = a3;
  v10 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v11 = [WeakRetained addInviteesSection];
  (*(v7 + 16))(v7, v11, v10, v9, v8);
}

id __46__EKUIEventInviteesViewController_viewDidLoad__block_invoke_6(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = [WeakRetained addInviteesSection];
  v6 = (*(v3 + 16))(v3, v5, a2);

  return v6;
}

void __46__EKUIEventInviteesViewController_viewDidLoad__block_invoke_7(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = *(a1 + 32);
  v8 = a4;
  v9 = a3;
  v10 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v11 = [WeakRetained invisibleInviteeStatusSection];
  (*(v7 + 16))(v7, v11, v10, v9, v8);
}

id __46__EKUIEventInviteesViewController_viewDidLoad__block_invoke_8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = [WeakRetained invisibleInviteeStatusSection];
  v6 = (*(v3 + 16))(v3, v5, a2);

  return v6;
}

void __46__EKUIEventInviteesViewController_viewDidLoad__block_invoke_9(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = *(a1 + 32);
  v8 = a4;
  v9 = a3;
  v10 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v11 = [WeakRetained respondedSection];
  v12 = [v11 objectAtIndexedSubscript:*(a1 + 48)];
  (*(v7 + 16))(v7, v12, v10, v9, v8);
}

id __46__EKUIEventInviteesViewController_viewDidLoad__block_invoke_10(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = [WeakRetained respondedSection];
  v7 = [v6 objectAtIndexedSubscript:*(a1 + 48)];
  v8 = (*(v4 + 16))(v4, v7, a2);

  return v8;
}

void __46__EKUIEventInviteesViewController_viewDidLoad__block_invoke_11(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = *(a1 + 32);
  v8 = a4;
  v9 = a3;
  v10 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v11 = [WeakRetained notRespondedSection];
  (*(v7 + 16))(v7, v11, v10, v9, v8);
}

id __46__EKUIEventInviteesViewController_viewDidLoad__block_invoke_12(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = [WeakRetained notRespondedSection];
  v6 = (*(v3 + 16))(v3, v5, a2);

  return v6;
}

void __46__EKUIEventInviteesViewController_viewDidLoad__block_invoke_13(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained addInviteesTapped];
}

void __46__EKUIEventInviteesViewController_viewDidLoad__block_invoke_14(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained availabilityTapped];

  v4 = objc_loadWeakRetained((a1 + 32));
  v5 = [v4 EKUI_editor];

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __46__EKUIEventInviteesViewController_viewDidLoad__block_invoke_15;
  v7[3] = &unk_1E843F928;
  objc_copyWeak(&v9, (a1 + 32));
  v6 = v5;
  v8 = v6;
  [v3 setSaveBlock:v7];

  objc_destroyWeak(&v9);
}

void __46__EKUIEventInviteesViewController_viewDidLoad__block_invoke_15(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setProhibitCallingSearcherStateChanged:1];

  v7 = [v5 startDate];
  v8 = objc_loadWeakRetained((a1 + 40));
  [v8 setSelectedStartDate:v7];

  [*(a1 + 32) saveEvent:v5 span:a3 error:0];
  v9 = dispatch_time(0, 600000000);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__EKUIEventInviteesViewController_viewDidLoad__block_invoke_16;
  block[3] = &unk_1E843F080;
  objc_copyWeak(&v11, (a1 + 40));
  dispatch_after(v9, MEMORY[0x1E69E96A0], block);
  objc_destroyWeak(&v11);
}

void __46__EKUIEventInviteesViewController_viewDidLoad__block_invoke_16(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setProhibitCallingSearcherStateChanged:0];

  v3 = objc_loadWeakRetained((a1 + 32));
  [v3 setResetAttendeesSections:1];

  v4 = objc_loadWeakRetained((a1 + 32));
  [v4 setResetConflictResolutionSections:1];

  v5 = objc_loadWeakRetained((a1 + 32));
  [v5 _refreshIfNeeded];

  v6 = objc_loadWeakRetained((a1 + 32));
  [v6 updateCustomNavigationItemButtons];
}

id __46__EKUIEventInviteesViewController_viewDidLoad__block_invoke_17(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = [WeakRetained availabilitySection];
  v6 = (*(v3 + 16))(v3, v5, a2);

  return v6;
}

id __46__EKUIEventInviteesViewController_viewDidLoad__block_invoke_19(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = [WeakRetained proposedTimeSection];
  v6 = (*(v3 + 16))(v3, v5, a2);

  return v6;
}

void __46__EKUIEventInviteesViewController_viewDidLoad__block_invoke_20(uint64_t a1, void *a2, void *a3)
{
  v15[3] = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v9 = [WeakRetained originalConflictSection];
  v10 = objc_loadWeakRetained((a1 + 40));
  v11 = [v10 allInviteesCanAttendSection];
  v15[1] = v11;
  v12 = objc_loadWeakRetained((a1 + 40));
  v13 = [v12 someInviteesCanAttendSection];
  v15[2] = v13;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:3];
  (*(v5 + 16))(v5, v7, v6, v14);
}

void __46__EKUIEventInviteesViewController_viewDidLoad__block_invoke_21(uint64_t a1, void *a2, void *a3)
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

id __46__EKUIEventInviteesViewController_viewDidLoad__block_invoke_22(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = [WeakRetained originalConflictSection];
  v6 = (*(v3 + 16))(v3, v5, a2);

  return v6;
}

void __46__EKUIEventInviteesViewController_viewDidLoad__block_invoke_23(uint64_t a1, void *a2, void *a3)
{
  v15[3] = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v9 = [WeakRetained proposedTimeSection];
  v10 = objc_loadWeakRetained((a1 + 40));
  v11 = [v10 allInviteesCanAttendSection];
  v15[1] = v11;
  v12 = objc_loadWeakRetained((a1 + 40));
  v13 = [v12 someInviteesCanAttendSection];
  v15[2] = v13;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:3];
  (*(v5 + 16))(v5, v7, v6, v14);
}

id __46__EKUIEventInviteesViewController_viewDidLoad__block_invoke_25(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = [WeakRetained allInviteesCanAttendSection];
  v6 = (*(v3 + 16))(v3, v5, a2);

  return v6;
}

void __46__EKUIEventInviteesViewController_viewDidLoad__block_invoke_26(uint64_t a1, void *a2, void *a3)
{
  v15[3] = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v9 = [WeakRetained originalConflictSection];
  v10 = objc_loadWeakRetained((a1 + 40));
  v11 = [v10 proposedTimeSection];
  v15[1] = v11;
  v12 = objc_loadWeakRetained((a1 + 40));
  v13 = [v12 someInviteesCanAttendSection];
  v15[2] = v13;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:3];
  (*(v5 + 16))(v5, v7, v6, v14);
}

id __46__EKUIEventInviteesViewController_viewDidLoad__block_invoke_28(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = [WeakRetained someInviteesCanAttendSection];
  v6 = (*(v3 + 16))(v3, v5, a2);

  return v6;
}

void __46__EKUIEventInviteesViewController_viewDidLoad__block_invoke_29(uint64_t a1, void *a2, void *a3)
{
  v15[3] = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v9 = [WeakRetained originalConflictSection];
  v10 = objc_loadWeakRetained((a1 + 40));
  v11 = [v10 allInviteesCanAttendSection];
  v15[1] = v11;
  v12 = objc_loadWeakRetained((a1 + 40));
  v13 = [v12 proposedTimeSection];
  v15[2] = v13;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:3];
  (*(v5 + 16))(v5, v7, v6, v14);
}

- (void)_sendMessageToParticipants:(id)a3
{
  v4 = a3;
  CalAnalyticsSendEvent();
  v5 = [[EKUIEmailCompositionManager alloc] initWithEvent:self->_event];
  messageSendingManager = self->_messageSendingManager;
  self->_messageSendingManager = v5;

  objc_initWeak(&location, self);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __62__EKUIEventInviteesViewController__sendMessageToParticipants___block_invoke;
  v10[3] = &unk_1E843F950;
  objc_copyWeak(&v11, &location);
  v10[4] = self;
  [(EKUIEmailCompositionManager *)self->_messageSendingManager setMessageSendingComplete:v10];
  v7 = [(EKUIEmailCompositionManager *)self->_messageSendingManager viewController];
  [v7 setModalPresentationStyle:2];

  v8 = [EKEditItemViewController preferredViewControllerForPresentationsFromViewController:self];
  v9 = [(EKUIEmailCompositionManager *)self->_messageSendingManager viewController];
  [v8 presentViewController:v9 animated:1 completion:0];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __62__EKUIEventInviteesViewController__sendMessageToParticipants___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained[148] viewController];
  v4 = [v3 presentingViewController];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __62__EKUIEventInviteesViewController__sendMessageToParticipants___block_invoke_2;
  v5[3] = &unk_1E843EC60;
  v5[4] = *(a1 + 32);
  [v4 dismissViewControllerAnimated:1 completion:v5];
}

void __62__EKUIEventInviteesViewController__sendMessageToParticipants___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 1184);
  *(v1 + 1184) = 0;
}

- (BOOL)useCustomBackButton
{
  if ([(EKUIEventInviteesViewController *)self fromDetail])
  {
    v3 = [(EKUIEventInviteesViewController *)self event];
    if ([v3 allowsAttendeesModifications])
    {
      v4 = [(EKUIEventInviteesViewController *)self event];
      if ([v4 hasChanges])
      {
        LOBYTE(v5) = 1;
      }

      else
      {
        v6 = [(EKUIEventInviteesViewController *)self selectedStartDate];
        v7 = [(EKUIEventInviteesViewController *)self event];
        v8 = [v7 startDate];
        v5 = [v6 isEqualToDate:v8] ^ 1;
      }
    }

    else
    {
      LOBYTE(v5) = 0;
    }
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (void)updateCustomNavigationItemButtons
{
  if ((CalSolariumEnabled() & 1) == 0)
  {
    if ([(EKUIEventInviteesViewController *)self useCustomBackButton])
    {
      v3 = objc_alloc(MEMORY[0x1E69DC708]);
      v4 = EventKitUIBundle();
      v5 = [v4 localizedStringForKey:@"Done" value:&stru_1F4EF6790 table:0];
      v6 = [v3 initWithTitle:v5 style:0 target:self action:sel__dismiss_];

      v7 = [(EKUIEventInviteesViewController *)self navigationItem];
      [v7 setLeftBarButtonItem:v6];

      v8 = MEMORY[0x1E695DEC8];
      v9 = +[_TtC10EventKitUI22EKRemoteUIButtonAction Done];
      v18 = [v8 arrayWithObject:v9];
    }

    else
    {
      v18 = 0;
    }

    if ([EKUIEmailCompositionManager canShowViewControllerForEvent:self->_event withParticipantRecipients:0])
    {
      v10 = objc_alloc(MEMORY[0x1E69DC708]);
      v11 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"envelope"];
      v12 = [v10 initWithImage:v11 style:0 target:self action:sel__sendMessageToParticipants_];

      v13 = [(EKUIEventInviteesViewController *)self navigationItem];
      [v13 setRightBarButtonItem:v12];

      v14 = MEMORY[0x1E695DEC8];
      v15 = +[_TtC10EventKitUI22EKRemoteUIButtonAction PresentEmailCompose];
      v16 = [v14 arrayWithObject:v15];
    }

    else
    {
      v12 = [(EKUIEventInviteesViewController *)self navigationItem];
      [v12 setRightBarButtonItem:0];
      v16 = 0;
    }

    v17 = [(EKUIEventInviteesViewController *)self remoteUIDelegate];
    [v17 viewController:self didChangeLeftBarButtons:v18 rightBarButtons:v16];
  }
}

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = EKUIEventInviteesViewController;
  [(EKUIEventInviteesViewController *)&v4 viewWillAppear:a3];
  [(EKUIEventInviteesViewController *)self updateCustomNavigationItemButtons];
  [(EKUIEventInviteesViewController *)self _refreshIfNeeded];
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  [(EKUIEventInviteesViewController *)self setViewIsVisible:1];
  v6.receiver = self;
  v6.super_class = EKUIEventInviteesViewController;
  [(EKUIEventInviteesViewController *)&v6 viewDidAppear:v3];
  v5 = [MEMORY[0x1E696AD88] defaultCenter];
  [v5 addObserver:self selector:sel_willEnterForeground name:*MEMORY[0x1E69DDBC0] object:0];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = EKUIEventInviteesViewController;
  [(EKUIEventInviteesViewController *)&v5 viewWillDisappear:a3];
  [(EKUIEventInviteesViewController *)self setViewIsVisible:0];
  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  [v4 removeObserver:self name:*MEMORY[0x1E69DDBC0] object:0];
}

- (unint64_t)supportedInterfaceOrientations
{
  v2 = [(EKUIEventInviteesViewController *)self view];
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

- (int64_t)numberOfSectionsInTableView:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = self->_sections;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v14 objects:v20 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v15;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v6 += [*(*(&v14 + 1) + 8 * i) sectionShouldBeShown];
      }

      v5 = [(NSArray *)v3 countByEnumeratingWithState:&v14 objects:v20 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  v9 = kEKUILogInviteesHandle;
  if (os_log_type_enabled(kEKUILogInviteesHandle, OS_LOG_TYPE_DEBUG))
  {
    v10 = MEMORY[0x1E696AD98];
    v11 = v9;
    v12 = [v10 numberWithInteger:v6];
    *buf = 138412290;
    v19 = v12;
    _os_log_impl(&dword_1D3400000, v11, OS_LOG_TYPE_DEBUG, "Number of sections: [%@]", buf, 0xCu);
  }

  return v6;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = [(EKUIEventInviteesViewController *)self _sectionForIndex:a4];
  v5 = [v4 numberOfRows];
  v6 = kEKUILogInviteesHandle;
  if (os_log_type_enabled(kEKUILogInviteesHandle, OS_LOG_TYPE_DEBUG))
  {
    v7 = v6;
    v8 = [v4 debugTitle];
    v10 = 138412546;
    v11 = v8;
    v12 = 2048;
    v13 = v5;
    _os_log_impl(&dword_1D3400000, v7, OS_LOG_TYPE_DEBUG, "Section [%@] has [%ld] rows.", &v10, 0x16u);
  }

  return v5;
}

- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = [(EKUIEventInviteesViewController *)self _sectionForIndex:a4];
  v5 = [v4 headerTitle];
  v6 = kEKUILogInviteesHandle;
  if (os_log_type_enabled(kEKUILogInviteesHandle, OS_LOG_TYPE_DEBUG))
  {
    v7 = v6;
    v8 = [v4 debugTitle];
    v10 = 138412546;
    v11 = v8;
    v12 = 2112;
    v13 = v5;
    _os_log_impl(&dword_1D3400000, v7, OS_LOG_TYPE_DEBUG, "Section [%@] has a header title of [%@].", &v10, 0x16u);
  }

  return v5;
}

- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4
{
  v4 = [(EKUIEventInviteesViewController *)self _sectionForIndex:a4];
  if (objc_opt_respondsToSelector())
  {
    v5 = [v4 customHeaderView];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)tableView:(id)a3 viewForFooterInSection:(int64_t)a4
{
  v4 = [(EKUIEventInviteesViewController *)self _sectionForIndex:a4];
  if (objc_opt_respondsToSelector())
  {
    v5 = [v4 customFooterView];
  }

  else
  {
    v5 = 0;
  }

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
  v17 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = -[EKUIEventInviteesViewController _sectionForIndex:](self, "_sectionForIndex:", [v7 section]);
  v9 = [v8 cellForIndexPath:v7 inTableView:v6];
  if (EKUICatalyst())
  {
    v10 = [v6 backgroundColor];
    [v9 setBackgroundColor:v10];
  }

  v11 = kEKUILogInviteesHandle;
  if (os_log_type_enabled(kEKUILogInviteesHandle, OS_LOG_TYPE_DEBUG))
  {
    v13 = 138412546;
    v14 = v7;
    v15 = 2112;
    v16 = v9;
    _os_log_impl(&dword_1D3400000, v11, OS_LOG_TYPE_DEBUG, "Cell acquired for index path: [%@].  Cell: [%@]", &v13, 0x16u);
  }

  return v9;
}

- (id)tableView:(id)a3 contextMenuConfigurationForRowAtIndexPath:(id)a4 point:(CGPoint)a5
{
  v7 = a3;
  v8 = a4;
  v9 = -[EKUIEventInviteesViewController _sectionForIndex:](self, "_sectionForIndex:", [v8 section]);
  if ([v9 supportsContextMenuForIndexPath:v8])
  {
    v10 = [v7 contextMenuInteraction];
    v11 = [v9 contextMenuDataForIndexPath:v8 interaction:v10];

    v12 = MEMORY[0x1E69DC8D8];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __93__EKUIEventInviteesViewController_tableView_contextMenuConfigurationForRowAtIndexPath_point___block_invoke_2;
    v16[3] = &unk_1E843F998;
    v17 = v11;
    v13 = v11;
    v14 = [v12 configurationWithIdentifier:0 previewProvider:&__block_literal_global_9 actionProvider:v16];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (BOOL)tableView:(id)a3 canEditRowAtIndexPath:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = -[EKUIEventInviteesViewController _sectionForIndex:](self, "_sectionForIndex:", [v5 section]);
  v7 = [v6 canEditRow:v5];
  v8 = kEKUILogInviteesHandle;
  if (os_log_type_enabled(kEKUILogInviteesHandle, OS_LOG_TYPE_DEBUG))
  {
    v9 = v8;
    v10 = CalBooleanAsString();
    v11 = [v6 debugTitle];
    v13 = 138412802;
    v14 = v10;
    v15 = 2112;
    v16 = v11;
    v17 = 2112;
    v18 = v5;
    _os_log_impl(&dword_1D3400000, v9, OS_LOG_TYPE_DEBUG, "Can edit row: [%@].  Section: [%@].  Index path: [%@].", &v13, 0x20u);
  }

  return v7;
}

- (void)tableView:(id)a3 commitEditingStyle:(int64_t)a4 forRowAtIndexPath:(id)a5
{
  v16 = *MEMORY[0x1E69E9840];
  v7 = a5;
  v8 = -[EKUIEventInviteesViewController _sectionForIndex:](self, "_sectionForIndex:", [v7 section]);
  [v8 commitEditingStyle:a4 forRow:v7];
  v9 = kEKUILogInviteesHandle;
  if (os_log_type_enabled(kEKUILogInviteesHandle, OS_LOG_TYPE_DEBUG))
  {
    v10 = v9;
    v11 = [v8 debugTitle];
    v12 = 138412546;
    v13 = v7;
    v14 = 2112;
    v15 = v11;
    _os_log_impl(&dword_1D3400000, v10, OS_LOG_TYPE_DEBUG, "Committed editing style for row at index path: [%@].  Section: [%@].", &v12, 0x16u);
  }
}

- (double)tableView:(id)a3 estimatedHeightForRowAtIndexPath:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = -[EKUIEventInviteesViewController _sectionForIndex:](self, "_sectionForIndex:", [v5 section]);
  [v6 estimatedHeightForRow:v5];
  v8 = v7;
  v9 = kEKUILogInviteesHandle;
  if (os_log_type_enabled(kEKUILogInviteesHandle, OS_LOG_TYPE_DEBUG))
  {
    v10 = MEMORY[0x1E696AD98];
    v11 = v9;
    v12 = [v10 numberWithDouble:v8];
    v13 = [v6 debugTitle];
    v15 = 138412802;
    v16 = v12;
    v17 = 2112;
    v18 = v13;
    v19 = 2112;
    v20 = v5;
    _os_log_impl(&dword_1D3400000, v11, OS_LOG_TYPE_DEBUG, "Estimated row height: [%@].  Section: [%@].  Index path: [%@].", &v15, 0x20u);
  }

  return v8;
}

- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4
{
  v5 = a4;
  if (MEMORY[0x1D38B98D0]())
  {
    v6 = -[EKUIEventInviteesViewController _sectionForIndex:](self, "_sectionForIndex:", [v5 section]);
    [v6 heightForRow:v5];
    v8 = v7;
  }

  else
  {
    v8 = *MEMORY[0x1E69DE3D0];
  }

  return v8;
}

- (BOOL)tableView:(id)a3 shouldHighlightRowAtIndexPath:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = -[EKUIEventInviteesViewController _sectionForIndex:](self, "_sectionForIndex:", [v5 section]);
  v7 = [v6 canSelectRow:v5];
  v8 = kEKUILogInviteesHandle;
  if (os_log_type_enabled(kEKUILogInviteesHandle, OS_LOG_TYPE_DEBUG))
  {
    v9 = v8;
    v10 = CalBooleanAsString();
    v11 = [v6 debugTitle];
    v13 = 138412802;
    v14 = v10;
    v15 = 2112;
    v16 = v11;
    v17 = 2112;
    v18 = v5;
    _os_log_impl(&dword_1D3400000, v9, OS_LOG_TYPE_DEBUG, "Highlighting allowed: [%@].  Section: [%@].  Index path: [%@]", &v13, 0x20u);
  }

  return v7;
}

- (id)tableView:(id)a3 willSelectRowAtIndexPath:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = -[EKUIEventInviteesViewController _sectionForIndex:](self, "_sectionForIndex:", [v5 section]);
  v7 = v5;
  if (([v6 canSelectRow:v5] & 1) == 0)
  {

    v7 = 0;
  }

  v8 = kEKUILogInviteesHandle;
  if (os_log_type_enabled(kEKUILogInviteesHandle, OS_LOG_TYPE_DEBUG))
  {
    v9 = v8;
    v10 = [v6 debugTitle];
    v12 = 138412802;
    v13 = v7;
    v14 = 2112;
    v15 = v10;
    v16 = 2112;
    v17 = v5;
    _os_log_impl(&dword_1D3400000, v9, OS_LOG_TYPE_DEBUG, "Overridden index path for row selection: [%@].  Section: [%@].  Original index path: [%@]", &v12, 0x20u);
  }

  return v7;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v16 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = a3;
  v8 = -[EKUIEventInviteesViewController _sectionForIndex:](self, "_sectionForIndex:", [v6 section]);
  [v8 selectRow:v6];
  [v7 deselectRowAtIndexPath:v6 animated:1];

  v9 = kEKUILogInviteesHandle;
  if (os_log_type_enabled(kEKUILogInviteesHandle, OS_LOG_TYPE_DEBUG))
  {
    v10 = v9;
    v11 = [v8 debugTitle];
    v12 = 138412546;
    v13 = v6;
    v14 = 2112;
    v15 = v11;
    _os_log_impl(&dword_1D3400000, v10, OS_LOG_TYPE_DEBUG, "Selected row at index path: [%@].  Section: [%@]", &v12, 0x16u);
  }
}

- (id)tableView:(id)a3 trailingSwipeActionsConfigurationForRowAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = -[EKUIEventInviteesViewController _sectionForIndex:](self, "_sectionForIndex:", [v5 section]);
  v7 = [v6 actionsForRow:v5];

  v8 = [MEMORY[0x1E69DCFC0] configurationWithActions:v7];

  return v8;
}

- (int64_t)tableView:(id)a3 editingStyleForRowAtIndexPath:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = -[EKUIEventInviteesViewController _sectionForIndex:](self, "_sectionForIndex:", [v5 section]);
  v7 = [v6 editingStyleForRow:v5];
  v8 = kEKUILogInviteesHandle;
  if (os_log_type_enabled(kEKUILogInviteesHandle, OS_LOG_TYPE_DEBUG))
  {
    v9 = MEMORY[0x1E696AD98];
    v10 = v8;
    v11 = [v9 numberWithInteger:v7];
    v12 = [v6 debugTitle];
    v14 = 138412802;
    v15 = v11;
    v16 = 2112;
    v17 = v5;
    v18 = 2112;
    v19 = v12;
    _os_log_impl(&dword_1D3400000, v10, OS_LOG_TYPE_DEBUG, "Editing style [%@] chosen for row at index path: [%@].  Section: [%@]", &v14, 0x20u);
  }

  return v7;
}

- (void)editItemViewController:(id)a3 didCompleteWithAction:(int)a4
{
  v4 = *&a4;
  v72 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (!v4)
  {
    v37 = kEKUILogInviteesHandle;
    if (!os_log_type_enabled(kEKUILogInviteesHandle, OS_LOG_TYPE_DEBUG))
    {
LABEL_44:
      [(EKUIEventInviteesViewController *)self _dismissPresentedViewControllerAnimated:1, v52];
      goto LABEL_45;
    }

    *buf = 138412290;
    v69 = v6;
    v38 = "The user cancelled out from this controller: [%@]";
    v39 = v37;
    v40 = OS_LOG_TYPE_DEBUG;
    goto LABEL_43;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = v6;
      if (![(EKUIEventInviteesViewController *)self fromDetail])
      {
        v41 = [(EKUIEventInviteesViewController *)self selectedStartDate];
        v42 = [(EKUIEventInviteesViewController *)v11 modifiedStartDate];
        v43 = [v41 isEqualToDate:v42];

        if ((v43 & 1) == 0)
        {
          v44 = [(EKUIEventInviteesViewController *)v11 modifiedStartDate];
          v45 = [(EKUIEventInviteesViewController *)self event];
          [v45 setStartDate:v44];

          v46 = [(EKUIEventInviteesViewController *)v11 modifiedEndDate];
          v47 = [(EKUIEventInviteesViewController *)self event];
          [v47 setEndDateUnadjustedForLegacyClients:v46];

          v48 = [(EKUIEventInviteesViewController *)v11 modifiedStartDate];
          [(EKUIEventInviteesViewController *)self setSelectedStartDate:v48];

          v49 = [(EKUIEventInviteesViewController *)v11 modifiedEndDate];
          [(EKUIEventInviteesViewController *)self setSelectedEndDate:v49];

          [(EKUIEventInviteesViewController *)self setResetAttendeesSections:1];
          [(EKUIEventInviteesViewController *)self setResetConflictResolutionSections:1];
          [(EKUIEventInviteesViewController *)self _refreshIfNeeded];
        }
      }

      goto LABEL_40;
    }

    v50 = kEKUILogInviteesHandle;
    if (!os_log_type_enabled(kEKUILogInviteesHandle, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_44;
    }

    *buf = 138412290;
    v69 = v6;
    v38 = "Unrecognized controller completed: [%@]";
    v39 = v50;
    v40 = OS_LOG_TYPE_ERROR;
LABEL_43:
    _os_log_impl(&dword_1D3400000, v39, v40, v38, buf, 0xCu);
    goto LABEL_44;
  }

  v7 = kEKUILogInviteesHandle;
  if (os_log_type_enabled(kEKUILogInviteesHandle, OS_LOG_TYPE_DEBUG))
  {
    v8 = MEMORY[0x1E696AD98];
    v9 = v7;
    v10 = [v8 numberWithUnsignedInt:v4];
    *buf = 138412546;
    v69 = v10;
    v70 = 2112;
    v71 = v6;
    _os_log_impl(&dword_1D3400000, v9, OS_LOG_TYPE_DEBUG, "Controller completed with action: [%@].  Controller: [%@]", buf, 0x16u);
  }

  v55 = v6;
  v11 = v6;
  v12 = [(EKUIEventInviteesViewController *)v11 attendees];
  v13 = [(EKUIEventInviteesViewController *)self event];
  v14 = [v13 attendeesNotIncludingOrganizerOrLocationsOrResources];

  v56 = [objc_opt_class() _participantsInArray:v14 thatAreNotInArray:v12];
  v53 = v14;
  v54 = v12;
  v15 = [objc_opt_class() _participantsInArray:v12 thatAreNotInArray:v14];
  if (([(EKUIEventInviteesViewController *)v11 appendOnly]& 1) == 0)
  {
    v52 = v15;
    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    v16 = v56;
    v17 = [(EKUIEventInviteesViewController *)v16 countByEnumeratingWithState:&v62 objects:v67 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v63;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v63 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v62 + 1) + 8 * i);
          v22 = kEKUILogInviteesHandle;
          if (os_log_type_enabled(kEKUILogInviteesHandle, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v69 = v16;
            _os_log_impl(&dword_1D3400000, v22, OS_LOG_TYPE_DEBUG, "Removing attendee: [%@]", buf, 0xCu);
          }

          v23 = [(EKUIEventInviteesViewController *)self event];
          [v23 removeAttendee:v21];
        }

        v18 = [(EKUIEventInviteesViewController *)v16 countByEnumeratingWithState:&v62 objects:v67 count:16];
      }

      while (v18);
    }

    v15 = v52;
  }

  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v24 = v15;
  v25 = [v24 countByEnumeratingWithState:&v58 objects:v66 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v59;
    do
    {
      for (j = 0; j != v26; ++j)
      {
        if (*v59 != v27)
        {
          objc_enumerationMutation(v24);
        }

        v29 = *(*(&v58 + 1) + 8 * j);
        v30 = kEKUILogInviteesHandle;
        if (os_log_type_enabled(kEKUILogInviteesHandle, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v69 = v56;
          _os_log_impl(&dword_1D3400000, v30, OS_LOG_TYPE_DEBUG, "Adding attendee: [%@]", buf, 0xCu);
        }

        v31 = [(EKUIEventInviteesViewController *)self event];
        [v31 addAttendee:v29];

        if ([(EKUIEventInviteesViewController *)v11 appendOnly])
        {
          [v29 markAsForward];
        }
      }

      v26 = [v24 countByEnumeratingWithState:&v58 objects:v66 count:16];
    }

    while (v26);
  }

  v6 = v55;
  if (!-[EKUIEventInviteesViewController count](v56, "count") && ![v24 count])
  {
    goto LABEL_33;
  }

  v32 = [(EKUIEventInviteesViewController *)self event];
  v33 = [v32 attendeesNotIncludingOrganizerOrLocationsOrResources];
  v34 = [v33 count];

  v35 = kEKUILogInviteesHandle;
  v36 = os_log_type_enabled(kEKUILogInviteesHandle, OS_LOG_TYPE_DEBUG);
  if (v34)
  {
    if (v36)
    {
      *buf = 0;
      _os_log_impl(&dword_1D3400000, v35, OS_LOG_TYPE_DEBUG, "The attendee list was modified.  Marking sections as needing an update.", buf, 2u);
    }

    [(EKUIEventInviteesViewController *)self setResetAttendeesSections:1];
    [(EKUIEventInviteesViewController *)self setResetConflictResolutionSections:1];
    [(EKUIEventInviteesViewController *)self _refreshIfNeeded];
LABEL_33:

LABEL_40:
    goto LABEL_44;
  }

  if (v36)
  {
    *buf = 138412290;
    v69 = self;
    _os_log_impl(&dword_1D3400000, v35, OS_LOG_TYPE_DEBUG, "There are no more participants left.  Will request dismissal of [%@]", buf, 0xCu);
  }

  v51 = [EKEditItemViewController preferredViewControllerForPresentationsFromViewController:self];
  v57[0] = MEMORY[0x1E69E9820];
  v57[1] = 3221225472;
  v57[2] = __80__EKUIEventInviteesViewController_editItemViewController_didCompleteWithAction___block_invoke;
  v57[3] = &unk_1E843EC60;
  v57[4] = self;
  [v51 dismissViewControllerAnimated:1 completion:v57];

LABEL_45:
  [(EKUIEventInviteesViewController *)self updateCustomNavigationItemButtons];
}

- (void)_dismiss:(id)a3
{
  v4 = a3;
  v5 = [(EKUIEventInviteesViewController *)self selectedStartDate];
  v6 = [(EKUIEventInviteesViewController *)self event];
  v7 = [v6 startDate];
  v8 = [v5 isEqualToDate:v7];

  if (CalSolariumEnabled() && (-[EKUIEventInviteesViewController event](self, "event"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v9 isNew], v9, (v10 & 1) != 0) || (-[EKUIEventInviteesViewController event](self, "event"), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "hasChanges") | v8 ^ 1, v11, (v12 & 1) == 0))
  {
    if (CalSolariumEnabled())
    {
      v30 = [(EKUIEventInviteesViewController *)self parentController];
      [v30 goBackToEditor];
    }

    else
    {
      [(EKUIEventInviteesViewController *)self _popViewControllerAnimated:1];
    }
  }

  else
  {
    if (v8)
    {
      v13 = 0;
    }

    else
    {
      v13 = 4;
    }

    if ([(EKUIEventInviteesViewController *)self deletedParticipants])
    {
      v14 = v13 | 2;
    }

    else
    {
      v14 = v13;
    }

    v15 = [(EKUIEventInviteesViewController *)self addInviteesSection];
    v16 = [v15 pendingParticipants];
    v17 = [v16 count];

    if (v17 <= 1)
    {
      v18 = v14;
    }

    else
    {
      v18 = v14 + 1;
    }

    v19 = [(UIResponder *)self EKUI_editor];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __44__EKUIEventInviteesViewController__dismiss___block_invoke;
    aBlock[3] = &unk_1E843F9C0;
    v37 = v19;
    v20 = v19;
    v21 = _Block_copy(aBlock);
    v22 = [(EKUIEventInviteesViewController *)self event];
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __44__EKUIEventInviteesViewController__dismiss___block_invoke_2;
    v31[3] = &unk_1E843FA10;
    v32 = v22;
    v33 = self;
    v34 = v4;
    v35 = v21;
    v23 = *MEMORY[0x1E695F050];
    v24 = *(MEMORY[0x1E695F050] + 8);
    v25 = *(MEMORY[0x1E695F050] + 16);
    v26 = *(MEMORY[0x1E695F050] + 24);
    v27 = v21;
    v28 = v22;
    v29 = [EKUISendInviteAlertController presentInviteAlertWithOptions:v18 sourceView:0 sourceRect:v34 sourceItem:self viewController:v31 withCompletionHandler:v23, v24, v25, v26];
  }
}

void __44__EKUIEventInviteesViewController__dismiss___block_invoke_2(uint64_t a1, int a2)
{
  if (a2 == 1)
  {
    [*(a1 + 32) rollback];
  }

  else
  {
    if (a2)
    {
      return;
    }

    v3 = [*(a1 + 40) selectedStartDate];
    [*(a1 + 32) setStartDate:v3];

    v4 = [*(a1 + 40) selectedEndDate];
    [*(a1 + 32) setEndDateUnadjustedForLegacyClients:v4];

    if ([*(a1 + 32) isOrWasPartOfRecurringSeries])
    {
      v18 = 0;
      v19 = &v18;
      v20 = 0x3032000000;
      v21 = __Block_byref_object_copy__0;
      v22 = __Block_byref_object_dispose__0;
      v23 = 0;
      v6 = *(a1 + 40);
      v5 = *(a1 + 48);
      v7 = *(a1 + 32);
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __44__EKUIEventInviteesViewController__dismiss___block_invoke_110;
      v13[3] = &unk_1E843F9E8;
      v16 = *(a1 + 56);
      v8 = *(a1 + 32);
      v9 = *(a1 + 40);
      v14 = v8;
      v15 = v9;
      v17 = &v18;
      v10 = [EKUIRecurrenceAlertController presentDetachAlertWithOptions:0 viewController:v6 barButtonItem:v5 forEvent:v7 withCompletionHandler:v13];
      v11 = v19[5];
      v19[5] = v10;

      _Block_object_dispose(&v18, 8);
      return;
    }

    (*(*(a1 + 56) + 16))();
  }

  v12 = *(a1 + 40);

  [v12 dismissViewControllerAnimated:1];
}

void __44__EKUIEventInviteesViewController__dismiss___block_invoke_110(uint64_t a1, uint64_t a2)
{
  if ((a2 - 3) >= 3)
  {
    (*(*(a1 + 48) + 16))();
    [*(a1 + 40) dismissViewControllerAnimated:1];
    v4 = *(*(a1 + 56) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = 0;
  }
}

- (void)_eventModified:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = kEKUILogInviteesHandle;
  if (os_log_type_enabled(kEKUILogInviteesHandle, OS_LOG_TYPE_DEBUG))
  {
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&dword_1D3400000, v5, OS_LOG_TYPE_DEBUG, "Received a notification: [%@].", &v6, 0xCu);
  }

  [(EKUIEventInviteesViewController *)self setResetAttendeesSections:1];
  if ([(EKUIEventInviteesViewController *)self viewIsVisible])
  {
    [(EKUIEventInviteesViewController *)self _refreshIfNeeded];
  }
}

- (void)_fontSizeDefinitionsChanged:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = kEKUILogInviteesHandle;
  if (os_log_type_enabled(kEKUILogInviteesHandle, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v8 = v4;
    _os_log_impl(&dword_1D3400000, v5, OS_LOG_TYPE_DEBUG, "Received a notification: [%@].", buf, 0xCu);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __63__EKUIEventInviteesViewController__fontSizeDefinitionsChanged___block_invoke;
  block[3] = &unk_1E843EC60;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __63__EKUIEventInviteesViewController__fontSizeDefinitionsChanged___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = kEKUILogInviteesHandle;
  if (os_log_type_enabled(kEKUILogInviteesHandle, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_1D3400000, v2, OS_LOG_TYPE_DEBUG, "Reloading reusable cell identifiers.", buf, 2u);
  }

  v3 = [*(a1 + 32) inviteesView];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [*(a1 + 32) sections];
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v10 + 1) + 8 * v8++) reloadAndRegisterReusableCellsWithTableView:v3];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v15 count:16];
    }

    while (v6);
  }

  v9 = [*(a1 + 32) inviteesView];
  [v9 reloadData];
}

- (void)addInviteesTapped
{
  v3 = [EKEventAttendeesEditViewController alloc];
  v4 = [(EKUIEventInviteesViewController *)self event];
  v5 = [(EKUIEventInviteesViewController *)self selectedStartDate];
  v6 = [(EKUIEventInviteesViewController *)self selectedEndDate];
  v20 = [(EKEventAttendeesEditViewController *)v3 initWithFrame:v4 event:v5 overriddenEventStartDate:v6 overriddenEventEndDate:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];

  [(EKEditItemViewController *)v20 setEditDelegate:self];
  [(EKEventAttendeesEditViewController *)v20 setDisableShowingButtons:1];
  v7 = [(EKUIEventInviteesViewController *)self event];
  LODWORD(v4) = [v7 isExternallyOrganizedInvitation];

  if (v4)
  {
    if (CalSolariumEnabled())
    {
      [(EKUIEventInviteesViewController *)self allInviteesAndAddSection];
    }

    else
    {
      [(EKUIEventInviteesViewController *)self addInviteesSection];
    }
    v10 = ;
    v11 = [v10 pendingParticipants];
    [(EKEventAttendeesEditViewController *)v20 setAttendees:v11];

    [(EKEventAttendeesEditViewController *)v20 setAppendOnly:1];
  }

  else
  {
    v8 = [(EKUIEventInviteesViewController *)self event];
    v9 = [v8 attendeesNotIncludingOrganizerOrLocationsOrResources];
    [(EKEventAttendeesEditViewController *)v20 setAttendees:v9];
  }

  v12 = [(EKUIEventInviteesViewController *)self event];
  v13 = [v12 calendar];
  v14 = [v13 source];
  v15 = [v14 externalID];

  [(EKEventAttendeesEditViewController *)v20 setSearchAccountID:v15];
  v16 = [[EKUIManagedNavigationController alloc] initWithRootViewController:v20];
  v17 = [(EKUIEventInviteesViewController *)self view];
  if (EKUICurrentWidthSizeClassIsRegularInViewHierarchy(v17))
  {
    v18 = [(EKUIEventInviteesViewController *)self view];
    IsRegular = EKUICurrentHeightSizeClassIsRegular(v18);

    if (IsRegular)
    {
      [(EKUIManagedNavigationController *)v16 setModalPresentationStyle:3];
    }
  }

  else
  {
  }

  [(EKUIEventInviteesViewController *)self _presentViewController:v16];
}

- (id)availabilityTapped
{
  v3 = [EKUIAvailabilityViewController alloc];
  v4 = [(EKUIEventInviteesViewController *)self event];
  v5 = [(EKUIAvailabilityViewController *)v3 initWithEvent:v4];

  [(EKEditItemViewController *)v5 setEditDelegate:self];
  [(EKUIAvailabilityViewController *)v5 setFromDetail:[(EKUIEventInviteesViewController *)self fromDetail]];
  v6 = [[EKUIAvailabilityNavigationController alloc] initWithRootViewController:v5];
  [(EKUIAvailabilityViewController *)v5 preferredContentSize];
  [(EKUIAvailabilityNavigationController *)v6 setPreferredContentSize:?];
  if (+[SwappableViewControllerImplementationFactory shouldUseOutOfProcessUI])
  {
    v7 = [(EKUIEventInviteesViewController *)self view];
    if (EKUICurrentWidthSizeClassIsCompactInViewHierarchy(v7))
    {
    }

    else
    {
      v8 = [(EKUIEventInviteesViewController *)self view];
      IsCompact = EKUICurrentHeightSizeClassIsCompact(v8);

      if (!IsCompact)
      {
        [(EKUIAvailabilityNavigationController *)v6 setModalPresentationStyle:0];
      }
    }
  }

  [(EKUIEventInviteesViewController *)self _presentViewController:v6];

  return v5;
}

- (EKUIViewControllerNavigationDelegate)navigationDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_navigationDelegate);

  if (WeakRetained)
  {
    v4 = objc_loadWeakRetained(&self->_navigationDelegate);
  }

  else
  {
    v4 = [(EKUIEventInviteesViewController *)self navigationController];
  }

  return v4;
}

- (void)_pushViewController:(id)a3
{
  v8 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_navigationDelegate);
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = WeakRetained;
  }

  else
  {
    v6 = [(EKUIEventInviteesViewController *)self navigationController];
  }

  v7 = v6;

  if (objc_opt_respondsToSelector())
  {
    [v7 pushViewController:v8 animated:1];
  }
}

- (void)_presentViewController:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_navigationDelegate);
  if (WeakRetained || ([EKEditItemViewController preferredViewControllerForPresentationsFromViewController:self], (WeakRetained = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v6 = WeakRetained;
    v7 = kEKUILogInviteesHandle;
    if (os_log_type_enabled(kEKUILogInviteesHandle, OS_LOG_TYPE_DEBUG))
    {
      v9 = 138412546;
      v10 = v4;
      v11 = 2112;
      v12 = v6;
      _os_log_impl(&dword_1D3400000, v7, OS_LOG_TYPE_DEBUG, "Presenting view controller [%@] from view controller [%@].", &v9, 0x16u);
    }

    [v6 presentViewController:v4 animated:1 completion:0];
    [(EKUIEventInviteesViewController *)self setPresentedController:v4];
  }

  else
  {
    v8 = kEKUILogInviteesHandle;
    if (os_log_type_enabled(kEKUILogInviteesHandle, OS_LOG_TYPE_ERROR))
    {
      v9 = 138412290;
      v10 = v4;
      _os_log_impl(&dword_1D3400000, v8, OS_LOG_TYPE_ERROR, "Could not find a view controller that should perform the presentation of this view controller: [%@].", &v9, 0xCu);
    }
  }
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
    v7 = [(EKUIEventInviteesViewController *)self presentedController];
  }

  v8 = v7;

  if (objc_opt_respondsToSelector())
  {
    [v8 dismissViewControllerAnimated:v3 completion:0];
  }

  [(EKUIEventInviteesViewController *)self setPresentedController:0];
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
    v7 = [(EKUIEventInviteesViewController *)self navigationController];
  }

  v8 = v7;

  if (objc_opt_respondsToSelector())
  {
    [v8 popViewControllerAnimated:v3];
  }
}

- (void)dismissViewControllerAnimated:(BOOL)a3
{
  v3 = a3;
  if (CalSolariumEnabled() && _os_feature_enabled_impl() && _os_feature_enabled_impl())
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __65__EKUIEventInviteesViewController_dismissViewControllerAnimated___block_invoke;
    v5[3] = &unk_1E843EC60;
    v5[4] = self;
    [(EKUIEventInviteesViewController *)self dismissViewControllerAnimated:v3 completion:v5];
  }

  else
  {

    [(EKUIEventInviteesViewController *)self _popViewControllerAnimated:v3];
  }
}

- (CGSize)preferredContentSize
{
  v3 = [(EKUIEventInviteesViewController *)self tableView];
  [v3 sizeThatFits:{2147483650.0, 2147483650.0}];
  v5 = v4;
  v7 = v6;

  v8 = [(EKUIEventInviteesViewController *)self navigationController];
  v9 = [v8 isToolbarHidden];

  if ((v9 & 1) == 0)
  {
    v10 = [(EKUIEventInviteesViewController *)self navigationController];
    v11 = [v10 toolbar];
    [v11 bounds];
    v7 = v7 + CGRectGetHeight(v17);
  }

  v12 = [(EKUIEventInviteesViewController *)self view];
  IsRegularInViewHierarchy = EKUICurrentWidthSizeClassIsRegularInViewHierarchy(v12);

  if (IsRegularInViewHierarchy)
  {
    if (v7 > 600.0)
    {
      v7 = 600.0;
    }

    v5 = EKUIContainedControllerIdealWidth();
  }

  v14 = v5;
  v15 = v7;
  result.height = v15;
  result.width = v14;
  return result;
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
    v5 = [(EKUIEventInviteesViewController *)self sections];
    v6 = [v5 countByEnumeratingWithState:&v14 objects:v19 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = 0;
      v9 = *v15;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v15 != v9)
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

            ++v8;
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v14 objects:v19 count:16];
      }

      while (v7);
    }

    v8 = -1;
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

    v8 = -1;
  }

  return v8;
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
    v7 = 0;
    v8 = *v14;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        if ([v10 sectionShouldBeShown])
        {
          if (v7 == a3)
          {
            v11 = v10;
            goto LABEL_13;
          }

          ++v7;
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

- (void)_smoothRefreshIfNeededForSections:(id)a3
{
  v4 = a3;
  v5 = kEKUILogInviteesHandle;
  if (os_log_type_enabled(kEKUILogInviteesHandle, OS_LOG_TYPE_DEBUG))
  {
    *v7 = 0;
    _os_log_impl(&dword_1D3400000, v5, OS_LOG_TYPE_DEBUG, "Smooth refreshing if needed.", v7, 2u);
  }

  if ([(EKUIEventInviteesViewController *)self resetAttendeesSections])
  {
    [(EKUIEventInviteesViewController *)self prepareToReloadAttendeesSections];
    v6 = [(EKUIEventInviteesViewController *)self inviteesView];
    [v6 reloadSections:v4 withRowAnimation:100];
  }
}

- (void)prepareToReloadAttendeesSections
{
  [(EKUIEventInviteesViewController *)self setResetAttendeesSections:0];
  v3 = kEKUILogInviteesHandle;
  if (os_log_type_enabled(kEKUILogInviteesHandle, OS_LOG_TYPE_DEBUG))
  {
    *v21 = 0;
    _os_log_impl(&dword_1D3400000, v3, OS_LOG_TYPE_DEBUG, "Resetting the attendees sections.", v21, 2u);
  }

  if (CalSolariumEnabled())
  {
    v4 = [(EKUIEventInviteesViewController *)self allInviteesAndAddSection];
    v5 = [(EKUIEventInviteesViewController *)self event];
    v6 = [(EKUIEventInviteesViewController *)self event];
    [v4 updateWithEvent:v5 editable:{objc_msgSend(v6, "isSelfOrganized")}];
  }

  else
  {
    v7 = [(EKUIEventInviteesViewController *)self addInviteesSection];
    v8 = [(EKUIEventInviteesViewController *)self event];
    [v7 updateWithEvent:v8 showPending:{-[EKUIEventInviteesViewController fromDetail](self, "fromDetail")}];

    for (i = 0; i != 3; ++i)
    {
      v10 = [(EKUIEventInviteesViewController *)self respondedSection];
      v11 = [v10 objectAtIndexedSubscript:i];
      v12 = [(EKUIEventInviteesViewController *)self event];
      v13 = [(EKUIEventInviteesViewController *)self event];
      [v11 updateWithEvent:v12 editable:{objc_msgSend(v13, "isSelfOrganized")}];
    }

    v14 = [(EKUIEventInviteesViewController *)self notRespondedSection];
    v15 = [(EKUIEventInviteesViewController *)self event];
    v16 = [(EKUIEventInviteesViewController *)self event];
    [v14 updateWithEvent:v15 editable:objc_msgSend(v16 fromDetail:{"isSelfOrganized"), -[EKUIEventInviteesViewController fromDetail](self, "fromDetail")}];

    v4 = [(EKUIEventInviteesViewController *)self invisibleInviteeStatusSection];
    v5 = [(EKUIEventInviteesViewController *)self event];
    v6 = [(EKUIEventInviteesViewController *)self event];
    [v4 updateWithEvent:v5 editable:objc_msgSend(v6 fromDetail:{"isSelfOrganized"), -[EKUIEventInviteesViewController fromDetail](self, "fromDetail")}];
  }

  v17 = [(EKUIEventInviteesViewController *)self availabilitySection];
  v18 = [(EKUIEventInviteesViewController *)self event];
  [v17 updateWithEvent:v18];

  v19 = [(EKUIEventInviteesViewController *)self proposedTimeSection];
  v20 = [(EKUIEventInviteesViewController *)self event];
  [v19 updateWithEvent:v20];
}

- (void)_refreshIfNeeded
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = kEKUILogInviteesHandle;
  if (os_log_type_enabled(kEKUILogInviteesHandle, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v25) = 0;
    _os_log_impl(&dword_1D3400000, v3, OS_LOG_TYPE_DEBUG, "Refreshing if needed.", &v25, 2u);
  }

  if ([(EKUIEventInviteesViewController *)self resetAttendeesSections])
  {
    [(EKUIEventInviteesViewController *)self prepareToReloadAttendeesSections];
    v4 = [(EKUIEventInviteesViewController *)self inviteesView];
    [v4 reloadData];
  }

  if ([(EKUIEventInviteesViewController *)self resetConflictResolutionSections])
  {
    [(EKUIEventInviteesViewController *)self setResetConflictResolutionSections:0];
    v5 = kEKUILogInviteesHandle;
    if (os_log_type_enabled(kEKUILogInviteesHandle, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v25) = 0;
      _os_log_impl(&dword_1D3400000, v5, OS_LOG_TYPE_DEBUG, "Resetting the conflict resolution sections.", &v25, 2u);
    }

    v6 = [(EKUIEventInviteesViewController *)self event];
    v7 = [v6 isSelfOrganized];

    if ((v7 & 1) == 0)
    {
      v15 = kEKUILogInviteesHandle;
      if (!os_log_type_enabled(kEKUILogInviteesHandle, OS_LOG_TYPE_DEBUG))
      {
        return;
      }

      v25 = 138412290;
      v26 = self;
      v12 = "[%@] is not editable.  Will not continue to reset the conflict resolution sections.";
      v13 = v15;
      v14 = 12;
      goto LABEL_14;
    }

    v8 = [(EKUIEventInviteesViewController *)self event];
    v9 = [v8 isAllDay];

    v10 = kEKUILogInviteesHandle;
    v11 = os_log_type_enabled(kEKUILogInviteesHandle, OS_LOG_TYPE_DEBUG);
    if (v9)
    {
      if (!v11)
      {
        return;
      }

      LOWORD(v25) = 0;
      v12 = "The event is marked as 'all-day.'  Will not continue to reset the conflict resolution sections.";
      v13 = v10;
      v14 = 2;
LABEL_14:
      _os_log_impl(&dword_1D3400000, v13, OS_LOG_TYPE_DEBUG, v12, &v25, v14);
      return;
    }

    if (v11)
    {
      v16 = v10;
      v17 = [(EKUIEventInviteesViewController *)self event];
      v25 = 138412290;
      v26 = v17;
      _os_log_impl(&dword_1D3400000, v16, OS_LOG_TYPE_DEBUG, "Telling the availability searcher to reset with event: [%@]", &v25, 0xCu);
    }

    v18 = [(EKUIEventInviteesViewController *)self event];
    v19 = [v18 calendar];
    v20 = [v19 source];
    v21 = [v20 ownerAddresses];
    v22 = [v21 anyObject];

    v23 = [(EKUIEventInviteesViewController *)self availabilitySearcher];
    v24 = [(EKUIEventInviteesViewController *)self event];
    [v23 resetWithEvent:v24 organizerAddressForNewlyScheduledEvent:v22];
  }
}

- (void)_requestDismissal
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = kEKUILogInviteesHandle;
  if (os_log_type_enabled(kEKUILogInviteesHandle, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v16 = self;
    _os_log_impl(&dword_1D3400000, v3, OS_LOG_TYPE_DEBUG, "Requesting dismissal of [%@]", buf, 0xCu);
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = [(EKUIEventInviteesViewController *)self sections];
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v10 + 1) + 8 * v8++) cancelOutstandingOperations];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9 = [(EKUIEventInviteesViewController *)self parentController];
  [v9 saveAndDismiss];
}

- (void)_searcherStateChanged:(int64_t)a3
{
  if (![(EKUIEventInviteesViewController *)self prohibitCallingSearcherStateChanged])
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __57__EKUIEventInviteesViewController__searcherStateChanged___block_invoke;
    aBlock[3] = &unk_1E843F238;
    aBlock[4] = self;
    v5 = _Block_copy(aBlock);
    v6 = [(EKUIEventInviteesViewController *)self inviteesView];
    v12 = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v14 = __57__EKUIEventInviteesViewController__searcherStateChanged___block_invoke_126;
    v15 = &unk_1E843FA38;
    v17 = v5;
    v18 = a3;
    v16 = self;
    v7 = v5;
    [v6 performBatchUpdates:&v12 completion:0];

    v8 = [(EKUIEventInviteesViewController *)self proposedTimeSection:v12];
    [v8 refreshCellsAfterStateChange];

    v9 = [(EKUIEventInviteesViewController *)self originalConflictSection];
    [v9 refreshCellsAfterStateChange];

    v10 = [(EKUIEventInviteesViewController *)self allInviteesCanAttendSection];
    [v10 refreshCellsAfterStateChange];

    v11 = [(EKUIEventInviteesViewController *)self someInviteesCanAttendSection];
    [v11 refreshCellsAfterStateChange];
  }
}

void __57__EKUIEventInviteesViewController__searcherStateChanged___block_invoke(uint64_t a1, void *a2, int a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8)
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

      v19 = [*(a1 + 32) inviteesView];
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

      v19 = [*(a1 + 32) inviteesView];
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

      v19 = [*(a1 + 32) inviteesView];
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

      v19 = [*(a1 + 32) inviteesView];
      [v19 reloadSections:v17 withRowAnimation:0];
    }

    goto LABEL_20;
  }

LABEL_21:
}

void __57__EKUIEventInviteesViewController__searcherStateChanged___block_invoke_126(uint64_t a1)
{
  v2 = [*(a1 + 32) originalConflictSection];
  v52 = [v2 sectionShouldBeShown];

  v3 = [*(a1 + 32) allInviteesCanAttendSection];
  v53 = [v3 sectionShouldBeShown];

  v4 = [*(a1 + 32) someInviteesCanAttendSection];
  v55 = [v4 sectionShouldBeShown];

  v5 = *(a1 + 32);
  v6 = [v5 originalConflictSection];
  v49 = [v5 _indexForSection:v6];

  v7 = *(a1 + 32);
  v8 = [v7 allInviteesCanAttendSection];
  v50 = [v7 _indexForSection:v8];

  v9 = *(a1 + 32);
  v10 = [v9 someInviteesCanAttendSection];
  v51 = [v9 _indexForSection:v10];

  v11 = [*(a1 + 32) originalConflictSection];
  v46 = [v11 numberOfRows];

  v12 = [*(a1 + 32) allInviteesCanAttendSection];
  v47 = [v12 numberOfRows];

  v13 = [*(a1 + 32) someInviteesCanAttendSection];
  v48 = [v13 numberOfRows];

  v14 = [*(a1 + 32) proposedTimeSection];
  [v14 availabilitySearcherChangedState:*(a1 + 48)];

  v15 = [*(a1 + 32) originalConflictSection];
  [v15 availabilitySearcherChangedState:*(a1 + 48)];

  v16 = [*(a1 + 32) allInviteesCanAttendSection];
  [v16 availabilitySearcherChangedState:*(a1 + 48)];

  v17 = [*(a1 + 32) someInviteesCanAttendSection];
  [v17 availabilitySearcherChangedState:*(a1 + 48)];

  v18 = [*(a1 + 32) originalConflictSection];
  v19 = [v18 sectionShouldBeShown];

  v20 = [*(a1 + 32) allInviteesCanAttendSection];
  v44 = [v20 sectionShouldBeShown];

  v21 = [*(a1 + 32) someInviteesCanAttendSection];
  v45 = [v21 sectionShouldBeShown];

  v22 = *(a1 + 32);
  v23 = [v22 originalConflictSection];
  v24 = [v22 _indexForSection:v23];

  v25 = *(a1 + 32);
  v26 = [v25 allInviteesCanAttendSection];
  v27 = [v25 _indexForSection:v26];

  v28 = *(a1 + 32);
  v29 = [v28 someInviteesCanAttendSection];
  v30 = [v28 _indexForSection:v29];

  v31 = [*(a1 + 32) originalConflictSection];
  v32 = [v31 numberOfRows];

  v33 = [*(a1 + 32) allInviteesCanAttendSection];
  v34 = [v33 numberOfRows];

  v35 = [*(a1 + 32) someInviteesCanAttendSection];
  v36 = [v35 numberOfRows];

  v37 = *(a1 + 40);
  v38 = [*(a1 + 32) originalConflictSection];
  (*(v37 + 16))(v37, v38, v52, v49, v46, v19, v24, v32, 0);

  v39 = *(a1 + 40);
  v40 = [*(a1 + 32) allInviteesCanAttendSection];
  LOBYTE(v42) = 1;
  (*(v39 + 16))(v39, v40, v53, v50, v47, v44, v27, v34, v42);

  v41 = *(a1 + 40);
  v54 = [*(a1 + 32) someInviteesCanAttendSection];
  LOBYTE(v43) = 1;
  (*(v41 + 16))(v41, v54, v55, v51, v48, v45, v30, v36, v43);
}

- (EKUIEventInviteesEditViewController)parentController
{
  WeakRetained = objc_loadWeakRetained(&self->_parentController);

  return WeakRetained;
}

- (EKViewControllerRemoteUIDelegate)remoteUIDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_remoteUIDelegate);

  return WeakRetained;
}

@end