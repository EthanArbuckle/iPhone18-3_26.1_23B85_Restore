@interface EKUISendInviteAlertController
+ (id)newAlertControllerWithCompletionHandler:(id)handler;
+ (id)presentInviteAlertWithOptions:(unint64_t)options sourceView:(id)view sourceRect:(CGRect)rect sourceItem:(id)item viewController:(id)controller withCompletionHandler:(id)handler;
- (BOOL)_useSheetForViewController:(id)controller;
- (id)alertIconImage;
- (void)_cleanup;
- (void)_completeWithSelection:(int)selection;
- (void)_presentAlertWithOptions:(unint64_t)options sourceView:(id)view sourceRect:(CGRect)rect sourceItem:(id)item viewController:(id)controller;
- (void)cancelAnimated:(BOOL)animated;
- (void)dealloc;
@end

@implementation EKUISendInviteAlertController

+ (id)newAlertControllerWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v4 = objc_opt_new();
  [v4 setCompletionHandler:handlerCopy];

  [v4 setStrongSelf:v4];
  return v4;
}

+ (id)presentInviteAlertWithOptions:(unint64_t)options sourceView:(id)view sourceRect:(CGRect)rect sourceItem:(id)item viewController:(id)controller withCompletionHandler:(id)handler
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  controllerCopy = controller;
  itemCopy = item;
  viewCopy = view;
  v20 = [self newAlertControllerWithCompletionHandler:handler];
  [v20 _presentAlertWithOptions:options sourceView:viewCopy sourceRect:itemCopy sourceItem:controllerCopy viewController:{x, y, width, height}];

  return v20;
}

- (void)dealloc
{
  [(EKUISendInviteAlertController *)self cancelAnimated:0];
  v3.receiver = self;
  v3.super_class = EKUISendInviteAlertController;
  [(EKUISendInviteAlertController *)&v3 dealloc];
}

