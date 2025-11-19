@interface EKUIRecurrenceAlertController
+ (BOOL)_useSheetForViewController:(id)a3 options:(unint64_t)a4;
+ (BOOL)shouldShowDeleteAlertForEvent:(id)a3 options:(unint64_t)a4;
+ (id)_cancelLocalizedString;
+ (id)_defaultStringForDeleteButtonForEvent:(id)a3;
+ (id)_defaultStringForDeleteTitleWhenNotRecurring:(id)a3;
+ (id)_detachAllLocalizedString;
+ (id)_detachFutureLocalizedString;
+ (id)deleteAlertWithOptions:(unint64_t)a3 forEvent:(id)a4 stringForDeleteButton:(id)a5 withCompletionHandler:(id)a6;
+ (id)newAlertControllerWithCompletionHandler:(id)a3;
+ (id)presentAttachmentAlertWithOptions:(unint64_t)a3 viewController:(id)a4 barButtonItem:(id)a5 forEvent:(id)a6 withCompletionHandler:(id)a7;
+ (id)presentDeleteAlertWithOptions:(unint64_t)a3 viewController:(id)a4 barButtonItem:(id)a5 forEvent:(id)a6 stringForDeleteButton:(id)a7 withCompletionHandler:(id)a8;
+ (id)presentDeleteAlertWithOptions:(unint64_t)a3 viewController:(id)a4 forEvents:(id)a5 withCompletionHandler:(id)a6;
+ (id)presentDeleteAlertWithOptions:(unint64_t)a3 viewController:(id)a4 sourceView:(id)a5 sourceRect:(CGRect)a6 forEvent:(id)a7 stringForDeleteButton:(id)a8 withCompletionHandler:(id)a9;
+ (id)presentDetachAlertWithOptions:(unint64_t)a3 viewController:(id)a4 barButtonItem:(id)a5 forEvent:(id)a6 withCompletionHandler:(id)a7;
+ (id)presentDetachAlertWithOptions:(unint64_t)a3 viewController:(id)a4 sourceView:(id)a5 sourceRect:(CGRect)a6 forEvent:(id)a7 withCompletionHandler:(id)a8;
+ (id)presentUnsubscribeAlertWithOptions:(unint64_t)a3 viewController:(id)a4 sourceView:(id)a5 sourceRect:(CGRect)a6 withCompletionHandler:(id)a7;
+ (id)unsubscribeAlertWithOptions:(unint64_t)a3 withCompletionHandler:(id)a4;
+ (int)_determineChoicesForEvent:(id)a3 options:(unint64_t)a4;
- (BOOL)_setupDeleteAlertForEvents:(id)a3;
- (BOOL)isCurrentlyShowingAlert;
- (void)_cleanup;
- (void)_completeWithSelection:(unint64_t)a3;
- (void)_configureAlertControllerWithSourceView:(id)a3 sourceRect:(CGRect)a4 barButtonItem:(id)a5;
- (void)_presentAttachmentsAlertWithOptions:(unint64_t)a3 viewController:(id)a4 barButtonItem:(id)a5 forEvent:(id)a6;
- (void)_presentDeleteAlertWithOptions:(unint64_t)a3 viewController:(id)a4 sourceView:(id)a5 sourceRect:(CGRect)a6 barButtonItem:(id)a7 forEvent:(id)a8 stringForDeleteButton:(id)a9;
- (void)_presentDetachAlertWithOptions:(unint64_t)a3 viewController:(id)a4 sourceView:(id)a5 sourceRect:(CGRect)a6 barButtonItem:(id)a7 forEvent:(id)a8;
- (void)cancelAnimated:(BOOL)a3;
- (void)dealloc;
- (void)setupDeleteAlertWithOptions:(unint64_t)a3 viewController:(id)a4 forEvent:(id)a5 stringForDeleteButton:(id)a6;
- (void)setupUnsubscribeAlertWithOptions:(unint64_t)a3 viewController:(id)a4;
@end

@implementation EKUIRecurrenceAlertController

- (void)dealloc
{
  [(EKUIRecurrenceAlertController *)self cancelAnimated:0];
  v3.receiver = self;
  v3.super_class = EKUIRecurrenceAlertController;
  [(EKUIRecurrenceAlertController *)&v3 dealloc];
}

+ (id)newAlertControllerWithCompletionHandler:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  [v4 setCompletionHandler:v3];

  return v4;
}

