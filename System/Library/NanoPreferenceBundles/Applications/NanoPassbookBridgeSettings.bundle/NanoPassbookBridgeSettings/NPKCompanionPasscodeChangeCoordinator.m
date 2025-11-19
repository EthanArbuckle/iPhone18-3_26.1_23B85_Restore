@interface NPKCompanionPasscodeChangeCoordinator
- (BOOL)_shouldUsePasscodeConnection;
- (NPKChangePasscodeCompanionInstructionViewController)instructionViewController;
- (NPKCompanionPasscodeChangeCoordinatorDelegate)delegate;
- (PUConnection)passcodeConnection;
- (id)flowController;
- (void)_cancelRemoteAction;
- (void)_checkDeviceLockStateIfNeededWithCompletion:(id)a3;
- (void)_displayInstructionViewControllerOnNavigationController:(id)a3;
- (void)_endPasscodeChangeWithPasscodeChanged:(BOOL)a3 error:(id)a4;
- (void)_startPasscodeChange;
- (void)_startRemoteAction:(int64_t)a3 type:(int64_t)a4;
- (void)_tellGizmoToPromptForPasscodeChange;
- (void)changePasscodeCompanionInstructionViewController:(id)a3 didChangeVisibilityWithIsVisible:(BOOL)a4;
- (void)handleGizmoPasscodeChangeWithVisibleViewController:(id)a3 completion:(id)a4;
- (void)setFlowController:(id)a3;
@end

@implementation NPKCompanionPasscodeChangeCoordinator

- (PUConnection)passcodeConnection
{
  passcodeConnection = self->_passcodeConnection;
  if (!passcodeConnection)
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x2050000000;
    v4 = qword_34CF8;
    v13 = qword_34CF8;
    if (!qword_34CF8)
    {
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_120F4;
      v9[3] = &unk_2CF68;
      v9[4] = &v10;
      sub_120F4(v9);
      v4 = v11[3];
    }

    v5 = v4;
    _Block_object_dispose(&v10, 8);
    v6 = [[v4 alloc] initWithDelegate:self];
    v7 = self->_passcodeConnection;
    self->_passcodeConnection = v6;

    passcodeConnection = self->_passcodeConnection;
  }

  return passcodeConnection;
}

- (NPKChangePasscodeCompanionInstructionViewController)instructionViewController
{
  if (!self->_instructionViewController)
  {
    v3 = [[NPKChangePasscodeCompanionInstructionViewController alloc] initWithHidesCancelButton:1];
    instructionViewController = self->_instructionViewController;
    self->_instructionViewController = v3;

    [(NPKChangePasscodeCompanionInstructionViewController *)self->_instructionViewController setDelegate:self];
    v5 = [(NPKCompanionPasscodeChangeCoordinator *)self flowController];
    v6 = [v5 context];

    if ((v6 & 0xFFFFFFFFFFFFFFFELL) != 4)
    {
      v7 = +[UIColor darkTextColor];
      [(NPKBridgeInstructionViewController *)self->_instructionViewController setInstructionLabelTextColor:v7];
    }
  }

  v8 = self->_instructionViewController;

  return v8;
}

- (void)handleGizmoPasscodeChangeWithVisibleViewController:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v8 = pk_General_log();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);

    if (v9)
    {
      v10 = pk_General_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v15 = 136446978;
        v16 = "[NPKCompanionPasscodeChangeCoordinator handleGizmoPasscodeChangeWithVisibleViewController:completion:]";
        v17 = 2082;
        v18 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook/NanoPassbookBridgeSettings/NPKCompanionPasscodeChangeCoordinator.m";
        v19 = 2048;
        v20 = 63;
        v21 = 2112;
        v22 = v6;
        _os_log_impl(&dword_0, v10, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Expected to have a view controller, but got %@)", &v15, 0x2Au);
      }
    }

    _NPKAssertAbort();
  }

  v11 = [v6 navigationController];
  if (!v11)
  {
    v12 = pk_General_log();
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);

    if (v13)
    {
      v14 = pk_General_log();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = 136446722;
        v16 = "[NPKCompanionPasscodeChangeCoordinator handleGizmoPasscodeChangeWithVisibleViewController:completion:]";
        v17 = 2082;
        v18 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook/NanoPassbookBridgeSettings/NPKCompanionPasscodeChangeCoordinator.m";
        v19 = 2048;
        v20 = 66;
        _os_log_impl(&dword_0, v14, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Expected to have a navigation controller to present from.)", &v15, 0x20u);
      }
    }

    _NPKAssertAbort();
  }

  [(NPKCompanionPasscodeChangeCoordinator *)self setPasscodeChangeCompletion:v7];
  [(NPKCompanionPasscodeChangeCoordinator *)self _displayInstructionViewControllerOnNavigationController:v11];
  [(NPKCompanionPasscodeChangeCoordinator *)self _tellGizmoToPromptForPasscodeChange];
}

