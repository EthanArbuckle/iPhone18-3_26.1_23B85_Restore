@interface WFAppInstalledResource
@end

@implementation WFAppInstalledResource

void __74__WFAppInstalledResource_UIKit__appSearchViewController_didFinishWithApp___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) recoveryCompletionHandler];

  if (v2)
  {
    v3 = [*(a1 + 32) recoveryCompletionHandler];
    v3[2](v3, 1, 0);
  }
}

void __66__WFAppInstalledResource_UIKit__appSearchViewControllerDidCancel___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) recoveryCompletionHandler];

  if (v2)
  {
    v3 = [*(a1 + 32) recoveryCompletionHandler];
    v3[2](v3, 1, 0);
  }
}

void __102__WFAppInstalledResource_UIKit__attemptRecoveryFromError_optionIndex_userInterface_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __102__WFAppInstalledResource_UIKit__attemptRecoveryFromError_optionIndex_userInterface_completionHandler___block_invoke_2;
    block[3] = &unk_278C36F90;
    v6 = v3;
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

void __102__WFAppInstalledResource_UIKit__attemptRecoveryFromError_optionIndex_userInterface_completionHandler___block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x277CFC248] sharedContext];
  v3 = [*(a1 + 32) viewURL];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __102__WFAppInstalledResource_UIKit__attemptRecoveryFromError_optionIndex_userInterface_completionHandler___block_invoke_3;
  v5[3] = &unk_278C364A8;
  v4 = *(a1 + 40);
  v6 = *(a1 + 48);
  [v2 openURL:v3 userInterface:v4 completionHandler:v5];
}

uint64_t __102__WFAppInstalledResource_UIKit__attemptRecoveryFromError_optionIndex_userInterface_completionHandler___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

@end