@interface EKCalendarEditor
+ (id)fetchInitialSourceWithLimitedToSource:(id)a3 calendar:(id)a4 store:(id)a5;
+ (id)newFamilyCalendarEditorWithEventStore:(id)a3;
- (EKCalendarEditor)initWithCalendar:(id)a3 eventStore:(id)a4 entityType:(unint64_t)a5 limitedToSource:(id)a6;
- (id)existingSharees;
- (id)fetchInitialSource;
- (id)loadEditItems;
- (id)newSharees;
- (id)reconfiguredEditItems;
- (void)_deleteCalendar;
- (void)_deleteClicked:(id)a3;
- (void)_updateAppEntityAnnotationsIfNeeded;
- (void)addNewSharees:(id)a3;
- (void)calendarEditItem:(id)a3 shareesChanged:(id)a4 changesSaved:(BOOL)a5;
- (void)calendarEditItemWillChangeSharees:(id)a3;
- (void)calendarItemStartedEditing:(id)a3;
- (void)contentSizeCategoryDidChangeNotification:(id)a3;
- (void)loadView;
- (void)selectedSourceChanged:(id)a3;
- (void)setMeSharee:(id)a3;
- (void)updateShouldSuggestFamilyShareesWithSource:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
@end

@implementation EKCalendarEditor

+ (id)newFamilyCalendarEditorWithEventStore:(id)a3
{
  v3 = a3;
  v4 = [v3 primaryAppleAccountSource];
  v5 = [[EKCalendarEditor alloc] initWithCalendar:0 eventStore:v3 entityType:0 limitedToSource:v4];

  [(EKCalendarEditor *)v5 setIsNewFamilyCalendar:1];
  v6 = EventKitUIBundle();
  v7 = [v6 localizedStringForKey:@"Family Calendar" value:&stru_1F4EF6790 table:0];
  [(EKCalendarEditor *)v5 setPrefillCalendarTitle:v7];

  v8 = MEMORY[0x1E6966A28];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __58__EKCalendarEditor_newFamilyCalendarEditorWithEventStore___block_invoke;
  v11[3] = &unk_1E8440630;
  v9 = v5;
  v12 = v9;
  [v8 requestFamilyShareesWithCompletion:v11];

  return v9;
}

void __58__EKCalendarEditor_newFamilyCalendarEditorWithEventStore___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  [v5 setInitialSharees:a2];
  [*(a1 + 32) setMeSharee:v6];
}

- (EKCalendarEditor)initWithCalendar:(id)a3 eventStore:(id)a4 entityType:(unint64_t)a5 limitedToSource:(id)a6
{
  v22[1] = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v21.receiver = self;
  v21.super_class = EKCalendarEditor;
  v13 = [(EKAbstractCalendarEditor *)&v21 initWithCalendar:v10 eventStore:v11 entityType:a5 limitedToSource:v12];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_limitedToSource, a6);
    v14->_entityType = a5;
    objc_initWeak(&location, v14);
    v22[0] = objc_opt_class();
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:1];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __75__EKCalendarEditor_initWithCalendar_eventStore_entityType_limitedToSource___block_invoke;
    v18[3] = &unk_1E843EBE8;
    objc_copyWeak(&v19, &location);
    v16 = [(EKCalendarEditor *)v14 registerForTraitChanges:v15 withHandler:v18];

    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);
  }

  return v14;
}

void __75__EKCalendarEditor_initWithCalendar_eventStore_entityType_limitedToSource___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained[142] reset];
    v2 = [v3 tableView];
    [v2 reloadData];

    WeakRetained = v3;
  }
}

- (void)loadView
{
  v3 = [(EKAbstractCalendarEditor *)self isNewCalendar];
  v4 = EventKitUIBundle();
  v5 = v4;
  if (v3)
  {
    v6 = @"Add Calendar Title";
    v7 = @"Add Calendar";
  }

  else
  {
    v6 = @"Edit Calendar";
    v7 = &stru_1F4EF6790;
  }

  v8 = [v4 localizedStringForKey:v6 value:v7 table:0];
  [(EKCalendarEditor *)self setTitle:v8];

  v9.receiver = self;
  v9.super_class = EKCalendarEditor;
  [(EKAbstractCalendarEditor *)&v9 loadView];
}

