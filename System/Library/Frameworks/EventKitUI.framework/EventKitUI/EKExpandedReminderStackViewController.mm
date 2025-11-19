@interface EKExpandedReminderStackViewController
- (BOOL)expandedReminderStackShouldDoCompactLayout;
- (CGRect)stackedReminderViewFrame;
- (EKExpandedReminderStackViewController)initWithEvents:(id)a3 delegate:(id)a4;
- (id)_eventAtIndexPath:(id)a3;
- (id)cellForItemIdentifier:(id)a3 indexPath:(id)a4 collectionView:(id)a5;
- (id)collectionViewDataSource;
- (id)loadReminderWithEKEvent:(id)a3;
- (void)_handleBackgroundTap:(id)a3;
- (void)_reloadCollectionViewDataWithoutAnimation;
- (void)_updateBlurBackground;
- (void)_updatePopoverSize;
- (void)animateTransition:(id)a3;
- (void)clearSnapshotWithAnimating:(BOOL)a3 completion:(id)a4;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)dismissCurrentViewController;
- (void)loadSnapshotWithAnimating:(BOOL)a3 completion:(id)a4;
- (void)reminderDetailDismissedWithDeletedEvent:(id)a3;
- (void)reminderToggled:(id)a3;
- (void)setEKExpandedReminderStackViewControllerDelegate:(id)a3;
- (void)setOccurrenceViewOnCanvasHidden:(BOOL)a3;
- (void)setSelectedOccurrenceViewOnCanvasHidden:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation EKExpandedReminderStackViewController

- (EKExpandedReminderStackViewController)initWithEvents:(id)a3 delegate:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = EKExpandedReminderStackViewController;
  v9 = [(EKExpandedReminderStackViewController *)&v13 init];
  v10 = v9;
  if (v9)
  {
    [(EKExpandedReminderStackViewController *)v9 setPreferModalPresentation:0];
    objc_storeStrong(&v10->_events, a3);
    objc_storeStrong(&v10->_delegate, a4);
    v10->_presentingTransitionCancelled = 0;
    v11 = [MEMORY[0x1E696AD88] defaultCenter];
    [v11 addObserver:v10 selector:sel__eventModified_ name:*MEMORY[0x1E6966918] object:0];
  }

  return v10;
}

