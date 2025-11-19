@interface EKICSPreviewController
- (BOOL)_calendarSupportsImport:(id)a3;
- (BOOL)_shouldShowCalendarChooser;
- (BOOL)eventViewControllerShouldDismissSelf:(id)a3;
- (EKICSPreviewController)initWithData:(id)a3 eventStore:(id)a4 options:(unint64_t)a5;
- (EKICSPreviewController)initWithEventObjectID:(id)a3 eventStore:(id)a4;
- (EKICSPreviewController)initWithEventUID:(int)a3 eventStore:(id)a4;
- (EKICSPreviewController)initWithURL:(id)a3 eventStore:(id)a4 options:(unint64_t)a5;
- (EKICSPreviewControllerDelegate)previewDelegate;
- (id)_defaultCalendarForImport;
- (id)detailViewForEvent:(id)a3 eventInRealStore:(BOOL)a4 showUpdate:(BOOL)a5 showDelete:(BOOL)a6;
- (id)singleExistingEventUniqueID;
- (id)viewController;
- (unint64_t)_countOfCalendarsSupportingImport;
- (void)_createCancelButtonWithType:(int64_t)a3 target:(id)a4 action:(SEL)a5;
- (void)_enumerateSupportedCalendarsUsingBlock:(id)a3;
- (void)_updateCancelButton;
- (void)addEventsToCalendar;
- (void)attemptDisplayReviewPrompt;
- (void)calendarChooserDidCancel:(id)a3;
- (void)calendarChooserDidFinish:(id)a3;
- (void)dealloc;
- (void)eventViewController:(id)a3 didCompleteWithAction:(int64_t)a4;
- (void)eventViewControllerDidRequestAddToCalendar:(id)a3;
- (void)handleDidImportEvent:(id)a3 fromController:(id)a4 intoCalendar:(id)a5;
- (void)handleImportEventError;
- (void)icsPreviewListController:(id)a3 didSelectEvent:(id)a4;
- (void)importAllIntoCalendar:(id)a3;
- (void)importAllRequested:(id)a3;
- (void)importEventFromController:(id)a3 intoCalendar:(id)a4;
- (void)presentCalendarChooserForController:(id)a3;
- (void)setCancelButtonWithTarget:(id)a3 action:(SEL)a4;
@end

@implementation EKICSPreviewController

- (EKICSPreviewController)initWithURL:(id)a3 eventStore:(id)a4 options:(unint64_t)a5
{
  v8 = a4;
  if (a3)
  {
    v9 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:a3];
    if (v9)
    {
      self = [(EKICSPreviewController *)self initWithData:v9 eventStore:v8 options:a5];
      v10 = self;
    }

    else
    {
      NSLog(&cfstr_UnableToGetIcs.isa);
      v10 = 0;
    }
  }

  else
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"Can't pass nil URL"];
    v10 = 0;
  }

  return v10;
}

- (EKICSPreviewController)initWithData:(id)a3 eventStore:(id)a4 options:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  v18.receiver = self;
  v18.super_class = EKICSPreviewController;
  v10 = [(EKICSPreviewController *)&v18 init];
  v11 = v10;
  if (!v10)
  {
LABEL_11:
    v15 = v11;
    goto LABEL_12;
  }

  if (v8)
  {
    objc_storeStrong(&v10->_eventStore, a4);
    v12 = [[EKICSPreviewModel alloc] initWithICSData:v8 eventStore:v11->_eventStore options:a5];
    model = v11->_model;
    v11->_model = v12;

    if ([(EKICSPreviewModel *)v11->_model totalEventCount])
    {
      if (v11->_eventStore)
      {
        *&v11->_allowsEditing = 257;
        v14 = [(EKICSPreviewModel *)v11->_model actionsState];
      }

      else
      {
        v14 = 1;
      }

      v11->_actionsState = v14;
      v16 = [MEMORY[0x1E696AD88] defaultCenter];
      [v16 addObserver:v11 selector:sel__databaseChanged_ name:*MEMORY[0x1E6966928] object:v11->_eventStore];

      goto LABEL_11;
    }

    NSLog(&cfstr_ImportOfIcsFil.isa);
  }

  else
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"Can't pass nil data"];
  }

  v15 = 0;
