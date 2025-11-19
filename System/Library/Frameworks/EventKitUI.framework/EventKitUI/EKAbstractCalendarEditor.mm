@interface EKAbstractCalendarEditor
- (BOOL)isModalInPresentation;
- (BOOL)tableView:(id)a3 shouldHighlightRowAtIndexPath:(id)a4;
- (CGSize)calculatePreferredContentSize;
- (CGSize)preferredContentSize;
- (EKAbstractCalendarEditor)initWithCalendar:(id)a3 eventStore:(id)a4 entityType:(unint64_t)a5 limitedToSource:(id)a6 enableDoneInitially:(BOOL)a7;
- (EKCalendarEditorDelegate)delegate;
- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4;
- (id)editItems;
- (id)leftButton;
- (id)rightButton;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForFooterInSection:(int64_t)a4;
- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4;
- (int)sectionForCalendarEditItem:(id)a3;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_eventStoreChanged:(id)a3;
- (void)_localeChanged;
- (void)cancel:(id)a3;
- (void)done:(id)a3;
- (void)loadView;
- (void)reconfigureAndReloadEditItems;
- (void)resetBackgroundColor;
- (void)saveCalendar;
- (void)scrollViewWillBeginDragging:(id)a3;
- (void)setEventStore:(id)a3;
- (void)setupForCalendar;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 willDisplayHeaderView:(id)a4 forSection:(int64_t)a5;
- (void)updatePreferredContentSize;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation EKAbstractCalendarEditor

- (EKAbstractCalendarEditor)initWithCalendar:(id)a3 eventStore:(id)a4 entityType:(unint64_t)a5 limitedToSource:(id)a6 enableDoneInitially:(BOOL)a7
{
  v25[1] = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v24.receiver = self;
  v24.super_class = EKAbstractCalendarEditor;
  v15 = [(EKAbstractCalendarEditor *)&v24 initWithStyle:2];
  v15->_enableDoneInitially = a7;
  v15->_isNewCalendar = 0;
  v15->_shouldShowCancelButton = 1;
  [(EKAbstractCalendarEditor *)v15 setModalInPresentation:1];
  [(EKAbstractCalendarEditor *)v15 setHidesBottomBarWhenPushed:1];
  objc_storeStrong(&v15->_eventStore, a4);
  if (v12)
  {
    [(EKAbstractCalendarEditor *)v15 setCalendar:v12];
    v15->_isNewCalendar = 0;
  }

  else
  {
    v15->_isNewCalendar = 1;
    v16 = [objc_opt_class() createNewCalendarForEntityType:a5 inEventStore:v13];
    [(EKAbstractCalendarEditor *)v15 setCalendar:v16];
  }

  v17 = [MEMORY[0x1E696AD88] defaultCenter];
  [v17 addObserver:v15 selector:sel__contentSizeCategoryChanged_ name:*MEMORY[0x1E69DDC48] object:0];

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

- (void)setEventStore:(id)a3
{
  v5 = a3;
  v6 = v5;
  eventStore = self->_eventStore;
  if (eventStore != v5)
  {
    v11 = v5;
    if (eventStore && [(EKAbstractCalendarEditor *)self isViewLoaded])
    {
      v8 = [MEMORY[0x1E696AD88] defaultCenter];
      [v8 removeObserver:self name:*MEMORY[0x1E6966928] object:self->_eventStore];
    }

    objc_storeStrong(&self->_eventStore, a3);
    v9 = [(EKAbstractCalendarEditor *)self isViewLoaded];
    v6 = v11;
    if (v9)
    {
      if (self->_eventStore)
      {
        v10 = [MEMORY[0x1E696AD88] defaultCenter];
        [v10 addObserver:self selector:sel__eventStoreChanged_ name:*MEMORY[0x1E6966928] object:self->_eventStore];
      }

      [(EKAbstractCalendarEditor *)self _eventStoreChanged:0];
      v6 = v11;
    }
  }
}

- (void)_eventStoreChanged:(id)a3
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (![(EKAbstractCalendarEditor *)self isNewCalendar])
  {
    v5 = [v4 userInfo];
    v6 = [v5 objectForKey:*MEMORY[0x1E6966930]];

    if ([v6 count])
    {
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v7 = v6;
      v8 = [v7 countByEnumeratingWithState:&v26 objects:v31 count:16];
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
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v26 + 1) + 8 * i);
            v13 = [(EKAbstractCalendarEditor *)self calendar];
            v14 = [v13 objectID];
            LOBYTE(v12) = [v12 isEqual:v14];

            if (v12)
            {

              goto LABEL_13;
            }
          }

          v9 = [v7 countByEnumeratingWithState:&v26 objects:v31 count:16];
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
      v15 = [(EKAbstractCalendarEditor *)self calendar];
      v16 = [v15 eventStore];

      if (v16)
      {
        v24 = 0u;
        v25 = 0u;
        v22 = 0u;
        v23 = 0u;
        v17 = [(EKAbstractCalendarEditor *)self editItems];
        v18 = [v17 countByEnumeratingWithState:&v22 objects:v30 count:16];
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
                objc_enumerationMutation(v17);
              }

              [*(*(&v22 + 1) + 8 * j) reset];
            }

            v19 = [v17 countByEnumeratingWithState:&v22 objects:v30 count:16];
          }

          while (v19);
        }

        v7 = [(EKAbstractCalendarEditor *)self tableView];
        [v7 reloadData];
      }

      else
      {
        v7 = [(EKAbstractCalendarEditor *)self delegate];
        [v7 calendarEditor:self didCompleteWithAction:2];
      }
    }
  }
}