- (id)loadReminderWithEKEvent:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 isReminderIntegrationEvent])
  {
    v5 = [v4 uniqueID];
    v6 = [MEMORY[0x1E695DFF8] URLWithString:v5];
    v23 = 0;
    v24 = &v23;
    v25 = 0x2050000000;
    v7 = getREMObjectIDClass_softClass;
    v26 = getREMObjectIDClass_softClass;
    if (!getREMObjectIDClass_softClass)
    {
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = __getREMObjectIDClass_block_invoke;
      v28 = &unk_1E843F520;
      v29 = &v23;
      __getREMObjectIDClass_block_invoke(buf);
      v7 = v24[3];
    }

    v8 = v7;
    _Block_object_dispose(&v23, 8);
    v9 = [v7 objectIDWithURL:v6];
    if (v9)
    {
      reminderStore = self->_reminderStore;
      if (!reminderStore)
      {
        v23 = 0;
        v24 = &v23;
        v25 = 0x2050000000;
        v11 = getREMStoreClass_softClass;
        v26 = getREMStoreClass_softClass;
        if (!getREMStoreClass_softClass)
        {
          *buf = MEMORY[0x1E69E9820];
          *&buf[8] = 3221225472;
          *&buf[16] = __getREMStoreClass_block_invoke;
          v28 = &unk_1E843F520;
          v29 = &v23;
          __getREMStoreClass_block_invoke(buf);
          v11 = v24[3];
        }

        v12 = v11;
        _Block_object_dispose(&v23, 8);
        v13 = objc_alloc_init(v11);
        v14 = self->_reminderStore;
        self->_reminderStore = v13;

        reminderStore = self->_reminderStore;
      }

      v22 = 0;
      v15 = [(REMStore *)reminderStore fetchReminderWithObjectID:v9 error:&v22];
      v16 = v22;
      v17 = v16;
      if (!v15 || v16)
      {
        v18 = kEKUILogHandle;
        if (os_log_type_enabled(kEKUILogHandle, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          *&buf[4] = v6;
          *&buf[12] = 2112;
          *&buf[14] = v17;
          _os_log_impl(&dword_1D3400000, v18, OS_LOG_TYPE_ERROR, "Unable to fetch reminder (objectID: %@). Error: %@", buf, 0x16u);
        }
      }

      v19 = v15;
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
    v20 = kEKUILogHandle;
    if (os_log_type_enabled(kEKUILogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      *&buf[4] = v4;
      _os_log_impl(&dword_1D3400000, v20, OS_LOG_TYPE_ERROR, "Trying to reload reminder with EKEvent, but it's not a reminder. %@", buf, 0xCu);
    }

    v19 = 0;
  }

  return v19;
}

- (void)setEKExpandedReminderStackViewControllerDelegate:(id)a3
{
  objc_storeStrong(&self->_delegate, a3);
  v5 = a3;
  collectionView = self->_collectionView;
  v7 = [[EKExpandedReminderStackLayout alloc] initWithDelegate:self];
  [(UICollectionView *)collectionView setCollectionViewLayout:v7 animated:0];

  [(UICollectionView *)self->_collectionView layoutIfNeeded];

  [(EKExpandedReminderStackViewController *)self loadSnapshotWithAnimating:0 completion:0];
}

- (void)viewDidLoad
{
  v34[4] = *MEMORY[0x1E69E9840];
  v33.receiver = self;
  v33.super_class = EKExpandedReminderStackViewController;
  [(EKExpandedReminderStackViewController *)&v33 viewDidLoad];
  v3 = objc_alloc(MEMORY[0x1E69DC7F0]);
  v4 = [[EKExpandedReminderStackLayout alloc] initWithDelegate:self];
  v5 = [v3 initWithFrame:v4 collectionViewLayout:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  collectionView = self->_collectionView;
  self->_collectionView = v5;

  v7 = [(EKExpandedReminderStackViewController *)self collectionViewDataSource];
  [(UICollectionView *)self->_collectionView setDataSource:v7];

  [(UICollectionView *)self->_collectionView setDelegate:self];
  [(UICollectionView *)self->_collectionView setTranslatesAutoresizingMaskIntoConstraints:0];
  v8 = [MEMORY[0x1E69DC888] clearColor];
  [(UICollectionView *)self->_collectionView setBackgroundColor:v8];

  [(UICollectionView *)self->_collectionView setBackgroundView:0];
  v9 = [(EKExpandedReminderStackViewController *)self view];
  [v9 addSubview:self->_collectionView];

  v10 = [(EKExpandedReminderStackViewController *)self transitioningDelegate];

  if (!v10)
  {
    [(EKExpandedReminderStackViewController *)self loadSnapshotWithAnimating:0 completion:0];
  }

  v11 = objc_opt_class();
  v32 = NSStringFromClass(v11);
  [(UICollectionView *)self->_collectionView registerClass:objc_opt_class() forCellWithReuseIdentifier:v32];
  v12 = objc_opt_class();
  v31 = NSStringFromClass(v12);
  [(UICollectionView *)self->_collectionView registerClass:objc_opt_class() forSupplementaryViewOfKind:*MEMORY[0x1E69DDC08] withReuseIdentifier:v31];
  v23 = MEMORY[0x1E696ACD8];
  v29 = [(UICollectionView *)self->_collectionView topAnchor];
  v30 = [(EKExpandedReminderStackViewController *)self view];
  v28 = [v30 topAnchor];
  v27 = [v29 constraintEqualToAnchor:v28];
  v34[0] = v27;
  v25 = [(UICollectionView *)self->_collectionView bottomAnchor];
  v26 = [(EKExpandedReminderStackViewController *)self view];
  v24 = [v26 bottomAnchor];
  v13 = [v25 constraintEqualToAnchor:v24];
  v34[1] = v13;
  v14 = [(UICollectionView *)self->_collectionView leadingAnchor];
  v15 = [(EKExpandedReminderStackViewController *)self view];
  v16 = [v15 leadingAnchor];
  v17 = [v14 constraintEqualToAnchor:v16];
  v34[2] = v17;
  v18 = [(UICollectionView *)self->_collectionView trailingAnchor];
  v19 = [(EKExpandedReminderStackViewController *)self view];
  v20 = [v19 trailingAnchor];
  v21 = [v18 constraintEqualToAnchor:v20];
  v34[3] = v21;
  v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:4];
  [v23 activateConstraints:v22];
}

- (void)viewWillAppear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = EKExpandedReminderStackViewController;
  [(EKExpandedReminderStackViewController *)&v6 viewWillAppear:a3];
  [(EKExpandedReminderStackViewController *)self _updateBlurBackground];
  v4 = [(EKExpandedReminderStackViewController *)self navigationController];
  [v4 setNavigationBarHidden:1];

  v5 = [(EKExpandedReminderStackViewController *)self navigationController];
  [v5 setToolbarHidden:1];

  [(EKExpandedReminderStackViewController *)self _updatePopoverSize];
  if (objc_opt_respondsToSelector())
  {
    [(EKExpandedReminderStackViewControllerDelegate *)self->_delegate setModelSelectedEvents:self->_events];
  }
}

- (void)reminderDetailDismissedWithDeletedEvent:(id)a3
{
  if (a3)
  {
    events = self->_events;
    v5 = a3;
    v6 = [(NSArray *)events mutableCopy];
    [(NSArray *)v6 removeObject:v5];

    v7 = self->_events;
    self->_events = v6;
  }

  [(EKExpandedReminderStackViewController *)self _reloadCollectionViewDataWithoutAnimation];
}

- (id)cellForItemIdentifier:(id)a3 indexPath:(id)a4 collectionView:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [MEMORY[0x1E69DC888] systemBackgroundColor];
  if (objc_opt_respondsToSelector())
  {
    v12 = [(EKExpandedReminderStackViewControllerDelegate *)self->_delegate overrideCellColor];

    v11 = v12;
  }

  v13 = [v8 event];
  v36 = v9;
  v37 = v11;
  v35 = self;
  if ([v13 hasRecurrenceRules])
  {
    v14 = [(EKExpandedReminderStackViewController *)self loadReminderWithEKEvent:v13];
    v39 = 0;
    v40 = &v39;
    v41 = 0x2050000000;
    v15 = getREMRecurrenceRuleFormatterClass_softClass;
    v42 = getREMRecurrenceRuleFormatterClass_softClass;
    if (!getREMRecurrenceRuleFormatterClass_softClass)
    {
      v38[0] = MEMORY[0x1E69E9820];
      v38[1] = 3221225472;
      v38[2] = __getREMRecurrenceRuleFormatterClass_block_invoke;
      v38[3] = &unk_1E843F520;
      v38[4] = &v39;
      __getREMRecurrenceRuleFormatterClass_block_invoke(v38);
      v15 = v40[3];
    }

    v16 = v15;
    _Block_object_dispose(&v39, 8);
    v17 = [v14 recurrenceRules];
    v18 = [v17 firstObject];
    v19 = [v13 startDate];
    v20 = [v13 eventStore];
    v21 = [v20 timeZone];
    v22 = [v15 shortNaturalLanguageDescriptionForRecurrenceRule:v18 date:v19 timeZone:v21 lowercase:0];

    v9 = v36;
  }

  else
  {
    v22 = 0;
  }

  v23 = objc_opt_class();
  v24 = NSStringFromClass(v23);
  v34 = v10;
  v25 = [v10 dequeueReusableCellWithReuseIdentifier:v24 forIndexPath:v9];

  v26 = [v8 title];
  v27 = [v8 completed];
  v28 = [v8 editable];
  v29 = [v8 date];
  v30 = [v8 color];
  v31 = [v8 buttonImageName];
  [v25 setupCellWithTitle:v26 completed:v27 editable:v28 date:v29 buttonColor:v30 buttonImageName:v31 backgroundColor:v37 recurringString:v22 delegate:v35];

  if (CalendarLinkLibraryCore())
  {
    v32 = [v8 event];
    [v25 Cal_annotateWithEvent:v32];
  }

  return v25;
}