LABEL_12:

  return v15;
}

- (EKICSPreviewController)initWithEventObjectID:(id)a3 eventStore:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v18.receiver = self;
  v18.super_class = EKICSPreviewController;
  v8 = [(EKICSPreviewController *)&v18 init];
  v9 = v8;
  if (!v8)
  {
    goto LABEL_4;
  }

  objc_storeStrong(&v8->_eventStore, a4);
  v10 = [MEMORY[0x1E695DFE8] calendarTimeZone];
  [(EKEventStore *)v9->_eventStore setTimeZone:v10];

  v11 = [(EKEventStore *)v9->_eventStore eventForObjectID:v6 occurrenceDate:0];
  if (v11)
  {
    eventFromUID = v9->_eventFromUID;
    v9->_eventFromUID = v11;
    v13 = v11;

    v14 = [MEMORY[0x1E696AD88] defaultCenter];
    [v14 addObserver:v9 selector:sel__databaseChanged_ name:*MEMORY[0x1E6966928] object:v9->_eventStore];

LABEL_4:
    v15 = v9;
    goto LABEL_8;
  }

  v16 = kEKUILogHandle;
  if (os_log_type_enabled(kEKUILogHandle, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v20 = v6;
    _os_log_impl(&dword_1D3400000, v16, OS_LOG_TYPE_ERROR, "EKICSPreviewController cannot be initialized with no event; Could not find event with object id: %@", buf, 0xCu);
  }

  v15 = 0;
LABEL_8:

  return v15;
}

- (EKICSPreviewController)initWithEventUID:(int)a3 eventStore:(id)a4
{
  v4 = *&a3;
  v6 = MEMORY[0x1E6966A68];
  v7 = *MEMORY[0x1E6992E18];
  v8 = a4;
  v9 = [v6 objectIDWithEntityType:2 rowID:v4 databaseID:v7];
  v10 = [(EKICSPreviewController *)self initWithEventObjectID:v9 eventStore:v8];

  return v10;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x1E6966928] object:self->_eventStore];

  v4.receiver = self;
  v4.super_class = EKICSPreviewController;
  [(EKICSPreviewController *)&v4 dealloc];
}

