@interface EKUIRecurrenceAlertController
+ (BOOL)_useSheetForViewController:(id)controller options:(unint64_t)options;
+ (BOOL)shouldShowDeleteAlertForEvent:(id)event options:(unint64_t)options;
+ (id)_cancelLocalizedString;
+ (id)_defaultStringForDeleteButtonForEvent:(id)event;
+ (id)_defaultStringForDeleteTitleWhenNotRecurring:(id)recurring;
+ (id)_detachAllLocalizedString;
+ (id)_detachFutureLocalizedString;
+ (id)deleteAlertWithOptions:(unint64_t)options forEvent:(id)event stringForDeleteButton:(id)button withCompletionHandler:(id)handler;
+ (id)newAlertControllerWithCompletionHandler:(id)handler;
+ (id)presentAttachmentAlertWithOptions:(unint64_t)options viewController:(id)controller barButtonItem:(id)item forEvent:(id)event withCompletionHandler:(id)handler;
+ (id)presentDeleteAlertWithOptions:(unint64_t)options viewController:(id)controller barButtonItem:(id)item forEvent:(id)event stringForDeleteButton:(id)button withCompletionHandler:(id)handler;
+ (id)presentDeleteAlertWithOptions:(unint64_t)options viewController:(id)controller forEvents:(id)events withCompletionHandler:(id)handler;
+ (id)presentDeleteAlertWithOptions:(unint64_t)options viewController:(id)controller sourceView:(id)view sourceRect:(CGRect)rect forEvent:(id)event stringForDeleteButton:(id)button withCompletionHandler:(id)handler;
+ (id)presentDetachAlertWithOptions:(unint64_t)options viewController:(id)controller barButtonItem:(id)item forEvent:(id)event withCompletionHandler:(id)handler;
+ (id)presentDetachAlertWithOptions:(unint64_t)options viewController:(id)controller sourceView:(id)view sourceRect:(CGRect)rect forEvent:(id)event withCompletionHandler:(id)handler;
+ (id)presentUnsubscribeAlertWithOptions:(unint64_t)options viewController:(id)controller sourceView:(id)view sourceRect:(CGRect)rect withCompletionHandler:(id)handler;
+ (id)unsubscribeAlertWithOptions:(unint64_t)options withCompletionHandler:(id)handler;
+ (int)_determineChoicesForEvent:(id)event options:(unint64_t)options;
- (BOOL)_setupDeleteAlertForEvents:(id)events;
- (BOOL)isCurrentlyShowingAlert;
- (void)_cleanup;
- (void)_completeWithSelection:(unint64_t)selection;
- (void)_configureAlertControllerWithSourceView:(id)view sourceRect:(CGRect)rect barButtonItem:(id)item;
- (void)_presentAttachmentsAlertWithOptions:(unint64_t)options viewController:(id)controller barButtonItem:(id)item forEvent:(id)event;
- (void)_presentDeleteAlertWithOptions:(unint64_t)options viewController:(id)controller sourceView:(id)view sourceRect:(CGRect)rect barButtonItem:(id)item forEvent:(id)event stringForDeleteButton:(id)button;
- (void)_presentDetachAlertWithOptions:(unint64_t)options viewController:(id)controller sourceView:(id)view sourceRect:(CGRect)rect barButtonItem:(id)item forEvent:(id)event;
- (void)cancelAnimated:(BOOL)animated;
- (void)dealloc;
- (void)setupDeleteAlertWithOptions:(unint64_t)options viewController:(id)controller forEvent:(id)event stringForDeleteButton:(id)button;
- (void)setupUnsubscribeAlertWithOptions:(unint64_t)options viewController:(id)controller;
@end

@implementation EKUIRecurrenceAlertController

- (void)dealloc
{
  [(EKUIRecurrenceAlertController *)self cancelAnimated:0];
  v3.receiver = self;
  v3.super_class = EKUIRecurrenceAlertController;
  [(EKUIRecurrenceAlertController *)&v3 dealloc];
}

+ (id)newAlertControllerWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v4 = objc_opt_new();
  [v4 setCompletionHandler:handlerCopy];

  return v4;
}