- (void)_localeChanged
{
  v2 = [(EKAbstractCalendarEditor *)self tableView];
  [v2 reloadData];
}

- (void)loadView
{
  v5.receiver = self;
  v5.super_class = EKAbstractCalendarEditor;
  [(EKAbstractCalendarEditor *)&v5 loadView];
  v3 = [(EKAbstractCalendarEditor *)self tableView];
  [v3 setEstimatedRowHeight:*MEMORY[0x1E69DE3D0]];
  [v3 setEstimatedSectionFooterHeight:0.0];
  [v3 setEstimatedSectionHeaderHeight:0.0];
  [(EKAbstractCalendarEditor *)self resetBackgroundColor];
  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  [v4 addObserver:self selector:sel__localeChanged name:*MEMORY[0x1E6993308] object:0];
}

- (void)resetBackgroundColor
{
  v3 = [(UIViewController *)self isPresentedInsidePopover];
  v5 = [(EKAbstractCalendarEditor *)self tableView];
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
  v17.receiver = self;
  v17.super_class = EKAbstractCalendarEditor;
  [(EKAbstractCalendarEditor *)&v17 viewDidLoad];
  if (self->_eventStore)
  {
    v3 = [MEMORY[0x1E696AD88] defaultCenter];
    [v3 addObserver:self selector:sel__eventStoreChanged_ name:*MEMORY[0x1E6966928] object:self->_eventStore];
  }

  v4 = [(EKAbstractCalendarEditor *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(EKAbstractCalendarEditor *)self delegate];
    self->_shouldShowCancelButton = [v6 calendarEditorShouldShowCancelButton:self];
  }

  if ([(EKAbstractCalendarEditor *)self shouldShowCancelButton])
  {
    v7 = [(EKAbstractCalendarEditor *)self leftButton];
    v8 = [(EKAbstractCalendarEditor *)self navigationItem];
    [v8 setLeftBarButtonItem:v7];

    enableDoneInitially = self->_enableDoneInitially;
    v10 = [(EKAbstractCalendarEditor *)self navigationItem];
    v11 = [v10 leftBarButtonItem];
    [v11 setEnabled:!enableDoneInitially];
  }

  v12 = [(EKAbstractCalendarEditor *)self rightButton];
  v13 = [(EKAbstractCalendarEditor *)self navigationItem];
  [v13 setRightBarButtonItem:v12];

  v14 = self->_enableDoneInitially;
  v15 = [(EKAbstractCalendarEditor *)self navigationItem];
  v16 = [v15 rightBarButtonItem];
  [v16 setEnabled:v14];

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

- (void)viewWillAppear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = EKAbstractCalendarEditor;
  [(EKAbstractCalendarEditor *)&v6 viewWillAppear:a3];
  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  [v4 addObserver:self selector:sel_contentSizeCategoryDidChangeNotification_ name:*MEMORY[0x1E69DDC48] object:0];

  v5 = [(EKAbstractCalendarEditor *)self tableView];
  [v5 reloadData];

  [(EKAbstractCalendarEditor *)self updatePreferredContentSize];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  v5 = [MEMORY[0x1E696AD88] defaultCenter];
  [v5 removeObserver:self];

  v6.receiver = self;
  v6.super_class = EKAbstractCalendarEditor;
  [(EKAbstractCalendarEditor *)&v6 viewWillDisappear:v3];
}