- (void)viewDidLoad
{
  v11.receiver = self;
  v11.super_class = EKCalendarEditor;
  [(EKAbstractCalendarEditor *)&v11 viewDidLoad];
  v3 = [(EKCalendarEditor *)self prefillCalendarTitle];
  v4 = [v3 length];

  v5 = [(EKAbstractCalendarEditor *)self enableDoneInitially];
  v6 = [(EKCalendarEditor *)self navigationItem];
  v7 = v6;
  if (v4)
  {
    if (v5)
    {
      [v6 leftBarButtonItem];
    }

    else
    {
      [v6 rightBarButtonItem];
    }
    v8 = ;
    v9 = v8;
    v10 = 1;
  }

  else
  {
    if (v5)
    {
      [v6 leftBarButtonItem];
    }

    else
    {
      [v6 rightBarButtonItem];
    }
    v8 = ;
    v9 = v8;
    v10 = 0;
  }

  [v8 setEnabled:v10];

  [(EKCalendarEditor *)self _updateAppEntityAnnotationsIfNeeded];
}

- (void)_updateAppEntityAnnotationsIfNeeded
{
  v5 = [(EKAbstractCalendarEditor *)self calendar];
  if (CalendarLinkLibraryCore() && v5 && ([v5 isNew] & 1) == 0)
  {
    v3 = [(EKCalendarEditor *)self view];
    [v3 Cal_annotateWithCalendar:v5];

    v4 = [(EKCalendarEditor *)self view];
    [v4 Cal_updateEntityAnnotationStateIsSelected:1 isHighlighted:0 isFocused:0 isDisabled:0 isEditing:1 isPrimary:1];
  }
}

- (void)viewWillAppear:(BOOL)a3
{
  v13.receiver = self;
  v13.super_class = EKCalendarEditor;
  v4 = [(EKAbstractCalendarEditor *)&v13 viewWillAppear:a3];
  if (MEMORY[0x1D38B98D0](v4))
  {
    if ([(UIViewController *)self isPresentedInsidePopover])
    {
      v5 = [(EKCalendarEditor *)self tableView];
      [v5 contentInset];
      v7 = v6;
      v9 = v8;
      v11 = v10;

      v12 = [(EKCalendarEditor *)self tableView];
      [v12 setContentInset:{35.0, v7, v9, v11}];
    }
  }
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  v16 = *MEMORY[0x1E69E9840];
  v5 = kEKUILogHandle;
  if (os_log_type_enabled(kEKUILogHandle, OS_LOG_TYPE_INFO))
  {
    v6 = v5;
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    *buf = 138543618;
    v13 = v8;
    v14 = 1024;
    v15 = [(EKAbstractCalendarEditor *)self isNewCalendar];
    _os_log_impl(&dword_1D3400000, v6, OS_LOG_TYPE_INFO, "[UserStateLog] State -> %{public}@ viewDidAppear. isNew = %d", buf, 0x12u);
  }

  if ([(EKAbstractCalendarEditor *)self isNewCalendar]&& ![(EKCalendarEditor *)self isNewFamilyCalendar])
  {
    v9 = [(EKAbstractCalendarEditor *)self editItems];
    v10 = [v9 objectAtIndex:0];
    [v10 becomeFirstResponder];
  }

  v11.receiver = self;
  v11.super_class = EKCalendarEditor;
  [(EKCalendarEditor *)&v11 viewDidAppear:v3];
}

- (void)contentSizeCategoryDidChangeNotification:(id)a3
{
  [(EKCalendarColorEditItem *)self->_colorEditItem reset];
  v4 = [(EKCalendarEditor *)self tableView];
  [v4 reloadData];
}