- (id)singleExistingEventUniqueID
{
  if ([(EKICSPreviewModel *)self->_model totalEventCount]== 1 && [(EKICSPreviewModel *)self->_model importedEventCount]== 1)
  {
    v3 = [(EKICSPreviewModel *)self->_model importedEvents];
    v4 = [v3 firstObject];

    v5 = [(EKICSPreviewModel *)self->_model eventStore];
    v6 = [v4 uniqueId];
    v7 = [v5 eventWithUniqueId:v6];

    if (v7 && (v8 = [v7 sequenceNumber], v8 >= objc_msgSend(v4, "sequenceNumber")))
    {
      v9 = [v7 uniqueID];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)addEventsToCalendar
{
  if (![(EKICSPreviewController *)self allowsImport])
  {
    v4 = kEKUILogHandle;
    if (!os_log_type_enabled(kEKUILogHandle, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    *buf = 0;
    v5 = "Add to Calendar requested, but self.allowsImport isn't true";
    v6 = buf;
    goto LABEL_8;
  }

  if (self->_eventFromUID || ([(EKICSPreviewController *)self singleExistingEventUniqueID], v3 = objc_claimAutoreleasedReturnValue(), v3, v3))
  {
    v4 = kEKUILogHandle;
    if (!os_log_type_enabled(kEKUILogHandle, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    v9 = 0;
    v5 = "Add to Calendar requested, but event already exists in the store";
    v6 = &v9;
LABEL_8:
    _os_log_impl(&dword_1D3400000, v4, OS_LOG_TYPE_ERROR, v5, v6, 2u);
    return;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    contentViewController = self->_contentViewController;

    [(UIViewController *)contentViewController performAddToCalendar];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = self->_contentViewController;

      [(EKICSPreviewController *)self importAllRequested:v8];
    }
  }
}

- (id)detailViewForEvent:(id)a3 eventInRealStore:(BOOL)a4 showUpdate:(BOOL)a5 showDelete:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v8 = a4;
  v10 = a3;
  v11 = [[EKEventViewController alloc] initWithRemoteUI:0];
  [(EKEventViewController *)v11 setICSPreview:!v8];
  [(EKEventViewController *)v11 setEvent:v10];

  v12 = 0;
  if (self->_allowsImport)
  {
    v12 = 0;
    if (!self->_actionsState && !v8)
    {
      v12 = [(EKICSPreviewController *)self _anyCalendarsSupportingImport];
    }
  }

  [(EKEventViewController *)v11 setShowsAddToCalendarForICSPreview:v12 && !v7];
  [(EKEventViewController *)v11 setShowsUpdateCalendarForICSPreview:v12 & v7];
  [(EKEventViewController *)v11 setShowsDeleteForICSPreview:v12 & v6];
  actionsState = self->_actionsState;
  switch(actionsState)
  {
    case 4uLL:
      [(EKEventViewController *)v11 setShowsDelegateMessage:1];
      break;
    case 3uLL:
      [(EKEventViewController *)v11 setShowsDelegatorMessage:1];
      break;
    case 2uLL:
      [(EKEventViewController *)v11 setShowsOutOfDateMessage:1];
      break;
  }

  [(EKEventViewController *)v11 setAllowsEditing:0];
  [(EKEventViewController *)v11 setAllowsInviteResponses:1];
  [(EKEventViewController *)v11 setAllowsSubitems:self->_allowsSubitems];
  [(EKEventViewController *)v11 setDelegate:self];
  [(EKEventViewController *)v11 setModalInPresentation:0];
  [(EKEventViewController *)v11 setShowsDoneButton:0];
  v14 = [(EKEventViewController *)v11 view];
  [v14 frame];
  v16 = v15;
  v18 = v17;
  v20 = v19;

  v21 = EKUIContainedControllerIdealWidth();
  v22 = [(EKEventViewController *)v11 view];
  [v22 setFrame:{v16, v18, v21, v20}];

  [(EKEventViewController *)v11 preferredContentSize];
  [(EKEventViewController *)v11 setPreferredContentSize:?];

  return v11;
}

- (id)viewController
{
  if (!self->_contentViewController)
  {
    if (self->_eventFromUID)
    {
      v3 = [[EKEventViewController alloc] initWithRemoteUI:0];
      [(EKEventViewController *)v3 setICSPreview:1];
      [(EKEventViewController *)v3 setEvent:self->_eventFromUID];
      [(EKEventViewController *)v3 setAllowsCalendarPreview:1];
      [(EKEventViewController *)v3 setAllowsEditing:1];
      [(EKEventViewController *)v3 setShowsDeleteForICSPreview:1];
      [(EKEventViewController *)v3 setDelegate:self];
      contentViewController = self->_contentViewController;
      self->_contentViewController = &v3->super;
    }

    else if ([(EKICSPreviewModel *)self->_model totalEventCount]== 1 && !self->_showListViewForOneEvent)
    {
      v19 = [(EKICSPreviewModel *)self->_model importedEvents];
      v20 = [v19 count];

      v21 = [(EKICSPreviewModel *)self->_model allEvents];
      contentViewController = [v21 firstObject];

      if ([contentViewController isPhantom])
      {
        v22 = [contentViewController detachedItems];
        v23 = [v22 count];

        if (v23)
        {
          v24 = [contentViewController detachedItems];
          v25 = [v24 anyObject];

          contentViewController = v25;
        }
      }

      if (contentViewController)
      {
        v26 = [(EKICSPreviewController *)self detailViewForEvent:contentViewController eventInRealStore:v20 == 1 showUpdate:[(EKICSPreviewModel *)self->_model shouldAllowUpdateEvent:contentViewController] showDelete:[(EKICSPreviewModel *)self->_model shouldAllowDeleteEvent:contentViewController]];
        v27 = self->_contentViewController;
        self->_contentViewController = v26;
      }
    }

    else
    {
      v5 = [[EKICSPreviewListController alloc] initWithModel:self->_model];
      [(EKICSPreviewListController *)v5 setListDelegate:self];
      [(EKICSPreviewListController *)v5 setAllowsImport:self->_allowsImport];
      [(EKICSPreviewListController *)v5 setAllowsSubitems:self->_allowsSubitems];
      v6 = *MEMORY[0x1E69DDCF8];
      v7 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
      [v7 _scaledValueForValue:65.0];
      v9 = v8;
      v10 = [(EKICSPreviewListController *)v5 tableView];
      [v10 setEstimatedRowHeight:v9];

      v11 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:v6];
      [v11 _scaledValueForValue:28.0];
      v13 = v12;
      v14 = [(EKICSPreviewListController *)v5 tableView];
      [v14 setEstimatedSectionHeaderHeight:v13];

      v15 = self->_contentViewController;
      self->_contentViewController = &v5->super.super;
      v16 = v5;

      contentViewController = [(EKICSPreviewListController *)v16 tableView];
      [contentViewController sizeThatFits:{EKUIContainedControllerIdealWidth(), 1000.0}];
      [(UIViewController *)self->_contentViewController setPreferredContentSize:?];
    }
  }

  v17 = self->_contentViewController;

  return v17;
}

- (void)_createCancelButtonWithType:(int64_t)a3 target:(id)a4 action:(SEL)a5
{
  if (self->_hasCustomCancelButton)
  {
    self->_cancelButtonType = a3;
    v9 = MEMORY[0x1E69DC708];
    v10 = a4;
    v13 = [[v9 alloc] initWithBarButtonSystemItem:a3 target:v10 action:a5];

    v11 = [(EKICSPreviewController *)self viewController];
    v12 = [v11 navigationItem];
    [v12 setLeftBarButtonItem:v13];
  }
}

- (void)_updateCancelButton
{
  if (self->_hasCustomCancelButton)
  {
    v3 = [(EKICSPreviewModel *)self->_model unimportedEventCount]&& self->_allowsImport;
    if (v3 != self->_cancelButtonType)
    {
      v4 = [(EKICSPreviewController *)self viewController];
      v5 = [v4 navigationItem];
      v6 = [v5 leftBarButtonItem];
      v11 = [v6 target];

      v7 = [(EKICSPreviewController *)self viewController];
      v8 = [v7 navigationItem];
      v9 = [v8 leftBarButtonItem];
      v10 = [v9 action];

      [(EKICSPreviewController *)self _createCancelButtonWithType:v3 target:v11 action:v10];
    }
  }
}

- (void)setCancelButtonWithTarget:(id)a3 action:(SEL)a4
{
  self->_hasCustomCancelButton = 1;
  model = self->_model;
  v8 = a3;
  if ([(EKICSPreviewModel *)model unimportedEventCount])
  {
    allowsImport = self->_allowsImport;
  }

  else
  {
    allowsImport = 0;
  }

  [(EKICSPreviewController *)self _createCancelButtonWithType:allowsImport target:v8 action:a4];
}

- (void)icsPreviewListController:(id)a3 didSelectEvent:(id)a4
{
  model = self->_model;
  v7 = a4;
  v8 = a3;
  v9 = [(EKICSPreviewModel *)model importedEvents];
  v11 = -[EKICSPreviewController detailViewForEvent:eventInRealStore:showUpdate:showDelete:](self, "detailViewForEvent:eventInRealStore:showUpdate:showDelete:", v7, [v9 containsObject:v7], -[EKICSPreviewModel shouldAllowUpdateEvent:](self->_model, "shouldAllowUpdateEvent:", v7), -[EKICSPreviewModel shouldAllowDeleteEvent:](self->_model, "shouldAllowDeleteEvent:", v7));

  v10 = [v8 navigationController];

  [v10 pushViewController:v11 animated:1];
}

- (void)presentCalendarChooserForController:(id)a3
{
  v24 = a3;
  v4 = [[EKCalendarChooser alloc] initWithSelectionStyle:0 displayStyle:1 eventStore:self->_eventStore];
  v5 = v4;
  if (v4)
  {
    [(EKCalendarChooser *)v4 setChooserMode:1];
    [(EKCalendarChooser *)v5 setDelegate:self];
    [(EKCalendarChooser *)v5 setShowsDoneButton:1];
    [(EKCalendarChooser *)v5 setShowsCancelButton:1];
    v6 = EventKitUIBundle();
    v7 = [v6 localizedStringForKey:@"Choose Calendar" value:&stru_1F4EF6790 table:0];
    [(EKCalendarChooser *)v5 setTitle:v7];

    v8 = [(EKICSPreviewController *)self _defaultCalendarForImport];
    [(EKCalendarChooser *)v5 setSelectedCalendar:v8];

    [(EKCalendarChooser *)v5 setShowDetailAccessories:1];
    v9 = [(EKCalendarChooser *)v5 view];
    [v9 frame];
    v11 = v10;
    v13 = v12;
    v15 = v14;

    v16 = EKUIContainedControllerIdealWidth();
    v17 = [(EKCalendarChooser *)v5 view];
    [v17 setFrame:{v11, v13, v16, v15}];

    v18 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithRootViewController:v5];
    v19 = v18;
    if (v18)
    {
      [v18 setModalPresentationStyle:3];
      v20 = [v24 navigationController];
      v21 = [v20 navigationController];
      if (v20)
      {
        v22 = v20;
      }

      else
      {
        v22 = v24;
      }

      if (v21)
      {
        v22 = v21;
      }

      v23 = v22;
      [v23 presentModalViewController:v19 withTransition:8];
    }
  }
}

- (BOOL)_calendarSupportsImport:(id)a3
{
  v3 = a3;
  v4 = [v3 source];
  v5 = [v4 constraints];
  if ([v5 prohibitsICSImport])
  {
    v6 = 0;
  }

  else
  {
    v6 = [v3 allowsContentModifications];
  }

  return v6;
}

- (void)_enumerateSupportedCalendarsUsingBlock:(id)a3
{
  v4 = a3;
  v5 = [(EKEventStore *)self->_eventStore readWriteCalendarsForEntityType:0];
  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x2020000000;
  v10[3] = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __65__EKICSPreviewController__enumerateSupportedCalendarsUsingBlock___block_invoke;
  v7[3] = &unk_1E8442498;
  v7[4] = self;
  v6 = v4;
  v8 = v6;
  v9 = v10;
  [v5 enumerateObjectsUsingBlock:v7];

  _Block_object_dispose(v10, 8);
}

void __65__EKICSPreviewController__enumerateSupportedCalendarsUsingBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) _calendarSupportsImport:?])
  {
    (*(*(a1 + 40) + 16))();
    ++*(*(*(a1 + 48) + 8) + 24);
  }
}