- (void)setupForCalendar
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [(EKAbstractCalendarEditor *)self editItems];
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v11 + 1) + 8 * v7);
        v9 = [(EKAbstractCalendarEditor *)self calendar];
        [v8 setCalendar:v9 store:self->_eventStore];

        [v8 setDelegate:self];
        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  v10 = [(EKAbstractCalendarEditor *)self tableView];
  [v10 reloadData];
}

- (void)reconfigureAndReloadEditItems
{
  v17 = *MEMORY[0x1E69E9840];
  if (self->_editItems)
  {
    v3 = [(EKAbstractCalendarEditor *)self reconfiguredEditItems];
    v4 = [v3 mutableCopy];
    editItems = self->_editItems;
    self->_editItems = v4;

    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v6 = [(EKAbstractCalendarEditor *)self editItems];
    v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
            objc_enumerationMutation(v6);
          }

          [*(*(&v12 + 1) + 8 * v10++) reloadData];
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v8);
    }

    v11 = [(EKAbstractCalendarEditor *)self tableView];
    [v11 reloadData];

    [(EKAbstractCalendarEditor *)self updatePreferredContentSize];
  }
}

- (void)cancel:(id)a3
{
  v4 = [(EKAbstractCalendarEditor *)self calendar];
  v5 = [v4 hasChanges];

  if (v5)
  {
    v6 = [(EKAbstractCalendarEditor *)self calendar];
    [v6 rollback];
  }

  v7 = [(EKAbstractCalendarEditor *)self delegate];
  if (v7)
  {
    v8 = v7;
    v9 = [(EKAbstractCalendarEditor *)self delegate];
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      v11 = [(EKAbstractCalendarEditor *)self delegate];
      [v11 calendarEditor:self didCompleteWithAction:0];
    }
  }
}

- (void)done:(id)a3
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
  v5 = [(EKAbstractCalendarEditor *)self editItems];
  v6 = [v5 countByEnumeratingWithState:&v23 objects:v27 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v23 + 1) + 8 * i);
        v11 = [(EKAbstractCalendarEditor *)self calendar];
        [v10 saveStateToCalendar:v11];
      }

      v7 = [v5 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v7);
  }

  v12 = [(EKAbstractCalendarEditor *)self calendar];
  v13 = [v12 hasChanges];

  if (v13)
  {
    [(EKAbstractCalendarEditor *)self saveCalendar];
    v14 = [(EKAbstractCalendarEditor *)self delegate];
    if (!v14)
    {
      return;
    }

    v15 = v14;
    v16 = [(EKAbstractCalendarEditor *)self delegate];
    v17 = objc_opt_respondsToSelector();

    if ((v17 & 1) == 0)
    {
      return;
    }

LABEL_18:
    v22 = [(EKAbstractCalendarEditor *)self delegate];
    [v22 calendarEditor:self didCompleteWithAction:v4];

    return;
  }

  v18 = [(EKAbstractCalendarEditor *)self delegate];
  if (v18)
  {
    v19 = v18;
    v20 = [(EKAbstractCalendarEditor *)self delegate];
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
    v5 = [(EKAbstractCalendarEditor *)self calendar];
    *buf = 138412290;
    v18 = v5;
    _os_log_impl(&dword_1D3400000, v4, OS_LOG_TYPE_DEFAULT, "Saving Calendar: %@", buf, 0xCu);
  }

  v6 = [(EKAbstractCalendarEditor *)self calendar];
  [(EKAbstractCalendarEditor *)self willSaveCalendar:v6];

  v7 = [(UIResponder *)self EKUI_editor];
  v8 = [(EKAbstractCalendarEditor *)self calendar];
  v16 = 0;
  v9 = [v7 saveCalendar:v8 error:&v16];
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

  v12 = [(EKAbstractCalendarEditor *)self calendar];
  [(EKAbstractCalendarEditor *)self didSaveCalendar:v12];

  v13 = MEMORY[0x1E6966A28];
  v14 = [(EKAbstractCalendarEditor *)self calendar];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __40__EKAbstractCalendarEditor_saveCalendar__block_invoke;
  v15[3] = &unk_1E843EC10;
  v15[4] = self;
  [v13 isFamilyCalendar:v14 completion:v15];
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
    v4 = [(EKAbstractCalendarEditor *)self loadEditItems];
    v5 = [v4 mutableCopy];
    v6 = self->_editItems;
    self->_editItems = v5;

    [(EKAbstractCalendarEditor *)self setupForCalendar];
    editItems = self->_editItems;
  }

  return editItems;
}