- (BOOL)isCurrentlyShowingAlert
{
  v3 = [(UIAlertController *)self->_alertController view];
  v4 = [v3 superview];
  if (v4)
  {
    v5 = [(UIAlertController *)self->_alertController presentingViewController];
    if (v5)
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

+ (id)_defaultStringForDeleteButtonForEvent:(id)a3
{
  v3 = [a3 isReminderIntegrationEvent];
  v4 = EventKitUIBundle();
  v5 = v4;
  if (v3)
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

+ (id)presentDeleteAlertWithOptions:(unint64_t)a3 viewController:(id)a4 barButtonItem:(id)a5 forEvent:(id)a6 stringForDeleteButton:(id)a7 withCompletionHandler:(id)a8
{
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = [a1 newAlertControllerWithCompletionHandler:a8];
  v19 = v17;
  if (!v17)
  {
    v19 = [a1 _defaultStringForDeleteButtonForEvent:v16];
  }

  [v18 _presentDeleteAlertWithOptions:a3 viewController:v14 sourceView:0 sourceRect:v15 barButtonItem:v16 forEvent:v19 stringForDeleteButton:{*MEMORY[0x1E695F050], *(MEMORY[0x1E695F050] + 8), *(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24)}];
  if (!v17)
  {
  }

  return v18;
}

+ (id)presentDeleteAlertWithOptions:(unint64_t)a3 viewController:(id)a4 sourceView:(id)a5 sourceRect:(CGRect)a6 forEvent:(id)a7 stringForDeleteButton:(id)a8 withCompletionHandler:(id)a9
{
  height = a6.size.height;
  width = a6.size.width;
  y = a6.origin.y;
  x = a6.origin.x;
  v19 = a4;
  v20 = a5;
  v21 = a7;
  v22 = a8;
  v23 = [a1 newAlertControllerWithCompletionHandler:a9];
  v24 = v23;
  if (v22)
  {
    [v23 _presentDeleteAlertWithOptions:a3 viewController:v19 sourceView:v20 sourceRect:0 barButtonItem:v21 forEvent:v22 stringForDeleteButton:{x, y, width, height}];
  }

  else
  {
    v25 = [a1 _defaultStringForDeleteButtonForEvent:v21];
    [v24 _presentDeleteAlertWithOptions:a3 viewController:v19 sourceView:v20 sourceRect:0 barButtonItem:v21 forEvent:v25 stringForDeleteButton:{x, y, width, height}];
  }

  return v24;
}

+ (id)presentDeleteAlertWithOptions:(unint64_t)a3 viewController:(id)a4 forEvents:(id)a5 withCompletionHandler:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = [a1 newAlertControllerWithCompletionHandler:a6];
  if ([v11 count] == 1)
  {
    v13 = [v11 objectAtIndexedSubscript:0];
    v14 = [v11 objectAtIndexedSubscript:0];
    v15 = [a1 _defaultStringForDeleteButtonForEvent:v14];
    [v12 _presentDeleteAlertWithOptions:a3 viewController:v10 sourceView:0 sourceRect:0 barButtonItem:v13 forEvent:v15 stringForDeleteButton:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  }

  else if ([v12 _setupDeleteAlertForEvents:v11])
  {
    v13 = [v12 alertController];
    [v10 presentViewController:v13 animated:1 completion:0];
  }

  else
  {
    v13 = v12;
    v12 = 0;
  }

  return v12;
}

+ (id)deleteAlertWithOptions:(unint64_t)a3 forEvent:(id)a4 stringForDeleteButton:(id)a5 withCompletionHandler:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  if ([a1 shouldShowDeleteAlertForEvent:v10 options:a3])
  {
    v13 = [a1 newAlertControllerWithCompletionHandler:v12];
    v14 = v13;
    if (v11)
    {
      [v13 setupDeleteAlertWithOptions:a3 viewController:0 forEvent:v10 stringForDeleteButton:v11];
    }

    else
    {
      v15 = [a1 _defaultStringForDeleteButtonForEvent:v10];
      [v14 setupDeleteAlertWithOptions:a3 viewController:0 forEvent:v10 stringForDeleteButton:v15];
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

+ (BOOL)shouldShowDeleteAlertForEvent:(id)a3 options:(unint64_t)a4
{
  v4 = a4;
  v13[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [v5 isReminderIntegrationEvent];
  if ((v6 & 1) != 0 || (v4 & 0x10) != 0)
  {
    v8 = (v4 & 0x10) == 0;
    v9 = MEMORY[0x1E6993488];
    v13[0] = v5;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
    v11 = [v9 spanDecisionInfoForEvents:v10];

    if ([v11 shouldRequestSpan])
    {
      v7 = v6 ^ 1;
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

+ (id)presentUnsubscribeAlertWithOptions:(unint64_t)a3 viewController:(id)a4 sourceView:(id)a5 sourceRect:(CGRect)a6 withCompletionHandler:(id)a7
{
  height = a6.size.height;
  width = a6.size.width;
  y = a6.origin.y;
  x = a6.origin.x;
  v15 = a4;
  v16 = a5;
  v17 = a7;
  if (v15)
  {
    v18 = [a1 unsubscribeAlertWithOptions:a3 withCompletionHandler:v17];
    [v18 _configureAlertControllerWithSourceView:v16 sourceRect:0 barButtonItem:{x, y, width, height}];
    v19 = [v18 alertController];
    [v15 presentViewController:v19 animated:1 completion:0];
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

+ (id)unsubscribeAlertWithOptions:(unint64_t)a3 withCompletionHandler:(id)a4
{
  v5 = [a1 newAlertControllerWithCompletionHandler:a4];
  [v5 setupUnsubscribeAlertWithOptions:a3 viewController:0];

  return v5;
}

+ (id)presentDetachAlertWithOptions:(unint64_t)a3 viewController:(id)a4 barButtonItem:(id)a5 forEvent:(id)a6 withCompletionHandler:(id)a7
{
  v12 = a6;
  v13 = a5;
  v14 = a4;
  v15 = [a1 newAlertControllerWithCompletionHandler:a7];
  [v15 _presentDetachAlertWithOptions:a3 viewController:v14 sourceView:0 sourceRect:v13 barButtonItem:v12 forEvent:{*MEMORY[0x1E695F050], *(MEMORY[0x1E695F050] + 8), *(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24)}];

  return v15;
}

+ (id)presentDetachAlertWithOptions:(unint64_t)a3 viewController:(id)a4 sourceView:(id)a5 sourceRect:(CGRect)a6 forEvent:(id)a7 withCompletionHandler:(id)a8
{
  height = a6.size.height;
  width = a6.size.width;
  y = a6.origin.y;
  x = a6.origin.x;
  v17 = a7;
  v18 = a5;
  v19 = a4;
  v20 = [a1 newAlertControllerWithCompletionHandler:a8];
  [v20 _presentDetachAlertWithOptions:a3 viewController:v19 sourceView:v18 sourceRect:0 barButtonItem:v17 forEvent:{x, y, width, height}];

  return v20;
}

+ (id)presentAttachmentAlertWithOptions:(unint64_t)a3 viewController:(id)a4 barButtonItem:(id)a5 forEvent:(id)a6 withCompletionHandler:(id)a7
{
  v12 = a6;
  v13 = a5;
  v14 = a4;
  v15 = [a1 newAlertControllerWithCompletionHandler:a7];
  [v15 _presentAttachmentsAlertWithOptions:a3 viewController:v14 barButtonItem:v13 forEvent:v12];

  return v15;
}

+ (BOOL)_useSheetForViewController:(id)a3 options:(unint64_t)a4
{
  v4 = a4;
  v5 = a3;
  v6 = v5;
  if ((v4 & 2) != 0)
  {
    v9 = 0;
    goto LABEL_12;
  }

  if ((v4 & 4) != 0)
  {
    if (!v5 || ([v5 popoverPresentationController], v10 = objc_claimAutoreleasedReturnValue(), v10, v10))
    {
      v9 = 1;
      goto LABEL_12;
    }
  }

  v7 = [v6 view];
  if (!EKUICurrentHeightSizeClassIsCompact(v7))
  {
    v8 = [v6 view];
    if (!EKUICurrentWidthSizeClassIsCompactInViewHierarchy(v8))
    {
      v9 = 1;
      v12 = [v6 _isInContextOfPresentationControllerOfClass:objc_opt_class() effective:1];

      if (v12)
      {
        goto LABEL_12;
      }

      v7 = [v6 _popoverController];
      v9 = v7 != 0;
      goto LABEL_7;
    }
  }

  v9 = 1;
LABEL_7:

LABEL_12:
  return v9;
}

- (void)setupUnsubscribeAlertWithOptions:(unint64_t)a3 viewController:(id)a4
{
  v6 = a4;
  v7 = [MEMORY[0x1E69DC650] alertControllerWithTitle:0 message:0 preferredStyle:{objc_msgSend(objc_opt_class(), "_useSheetForViewController:options:", v6, a3) ^ 1}];
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
  v25 = [objc_opt_class() _cancelLocalizedString];
  v27 = MEMORY[0x1E69E9820];
  v28 = 3221225472;
  v29 = __81__EKUIRecurrenceAlertController_setupUnsubscribeAlertWithOptions_viewController___block_invoke_3;
  v30 = &unk_1E8440A70;
  objc_copyWeak(&v31, &location);
  v26 = [v24 actionWithTitle:v25 style:1 handler:&v27];
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

- (BOOL)_setupDeleteAlertForEvents:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E6993488] spanDecisionInfoForEvents:v4];
  v6 = [v5 shouldRequestSpan];
  v7 = v6;
  if (v6)
  {
    v33 = v6;
    v8 = [v5 proposeFuture];
    v9 = [v5 recurringEventCount];
    v10 = [v4 count];
    v11 = EventKitUIBundle();
    v12 = [v11 localizedStringForKey:@"You’re deleting events." value:&stru_1F4EF6790 table:0];

    v13 = EventKitUIBundle();
    v36 = [v13 localizedStringForKey:@"Delete Only These Events" value:&stru_1F4EF6790 table:0];

    v14 = EventKitUIBundle();
    v15 = v14;
    if (v8)
    {
      if (v9 == v10)
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
      if (v9 == v10)
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
        v30 = [objc_opt_class() _cancelLocalizedString];
        v37[0] = MEMORY[0x1E69E9820];
        v37[1] = 3221225472;
        v37[2] = __60__EKUIRecurrenceAlertController__setupDeleteAlertForEvents___block_invoke_4;
        v37[3] = &unk_1E8440A70;
        objc_copyWeak(&v38, location);
        v31 = [v29 actionWithTitle:v30 style:1 handler:v37];

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

+ (id)_defaultStringForDeleteTitleWhenNotRecurring:(id)a3
{
  v3 = [a3 isReminderIntegrationEvent];
  v4 = EventKitUIBundle();
  v5 = v4;
  if (v3)
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

- (void)setupDeleteAlertWithOptions:(unint64_t)a3 viewController:(id)a4 forEvent:(id)a5 stringForDeleteButton:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [EKUIRecurrenceAlertController _determineChoicesForEvent:v11 options:a3];
  v14 = +[EKUIDeleteAlertController alertControllerWithTitle:message:preferredStyle:](EKUIDeleteAlertController, "alertControllerWithTitle:message:preferredStyle:", 0, 0, [objc_opt_class() _useSheetForViewController:v10 options:a3] ^ 1);
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

  v39 = v12;
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
    v38 = [objc_opt_class() _cancelLocalizedString];
    v44[0] = MEMORY[0x1E69E9820];
    v44[1] = 3221225472;
    v44[2] = __107__EKUIRecurrenceAlertController_setupDeleteAlertWithOptions_viewController_forEvent_stringForDeleteButton___block_invoke_4;
    v44[3] = &unk_1E8440A70;
    v34 = &v45;
    objc_copyWeak(&v45, location);
    v35 = [v37 actionWithTitle:v38 style:1 handler:v44];

    [v35 setAccessibilityIdentifier:@"cancel-alert-button"];
    [(UIAlertController *)self->_alertController addAction:v35];
  }

  else
  {
    v30 = [objc_opt_class() _defaultStringForDeleteTitleWhenNotRecurring:v11];
    [(UIAlertController *)self->_alertController setTitle:v30];

    v31 = MEMORY[0x1E69DC648];
    v42[0] = MEMORY[0x1E69E9820];
    v42[1] = 3221225472;
    v42[2] = __107__EKUIRecurrenceAlertController_setupDeleteAlertWithOptions_viewController_forEvent_stringForDeleteButton___block_invoke_5;
    v42[3] = &unk_1E8440A70;
    v23 = &v43;
    objc_copyWeak(&v43, location);
    v24 = [v31 actionWithTitle:v12 style:2 handler:v42];
    [v24 setAccessibilityIdentifier:@"delete-alert-button"];
    [(UIAlertController *)self->_alertController addAction:v24];
    v32 = MEMORY[0x1E69DC648];
    v33 = [objc_opt_class() _cancelLocalizedString];
    v40[0] = MEMORY[0x1E69E9820];
    v40[1] = 3221225472;
    v40[2] = __107__EKUIRecurrenceAlertController_setupDeleteAlertWithOptions_viewController_forEvent_stringForDeleteButton___block_invoke_6;
    v40[3] = &unk_1E8440A70;
    v34 = &v41;
    objc_copyWeak(&v41, location);
    v35 = [v32 actionWithTitle:v33 style:1 handler:v40];

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

- (void)_presentDeleteAlertWithOptions:(unint64_t)a3 viewController:(id)a4 sourceView:(id)a5 sourceRect:(CGRect)a6 barButtonItem:(id)a7 forEvent:(id)a8 stringForDeleteButton:(id)a9
{
  height = a6.size.height;
  width = a6.size.width;
  y = a6.origin.y;
  x = a6.origin.x;
  v19 = a4;
  v20 = a5;
  v21 = a7;
  v22 = a8;
  v23 = a9;
  if (v19)
  {
    if ([objc_opt_class() shouldShowDeleteAlertForEvent:v22 options:a3])
    {
      [(EKUIRecurrenceAlertController *)self setupDeleteAlertWithOptions:a3 viewController:v19 forEvent:v22 stringForDeleteButton:v23];
      [(EKUIRecurrenceAlertController *)self _configureAlertControllerWithSourceView:v20 sourceRect:v21 barButtonItem:x, y, width, height];
      [v19 presentViewController:self->_alertController animated:1 completion:0];
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

- (void)_presentDetachAlertWithOptions:(unint64_t)a3 viewController:(id)a4 sourceView:(id)a5 sourceRect:(CGRect)a6 barButtonItem:(id)a7 forEvent:(id)a8
{
  height = a6.size.height;
  width = a6.size.width;
  y = a6.origin.y;
  x = a6.origin.x;
  v17 = a4;
  v18 = a5;
  v19 = a7;
  v20 = a8;
  if (v17)
  {
    if ([objc_opt_class() shouldShowDetachAlertForEvent:v20 options:a3])
    {
      v45 = v19;
      v21 = [EKUIRecurrenceAlertController _determineChoicesForEvent:v20 options:a3];
      v22 = [objc_opt_class() _useSheetForViewController:v17 options:a3] ^ 1;
      if ((a3 & 8) != 0)
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
        v43 = [objc_opt_class() _cancelLocalizedString];
        v52[0] = MEMORY[0x1E69E9820];
        v52[1] = 3221225472;
        v52[2] = __124__EKUIRecurrenceAlertController__presentDetachAlertWithOptions_viewController_sourceView_sourceRect_barButtonItem_forEvent___block_invoke_3;
        v52[3] = &unk_1E8440A70;
        objc_copyWeak(&v53, buf);
        v44 = [v42 actionWithTitle:v43 style:1 handler:v52];

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
        v38 = [objc_opt_class() _cancelLocalizedString];
        v47[0] = MEMORY[0x1E69E9820];
        v47[1] = 3221225472;
        v47[2] = __124__EKUIRecurrenceAlertController__presentDetachAlertWithOptions_viewController_sourceView_sourceRect_barButtonItem_forEvent___block_invoke_5;
        v47[3] = &unk_1E8440A70;
        v39 = &v48;
        objc_copyWeak(&v48, buf);
        v40 = [v37 actionWithTitle:v38 style:1 handler:v47];

        [v40 setAccessibilityIdentifier:@"cancel-alert-button"];
        [(UIAlertController *)self->_alertController addAction:v40];
      }

      v19 = v45;

      objc_destroyWeak(v39);
      objc_destroyWeak(location);
      [(EKUIRecurrenceAlertController *)self _configureAlertControllerWithSourceView:v18 sourceRect:v45 barButtonItem:x, y, width, height];
      [v17 presentViewController:self->_alertController animated:1 completion:0];
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

- (void)_presentAttachmentsAlertWithOptions:(unint64_t)a3 viewController:(id)a4 barButtonItem:(id)a5 forEvent:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  if (v10)
  {
    v13 = [objc_opt_class() _useSheetForViewController:v10 options:a3] ^ 1;
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
    v26 = [objc_opt_class() _cancelLocalizedString];
    v29 = MEMORY[0x1E69E9820];
    v30 = 3221225472;
    v31 = __107__EKUIRecurrenceAlertController__presentAttachmentsAlertWithOptions_viewController_barButtonItem_forEvent___block_invoke_2;
    v32 = &unk_1E8440A70;
    objc_copyWeak(&v33, location);
    v27 = [v25 actionWithTitle:v26 style:1 handler:&v29];

    [v27 setAccessibilityIdentifier:{@"cancel-alert-button", v29, v30, v31, v32}];
    [(UIAlertController *)self->_alertController addAction:v27];
    [(EKUIRecurrenceAlertController *)self _configureAlertControllerWithSourceView:0 sourceRect:v11 barButtonItem:*MEMORY[0x1E695F050], *(MEMORY[0x1E695F050] + 8), *(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24)];
    [v10 presentViewController:self->_alertController animated:1 completion:0];

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

- (void)_configureAlertControllerWithSourceView:(id)a3 sourceRect:(CGRect)a4 barButtonItem:(id)a5
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v14 = a3;
  v11 = a5;
  if (v14)
  {
    v12 = [(UIAlertController *)self->_alertController popoverPresentationController];
    [v12 setSourceView:v14];

    v13 = [(UIAlertController *)self->_alertController popoverPresentationController];
    [v13 setSourceRect:{x, y, width, height}];
  }

  else
  {
    if (!v11)
    {
      goto LABEL_6;
    }

    v13 = [(UIAlertController *)self->_alertController popoverPresentationController];
    [v13 setBarButtonItem:v11];
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

- (void)cancelAnimated:(BOOL)a3
{
  v3 = a3;
  if (([(UIAlertController *)self->_alertController isBeingDismissed]& 1) == 0)
  {
    alertController = self->_alertController;

    [(UIAlertController *)alertController dismissViewControllerAnimated:v3 completion:0];
  }
}

- (void)_completeWithSelection:(unint64_t)a3
{
  completionHandler = self->_completionHandler;
  if (completionHandler)
  {
    completionHandler[2](completionHandler, a3);
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

+ (int)_determineChoicesForEvent:(id)a3 options:(unint64_t)a4
{
  v30[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = v5;
  if (!v5)
  {
LABEL_20:
    v9 = 1;
    goto LABEL_21;
  }

  v7 = [v5 canDetachSingleOccurrence];
  if ((a4 & 1) != 0 || ![v6 isOrWasPartOfRecurringSeries])
  {
LABEL_17:
    if ((v7 & 1) == 0)
    {
      v17 = kEKUILogHandle;
      if (os_log_type_enabled(kEKUILogHandle, OS_LOG_TYPE_ERROR))
      {
        v18 = MEMORY[0x1E696AD98];
        v19 = v17;
        v20 = [v18 numberWithUnsignedInteger:a4];
        v26 = 138412546;
        v27 = v6;
        v28 = 2112;
        v29 = v20;
        _os_log_impl(&dword_1D3400000, v19, OS_LOG_TYPE_ERROR, "No choices for event:%@ options:%@", &v26, 0x16u);
      }
    }

    goto LABEL_20;
  }

  v8 = [v6 hasChanges];
  if ((a4 & 8) != 0 && !v8)
  {
    goto LABEL_6;
  }

  v10 = [v6 changeSet];
  v11 = *MEMORY[0x1E6992570];
  if ([v10 hasUnsavedChangeForKey:*MEMORY[0x1E6992570]])
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

  v14 = [v6 singleRecurrenceRule];
  v15 = [v14 recurrenceEndHasChanges];

  if (v15)
  {
    goto LABEL_13;
  }

  v22 = [v6 calendar];
  v23 = [v22 source];
  v24 = [v23 constraints];
  if ([v24 prohibitsSlicingEventsWithAttendees])
  {
    if ([v6 hasAttendees])
    {

LABEL_13:
      v16 = 1;
      goto LABEL_14;
    }

    v25 = [v6 _hadAttendees];

    if (v25)
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
    v9 = v7 | 4;
  }

  else
  {
    v9 = v7 | 2;
  }

LABEL_21:

  return v9;
}

@end