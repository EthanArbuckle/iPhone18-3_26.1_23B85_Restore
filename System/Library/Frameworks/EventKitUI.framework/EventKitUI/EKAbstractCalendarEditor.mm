@interface EKAbstractCalendarEditor
- (BOOL)isModalInPresentation;
- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path;
- (CGSize)calculatePreferredContentSize;
- (CGSize)preferredContentSize;
- (EKAbstractCalendarEditor)initWithCalendar:(id)calendar eventStore:(id)store entityType:(unint64_t)type limitedToSource:(id)source enableDoneInitially:(BOOL)initially;
- (EKCalendarEditorDelegate)delegate;
- (double)tableView:(id)view heightForRowAtIndexPath:(id)path;
- (id)editItems;
- (id)leftButton;
- (id)rightButton;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForFooterInSection:(int64_t)section;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (int)sectionForCalendarEditItem:(id)item;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_eventStoreChanged:(id)changed;
- (void)_localeChanged;
- (void)cancel:(id)cancel;
- (void)done:(id)done;
- (void)loadView;
- (void)reconfigureAndReloadEditItems;
- (void)resetBackgroundColor;
- (void)saveCalendar;
- (void)scrollViewWillBeginDragging:(id)dragging;
- (void)setEventStore:(id)store;
- (void)setupForCalendar;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view willDisplayHeaderView:(id)headerView forSection:(int64_t)section;
- (void)updatePreferredContentSize;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation EKAbstractCalendarEditor

- (EKAbstractCalendarEditor)initWithCalendar:(id)calendar eventStore:(id)store entityType:(unint64_t)type limitedToSource:(id)source enableDoneInitially:(BOOL)initially
{
  v25[1] = *MEMORY[0x1E69E9840];
  calendarCopy = calendar;
  storeCopy = store;
  sourceCopy = source;
  v24.receiver = self;
  v24.super_class = EKAbstractCalendarEditor;
  v15 = [(EKAbstractCalendarEditor *)&v24 initWithStyle:2];
  v15->_enableDoneInitially = initially;
  v15->_isNewCalendar = 0;
  v15->_shouldShowCancelButton = 1;
  [(EKAbstractCalendarEditor *)v15 setModalInPresentation:1];
  [(EKAbstractCalendarEditor *)v15 setHidesBottomBarWhenPushed:1];
  objc_storeStrong(&v15->_eventStore, store);
  if (calendarCopy)
  {
    [(EKAbstractCalendarEditor *)v15 setCalendar:calendarCopy];
    v15->_isNewCalendar = 0;
  }

  else
  {
    v15->_isNewCalendar = 1;
    v16 = [objc_opt_class() createNewCalendarForEntityType:type inEventStore:storeCopy];
    [(EKAbstractCalendarEditor *)v15 setCalendar:v16];
  }

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:v15 selector:sel__contentSizeCategoryChanged_ name:*MEMORY[0x1E69DDC48] object:0];

  objc_initWeak(&location, v15);
  v25[0] = objc_opt_class();
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:1];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __103__EKAbstractCalendarEditor_initWithCalendar_eventStore_entityType_limitedToSource_enableDoneInitially___block_invoke;
  v21[3] = &unk_1E843EBE8;
  objc_copyWeak(&v22, &location);
  v19 = [(EKAbstractCalendarEditor *)v15 registerForTraitChanges:v18 withHandler:v21];

  objc_destroyWeak(&v22);
  objc_destroyWeak(&location);

  return v15;
}

void __103__EKAbstractCalendarEditor_initWithCalendar_eventStore_entityType_limitedToSource_enableDoneInitially___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained resetBackgroundColor];
}

- (void)setEventStore:(id)store
{
  storeCopy = store;
  v6 = storeCopy;
  eventStore = self->_eventStore;
  if (eventStore != storeCopy)
  {
    v11 = storeCopy;
    if (eventStore && [(EKAbstractCalendarEditor *)self isViewLoaded])
    {
      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter removeObserver:self name:*MEMORY[0x1E6966928] object:self->_eventStore];
    }

    objc_storeStrong(&self->_eventStore, store);
    isViewLoaded = [(EKAbstractCalendarEditor *)self isViewLoaded];
    v6 = v11;
    if (isViewLoaded)
    {
      if (self->_eventStore)
      {
        defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
        [defaultCenter2 addObserver:self selector:sel__eventStoreChanged_ name:*MEMORY[0x1E6966928] object:self->_eventStore];
      }

      [(EKAbstractCalendarEditor *)self _eventStoreChanged:0];
      v6 = v11;
    }
  }
}