- (unint64_t)_countOfCalendarsSupportingImport
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __59__EKICSPreviewController__countOfCalendarsSupportingImport__block_invoke;
  v4[3] = &unk_1E84424C0;
  v4[4] = &v5;
  [(EKICSPreviewController *)self _enumerateSupportedCalendarsUsingBlock:v4];
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (BOOL)_shouldShowCalendarChooser
{
  v2 = [(EKEventStore *)self->_eventStore readWriteCalendarsForEntityType:0];
  v3 = [v2 count] > 1;

  return v3;
}

- (id)_defaultCalendarForImport
{
  v3 = [(EKEventStore *)self->_eventStore defaultCalendarForNewEvents];
  if ([(EKICSPreviewController *)self _calendarSupportsImport:v3])
  {
    v4 = v3;
  }

  else
  {
    v7 = 0;
    v8 = &v7;
    v9 = 0x3032000000;
    v10 = __Block_byref_object_copy__20;
    v11 = __Block_byref_object_dispose__20;
    v12 = 0;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __51__EKICSPreviewController__defaultCalendarForImport__block_invoke;
    v6[3] = &unk_1E84424C0;
    v6[4] = &v7;
    [(EKICSPreviewController *)self _enumerateSupportedCalendarsUsingBlock:v6];
    v4 = v8[5];
    _Block_object_dispose(&v7, 8);
  }

  return v4;
}