- (id)loadEditItems
{
  v3 = [(EKAbstractCalendarEditor *)self calendar];
  v4 = [v3 source];

  if (!v4)
  {
    v5 = [(EKCalendarEditor *)self fetchInitialSource];
    v6 = [(EKAbstractCalendarEditor *)self calendar];
    [v6 setSource:v5];
  }

  v7 = [(EKAbstractCalendarEditor *)self calendar];
  v8 = [v7 source];
  [(EKCalendarEditor *)self updateShouldSuggestFamilyShareesWithSource:v8];

  v9 = objc_alloc_init(EKCalendarTitleEditItem);
  titleItem = self->_titleItem;
  self->_titleItem = v9;

  v11 = [(EKCalendarEditor *)self prefillCalendarTitle];
  if (v11)
  {
    v12 = v11;
    v13 = [(EKCalendarEditor *)self prefillCalendarTitle];
    v14 = [v13 isEqual:&stru_1F4EF6790];

    if ((v14 & 1) == 0)
    {
      v15 = [(EKCalendarEditor *)self prefillCalendarTitle];
      [(EKCalendarTitleEditItem *)self->_titleItem setPrefillTitle:v15];
    }
  }

  v16 = [[EKCalendarAccountEditItem alloc] initLimitedToSource:self->_limitedToSource];
  accountItem = self->_accountItem;
  self->_accountItem = v16;

  [(EKCalendarAccountEditItem *)self->_accountItem setEditable:1];
  v18 = objc_alloc_init(EKCalendarShareesEditItem);
  shareesEditItem = self->_shareesEditItem;
  self->_shareesEditItem = v18;

  v20 = objc_alloc_init(EKCalendarIgnoreSharedCalendarResourceChangeNotificationsEditItem);
  ignoreSharedResourceChangeNotificationsItem = self->_ignoreSharedResourceChangeNotificationsItem;
  self->_ignoreSharedResourceChangeNotificationsItem = v20;

  v22 = objc_alloc_init(EKCalendarColorEditItem);
  colorEditItem = self->_colorEditItem;
  self->_colorEditItem = v22;

  [(EKCalendarColorEditItem *)self->_colorEditItem setLayoutInline:0];
  v24 = objc_alloc_init(EKCalendarIgnoreAlertsEditItem);
  ignoreAlertsItem = self->_ignoreAlertsItem;
  self->_ignoreAlertsItem = v24;

  v26 = objc_alloc_init(EKCalendarIsAffectingAvailabilityEditItem);
  affectsAvailabilityItem = self->_affectsAvailabilityItem;
  self->_affectsAvailabilityItem = v26;

  v28 = objc_alloc_init(EKCalendarPublishingEditItem);
  publishItem = self->_publishItem;
  self->_publishItem = v28;

  v30 = objc_alloc_init(EKCalendarDeleteButtonEditItem);
  deleteItem = self->_deleteItem;
  self->_deleteItem = v30;

  [(EKCalendarButtonEditItem *)self->_deleteItem setButtonTarget:self action:sel__deleteClicked_];
  v32 = self->_deleteItem;
  v33 = EventKitUIBundle();
  v34 = [v33 localizedStringForKey:@"Delete Calendar" value:&stru_1F4EF6790 table:0];
  [(EKCalendarButtonEditItem *)v32 setButtonTitle:v34];

  [(EKCalendarButtonEditItem *)self->_deleteItem setAccessibilityIdentifier:@"delete-calendar-button"];
  v35 = [(EKAbstractCalendarEditor *)self calendar];
  v36 = [v35 source];
  [(EKCalendarEditor *)self updateShouldSuggestFamilyShareesWithSource:v36];

  return [(EKCalendarEditor *)self reconfiguredEditItems];
}