- (void)setFlowController:(id)a3
{
  v4 = a3;
  if (v4)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v5 = pk_General_log();
      v6 = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);

      if (v6)
      {
        v7 = pk_General_log();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          v9 = 136446978;
          v10 = "[NPKCompanionPasscodeChangeCoordinator setFlowController:]";
          v11 = 2082;
          v12 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook/NanoPassbookBridgeSettings/NPKCompanionPasscodeChangeCoordinator.m";
          v13 = 2048;
          v14 = 81;
          v15 = 2112;
          v16 = objc_opt_class();
          v8 = v16;
          _os_log_impl(&dword_0, v7, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Expecting PKPasscodeUpgradeFlowController, but got %@)", &v9, 0x2Au);
        }
      }

      _NPKAssertAbort();
    }
  }

  objc_storeWeak(&self->_flowController, v4);
}

- (void)_displayInstructionViewControllerOnNavigationController:(id)a3
{
  v4 = a3;
  v5 = [(NPKCompanionPasscodeChangeCoordinator *)self instructionViewController];

  if (v5)
  {
    [(NPKCompanionPasscodeChangeCoordinator *)self setInstructionViewController:0];
  }

  objc_initWeak(&location, self);
  objc_copyWeak(&v9, &location);
  v6 = [(NPKCompanionPasscodeChangeCoordinator *)self instructionViewController:_NSConcreteStackBlock];
  [v6 setCancellationHandler:&v8];

  v7 = [(NPKCompanionPasscodeChangeCoordinator *)self instructionViewController];
  [v4 pushViewController:v7 animated:1];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)_tellGizmoToPromptForPasscodeChange
{
  objc_initWeak(&location, self);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10F10;
  v3[3] = &unk_2CF18;
  objc_copyWeak(&v4, &location);
  [(NPKCompanionPasscodeChangeCoordinator *)self _checkDeviceLockStateIfNeededWithCompletion:v3];
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

- (void)_checkDeviceLockStateIfNeededWithCompletion:(id)a3
{
  v4 = a3;
  if ([(NPKCompanionPasscodeChangeCoordinator *)self _shouldUsePasscodeConnection])
  {
    v5 = [(NPKCompanionPasscodeChangeCoordinator *)self passcodeConnection];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_11140;
    v7[3] = &unk_2CF40;
    v8 = v4;
    [v5 getRemoteDeviceState:v7];
  }

  else
  {
    v6 = [(NPKCompanionPasscodeChangeCoordinator *)self delegate];
    [v6 passcodeChangeCoordinator:self checkRemoteDeviceLockStateWithCompletion:v4];
  }
}

- (void)_startPasscodeChange
{
  if ([(NPKCompanionPasscodeChangeCoordinator *)self _shouldUsePasscodeConnection])
  {

    [(NPKCompanionPasscodeChangeCoordinator *)self _startRemoteAction:2 type:2];
  }

  else
  {
    objc_initWeak(&location, self);
    v3 = [(NPKCompanionPasscodeChangeCoordinator *)self delegate];
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_11280;
    v4[3] = &unk_2CF18;
    objc_copyWeak(&v5, &location);
    [v3 passcodeChangeCoordinator:self remoteDeviceShouldInitiatePasscodeChangeForType:1 completion:v4];

    objc_destroyWeak(&v5);
    objc_destroyWeak(&location);
  }
}

- (void)_endPasscodeChangeWithPasscodeChanged:(BOOL)a3 error:(id)a4
{
  v4 = a3;
  v6 = a4;
  if (v4)
  {
    [(NPKCompanionPasscodeChangeCoordinator *)self _invokePasscodeChangeCompletionWithPasscodeChanged:1 error:v6];
    v7 = [(NPKCompanionPasscodeChangeCoordinator *)self instructionViewController];
    [v7 showNavigationBarSpinner:1];
  }

  else
  {
    v8 = [(NPKCompanionPasscodeChangeCoordinator *)self instructionViewController];
    v7 = [v8 navigationController];

    v9 = [v7 topViewController];
    v10 = [(NPKCompanionPasscodeChangeCoordinator *)self instructionViewController];
    v11 = [v9 isEqual:v10];

    if (v11)
    {
      v12 = [v7 popViewControllerAnimated:1];
    }
  }

  if ([(NPKCompanionPasscodeChangeCoordinator *)self _shouldUsePasscodeConnection])
  {
    [(NPKCompanionPasscodeChangeCoordinator *)self _cancelRemoteAction];
  }

  else
  {
    objc_initWeak(&location, self);
    v13 = [(NPKCompanionPasscodeChangeCoordinator *)self delegate];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_11640;
    v14[3] = &unk_2CF18;
    objc_copyWeak(&v15, &location);
    [v13 passcodeChangeCoordinator:self remoteDeviceShouldCancelPasscodeChangeWithCompletion:v14];

    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }
}

- (void)changePasscodeCompanionInstructionViewController:(id)a3 didChangeVisibilityWithIsVisible:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = pk_Payment_log();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);

  if (v8)
  {
    v9 = pk_Payment_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      v12 = @"NO";
      *&v15[12] = 2080;
      *&v15[14] = "[NPKCompanionPasscodeChangeCoordinator changePasscodeCompanionInstructionViewController:didChangeVisibilityWithIsVisible:]";
      *v15 = 138544130;
      *&v15[4] = v11;
      if (v4)
      {
        v12 = @"YES";
      }

      *&v15[22] = 2112;
      v16 = v6;
      v17 = 2112;
      v18 = v12;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "Notice: %{public}@: %s instructionViewController: %@ isVisible: %@", v15, 0x2Au);
    }
  }

  v13 = [(NPKCompanionPasscodeChangeCoordinator *)self flowController:*v15];
  v14 = v13;
  if (v4)
  {
    [v13 beginShowingViewController];
  }

  else
  {
    [v13 endedShowingViewController];
  }
}

