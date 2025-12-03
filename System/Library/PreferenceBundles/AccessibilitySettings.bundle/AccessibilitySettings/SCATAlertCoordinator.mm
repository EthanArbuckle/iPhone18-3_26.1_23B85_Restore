@interface SCATAlertCoordinator
- (SCATAlertCoordinator)initWithViewController:(id)controller;
- (UIViewController)viewController;
- (void)showOnboardingAlertWithTitle:(id)title message:(id)message successTitle:(id)successTitle cancelTitle:(id)cancelTitle successHandler:(id)handler cancelHandler:(id)cancelHandler;
- (void)showProfileNamingAlertWithProfile:(id)profile renaming:(BOOL)renaming message:(id)message successHandler:(id)handler cancelHandler:(id)cancelHandler;
- (void)showSwichAlreadyInUseAlert:(id)alert;
- (void)showSwitchNamingAlertWithSwitch:(id)switch message:(id)message successHandler:(id)handler cancelHandler:(id)cancelHandler;
@end

@implementation SCATAlertCoordinator

- (SCATAlertCoordinator)initWithViewController:(id)controller
{
  controllerCopy = controller;
  v8.receiver = self;
  v8.super_class = SCATAlertCoordinator;
  v5 = [(SCATAlertCoordinator *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(SCATAlertCoordinator *)v5 setViewController:controllerCopy];
  }

  return v6;
}

- (void)showSwitchNamingAlertWithSwitch:(id)switch message:(id)message successHandler:(id)handler cancelHandler:(id)cancelHandler
{
  switchCopy = switch;
  messageCopy = message;
  handlerCopy = handler;
  cancelHandlerCopy = cancelHandler;
  if (!switchCopy)
  {
    _AXAssert();
  }

  if (![(SCATAlertCoordinator *)self isShowingAlert])
  {
    v14 = AXParameterizedLocalizedString();
    v15 = AXParameterizedLocalizedString();
    v25 = AXParameterizedLocalizedString();
    objc_initWeak(location, self);
    v16 = [UIAlertController alertControllerWithTitle:v14 message:messageCopy preferredStyle:1];
    v24 = v14;
    v37[0] = _NSConcreteStackBlock;
    v37[1] = 3221225472;
    v37[2] = __93__SCATAlertCoordinator_showSwitchNamingAlertWithSwitch_message_successHandler_cancelHandler___block_invoke;
    v37[3] = &unk_2593A8;
    v17 = cancelHandlerCopy;
    v38 = v17;
    objc_copyWeak(&v39, location);
    v18 = [UIAlertAction actionWithTitle:v15 style:1 handler:v37];
    [v16 addAction:v18];

    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = __93__SCATAlertCoordinator_showSwitchNamingAlertWithSwitch_message_successHandler_cancelHandler___block_invoke_2;
    v31[3] = &unk_2593F8;
    v19 = v16;
    v32 = v19;
    v20 = switchCopy;
    v33 = v20;
    objc_copyWeak(&v36, location);
    v34 = handlerCopy;
    v35 = v17;
    v21 = [UIAlertAction actionWithTitle:v25 style:0 handler:v31];
    [v19 addAction:v21];

    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = __93__SCATAlertCoordinator_showSwitchNamingAlertWithSwitch_message_successHandler_cancelHandler___block_invoke_4;
    v29[3] = &unk_259420;
    v30 = v20;
    [v19 addTextFieldWithConfigurationHandler:v29];
    viewController = [(SCATAlertCoordinator *)self viewController];
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = __93__SCATAlertCoordinator_showSwitchNamingAlertWithSwitch_message_successHandler_cancelHandler___block_invoke_5;
    v26[3] = &unk_257960;
    v23 = v19;
    v27 = v23;
    objc_copyWeak(&v28, location);
    [viewController presentViewController:v23 animated:1 completion:v26];

    objc_destroyWeak(&v28);
    objc_destroyWeak(&v36);

    objc_destroyWeak(&v39);
    objc_destroyWeak(location);
  }
}

