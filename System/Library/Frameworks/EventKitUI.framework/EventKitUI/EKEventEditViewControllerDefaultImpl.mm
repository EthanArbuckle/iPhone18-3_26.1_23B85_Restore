@interface EKEventEditViewControllerDefaultImpl
+ (void)setDefaultDatesForEvent:(id)event;
- (BOOL)displayingRootView;
- (BOOL)editor:(id)editor shouldCompleteWithAction:(int64_t)action;
- (BOOL)hasUnsavedChanges;
- (BOOL)isModalInPresentation;
- (CGSize)preferredContentSize;
- (EKEventEditViewControllerDefaultImpl)initWithNibName:(id)name bundle:(id)bundle;
- (EKEventEditViewDelegate)editViewDelegate;
- (id)_confirmDismissAlertExplanationText;
- (id)_leftBarButtonItem;
- (id)_rightBarButtonItem;
- (id)alertIconImage;
- (id)confirmDismissAlertController;
- (id)confirmPendingConferenceDismissAlertController;
- (id)pasteboardManagerForCalendarItemEditor:(id)editor;
- (unint64_t)animationOptionsForCurve:(int64_t)curve;
- (unint64_t)supportedInterfaceOrientations;
- (void)_storeChanged:(id)changed;
- (void)attemptDisplayReviewPrompt;
- (void)editor:(id)editor didCompleteWithAction:(int64_t)action;
- (void)editor:(id)editor prepareCalendarItemForEdit:(id)edit;
- (void)loadView;
- (void)preferredContentSizeDidChangeForChildContentContainer:(id)container;
- (void)presentationControllerDidAttemptToDismiss;
- (void)presentationControllerDidAttemptToDismissWithPendingConference;
- (void)refreshUIForUpdatedEvent;
- (void)setEvent:(id)event;
- (void)setEventStore:(id)store;
- (void)setSuggestionKey:(id)key;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)appearing;
@end

@implementation EKEventEditViewControllerDefaultImpl

+ (void)setDefaultDatesForEvent:(id)event
{
  eventCopy = event;
  v6 = CUIKDateRangeForNewEventOnDay();
  startDate = [v6 startDate];
  [eventCopy setStartDate:startDate];

  endDate = [v6 endDate];
  [eventCopy setEndDateUnadjustedForLegacyClients:endDate];
}

- (EKEventEditViewControllerDefaultImpl)initWithNibName:(id)name bundle:(id)bundle
{
  v9.receiver = self;
  v9.super_class = EKEventEditViewControllerDefaultImpl;
  v4 = [(EKEventEditViewControllerDefaultImpl *)&v9 initWithNibName:name bundle:bundle];
  if (v4)
  {
    EKUILogInitIfNeeded();
    v5 = objc_alloc_init(EKEventEditor);
    editor = v4->_editor;
    v4->_editor = v5;

    [(EKCalendarItemEditor *)v4->_editor setEditorDelegate:v4];
    [(EKEventEditViewControllerDefaultImpl *)v4 addChildViewController:v4->_editor];
    [(EKEventEditor *)v4->_editor didMoveToParentViewController:v4];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v4 selector:sel__storeChanged_ name:*MEMORY[0x1E6966928] object:v4->_store];
    [defaultCenter addObserver:v4 selector:sel_keyboardWillShow_ name:*MEMORY[0x1E69DE080] object:0];
    [defaultCenter addObserver:v4 selector:sel_keyboardWillHide_ name:*MEMORY[0x1E69DE078] object:0];
    [defaultCenter addObserver:v4 selector:sel_keyboardWillChangeFrame_ name:*MEMORY[0x1E69DE068] object:0];
  }

  return v4;
}