- (id)collectionViewDataSource
{
  dataSource = self->_dataSource;
  if (!dataSource)
  {
    if (self->_collectionView)
    {
      objc_initWeak(&location, self);
      v4 = objc_alloc(MEMORY[0x1E69DC820]);
      collectionView = self->_collectionView;
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __65__EKExpandedReminderStackViewController_collectionViewDataSource__block_invoke;
      v12[3] = &unk_1E843F4A8;
      objc_copyWeak(&v13, &location);
      v6 = [v4 initWithCollectionView:collectionView cellProvider:v12];
      v7 = self->_dataSource;
      self->_dataSource = v6;

      v8 = self->_dataSource;
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __65__EKExpandedReminderStackViewController_collectionViewDataSource__block_invoke_2;
      v10[3] = &unk_1E843F4D0;
      objc_copyWeak(&v11, &location);
      [(UICollectionViewDiffableDataSource *)v8 setSupplementaryViewProvider:v10];
      objc_destroyWeak(&v11);
      objc_destroyWeak(&v13);
      objc_destroyWeak(&location);
      dataSource = self->_dataSource;
    }

    else
    {
      dataSource = 0;
    }
  }

  return dataSource;
}

id __65__EKExpandedReminderStackViewController_collectionViewDataSource__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v11 = WeakRetained;
  if (WeakRetained)
  {
    v12 = [WeakRetained cellForItemIdentifier:v9 indexPath:v8 collectionView:v7];
  }

  else
  {
    v12 = objc_opt_new();
  }

  v13 = v12;

  return v13;
}

id __65__EKExpandedReminderStackViewController_collectionViewDataSource__block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    v13 = [v7 dequeueReusableSupplementaryViewOfKind:v8 withReuseIdentifier:v12 forIndexPath:v9];

    v14 = [WeakRetained[125] firstObject];
    v15 = [v14 startDate];
    [v13 setupWithDate:v15];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)loadSnapshotWithAnimating:(BOOL)a3 completion:(id)a4
{
  v17 = a3;
  v25[1] = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = objc_opt_new();
  v25[0] = @"section";
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:1];
  [v6 appendSectionsWithIdentifiers:v7];

  v8 = objc_opt_new();
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v9 = self->_events;
  v10 = [(NSArray *)v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v21;
    do
    {
      v13 = 0;
      do
      {
        if (*v21 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [[EKExpandedHashableReminder alloc] initWithEKEvent:*(*(&v20 + 1) + 8 * v13)];
        [v8 addObject:v14];

        ++v13;
      }

      while (v11 != v13);
      v11 = [(NSArray *)v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v11);
  }

  [v6 appendItemsWithIdentifiers:v8];
  v15 = [(EKExpandedReminderStackViewController *)self collectionViewDataSource];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __78__EKExpandedReminderStackViewController_loadSnapshotWithAnimating_completion___block_invoke;
  v18[3] = &unk_1E843F340;
  v19 = v5;
  v16 = v5;
  [v15 applySnapshot:v6 animatingDifferences:v17 completion:v18];
}

uint64_t __78__EKExpandedReminderStackViewController_loadSnapshotWithAnimating_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)clearSnapshotWithAnimating:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = objc_opt_new();
  v8 = [(EKExpandedReminderStackViewController *)self collectionViewDataSource];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __79__EKExpandedReminderStackViewController_clearSnapshotWithAnimating_completion___block_invoke;
  v10[3] = &unk_1E843F340;
  v11 = v6;
  v9 = v6;
  [v8 applySnapshot:v7 animatingDifferences:v4 completion:v10];
}

uint64_t __79__EKExpandedReminderStackViewController_clearSnapshotWithAnimating_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  delegate = self->_delegate;
  v5 = [(EKExpandedReminderStackViewController *)self _eventAtIndexPath:a4];
  [(EKExpandedReminderStackViewControllerDelegate *)delegate showReminderDetail:v5];
}

