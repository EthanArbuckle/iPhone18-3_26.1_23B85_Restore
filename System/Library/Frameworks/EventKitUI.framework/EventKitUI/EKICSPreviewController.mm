@interface EKICSPreviewController
- (BOOL)_calendarSupportsImport:(id)import;
- (BOOL)_shouldShowCalendarChooser;
- (BOOL)eventViewControllerShouldDismissSelf:(id)self;
- (EKICSPreviewController)initWithData:(id)data eventStore:(id)store options:(unint64_t)options;
- (EKICSPreviewController)initWithEventObjectID:(id)d eventStore:(id)store;
- (EKICSPreviewController)initWithEventUID:(int)d eventStore:(id)store;
- (EKICSPreviewController)initWithURL:(id)l eventStore:(id)store options:(unint64_t)options;
- (EKICSPreviewControllerDelegate)previewDelegate;
- (id)_defaultCalendarForImport;
- (id)detailViewForEvent:(id)event eventInRealStore:(BOOL)store showUpdate:(BOOL)update showDelete:(BOOL)delete;
- (id)singleExistingEventUniqueID;
- (id)viewController;
- (unint64_t)_countOfCalendarsSupportingImport;
- (void)_createCancelButtonWithType:(int64_t)type target:(id)target action:(SEL)action;
- (void)_enumerateSupportedCalendarsUsingBlock:(id)block;
- (void)_updateCancelButton;
- (void)addEventsToCalendar;
- (void)attemptDisplayReviewPrompt;
- (void)calendarChooserDidCancel:(id)cancel;
- (void)calendarChooserDidFinish:(id)finish;
- (void)dealloc;
- (void)eventViewController:(id)controller didCompleteWithAction:(int64_t)action;
- (void)eventViewControllerDidRequestAddToCalendar:(id)calendar;
- (void)handleDidImportEvent:(id)event fromController:(id)controller intoCalendar:(id)calendar;
- (void)handleImportEventError;
- (void)icsPreviewListController:(id)controller didSelectEvent:(id)event;
- (void)importAllIntoCalendar:(id)calendar;
- (void)importAllRequested:(id)requested;
- (void)importEventFromController:(id)controller intoCalendar:(id)calendar;
- (void)presentCalendarChooserForController:(id)controller;
- (void)setCancelButtonWithTarget:(id)target action:(SEL)action;
@end

@implementation EKICSPreviewController

- (EKICSPreviewController)initWithURL:(id)l eventStore:(id)store options:(unint64_t)options
{
  storeCopy = store;
  if (l)
  {
    v9 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:l];
    if (v9)
    {
      self = [(EKICSPreviewController *)self initWithData:v9 eventStore:storeCopy options:options];
      selfCopy = self;
    }

    else
    {
      NSLog(&cfstr_UnableToGetIcs.isa);
      selfCopy = 0;
    }
  }

  else
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"Can't pass nil URL"];
    selfCopy = 0;
  }

  return selfCopy;
}

- (EKICSPreviewController)initWithData:(id)data eventStore:(id)store options:(unint64_t)options
{
  dataCopy = data;
  storeCopy = store;
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

  if (dataCopy)
  {
    objc_storeStrong(&v10->_eventStore, store);
    v12 = [[EKICSPreviewModel alloc] initWithICSData:dataCopy eventStore:v11->_eventStore options:options];
    model = v11->_model;
    v11->_model = v12;

    if ([(EKICSPreviewModel *)v11->_model totalEventCount])
    {
      if (v11->_eventStore)
      {
        *&v11->_allowsEditing = 257;
        actionsState = [(EKICSPreviewModel *)v11->_model actionsState];
      }

      else
      {
        actionsState = 1;
      }

      v11->_actionsState = actionsState;
      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter addObserver:v11 selector:sel__databaseChanged_ name:*MEMORY[0x1E6966928] object:v11->_eventStore];

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

- (EKICSPreviewController)initWithEventObjectID:(id)d eventStore:(id)store
{
  v21 = *MEMORY[0x1E69E9840];
  dCopy = d;
  storeCopy = store;
  v18.receiver = self;
  v18.super_class = EKICSPreviewController;
  v8 = [(EKICSPreviewController *)&v18 init];
  v9 = v8;
  if (!v8)
  {
    goto LABEL_4;
  }

  objc_storeStrong(&v8->_eventStore, store);
  calendarTimeZone = [MEMORY[0x1E695DFE8] calendarTimeZone];
  [(EKEventStore *)v9->_eventStore setTimeZone:calendarTimeZone];

  v11 = [(EKEventStore *)v9->_eventStore eventForObjectID:dCopy occurrenceDate:0];
  if (v11)
  {
    eventFromUID = v9->_eventFromUID;
    v9->_eventFromUID = v11;
    v13 = v11;

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v9 selector:sel__databaseChanged_ name:*MEMORY[0x1E6966928] object:v9->_eventStore];

LABEL_4:
    v15 = v9;
    goto LABEL_8;
  }

  v16 = kEKUILogHandle;
  if (os_log_type_enabled(kEKUILogHandle, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v20 = dCopy;
    _os_log_impl(&dword_1D3400000, v16, OS_LOG_TYPE_ERROR, "EKICSPreviewController cannot be initialized with no event; Could not find event with object id: %@", buf, 0xCu);
  }

  v15 = 0;
LABEL_8:

  return v15;
}

- (EKICSPreviewController)initWithEventUID:(int)d eventStore:(id)store
{
  v4 = *&d;
  v6 = MEMORY[0x1E6966A68];
  v7 = *MEMORY[0x1E6992E18];
  storeCopy = store;
  v9 = [v6 objectIDWithEntityType:2 rowID:v4 databaseID:v7];
  v10 = [(EKICSPreviewController *)self initWithEventObjectID:v9 eventStore:storeCopy];

  return v10;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E6966928] object:self->_eventStore];

  v4.receiver = self;
  v4.super_class = EKICSPreviewController;
  [(EKICSPreviewController *)&v4 dealloc];
}