- (void)loadView
{
  v29[4] = *MEMORY[0x1E69E9840];
  v28.receiver = self;
  v28.super_class = EKEventEditViewControllerDefaultImpl;
  [(EKEventEditViewControllerDefaultImpl *)&v28 loadView];
  view = [(EKEventEditViewControllerDefaultImpl *)self view];
  view2 = [(EKEventEditor *)self->_editor view];
  [view addSubview:view2];

  view3 = [(EKEventEditor *)self->_editor view];
  [view3 setTranslatesAutoresizingMaskIntoConstraints:0];

  v18 = MEMORY[0x1E696ACD8];
  view4 = [(EKEventEditor *)self->_editor view];
  leadingAnchor = [view4 leadingAnchor];
  view5 = [(EKEventEditViewControllerDefaultImpl *)self view];
  leadingAnchor2 = [view5 leadingAnchor];
  v23 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v29[0] = v23;
  view6 = [(EKEventEditor *)self->_editor view];
  trailingAnchor = [view6 trailingAnchor];
  view7 = [(EKEventEditViewControllerDefaultImpl *)self view];
  trailingAnchor2 = [view7 trailingAnchor];
  v17 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v29[1] = v17;
  view8 = [(EKEventEditor *)self->_editor view];
  topAnchor = [view8 topAnchor];
  view9 = [(EKEventEditViewControllerDefaultImpl *)self view];
  topAnchor2 = [view9 topAnchor];
  v8 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v29[2] = v8;
  view10 = [(EKEventEditor *)self->_editor view];
  bottomAnchor = [view10 bottomAnchor];
  view11 = [(EKEventEditViewControllerDefaultImpl *)self view];
  bottomAnchor2 = [view11 bottomAnchor];
  v13 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v29[3] = v13;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:4];
  [v18 activateConstraints:v14];

  [(EKEventEditViewControllerDefaultImpl *)self _annotateEventEntityIfNeeded];
}

- (void)viewDidLoad
{
  v2.receiver = self;
  v2.super_class = EKEventEditViewControllerDefaultImpl;
  [(EKEventEditViewControllerDefaultImpl *)&v2 viewDidLoad];
}

- (void)viewDidLayoutSubviews
{
  v2.receiver = self;
  v2.super_class = EKEventEditViewControllerDefaultImpl;
  [(EKEventEditViewControllerDefaultImpl *)&v2 viewDidLayoutSubviews];
}

- (void)viewIsAppearing:(BOOL)appearing
{
  v3.receiver = self;
  v3.super_class = EKEventEditViewControllerDefaultImpl;
  [(EKEventEditViewControllerDefaultImpl *)&v3 viewIsAppearing:appearing];
}

- (void)preferredContentSizeDidChangeForChildContentContainer:(id)container
{
  v9.receiver = self;
  v9.super_class = EKEventEditViewControllerDefaultImpl;
  containerCopy = container;
  [(EKEventEditViewControllerDefaultImpl *)&v9 preferredContentSizeDidChangeForChildContentContainer:containerCopy];
  [containerCopy preferredContentSize];
  v6 = v5;
  v8 = v7;

  [(EKEventEditViewControllerDefaultImpl *)self setPreferredContentSize:v6, v8];
}

- (void)viewDidAppear:(BOOL)appear
{
  v3.receiver = self;
  v3.super_class = EKEventEditViewControllerDefaultImpl;
  [(EKEventEditViewControllerDefaultImpl *)&v3 viewDidAppear:appear];
  if ([*MEMORY[0x1E69DDA98] isRunningTest])
  {
    dispatch_async(MEMORY[0x1E69E96A0], &__block_literal_global);
  }
}

void __54__EKEventEditViewControllerDefaultImpl_viewDidAppear___block_invoke()
{
  v0 = [MEMORY[0x1E696AD88] defaultCenter];
  [v0 postNotificationName:@"EKEventEditViewControllerDidAppear" object:0];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v6.receiver = self;
  v6.super_class = EKEventEditViewControllerDefaultImpl;
  [(EKEventEditViewControllerDefaultImpl *)&v6 viewDidDisappear:disappear];
  if (!self->_completedWithAction)
  {
    parentViewController = [(EKEventEditViewControllerDefaultImpl *)self parentViewController];
    isBeingDismissed = [parentViewController isBeingDismissed];

    if (isBeingDismissed)
    {
      [(EKEventEditViewControllerDefaultImpl *)self editor:self->_editor didCompleteWithAction:0];
    }
  }
}