- (BOOL)expandedReminderStackShouldDoCompactLayout
{
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  delegate = self->_delegate;

  return [(EKExpandedReminderStackViewControllerDelegate *)delegate shouldShowCompactLayout];
}

- (CGRect)stackedReminderViewFrame
{
  if (objc_opt_respondsToSelector())
  {
    delegate = self->_delegate;
    v4 = [(NSArray *)self->_events firstObject];
    v5 = [(EKExpandedReminderStackViewControllerDelegate *)delegate occurrenceViewForEvent:v4];

    [v5 bounds];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v14 = [(EKExpandedReminderStackViewController *)self view];
    [v5 convertRect:v14 toView:{v7, v9, v11, v13}];
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v22 = v21;

    v23 = [(EKExpandedReminderStackViewController *)self view];
    [v23 safeAreaInsets];
    v25 = v24;

    if ((CalInterfaceIsLeftToRight() & 1) == 0)
    {
      v26 = [(EKExpandedReminderStackViewController *)self view];
      [v26 frame];
      v16 = v27 - v16 - v20;
    }

    v28 = v18 - v25;
  }

  else
  {
    v16 = *MEMORY[0x1E695F058];
    v28 = *(MEMORY[0x1E695F058] + 8);
    v20 = *(MEMORY[0x1E695F058] + 16);
    v22 = *(MEMORY[0x1E695F058] + 24);
  }

  v29 = v16;
  v30 = v28;
  v31 = v20;
  v32 = v22;
  result.size.height = v32;
  result.size.width = v31;
  result.origin.y = v30;
  result.origin.x = v29;
  return result;
}

- (void)_reloadCollectionViewDataWithoutAnimation
{
  [(EKExpandedReminderStackViewController *)self loadSnapshotWithAnimating:0 completion:0];
  collectionView = self->_collectionView;
  v4 = [[EKExpandedReminderStackLayout alloc] initWithDelegate:self];
  [(UICollectionView *)collectionView setCollectionViewLayout:v4 animated:0];

  v5 = self->_collectionView;

  [(UICollectionView *)v5 layoutIfNeeded];
}

- (void)_updateBlurBackground
{
  v34[4] = *MEMORY[0x1E69E9840];
  v3 = [(EKExpandedReminderStackViewController *)self expandedReminderStackShouldDoCompactLayout];
  v4 = [(EKExpandedReminderStackViewController *)self visualEffectView];
  v5 = v4;
  if (v3)
  {

    if (!v5)
    {
      v6 = [objc_alloc(MEMORY[0x1E69DD298]) initWithEffect:0];
      [(EKExpandedReminderStackViewController *)self setVisualEffectView:v6];

      v7 = [(EKExpandedReminderStackViewController *)self visualEffectView];
      [v7 setTranslatesAutoresizingMaskIntoConstraints:0];

      v8 = [(EKExpandedReminderStackViewController *)self view];
      v9 = [(EKExpandedReminderStackViewController *)self visualEffectView];
      [v8 addSubview:v9];

      v26 = MEMORY[0x1E696ACD8];
      v32 = [(UIVisualEffectView *)self->_visualEffectView leadingAnchor];
      v33 = [(EKExpandedReminderStackViewController *)self view];
      v31 = [v33 leadingAnchor];
      v30 = [v32 constraintEqualToAnchor:v31];
      v34[0] = v30;
      v28 = [(UIVisualEffectView *)self->_visualEffectView topAnchor];
      v29 = [(EKExpandedReminderStackViewController *)self view];
      v27 = [v29 topAnchor];
      v25 = [v28 constraintEqualToAnchor:v27];
      v34[1] = v25;
      v10 = [(UIVisualEffectView *)self->_visualEffectView trailingAnchor];
      v11 = [(EKExpandedReminderStackViewController *)self view];
      v12 = [v11 trailingAnchor];
      v13 = [v10 constraintEqualToAnchor:v12];
      v34[2] = v13;
      v14 = [(UIVisualEffectView *)self->_visualEffectView bottomAnchor];
      v15 = [(EKExpandedReminderStackViewController *)self view];
      v16 = [v15 bottomAnchor];
      v17 = [v14 constraintEqualToAnchor:v16];
      v34[3] = v17;
      v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:4];
      [v26 activateConstraints:v18];

      v19 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel__handleBackgroundTap_];
      [v19 setCancelsTouchesInView:0];
      [(UICollectionView *)self->_collectionView addGestureRecognizer:v19];
      v20 = [(EKExpandedReminderStackViewController *)self view];
      v21 = [(EKExpandedReminderStackViewController *)self visualEffectView];
      [v20 sendSubviewToBack:v21];

      v22 = [(EKExpandedReminderStackViewController *)self transitioningDelegate];

      if (!v22)
      {
        v23 = [MEMORY[0x1E69DC730] effectWithStyle:6];
        [(UIVisualEffectView *)self->_visualEffectView setEffect:v23];
      }
    }
  }

  else
  {

    if (v5)
    {
      v24 = [(EKExpandedReminderStackViewController *)self visualEffectView];
      [v24 removeFromSuperview];

      [(EKExpandedReminderStackViewController *)self setVisualEffectView:0];
    }
  }
}