- (void)importAllRequested:(id)a3
{
  v5 = a3;
  if ([(EKICSPreviewController *)self _shouldShowCalendarChooser])
  {
    [(EKICSPreviewController *)self presentCalendarChooserForController:v5];
  }

  else
  {
    v4 = [(EKEventStore *)self->_eventStore defaultCalendarForNewEvents];
    [(EKICSPreviewController *)self importAllIntoCalendar:v4];
  }
}

- (void)calendarChooserDidFinish:(id)a3
{
  currentImport = self->_currentImport;
  v5 = a3;
  v6 = [v5 selectedCalendar];
  if (currentImport)
  {
    [(EKICSPreviewController *)self importEventFromController:currentImport intoCalendar:v6];
  }

  else
  {
    [(EKICSPreviewController *)self importAllIntoCalendar:v6];
  }

  [v5 dismissViewControllerAnimated:0 completion:0];
  v7 = self->_currentImport;
  self->_currentImport = 0;
}

- (void)calendarChooserDidCancel:(id)a3
{
  [a3 dismissViewControllerAnimated:1 completion:0];
  currentImport = self->_currentImport;
  self->_currentImport = 0;
}

- (void)importAllIntoCalendar:(id)a3
{
  v4 = a3;
  if (!self->_importing)
  {
    self->_importing = 1;
    [(EKICSPreviewModel *)self->_model importAllIntoCalendar:v4];
    self->_importing = 0;
    WeakRetained = objc_loadWeakRetained(&self->_previewDelegate);
    if (WeakRetained)
    {
      v6 = WeakRetained;
      v7 = objc_loadWeakRetained(&self->_previewDelegate);
      v8 = objc_opt_respondsToSelector();

      if (v8)
      {
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __48__EKICSPreviewController_importAllIntoCalendar___block_invoke;
        block[3] = &unk_1E843EC60;
        block[4] = self;
        dispatch_async(MEMORY[0x1E69E96A0], block);
      }
    }
  }

  [(EKICSPreviewController *)self _updateCancelButton];
}

