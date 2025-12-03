@interface EKUIIntegrationAlertDisplayer
+ (id)alertControllerForAlert:(id)alert viewController:(id)controller options:(unint64_t)options;
- (EKUIIntegrationAlertDisplayer)initWithViewController:(id)controller options:(unint64_t)options;
- (UIViewController)viewControllerForPresentingAlerts;
- (id)_effectiveViewControllerForPresentation;
- (void)displayIntegrationAlert:(id)alert;
@end

@implementation EKUIIntegrationAlertDisplayer

- (EKUIIntegrationAlertDisplayer)initWithViewController:(id)controller options:(unint64_t)options
{
  controllerCopy = controller;
  v10.receiver = self;
  v10.super_class = EKUIIntegrationAlertDisplayer;
  v7 = [(EKUIIntegrationAlertDisplayer *)&v10 init];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_viewControllerForPresentingAlerts, controllerCopy);
    v8->_options = options;
  }

  return v8;
}

- (void)displayIntegrationAlert:(id)alert
{
  alertCopy = alert;
  _effectiveViewControllerForPresentation = [(EKUIIntegrationAlertDisplayer *)self _effectiveViewControllerForPresentation];
  v5 = [objc_opt_class() alertControllerForAlert:alertCopy viewController:_effectiveViewControllerForPresentation options:self->_options];

  [_effectiveViewControllerForPresentation presentViewController:v5 animated:1 completion:0];
}

+ (id)alertControllerForAlert:(id)alert viewController:(id)controller options:(unint64_t)options
{
  optionsCopy = options;
  v31 = *MEMORY[0x1E69E9840];
  alertCopy = alert;
  v8 = [EKUIRecurrenceAlertController _useSheetForViewController:controller options:2 * (optionsCopy & 3)]^ 1;
  v9 = MEMORY[0x1E69DC650];
  title = [alertCopy title];
  message = [alertCopy message];
  v12 = [v9 alertControllerWithTitle:title message:message preferredStyle:v8];

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = [alertCopy actions];
  v13 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v27;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v27 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v26 + 1) + 8 * i);
        style = [v17 style];
        if (style == 2)
        {
          v19 = 2;
        }

        else
        {
          v19 = style == 1;
        }

        v20 = MEMORY[0x1E69DC648];
        title2 = [v17 title];
        v25[0] = MEMORY[0x1E69E9820];
        v25[1] = 3221225472;
        v25[2] = __80__EKUIIntegrationAlertDisplayer_alertControllerForAlert_viewController_options___block_invoke;
        v25[3] = &unk_1E843EB98;
        v25[4] = v17;
        v22 = [v20 actionWithTitle:title2 style:v19 handler:v25];

        [v12 addAction:v22];
      }

      v14 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v14);
  }

  return v12;
}

- (id)_effectiveViewControllerForPresentation
{
  WeakRetained = objc_loadWeakRetained(&self->_viewControllerForPresentingAlerts);
  presentedViewController = [WeakRetained presentedViewController];

  if (presentedViewController)
  {
    do
    {
      presentedViewController2 = [WeakRetained presentedViewController];

      v4PresentedViewController = [presentedViewController2 presentedViewController];

      WeakRetained = presentedViewController2;
    }

    while (v4PresentedViewController);
  }

  else
  {
    presentedViewController2 = WeakRetained;
  }

  return presentedViewController2;
}

- (UIViewController)viewControllerForPresentingAlerts
{
  WeakRetained = objc_loadWeakRetained(&self->_viewControllerForPresentingAlerts);

  return WeakRetained;
}

@end