- (BOOL)_useSheetForViewController:(id)controller
{
  controllerCopy = controller;
  view = [controllerCopy view];
  if (EKUICurrentHeightSizeClassIsCompact(view))
  {
    goto LABEL_4;
  }

  view2 = [controllerCopy view];
  if (EKUICurrentWidthSizeClassIsCompactInViewHierarchy(view2))
  {

LABEL_4:
    v6 = 1;
    goto LABEL_5;
  }

  v6 = 1;
  v8 = [controllerCopy _isInContextOfPresentationControllerOfClass:objc_opt_class() effective:1];

  if (v8)
  {
    goto LABEL_6;
  }

  view = [controllerCopy _popoverController];
  v6 = view != 0;
LABEL_5:

LABEL_6:
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

- (void)_presentAlertWithOptions:(unint64_t)options sourceView:(id)view sourceRect:(CGRect)rect sourceItem:(id)item viewController:(id)controller
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  optionsCopy = options;
  viewCopy = view;
  itemCopy = item;
  controllerCopy = controller;
  if (controllerCopy)
  {
    v18 = [(EKUISendInviteAlertController *)self _useSheetForViewController:controllerCopy]^ 1;
    if ((optionsCopy & 0x10) != 0)
    {
      v19 = EventKitUIBundle();
      v20 = v19;
      v21 = @"Send invitations to all attendees?";
    }

    else if ((optionsCopy & 8) != 0)
    {
      v19 = EventKitUIBundle();
      v20 = v19;
      v21 = @"Propose new time?";
    }

    else
    {
      if ((optionsCopy & 4) != 0)
      {
        v45 = EventKitUIBundle();
        v23 = [v45 localizedStringForKey:@"Time was changed" value:&stru_1F4EF6790 table:0];

        v20 = EventKitUIBundle();
        v24 = [v20 localizedStringForKey:@"Notify all invitees?" value:&stru_1F4EF6790 table:0];
LABEL_13:

        v46 = v24;
        v25 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v23 message:v24 preferredStyle:v18];
        alertController = self->_alertController;
        self->_alertController = v25;

        alertIconImage = [(EKUISendInviteAlertController *)self alertIconImage];
        [(UIAlertController *)self->_alertController setImage:alertIconImage];

        objc_initWeak(buf, self);
        v28 = self->_alertController;
        v29 = MEMORY[0x1E69DC648];
        v30 = EventKitUIBundle();
        v31 = [v30 localizedStringForKey:@"Send" value:&stru_1F4EF6790 table:0];
        v51[0] = MEMORY[0x1E69E9820];
        v51[1] = 3221225472;
        v51[2] = __106__EKUISendInviteAlertController__presentAlertWithOptions_sourceView_sourceRect_sourceItem_viewController___block_invoke;
        v51[3] = &unk_1E8440A70;
        objc_copyWeak(&v52, buf);
        v32 = [v29 actionWithTitle:v31 style:0 handler:v51];
        [(UIAlertController *)v28 addAction:v32];

        if ((optionsCopy & 0x10) == 0)
        {
          v33 = self->_alertController;
          v34 = MEMORY[0x1E69DC648];
          v35 = EventKitUIBundle();
          v36 = [v35 localizedStringForKey:@"Discard Changes" value:&stru_1F4EF6790 table:0];
          v49[0] = MEMORY[0x1E69E9820];
          v49[1] = 3221225472;
          v49[2] = __106__EKUISendInviteAlertController__presentAlertWithOptions_sourceView_sourceRect_sourceItem_viewController___block_invoke_2;
          v49[3] = &unk_1E8440A70;
          objc_copyWeak(&v50, buf);
          v37 = [v34 actionWithTitle:v36 style:2 handler:v49];
          [(UIAlertController *)v33 addAction:v37];

          objc_destroyWeak(&v50);
        }

        v38 = self->_alertController;
        v39 = MEMORY[0x1E69DC648];
        v40 = EventKitUIBundle();
        v41 = [v40 localizedStringForKey:@"Cancel - send invite alert controller" value:@"Cancel" table:0];
        v47[0] = MEMORY[0x1E69E9820];
        v47[1] = 3221225472;
        v47[2] = __106__EKUISendInviteAlertController__presentAlertWithOptions_sourceView_sourceRect_sourceItem_viewController___block_invoke_3;
        v47[3] = &unk_1E8440A70;
        objc_copyWeak(&v48, buf);
        v42 = [v39 actionWithTitle:v41 style:1 handler:v47];
        [(UIAlertController *)v38 addAction:v42];

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
LABEL_20:
            [controllerCopy presentViewController:self->_alertController animated:1 completion:0];
            objc_destroyWeak(&v48);
            objc_destroyWeak(&v52);
            objc_destroyWeak(buf);

            goto LABEL_21;
          }

          popoverPresentationController2 = [(UIAlertController *)self->_alertController popoverPresentationController];
          [popoverPresentationController2 setSourceItem:itemCopy];
        }

        goto LABEL_20;
      }

      v19 = EventKitUIBundle();
      v20 = v19;
      if ((optionsCopy & 2) != 0)
      {
        if (optionsCopy)
        {
          v21 = @"You have removed an invitee";
        }

        else
        {
          v21 = @"You have removed invitees";
        }
      }

      else if (optionsCopy)
      {
        v21 = @"You have pending invitees";
      }

      else
      {
        v21 = @"You have a pending invite";
      }
    }

    v23 = [v19 localizedStringForKey:v21 value:&stru_1F4EF6790 table:0];
    v24 = 0;
    goto LABEL_13;
  }

  v22 = kEKUILogHandle;
  if (os_log_type_enabled(kEKUILogHandle, OS_LOG_TYPE_ERROR))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_1D3400000, v22, OS_LOG_TYPE_ERROR, "Presenting a alert requires a view controller.", buf, 2u);
  }

LABEL_21:
}

void __106__EKUISendInviteAlertController__presentAlertWithOptions_sourceView_sourceRect_sourceItem_viewController___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _completeWithSelection:0];
}

void __106__EKUISendInviteAlertController__presentAlertWithOptions_sourceView_sourceRect_sourceItem_viewController___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _completeWithSelection:1];
}

void __106__EKUISendInviteAlertController__presentAlertWithOptions_sourceView_sourceRect_sourceItem_viewController___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _completeWithSelection:2];
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

- (void)_completeWithSelection:(int)selection
{
  completionHandler = self->_completionHandler;
  if (completionHandler)
  {
    completionHandler[2](completionHandler, *&selection);
  }

  [(EKUISendInviteAlertController *)self _cleanup];
}

- (void)_cleanup
{
  [(EKUISendInviteAlertController *)self setStrongSelf:0];
  completionHandler = self->_completionHandler;
  self->_completionHandler = 0;

  alertController = self->_alertController;
  self->_alertController = 0;
}

@end