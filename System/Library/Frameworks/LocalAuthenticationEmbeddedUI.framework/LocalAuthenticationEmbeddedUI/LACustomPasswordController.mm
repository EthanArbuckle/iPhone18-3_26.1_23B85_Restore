@interface LACustomPasswordController
- (LACustomPasswordController)initWithConfiguration:(id)configuration;
- (LACustomPasswordControllerDelegate)delegate;
- (int64_t)modalPresentationStyle;
- (int64_t)modalTransitionStyle;
- (int64_t)preferredStatusBarStyle;
- (void)_finishWithError:(uint64_t)error;
- (void)authorizationController:(id)controller didProvideAuthorizationRequirementWithReply:(id)reply;
@end

@implementation LACustomPasswordController

- (LACustomPasswordController)initWithConfiguration:(id)configuration
{
  v45[4] = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  v44.receiver = self;
  v44.super_class = LACustomPasswordController;
  v4 = [(LACustomPasswordController *)&v44 initWithNibName:0 bundle:0];
  if (v4)
  {
    v5 = objc_opt_new();
    laContext = v4->_laContext;
    v4->_laContext = v5;

    v39 = [objc_alloc(MEMORY[0x277D24190]) initWithCustomPasswordConfiguration:configurationCopy context:v4->_laContext];
    validateConfiguration = [v39 validateConfiguration];
    if (validateConfiguration)
    {
      v7 = MEMORY[0x277CBEAD8];
      v8 = [validateConfiguration debugDescription];
      [v7 raise:*MEMORY[0x277CBE660] format:{@"%@", v8}];
    }

    objc_initWeak(&location, v4);
    v9 = [LAAuthorizationViewController alloc];
    v41[0] = MEMORY[0x277D85DD0];
    v41[1] = 3221225472;
    v41[2] = __52__LACustomPasswordController_initWithConfiguration___block_invoke;
    v41[3] = &unk_278A656D0;
    objc_copyWeak(&v42, &location);
    v10 = [(LAAuthorizationViewController *)v9 initWithConfiguration:v39 completion:v41];
    [(LAAuthorizationViewController *)v10 setDelegate:v4];
    view = [(LACustomPasswordController *)v4 view];
    view2 = [(LAAuthorizationViewController *)v10 view];
    [view addSubview:view2];

    [(LACustomPasswordController *)v4 addChildViewController:v10];
    [(LAAuthorizationViewController *)v10 didMoveToParentViewController:v4];
    view3 = [(LAAuthorizationViewController *)v10 view];
    [view3 setTranslatesAutoresizingMaskIntoConstraints:0];

    v24 = MEMORY[0x277CCAAD0];
    view4 = [(LACustomPasswordController *)v4 view];
    leadingAnchor = [view4 leadingAnchor];
    view5 = [(LAAuthorizationViewController *)v10 view];
    leadingAnchor2 = [view5 leadingAnchor];
    v33 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v45[0] = v33;
    view6 = [(LACustomPasswordController *)v4 view];
    trailingAnchor = [view6 trailingAnchor];
    view7 = [(LAAuthorizationViewController *)v10 view];
    trailingAnchor2 = [view7 trailingAnchor];
    v28 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v45[1] = v28;
    view8 = [(LACustomPasswordController *)v4 view];
    topAnchor = [view8 topAnchor];
    view9 = [(LAAuthorizationViewController *)v10 view];
    topAnchor2 = [view9 topAnchor];
    v15 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v45[2] = v15;
    view10 = [(LACustomPasswordController *)v4 view];
    bottomAnchor = [view10 bottomAnchor];
    view11 = [(LAAuthorizationViewController *)v10 view];
    bottomAnchor2 = [view11 bottomAnchor];
    v20 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v45[3] = v20;
    v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v45 count:4];
    [v24 activateConstraints:v21];

    objc_storeWeak(&v4->_authorizationController, v10);
    objc_destroyWeak(&v42);
    objc_destroyWeak(&location);
  }

  v22 = *MEMORY[0x277D85DE8];
  return v4;
}

void __52__LACustomPasswordController_initWithConfiguration___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [(LACustomPasswordController *)WeakRetained _finishWithError:v5];
  }
}

- (int64_t)modalPresentationStyle
{
  WeakRetained = objc_loadWeakRetained(&self->_authorizationController);
  modalPresentationStyle = [WeakRetained modalPresentationStyle];

  return modalPresentationStyle;
}

- (int64_t)modalTransitionStyle
{
  WeakRetained = objc_loadWeakRetained(&self->_authorizationController);
  modalTransitionStyle = [WeakRetained modalTransitionStyle];

  return modalTransitionStyle;
}

- (int64_t)preferredStatusBarStyle
{
  WeakRetained = objc_loadWeakRetained(&self->_authorizationController);
  preferredStatusBarStyle = [WeakRetained preferredStatusBarStyle];

  return preferredStatusBarStyle;
}

- (void)authorizationController:(id)controller didProvideAuthorizationRequirementWithReply:(id)reply
{
  controllerCopy = controller;
  replyCopy = reply;
  objc_initWeak(&location, self);
  laContext = self->_laContext;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __98__LACustomPasswordController_authorizationController_didProvideAuthorizationRequirementWithReply___block_invoke;
  v10[3] = &unk_278A656F8;
  objc_copyWeak(&v12, &location);
  v9 = replyCopy;
  v11 = v9;
  [(LAContext *)laContext credentialOfType:-9 reply:v10];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void __98__LACustomPasswordController_authorizationController_didProvideAuthorizationRequirementWithReply___block_invoke(uint64_t a1, void *a2)
{
  v12 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v12 encoding:4];
    if (v4 && ([MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet], v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "stringByTrimmingCharactersInSet:", v5), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "length"), v6, v5, v7))
    {
      v8 = objc_loadWeakRetained(WeakRetained + 127);
      [v8 customPasswordController:WeakRetained didReceiveCustomPassword:v4 processCustomPasswordWithCompletion:*(a1 + 32)];
    }

    else
    {
      v9 = objc_loadWeakRetained(WeakRetained + 127);
      v10 = objc_opt_respondsToSelector();

      if ((v10 & 1) == 0)
      {
LABEL_8:

        goto LABEL_9;
      }

      v8 = [MEMORY[0x277CD47F0] errorWithCode:-1019];
      v11 = objc_loadWeakRetained(WeakRetained + 127);
      [v11 customPasswordController:WeakRetained didFinishWithError:v8];
    }

    goto LABEL_8;
  }

LABEL_9:
}

- (LACustomPasswordControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_finishWithError:(uint64_t)error
{
  v8 = a2;
  if (error)
  {
    v3 = *(error + 1008);
    if (v3)
    {
      (*(v3 + 16))();
      v4 = *(error + 1008);
      *(error + 1008) = 0;
    }

    WeakRetained = objc_loadWeakRetained((error + 1016));
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      v7 = objc_loadWeakRetained((error + 1016));
      [v7 customPasswordController:error didFinishWithError:v8];
    }
  }
}

@end