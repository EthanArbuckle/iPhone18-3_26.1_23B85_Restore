@interface CNUIEditAuthorizationController
- (CNUIEditAuthorizationControllerDelegate)delegate;
- (UIViewController)guardedViewController;
- (id)sender;
- (void)dealloc;
- (void)didAuthorize;
- (void)didNotAuthorize;
- (void)lockoutRestrictionsPINControllerDidFinish:(id)finish;
- (void)presentAuthorizationUI;
- (void)userDidEnterPasswordCorrectly:(BOOL)correctly;
@end

@implementation CNUIEditAuthorizationController

- (UIViewController)guardedViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_guardedViewController);

  return WeakRetained;
}

- (id)sender
{
  WeakRetained = objc_loadWeakRetained(&self->_sender);

  return WeakRetained;
}

- (CNUIEditAuthorizationControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)didNotAuthorize
{
  delegate = [(CNUIEditAuthorizationController *)self delegate];
  [delegate editAuthorizationController:self authorizationDidFinishWithResult:1];
}

- (void)didAuthorize
{
  delegate = [(CNUIEditAuthorizationController *)self delegate];
  [delegate editAuthorizationController:self authorizationDidFinishWithResult:2];
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696ABB0] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = CNUIEditAuthorizationController;
  [(CNUIEditAuthorizationController *)&v4 dealloc];
}

- (void)userDidEnterPasswordCorrectly:(BOOL)correctly
{
  if (correctly)
  {
    [(CNUIEditAuthorizationController *)self didAuthorize];
  }

  else
  {
    [(CNUIEditAuthorizationController *)self didNotAuthorize];
  }
}

- (void)lockoutRestrictionsPINControllerDidFinish:(id)finish
{
  finishCopy = finish;
  userInfo = [finishCopy userInfo];
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v6 = getSTNotificationKeyPINSuccessSymbolLoc_ptr;
  v14 = getSTNotificationKeyPINSuccessSymbolLoc_ptr;
  if (!getSTNotificationKeyPINSuccessSymbolLoc_ptr)
  {
    v7 = ScreenTimeUILibrary();
    v12[3] = dlsym(v7, "STNotificationKeyPINSuccess");
    getSTNotificationKeyPINSuccessSymbolLoc_ptr = v12[3];
    v6 = v12[3];
  }

  _Block_object_dispose(&v11, 8);
  if (v6)
  {
    v8 = [userInfo objectForKeyedSubscript:*v6];

    -[CNUIEditAuthorizationController userDidEnterPasswordCorrectly:](self, "userDidEnterPasswordCorrectly:", [v8 BOOLValue]);
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getSTNotificationKeyPINSuccess(void)"];
    [currentHandler handleFailureInFunction:v10 file:@"CNUIEditAuthorizationController.m" lineNumber:23 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

- (void)presentAuthorizationUI
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x2050000000;
  v3 = getSTRemotePasscodeControllerClass_softClass;
  v19 = getSTRemotePasscodeControllerClass_softClass;
  if (!getSTRemotePasscodeControllerClass_softClass)
  {
    v11 = MEMORY[0x1E69E9820];
    v12 = 3221225472;
    v13 = __getSTRemotePasscodeControllerClass_block_invoke;
    v14 = &unk_1E74E7518;
    v15 = &v16;
    __getSTRemotePasscodeControllerClass_block_invoke(&v11);
    v3 = v17[3];
  }

  v4 = v3;
  _Block_object_dispose(&v16, 8);
  [v3 activateRemotePINUI];
  defaultCenter = [MEMORY[0x1E696ABB0] defaultCenter];
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v6 = getSTRestrictionsPINControllerDidFinishNotificationSymbolLoc_ptr;
  v19 = getSTRestrictionsPINControllerDidFinishNotificationSymbolLoc_ptr;
  if (!getSTRestrictionsPINControllerDidFinishNotificationSymbolLoc_ptr)
  {
    v11 = MEMORY[0x1E69E9820];
    v12 = 3221225472;
    v13 = __getSTRestrictionsPINControllerDidFinishNotificationSymbolLoc_block_invoke;
    v14 = &unk_1E74E7518;
    v15 = &v16;
    v7 = ScreenTimeUILibrary();
    v8 = dlsym(v7, "STRestrictionsPINControllerDidFinishNotification");
    *(v15[1] + 24) = v8;
    getSTRestrictionsPINControllerDidFinishNotificationSymbolLoc_ptr = *(v15[1] + 24);
    v6 = v17[3];
  }

  _Block_object_dispose(&v16, 8);
  if (v6)
  {
    [defaultCenter addObserver:self selector:sel_lockoutRestrictionsPINControllerDidFinish_ name:*v6 object:0];
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getSTRestrictionsPINControllerDidFinishNotification(void)"];
    [currentHandler handleFailureInFunction:v10 file:@"CNUIEditAuthorizationController.m" lineNumber:22 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

@end