- (void)_eventStoreChanged:(id)changed
{
  v32 = *MEMORY[0x1E69E9840];
  changedCopy = changed;
  if (![(EKAbstractCalendarEditor *)self isNewCalendar])
  {
    userInfo = [changedCopy userInfo];
    v6 = [userInfo objectForKey:*MEMORY[0x1E6966930]];

    if ([v6 count])
    {
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      tableView = v6;
      v8 = [tableView countByEnumeratingWithState:&v26 objects:v31 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v27;
        while (2)
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v27 != v10)
            {
              objc_enumerationMutation(tableView);
            }

            v12 = *(*(&v26 + 1) + 8 * i);
            calendar = [(EKAbstractCalendarEditor *)self calendar];
            objectID = [calendar objectID];
            LOBYTE(v12) = [v12 isEqual:objectID];

            if (v12)
            {

              goto LABEL_13;
            }
          }

          v9 = [tableView countByEnumeratingWithState:&v26 objects:v31 count:16];
          if (v9)
          {
            continue;
          }

          break;
        }
      }
    }

    else
    {
LABEL_13:
      calendar2 = [(EKAbstractCalendarEditor *)self calendar];
      eventStore = [calendar2 eventStore];

      if (eventStore)
      {
        v24 = 0u;
        v25 = 0u;
        v22 = 0u;
        v23 = 0u;
        editItems = [(EKAbstractCalendarEditor *)self editItems];
        v18 = [editItems countByEnumeratingWithState:&v22 objects:v30 count:16];
        if (v18)
        {
          v19 = v18;
          v20 = *v23;
          do
          {
            for (j = 0; j != v19; ++j)
            {
              if (*v23 != v20)
              {
                objc_enumerationMutation(editItems);
              }

              [*(*(&v22 + 1) + 8 * j) reset];
            }

            v19 = [editItems countByEnumeratingWithState:&v22 objects:v30 count:16];
          }

          while (v19);
        }

        tableView = [(EKAbstractCalendarEditor *)self tableView];
        [tableView reloadData];
      }

      else
      {
        tableView = [(EKAbstractCalendarEditor *)self delegate];
        [tableView calendarEditor:self didCompleteWithAction:2];
      }
    }
  }
}

- (void)_localeChanged
{
  tableView = [(EKAbstractCalendarEditor *)self tableView];
  [tableView reloadData];
}

- (void)loadView
{
  v5.receiver = self;
  v5.super_class = EKAbstractCalendarEditor;
  [(EKAbstractCalendarEditor *)&v5 loadView];
  tableView = [(EKAbstractCalendarEditor *)self tableView];
  [tableView setEstimatedRowHeight:*MEMORY[0x1E69DE3D0]];
  [tableView setEstimatedSectionFooterHeight:0.0];
  [tableView setEstimatedSectionHeaderHeight:0.0];
  [(EKAbstractCalendarEditor *)self resetBackgroundColor];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel__localeChanged name:*MEMORY[0x1E6993308] object:0];
}

- (void)resetBackgroundColor
{
  isPresentedInsidePopover = [(UIViewController *)self isPresentedInsidePopover];
  tableView = [(EKAbstractCalendarEditor *)self tableView];
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
  v17.receiver = self;
  v17.super_class = EKAbstractCalendarEditor;
  [(EKAbstractCalendarEditor *)&v17 viewDidLoad];
  if (self->_eventStore)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:self selector:sel__eventStoreChanged_ name:*MEMORY[0x1E6966928] object:self->_eventStore];
  }

  delegate = [(EKAbstractCalendarEditor *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(EKAbstractCalendarEditor *)self delegate];
    self->_shouldShowCancelButton = [delegate2 calendarEditorShouldShowCancelButton:self];
  }

  if ([(EKAbstractCalendarEditor *)self shouldShowCancelButton])
  {
    leftButton = [(EKAbstractCalendarEditor *)self leftButton];
    navigationItem = [(EKAbstractCalendarEditor *)self navigationItem];
    [navigationItem setLeftBarButtonItem:leftButton];

    enableDoneInitially = self->_enableDoneInitially;
    navigationItem2 = [(EKAbstractCalendarEditor *)self navigationItem];
    leftBarButtonItem = [navigationItem2 leftBarButtonItem];
    [leftBarButtonItem setEnabled:!enableDoneInitially];
  }

  rightButton = [(EKAbstractCalendarEditor *)self rightButton];
  navigationItem3 = [(EKAbstractCalendarEditor *)self navigationItem];
  [navigationItem3 setRightBarButtonItem:rightButton];

  v14 = self->_enableDoneInitially;
  navigationItem4 = [(EKAbstractCalendarEditor *)self navigationItem];
  rightBarButtonItem = [navigationItem4 rightBarButtonItem];
  [rightBarButtonItem setEnabled:v14];

  [(EKAbstractCalendarEditor *)self setupForCalendar];
}

