@interface EKEventEditViewControllerDefaultImpl
+ (void)setDefaultDatesForEvent:(id)a3;
- (BOOL)displayingRootView;
- (BOOL)editor:(id)a3 shouldCompleteWithAction:(int64_t)a4;
- (BOOL)hasUnsavedChanges;
- (BOOL)isModalInPresentation;
- (CGSize)preferredContentSize;
- (EKEventEditViewControllerDefaultImpl)initWithNibName:(id)a3 bundle:(id)a4;
- (EKEventEditViewDelegate)editViewDelegate;
- (id)_confirmDismissAlertExplanationText;
- (id)_leftBarButtonItem;
- (id)_rightBarButtonItem;
- (id)alertIconImage;
- (id)confirmDismissAlertController;
- (id)confirmPendingConferenceDismissAlertController;
- (id)pasteboardManagerForCalendarItemEditor:(id)a3;
- (unint64_t)animationOptionsForCurve:(int64_t)a3;
- (unint64_t)supportedInterfaceOrientations;
- (void)_storeChanged:(id)a3;
- (void)attemptDisplayReviewPrompt;
- (void)editor:(id)a3 didCompleteWithAction:(int64_t)a4;
- (void)editor:(id)a3 prepareCalendarItemForEdit:(id)a4;
- (void)loadView;
- (void)preferredContentSizeDidChangeForChildContentContainer:(id)a3;
- (void)presentationControllerDidAttemptToDismiss;
- (void)presentationControllerDidAttemptToDismissWithPendingConference;
- (void)refreshUIForUpdatedEvent;
- (void)setEvent:(id)a3;
- (void)setEventStore:(id)a3;
- (void)setSuggestionKey:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)a3;
@end

@implementation EKEventEditViewControllerDefaultImpl

+ (void)setDefaultDatesForEvent:(id)a3
{
  v3 = a3;
  v6 = CUIKDateRangeForNewEventOnDay();
  v4 = [v6 startDate];
  [v3 setStartDate:v4];

  v5 = [v6 endDate];
  [v3 setEndDateUnadjustedForLegacyClients:v5];
}

- (EKEventEditViewControllerDefaultImpl)initWithNibName:(id)a3 bundle:(id)a4
{
  v9.receiver = self;
  v9.super_class = EKEventEditViewControllerDefaultImpl;
  v4 = [(EKEventEditViewControllerDefaultImpl *)&v9 initWithNibName:a3 bundle:a4];
  if (v4)
  {
    EKUILogInitIfNeeded();
    v5 = objc_alloc_init(EKEventEditor);
    editor = v4->_editor;
    v4->_editor = v5;

    [(EKCalendarItemEditor *)v4->_editor setEditorDelegate:v4];
    [(EKEventEditViewControllerDefaultImpl *)v4 addChildViewController:v4->_editor];
    [(EKEventEditor *)v4->_editor didMoveToParentViewController:v4];
    v7 = [MEMORY[0x1E696AD88] defaultCenter];
    [v7 addObserver:v4 selector:sel__storeChanged_ name:*MEMORY[0x1E6966928] object:v4->_store];
    [v7 addObserver:v4 selector:sel_keyboardWillShow_ name:*MEMORY[0x1E69DE080] object:0];
    [v7 addObserver:v4 selector:sel_keyboardWillHide_ name:*MEMORY[0x1E69DE078] object:0];
    [v7 addObserver:v4 selector:sel_keyboardWillChangeFrame_ name:*MEMORY[0x1E69DE068] object:0];
  }

  return v4;
}