- (BOOL)isCurrentlyShowingAlert
{
  view = [(UIAlertController *)self->_alertController view];
  superview = [view superview];
  if (superview)
  {
    presentingViewController = [(UIAlertController *)self->_alertController presentingViewController];
    if (presentingViewController)
    {
      v6 = [(UIAlertController *)self->_alertController isBeingDismissed]^ 1;
    }

    else
    {
      LOBYTE(v6) = 0;
    }
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

+ (id)_defaultStringForDeleteButtonForEvent:(id)event
{
  isReminderIntegrationEvent = [event isReminderIntegrationEvent];
  v4 = EventKitUIBundle();
  v5 = v4;
  if (isReminderIntegrationEvent)
  {
    v6 = @"Delete Reminder";
  }

  else
  {
    v6 = @"Delete Event";
  }

  v7 = [v4 localizedStringForKey:v6 value:&stru_1F4EF6790 table:0];

  return v7;
}

+ (id)presentDeleteAlertWithOptions:(unint64_t)options viewController:(id)controller barButtonItem:(id)item forEvent:(id)event stringForDeleteButton:(id)button withCompletionHandler:(id)handler
{
  controllerCopy = controller;
  itemCopy = item;
  eventCopy = event;
  buttonCopy = button;
  v18 = [self newAlertControllerWithCompletionHandler:handler];
  v19 = buttonCopy;
  if (!buttonCopy)
  {
    v19 = [self _defaultStringForDeleteButtonForEvent:eventCopy];
  }

  [v18 _presentDeleteAlertWithOptions:options viewController:controllerCopy sourceView:0 sourceRect:itemCopy barButtonItem:eventCopy forEvent:v19 stringForDeleteButton:{*MEMORY[0x1E695F050], *(MEMORY[0x1E695F050] + 8), *(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24)}];
  if (!buttonCopy)
  {
  }

  return v18;
}

+ (id)presentDeleteAlertWithOptions:(unint64_t)options viewController:(id)controller sourceView:(id)view sourceRect:(CGRect)rect forEvent:(id)event stringForDeleteButton:(id)button withCompletionHandler:(id)handler
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  controllerCopy = controller;
  viewCopy = view;
  eventCopy = event;
  buttonCopy = button;
  v23 = [self newAlertControllerWithCompletionHandler:handler];
  v24 = v23;
  if (buttonCopy)
  {
    [v23 _presentDeleteAlertWithOptions:options viewController:controllerCopy sourceView:viewCopy sourceRect:0 barButtonItem:eventCopy forEvent:buttonCopy stringForDeleteButton:{x, y, width, height}];
  }

  else
  {
    v25 = [self _defaultStringForDeleteButtonForEvent:eventCopy];
    [v24 _presentDeleteAlertWithOptions:options viewController:controllerCopy sourceView:viewCopy sourceRect:0 barButtonItem:eventCopy forEvent:v25 stringForDeleteButton:{x, y, width, height}];
  }

  return v24;
}

+ (id)presentDeleteAlertWithOptions:(unint64_t)options viewController:(id)controller forEvents:(id)events withCompletionHandler:(id)handler
{
  controllerCopy = controller;
  eventsCopy = events;
  v12 = [self newAlertControllerWithCompletionHandler:handler];
  if ([eventsCopy count] == 1)
  {
    alertController = [eventsCopy objectAtIndexedSubscript:0];
    v14 = [eventsCopy objectAtIndexedSubscript:0];
    v15 = [self _defaultStringForDeleteButtonForEvent:v14];
    [v12 _presentDeleteAlertWithOptions:options viewController:controllerCopy sourceView:0 sourceRect:0 barButtonItem:alertController forEvent:v15 stringForDeleteButton:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  }

  else if ([v12 _setupDeleteAlertForEvents:eventsCopy])
  {
    alertController = [v12 alertController];
    [controllerCopy presentViewController:alertController animated:1 completion:0];
  }

  else
  {
    alertController = v12;
    v12 = 0;
  }

  return v12;
}

+ (id)deleteAlertWithOptions:(unint64_t)options forEvent:(id)event stringForDeleteButton:(id)button withCompletionHandler:(id)handler
{
  eventCopy = event;
  buttonCopy = button;
  handlerCopy = handler;
  if ([self shouldShowDeleteAlertForEvent:eventCopy options:options])
  {
    v13 = [self newAlertControllerWithCompletionHandler:handlerCopy];
    v14 = v13;
    if (buttonCopy)
    {
      [v13 setupDeleteAlertWithOptions:options viewController:0 forEvent:eventCopy stringForDeleteButton:buttonCopy];
    }

    else
    {
      v15 = [self _defaultStringForDeleteButtonForEvent:eventCopy];
      [v14 setupDeleteAlertWithOptions:options viewController:0 forEvent:eventCopy stringForDeleteButton:v15];
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

+ (BOOL)shouldShowDeleteAlertForEvent:(id)event options:(unint64_t)options
{
  optionsCopy = options;
  v13[1] = *MEMORY[0x1E69E9840];
  eventCopy = event;
  isReminderIntegrationEvent = [eventCopy isReminderIntegrationEvent];
  if ((isReminderIntegrationEvent & 1) != 0 || (optionsCopy & 0x10) != 0)
  {
    v8 = (optionsCopy & 0x10) == 0;
    v9 = MEMORY[0x1E6993488];
    v13[0] = eventCopy;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
    v11 = [v9 spanDecisionInfoForEvents:v10];

    if ([v11 shouldRequestSpan])
    {
      v7 = isReminderIntegrationEvent ^ 1;
    }

    else
    {
      v7 = v8;
    }
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

+ (id)presentUnsubscribeAlertWithOptions:(unint64_t)options viewController:(id)controller sourceView:(id)view sourceRect:(CGRect)rect withCompletionHandler:(id)handler
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  controllerCopy = controller;
  viewCopy = view;
  handlerCopy = handler;
  if (controllerCopy)
  {
    v18 = [self unsubscribeAlertWithOptions:options withCompletionHandler:handlerCopy];
    [v18 _configureAlertControllerWithSourceView:viewCopy sourceRect:0 barButtonItem:{x, y, width, height}];
    alertController = [v18 alertController];
    [controllerCopy presentViewController:alertController animated:1 completion:0];
  }

  else
  {
    v20 = kEKUILogHandle;
    if (os_log_type_enabled(kEKUILogHandle, OS_LOG_TYPE_ERROR))
    {
      *v22 = 0;
      _os_log_impl(&dword_1D3400000, v20, OS_LOG_TYPE_ERROR, "Presenting a delete alert requires a view controller.", v22, 2u);
    }

    v18 = 0;
  }

  return v18;
}

+ (id)unsubscribeAlertWithOptions:(unint64_t)options withCompletionHandler:(id)handler
{
  v5 = [self newAlertControllerWithCompletionHandler:handler];
  [v5 setupUnsubscribeAlertWithOptions:options viewController:0];

  return v5;
}

+ (id)presentDetachAlertWithOptions:(unint64_t)options viewController:(id)controller barButtonItem:(id)item forEvent:(id)event withCompletionHandler:(id)handler
{
  eventCopy = event;
  itemCopy = item;
  controllerCopy = controller;
  v15 = [self newAlertControllerWithCompletionHandler:handler];
  [v15 _presentDetachAlertWithOptions:options viewController:controllerCopy sourceView:0 sourceRect:itemCopy barButtonItem:eventCopy forEvent:{*MEMORY[0x1E695F050], *(MEMORY[0x1E695F050] + 8), *(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24)}];

  return v15;
}

+ (id)presentDetachAlertWithOptions:(unint64_t)options viewController:(id)controller sourceView:(id)view sourceRect:(CGRect)rect forEvent:(id)event withCompletionHandler:(id)handler
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  eventCopy = event;
  viewCopy = view;
  controllerCopy = controller;
  v20 = [self newAlertControllerWithCompletionHandler:handler];
  [v20 _presentDetachAlertWithOptions:options viewController:controllerCopy sourceView:viewCopy sourceRect:0 barButtonItem:eventCopy forEvent:{x, y, width, height}];

  return v20;
}

+ (id)presentAttachmentAlertWithOptions:(unint64_t)options viewController:(id)controller barButtonItem:(id)item forEvent:(id)event withCompletionHandler:(id)handler
{
  eventCopy = event;
  itemCopy = item;
  controllerCopy = controller;
  v15 = [self newAlertControllerWithCompletionHandler:handler];
  [v15 _presentAttachmentsAlertWithOptions:options viewController:controllerCopy barButtonItem:itemCopy forEvent:eventCopy];

  return v15;
}

+ (BOOL)_useSheetForViewController:(id)controller options:(unint64_t)options
{
  optionsCopy = options;
  controllerCopy = controller;
  v6 = controllerCopy;
  if ((optionsCopy & 2) != 0)
  {
    v9 = 0;
    goto LABEL_12;
  }

  if ((optionsCopy & 4) != 0)
  {
    if (!controllerCopy || ([controllerCopy popoverPresentationController], v10 = objc_claimAutoreleasedReturnValue(), v10, v10))
    {
      v9 = 1;
      goto LABEL_12;
    }
  }

  view = [v6 view];
  if (!EKUICurrentHeightSizeClassIsCompact(view))
  {
    view2 = [v6 view];
    if (!EKUICurrentWidthSizeClassIsCompactInViewHierarchy(view2))
    {
      v9 = 1;
      v12 = [v6 _isInContextOfPresentationControllerOfClass:objc_opt_class() effective:1];

      if (v12)
      {
        goto LABEL_12;
      }

      view = [v6 _popoverController];
      v9 = view != 0;
      goto LABEL_7;
    }
  }

  v9 = 1;
LABEL_7:

LABEL_12:
  return v9;
}

- (void)setupUnsubscribeAlertWithOptions:(unint64_t)options viewController:(id)controller
{
  controllerCopy = controller;
  v7 = [MEMORY[0x1E69DC650] alertControllerWithTitle:0 message:0 preferredStyle:{objc_msgSend(objc_opt_class(), "_useSheetForViewController:options:", controllerCopy, options) ^ 1}];
  alertController = self->_alertController;
  self->_alertController = v7;

  objc_initWeak(&location, self);
  v9 = EventKitUIBundle();
  v10 = [v9 localizedStringForKey:@"Are you sure you want to unsubscribe?" value:&stru_1F4EF6790 table:0];
  [(UIAlertController *)self->_alertController setTitle:v10];

  v11 = EventKitUIBundle();
  v12 = [v11 localizedStringForKey:@"Unsubscribing will delete all events from this subscription." value:&stru_1F4EF6790 table:0];
  [(UIAlertController *)self->_alertController setMessage:v12];

  v13 = self->_alertController;
  v14 = MEMORY[0x1E69DC648];
  v15 = EventKitUIBundle();
  v16 = [v15 localizedStringForKey:@"Unsubscribe" value:&stru_1F4EF6790 table:0];
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __81__EKUIRecurrenceAlertController_setupUnsubscribeAlertWithOptions_viewController___block_invoke;
  v34[3] = &unk_1E8440A70;
  objc_copyWeak(&v35, &location);
  v17 = [v14 actionWithTitle:v16 style:2 handler:v34];
  [(UIAlertController *)v13 addAction:v17];

  v18 = self->_alertController;
  v19 = MEMORY[0x1E69DC648];
  v20 = EventKitUIBundle();
  v21 = [v20 localizedStringForKey:@"Unsubscribe and Report Junk" value:&stru_1F4EF6790 table:0];
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __81__EKUIRecurrenceAlertController_setupUnsubscribeAlertWithOptions_viewController___block_invoke_2;
  v32[3] = &unk_1E8440A70;
  objc_copyWeak(&v33, &location);
  v22 = [v19 actionWithTitle:v21 style:2 handler:v32];
  [(UIAlertController *)v18 addAction:v22];

  v23 = self->_alertController;
  v24 = MEMORY[0x1E69DC648];
  _cancelLocalizedString = [objc_opt_class() _cancelLocalizedString];
  v27 = MEMORY[0x1E69E9820];
  v28 = 3221225472;
  v29 = __81__EKUIRecurrenceAlertController_setupUnsubscribeAlertWithOptions_viewController___block_invoke_3;
  v30 = &unk_1E8440A70;
  objc_copyWeak(&v31, &location);
  v26 = [v24 actionWithTitle:_cancelLocalizedString style:1 handler:&v27];
  [(UIAlertController *)v23 addAction:v26, v27, v28, v29, v30];

  objc_destroyWeak(&v31);
  objc_destroyWeak(&v33);
  objc_destroyWeak(&v35);
  objc_destroyWeak(&location);
}

void __81__EKUIRecurrenceAlertController_setupUnsubscribeAlertWithOptions_viewController___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _completeWithSelection:4];
}

void __81__EKUIRecurrenceAlertController_setupUnsubscribeAlertWithOptions_viewController___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _completeWithSelection:5];
}

void __81__EKUIRecurrenceAlertController_setupUnsubscribeAlertWithOptions_viewController___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _completeWithSelection:3];
}