- (BOOL)_shouldUsePasscodeConnection
{
  if (NPKPairedOrPairingDeviceIsTinker())
  {
    return 0;
  }

  v3 = NPKPairedOrPairingDevice();
  v4 = [[NSUUID alloc] initWithUUIDString:@"C3FD35B9-C30A-4893-B94B-56080B5FD9B7"];
  v5 = [v3 supportsCapability:v4];

  return v5 ^ 1;
}

- (void)_startRemoteAction:(int64_t)a3 type:(int64_t)a4
{
  v7 = pk_Payment_log();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);

  if (v8)
  {
    v9 = pk_Payment_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      v13 = 138543618;
      v14 = v11;
      v15 = 2048;
      v16 = a3;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "Notice: %{public}@: Starting remote action %ld", &v13, 0x16u);
    }
  }

  [(NPKCompanionPasscodeChangeCoordinator *)self setPendingAction:a3];
  v12 = [(NPKCompanionPasscodeChangeCoordinator *)self passcodeConnection];
  [v12 requestRemoteDeviceRemoteAction:a3 type:a4];
}

- (void)_cancelRemoteAction
{
  v3 = pk_Payment_log();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    v5 = pk_Payment_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      v9 = 138543362;
      v10 = v7;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Notice: %{public}@: Canceling remote action", &v9, 0xCu);
    }
  }

  v8 = [(NPKCompanionPasscodeChangeCoordinator *)self passcodeConnection];
  [v8 requestRemoteDeviceRemoteAction:0 type:0];

  [(NPKCompanionPasscodeChangeCoordinator *)self _finishRemoteAction:0];
}

- (id)flowController
{
  WeakRetained = objc_loadWeakRetained(&self->_flowController);

  return WeakRetained;
}

- (NPKCompanionPasscodeChangeCoordinatorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end