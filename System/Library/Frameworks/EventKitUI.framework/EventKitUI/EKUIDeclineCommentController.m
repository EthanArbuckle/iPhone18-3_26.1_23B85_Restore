@interface EKUIDeclineCommentController
+ (id)_newDeclineCommentControllerWithCompletionBlock:(id)a3;
+ (id)presentDeclineCommentAlertWithOrganizer:(id)a3 currentComment:(id)a4 viewController:(id)a5 completionBlock:(id)a6;
- (void)_completeWithButton:(unint64_t)a3;
- (void)_presentAlertWithOrganizer:(id)a3 currentComment:(id)a4 viewController:(id)a5;
- (void)dealloc;
- (void)dismissAnimated:(BOOL)a3;
@end

@implementation EKUIDeclineCommentController

+ (id)_newDeclineCommentControllerWithCompletionBlock:(id)a3
{
  v3 = a3;
  if (_newDeclineCommentControllerWithCompletionBlock__onceToken != -1)
  {
    +[EKUIDeclineCommentController _newDeclineCommentControllerWithCompletionBlock:];
  }

  v4 = objc_opt_new();
  objc_initWeak(&location, v4);
  [_newDeclineCommentControllerWithCompletionBlock__s_controllers addObject:v4];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __80__EKUIDeclineCommentController__newDeclineCommentControllerWithCompletionBlock___block_invoke_2;
  aBlock[3] = &unk_1E8440A20;
  v10 = v3;
  v5 = v3;
  objc_copyWeak(&v11, &location);
  v6 = _Block_copy(aBlock);
  v7 = v4[3];
  v4[3] = v6;

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
  return v4;
}

void __80__EKUIDeclineCommentController__newDeclineCommentControllerWithCompletionBlock___block_invoke()
{
  v0 = objc_opt_new();
  v1 = _newDeclineCommentControllerWithCompletionBlock__s_controllers;
  _newDeclineCommentControllerWithCompletionBlock__s_controllers = v0;
}

void __80__EKUIDeclineCommentController__newDeclineCommentControllerWithCompletionBlock___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = *(a1 + 32);
  v10 = v5;
  if (v6)
  {
    (*(v6 + 16))(v6, v5, a3);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));

  if (WeakRetained)
  {
    v8 = _newDeclineCommentControllerWithCompletionBlock__s_controllers;
    v9 = objc_loadWeakRetained((a1 + 40));
    [v8 removeObject:v9];
  }
}

+ (id)presentDeclineCommentAlertWithOrganizer:(id)a3 currentComment:(id)a4 viewController:(id)a5 completionBlock:(id)a6
{
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [a1 _newDeclineCommentControllerWithCompletionBlock:a6];
  [v13 _presentAlertWithOrganizer:v12 currentComment:v11 viewController:v10];

  return v13;
}

- (void)dealloc
{
  [(EKUIDeclineCommentController *)self dismissAnimated:0];
  v3.receiver = self;
  v3.super_class = EKUIDeclineCommentController;
  [(EKUIDeclineCommentController *)&v3 dealloc];
}

- (void)_presentAlertWithOrganizer:(id)a3 currentComment:(id)a4 viewController:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = MEMORY[0x1E69DC650];
  v12 = EventKitUIBundle();
  v13 = [v12 localizedStringForKey:@"Decline Event" value:&stru_1F4EF6790 table:0];
  v14 = MEMORY[0x1E696AEC0];
  v15 = EventKitUIBundle();
  v16 = [v15 localizedStringForKey:@"Enter an optional comment to %@." value:&stru_1F4EF6790 table:0];
  v33 = v8;
  v17 = CUIKDisplayStringForNotificationIdentity();
  v18 = [v14 localizedStringWithFormat:v16, v17];
  v19 = [v11 alertControllerWithTitle:v13 message:v18 preferredStyle:1];
  alertController = self->_alertController;
  self->_alertController = v19;

  objc_initWeak(location, self);
  v21 = self->_alertController;
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __89__EKUIDeclineCommentController__presentAlertWithOrganizer_currentComment_viewController___block_invoke;
  v38[3] = &unk_1E8440A48;
  v22 = v9;
  v39 = v22;
  objc_copyWeak(&v40, location);
  [(UIAlertController *)v21 addTextFieldWithConfigurationHandler:v38];
  v23 = self->_alertController;
  v24 = MEMORY[0x1E69DC648];
  v25 = EventKitUIBundle();
  v26 = [v25 localizedStringForKey:@"Cancel decline" value:@"Cancel" table:0];
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __89__EKUIDeclineCommentController__presentAlertWithOrganizer_currentComment_viewController___block_invoke_2;
  v36[3] = &unk_1E8440A70;
  objc_copyWeak(&v37, location);
  v27 = [v24 actionWithTitle:v26 style:1 handler:v36];
  [(UIAlertController *)v23 addAction:v27];

  v28 = self->_alertController;
  v29 = MEMORY[0x1E69DC648];
  v30 = EventKitUIBundle();
  v31 = [v30 localizedStringForKey:@"Decline" value:&stru_1F4EF6790 table:0];
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __89__EKUIDeclineCommentController__presentAlertWithOrganizer_currentComment_viewController___block_invoke_3;
  v34[3] = &unk_1E8440A70;
  objc_copyWeak(&v35, location);
  v32 = [v29 actionWithTitle:v31 style:0 handler:v34];
  [(UIAlertController *)v28 addAction:v32];

  [v10 presentViewController:self->_alertController animated:1 completion:0];
  objc_destroyWeak(&v35);
  objc_destroyWeak(&v37);
  objc_destroyWeak(&v40);

  objc_destroyWeak(location);
}

void __89__EKUIDeclineCommentController__presentAlertWithOrganizer_currentComment_viewController___block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  v4 = EventKitUIBundle();
  v5 = [v4 localizedStringForKey:@"Comment to Organizer" value:&stru_1F4EF6790 table:0];
  [v8 setPlaceholder:v5];

  [v8 setText:*(a1 + 32)];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    objc_storeStrong(WeakRetained + 2, a2);
  }
}

void __89__EKUIDeclineCommentController__presentAlertWithOrganizer_currentComment_viewController___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _completeWithButton:0];
}

void __89__EKUIDeclineCommentController__presentAlertWithOrganizer_currentComment_viewController___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _completeWithButton:1];
}

- (void)_completeWithButton:(unint64_t)a3
{
  completionBlock = self->_completionBlock;
  if (completionBlock)
  {
    v5 = a3 == 0;
    v10 = _Block_copy(completionBlock);
    v6 = [(UITextField *)self->_alertTextField text];
    v7 = self->_completionBlock;
    self->_completionBlock = 0;

    alertController = self->_alertController;
    self->_alertController = 0;

    alertTextField = self->_alertTextField;
    self->_alertTextField = 0;

    v10[2](v10, v6, v5);
  }
}

- (void)dismissAnimated:(BOOL)a3
{
  [(UIAlertController *)self->_alertController dismissViewControllerAnimated:a3 completion:0];

  [(EKUIDeclineCommentController *)self _completeWithButton:0];
}

@end