- (BOOL)_setupDeleteAlertForEvents:(id)events
{
  eventsCopy = events;
  v5 = [MEMORY[0x1E6993488] spanDecisionInfoForEvents:eventsCopy];
  shouldRequestSpan = [v5 shouldRequestSpan];
  v7 = shouldRequestSpan;
  if (shouldRequestSpan)
  {
    v33 = shouldRequestSpan;
    proposeFuture = [v5 proposeFuture];
    recurringEventCount = [v5 recurringEventCount];
    v10 = [eventsCopy count];
    v11 = EventKitUIBundle();
    v12 = [v11 localizedStringForKey:@"You’re deleting events." value:&stru_1F4EF6790 table:0];

    v13 = EventKitUIBundle();
    v36 = [v13 localizedStringForKey:@"Delete Only These Events" value:&stru_1F4EF6790 table:0];

    v14 = EventKitUIBundle();
    v15 = v14;
    if (proposeFuture)
    {
      if (recurringEventCount == v10)
      {
        v16 = @"Do you want to delete this and all future occurrences of these events, or only the selected occurrences?";
      }

      else
      {
        v16 = @"Some of the selected events are repeating events. Do you want to delete this and all future occurrences of these events, or only the selected occurrences?";
      }

      v17 = [v14 localizedStringForKey:v16 value:&stru_1F4EF6790 table:0];

      v18 = EventKitUIBundle();
      v19 = [v18 localizedStringForKey:@"Delete All Future Events" value:&stru_1F4EF6790 table:0];
      v35 = 0;
    }

    else
    {
      if (recurringEventCount == v10)
      {
        v20 = @"Do you want to delete all occurrences of these events, or only the selected occurrences?";
      }

      else
      {
        v20 = @"Some of the selected events are repeating events. Do you want to delete all occurrences of these events, or only the selected occurrences?";
      }

      v17 = [v14 localizedStringForKey:v20 value:&stru_1F4EF6790 table:0];

      v18 = EventKitUIBundle();
      v35 = [v18 localizedStringForKey:@"Delete All" value:&stru_1F4EF6790 table:0];
      v19 = 0;
    }

    v34 = v12;
    v21 = [EKUIDeleteAlertController alertControllerWithTitle:v12 message:v17 preferredStyle:1];
    alertController = self->_alertController;
    self->_alertController = v21;

    objc_initWeak(location, self);
    if (v19)
    {
      v23 = MEMORY[0x1E69DC648];
      v43[0] = MEMORY[0x1E69E9820];
      v43[1] = 3221225472;
      v43[2] = __60__EKUIRecurrenceAlertController__setupDeleteAlertForEvents___block_invoke;
      v43[3] = &unk_1E8440A70;
      v24 = &v44;
      objc_copyWeak(&v44, location);
      v25 = [v23 actionWithTitle:v19 style:0 handler:v43];
      [v25 setAccessibilityIdentifier:@"delete-all-future-events-button"];
      [(UIAlertController *)self->_alertController addAction:v25];
    }

    else
    {
      if (!v35)
      {
LABEL_17:
        v27 = MEMORY[0x1E69DC648];
        v39[0] = MEMORY[0x1E69E9820];
        v39[1] = 3221225472;
        v39[2] = __60__EKUIRecurrenceAlertController__setupDeleteAlertForEvents___block_invoke_3;
        v39[3] = &unk_1E8440A70;
        objc_copyWeak(&v40, location);
        v28 = [v27 actionWithTitle:v36 style:0 handler:v39];
        [v28 setAccessibilityIdentifier:@"delete-only-these-events-button"];
        [(UIAlertController *)self->_alertController addAction:v28];
        v29 = MEMORY[0x1E69DC648];
        _cancelLocalizedString = [objc_opt_class() _cancelLocalizedString];
        v37[0] = MEMORY[0x1E69E9820];
        v37[1] = 3221225472;
        v37[2] = __60__EKUIRecurrenceAlertController__setupDeleteAlertForEvents___block_invoke_4;
        v37[3] = &unk_1E8440A70;
        objc_copyWeak(&v38, location);
        v31 = [v29 actionWithTitle:_cancelLocalizedString style:1 handler:v37];

        [v31 setAccessibilityIdentifier:@"cancel-alert-button"];
        [(UIAlertController *)self->_alertController addAction:v31];

        objc_destroyWeak(&v38);
        objc_destroyWeak(&v40);
        objc_destroyWeak(location);

        v7 = v33;
        goto LABEL_18;
      }

      v26 = MEMORY[0x1E69DC648];
      v41[0] = MEMORY[0x1E69E9820];
      v41[1] = 3221225472;
      v41[2] = __60__EKUIRecurrenceAlertController__setupDeleteAlertForEvents___block_invoke_2;
      v41[3] = &unk_1E8440A70;
      v24 = &v42;
      objc_copyWeak(&v42, location);
      v25 = [v26 actionWithTitle:v35 style:0 handler:v41];
      [v25 setAccessibilityIdentifier:@"delete-all-events-button"];
      [(UIAlertController *)self->_alertController addAction:v25];
    }

    objc_destroyWeak(v24);
    goto LABEL_17;
  }

  [(EKUIRecurrenceAlertController *)self _completeWithSelection:0];
LABEL_18:

  return v7;
}

