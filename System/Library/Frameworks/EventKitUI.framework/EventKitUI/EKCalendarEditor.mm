@interface EKCalendarEditor
+ (id)fetchInitialSourceWithLimitedToSource:(id)source calendar:(id)calendar store:(id)store;
+ (id)newFamilyCalendarEditorWithEventStore:(id)store;
- (EKCalendarEditor)initWithCalendar:(id)calendar eventStore:(id)store entityType:(unint64_t)type limitedToSource:(id)source;
- (id)existingSharees;
- (id)fetchInitialSource;
- (id)loadEditItems;
- (id)newSharees;
- (id)reconfiguredEditItems;
- (void)_deleteCalendar;
- (void)_deleteClicked:(id)clicked;
- (void)_updateAppEntityAnnotationsIfNeeded;
- (void)addNewSharees:(id)sharees;
- (void)calendarEditItem:(id)item shareesChanged:(id)changed changesSaved:(BOOL)saved;
- (void)calendarEditItemWillChangeSharees:(id)sharees;
- (void)calendarItemStartedEditing:(id)editing;
- (void)contentSizeCategoryDidChangeNotification:(id)notification;
- (void)loadView;
- (void)selectedSourceChanged:(id)changed;
- (void)setMeSharee:(id)sharee;
- (void)updateShouldSuggestFamilyShareesWithSource:(id)source;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillLayoutSubviews;
@end

@implementation EKCalendarEditor