- (BOOL)isModalInPresentation
{
  v2 = [(EKAbstractCalendarEditor *)self navigationItem];
  v3 = [v2 rightBarButtonItem];
  v4 = [v3 isEnabled];

  return v4;
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
    v6 = [(EKAbstractCalendarEditor *)self presentationController];
    [v6 preferredContentSizeDidChangeForChildContentContainer:self];

    v8 = [(EKAbstractCalendarEditor *)self navigationController];
    v7 = [v8 presentationController];
    [v7 preferredContentSizeDidChangeForChildContentContainer:self];
  }
}

- (CGSize)calculatePreferredContentSize
{
  v2 = [(EKAbstractCalendarEditor *)self tableView];
  [v2 sizeThatFits:{EKUIContainedControllerIdealWidth(), 1100.0}];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (int)sectionForCalendarEditItem:(id)a3
{
  v4 = a3;
  v5 = [(EKAbstractCalendarEditor *)self editItems];
  if ([v5 count])
  {
    v6 = 0;
    while (1)
    {
      v7 = [v5 objectAtIndex:v6];
      v8 = [v4 isEqual:v7];

      if (v8)
      {
        break;
      }

      if ([v5 count] <= ++v6)
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

- (int64_t)numberOfSectionsInTableView:(id)a3
{
  v3 = [(EKAbstractCalendarEditor *)self editItems];
  v4 = [v3 count];

  return v4;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v5 = [(EKAbstractCalendarEditor *)self editItems];
  v6 = [v5 objectAtIndex:a4];
  v7 = [v6 numberOfSubitems];

  return v7;
}

- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4
{
  v5 = [(EKAbstractCalendarEditor *)self editItems];
  v6 = [v5 objectAtIndex:a4];

  v7 = [v6 headerTitle];

  return v7;
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

- (id)tableView:(id)a3 titleForFooterInSection:(int64_t)a4
{
  v5 = [(EKAbstractCalendarEditor *)self editItems];
  v6 = [v5 objectAtIndex:a4];

  v7 = [v6 footerTitle];

  return v7;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(EKAbstractCalendarEditor *)self editItems];
  v7 = [v6 objectAtIndex:{objc_msgSend(v5, "section")}];

  v8 = [v5 row];
  v9 = [v7 cellForSubitemAtIndex:v8];

  return v9;
}

- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(EKAbstractCalendarEditor *)self editItems];
  v9 = [v8 objectAtIndex:{objc_msgSend(v6, "section")}];

  [v7 bounds];
  v11 = v10;
  [v7 _backgroundInset];
  v13 = v12;

  v14 = [v6 row];
  [v9 defaultCellHeightForSubitemAtIndex:v14 forWidth:v11 + v13 * -2.0];
  v16 = v15;
  if (v15 > 0.0)
  {
    [EKUILargeTextUtilities contentSizeCategoryScaledValueForDefaultValue:0 shouldScaleForSmallerSizes:v15];
    v16 = v17;
  }

  return v16;
}

- (BOOL)tableView:(id)a3 shouldHighlightRowAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(EKAbstractCalendarEditor *)self editItems];
  v7 = [v6 objectAtIndex:{objc_msgSend(v5, "section")}];

  v8 = [v5 row];
  LOBYTE(self) = [v7 calendarEditor:self shouldSelectSubitem:v8];

  return self;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = [v10 cellForRowAtIndexPath:v6];
  if ([v7 selectionStyle])
  {
    [v10 selectRowAtIndexPath:0 animated:1 scrollPosition:0];
    v8 = [(EKAbstractCalendarEditor *)self editItems];
    v9 = [v8 objectAtIndex:{objc_msgSend(v6, "section")}];

    [v9 calendarEditor:self didSelectSubitem:{objc_msgSend(v6, "row")}];
  }
}

- (void)scrollViewWillBeginDragging:(id)a3
{
  v4 = [(EKAbstractCalendarEditor *)self view];
  IsCompactInViewHierarchy = EKUICurrentWidthSizeClassIsCompactInViewHierarchy(v4);

  if (IsCompactInViewHierarchy)
  {
    v6 = [(EKAbstractCalendarEditor *)self firstResponder];
    [v6 resignFirstResponder];
  }
}

- (EKCalendarEditorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end