void __60__EKUIRecurrenceAlertController__setupDeleteAlertForEvents___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _completeWithSelection:1];
}

void __60__EKUIRecurrenceAlertController__setupDeleteAlertForEvents___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _completeWithSelection:2];
}

void __60__EKUIRecurrenceAlertController__setupDeleteAlertForEvents___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _completeWithSelection:0];
}

void __60__EKUIRecurrenceAlertController__setupDeleteAlertForEvents___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _completeWithSelection:3];
}

+ (id)_defaultStringForDeleteTitleWhenNotRecurring:(id)recurring
{
  isReminderIntegrationEvent = [recurring isReminderIntegrationEvent];
  v4 = EventKitUIBundle();
  v5 = v4;
  if (isReminderIntegrationEvent)
  {
    v6 = @"Are you sure you want to delete this reminder?";
  }

  else
  {
    v6 = @"Are you sure you want to delete this event?";
  }

  v7 = [v4 localizedStringForKey:v6 value:&stru_1F4EF6790 table:0];

  return v7;
}

- (void)setupDeleteAlertWithOptions:(unint64_t)options viewController:(id)controller forEvent:(id)event stringForDeleteButton:(id)button
{
  controllerCopy = controller;
  eventCopy = event;
  buttonCopy = button;
  v13 = [EKUIRecurrenceAlertController _determineChoicesForEvent:eventCopy options:options];
  v14 = +[EKUIDeleteAlertController alertControllerWithTitle:message:preferredStyle:](EKUIDeleteAlertController, "alertControllerWithTitle:message:preferredStyle:", 0, 0, [objc_opt_class() _useSheetForViewController:controllerCopy options:options] ^ 1);
  alertController = self->_alertController;
  self->_alertController = v14;

  inited = objc_initWeak(location, self);
  if (MEMORY[0x1D38B98D0](inited))
  {
    v17 = 2;
  }

  else
  {
    v17 = 0;
  }

  v39 = buttonCopy;
  if ((v13 & 6) != 0)
  {
    v18 = EventKitUIBundle();
    v19 = [v18 localizedStringForKey:@"Are you sure you want to delete this event? This is a repeating event." value:&stru_1F4EF6790 table:0];
    [(UIAlertController *)self->_alertController setTitle:v19];

    v20 = MEMORY[0x1E69DC648];
    v21 = EventKitUIBundle();
    v22 = [v21 localizedStringForKey:@"Delete This Event Only" value:&stru_1F4EF6790 table:0];
    v50[0] = MEMORY[0x1E69E9820];
    v50[1] = 3221225472;
    v50[2] = __107__EKUIRecurrenceAlertController_setupDeleteAlertWithOptions_viewController_forEvent_stringForDeleteButton___block_invoke;
    v50[3] = &unk_1E8440A70;
    v23 = &v51;
    objc_copyWeak(&v51, location);
    v24 = [v20 actionWithTitle:v22 style:v17 handler:v50];

    [v24 setAccessibilityIdentifier:@"delete-this-event-only-alert-button"];
    [(UIAlertController *)self->_alertController addAction:v24];
    v25 = MEMORY[0x1E69DC648];
    v26 = EventKitUIBundle();
    if ((v13 & 4) != 0)
    {
      v36 = [v26 localizedStringForKey:@"Delete All Events" value:&stru_1F4EF6790 table:0];
      v48[0] = MEMORY[0x1E69E9820];
      v48[1] = 3221225472;
      v48[2] = __107__EKUIRecurrenceAlertController_setupDeleteAlertWithOptions_viewController_forEvent_stringForDeleteButton___block_invoke_2;
      v48[3] = &unk_1E8440A70;
      v28 = &v49;
      objc_copyWeak(&v49, location);
      v29 = [v25 actionWithTitle:v36 style:v17 handler:v48];

      [v29 setAccessibilityIdentifier:@"delete-all-events-alert-button"];
      [(UIAlertController *)self->_alertController addAction:v29];
    }

    else
    {
      v27 = [v26 localizedStringForKey:@"Delete All Future Events" value:&stru_1F4EF6790 table:0];
      v46[0] = MEMORY[0x1E69E9820];
      v46[1] = 3221225472;
      v46[2] = __107__EKUIRecurrenceAlertController_setupDeleteAlertWithOptions_viewController_forEvent_stringForDeleteButton___block_invoke_3;
      v46[3] = &unk_1E8440A70;
      v28 = &v47;
      objc_copyWeak(&v47, location);
      v29 = [v25 actionWithTitle:v27 style:v17 handler:v46];

      [v29 setAccessibilityIdentifier:@"delete-all-future-events-alert-button"];
      [(UIAlertController *)self->_alertController addAction:v29];
    }

    objc_destroyWeak(v28);
    v37 = MEMORY[0x1E69DC648];
    _cancelLocalizedString = [objc_opt_class() _cancelLocalizedString];
    v44[0] = MEMORY[0x1E69E9820];
    v44[1] = 3221225472;
    v44[2] = __107__EKUIRecurrenceAlertController_setupDeleteAlertWithOptions_viewController_forEvent_stringForDeleteButton___block_invoke_4;
    v44[3] = &unk_1E8440A70;
    v34 = &v45;
    objc_copyWeak(&v45, location);
    v35 = [v37 actionWithTitle:_cancelLocalizedString style:1 handler:v44];

    [v35 setAccessibilityIdentifier:@"cancel-alert-button"];
    [(UIAlertController *)self->_alertController addAction:v35];
  }

  else
  {
    v30 = [objc_opt_class() _defaultStringForDeleteTitleWhenNotRecurring:eventCopy];
    [(UIAlertController *)self->_alertController setTitle:v30];

    v31 = MEMORY[0x1E69DC648];
    v42[0] = MEMORY[0x1E69E9820];
    v42[1] = 3221225472;
    v42[2] = __107__EKUIRecurrenceAlertController_setupDeleteAlertWithOptions_viewController_forEvent_stringForDeleteButton___block_invoke_5;
    v42[3] = &unk_1E8440A70;
    v23 = &v43;
    objc_copyWeak(&v43, location);
    v24 = [v31 actionWithTitle:buttonCopy style:2 handler:v42];
    [v24 setAccessibilityIdentifier:@"delete-alert-button"];
    [(UIAlertController *)self->_alertController addAction:v24];
    v32 = MEMORY[0x1E69DC648];
    _cancelLocalizedString2 = [objc_opt_class() _cancelLocalizedString];
    v40[0] = MEMORY[0x1E69E9820];
    v40[1] = 3221225472;
    v40[2] = __107__EKUIRecurrenceAlertController_setupDeleteAlertWithOptions_viewController_forEvent_stringForDeleteButton___block_invoke_6;
    v40[3] = &unk_1E8440A70;
    v34 = &v41;
    objc_copyWeak(&v41, location);
    v35 = [v32 actionWithTitle:_cancelLocalizedString2 style:1 handler:v40];

    [v35 setAccessibilityIdentifier:@"cancel-alert-button"];
    [(UIAlertController *)self->_alertController addAction:v35];
  }

  objc_destroyWeak(v34);
  objc_destroyWeak(v23);
  objc_destroyWeak(location);
}

