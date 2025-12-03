@interface CNMedicalIDAction
- (void)dismissMedicalID;
- (void)presentMedicalIDViewControllerWithSender:(id)sender;
@end

@implementation CNMedicalIDAction

- (void)dismissMedicalID
{
  delegate = [(CNContactAction *)self delegate];
  [delegate actionDidFinish:self];

  delegate2 = [(CNContactAction *)self delegate];
  medicalIDNavigationController = [(CNMedicalIDAction *)self medicalIDNavigationController];
  [delegate2 action:self dismissViewController:medicalIDNavigationController sender:self];

  [(CNMedicalIDAction *)self setMedicalIDNavigationController:0];
}

- (void)presentMedicalIDViewControllerWithSender:(id)sender
{
  senderCopy = sender;
  standardConfiguration = [(objc_class *)getMIUIDisplayConfigurationClass() standardConfiguration];
  if ([(CNMedicalIDAction *)self medicalIDActionType]!= 1 && [(CNMedicalIDAction *)self medicalIDActionType]!= 3)
  {
    [standardConfiguration setIsEditingAvailable:0];
  }

  if ([(CNMedicalIDAction *)self medicalIDActionType]== 3)
  {
    [standardConfiguration setIsDeletionAvailable:1];
  }

  healthStoreManager = [(CNMedicalIDAction *)self healthStoreManager];
  healthStore = [healthStoreManager healthStore];

  objc_initWeak(&location, self);
  healthStoreManager2 = [(CNMedicalIDAction *)self healthStoreManager];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __62__CNMedicalIDAction_presentMedicalIDViewControllerWithSender___block_invoke;
  v13[3] = &unk_1E74E2548;
  objc_copyWeak(&v17, &location);
  v9 = healthStore;
  v14 = v9;
  v10 = standardConfiguration;
  v15 = v10;
  v11 = senderCopy;
  v16 = v11;
  v12 = [healthStoreManager2 registerMedicalIDDataHandler:v13];

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
}

void __62__CNMedicalIDAction_presentMedicalIDViewControllerWithSender___block_invoke(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(a1 + 7);
  v8 = [WeakRetained healthStoreManager];
  [v8 unregisterHandlerForToken:v6];

  v9 = +[CNUIContactsEnvironment currentEnvironment];
  v10 = [v9 defaultSchedulerProvider];
  v11 = [v10 mainThreadScheduler];

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __62__CNMedicalIDAction_presentMedicalIDViewControllerWithSender___block_invoke_2;
  v13[3] = &unk_1E74E2520;
  v14 = a1[4];
  v15 = v5;
  v16 = a1[5];
  v17 = WeakRetained;
  v18 = a1[6];
  v12 = v5;
  [v11 performBlock:v13];
}

void __62__CNMedicalIDAction_presentMedicalIDViewControllerWithSender___block_invoke_2(uint64_t a1)
{
  v8 = [objc_alloc(getMIUIMedicalIDViewControllerClass()) initWithHealthStore:*(a1 + 32) medicalIDData:*(a1 + 40) displayConfiguration:*(a1 + 48)];
  v2 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithRootViewController:v8];
  [*(a1 + 56) setMedicalIDNavigationController:v2];

  v3 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:0 target:*(a1 + 56) action:sel_dismissMedicalID];
  v4 = [v8 navigationItem];
  [v4 setRightBarButtonItem:v3];

  v5 = [*(a1 + 56) delegate];
  v6 = *(a1 + 56);
  v7 = [v6 medicalIDNavigationController];
  [v5 action:v6 presentViewController:v7 sender:*(a1 + 64)];
}

@end