- (BOOL)isModalInPresentation
{
  v4.receiver = self;
  v4.super_class = EKEventEditViewControllerDefaultImpl;
  if ([(EKEventEditViewControllerDefaultImpl *)&v4 isModalInPresentation]|| [(EKEventEditViewControllerDefaultImpl *)self hasUnsavedChanges])
  {
    return 1;
  }

  if (([(EKEventEditViewControllerDefaultImpl *)self _isInPopoverPresentation]& 1) != 0)
  {
    return 0;
  }

  return ![(EKEventEditViewControllerDefaultImpl *)self displayingRootView];
}

- (void)setEventStore:(id)store
{
  objc_storeStrong(&self->_store, store);
  storeCopy = store;
  [(EKCalendarItemEditor *)self->_editor setStore:self->_store];
}

- (void)setEvent:(id)event
{
  objc_storeStrong(&self->_event, event);
  eventCopy = event;
  eventIdentifier = [(EKEvent *)self->_event eventIdentifier];
  v7 = [eventIdentifier copy];
  eventId = self->_eventId;
  self->_eventId = v7;

  [(EKEventEditor *)self->_editor setEvent:self->_event];

  [(EKEventEditViewControllerDefaultImpl *)self _annotateEventEntityIfNeeded];
}

- (unint64_t)animationOptionsForCurve:(int64_t)curve
{
  if ((curve - 1) >= 3)
  {
    return 0;
  }

  else
  {
    return ((curve - 1) << 16) + 0x10000;
  }
}

- (void)setSuggestionKey:(id)key
{
  objc_storeStrong(&self->_suggestionKey, key);
  keyCopy = key;
  [(EKEventEditor *)self->_editor setSuggestionKey:keyCopy];
}

- (void)refreshUIForUpdatedEvent
{
  [(EKEventEditor *)self->_editor refreshTitle];
  [(EKEventEditor *)self->_editor refreshURLAndNotes];
  [(EKEventEditor *)self->_editor refreshStartAndEndDates];
  [(EKEventEditor *)self->_editor refreshRecurrence];
  tableView = [(EKEventEditor *)self->_editor tableView];
  [tableView reloadData];
}

- (BOOL)editor:(id)editor shouldCompleteWithAction:(int64_t)action
{
  editorCopy = editor;
  if (action == 1)
  {
    if (-[EKEventEditViewControllerDefaultImpl isModalInPresentation](self, "isModalInPresentation") && [editorCopy pendingVideoConference])
    {
      [(EKEventEditViewControllerDefaultImpl *)self presentationControllerDidAttemptToDismissWithPendingConference];
      goto LABEL_9;
    }

LABEL_10:
    v7 = 1;
    goto LABEL_11;
  }

  if (action || ![(EKEventEditViewControllerDefaultImpl *)self isModalInPresentation]|| [(EKEventEditViewControllerDefaultImpl *)self ignoreUnsavedChanges])
  {
    goto LABEL_10;
  }

  [(EKEventEditViewControllerDefaultImpl *)self presentationControllerDidAttemptToDismiss];
LABEL_9:
  v7 = 0;
LABEL_11:

  return v7;
}

- (void)editor:(id)editor didCompleteWithAction:(int64_t)action
{
  objc_storeStrong(&self->_strongSelf, self);
  WeakRetained = objc_loadWeakRetained(&self->_editViewDelegate);
  if (WeakRetained)
  {
    v7 = WeakRetained;
    v8 = objc_loadWeakRetained(&self->_editViewDelegate);
    v9 = objc_opt_respondsToSelector();

    if (v9)
    {
      v10 = objc_loadWeakRetained(&self->_editViewDelegate);
      _ekEventEditViewControllerForDelegate = [(EKEventEditViewControllerDefaultImpl *)self _ekEventEditViewControllerForDelegate];
      [v10 eventEditViewController:_ekEventEditViewControllerForDelegate didCompleteWithAction:action];
    }
  }

  if (action)
  {
    if (action == 1)
    {
      p_event = &self->_event;
      if (([(EKEvent *)self->_event isNew]& 1) != 0 || [(EKEvent *)*p_event _hasChangesForKey:@"location"])
      {
        preferredLocation = [(EKEvent *)*p_event preferredLocation];
        isPrediction = [preferredLocation isPrediction];

        if (isPrediction)
        {
          v15 = 5;
LABEL_14:
          v18 = MEMORY[0x1E6966B10];
          preferredLocation2 = [(EKEvent *)*p_event preferredLocation];
          predictedLOI = [preferredLocation2 predictedLOI];
          [v18 userInteractionWithPredictedLocationOfInterest:predictedLOI interaction:v15];
        }
      }
    }
  }

  else
  {
    p_event = &self->_event;
    if (([(EKEvent *)self->_event isNew]& 1) != 0 || [(EKEvent *)*p_event _hasChangesForKey:@"location"])
    {
      preferredLocation3 = [(EKEvent *)*p_event preferredLocation];
      isPrediction2 = [preferredLocation3 isPrediction];

      if (isPrediction2)
      {
        v15 = 6;
        goto LABEL_14;
      }
    }
  }

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E6966928] object:self->_store];

  strongSelf = self->_strongSelf;
  self->_strongSelf = 0;

  self->_completedWithAction = 1;
}

