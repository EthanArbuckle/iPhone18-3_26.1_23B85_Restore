@interface WFAppInstalledResource(UIKit)
- (uint64_t)appSearchViewControllerDidCancel:()UIKit;
- (void)appSearchViewController:()UIKit didFinishWithApp:;
- (void)attemptRecoveryFromError:()UIKit optionIndex:userInterface:completionHandler:;
- (void)setRecoveryCompletionHandler:()UIKit;
@end

@implementation WFAppInstalledResource(UIKit)

- (void)appSearchViewController:()UIKit didFinishWithApp:
{
  v6 = a3;
  correspondingApplicationRecord = [a4 correspondingApplicationRecord];
  v8 = [objc_alloc(MEMORY[0x277CD3A58]) initWithApplicationRecord:correspondingApplicationRecord];
  [self updateDescriptorsWithSelectedApp:v8];
  [self notifyDelegateWithUpdatedDescriptor:v8];
  [self refreshAvailabilityWithNotification];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __74__WFAppInstalledResource_UIKit__appSearchViewController_didFinishWithApp___block_invoke;
  v9[3] = &unk_278C37538;
  v9[4] = self;
  [v6 dismissViewControllerAnimated:1 completion:v9];
}

- (uint64_t)appSearchViewControllerDidCancel:()UIKit
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __66__WFAppInstalledResource_UIKit__appSearchViewControllerDidCancel___block_invoke;
  v4[3] = &unk_278C37538;
  v4[4] = self;
  return [a3 dismissViewControllerAnimated:1 completion:v4];
}

- (void)attemptRecoveryFromError:()UIKit optionIndex:userInterface:completionHandler:
{
  v9 = a3;
  v10 = a5;
  v11 = a6;
  if ([v9 code])
  {
    if ([v9 code] == 1)
    {
      v12 = [objc_alloc(MEMORY[0x277D7D2A8]) initWithAppSearchType:0];
      [v12 setDelegate:self];
      [self setRecoveryCompletionHandler:v11];
      v13 = WFViewControllerFromUserInterface();
      [v13 presentViewController:v12 animated:1 completion:0];
    }

    else if (v11)
    {
      (*(v11 + 2))(v11, 0, 0);
    }
  }

  else
  {
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __102__WFAppInstalledResource_UIKit__attemptRecoveryFromError_optionIndex_userInterface_completionHandler___block_invoke;
    v14[3] = &unk_278C364D0;
    v16 = v11;
    v15 = v10;
    [self fetchiTunesStoreObjectForAppWithCompletionBlock:v14];
  }
}

- (void)setRecoveryCompletionHandler:()UIKit
{
  v4 = _Block_copy(aBlock);
  objc_setAssociatedObject(self, sel_recoveryCompletionHandler, v4, 1);
}

@end