void __93__SCATAlertCoordinator_showSwitchNamingAlertWithSwitch_message_successHandler_cancelHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(v2 + 16))();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setShowingAlert:0];
}

void __93__SCATAlertCoordinator_showSwitchNamingAlertWithSwitch_message_successHandler_cancelHandler___block_invoke_2(id *a1, void *a2)
{
  v3 = a2;
  v4 = [a1[4] textFields];
  v5 = [v4 firstObject];

  v6 = [v5 text];
  if ([v6 length])
  {
    [v5 text];
  }

  else
  {
    [v5 placeholder];
  }
  v7 = ;

  v8 = [a1[5] name];
  if ([v8 length])
  {
    v9 = [a1[5] name];
    v10 = [v9 isEqualToString:v7];

    if (v10)
    {
      goto LABEL_10;
    }
  }

  else
  {
  }

  if (SCATSwitchExistsWithName())
  {
    objc_copyWeak(&v16, a1 + 8);
    v13 = a1[5];
    v14 = a1[6];
    v15 = a1[7];
    AXPerformBlockOnMainThreadAfterDelay();

    objc_destroyWeak(&v16);
    goto LABEL_12;
  }

LABEL_10:
  [a1[5] setName:v7];
  v11 = a1[6];
  if (v11)
  {
    v11[2]();
  }

LABEL_12:
  WeakRetained = objc_loadWeakRetained(a1 + 8);
  [WeakRetained setShowingAlert:0];
}

void __93__SCATAlertCoordinator_showSwitchNamingAlertWithSwitch_message_successHandler_cancelHandler___block_invoke_3(uint64_t a1)
{
  v3 = AXParameterizedLocalizedString();
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained showSwitchNamingAlertWithSwitch:*(a1 + 32) message:v3 successHandler:*(a1 + 40) cancelHandler:*(a1 + 48)];
}

void __93__SCATAlertCoordinator_showSwitchNamingAlertWithSwitch_message_successHandler_cancelHandler___block_invoke_4(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = SCATNextAvailableSwitchName();
  [v7 setPlaceholder:v3];

  v4 = [*(a1 + 32) name];
  v5 = [v4 length];

  if (v5)
  {
    v6 = [*(a1 + 32) name];
    [v7 setText:v6];
  }

  [v7 setAutocapitalizationType:2];
  [v7 setAutocorrectionType:1];
  [v7 setEnablesReturnKeyAutomatically:1];
}

void __93__SCATAlertCoordinator_showSwitchNamingAlertWithSwitch_message_successHandler_cancelHandler___block_invoke_5(uint64_t a1)
{
  v2 = [*(a1 + 32) textFields];
  v3 = [v2 firstObject];
  [v3 becomeFirstResponder];

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setShowingAlert:1];
}

- (void)showSwichAlreadyInUseAlert:(id)alert
{
  alertCopy = alert;
  if (![(SCATAlertCoordinator *)self isShowingAlert])
  {
    objc_initWeak(&location, self);
    v5 = AXParameterizedLocalizedString();
    v6 = AXParameterizedLocalizedString();
    v7 = AXParameterizedLocalizedString();
    v8 = [UIAlertController alertControllerWithTitle:v5 message:v6 preferredStyle:1];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = __51__SCATAlertCoordinator_showSwichAlreadyInUseAlert___block_invoke;
    v13[3] = &unk_2593A8;
    v14 = alertCopy;
    objc_copyWeak(&v15, &location);
    v9 = [UIAlertAction actionWithTitle:v7 style:1 handler:v13];
    [v8 addAction:v9];
    viewController = [(SCATAlertCoordinator *)self viewController];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = __51__SCATAlertCoordinator_showSwichAlreadyInUseAlert___block_invoke_2;
    v11[3] = &unk_255388;
    objc_copyWeak(&v12, &location);
    [viewController presentViewController:v8 animated:1 completion:v11];

    objc_destroyWeak(&v12);
    objc_destroyWeak(&v15);

    objc_destroyWeak(&location);
  }
}

void __51__SCATAlertCoordinator_showSwichAlreadyInUseAlert___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(v2 + 16))();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setShowingAlert:0];
}

