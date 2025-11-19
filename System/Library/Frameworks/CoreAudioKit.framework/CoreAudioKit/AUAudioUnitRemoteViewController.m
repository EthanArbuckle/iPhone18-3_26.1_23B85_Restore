@interface AUAudioUnitRemoteViewController
+ (void)_fetchViewController:(id)a3 requestIdentifier:(id)a4 completion:(id)a5;
+ (void)_fetchViewControllerForExtension:(id)a3 inputItems:(id)a4 completion:(id)a5;
@end

@implementation AUAudioUnitRemoteViewController

+ (void)_fetchViewControllerForExtension:(id)a3 inputItems:(id)a4 completion:(id)a5
{
  v7 = a5;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __90__AUAudioUnitRemoteViewController__fetchViewControllerForExtension_inputItems_completion___block_invoke;
  v9[3] = &unk_278A25658;
  v10 = v7;
  v8 = v7;
  [a3 instantiateViewControllerWithInputItems:a4 listenerEndpoint:0 connectionHandler:v9];
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

+ (void)_fetchViewController:(id)a3 requestIdentifier:(id)a4 completion:(id)a5
{
  v6 = a5;
  aBlock = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __85__AUAudioUnitRemoteViewController__fetchViewController_requestIdentifier_completion___block_invoke;
  v18 = &unk_278A25680;
  v19 = v6;
  v7 = v6;
  v8 = a3;
  v9 = _Block_copy(&aBlock);
  v10 = MEMORY[0x277CCACA8];
  v11 = [v8 _plugIn];

  v12 = [v11 identifier];
  v13 = [v10 stringWithFormat:@"%@.viewbridge", v12, aBlock, v16, v17, v18];

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