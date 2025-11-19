@interface EKUIIntegrationAlertDisplayer
+ (id)alertControllerForAlert:(id)a3 viewController:(id)a4 options:(unint64_t)a5;
- (EKUIIntegrationAlertDisplayer)initWithViewController:(id)a3 options:(unint64_t)a4;
- (UIViewController)viewControllerForPresentingAlerts;
- (id)_effectiveViewControllerForPresentation;
- (void)displayIntegrationAlert:(id)a3;
@end

@implementation EKUIIntegrationAlertDisplayer

- (EKUIIntegrationAlertDisplayer)initWithViewController:(id)a3 options:(unint64_t)a4
{
  v6 = a3;
  v10.receiver = self;
  v10.super_class = EKUIIntegrationAlertDisplayer;
  v7 = [(EKUIIntegrationAlertDisplayer *)&v10 init];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_viewControllerForPresentingAlerts, v6);
    v8->_options = a4;
  }

  return v8;
}

- (void)displayIntegrationAlert:(id)a3
{
  v4 = a3;
  v6 = [(EKUIIntegrationAlertDisplayer *)self _effectiveViewControllerForPresentation];
  v5 = [objc_opt_class() alertControllerForAlert:v4 viewController:v6 options:self->_options];

  [v6 presentViewController:v5 animated:1 completion:0];
}

+ (id)alertControllerForAlert:(id)a3 viewController:(id)a4 options:(unint64_t)a5
{
  v5 = a5;
  v31 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = [EKUIRecurrenceAlertController _useSheetForViewController:a4 options:2 * (v5 & 3)]^ 1;
  v9 = MEMORY[0x1E69DC650];
  v10 = [v7 title];
  v11 = [v7 message];
  v12 = [v9 alertControllerWithTitle:v10 message:v11 preferredStyle:v8];

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = [v7 actions];
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
        v18 = [v17 style];
        if (v18 == 2)
        {
          v19 = 2;
        }

        else
        {
          v19 = v18 == 1;
        }

        v20 = MEMORY[0x1E69DC648];
        v21 = [v17 title];
        v25[0] = MEMORY[0x1E69E9820];
        v25[1] = 3221225472;
        v25[2] = __80__EKUIIntegrationAlertDisplayer_alertControllerForAlert_viewController_options___block_invoke;
        v25[3] = &unk_1E843EB98;
        v25[4] = v17;
        v22 = [v20 actionWithTitle:v21 style:v19 handler:v25];

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
  v3 = [WeakRetained presentedViewController];

  if (v3)
  {
    do
    {
      v4 = [WeakRetained presentedViewController];

      v5 = [v4 presentedViewController];

      WeakRetained = v4;
    }

    while (v5);
  }

  else
  {
    v4 = WeakRetained;
  }

  return v4;
}

- (UIViewController)viewControllerForPresentingAlerts
{
  WeakRetained = objc_loadWeakRetained(&self->_viewControllerForPresentingAlerts);

  return WeakRetained;
}

@end