void __51__SCATAlertCoordinator_showSwichAlreadyInUseAlert___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setShowingAlert:1];
}

- (void)showOnboardingAlertWithTitle:(id)title message:(id)message successTitle:(id)successTitle cancelTitle:(id)cancelTitle successHandler:(id)handler cancelHandler:(id)cancelHandler
{
  titleCopy = title;
  messageCopy = message;
  successTitleCopy = successTitle;
  cancelTitleCopy = cancelTitle;
  handlerCopy = handler;
  cancelHandlerCopy = cancelHandler;
  if (![(SCATAlertCoordinator *)self isShowingAlert])
  {
    objc_initWeak(location, self);
    v20 = [UIAlertController alertControllerWithTitle:titleCopy message:messageCopy preferredStyle:1];
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = __115__SCATAlertCoordinator_showOnboardingAlertWithTitle_message_successTitle_cancelTitle_successHandler_cancelHandler___block_invoke;
    v29[3] = &unk_2593A8;
    v30 = cancelHandlerCopy;
    objc_copyWeak(&v31, location);
    v21 = [UIAlertAction actionWithTitle:cancelTitleCopy style:2 handler:v29];
    [v20 addAction:v21];

    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = __115__SCATAlertCoordinator_showOnboardingAlertWithTitle_message_successTitle_cancelTitle_successHandler_cancelHandler___block_invoke_2;
    v26[3] = &unk_2593A8;
    v27 = handlerCopy;
    objc_copyWeak(&v28, location);
    v22 = [UIAlertAction actionWithTitle:successTitleCopy style:0 handler:v26];
    [v20 addAction:v22];

    viewController = [(SCATAlertCoordinator *)self viewController];
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = __115__SCATAlertCoordinator_showOnboardingAlertWithTitle_message_successTitle_cancelTitle_successHandler_cancelHandler___block_invoke_3;
    v24[3] = &unk_255388;
    objc_copyWeak(&v25, location);
    [viewController presentViewController:v20 animated:1 completion:v24];

    objc_destroyWeak(&v25);
    objc_destroyWeak(&v28);

    objc_destroyWeak(&v31);
    objc_destroyWeak(location);
  }
}

void __115__SCATAlertCoordinator_showOnboardingAlertWithTitle_message_successTitle_cancelTitle_successHandler_cancelHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(v2 + 16))();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setShowingAlert:0];
}

void __115__SCATAlertCoordinator_showOnboardingAlertWithTitle_message_successTitle_cancelTitle_successHandler_cancelHandler___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(v2 + 16))();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setShowingAlert:0];
}

void __115__SCATAlertCoordinator_showOnboardingAlertWithTitle_message_successTitle_cancelTitle_successHandler_cancelHandler___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setShowingAlert:1];
}