- (id)reconfiguredEditItems
{
  v38[6] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E69933F8] shared];
  v4 = [v3 isCurrentProcessAnApplicationExtension];

  if (v4)
  {
    accountItem = self->_accountItem;
    v38[0] = self->_titleItem;
    v38[1] = accountItem;
    ignoreAlertsItem = self->_ignoreAlertsItem;
    v38[2] = self->_colorEditItem;
    v38[3] = ignoreAlertsItem;
    deleteItem = self->_deleteItem;
    v38[4] = self->_affectsAvailabilityItem;
    v38[5] = deleteItem;
    v8 = MEMORY[0x1E695DEC8];
    v9 = v38;
    v10 = 6;
  }

  else
  {
    if ([(EKAbstractCalendarEditor *)self isNewCalendar])
    {
      v11 = self->_accountItem;
      v37[0] = self->_titleItem;
      v37[1] = v11;
      ignoreSharedResourceChangeNotificationsItem = self->_ignoreSharedResourceChangeNotificationsItem;
      v37[2] = self->_shareesEditItem;
      v37[3] = ignoreSharedResourceChangeNotificationsItem;
      v13 = self->_ignoreAlertsItem;
      v37[4] = self->_colorEditItem;
      v37[5] = v13;
      v14 = self->_deleteItem;
      v37[6] = self->_affectsAvailabilityItem;
      v37[7] = v14;
      v8 = MEMORY[0x1E695DEC8];
      v9 = v37;
    }

    else
    {
      shareesEditItem = self->_shareesEditItem;
      v36[0] = self->_titleItem;
      v36[1] = shareesEditItem;
      colorEditItem = self->_colorEditItem;
      v36[2] = self->_ignoreSharedResourceChangeNotificationsItem;
      v36[3] = colorEditItem;
      affectsAvailabilityItem = self->_affectsAvailabilityItem;
      v36[4] = self->_ignoreAlertsItem;
      v36[5] = affectsAvailabilityItem;
      v18 = self->_deleteItem;
      v36[6] = self->_publishItem;
      v36[7] = v18;
      v8 = MEMORY[0x1E695DEC8];
      v9 = v36;
    }

    v10 = 8;
  }

  v19 = [v8 arrayWithObjects:v9 count:v10];
  v20 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v19, "count")}];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v21 = v19;
  v22 = [v21 countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v32;
    do
    {
      for (i = 0; i != v23; ++i)
      {
        if (*v32 != v24)
        {
          objc_enumerationMutation(v21);
        }

        v26 = *(*(&v31 + 1) + 8 * i);
        v27 = [(EKAbstractCalendarEditor *)self calendar];
        v28 = [(EKAbstractCalendarEditor *)self eventStore];
        v29 = [v26 configureWithCalendar:v27 store:v28];

        if (v29)
        {
          [v20 addObject:v26];
        }
      }

      v23 = [v21 countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v23);
  }

  return v20;
}

- (id)fetchInitialSource
{
  limitedToSource = self->_limitedToSource;
  v4 = [(EKAbstractCalendarEditor *)self calendar];
  v5 = [(EKAbstractCalendarEditor *)self eventStore];
  v6 = [EKCalendarEditor fetchInitialSourceWithLimitedToSource:limitedToSource calendar:v4 store:v5];

  return v6;
}

+ (id)fetchInitialSourceWithLimitedToSource:(id)a3 calendar:(id)a4 store:(id)a5
{
  v23 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v8 source];
  if (!v10)
  {
    if (v7)
    {
      v10 = v7;
    }

    else
    {
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v11 = [v9 sources];
      v10 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v10)
      {
        v12 = *v19;
        while (2)
        {
          for (i = 0; i != v10; i = i + 1)
          {
            if (*v19 != v12)
            {
              objc_enumerationMutation(v11);
            }

            v14 = *(*(&v18 + 1) + 8 * i);
            if ([v8 isSubscribed])
            {
              if (([v14 isDelegate] & 1) == 0)
              {
                v15 = [v14 constraints];
                if ([v15 supportsSubscribedCalendars])
                {

LABEL_21:
                  v10 = v14;
                  goto LABEL_22;
                }

                v16 = [v14 sourceType];

                if (v16 == 4)
                {
                  goto LABEL_21;
                }
              }
            }

            else if ([v14 supportsCalendarCreation] && objc_msgSend(v14, "sourceType") != 4 && !objc_msgSend(v14, "isDelegate"))
            {
              goto LABEL_21;
            }
          }

          v10 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
          if (v10)
          {
            continue;
          }

          break;
        }
      }

LABEL_22:
    }
  }

  return v10;
}

- (void)addNewSharees:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * v8);
        v10 = [(EKAbstractCalendarEditor *)self calendar];
        [v10 addSharee:v9];

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  [(EKAbstractCalendarEditor *)self reconfigureAndReloadEditItems];
}