void __107__EKUIRecurrenceAlertController_setupDeleteAlertWithOptions_viewController_forEvent_stringForDeleteButton___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _completeWithSelection:0];
}

void __107__EKUIRecurrenceAlertController_setupDeleteAlertWithOptions_viewController_forEvent_stringForDeleteButton___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _completeWithSelection:2];
}

void __107__EKUIRecurrenceAlertController_setupDeleteAlertWithOptions_viewController_forEvent_stringForDeleteButton___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _completeWithSelection:1];
}

void __107__EKUIRecurrenceAlertController_setupDeleteAlertWithOptions_viewController_forEvent_stringForDeleteButton___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _completeWithSelection:3];
}

void __107__EKUIRecurrenceAlertController_setupDeleteAlertWithOptions_viewController_forEvent_stringForDeleteButton___block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _completeWithSelection:0];
}

void __107__EKUIRecurrenceAlertController_setupDeleteAlertWithOptions_viewController_forEvent_stringForDeleteButton___block_invoke_6(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _completeWithSelection:3];
}

- (void)_presentDeleteAlertWithOptions:(unint64_t)options viewController:(id)controller sourceView:(id)view sourceRect:(CGRect)rect barButtonItem:(id)item forEvent:(id)event stringForDeleteButton:(id)button
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  controllerCopy = controller;
  viewCopy = view;
  itemCopy = item;
  eventCopy = event;
  buttonCopy = button;
  if (controllerCopy)
  {
    if ([objc_opt_class() shouldShowDeleteAlertForEvent:eventCopy options:options])
    {
      [(EKUIRecurrenceAlertController *)self setupDeleteAlertWithOptions:options viewController:controllerCopy forEvent:eventCopy stringForDeleteButton:buttonCopy];
      [(EKUIRecurrenceAlertController *)self _configureAlertControllerWithSourceView:viewCopy sourceRect:itemCopy barButtonItem:x, y, width, height];
      [controllerCopy presentViewController:self->_alertController animated:1 completion:0];
    }

    else
    {
      [(EKUIRecurrenceAlertController *)self _completeWithSelection:0];
    }
  }

  else
  {
    v24 = kEKUILogHandle;
    if (os_log_type_enabled(kEKUILogHandle, OS_LOG_TYPE_ERROR))
    {
      *v25 = 0;
      _os_log_impl(&dword_1D3400000, v24, OS_LOG_TYPE_ERROR, "Presenting a delete alert requires a view controller.", v25, 2u);
    }
  }
}