- (void)editor:(id)editor prepareCalendarItemForEdit:(id)edit
{
  editCopy = edit;
  calendar = [editCopy calendar];

  if (!calendar)
  {
    WeakRetained = objc_loadWeakRetained(&self->_editViewDelegate);
    if (!WeakRetained || (v7 = WeakRetained, v8 = objc_loadWeakRetained(&self->_editViewDelegate), v9 = objc_opt_respondsToSelector(), v8, v7, (v9 & 1) == 0) || (v10 = objc_loadWeakRetained(&self->_editViewDelegate), -[EKEventEditViewControllerDefaultImpl _ekEventEditViewControllerForDelegate](self, "_ekEventEditViewControllerForDelegate"), v11 = objc_claimAutoreleasedReturnValue(), [v10 eventEditViewControllerDefaultCalendarForNewEvents:v11], defaultCalendarForNewEvents = objc_claimAutoreleasedReturnValue(), v11, v10, !defaultCalendarForNewEvents))
    {
      defaultCalendarForNewEvents = [(EKEventStore *)self->_store defaultCalendarForNewEvents];
    }

    [editCopy setCalendar:defaultCalendarForNewEvents];
  }

  startDate = [editCopy startDate];

  if (!startDate)
  {
    [objc_opt_class() setDefaultDatesForEvent:editCopy];
  }
}

- (id)pasteboardManagerForCalendarItemEditor:(id)editor
{
  editViewDelegate = [(EKEventEditViewControllerDefaultImpl *)self editViewDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    editViewDelegate2 = [(EKEventEditViewControllerDefaultImpl *)self editViewDelegate];
    _ekEventEditViewControllerForDelegate = [(EKEventEditViewControllerDefaultImpl *)self _ekEventEditViewControllerForDelegate];
    v8 = [editViewDelegate2 pasteboardManagerForEventEditViewController:_ekEventEditViewControllerForDelegate];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)attemptDisplayReviewPrompt
{
  editViewDelegate = [(EKEventEditViewControllerDefaultImpl *)self editViewDelegate];
  if (editViewDelegate != self)
  {
    v4 = editViewDelegate;
    if (objc_opt_respondsToSelector())
    {
      [(EKEventEditViewControllerDefaultImpl *)v4 attemptDisplayReviewPrompt];
    }
  }

  MEMORY[0x1EEE66BE0]();
}

- (void)_storeChanged:(id)changed
{
  changedCopy = changed;
  if (self->_eventId)
  {
    v6 = changedCopy;
    eventStore = [(EKEvent *)self->_event eventStore];

    changedCopy = v6;
    if (!eventStore)
    {
      [(EKCalendarItemEditor *)self->_editor completeWithAction:2 animated:0];
      changedCopy = v6;
    }
  }
}

- (unint64_t)supportedInterfaceOrientations
{
  if (self->_editor)
  {
    editor = self->_editor;

    return [(EKEventEditor *)editor supportedInterfaceOrientations];
  }

  else
  {
    view = [(EKEventEditViewControllerDefaultImpl *)self view];
    IsRegularInViewHierarchy = EKUICurrentWidthSizeClassIsRegularInViewHierarchy(view);

    if (IsRegularInViewHierarchy)
    {
      return 30;
    }

    else
    {
      return 26;
    }
  }
}

- (CGSize)preferredContentSize
{
  [(EKEventEditor *)self->_editor preferredContentSize];
  result.height = v3;
  result.width = v2;
  return result;
}

- (BOOL)hasUnsavedChanges
{
  if ([(EKEventEditor *)self->_editor hasUnsavedChanges])
  {
    return 1;
  }

  editor = self->_editor;

  return [(EKCalendarItemEditor *)editor isTextEditing];
}

- (id)_leftBarButtonItem
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  navigationItem = [(EKCalendarItemEditor *)self->_editor navigationItem];
  leftBarButtonItems = [navigationItem leftBarButtonItems];

  v4 = [leftBarButtonItems countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = *v10;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(leftBarButtonItems);
        }

        v7 = *(*(&v9 + 1) + 8 * i);
        if ([v7 systemItem] != 5 && objc_msgSend(v7, "systemItem") != 6)
        {
          v4 = v7;
          goto LABEL_12;
        }
      }

      v4 = [leftBarButtonItems countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  return v4;
}