- (id)newSharees
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(EKAbstractCalendarEditor *)self calendar];
  v5 = [v4 sharees];

  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        if ([v10 isNew])
        {
          [v3 addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return v3;
}

- (id)existingSharees
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(EKAbstractCalendarEditor *)self calendar];
  v5 = [v4 sharees];

  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        if (([v10 isNew] & 1) == 0)
        {
          [v3 addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return v3;
}

- (void)setMeSharee:(id)a3
{
  objc_storeStrong(&self->_meSharee, a3);
  v5 = a3;
  [(EKCalendarShareesEditItem *)self->_shareesEditItem setMeSharee:v5];

  v7 = [(EKAbstractCalendarEditor *)self calendar];
  v6 = [v7 source];
  [(EKCalendarEditor *)self updateShouldSuggestFamilyShareesWithSource:v6];
}

- (void)updateShouldSuggestFamilyShareesWithSource:(id)a3
{
  v4 = a3;
  v5 = [(EKAbstractCalendarEditor *)self eventStore];
  v6 = [v5 primaryAppleAccountSource];
  v7 = [v6 isEqual:v4];

  shareesEditItem = self->_shareesEditItem;

  [(EKCalendarShareesEditItem *)shareesEditItem setShouldSuggestFamilySharees:v7];
}

- (void)_deleteCalendar
{
  v39 = *MEMORY[0x1E69E9840];
  v3 = kEKUILogHandle;
  if (os_log_type_enabled(kEKUILogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    v5 = [(EKAbstractCalendarEditor *)self calendar];
    *buf = 138412290;
    v36 = v5;
    _os_log_impl(&dword_1D3400000, v4, OS_LOG_TYPE_DEFAULT, "Deleting Calendar %@", buf, 0xCu);
  }

  entityType = self->_entityType;
  if (entityType)
  {
    v7 = 2 * (entityType == 1);
  }

  else
  {
    v7 = 1;
  }

  v8 = [MEMORY[0x1E6966A10] sharedInstance];
  v9 = [(EKAbstractCalendarEditor *)self calendar];
  [v8 removeInteractionsForCalendar:v9];

  v10 = [(EKAbstractCalendarEditor *)self calendar];
  if (![v10 isSubscribed])
  {
    goto LABEL_15;
  }

  v11 = [(EKAbstractCalendarEditor *)self calendar];
  v12 = [v11 source];
  v13 = [v12 sourceType];

  if (v13 != 2)
  {
    v14 = [(EKAbstractCalendarEditor *)self calendar];
    v10 = [v14 subcalAccountID];

    v15 = objc_alloc_init(MEMORY[0x1E6959A48]);
    v16 = [v15 accountWithIdentifier:v10];
    v17 = kEKUILogHandle;
    if (v16)
    {
      if (os_log_type_enabled(kEKUILogHandle, OS_LOG_TYPE_INFO))
      {
        v18 = v17;
        v19 = [(EKAbstractCalendarEditor *)self calendar];
        *buf = 138543618;
        v36 = v10;
        v37 = 2112;
        v38 = v19;
        _os_log_impl(&dword_1D3400000, v18, OS_LOG_TYPE_INFO, "Deleting account %{public}@ to delete subscribed calendar %@", buf, 0x16u);
      }

      v32[0] = MEMORY[0x1E69E9820];
      v32[1] = 3221225472;
      v32[2] = __35__EKCalendarEditor__deleteCalendar__block_invoke;
      v32[3] = &unk_1E84410B0;
      v33 = v10;
      v34 = self;
      [v15 removeAccount:v16 withCompletionHandler:v32];
    }

    else if (os_log_type_enabled(kEKUILogHandle, OS_LOG_TYPE_ERROR))
    {
      v20 = v17;
      v21 = [(EKAbstractCalendarEditor *)self calendar];
      *buf = 138543618;
      v36 = v10;
      v37 = 2112;
      v38 = v21;
      _os_log_impl(&dword_1D3400000, v20, OS_LOG_TYPE_ERROR, "Couldn't find account with ID %{public}@ to remove while deleting subscribed calendar %@", buf, 0x16u);
    }

LABEL_15:
  }

  v22 = [(UIResponder *)self EKUI_editor];
  v23 = [(EKAbstractCalendarEditor *)self calendar];
  [v22 deleteCalendar:v23 forEntityType:v7];

  v24 = [(EKAbstractCalendarEditor *)self delegate];
  if (v24)
  {
    v25 = v24;
    v26 = [(EKAbstractCalendarEditor *)self delegate];
    v27 = objc_opt_respondsToSelector();

    if (v27)
    {
      v28 = [(EKAbstractCalendarEditor *)self delegate];
      [v28 calendarEditor:self didCompleteWithAction:2];
    }
  }

  v29 = MEMORY[0x1E6966A28];
  v30 = [(EKAbstractCalendarEditor *)self calendar];
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __35__EKCalendarEditor__deleteCalendar__block_invoke_60;
  v31[3] = &unk_1E843EC10;
  v31[4] = self;
  [v29 isFamilyCalendar:v30 completion:v31];
}

void __35__EKCalendarEditor__deleteCalendar__block_invoke(uint64_t a1, char a2, void *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = kEKUILogHandle;
  if (a2)
  {
    if (os_log_type_enabled(kEKUILogHandle, OS_LOG_TYPE_INFO))
    {
      v8 = *(a1 + 32);
      v7 = *(a1 + 40);
      v9 = v6;
      v10 = [v7 calendar];
      v17 = 138543618;
      v18 = v8;
      v19 = 2112;
      v20 = v10;
      v11 = "Successfully removed account %{public}@ for delete of subscribed calendar %@";
      v12 = v9;
      v13 = OS_LOG_TYPE_INFO;
      v14 = 22;
LABEL_6:
      _os_log_impl(&dword_1D3400000, v12, v13, v11, &v17, v14);
    }
  }

  else if (os_log_type_enabled(kEKUILogHandle, OS_LOG_TYPE_ERROR))
  {
    v16 = *(a1 + 32);
    v15 = *(a1 + 40);
    v9 = v6;
    v10 = [v15 calendar];
    v17 = 138543874;
    v18 = v16;
    v19 = 2112;
    v20 = v10;
    v21 = 2112;
    v22 = v5;
    v11 = "Failed to remove account %{public}@ while deleting subscribed calendar %@: %@";
    v12 = v9;
    v13 = OS_LOG_TYPE_ERROR;
    v14 = 32;
    goto LABEL_6;
  }
}

void __35__EKCalendarEditor__deleteCalendar__block_invoke_60(uint64_t a1, int a2)
{
  v10 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = kEKUILogHandle;
    if (os_log_type_enabled(kEKUILogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      v5 = v3;
      v6 = [v4 calendar];
      v8 = 138412290;
      v9 = v6;
      _os_log_impl(&dword_1D3400000, v5, OS_LOG_TYPE_DEFAULT, "Sending out delete family calendar darwin notification. %@", &v8, 0xCu);
    }

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, *MEMORY[0x1E6966938], 0, 0, 1u);
  }
}

- (void)_deleteClicked:(id)a3
{
  v5 = a3;
  v6 = [(EKAbstractCalendarEditor *)self calendar];

  if (!v6)
  {
    [(EKCalendarEditor *)a2 _deleteClicked:?];
  }

  v7 = [(EKAbstractCalendarEditor *)self calendar];
  v8 = [v7 allowedEntityTypes];

  if ((v8 - 1) > 2)
  {
    v11 = 0;
  }

  else
  {
    v9 = off_1E84410D0[v8 - 1];
    v10 = EventKitUIBundle();
    v11 = [v10 localizedStringForKey:v9 value:&stru_1F4EF6790 table:0];
  }

  v12 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v11 message:0 preferredStyle:0];
  v13 = MEMORY[0x1E69DC648];
  v14 = EventKitUIBundle();
  v15 = [v14 localizedStringForKey:@"Delete Calendar" value:&stru_1F4EF6790 table:0];
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __35__EKCalendarEditor__deleteClicked___block_invoke;
  v33[3] = &unk_1E843EB98;
  v33[4] = self;
  v16 = [v13 actionWithTitle:v15 style:2 handler:v33];
  [v12 addAction:v16];

  v17 = MEMORY[0x1E69DC648];
  v18 = EventKitUIBundle();
  v19 = [v18 localizedStringForKey:@"Cancel - delete clicked" value:@"Cancel" table:0];
  v20 = [v17 actionWithTitle:v19 style:1 handler:0];
  [v12 addAction:v20];

  v21 = [v5 buttonView];
  v22 = [v12 popoverPresentationController];
  [v22 setSourceView:v21];

  v23 = [v5 buttonView];

  [v23 bounds];
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v32 = [v12 popoverPresentationController];
  [v32 setSourceRect:{v25, v27, v29, v31}];

  [(EKCalendarEditor *)self presentViewController:v12 animated:1 completion:0];
}