- (void)loadView
{
  v29[4] = *MEMORY[0x1E69E9840];
  v28.receiver = self;
  v28.super_class = EKEventEditViewControllerDefaultImpl;
  [(EKEventEditViewControllerDefaultImpl *)&v28 loadView];
  v3 = [(EKEventEditViewControllerDefaultImpl *)self view];
  v4 = [(EKEventEditor *)self->_editor view];
  [v3 addSubview:v4];

  v5 = [(EKEventEditor *)self->_editor view];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];

  v18 = MEMORY[0x1E696ACD8];
  v27 = [(EKEventEditor *)self->_editor view];
  v25 = [v27 leadingAnchor];
  v26 = [(EKEventEditViewControllerDefaultImpl *)self view];
  v24 = [v26 leadingAnchor];
  v23 = [v25 constraintEqualToAnchor:v24];
  v29[0] = v23;
  v22 = [(EKEventEditor *)self->_editor view];
  v20 = [v22 trailingAnchor];
  v21 = [(EKEventEditViewControllerDefaultImpl *)self view];
  v19 = [v21 trailingAnchor];
  v17 = [v20 constraintEqualToAnchor:v19];
  v29[1] = v17;
  v16 = [(EKEventEditor *)self->_editor view];
  v15 = [v16 topAnchor];
  v6 = [(EKEventEditViewControllerDefaultImpl *)self view];
  v7 = [v6 topAnchor];
  v8 = [v15 constraintEqualToAnchor:v7];
  v29[2] = v8;
  v9 = [(EKEventEditor *)self->_editor view];
  v10 = [v9 bottomAnchor];
  v11 = [(EKEventEditViewControllerDefaultImpl *)self view];
  v12 = [v11 bottomAnchor];
  v13 = [v10 constraintEqualToAnchor:v12];
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

- (void)viewIsAppearing:(BOOL)a3
{
  v3.receiver = self;
  v3.super_class = EKEventEditViewControllerDefaultImpl;
  [(EKEventEditViewControllerDefaultImpl *)&v3 viewIsAppearing:a3];
}

- (void)preferredContentSizeDidChangeForChildContentContainer:(id)a3
{
  v9.receiver = self;
  v9.super_class = EKEventEditViewControllerDefaultImpl;
  v4 = a3;
  [(EKEventEditViewControllerDefaultImpl *)&v9 preferredContentSizeDidChangeForChildContentContainer:v4];
  [v4 preferredContentSize];
  v6 = v5;
  v8 = v7;

  [(EKEventEditViewControllerDefaultImpl *)self setPreferredContentSize:v6, v8];
}