- (id)leftButton
{
  v2 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:self action:sel_cancel_];
  [v2 setAccessibilityIdentifier:@"cancel-button"];

  return v2;
}

- (id)rightButton
{
  v2 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:0 target:self action:sel_done_];
  [v2 setAccessibilityIdentifier:@"done-button"];

  return v2;
}

- (void)viewWillAppear:(BOOL)appear
{
  v6.receiver = self;
  v6.super_class = EKAbstractCalendarEditor;
  [(EKAbstractCalendarEditor *)&v6 viewWillAppear:appear];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel_contentSizeCategoryDidChangeNotification_ name:*MEMORY[0x1E69DDC48] object:0];

  tableView = [(EKAbstractCalendarEditor *)self tableView];
  [tableView reloadData];

  [(EKAbstractCalendarEditor *)self updatePreferredContentSize];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v6.receiver = self;
  v6.super_class = EKAbstractCalendarEditor;
  [(EKAbstractCalendarEditor *)&v6 viewWillDisappear:disappearCopy];
}

- (void)setupForCalendar
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  editItems = [(EKAbstractCalendarEditor *)self editItems];
  v4 = [editItems countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(editItems);
        }

        v8 = *(*(&v11 + 1) + 8 * v7);
        calendar = [(EKAbstractCalendarEditor *)self calendar];
        [v8 setCalendar:calendar store:self->_eventStore];

        [v8 setDelegate:self];
        ++v7;
      }

      while (v5 != v7);
      v5 = [editItems countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  tableView = [(EKAbstractCalendarEditor *)self tableView];
  [tableView reloadData];
}

- (void)reconfigureAndReloadEditItems
{
  v17 = *MEMORY[0x1E69E9840];
  if (self->_editItems)
  {
    reconfiguredEditItems = [(EKAbstractCalendarEditor *)self reconfiguredEditItems];
    v4 = [reconfiguredEditItems mutableCopy];
    editItems = self->_editItems;
    self->_editItems = v4;

    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    editItems = [(EKAbstractCalendarEditor *)self editItems];
    v7 = [editItems countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v13;
      do
      {
        v10 = 0;
        do
        {
          if (*v13 != v9)
          {
            objc_enumerationMutation(editItems);
          }

          [*(*(&v12 + 1) + 8 * v10++) reloadData];
        }

        while (v8 != v10);
        v8 = [editItems countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v8);
    }

    tableView = [(EKAbstractCalendarEditor *)self tableView];
    [tableView reloadData];

    [(EKAbstractCalendarEditor *)self updatePreferredContentSize];
  }
}

- (void)cancel:(id)cancel
{
  calendar = [(EKAbstractCalendarEditor *)self calendar];
  hasChanges = [calendar hasChanges];

  if (hasChanges)
  {
    calendar2 = [(EKAbstractCalendarEditor *)self calendar];
    [calendar2 rollback];
  }

  delegate = [(EKAbstractCalendarEditor *)self delegate];
  if (delegate)
  {
    v8 = delegate;
    delegate2 = [(EKAbstractCalendarEditor *)self delegate];
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      delegate3 = [(EKAbstractCalendarEditor *)self delegate];
      [delegate3 calendarEditor:self didCompleteWithAction:0];
    }
  }
}