+ (id)newFamilyCalendarEditorWithEventStore:(id)store
{
  storeCopy = store;
  primaryAppleAccountSource = [storeCopy primaryAppleAccountSource];
  v5 = [[EKCalendarEditor alloc] initWithCalendar:0 eventStore:storeCopy entityType:0 limitedToSource:primaryAppleAccountSource];

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

- (EKCalendarEditor)initWithCalendar:(id)calendar eventStore:(id)store entityType:(unint64_t)type limitedToSource:(id)source
{
  v22[1] = *MEMORY[0x1E69E9840];
  calendarCopy = calendar;
  storeCopy = store;
  sourceCopy = source;
  v21.receiver = self;
  v21.super_class = EKCalendarEditor;
  v13 = [(EKAbstractCalendarEditor *)&v21 initWithCalendar:calendarCopy eventStore:storeCopy entityType:type limitedToSource:sourceCopy];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_limitedToSource, source);
    v14->_entityType = type;
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
  isNewCalendar = [(EKAbstractCalendarEditor *)self isNewCalendar];
  v4 = EventKitUIBundle();
  v5 = v4;
  if (isNewCalendar)
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
  prefillCalendarTitle = [(EKCalendarEditor *)self prefillCalendarTitle];
  v4 = [prefillCalendarTitle length];

  enableDoneInitially = [(EKAbstractCalendarEditor *)self enableDoneInitially];
  navigationItem = [(EKCalendarEditor *)self navigationItem];
  v7 = navigationItem;
  if (v4)
  {
    if (enableDoneInitially)
    {
      [navigationItem leftBarButtonItem];
    }

    else
    {
      [navigationItem rightBarButtonItem];
    }
    v8 = ;
    v9 = v8;
    v10 = 1;
  }

  else
  {
    if (enableDoneInitially)
    {
      [navigationItem leftBarButtonItem];
    }

    else
    {
      [navigationItem rightBarButtonItem];
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
  calendar = [(EKAbstractCalendarEditor *)self calendar];
  if (CalendarLinkLibraryCore() && calendar && ([calendar isNew] & 1) == 0)
  {
    view = [(EKCalendarEditor *)self view];
    [view Cal_annotateWithCalendar:calendar];

    view2 = [(EKCalendarEditor *)self view];
    [view2 Cal_updateEntityAnnotationStateIsSelected:1 isHighlighted:0 isFocused:0 isDisabled:0 isEditing:1 isPrimary:1];
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  v13.receiver = self;
  v13.super_class = EKCalendarEditor;
  v4 = [(EKAbstractCalendarEditor *)&v13 viewWillAppear:appear];
  if (MEMORY[0x1D38B98D0](v4))
  {
    if ([(UIViewController *)self isPresentedInsidePopover])
    {
      tableView = [(EKCalendarEditor *)self tableView];
      [tableView contentInset];
      v7 = v6;
      v9 = v8;
      v11 = v10;

      tableView2 = [(EKCalendarEditor *)self tableView];
      [tableView2 setContentInset:{35.0, v7, v9, v11}];
    }
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
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
    isNewCalendar = [(EKAbstractCalendarEditor *)self isNewCalendar];
    _os_log_impl(&dword_1D3400000, v6, OS_LOG_TYPE_INFO, "[UserStateLog] State -> %{public}@ viewDidAppear. isNew = %d", buf, 0x12u);
  }

  if ([(EKAbstractCalendarEditor *)self isNewCalendar]&& ![(EKCalendarEditor *)self isNewFamilyCalendar])
  {
    editItems = [(EKAbstractCalendarEditor *)self editItems];
    v10 = [editItems objectAtIndex:0];
    [v10 becomeFirstResponder];
  }

  v11.receiver = self;
  v11.super_class = EKCalendarEditor;
  [(EKCalendarEditor *)&v11 viewDidAppear:appearCopy];
}

- (void)contentSizeCategoryDidChangeNotification:(id)notification
{
  [(EKCalendarColorEditItem *)self->_colorEditItem reset];
  tableView = [(EKCalendarEditor *)self tableView];
  [tableView reloadData];
}

- (id)loadEditItems
{
  calendar = [(EKAbstractCalendarEditor *)self calendar];
  source = [calendar source];

  if (!source)
  {
    fetchInitialSource = [(EKCalendarEditor *)self fetchInitialSource];
    calendar2 = [(EKAbstractCalendarEditor *)self calendar];
    [calendar2 setSource:fetchInitialSource];
  }

  calendar3 = [(EKAbstractCalendarEditor *)self calendar];
  source2 = [calendar3 source];
  [(EKCalendarEditor *)self updateShouldSuggestFamilyShareesWithSource:source2];

  v9 = objc_alloc_init(EKCalendarTitleEditItem);
  titleItem = self->_titleItem;
  self->_titleItem = v9;

  prefillCalendarTitle = [(EKCalendarEditor *)self prefillCalendarTitle];
  if (prefillCalendarTitle)
  {
    v12 = prefillCalendarTitle;
    prefillCalendarTitle2 = [(EKCalendarEditor *)self prefillCalendarTitle];
    v14 = [prefillCalendarTitle2 isEqual:&stru_1F4EF6790];

    if ((v14 & 1) == 0)
    {
      prefillCalendarTitle3 = [(EKCalendarEditor *)self prefillCalendarTitle];
      [(EKCalendarTitleEditItem *)self->_titleItem setPrefillTitle:prefillCalendarTitle3];
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
  calendar4 = [(EKAbstractCalendarEditor *)self calendar];
  source3 = [calendar4 source];
  [(EKCalendarEditor *)self updateShouldSuggestFamilyShareesWithSource:source3];

  return [(EKCalendarEditor *)self reconfiguredEditItems];
}

- (id)reconfiguredEditItems
{
  v38[6] = *MEMORY[0x1E69E9840];
  mEMORY[0x1E69933F8] = [MEMORY[0x1E69933F8] shared];
  isCurrentProcessAnApplicationExtension = [mEMORY[0x1E69933F8] isCurrentProcessAnApplicationExtension];

  if (isCurrentProcessAnApplicationExtension)
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
        calendar = [(EKAbstractCalendarEditor *)self calendar];
        eventStore = [(EKAbstractCalendarEditor *)self eventStore];
        v29 = [v26 configureWithCalendar:calendar store:eventStore];

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
  calendar = [(EKAbstractCalendarEditor *)self calendar];
  eventStore = [(EKAbstractCalendarEditor *)self eventStore];
  v6 = [EKCalendarEditor fetchInitialSourceWithLimitedToSource:limitedToSource calendar:calendar store:eventStore];

  return v6;
}

+ (id)fetchInitialSourceWithLimitedToSource:(id)source calendar:(id)calendar store:(id)store
{
  v23 = *MEMORY[0x1E69E9840];
  sourceCopy = source;
  calendarCopy = calendar;
  storeCopy = store;
  source = [calendarCopy source];
  if (!source)
  {
    if (sourceCopy)
    {
      source = sourceCopy;
    }

    else
    {
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      sources = [storeCopy sources];
      source = [sources countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (source)
      {
        v12 = *v19;
        while (2)
        {
          for (i = 0; i != source; i = i + 1)
          {
            if (*v19 != v12)
            {
              objc_enumerationMutation(sources);
            }

            v14 = *(*(&v18 + 1) + 8 * i);
            if ([calendarCopy isSubscribed])
            {
              if (([v14 isDelegate] & 1) == 0)
              {
                constraints = [v14 constraints];
                if ([constraints supportsSubscribedCalendars])
                {

LABEL_21:
                  source = v14;
                  goto LABEL_22;
                }

                sourceType = [v14 sourceType];

                if (sourceType == 4)
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

          source = [sources countByEnumeratingWithState:&v18 objects:v22 count:16];
          if (source)
          {
            continue;
          }

          break;
        }
      }

LABEL_22:
    }
  }

  return source;
}

- (void)addNewSharees:(id)sharees
{
  v16 = *MEMORY[0x1E69E9840];
  shareesCopy = sharees;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [shareesCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(shareesCopy);
        }

        v9 = *(*(&v11 + 1) + 8 * v8);
        calendar = [(EKAbstractCalendarEditor *)self calendar];
        [calendar addSharee:v9];

        ++v8;
      }

      while (v6 != v8);
      v6 = [shareesCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
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
  calendar = [(EKAbstractCalendarEditor *)self calendar];
  sharees = [calendar sharees];

  v6 = [sharees countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(sharees);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        if ([v10 isNew])
        {
          [v3 addObject:v10];
        }
      }

      v7 = [sharees countByEnumeratingWithState:&v12 objects:v16 count:16];
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
  calendar = [(EKAbstractCalendarEditor *)self calendar];
  sharees = [calendar sharees];

  v6 = [sharees countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(sharees);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        if (([v10 isNew] & 1) == 0)
        {
          [v3 addObject:v10];
        }
      }

      v7 = [sharees countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return v3;
}

- (void)setMeSharee:(id)sharee
{
  objc_storeStrong(&self->_meSharee, sharee);
  shareeCopy = sharee;
  [(EKCalendarShareesEditItem *)self->_shareesEditItem setMeSharee:shareeCopy];

  calendar = [(EKAbstractCalendarEditor *)self calendar];
  source = [calendar source];
  [(EKCalendarEditor *)self updateShouldSuggestFamilyShareesWithSource:source];
}

- (void)updateShouldSuggestFamilyShareesWithSource:(id)source
{
  sourceCopy = source;
  eventStore = [(EKAbstractCalendarEditor *)self eventStore];
  primaryAppleAccountSource = [eventStore primaryAppleAccountSource];
  v7 = [primaryAppleAccountSource isEqual:sourceCopy];

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
    calendar = [(EKAbstractCalendarEditor *)self calendar];
    *buf = 138412290;
    v36 = calendar;
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

  mEMORY[0x1E6966A10] = [MEMORY[0x1E6966A10] sharedInstance];
  calendar2 = [(EKAbstractCalendarEditor *)self calendar];
  [mEMORY[0x1E6966A10] removeInteractionsForCalendar:calendar2];

  calendar3 = [(EKAbstractCalendarEditor *)self calendar];
  if (![calendar3 isSubscribed])
  {
    goto LABEL_15;
  }

  calendar4 = [(EKAbstractCalendarEditor *)self calendar];
  source = [calendar4 source];
  sourceType = [source sourceType];

  if (sourceType != 2)
  {
    calendar5 = [(EKAbstractCalendarEditor *)self calendar];
    calendar3 = [calendar5 subcalAccountID];

    v15 = objc_alloc_init(MEMORY[0x1E6959A48]);
    v16 = [v15 accountWithIdentifier:calendar3];
    v17 = kEKUILogHandle;
    if (v16)
    {
      if (os_log_type_enabled(kEKUILogHandle, OS_LOG_TYPE_INFO))
      {
        v18 = v17;
        calendar6 = [(EKAbstractCalendarEditor *)self calendar];
        *buf = 138543618;
        v36 = calendar3;
        v37 = 2112;
        v38 = calendar6;
        _os_log_impl(&dword_1D3400000, v18, OS_LOG_TYPE_INFO, "Deleting account %{public}@ to delete subscribed calendar %@", buf, 0x16u);
      }

      v32[0] = MEMORY[0x1E69E9820];
      v32[1] = 3221225472;
      v32[2] = __35__EKCalendarEditor__deleteCalendar__block_invoke;
      v32[3] = &unk_1E84410B0;
      v33 = calendar3;
      selfCopy = self;
      [v15 removeAccount:v16 withCompletionHandler:v32];
    }

    else if (os_log_type_enabled(kEKUILogHandle, OS_LOG_TYPE_ERROR))
    {
      v20 = v17;
      calendar7 = [(EKAbstractCalendarEditor *)self calendar];
      *buf = 138543618;
      v36 = calendar3;
      v37 = 2112;
      v38 = calendar7;
      _os_log_impl(&dword_1D3400000, v20, OS_LOG_TYPE_ERROR, "Couldn't find account with ID %{public}@ to remove while deleting subscribed calendar %@", buf, 0x16u);
    }

LABEL_15:
  }

  eKUI_editor = [(UIResponder *)self EKUI_editor];
  calendar8 = [(EKAbstractCalendarEditor *)self calendar];
  [eKUI_editor deleteCalendar:calendar8 forEntityType:v7];

  delegate = [(EKAbstractCalendarEditor *)self delegate];
  if (delegate)
  {
    v25 = delegate;
    delegate2 = [(EKAbstractCalendarEditor *)self delegate];
    v27 = objc_opt_respondsToSelector();

    if (v27)
    {
      delegate3 = [(EKAbstractCalendarEditor *)self delegate];
      [delegate3 calendarEditor:self didCompleteWithAction:2];
    }
  }

  v29 = MEMORY[0x1E6966A28];
  calendar9 = [(EKAbstractCalendarEditor *)self calendar];
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __35__EKCalendarEditor__deleteCalendar__block_invoke_60;
  v31[3] = &unk_1E843EC10;
  v31[4] = self;
  [v29 isFamilyCalendar:calendar9 completion:v31];
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

- (void)_deleteClicked:(id)clicked
{
  clickedCopy = clicked;
  calendar = [(EKAbstractCalendarEditor *)self calendar];

  if (!calendar)
  {
    [(EKCalendarEditor *)a2 _deleteClicked:?];
  }

  calendar2 = [(EKAbstractCalendarEditor *)self calendar];
  allowedEntityTypes = [calendar2 allowedEntityTypes];

  if ((allowedEntityTypes - 1) > 2)
  {
    v11 = 0;
  }

  else
  {
    v9 = off_1E84410D0[allowedEntityTypes - 1];
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

  buttonView = [clickedCopy buttonView];
  popoverPresentationController = [v12 popoverPresentationController];
  [popoverPresentationController setSourceView:buttonView];

  buttonView2 = [clickedCopy buttonView];

  [buttonView2 bounds];
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  popoverPresentationController2 = [v12 popoverPresentationController];
  [popoverPresentationController2 setSourceRect:{v25, v27, v29, v31}];

  [(EKCalendarEditor *)self presentViewController:v12 animated:1 completion:0];
}

- (void)calendarItemStartedEditing:(id)editing
{
  enableDoneInitially = [(EKAbstractCalendarEditor *)self enableDoneInitially];
  navigationItem = [(EKCalendarEditor *)self navigationItem];
  v7 = navigationItem;
  if (enableDoneInitially)
  {
    [navigationItem leftBarButtonItem];
  }

  else
  {
    [navigationItem rightBarButtonItem];
  }
  v6 = ;
  [v6 setEnabled:1];
}

- (void)calendarEditItemWillChangeSharees:(id)sharees
{
  calendar = [(EKAbstractCalendarEditor *)self calendar];
  sharees = [calendar sharees];
  v5 = [sharees copy];
  shareesBeforeSave = self->_shareesBeforeSave;
  self->_shareesBeforeSave = v5;
}

- (void)calendarEditItem:(id)item shareesChanged:(id)changed changesSaved:(BOOL)saved
{
  savedCopy = saved;
  [(EKAbstractCalendarEditor *)self reconfigureAndReloadEditItems:item];
  if (savedCopy)
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

- (void)selectedSourceChanged:(id)changed
{
  changedCopy = changed;
  calendar = [(EKAbstractCalendarEditor *)self calendar];
  isNew = [calendar isNew];

  if (isNew)
  {
    calendar2 = [(EKAbstractCalendarEditor *)self calendar];
    [calendar2 setSharees:0];
  }

  [(EKCalendarEditor *)self updateShouldSuggestFamilyShareesWithSource:changedCopy];
  [(EKAbstractCalendarEditor *)self reconfigureAndReloadEditItems];
}

- (void)viewWillLayoutSubviews
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  editItems = [(EKAbstractCalendarEditor *)self editItems];
  v4 = [editItems countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(editItems);
        }

        v8 = *(*(&v10 + 1) + 8 * v7);
        view = [(EKCalendarEditor *)self view];
        [view frame];
        [v8 layoutForWidth:CGRectGetWidth(v16)];

        ++v7;
      }

      while (v5 != v7);
      v5 = [editItems countByEnumeratingWithState:&v10 objects:v14 count:16];
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