- (id)_rightBarButtonItem
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  navigationItem = [(EKCalendarItemEditor *)self->_editor navigationItem];
  rightBarButtonItems = [navigationItem rightBarButtonItems];

  v4 = [rightBarButtonItems countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = *v10;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(rightBarButtonItems);
        }

        v7 = *(*(&v9 + 1) + 8 * i);
        if ([v7 systemItem] != 5 && objc_msgSend(v7, "systemItem") != 6)
        {
          v4 = v7;
          goto LABEL_12;
        }
      }

      v4 = [rightBarButtonItems countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  return v4;
}

- (id)_confirmDismissAlertExplanationText
{
  isNew = [(EKEvent *)self->_event isNew];
  v3 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v4 = v3;
  if (isNew)
  {
    v5 = @"Are you sure you want to discard this new event?";
  }

  else
  {
    v5 = @"Are you sure you want to discard your changes?";
  }

  v6 = [v3 localizedStringForKey:v5 value:&stru_1F4EF6790 table:0];

  return v6;
}

- (id)alertIconImage
{
  v2 = objc_alloc(MEMORY[0x1E69A8A00]);
  v3 = [v2 initWithBundleIdentifier:*MEMORY[0x1E69930E8]];
  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen scale];
  v6 = v5;

  v7 = [objc_alloc(MEMORY[0x1E69A8A30]) initWithSize:100.0 scale:{100.0, v6}];
  v8 = [v3 imageForDescriptor:v7];
  if ([v8 placeholder])
  {
    v9 = [v3 prepareImageForDescriptor:v7];

    v8 = v9;
  }

  v10 = [objc_alloc(MEMORY[0x1E69DCAB8]) initWithCGImage:{objc_msgSend(v8, "CGImage")}];

  return v10;
}

- (id)confirmDismissAlertController
{
  _confirmDismissAlertExplanationText = [(EKEventEditViewControllerDefaultImpl *)self _confirmDismissAlertExplanationText];
  v4 = [EKUIAlertController alertControllerWithTitle:0 message:_confirmDismissAlertExplanationText preferredStyle:0];
  [v4 setProhibitsRotation:1];
  alertIconImage = [(EKEventEditViewControllerDefaultImpl *)self alertIconImage];
  [v4 setImage:alertIconImage];

  v6 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"Discard Changes" value:&stru_1F4EF6790 table:0];

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __69__EKEventEditViewControllerDefaultImpl_confirmDismissAlertController__block_invoke;
  v15[3] = &unk_1E843EB98;
  v15[4] = self;
  v8 = [MEMORY[0x1E69DC648] actionWithTitle:v7 style:2 handler:v15];
  [v4 addAction:v8];

  v9 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v10 = [v9 localizedStringForKey:@"Keep Editing" value:&stru_1F4EF6790 table:0];

  v11 = [MEMORY[0x1E69DC648] actionWithTitle:v10 style:1 handler:0];
  [v4 addAction:v11];

  _leftBarButtonItem = [(EKEventEditViewControllerDefaultImpl *)self _leftBarButtonItem];
  popoverPresentationController = [v4 popoverPresentationController];
  [popoverPresentationController setBarButtonItem:_leftBarButtonItem];

  return v4;
}