- (void)_presentDetachAlertWithOptions:(unint64_t)options viewController:(id)controller sourceView:(id)view sourceRect:(CGRect)rect barButtonItem:(id)item forEvent:(id)event
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  controllerCopy = controller;
  viewCopy = view;
  itemCopy = item;
  eventCopy = event;
  if (controllerCopy)
  {
    if ([objc_opt_class() shouldShowDetachAlertForEvent:eventCopy options:options])
    {
      v45 = itemCopy;
      v21 = [EKUIRecurrenceAlertController _determineChoicesForEvent:eventCopy options:options];
      v22 = [objc_opt_class() _useSheetForViewController:controllerCopy options:options] ^ 1;
      if ((options & 8) != 0)
      {
        v25 = EventKitUIBundle();
        v23 = [v25 localizedStringForKey:@"Changes to attachments will apply to all occurrences." value:&stru_1F4EF6790 table:0];
      }

      else
      {
        v23 = 0;
      }

      v26 = MEMORY[0x1E69DC650];
      v27 = EventKitUIBundle();
      v28 = [v27 localizedStringForKey:@"How should this change be applied?" value:&stru_1F4EF6790 table:0];
      v29 = [v26 alertControllerWithTitle:v28 message:v23 preferredStyle:v22];
      alertController = self->_alertController;
      self->_alertController = v29;

      objc_initWeak(buf, self);
      v31 = MEMORY[0x1E69DC648];
      if (v21)
      {
        v32 = EventKitUIBundle();
        v33 = [v32 localizedStringForKey:@"Save for This Event Only" value:&stru_1F4EF6790 table:0];
        v57[0] = MEMORY[0x1E69E9820];
        v57[1] = 3221225472;
        v57[2] = __124__EKUIRecurrenceAlertController__presentDetachAlertWithOptions_viewController_sourceView_sourceRect_barButtonItem_forEvent___block_invoke;
        v57[3] = &unk_1E8440A70;
        objc_copyWeak(&v58, buf);
        v34 = [v31 actionWithTitle:v33 style:0 handler:v57];

        location = &v58;
        [v34 setAccessibilityIdentifier:@"recurrence-save-for-this-event-button"];
        [(UIAlertController *)self->_alertController addAction:v34];
        v35 = MEMORY[0x1E69DC648];
        if ((v21 & 4) != 0)
        {
          [objc_opt_class() _detachAllLocalizedString];
        }

        else
        {
          [objc_opt_class() _detachFutureLocalizedString];
        }
        v41 = ;
        v54[0] = MEMORY[0x1E69E9820];
        v54[1] = 3221225472;
        v54[2] = __124__EKUIRecurrenceAlertController__presentDetachAlertWithOptions_viewController_sourceView_sourceRect_barButtonItem_forEvent___block_invoke_2;
        v54[3] = &unk_1E84414A0;
        v39 = &v55;
        objc_copyWeak(&v55, buf);
        v56 = (v21 & 4) >> 2;
        v40 = [v35 actionWithTitle:v41 style:0 handler:v54];

        [v40 setAccessibilityIdentifier:@"recurrence-save-for-all-future-events-button"];
        [(UIAlertController *)self->_alertController addAction:v40];
        v42 = MEMORY[0x1E69DC648];
        _cancelLocalizedString = [objc_opt_class() _cancelLocalizedString];
        v52[0] = MEMORY[0x1E69E9820];
        v52[1] = 3221225472;
        v52[2] = __124__EKUIRecurrenceAlertController__presentDetachAlertWithOptions_viewController_sourceView_sourceRect_barButtonItem_forEvent___block_invoke_3;
        v52[3] = &unk_1E8440A70;
        objc_copyWeak(&v53, buf);
        v44 = [v42 actionWithTitle:_cancelLocalizedString style:1 handler:v52];

        [v44 setAccessibilityIdentifier:@"cancel-alert-button"];
        [(UIAlertController *)self->_alertController addAction:v44];

        objc_destroyWeak(&v53);
      }

      else
      {
        if ((v21 & 4) != 0)
        {
          [objc_opt_class() _detachAllLocalizedString];
        }

        else
        {
          [objc_opt_class() _detachFutureLocalizedString];
        }
        v36 = ;
        v49[0] = MEMORY[0x1E69E9820];
        v49[1] = 3221225472;
        v49[2] = __124__EKUIRecurrenceAlertController__presentDetachAlertWithOptions_viewController_sourceView_sourceRect_barButtonItem_forEvent___block_invoke_4;
        v49[3] = &unk_1E84414A0;
        objc_copyWeak(&v50, buf);
        v51 = (v21 & 4) >> 2;
        v34 = [v31 actionWithTitle:v36 style:2 handler:v49];

        location = &v50;
        [v34 setAccessibilityIdentifier:@"recurrence-save-for-all-future-events-button"];
        [(UIAlertController *)self->_alertController addAction:v34];
        v37 = MEMORY[0x1E69DC648];
        _cancelLocalizedString2 = [objc_opt_class() _cancelLocalizedString];
        v47[0] = MEMORY[0x1E69E9820];
        v47[1] = 3221225472;
        v47[2] = __124__EKUIRecurrenceAlertController__presentDetachAlertWithOptions_viewController_sourceView_sourceRect_barButtonItem_forEvent___block_invoke_5;
        v47[3] = &unk_1E8440A70;
        v39 = &v48;
        objc_copyWeak(&v48, buf);
        v40 = [v37 actionWithTitle:_cancelLocalizedString2 style:1 handler:v47];

        [v40 setAccessibilityIdentifier:@"cancel-alert-button"];
        [(UIAlertController *)self->_alertController addAction:v40];
      }

      itemCopy = v45;

      objc_destroyWeak(v39);
      objc_destroyWeak(location);
      [(EKUIRecurrenceAlertController *)self _configureAlertControllerWithSourceView:viewCopy sourceRect:v45 barButtonItem:x, y, width, height];
      [controllerCopy presentViewController:self->_alertController animated:1 completion:0];
      objc_destroyWeak(buf);
    }

    else
    {
      [(EKUIRecurrenceAlertController *)self _completeWithSelection:0];
    }
  }

  else
  {
    v24 = kEKUILogHandle;
    if (os_log_type_enabled(kEKUILogHandle, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_1D3400000, v24, OS_LOG_TYPE_ERROR, "Presenting a detach alert requires a view controller.", buf, 2u);
    }
  }
}