- (void)done:(id)done
{
  v28 = *MEMORY[0x1E69E9840];
  v23 = 0u;
  v24 = 0u;
  if ([(EKAbstractCalendarEditor *)self isNewCalendar])
  {
    v4 = 3;
  }

  else
  {
    v4 = 1;
  }

  v25 = 0uLL;
  v26 = 0uLL;
  editItems = [(EKAbstractCalendarEditor *)self editItems];
  v6 = [editItems countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v24;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v24 != v8)
        {
          objc_enumerationMutation(editItems);
        }

        v10 = *(*(&v23 + 1) + 8 * i);
        calendar = [(EKAbstractCalendarEditor *)self calendar];
        [v10 saveStateToCalendar:calendar];
      }

      v7 = [editItems countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v7);
  }

  calendar2 = [(EKAbstractCalendarEditor *)self calendar];
  hasChanges = [calendar2 hasChanges];

  if (hasChanges)
  {
    [(EKAbstractCalendarEditor *)self saveCalendar];
    delegate = [(EKAbstractCalendarEditor *)self delegate];
    if (!delegate)
    {
      return;
    }

    v15 = delegate;
    delegate2 = [(EKAbstractCalendarEditor *)self delegate];
    v17 = objc_opt_respondsToSelector();

    if ((v17 & 1) == 0)
    {
      return;
    }

LABEL_18:
    delegate3 = [(EKAbstractCalendarEditor *)self delegate];
    [delegate3 calendarEditor:self didCompleteWithAction:v4];

    return;
  }

  delegate4 = [(EKAbstractCalendarEditor *)self delegate];
  if (delegate4)
  {
    v19 = delegate4;
    delegate5 = [(EKAbstractCalendarEditor *)self delegate];
    v21 = objc_opt_respondsToSelector();

    if (v21)
    {
      v4 = 0;
      goto LABEL_18;
    }
  }
}

- (void)saveCalendar
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = kEKUILogHandle;
  if (os_log_type_enabled(kEKUILogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    calendar = [(EKAbstractCalendarEditor *)self calendar];
    *buf = 138412290;
    v18 = calendar;
    _os_log_impl(&dword_1D3400000, v4, OS_LOG_TYPE_DEFAULT, "Saving Calendar: %@", buf, 0xCu);
  }

  calendar2 = [(EKAbstractCalendarEditor *)self calendar];
  [(EKAbstractCalendarEditor *)self willSaveCalendar:calendar2];

  eKUI_editor = [(UIResponder *)self EKUI_editor];
  calendar3 = [(EKAbstractCalendarEditor *)self calendar];
  v16 = 0;
  v9 = [eKUI_editor saveCalendar:calendar3 error:&v16];
  v10 = v16;

  if ((v9 & 1) == 0)
  {
    v11 = kEKUILogHandle;
    if (os_log_type_enabled(kEKUILogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v18 = v10;
      _os_log_impl(&dword_1D3400000, v11, OS_LOG_TYPE_ERROR, "Calendar unable to save: %@", buf, 0xCu);
    }

    [(EKAbstractCalendarEditor *)self performSelector:sel__presentValidationAlert_ withObject:v10 afterDelay:0.0];
  }

  calendar4 = [(EKAbstractCalendarEditor *)self calendar];
  [(EKAbstractCalendarEditor *)self didSaveCalendar:calendar4];

  v13 = MEMORY[0x1E6966A28];
  calendar5 = [(EKAbstractCalendarEditor *)self calendar];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __40__EKAbstractCalendarEditor_saveCalendar__block_invoke;
  v15[3] = &unk_1E843EC10;
  v15[4] = self;
  [v13 isFamilyCalendar:calendar5 completion:v15];
}

void __40__EKAbstractCalendarEditor_saveCalendar__block_invoke(uint64_t a1, int a2)
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
      _os_log_impl(&dword_1D3400000, v5, OS_LOG_TYPE_DEFAULT, "Sending out save family calendar darwin notification. %@", &v8, 0xCu);
    }

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, *MEMORY[0x1E6966938], 0, 0, 1u);
  }
}

- (id)editItems
{
  editItems = self->_editItems;
  if (!editItems)
  {
    loadEditItems = [(EKAbstractCalendarEditor *)self loadEditItems];
    v5 = [loadEditItems mutableCopy];
    v6 = self->_editItems;
    self->_editItems = v5;

    [(EKAbstractCalendarEditor *)self setupForCalendar];
    editItems = self->_editItems;
  }

  return editItems;
}

- (BOOL)isModalInPresentation
{
  navigationItem = [(EKAbstractCalendarEditor *)self navigationItem];
  rightBarButtonItem = [navigationItem rightBarButtonItem];
  isEnabled = [rightBarButtonItem isEnabled];

  return isEnabled;
}

- (CGSize)preferredContentSize
{
  p_preferredContentSize = &self->_preferredContentSize;
  width = self->_preferredContentSize.width;
  height = self->_preferredContentSize.height;
  if (width == *MEMORY[0x1E695F060] && height == *(MEMORY[0x1E695F060] + 8))
  {
    [(EKAbstractCalendarEditor *)self calculatePreferredContentSize];
    p_preferredContentSize->width = width;
    p_preferredContentSize->height = height;
  }

  result.height = height;
  result.width = width;
  return result;
}