- (void)viewDidAppear:(BOOL)a3
{
  v3.receiver = self;
  v3.super_class = EKEventEditViewControllerDefaultImpl;
  [(EKEventEditViewControllerDefaultImpl *)&v3 viewDidAppear:a3];
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

- (void)viewDidDisappear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = EKEventEditViewControllerDefaultImpl;
  [(EKEventEditViewControllerDefaultImpl *)&v6 viewDidDisappear:a3];
  if (!self->_completedWithAction)
  {
    v4 = [(EKEventEditViewControllerDefaultImpl *)self parentViewController];
    v5 = [v4 isBeingDismissed];

    if (v5)
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

- (void)setEventStore:(id)a3
{
  objc_storeStrong(&self->_store, a3);
  v5 = a3;
  [(EKCalendarItemEditor *)self->_editor setStore:self->_store];
}

- (void)setEvent:(id)a3
{
  objc_storeStrong(&self->_event, a3);
  v5 = a3;
  v6 = [(EKEvent *)self->_event eventIdentifier];
  v7 = [v6 copy];
  eventId = self->_eventId;
  self->_eventId = v7;

  [(EKEventEditor *)self->_editor setEvent:self->_event];

  [(EKEventEditViewControllerDefaultImpl *)self _annotateEventEntityIfNeeded];
}

- (unint64_t)animationOptionsForCurve:(int64_t)a3
{
  if ((a3 - 1) >= 3)
  {
    return 0;
  }

  else
  {
    return ((a3 - 1) << 16) + 0x10000;
  }
}

- (void)setSuggestionKey:(id)a3
{
  objc_storeStrong(&self->_suggestionKey, a3);
  v5 = a3;
  [(EKEventEditor *)self->_editor setSuggestionKey:v5];
}

- (void)refreshUIForUpdatedEvent
{
  [(EKEventEditor *)self->_editor refreshTitle];
  [(EKEventEditor *)self->_editor refreshURLAndNotes];
  [(EKEventEditor *)self->_editor refreshStartAndEndDates];
  [(EKEventEditor *)self->_editor refreshRecurrence];
  v3 = [(EKEventEditor *)self->_editor tableView];
  [v3 reloadData];
}

- (BOOL)editor:(id)a3 shouldCompleteWithAction:(int64_t)a4
{
  v6 = a3;
  if (a4 == 1)
  {
    if (-[EKEventEditViewControllerDefaultImpl isModalInPresentation](self, "isModalInPresentation") && [v6 pendingVideoConference])
    {
      [(EKEventEditViewControllerDefaultImpl *)self presentationControllerDidAttemptToDismissWithPendingConference];
      goto LABEL_9;
    }

LABEL_10:
    v7 = 1;
    goto LABEL_11;
  }

  if (a4 || ![(EKEventEditViewControllerDefaultImpl *)self isModalInPresentation]|| [(EKEventEditViewControllerDefaultImpl *)self ignoreUnsavedChanges])
  {
    goto LABEL_10;
  }

  [(EKEventEditViewControllerDefaultImpl *)self presentationControllerDidAttemptToDismiss];
LABEL_9:
  v7 = 0;
LABEL_11:

  return v7;
}

- (void)editor:(id)a3 didCompleteWithAction:(int64_t)a4
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
      v11 = [(EKEventEditViewControllerDefaultImpl *)self _ekEventEditViewControllerForDelegate];
      [v10 eventEditViewController:v11 didCompleteWithAction:a4];
    }
  }

  if (a4)
  {
    if (a4 == 1)
    {
      p_event = &self->_event;
      if (([(EKEvent *)self->_event isNew]& 1) != 0 || [(EKEvent *)*p_event _hasChangesForKey:@"location"])
      {
        v13 = [(EKEvent *)*p_event preferredLocation];
        v14 = [v13 isPrediction];

        if (v14)
        {
          v15 = 5;
LABEL_14:
          v18 = MEMORY[0x1E6966B10];
          v19 = [(EKEvent *)*p_event preferredLocation];
          v20 = [v19 predictedLOI];
          [v18 userInteractionWithPredictedLocationOfInterest:v20 interaction:v15];
        }
      }
    }
  }

  else
  {
    p_event = &self->_event;
    if (([(EKEvent *)self->_event isNew]& 1) != 0 || [(EKEvent *)*p_event _hasChangesForKey:@"location"])
    {
      v16 = [(EKEvent *)*p_event preferredLocation];
      v17 = [v16 isPrediction];

      if (v17)
      {
        v15 = 6;
        goto LABEL_14;
      }
    }
  }

  v21 = [MEMORY[0x1E696AD88] defaultCenter];
  [v21 removeObserver:self name:*MEMORY[0x1E6966928] object:self->_store];

  strongSelf = self->_strongSelf;
  self->_strongSelf = 0;

  self->_completedWithAction = 1;
}

- (void)editor:(id)a3 prepareCalendarItemForEdit:(id)a4
{
  v14 = a4;
  v5 = [v14 calendar];

  if (!v5)
  {
    WeakRetained = objc_loadWeakRetained(&self->_editViewDelegate);
    if (!WeakRetained || (v7 = WeakRetained, v8 = objc_loadWeakRetained(&self->_editViewDelegate), v9 = objc_opt_respondsToSelector(), v8, v7, (v9 & 1) == 0) || (v10 = objc_loadWeakRetained(&self->_editViewDelegate), -[EKEventEditViewControllerDefaultImpl _ekEventEditViewControllerForDelegate](self, "_ekEventEditViewControllerForDelegate"), v11 = objc_claimAutoreleasedReturnValue(), [v10 eventEditViewControllerDefaultCalendarForNewEvents:v11], v12 = objc_claimAutoreleasedReturnValue(), v11, v10, !v12))
    {
      v12 = [(EKEventStore *)self->_store defaultCalendarForNewEvents];
    }

    [v14 setCalendar:v12];
  }

  v13 = [v14 startDate];

  if (!v13)
  {
    [objc_opt_class() setDefaultDatesForEvent:v14];
  }
}