- (void)_handleBackgroundTap:(id)a3
{
  [a3 locationInView:self->_collectionView];
  v7 = [(UICollectionView *)self->_collectionView indexPathForItemAtPoint:?];
  if (!v7 || ([(UICollectionView *)self->_collectionView cellForItemAtIndexPath:v7], (v4 = objc_claimAutoreleasedReturnValue()) == 0) || (v5 = v4, objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v5, (isKindOfClass & 1) == 0))
  {
    [(EKExpandedReminderStackViewController *)self dismissCurrentViewController];
  }
}

- (id)_eventAtIndexPath:(id)a3
{
  events = self->_events;
  v4 = [a3 row];

  return [(NSArray *)events objectAtIndexedSubscript:v4];
}

- (void)_updatePopoverSize
{
  [(UICollectionView *)self->_collectionView layoutIfNeeded];
  v3 = EKUIContainedControllerIdealWidth();
  +[EKExpandedReminderStackLayout verticalCellPaddingForPopover];
  v5 = v4;
  +[EKExpandedReminderStackLayout verticalCollectionViewPaddingForPopover];
  v7 = -(v5 - v6 * 2.0);
  if ([(NSArray *)self->_events count])
  {
    v8 = 0;
    do
    {
      collectionView = self->_collectionView;
      v10 = [MEMORY[0x1E696AC88] indexPathForRow:v8 inSection:0];
      v11 = [(UICollectionView *)collectionView cellForItemAtIndexPath:v10];
      [v11 frame];
      v13 = v7 + v12;

      v7 = v5 + v13;
      ++v8;
    }

    while (v8 < [(NSArray *)self->_events count]);
  }

  [(EKExpandedReminderStackViewController *)self setPreferredContentSize:v3, v7];
  [(EKExpandedReminderStackViewController *)self preferredContentSize];
  v15 = v14;
  v17 = v16;
  v18 = [(EKExpandedReminderStackViewController *)self navigationController];
  [v18 setPreferredContentSize:{v15, v17}];
}

- (void)reminderToggled:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = [(UICollectionView *)self->_collectionView indexPathForCell:a3];
  v5 = [(EKExpandedReminderStackViewController *)self _eventAtIndexPath:v4];

  if ([v5 CUIK_reminderShouldBeEditable])
  {
    v6 = v5;
    [v6 setCompleted:{objc_msgSend(v6, "completed") ^ 1}];
    v7 = [(UIResponder *)self EKUI_editor];
    v11 = 0;
    v8 = [v7 saveEvent:v6 span:0 error:&v11];
    v9 = v11;

    if ((v8 & 1) == 0)
    {
      v10 = kEKUILogHandle;
      if (os_log_type_enabled(kEKUILogHandle, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v13 = v9;
        _os_log_impl(&dword_1D3400000, v10, OS_LOG_TYPE_ERROR, "Couldn't complete/uncomplete event: %@", buf, 0xCu);
      }
    }

    [(EKExpandedReminderStackViewController *)self loadSnapshotWithAnimating:0 completion:0];
  }
}