void __124__EKUIRecurrenceAlertController__presentDetachAlertWithOptions_viewController_sourceView_sourceRect_barButtonItem_forEvent___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _completeWithSelection:0];
}

void __124__EKUIRecurrenceAlertController__presentDetachAlertWithOptions_viewController_sourceView_sourceRect_barButtonItem_forEvent___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (*(a1 + 40))
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  [WeakRetained _completeWithSelection:v3];
}

void __124__EKUIRecurrenceAlertController__presentDetachAlertWithOptions_viewController_sourceView_sourceRect_barButtonItem_forEvent___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _completeWithSelection:3];
}

void __124__EKUIRecurrenceAlertController__presentDetachAlertWithOptions_viewController_sourceView_sourceRect_barButtonItem_forEvent___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (*(a1 + 40))
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  [WeakRetained _completeWithSelection:v3];
}

void __124__EKUIRecurrenceAlertController__presentDetachAlertWithOptions_viewController_sourceView_sourceRect_barButtonItem_forEvent___block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _completeWithSelection:3];
}

- (void)_presentAttachmentsAlertWithOptions:(unint64_t)options viewController:(id)controller barButtonItem:(id)item forEvent:(id)event
{
  controllerCopy = controller;
  itemCopy = item;
  eventCopy = event;
  if (controllerCopy)
  {
    v13 = [objc_opt_class() _useSheetForViewController:controllerCopy options:options] ^ 1;
    v14 = MEMORY[0x1E69DC650];
    v15 = EventKitUIBundle();
    v16 = [v15 localizedStringForKey:@"This is a repeating event." value:&stru_1F4EF6790 table:0];
    v17 = EventKitUIBundle();
    v18 = [v17 localizedStringForKey:@"Attachment changes must be applied to all occurrences." value:&stru_1F4EF6790 table:0];
    v19 = [v14 alertControllerWithTitle:v16 message:v18 preferredStyle:v13];
    alertController = self->_alertController;
    self->_alertController = v19;

    objc_initWeak(location, self);
    v21 = MEMORY[0x1E69DC648];
    v22 = EventKitUIBundle();
    v23 = [v22 localizedStringForKey:@"Save for all recurrences" value:&stru_1F4EF6790 table:0];
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __107__EKUIRecurrenceAlertController__presentAttachmentsAlertWithOptions_viewController_barButtonItem_forEvent___block_invoke;
    v34[3] = &unk_1E8440A70;
    objc_copyWeak(&v35, location);
    v24 = [v21 actionWithTitle:v23 style:0 handler:v34];

    [v24 setAccessibilityIdentifier:@"recurrence-save-for-all-events-button"];
    [(UIAlertController *)self->_alertController addAction:v24];
    v25 = MEMORY[0x1E69DC648];
    _cancelLocalizedString = [objc_opt_class() _cancelLocalizedString];
    v29 = MEMORY[0x1E69E9820];
    v30 = 3221225472;
    v31 = __107__EKUIRecurrenceAlertController__presentAttachmentsAlertWithOptions_viewController_barButtonItem_forEvent___block_invoke_2;
    v32 = &unk_1E8440A70;
    objc_copyWeak(&v33, location);
    v27 = [v25 actionWithTitle:_cancelLocalizedString style:1 handler:&v29];

    [v27 setAccessibilityIdentifier:{@"cancel-alert-button", v29, v30, v31, v32}];
    [(UIAlertController *)self->_alertController addAction:v27];
    [(EKUIRecurrenceAlertController *)self _configureAlertControllerWithSourceView:0 sourceRect:itemCopy barButtonItem:*MEMORY[0x1E695F050], *(MEMORY[0x1E695F050] + 8), *(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24)];
    [controllerCopy presentViewController:self->_alertController animated:1 completion:0];

    objc_destroyWeak(&v33);
    objc_destroyWeak(&v35);
    objc_destroyWeak(location);
  }

  else
  {
    v28 = kEKUILogHandle;
    if (os_log_type_enabled(kEKUILogHandle, OS_LOG_TYPE_ERROR))
    {
      LOWORD(location[0]) = 0;
      _os_log_impl(&dword_1D3400000, v28, OS_LOG_TYPE_ERROR, "Presenting a detach alert requires a view controller.", location, 2u);
    }
  }
}