- (void)updatePreferredContentSize
{
  [(EKAbstractCalendarEditor *)self calculatePreferredContentSize];
  if (v3 != self->_preferredContentSize.width || v4 != self->_preferredContentSize.height)
  {
    self->_preferredContentSize.width = v3;
    self->_preferredContentSize.height = v4;
    presentationController = [(EKAbstractCalendarEditor *)self presentationController];
    [presentationController preferredContentSizeDidChangeForChildContentContainer:self];

    navigationController = [(EKAbstractCalendarEditor *)self navigationController];
    presentationController2 = [navigationController presentationController];
    [presentationController2 preferredContentSizeDidChangeForChildContentContainer:self];
  }
}

- (CGSize)calculatePreferredContentSize
{
  tableView = [(EKAbstractCalendarEditor *)self tableView];
  [tableView sizeThatFits:{EKUIContainedControllerIdealWidth(), 1100.0}];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (int)sectionForCalendarEditItem:(id)item
{
  itemCopy = item;
  editItems = [(EKAbstractCalendarEditor *)self editItems];
  if ([editItems count])
  {
    v6 = 0;
    while (1)
    {
      v7 = [editItems objectAtIndex:v6];
      v8 = [itemCopy isEqual:v7];

      if (v8)
      {
        break;
      }

      if ([editItems count] <= ++v6)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    LODWORD(v6) = -1;
  }

  return v6;
}

- (int64_t)numberOfSectionsInTableView:(id)view
{
  editItems = [(EKAbstractCalendarEditor *)self editItems];
  v4 = [editItems count];

  return v4;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  editItems = [(EKAbstractCalendarEditor *)self editItems];
  v6 = [editItems objectAtIndex:section];
  numberOfSubitems = [v6 numberOfSubitems];

  return numberOfSubitems;
}

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  editItems = [(EKAbstractCalendarEditor *)self editItems];
  v6 = [editItems objectAtIndex:section];

  headerTitle = [v6 headerTitle];

  return headerTitle;
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

- (id)tableView:(id)view titleForFooterInSection:(int64_t)section
{
  editItems = [(EKAbstractCalendarEditor *)self editItems];
  v6 = [editItems objectAtIndex:section];

  footerTitle = [v6 footerTitle];

  return footerTitle;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  editItems = [(EKAbstractCalendarEditor *)self editItems];
  v7 = [editItems objectAtIndex:{objc_msgSend(pathCopy, "section")}];

  v8 = [pathCopy row];
  v9 = [v7 cellForSubitemAtIndex:v8];

  return v9;
}

- (double)tableView:(id)view heightForRowAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  editItems = [(EKAbstractCalendarEditor *)self editItems];
  v9 = [editItems objectAtIndex:{objc_msgSend(pathCopy, "section")}];

  [viewCopy bounds];
  v11 = v10;
  [viewCopy _backgroundInset];
  v13 = v12;

  v14 = [pathCopy row];
  [v9 defaultCellHeightForSubitemAtIndex:v14 forWidth:v11 + v13 * -2.0];
  v16 = v15;
  if (v15 > 0.0)
  {
    [EKUILargeTextUtilities contentSizeCategoryScaledValueForDefaultValue:0 shouldScaleForSmallerSizes:v15];
    v16 = v17;
  }

  return v16;
}

- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path
{
  pathCopy = path;
  editItems = [(EKAbstractCalendarEditor *)self editItems];
  v7 = [editItems objectAtIndex:{objc_msgSend(pathCopy, "section")}];

  v8 = [pathCopy row];
  LOBYTE(self) = [v7 calendarEditor:self shouldSelectSubitem:v8];

  return self;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v7 = [viewCopy cellForRowAtIndexPath:pathCopy];
  if ([v7 selectionStyle])
  {
    [viewCopy selectRowAtIndexPath:0 animated:1 scrollPosition:0];
    editItems = [(EKAbstractCalendarEditor *)self editItems];
    v9 = [editItems objectAtIndex:{objc_msgSend(pathCopy, "section")}];

    [v9 calendarEditor:self didSelectSubitem:{objc_msgSend(pathCopy, "row")}];
  }
}

- (void)scrollViewWillBeginDragging:(id)dragging
{
  view = [(EKAbstractCalendarEditor *)self view];
  IsCompactInViewHierarchy = EKUICurrentWidthSizeClassIsCompactInViewHierarchy(view);

  if (IsCompactInViewHierarchy)
  {
    firstResponder = [(EKAbstractCalendarEditor *)self firstResponder];
    [firstResponder resignFirstResponder];
  }
}

- (EKCalendarEditorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end