- (void)dismissCurrentViewController
{
  v51 = *MEMORY[0x1E69E9840];
  if ([(EKExpandedReminderStackViewController *)self isBeingPresented])
  {
    v3 = dispatch_group_create();
    self->_presentingTransitionCancelled = 1;
    [(UICollectionView *)self->_collectionView setUserInteractionEnabled:0];
    dispatch_group_enter(v3);
    v4 = MEMORY[0x1E69DD250];
    v48[0] = MEMORY[0x1E69E9820];
    v48[1] = 3221225472;
    v48[2] = __69__EKExpandedReminderStackViewController_dismissCurrentViewController__block_invoke;
    v48[3] = &unk_1E843EC60;
    v48[4] = self;
    v46[0] = MEMORY[0x1E69E9820];
    v46[1] = 3221225472;
    v46[2] = __69__EKExpandedReminderStackViewController_dismissCurrentViewController__block_invoke_2;
    v46[3] = &unk_1E843EC10;
    v5 = v3;
    v47 = v5;
    [v4 animateWithDuration:65540 delay:v48 options:v46 animations:0.2 completion:0.0];
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v26 = self;
    v6 = [(UICollectionView *)self->_collectionView visibleCells];
    v7 = [v6 countByEnumeratingWithState:&v42 objects:v50 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v43;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v43 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v42 + 1) + 8 * i);
          v12 = objc_alloc(MEMORY[0x1E69DD278]);
          v41[0] = MEMORY[0x1E69E9820];
          v41[1] = 3221225472;
          v41[2] = __69__EKExpandedReminderStackViewController_dismissCurrentViewController__block_invoke_3;
          v41[3] = &unk_1E843EC60;
          v41[4] = v11;
          v13 = [v12 initWithDuration:4 curve:v41 animations:0.2];
          dispatch_group_enter(v5);
          v39[0] = MEMORY[0x1E69E9820];
          v39[1] = 3221225472;
          v39[2] = __69__EKExpandedReminderStackViewController_dismissCurrentViewController__block_invoke_4;
          v39[3] = &unk_1E843F4F8;
          v40 = v5;
          [v13 addCompletion:v39];
          [v13 startAnimation];
        }

        v8 = [v6 countByEnumeratingWithState:&v42 objects:v50 count:16];
      }

      while (v8);
    }

    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v14 = [(UICollectionView *)v26->_collectionView visibleSupplementaryViewsOfKind:*MEMORY[0x1E69DDC08]];
    v15 = [v14 countByEnumeratingWithState:&v35 objects:v49 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v36;
      do
      {
        for (j = 0; j != v16; ++j)
        {
          if (*v36 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v35 + 1) + 8 * j);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v20 = [MEMORY[0x1E69DD278] expandingStackedRemindersSpringAnimator];
            v34[0] = MEMORY[0x1E69E9820];
            v34[1] = 3221225472;
            v34[2] = __69__EKExpandedReminderStackViewController_dismissCurrentViewController__block_invoke_5;
            v34[3] = &unk_1E843EC60;
            v34[4] = v19;
            [v20 addAnimations:v34];
            dispatch_group_enter(v5);
            v32[0] = MEMORY[0x1E69E9820];
            v32[1] = 3221225472;
            v32[2] = __69__EKExpandedReminderStackViewController_dismissCurrentViewController__block_invoke_6;
            v32[3] = &unk_1E843F4F8;
            v33 = v5;
            [v20 addCompletion:v32];
            [v20 startAnimation];
          }
        }

        v16 = [v14 countByEnumeratingWithState:&v35 objects:v49 count:16];
      }

      while (v16);
    }

    dispatch_group_enter(v5);
    collectionView = v26->_collectionView;
    v22 = [EKExpandedReminderStackDismissingLayout alloc];
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __69__EKExpandedReminderStackViewController_dismissCurrentViewController__block_invoke_7;
    v30[3] = &unk_1E843EC60;
    v31 = v5;
    v23 = v5;
    v24 = [(EKExpandedReminderStackDismissingLayout *)v22 initWithDelegate:v26 completionHandler:v30];
    [(UICollectionView *)collectionView setCollectionViewLayout:v24 animated:1 completion:0];

    objc_initWeak(&location, v26);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __69__EKExpandedReminderStackViewController_dismissCurrentViewController__block_invoke_8;
    block[3] = &unk_1E843F080;
    objc_copyWeak(&v28, &location);
    dispatch_group_notify(v23, MEMORY[0x1E69E96A0], block);
    objc_destroyWeak(&v28);
    objc_destroyWeak(&location);
  }

  else
  {
    v25 = [(EKExpandedReminderStackViewController *)self transitioningDelegate];

    if (!v25)
    {
      [(EKExpandedReminderStackViewController *)self setModalTransitionStyle:2];
    }

    [(EKExpandedReminderStackViewController *)self dismissViewControllerAnimated:1 completion:0];
  }
}

void __69__EKExpandedReminderStackViewController_dismissCurrentViewController__block_invoke_8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained[129] completeTransition:0];
    v2 = v3[129];
    v3[129] = 0;

    [v3 setOccurrenceViewOnCanvasHidden:0];
    WeakRetained = v3;
  }
}