void __107__EKUIRecurrenceAlertController__presentAttachmentsAlertWithOptions_viewController_barButtonItem_forEvent___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _completeWithSelection:2];
}

void __107__EKUIRecurrenceAlertController__presentAttachmentsAlertWithOptions_viewController_barButtonItem_forEvent___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _completeWithSelection:3];
}

- (void)_configureAlertControllerWithSourceView:(id)view sourceRect:(CGRect)rect barButtonItem:(id)item
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  viewCopy = view;
  itemCopy = item;
  if (viewCopy)
  {
    popoverPresentationController = [(UIAlertController *)self->_alertController popoverPresentationController];
    [popoverPresentationController setSourceView:viewCopy];

    popoverPresentationController2 = [(UIAlertController *)self->_alertController popoverPresentationController];
    [popoverPresentationController2 setSourceRect:{x, y, width, height}];
  }

  else
  {
    if (!itemCopy)
    {
      goto LABEL_6;
    }

    popoverPresentationController2 = [(UIAlertController *)self->_alertController popoverPresentationController];
    [popoverPresentationController2 setBarButtonItem:itemCopy];
  }

LABEL_6:
}

+ (id)_detachAllLocalizedString
{
  v2 = EventKitUIBundle();
  v3 = [v2 localizedStringForKey:@"Save for All Events" value:&stru_1F4EF6790 table:0];

  return v3;
}

+ (id)_detachFutureLocalizedString
{
  v2 = EventKitUIBundle();
  v3 = [v2 localizedStringForKey:@"Save for Future Events" value:&stru_1F4EF6790 table:0];

  return v3;
}

- (void)cancelAnimated:(BOOL)animated
{
  animatedCopy = animated;
  if (([(UIAlertController *)self->_alertController isBeingDismissed]& 1) == 0)
  {
    alertController = self->_alertController;

    [(UIAlertController *)alertController dismissViewControllerAnimated:animatedCopy completion:0];
  }
}

- (void)_completeWithSelection:(unint64_t)selection
{
  completionHandler = self->_completionHandler;
  if (completionHandler)
  {
    completionHandler[2](completionHandler, selection);
  }

  [(EKUIRecurrenceAlertController *)self _cleanup];
}

- (void)_cleanup
{
  completionHandler = self->_completionHandler;
  self->_completionHandler = 0;

  alertController = self->_alertController;
  self->_alertController = 0;
}

+ (id)_cancelLocalizedString
{
  v2 = EventKitUIBundle();
  v3 = [v2 localizedStringForKey:@"Cancel - recurrence alert controller" value:@"Cancel" table:0];

  return v3;
}

+ (int)_determineChoicesForEvent:(id)event options:(unint64_t)options
{
  v30[1] = *MEMORY[0x1E69E9840];
  eventCopy = event;
  v6 = eventCopy;
  if (!eventCopy)
  {
LABEL_20:
    v9 = 1;
    goto LABEL_21;
  }

  canDetachSingleOccurrence = [eventCopy canDetachSingleOccurrence];
  if ((options & 1) != 0 || ![v6 isOrWasPartOfRecurringSeries])
  {
LABEL_17:
    if ((canDetachSingleOccurrence & 1) == 0)
    {
      v17 = kEKUILogHandle;
      if (os_log_type_enabled(kEKUILogHandle, OS_LOG_TYPE_ERROR))
      {
        v18 = MEMORY[0x1E696AD98];
        v19 = v17;
        v20 = [v18 numberWithUnsignedInteger:options];
        v26 = 138412546;
        v27 = v6;
        v28 = 2112;
        v29 = v20;
        _os_log_impl(&dword_1D3400000, v19, OS_LOG_TYPE_ERROR, "No choices for event:%@ options:%@", &v26, 0x16u);
      }
    }

    goto LABEL_20;
  }

  hasChanges = [v6 hasChanges];
  if ((options & 8) != 0 && !hasChanges)
  {
    goto LABEL_6;
  }

  changeSet = [v6 changeSet];
  v11 = *MEMORY[0x1E6992570];
  if ([changeSet hasUnsavedChangeForKey:*MEMORY[0x1E6992570]])
  {
    v30[0] = v11;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:1];
    v13 = [v6 hasUnsavedChangesIgnoreKeys:v12];

    if (!v13)
    {
LABEL_6:
      v9 = 4;
      goto LABEL_21;
    }
  }

  else
  {
  }

  if ([v6 isExternallyOrganizedInvitation])
  {
    goto LABEL_13;
  }

  singleRecurrenceRule = [v6 singleRecurrenceRule];
  recurrenceEndHasChanges = [singleRecurrenceRule recurrenceEndHasChanges];

  if (recurrenceEndHasChanges)
  {
    goto LABEL_13;
  }

  calendar = [v6 calendar];
  source = [calendar source];
  constraints = [source constraints];
  if ([constraints prohibitsSlicingEventsWithAttendees])
  {
    if ([v6 hasAttendees])
    {

LABEL_13:
      v16 = 1;
      goto LABEL_14;
    }

    _hadAttendees = [v6 _hadAttendees];

    if (_hadAttendees)
    {
      goto LABEL_13;
    }
  }

  else
  {
  }

  v16 = 0;
LABEL_14:
  if (![v6 canWeInferUpdateToComplexRecurrenceRule])
  {
    goto LABEL_17;
  }

  if (v16)
  {
    v9 = canDetachSingleOccurrence | 4;
  }

  else
  {
    v9 = canDetachSingleOccurrence | 2;
  }

LABEL_21:

  return v9;
}

@end