- (void)calendarItemStartedEditing:(id)a3
{
  v4 = [(EKAbstractCalendarEditor *)self enableDoneInitially];
  v5 = [(EKCalendarEditor *)self navigationItem];
  v7 = v5;
  if (v4)
  {
    [v5 leftBarButtonItem];
  }

  else
  {
    [v5 rightBarButtonItem];
  }
  v6 = ;
  [v6 setEnabled:1];
}

- (void)calendarEditItemWillChangeSharees:(id)a3
{
  v7 = [(EKAbstractCalendarEditor *)self calendar];
  v4 = [v7 sharees];
  v5 = [v4 copy];
  shareesBeforeSave = self->_shareesBeforeSave;
  self->_shareesBeforeSave = v5;
}

- (void)calendarEditItem:(id)a3 shareesChanged:(id)a4 changesSaved:(BOOL)a5
{
  v5 = a5;
  [(EKAbstractCalendarEditor *)self reconfigureAndReloadEditItems:a3];
  if (v5)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __65__EKCalendarEditor_calendarEditItem_shareesChanged_changesSaved___block_invoke;
    v8[3] = &unk_1E8440630;
    v8[4] = self;
    [MEMORY[0x1E6966A28] requestFamilyShareesWithCompletion:v8];
  }

  else
  {
    shareesBeforeSave = self->_shareesBeforeSave;
    self->_shareesBeforeSave = 0;
  }
}