- (void)animateTransition:(id)a3
{
  v132 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v92 = v5;
  v93 = self;
  if (![(EKExpandedReminderStackViewController *)self isBeingPresented])
  {
    v36 = [v5 viewControllerForKey:*MEMORY[0x1E69DE768]];
    v37 = [v36 view];

    v91 = v37;
    [v37 setAlpha:1.0];
    [(UICollectionView *)self->_collectionView setUserInteractionEnabled:0];
    v110[0] = MEMORY[0x1E69E9820];
    v110[1] = 3221225472;
    v110[2] = __59__EKExpandedReminderStackViewController_animateTransition___block_invoke_5;
    v110[3] = &unk_1E843EC60;
    v110[4] = self;
    [MEMORY[0x1E69DD250] animateWithDuration:0x20000 delay:v110 options:0 animations:0.2 completion:0.0];
    v108 = 0u;
    v109 = 0u;
    v106 = 0u;
    v107 = 0u;
    v38 = [(UICollectionView *)self->_collectionView visibleSupplementaryViewsOfKind:*MEMORY[0x1E69DDC08]];
    v39 = [v38 countByEnumeratingWithState:&v106 objects:v129 count:16];
    if (v39)
    {
      v40 = v39;
      v41 = *v107;
      do
      {
        for (i = 0; i != v40; ++i)
        {
          if (*v107 != v41)
          {
            objc_enumerationMutation(v38);
          }

          v43 = *(*(&v106 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v44 = [MEMORY[0x1E69DD278] expandingStackedRemindersSpringAnimator];
            v105[0] = MEMORY[0x1E69E9820];
            v105[1] = 3221225472;
            v105[2] = __59__EKExpandedReminderStackViewController_animateTransition___block_invoke_6;
            v105[3] = &unk_1E843EC60;
            v105[4] = v43;
            [v44 addAnimations:v105];
            [v44 startAnimation];
          }
        }

        v40 = [v38 countByEnumeratingWithState:&v106 objects:v129 count:16];
      }

      while (v40);
    }

    v45 = self;
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      goto LABEL_55;
    }

    delegate = self->_delegate;
    v47 = [(NSArray *)self->_events firstObject];
    v48 = [(EKExpandedReminderStackViewControllerDelegate *)delegate occurrenceViewForEvent:v47];

    [v48 setHidden:0];
    v49 = [v48 snapshotViewAfterScreenUpdates:1];
    [v49 setHidden:0];
    [v48 setHidden:1];
    v90 = v49;
    if (v48 && v49)
    {
      v103 = 0u;
      v104 = 0u;
      v101 = 0u;
      v102 = 0u;
      v50 = [(UICollectionView *)self->_collectionView visibleCells];
      v51 = [v50 countByEnumeratingWithState:&v101 objects:v126 count:16];
      if (v51)
      {
        v52 = v51;
        v53 = *v102;
        do
        {
          for (j = 0; j != v52; ++j)
          {
            if (*v102 != v53)
            {
              objc_enumerationMutation(v50);
            }

            v55 = [*(*(&v101 + 1) + 8 * j) backgroundImageView];
            [v55 setImage:0];
          }

          v52 = [v50 countByEnumeratingWithState:&v101 objects:v126 count:16];
        }

        while (v52);
      }

      collectionView = v93->_collectionView;
      v57 = [MEMORY[0x1E696AC88] indexPathForRow:0 inSection:0];
      v58 = [(UICollectionView *)collectionView cellForItemAtIndexPath:v57];
      v59 = [v58 backgroundImageView];

      [v59 addSubview:v49];
      [v49 setTranslatesAutoresizingMaskIntoConstraints:0];
      v84 = MEMORY[0x1E696ACD8];
      v89 = [v49 leadingAnchor];
      v88 = [v59 leadingAnchor];
      v87 = [v89 constraintEqualToAnchor:v88];
      v125[0] = v87;
      v86 = [v49 topAnchor];
      v85 = [v59 topAnchor];
      v83 = [v86 constraintEqualToAnchor:v85];
      v125[1] = v83;
      v60 = [v49 trailingAnchor];
      v61 = [v59 trailingAnchor];
      v62 = [v60 constraintEqualToAnchor:v61];
      v125[2] = v62;
      v63 = [v49 bottomAnchor];
      [v59 bottomAnchor];
      v65 = v64 = v48;
      v66 = [v63 constraintEqualToAnchor:v65];
      v125[3] = v66;
      v67 = [MEMORY[0x1E695DEC8] arrayWithObjects:v125 count:4];
      [v84 activateConstraints:v67];

      v48 = v64;
      v45 = v93;

      goto LABEL_47;
    }

    v68 = kEKUILogHandle;
    v69 = os_log_type_enabled(kEKUILogHandle, OS_LOG_TYPE_ERROR);
    if (v48)
    {
      if (v69)
      {
        events = self->_events;
        v71 = v68;
        v72 = [(NSArray *)events firstObject];
        *buf = 138412290;
        v128 = v72;
        v73 = "Couldn't snapshot occurrence view for event: %@";
LABEL_46:
        _os_log_impl(&dword_1D3400000, v71, OS_LOG_TYPE_ERROR, v73, buf, 0xCu);
      }
    }

    else if (v69)
    {
      v74 = self->_events;
      v71 = v68;
      v72 = [(NSArray *)v74 firstObject];
      *buf = 138412290;
      v128 = v72;
      v73 = "Couldn't find occurrence view for event: %@";
      goto LABEL_46;
    }

LABEL_47:
    v100 = 0u;
    v98 = 0u;
    v99 = 0u;
    v97 = 0u;
    v75 = [(UICollectionView *)v45->_collectionView visibleCells];
    v76 = [v75 countByEnumeratingWithState:&v97 objects:v124 count:16];
    if (v76)
    {
      v77 = v76;
      v78 = *v98;
      do
      {
        for (k = 0; k != v77; ++k)
        {
          if (*v98 != v78)
          {
            objc_enumerationMutation(v75);
          }

          v80 = *(*(&v97 + 1) + 8 * k);
          v81 = objc_alloc(MEMORY[0x1E69DD278]);
          v96[0] = MEMORY[0x1E69E9820];
          v96[1] = 3221225472;
          v96[2] = __59__EKExpandedReminderStackViewController_animateTransition___block_invoke_104;
          v96[3] = &unk_1E843EC60;
          v96[4] = v80;
          v82 = [v81 initWithDuration:0 curve:v96 animations:0.2];
          [v82 startAnimation];
        }

        v77 = [v75 countByEnumeratingWithState:&v97 objects:v124 count:16];
      }

      while (v77);
    }

LABEL_55:
    v94[0] = MEMORY[0x1E69E9820];
    v94[1] = 3221225472;
    v94[2] = __59__EKExpandedReminderStackViewController_animateTransition___block_invoke_2_105;
    v94[3] = &unk_1E843EFB8;
    v94[4] = v45;
    v35 = v92;
    v95 = v92;
    [(EKExpandedReminderStackViewController *)v45 clearSnapshotWithAnimating:1 completion:v94];

    goto LABEL_56;
  }

  v6 = [v5 containerView];
  v7 = [(EKExpandedReminderStackViewController *)self view];
  v91 = v6;
  [v6 addSubview:v7];

  objc_storeStrong(&self->_transitionContext, a3);
  v122[0] = MEMORY[0x1E69E9820];
  v122[1] = 3221225472;
  v122[2] = __59__EKExpandedReminderStackViewController_animateTransition___block_invoke;
  v122[3] = &unk_1E843EFB8;
  v122[4] = self;
  v123 = v5;
  [(EKExpandedReminderStackViewController *)self loadSnapshotWithAnimating:1 completion:v122];
  v121[0] = MEMORY[0x1E69E9820];
  v121[1] = 3221225472;
  v121[2] = __59__EKExpandedReminderStackViewController_animateTransition___block_invoke_2;
  v121[3] = &unk_1E843EC60;
  v121[4] = self;
  [MEMORY[0x1E69DD250] animateWithDuration:0x20000 delay:v121 options:0 animations:0.5 completion:0.0];
  v119 = 0u;
  v120 = 0u;
  v117 = 0u;
  v118 = 0u;
  v8 = [(UICollectionView *)self->_collectionView visibleSupplementaryViewsOfKind:*MEMORY[0x1E69DDC08]];
  v9 = [v8 countByEnumeratingWithState:&v117 objects:v131 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v118;
    do
    {
      for (m = 0; m != v10; ++m)
      {
        if (*v118 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v117 + 1) + 8 * m);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v13 setBlurFilterRadius:20.0];
          v14 = [MEMORY[0x1E69DD278] expandingStackedRemindersSpringAnimator];
          v116[0] = MEMORY[0x1E69E9820];
          v116[1] = 3221225472;
          v116[2] = __59__EKExpandedReminderStackViewController_animateTransition___block_invoke_3;
          v116[3] = &unk_1E843EC60;
          v116[4] = v13;
          [v14 addAnimations:v116];
          [v14 startAnimation];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v117 objects:v131 count:16];
    }

    while (v10);
  }

  if (objc_opt_respondsToSelector())
  {
    v15 = self->_delegate;
    v16 = [(NSArray *)self->_events firstObject];
    v17 = [(EKExpandedReminderStackViewControllerDelegate *)v15 occurrenceViewForEvent:v16];

    [v17 bounds];
    v133.width = v18;
    v133.height = v19;
    UIGraphicsBeginImageContextWithOptions(v133, 0, 0.0);
    CurrentContext = UIGraphicsGetCurrentContext();
    CGContextSaveGState(CurrentContext);
    v21 = [v17 layer];
    [v21 renderInContext:CurrentContext];

    CGContextRestoreGState(CurrentContext);
    v22 = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    v23 = self->_collectionView;
    v24 = [MEMORY[0x1E696AC88] indexPathForRow:0 inSection:0];
    v25 = [(UICollectionView *)v23 cellForItemAtIndexPath:v24];
    v26 = [v25 backgroundImageView];
    [v26 setImage:v22];

    v114 = 0u;
    v115 = 0u;
    v112 = 0u;
    v113 = 0u;
    v27 = [(UICollectionView *)self->_collectionView visibleCells];
    v28 = [v27 countByEnumeratingWithState:&v112 objects:v130 count:16];
    if (v28)
    {
      v29 = v28;
      v30 = *v113;
      do
      {
        for (n = 0; n != v29; ++n)
        {
          if (*v113 != v30)
          {
            objc_enumerationMutation(v27);
          }

          v32 = *(*(&v112 + 1) + 8 * n);
          [v32 setVisibleForExpandingAnimation:0];
          v33 = objc_alloc(MEMORY[0x1E69DD278]);
          v111[0] = MEMORY[0x1E69E9820];
          v111[1] = 3221225472;
          v111[2] = __59__EKExpandedReminderStackViewController_animateTransition___block_invoke_4;
          v111[3] = &unk_1E843EC60;
          v111[4] = v32;
          v34 = [v33 initWithDuration:0 curve:v111 animations:0.2];
          [v34 startAnimation];
        }

        v29 = [v27 countByEnumeratingWithState:&v112 objects:v130 count:16];
      }

      while (v29);
    }

    self = v93;
  }

  [(EKExpandedReminderStackViewController *)self setOccurrenceViewOnCanvasHidden:1];
  [(EKExpandedReminderStackViewController *)self setSelectedOccurrenceViewOnCanvasHidden:1];

  v35 = v92;