- (id)singleExistingEventUniqueID
{
  if ([(EKICSPreviewModel *)self->_model totalEventCount]== 1 && [(EKICSPreviewModel *)self->_model importedEventCount]== 1)
  {
    importedEvents = [(EKICSPreviewModel *)self->_model importedEvents];
    firstObject = [importedEvents firstObject];

    eventStore = [(EKICSPreviewModel *)self->_model eventStore];
    uniqueId = [firstObject uniqueId];
    v7 = [eventStore eventWithUniqueId:uniqueId];

    if (v7 && (v8 = [v7 sequenceNumber], v8 >= objc_msgSend(firstObject, "sequenceNumber")))
    {
      uniqueID = [v7 uniqueID];
    }

    else
    {
      uniqueID = 0;
    }
  }

  else
  {
    uniqueID = 0;
  }

  return uniqueID;
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

- (id)detailViewForEvent:(id)event eventInRealStore:(BOOL)store showUpdate:(BOOL)update showDelete:(BOOL)delete
{
  deleteCopy = delete;
  updateCopy = update;
  storeCopy = store;
  eventCopy = event;
  v11 = [[EKEventViewController alloc] initWithRemoteUI:0];
  [(EKEventViewController *)v11 setICSPreview:!storeCopy];
  [(EKEventViewController *)v11 setEvent:eventCopy];

  _anyCalendarsSupportingImport = 0;
  if (self->_allowsImport)
  {
    _anyCalendarsSupportingImport = 0;
    if (!self->_actionsState && !storeCopy)
    {
      _anyCalendarsSupportingImport = [(EKICSPreviewController *)self _anyCalendarsSupportingImport];
    }
  }

  [(EKEventViewController *)v11 setShowsAddToCalendarForICSPreview:_anyCalendarsSupportingImport && !updateCopy];
  [(EKEventViewController *)v11 setShowsUpdateCalendarForICSPreview:_anyCalendarsSupportingImport & updateCopy];
  [(EKEventViewController *)v11 setShowsDeleteForICSPreview:_anyCalendarsSupportingImport & deleteCopy];
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
  view = [(EKEventViewController *)v11 view];
  [view frame];
  v16 = v15;
  v18 = v17;
  v20 = v19;

  v21 = EKUIContainedControllerIdealWidth();
  view2 = [(EKEventViewController *)v11 view];
  [view2 setFrame:{v16, v18, v21, v20}];

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
      importedEvents = [(EKICSPreviewModel *)self->_model importedEvents];
      v20 = [importedEvents count];

      allEvents = [(EKICSPreviewModel *)self->_model allEvents];
      contentViewController = [allEvents firstObject];

      if ([contentViewController isPhantom])
      {
        detachedItems = [contentViewController detachedItems];
        v23 = [detachedItems count];

        if (v23)
        {
          detachedItems2 = [contentViewController detachedItems];
          anyObject = [detachedItems2 anyObject];

          contentViewController = anyObject;
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
      tableView = [(EKICSPreviewListController *)v5 tableView];
      [tableView setEstimatedRowHeight:v9];

      v11 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:v6];
      [v11 _scaledValueForValue:28.0];
      v13 = v12;
      tableView2 = [(EKICSPreviewListController *)v5 tableView];
      [tableView2 setEstimatedSectionHeaderHeight:v13];

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

- (void)_createCancelButtonWithType:(int64_t)type target:(id)target action:(SEL)action
{
  if (self->_hasCustomCancelButton)
  {
    self->_cancelButtonType = type;
    v9 = MEMORY[0x1E69DC708];
    targetCopy = target;
    v13 = [[v9 alloc] initWithBarButtonSystemItem:type target:targetCopy action:action];

    viewController = [(EKICSPreviewController *)self viewController];
    navigationItem = [viewController navigationItem];
    [navigationItem setLeftBarButtonItem:v13];
  }
}

- (void)_updateCancelButton
{
  if (self->_hasCustomCancelButton)
  {
    v3 = [(EKICSPreviewModel *)self->_model unimportedEventCount]&& self->_allowsImport;
    if (v3 != self->_cancelButtonType)
    {
      viewController = [(EKICSPreviewController *)self viewController];
      navigationItem = [viewController navigationItem];
      leftBarButtonItem = [navigationItem leftBarButtonItem];
      target = [leftBarButtonItem target];

      viewController2 = [(EKICSPreviewController *)self viewController];
      navigationItem2 = [viewController2 navigationItem];
      leftBarButtonItem2 = [navigationItem2 leftBarButtonItem];
      action = [leftBarButtonItem2 action];

      [(EKICSPreviewController *)self _createCancelButtonWithType:v3 target:target action:action];
    }
  }
}

- (void)setCancelButtonWithTarget:(id)target action:(SEL)action
{
  self->_hasCustomCancelButton = 1;
  model = self->_model;
  targetCopy = target;
  if ([(EKICSPreviewModel *)model unimportedEventCount])
  {
    allowsImport = self->_allowsImport;
  }

  else
  {
    allowsImport = 0;
  }

  [(EKICSPreviewController *)self _createCancelButtonWithType:allowsImport target:targetCopy action:action];
}

- (void)icsPreviewListController:(id)controller didSelectEvent:(id)event
{
  model = self->_model;
  eventCopy = event;
  controllerCopy = controller;
  importedEvents = [(EKICSPreviewModel *)model importedEvents];
  v11 = -[EKICSPreviewController detailViewForEvent:eventInRealStore:showUpdate:showDelete:](self, "detailViewForEvent:eventInRealStore:showUpdate:showDelete:", eventCopy, [importedEvents containsObject:eventCopy], -[EKICSPreviewModel shouldAllowUpdateEvent:](self->_model, "shouldAllowUpdateEvent:", eventCopy), -[EKICSPreviewModel shouldAllowDeleteEvent:](self->_model, "shouldAllowDeleteEvent:", eventCopy));

  navigationController = [controllerCopy navigationController];

  [navigationController pushViewController:v11 animated:1];
}

- (void)presentCalendarChooserForController:(id)controller
{
  controllerCopy = controller;
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

    _defaultCalendarForImport = [(EKICSPreviewController *)self _defaultCalendarForImport];
    [(EKCalendarChooser *)v5 setSelectedCalendar:_defaultCalendarForImport];

    [(EKCalendarChooser *)v5 setShowDetailAccessories:1];
    view = [(EKCalendarChooser *)v5 view];
    [view frame];
    v11 = v10;
    v13 = v12;
    v15 = v14;

    v16 = EKUIContainedControllerIdealWidth();
    view2 = [(EKCalendarChooser *)v5 view];
    [view2 setFrame:{v11, v13, v16, v15}];

    v18 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithRootViewController:v5];
    v19 = v18;
    if (v18)
    {
      [v18 setModalPresentationStyle:3];
      navigationController = [controllerCopy navigationController];
      v20NavigationController = [navigationController navigationController];
      if (navigationController)
      {
        v22 = navigationController;
      }

      else
      {
        v22 = controllerCopy;
      }

      if (v20NavigationController)
      {
        v22 = v20NavigationController;
      }

      v23 = v22;
      [v23 presentModalViewController:v19 withTransition:8];
    }
  }
}

- (BOOL)_calendarSupportsImport:(id)import
{
  importCopy = import;
  source = [importCopy source];
  constraints = [source constraints];
  if ([constraints prohibitsICSImport])
  {
    allowsContentModifications = 0;
  }

  else
  {
    allowsContentModifications = [importCopy allowsContentModifications];
  }

  return allowsContentModifications;
}

- (void)_enumerateSupportedCalendarsUsingBlock:(id)block
{
  blockCopy = block;
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
  v6 = blockCopy;
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
  defaultCalendarForNewEvents = [(EKEventStore *)self->_eventStore defaultCalendarForNewEvents];
  if ([(EKICSPreviewController *)self _calendarSupportsImport:defaultCalendarForNewEvents])
  {
    v4 = defaultCalendarForNewEvents;
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

- (void)importAllRequested:(id)requested
{
  requestedCopy = requested;
  if ([(EKICSPreviewController *)self _shouldShowCalendarChooser])
  {
    [(EKICSPreviewController *)self presentCalendarChooserForController:requestedCopy];
  }

  else
  {
    defaultCalendarForNewEvents = [(EKEventStore *)self->_eventStore defaultCalendarForNewEvents];
    [(EKICSPreviewController *)self importAllIntoCalendar:defaultCalendarForNewEvents];
  }
}

- (void)calendarChooserDidFinish:(id)finish
{
  currentImport = self->_currentImport;
  finishCopy = finish;
  selectedCalendar = [finishCopy selectedCalendar];
  if (currentImport)
  {
    [(EKICSPreviewController *)self importEventFromController:currentImport intoCalendar:selectedCalendar];
  }

  else
  {
    [(EKICSPreviewController *)self importAllIntoCalendar:selectedCalendar];
  }

  [finishCopy dismissViewControllerAnimated:0 completion:0];
  v7 = self->_currentImport;
  self->_currentImport = 0;
}

- (void)calendarChooserDidCancel:(id)cancel
{
  [cancel dismissViewControllerAnimated:1 completion:0];
  currentImport = self->_currentImport;
  self->_currentImport = 0;
}

- (void)importAllIntoCalendar:(id)calendar
{
  calendarCopy = calendar;
  if (!self->_importing)
  {
    self->_importing = 1;
    [(EKICSPreviewModel *)self->_model importAllIntoCalendar:calendarCopy];
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

- (void)importEventFromController:(id)controller intoCalendar:(id)calendar
{
  controllerCopy = controller;
  calendarCopy = calendar;
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
    event = [controllerCopy event];
    v14 = [(EKICSPreviewModel *)model importEvent:event intoCalendar:calendarCopy];

    if (v14)
    {
      [(EKICSPreviewController *)self handleDidImportEvent:v14 fromController:controllerCopy intoCalendar:calendarCopy];
    }

    else
    {
      [(EKICSPreviewController *)self handleImportEventError];
    }

    self->_importing = 0;
  }

  [(EKICSPreviewController *)self _updateCancelButton];
}

- (void)handleDidImportEvent:(id)event fromController:(id)controller intoCalendar:(id)calendar
{
  controllerCopy = controller;
  eventCopy = event;
  [controllerCopy setICSPreview:0];
  [controllerCopy setEvent:eventCopy];

  [controllerCopy preferredContentSize];
  [controllerCopy setPreferredContentSize:?];

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

  viewController = [(EKICSPreviewController *)self viewController];
  [viewController presentViewController:v8 animated:1 completion:0];

  WeakRetained = objc_loadWeakRetained(&self->_previewDelegate);
  v12 = objc_opt_respondsToSelector();

  if (v12)
  {
    v13 = objc_loadWeakRetained(&self->_previewDelegate);
    [v13 icsPreviewControllerImportDidFail:self];
  }
}

- (void)eventViewControllerDidRequestAddToCalendar:(id)calendar
{
  calendarCopy = calendar;
  model = self->_model;
  v15 = calendarCopy;
  event = [calendarCopy event];
  v8 = [(EKICSPreviewModel *)model shouldAllowUpdateEvent:event];

  if (![(EKICSPreviewController *)self _shouldShowCalendarChooser]|| v8)
  {
    defaultCalendarForNewEvents = [(EKEventStore *)self->_eventStore defaultCalendarForNewEvents];
    if (v8)
    {
      eventStore = [(EKICSPreviewModel *)self->_model eventStore];
      event2 = [v15 event];
      uniqueId = [event2 uniqueId];
      v13 = [eventStore eventWithUniqueId:uniqueId];

      calendar = [v13 calendar];

      defaultCalendarForNewEvents = calendar;
    }

    [(EKICSPreviewController *)self importEventFromController:v15 intoCalendar:defaultCalendarForNewEvents];
  }

  else
  {
    objc_storeStrong(&self->_currentImport, calendar);
    [(EKICSPreviewController *)self presentCalendarChooserForController:v15];
  }
}

- (BOOL)eventViewControllerShouldDismissSelf:(id)self
{
  previewDelegate = [(EKICSPreviewController *)self previewDelegate];
  v4 = objc_opt_respondsToSelector();

  return (v4 & 1) == 0;
}

- (void)eventViewController:(id)controller didCompleteWithAction:(int64_t)action
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = [(EKICSPreviewController *)self previewDelegate:controller];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    previewDelegate = [(EKICSPreviewController *)self previewDelegate];
    [previewDelegate icsPreviewControllerWantsDismissal:self];
  }

  else
  {
    v7 = kEKUILogHandle;
    if (os_log_type_enabled(kEKUILogHandle, OS_LOG_TYPE_ERROR))
    {
      v8 = v7;
      previewDelegate2 = [(EKICSPreviewController *)self previewDelegate];
      *buf = 136315394;
      v12 = "[EKICSPreviewController eventViewController:didCompleteWithAction:]";
      v13 = 2112;
      v14 = previewDelegate2;
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