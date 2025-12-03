@interface AUAudioUnitRemoteViewController
+ (void)_fetchViewController:(id)controller requestIdentifier:(id)identifier completion:(id)completion;
+ (void)_fetchViewControllerForExtension:(id)extension inputItems:(id)items completion:(id)completion;
@end

@implementation AUAudioUnitRemoteViewController

+ (void)_fetchViewControllerForExtension:(id)extension inputItems:(id)items completion:(id)completion
{
  completionCopy = completion;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __90__AUAudioUnitRemoteViewController__fetchViewControllerForExtension_inputItems_completion___block_invoke;
  v9[3] = &unk_278A25658;
  v10 = completionCopy;
  v8 = completionCopy;
  [extension instantiateViewControllerWithInputItems:items listenerEndpoint:0 connectionHandler:v9];
}

void __90__AUAudioUnitRemoteViewController__fetchViewControllerForExtension_inputItems_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v10 = a2;
  v7 = a3;
  v8 = a4;
  if (v8)
  {
    v9 = *(*(a1 + 32) + 16);
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      __90__AUAudioUnitRemoteViewController__fetchViewControllerForExtension_inputItems_completion___block_invoke_cold_1();
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      __90__AUAudioUnitRemoteViewController__fetchViewControllerForExtension_inputItems_completion___block_invoke_cold_2();
    }

    v9 = *(*(a1 + 32) + 16);
  }

  v9();
}

+ (void)_fetchViewController:(id)controller requestIdentifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  aBlock = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __85__AUAudioUnitRemoteViewController__fetchViewController_requestIdentifier_completion___block_invoke;
  v18 = &unk_278A25680;
  v19 = completionCopy;
  v7 = completionCopy;
  controllerCopy = controller;
  v9 = _Block_copy(&aBlock);
  v10 = MEMORY[0x277CCACA8];
  _plugIn = [controllerCopy _plugIn];

  identifier = [_plugIn identifier];
  v13 = [v10 stringWithFormat:@"%@.viewbridge", identifier, aBlock, v16, v17, v18];

  v14 = [AUAudioUnitRemoteViewController requestViewController:@"AUAudioUnitViewService" fromServiceWithBundleIdentifier:v13 connectionHandler:v9];
}

void __85__AUAudioUnitRemoteViewController__fetchViewController_requestIdentifier_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  if (v5)
  {
    NSLog(&cfstr_ErrorFailedToC_0.isa, v5);
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      __85__AUAudioUnitRemoteViewController__fetchViewController_requestIdentifier_completion___block_invoke_cold_1();
    }

    v6 = *(a1 + 32);
    v7 = *(v6 + 16);
    v8 = v9;
    v7(v6, v8, 0);
  }
}

@end