LABEL_56:
}

void __59__EKExpandedReminderStackViewController_animateTransition___block_invoke(uint64_t a1)
{
  if ((*(*(a1 + 32) + 1024) & 1) == 0)
  {
    [*(a1 + 40) completeTransition:1];
    v3 = *(a1 + 32);
    v4 = *(v3 + 1032);
    *(v3 + 1032) = 0;
  }
}

void __59__EKExpandedReminderStackViewController_animateTransition___block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x1E69DC730] effectWithStyle:6];
  [*(*(a1 + 32) + 1056) setEffect:v2];
}

uint64_t __59__EKExpandedReminderStackViewController_animateTransition___block_invoke_2_105(uint64_t a1)
{
  [*(a1 + 32) setOccurrenceViewOnCanvasHidden:0];
  v2 = *(a1 + 40);

  return [v2 completeTransition:1];
}

- (void)setOccurrenceViewOnCanvasHidden:(BOOL)a3
{
  v3 = a3;
  if (objc_opt_respondsToSelector())
  {
    delegate = self->_delegate;
    v7 = [(NSArray *)self->_events firstObject];
    v6 = [(EKExpandedReminderStackViewControllerDelegate *)delegate occurrenceViewForEvent:v7];
    [v6 setHidden:v3];
  }
}

- (void)setSelectedOccurrenceViewOnCanvasHidden:(BOOL)a3
{
  v3 = a3;
  if (objc_opt_respondsToSelector())
  {
    delegate = self->_delegate;
    v8 = [(NSArray *)self->_events firstObject];
    v6 = [(EKExpandedReminderStackViewControllerDelegate *)delegate occurrenceViewForEvent:v8];
    v7 = [v6 selectedCopy];
    [v7 setHidden:v3];
  }
}

@end