- (id)confirmPendingConferenceDismissAlertController
{
  v3 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"Save without video call link?" value:&stru_1F4EF6790 table:0];

  v5 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"This will save the event before the video call link finishes loading." value:&stru_1F4EF6790 table:0];

  v7 = [EKUIAlertController alertControllerWithTitle:v4 message:v6 preferredStyle:0];
  [v7 setProhibitsRotation:1];
  alertIconImage = [(EKEventEditViewControllerDefaultImpl *)self alertIconImage];
  [v7 setImage:alertIconImage];

  v9 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v10 = [v9 localizedStringForKey:@"Save Event" value:&stru_1F4EF6790 table:0];

  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __86__EKEventEditViewControllerDefaultImpl_confirmPendingConferenceDismissAlertController__block_invoke;
  v18[3] = &unk_1E843EB98;
  v18[4] = self;
  v11 = [MEMORY[0x1E69DC648] actionWithTitle:v10 style:2 handler:v18];
  [v7 addAction:v11];

  v12 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v13 = [v12 localizedStringForKey:@"Keep Editing" value:&stru_1F4EF6790 table:0];

  v14 = [MEMORY[0x1E69DC648] actionWithTitle:v13 style:1 handler:0];
  [v7 addAction:v14];

  _rightBarButtonItem = [(EKEventEditViewControllerDefaultImpl *)self _rightBarButtonItem];
  popoverPresentationController = [v7 popoverPresentationController];
  [popoverPresentationController setBarButtonItem:_rightBarButtonItem];

  return v7;
}

uint64_t __86__EKEventEditViewControllerDefaultImpl_confirmPendingConferenceDismissAlertController__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 1048) setPendingVideoConference:0];
  v2 = *(*(a1 + 32) + 1048);

  return [v2 completeAndSave];
}

- (void)presentationControllerDidAttemptToDismiss
{
  if (([(EKEventEditViewControllerDefaultImpl *)self _isInPopoverPresentation]& 1) != 0 || [(EKEventEditViewControllerDefaultImpl *)self displayingRootView])
  {
    [(EKCalendarItemEditor *)self->_editor resignCurrentEditItemFirstResponder];
    if ([(EKEventEditor *)self->_editor isShowingAccessDeniedView])
    {

      [(EKEventEditViewControllerDefaultImpl *)self cancelEditingWithDelegateNotification:1 forceCancel:1];
    }

    else
    {
      confirmDismissAlertController = [(EKEventEditViewControllerDefaultImpl *)self confirmDismissAlertController];
      [(EKEventEditViewControllerDefaultImpl *)self presentViewController:confirmDismissAlertController animated:1 completion:0];
    }
  }
}

- (void)presentationControllerDidAttemptToDismissWithPendingConference
{
  if (([(EKEventEditViewControllerDefaultImpl *)self _isInPopoverPresentation]& 1) != 0 || [(EKEventEditViewControllerDefaultImpl *)self displayingRootView])
  {
    [(EKCalendarItemEditor *)self->_editor resignCurrentEditItemFirstResponder];
    confirmPendingConferenceDismissAlertController = [(EKEventEditViewControllerDefaultImpl *)self confirmPendingConferenceDismissAlertController];
    [(EKEventEditViewControllerDefaultImpl *)self presentViewController:confirmPendingConferenceDismissAlertController animated:1 completion:0];
  }
}

- (BOOL)displayingRootView
{
  navigationController = [(EKEventEditViewControllerDefaultImpl *)self navigationController];
  visibleViewController = [navigationController visibleViewController];
  viewControllers = [navigationController viewControllers];
  firstObject = [viewControllers firstObject];
  v6 = visibleViewController == firstObject;

  return v6;
}

- (EKEventEditViewDelegate)editViewDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_editViewDelegate);

  return WeakRetained;
}

@end