void __48__EKICSPreviewController_importAllIntoCalendar___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 64));
  [WeakRetained icsPreviewControllerImportDidImportEvents:*(a1 + 32)];
}

- (void)importEventFromController:(id)a3 intoCalendar:(id)a4
{
  v15 = a3;
  v6 = a4;
  if (!self->_importing)
  {
    self->_importing = 1;
    WeakRetained = objc_loadWeakRetained(&self->_previewDelegate);
    if (WeakRetained)
    {
      v8 = WeakRetained;
      v9 = objc_loadWeakRetained(&self->_previewDelegate);
      v10 = objc_opt_respondsToSelector();

      if (v10)
      {
        v11 = objc_loadWeakRetained(&self->_previewDelegate);
        [v11 icsPreviewControllerImportDidStart:self];
      }
    }

    model = self->_model;
    v13 = [v15 event];
    v14 = [(EKICSPreviewModel *)model importEvent:v13 intoCalendar:v6];

    if (v14)
    {
      [(EKICSPreviewController *)self handleDidImportEvent:v14 fromController:v15 intoCalendar:v6];
    }

    else
    {
      [(EKICSPreviewController *)self handleImportEventError];
    }

    self->_importing = 0;
  }

  [(EKICSPreviewController *)self _updateCancelButton];
}

- (void)handleDidImportEvent:(id)a3 fromController:(id)a4 intoCalendar:(id)a5
{
  v7 = a4;
  v8 = a3;
  [v7 setICSPreview:0];
  [v7 setEvent:v8];

  [v7 preferredContentSize];
  [v7 setPreferredContentSize:?];

  WeakRetained = objc_loadWeakRetained(&self->_previewDelegate);
  if (WeakRetained)
  {
    v10 = WeakRetained;
    v11 = objc_loadWeakRetained(&self->_previewDelegate);
    v12 = objc_opt_respondsToSelector();

    if (v12)
    {
      v13 = objc_loadWeakRetained(&self->_previewDelegate);
      [v13 icsPreviewControllerImportDidImportEvents:self];
    }
  }
}