void __65__EKCalendarEditor_calendarEditItem_shareesChanged_changesSaved___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E6966A28];
  v4 = *(a1 + 32);
  v5 = v4[149];
  v6 = a2;
  v7 = [v4 calendar];
  v8 = [v7 source];
  LODWORD(v3) = [v3 isFamilyCalendarGivenCalendarSharees:v5 familySharees:v6 isPrimaryAppleAccount:{objc_msgSend(v8, "isPrimaryAppleAccount")}];

  v9 = MEMORY[0x1E6966A28];
  v10 = [*(a1 + 32) calendar];
  LODWORD(v9) = [v9 isFamilyCalendar:v10 givenFamilySharees:v6];

  if (v3 != v9)
  {
    v11 = kEKUILogHandle;
    if (os_log_type_enabled(kEKUILogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(a1 + 32);
      v13 = v11;
      v14 = [v12 calendar];
      v18 = 138412290;
      v19 = v14;
      _os_log_impl(&dword_1D3400000, v13, OS_LOG_TYPE_DEFAULT, "Sending out family calendar changed darwin notification. %@", &v18, 0xCu);
    }

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, *MEMORY[0x1E6966938], 0, 0, 1u);
  }

  v16 = *(a1 + 32);
  v17 = *(v16 + 1192);
  *(v16 + 1192) = 0;
}

- (void)selectedSourceChanged:(id)a3
{
  v7 = a3;
  v4 = [(EKAbstractCalendarEditor *)self calendar];
  v5 = [v4 isNew];

  if (v5)
  {
    v6 = [(EKAbstractCalendarEditor *)self calendar];
    [v6 setSharees:0];
  }

  [(EKCalendarEditor *)self updateShouldSuggestFamilyShareesWithSource:v7];
  [(EKAbstractCalendarEditor *)self reconfigureAndReloadEditItems];
}

- (void)viewWillLayoutSubviews
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [(EKAbstractCalendarEditor *)self editItems];
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v10 + 1) + 8 * v7);
        v9 = [(EKCalendarEditor *)self view];
        [v9 frame];
        [v8 layoutForWidth:CGRectGetWidth(v16)];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }
}

- (void)_deleteClicked:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"EKCalendarEditor.m" lineNumber:371 description:@"-[EKCalendarEditor _deleteClicked]: There is no calendar to delete."];
}

@end