- (id)pasteboardManagerForCalendarItemEditor:(id)a3
{
  v4 = [(EKEventEditViewControllerDefaultImpl *)self editViewDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(EKEventEditViewControllerDefaultImpl *)self editViewDelegate];
    v7 = [(EKEventEditViewControllerDefaultImpl *)self _ekEventEditViewControllerForDelegate];
    v8 = [v6 pasteboardManagerForEventEditViewController:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)attemptDisplayReviewPrompt
{
  v3 = [(EKEventEditViewControllerDefaultImpl *)self editViewDelegate];
  if (v3 != self)
  {
    v4 = v3;
    if (objc_opt_respondsToSelector())
    {
      [(EKEventEditViewControllerDefaultImpl *)v4 attemptDisplayReviewPrompt];
    }
  }

  MEMORY[0x1EEE66BE0]();
}

- (void)_storeChanged:(id)a3
{
  v4 = a3;
  if (self->_eventId)
  {
    v6 = v4;
    v5 = [(EKEvent *)self->_event eventStore];

    v4 = v6;
    if (!v5)
    {
      [(EKCalendarItemEditor *)self->_editor completeWithAction:2 animated:0];
      v4 = v6;
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
    v5 = [(EKEventEditViewControllerDefaultImpl *)self view];
    IsRegularInViewHierarchy = EKUICurrentWidthSizeClassIsRegularInViewHierarchy(v5);

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
  v2 = [(EKCalendarItemEditor *)self->_editor navigationItem];
  v3 = [v2 leftBarButtonItems];

  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = *v10;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v9 + 1) + 8 * i);
        if ([v7 systemItem] != 5 && objc_msgSend(v7, "systemItem") != 6)
        {
          v4 = v7;
          goto LABEL_12;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
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
  v2 = [(EKCalendarItemEditor *)self->_editor navigationItem];
  v3 = [v2 rightBarButtonItems];

  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = *v10;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v9 + 1) + 8 * i);
        if ([v7 systemItem] != 5 && objc_msgSend(v7, "systemItem") != 6)
        {
          v4 = v7;
          goto LABEL_12;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
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
  v2 = [(EKEvent *)self->_event isNew];
  v3 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v4 = v3;
  if (v2)
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
  v4 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v4 scale];
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
  v3 = [(EKEventEditViewControllerDefaultImpl *)self _confirmDismissAlertExplanationText];
  v4 = [EKUIAlertController alertControllerWithTitle:0 message:v3 preferredStyle:0];
  [v4 setProhibitsRotation:1];
  v5 = [(EKEventEditViewControllerDefaultImpl *)self alertIconImage];
  [v4 setImage:v5];

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

  v12 = [(EKEventEditViewControllerDefaultImpl *)self _leftBarButtonItem];
  v13 = [v4 popoverPresentationController];
  [v13 setBarButtonItem:v12];

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
  v8 = [(EKEventEditViewControllerDefaultImpl *)self alertIconImage];
  [v7 setImage:v8];

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

  v15 = [(EKEventEditViewControllerDefaultImpl *)self _rightBarButtonItem];
  v16 = [v7 popoverPresentationController];
  [v16 setBarButtonItem:v15];

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
      v3 = [(EKEventEditViewControllerDefaultImpl *)self confirmDismissAlertController];
      [(EKEventEditViewControllerDefaultImpl *)self presentViewController:v3 animated:1 completion:0];
    }
  }
}

- (void)presentationControllerDidAttemptToDismissWithPendingConference
{
  if (([(EKEventEditViewControllerDefaultImpl *)self _isInPopoverPresentation]& 1) != 0 || [(EKEventEditViewControllerDefaultImpl *)self displayingRootView])
  {
    [(EKCalendarItemEditor *)self->_editor resignCurrentEditItemFirstResponder];
    v3 = [(EKEventEditViewControllerDefaultImpl *)self confirmPendingConferenceDismissAlertController];
    [(EKEventEditViewControllerDefaultImpl *)self presentViewController:v3 animated:1 completion:0];
  }
}

- (BOOL)displayingRootView
{
  v2 = [(EKEventEditViewControllerDefaultImpl *)self navigationController];
  v3 = [v2 visibleViewController];
  v4 = [v2 viewControllers];
  v5 = [v4 firstObject];
  v6 = v3 == v5;

  return v6;
}

- (EKEventEditViewDelegate)editViewDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_editViewDelegate);

  return WeakRetained;
}

@end