- (void)handleImportEventError
{
  v3 = EventKitUIBundle();
  v14 = [v3 localizedStringForKey:@"Error Importing Event" value:&stru_1F4EF6790 table:0];

  v4 = EventKitUIBundle();
  v5 = [v4 localizedStringForKey:@"There was a problem adding this event to the calendar." value:&stru_1F4EF6790 table:0];

  v6 = EventKitUIBundle();
  v7 = [v6 localizedStringForKey:@"OK" value:&stru_1F4EF6790 table:0];

  v8 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v14 message:v5 preferredStyle:1];
  v9 = [MEMORY[0x1E69DC648] actionWithTitle:v7 style:1 handler:0];
  [v8 addAction:v9];

  v10 = [(EKICSPreviewController *)self viewController];
  [v10 presentViewController:v8 animated:1 completion:0];

  WeakRetained = objc_loadWeakRetained(&self->_previewDelegate);
  v12 = objc_opt_respondsToSelector();

  if (v12)
  {
    v13 = objc_loadWeakRetained(&self->_previewDelegate);
    [v13 icsPreviewControllerImportDidFail:self];
  }
}

- (void)eventViewControllerDidRequestAddToCalendar:(id)a3
{
  v5 = a3;
  model = self->_model;
  v15 = v5;
  v7 = [v5 event];
  v8 = [(EKICSPreviewModel *)model shouldAllowUpdateEvent:v7];

  if (![(EKICSPreviewController *)self _shouldShowCalendarChooser]|| v8)
  {
    v9 = [(EKEventStore *)self->_eventStore defaultCalendarForNewEvents];
    if (v8)
    {
      v10 = [(EKICSPreviewModel *)self->_model eventStore];
      v11 = [v15 event];
      v12 = [v11 uniqueId];
      v13 = [v10 eventWithUniqueId:v12];

      v14 = [v13 calendar];

      v9 = v14;
    }

    [(EKICSPreviewController *)self importEventFromController:v15 intoCalendar:v9];
  }

  else
  {
    objc_storeStrong(&self->_currentImport, a3);
    [(EKICSPreviewController *)self presentCalendarChooserForController:v15];
  }
}

- (BOOL)eventViewControllerShouldDismissSelf:(id)a3
{
  v3 = [(EKICSPreviewController *)self previewDelegate];
  v4 = objc_opt_respondsToSelector();

  return (v4 & 1) == 0;
}

- (void)eventViewController:(id)a3 didCompleteWithAction:(int64_t)a4
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = [(EKICSPreviewController *)self previewDelegate:a3];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v10 = [(EKICSPreviewController *)self previewDelegate];
    [v10 icsPreviewControllerWantsDismissal:self];
  }

  else
  {
    v7 = kEKUILogHandle;
    if (os_log_type_enabled(kEKUILogHandle, OS_LOG_TYPE_ERROR))
    {
      v8 = v7;
      v9 = [(EKICSPreviewController *)self previewDelegate];
      *buf = 136315394;
      v12 = "[EKICSPreviewController eventViewController:didCompleteWithAction:]";
      v13 = 2112;
      v14 = v9;
      _os_log_impl(&dword_1D3400000, v8, OS_LOG_TYPE_ERROR, "%s called on EKICSPreviewController but the preview delegate [%@] doesn't implement [EKICSPreviewControllerDelegate icsPreviewControllerWantsDismissal]", buf, 0x16u);
    }
  }
}

- (void)attemptDisplayReviewPrompt
{
  WeakRetained = objc_loadWeakRetained(&self->_previewDelegate);
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = objc_loadWeakRetained(&self->_previewDelegate);
    [v5 attemptDisplayReviewPrompt];
  }
}

- (EKICSPreviewControllerDelegate)previewDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_previewDelegate);

  return WeakRetained;
}

@end