- (void)showProfileNamingAlertWithProfile:(id)profile renaming:(BOOL)renaming message:(id)message successHandler:(id)handler cancelHandler:(id)cancelHandler
{
  profileCopy = profile;
  messageCopy = message;
  handlerCopy = handler;
  cancelHandlerCopy = cancelHandler;
  if (![(SCATAlertCoordinator *)self isShowingAlert])
  {
    if (profileCopy)
    {
      v16 = AXParameterizedLocalizedString();
      v17 = AXParameterizedLocalizedString();
      v25 = AXParameterizedLocalizedString();
      objc_initWeak(location, self);
      v18 = [UIAlertController alertControllerWithTitle:v16 message:messageCopy preferredStyle:1];
      v38[0] = _NSConcreteStackBlock;
      v38[1] = 3221225472;
      v38[2] = __104__SCATAlertCoordinator_showProfileNamingAlertWithProfile_renaming_message_successHandler_cancelHandler___block_invoke;
      v38[3] = &unk_2593A8;
      v39 = cancelHandlerCopy;
      objc_copyWeak(&v40, location);
      v24 = v17;
      v19 = [UIAlertAction actionWithTitle:v17 style:1 handler:v38];
      [v18 addAction:v19];

      objc_initWeak(&from, v18);
      v32[0] = _NSConcreteStackBlock;
      v32[1] = 3221225472;
      v32[2] = __104__SCATAlertCoordinator_showProfileNamingAlertWithProfile_renaming_message_successHandler_cancelHandler___block_invoke_2;
      v32[3] = &unk_259448;
      objc_copyWeak(&v35, &from);
      v20 = profileCopy;
      v33 = v20;
      v34 = handlerCopy;
      objc_copyWeak(&v36, location);
      v21 = [UIAlertAction actionWithTitle:v25 style:0 handler:v32];
      [v18 addAction:v21];

      v29[0] = _NSConcreteStackBlock;
      v29[1] = 3221225472;
      v29[2] = __104__SCATAlertCoordinator_showProfileNamingAlertWithProfile_renaming_message_successHandler_cancelHandler___block_invoke_3;
      v29[3] = &unk_259470;
      v30 = v20;
      renamingCopy = renaming;
      [v18 addTextFieldWithConfigurationHandler:v29];
      viewController = [(SCATAlertCoordinator *)self viewController];
      v26[0] = _NSConcreteStackBlock;
      v26[1] = 3221225472;
      v26[2] = __104__SCATAlertCoordinator_showProfileNamingAlertWithProfile_renaming_message_successHandler_cancelHandler___block_invoke_4;
      v26[3] = &unk_257960;
      v23 = v18;
      v27 = v23;
      objc_copyWeak(&v28, location);
      [viewController presentViewController:v23 animated:1 completion:v26];

      objc_destroyWeak(&v28);
      objc_destroyWeak(&v36);

      objc_destroyWeak(&v35);
      objc_destroyWeak(&from);
      objc_destroyWeak(&v40);

      objc_destroyWeak(location);
    }

    else
    {
      v16 = SWCHLogSettings();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
      {
        [SCATAlertCoordinator showProfileNamingAlertWithProfile:v16 renaming:? message:? successHandler:? cancelHandler:?];
      }
    }
  }
}

void __104__SCATAlertCoordinator_showProfileNamingAlertWithProfile_renaming_message_successHandler_cancelHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(v2 + 16))();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setShowingAlert:0];
}

void __104__SCATAlertCoordinator_showProfileNamingAlertWithProfile_renaming_message_successHandler_cancelHandler___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained textFields];
  v8 = [v3 firstObject];

  v4 = [v8 text];
  if ([v4 length])
  {
    [v8 text];
  }

  else
  {
    [v8 placeholder];
  }
  v5 = ;

  [*(a1 + 32) setName:v5];
  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))();
  }

  v7 = objc_loadWeakRetained((a1 + 56));
  [v7 setShowingAlert:0];
}

void __104__SCATAlertCoordinator_showProfileNamingAlertWithProfile_renaming_message_successHandler_cancelHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [*(a1 + 32) name];
  if (*(a1 + 40) == 1)
  {
    [v7 setPlaceholder:v3];
  }

  else
  {
    v4 = SCATNextAvailableProfileName();
    [v7 setPlaceholder:v4];
  }

  v5 = [v3 length];
  v6 = v7;
  if (v5)
  {
    [v7 setText:v3];
    v6 = v7;
  }

  [v6 setAutocapitalizationType:2];
  [v7 setAutocorrectionType:1];
  [v7 setEnablesReturnKeyAutomatically:1];
}

void __104__SCATAlertCoordinator_showProfileNamingAlertWithProfile_renaming_message_successHandler_cancelHandler___block_invoke_4(uint64_t a1)
{
  v2 = [*(a1 + 32) textFields];
  v7 = [v2 firstObject];

  [v7 becomeFirstResponder];
  v3 = [v7 beginningOfDocument];
  v4 = [v7 endOfDocument];
  v5 = [v7 textRangeFromPosition:v3 toPosition:v4];
  [v7 setSelectedTextRange:v5];

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setShowingAlert:1];
}

- (UIViewController)viewController
{
  WeakRetained = objc_loadWeakRetained(&self->_viewController);

  return WeakRetained;
}

@end