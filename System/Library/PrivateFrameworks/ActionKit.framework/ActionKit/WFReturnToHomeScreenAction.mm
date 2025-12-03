@interface WFReturnToHomeScreenAction
- (id)returnToHomeScreenError;
- (void)runAsynchronouslyWithInput:(id)input;
@end

@implementation WFReturnToHomeScreenAction

- (id)returnToHomeScreenError
{
  v15[2] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CCA9B8];
  v14[0] = *MEMORY[0x277CCA470];
  v3 = WFLocalizedString(@"Could not go to Home Screen");
  v15[0] = v3;
  v14[1] = *MEMORY[0x277CCA450];
  currentDevice = [MEMORY[0x277D79F18] currentDevice];
  idiom = [currentDevice idiom];

  if (idiom > 2)
  {
    switch(idiom)
    {
      case 3:
        v6 = @"DEVICE_LOCKED_ERROR_WATCH";
        v7 = @"Please make sure your Apple Watch is unlocked.";
        goto LABEL_15;
      case 4:
        v6 = @"DEVICE_LOCKED_ERROR_POD";
        v7 = @"Please make sure your iPod is unlocked.";
        goto LABEL_15;
      case 5:
        v8 = WFLocalizedString(@"There was an error presenting the Home View.");
        goto LABEL_16;
    }

    goto LABEL_12;
  }

  if (!idiom)
  {
    v6 = @"DEVICE_LOCKED_ERROR_PHONE";
    v7 = @"Please make sure your iPhone is unlocked.";
    goto LABEL_15;
  }

  if (idiom == 1)
  {
    v6 = @"DEVICE_LOCKED_ERROR_PAD";
    v7 = @"Please make sure your iPad is unlocked.";
    goto LABEL_15;
  }

  if (idiom != 2)
  {
LABEL_12:
    v6 = @"DEVICE_LOCKED_ERROR_UNSPECIFIED";
    v7 = @"Please make sure your device is unlocked.";
    goto LABEL_15;
  }

  v6 = @"DEVICE_LOCKED_ERROR_MAC";
  v7 = @"Please make sure your Mac is unlocked.";
LABEL_15:
  v8 = WFLocalizedStringWithKey(v6, v7);
LABEL_16:
  v9 = v8;
  v15[1] = v8;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2];
  v11 = [v2 errorWithDomain:@"WFReturnToHomeScreenActionErrorDomain" code:0 userInfo:v10];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (void)runAsynchronouslyWithInput:(id)input
{
  userInterface = [(WFReturnToHomeScreenAction *)self userInterface];
  if ([userInterface isRunningWithSiriUI])
  {
    wfUnsupportedUserInterfaceError = [MEMORY[0x277CCA9B8] wfUnsupportedUserInterfaceError];
    [(WFReturnToHomeScreenAction *)self finishRunningWithError:wfUnsupportedUserInterfaceError];
  }

  else
  {
    v6 = [objc_alloc(MEMORY[0x277CFC240]) initWithBundleIdentifier:@"com.apple.springboard" options:0 URL:0 userActivity:0];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __57__WFReturnToHomeScreenAction_runAsynchronouslyWithInput___block_invoke;
    v8[3] = &unk_278C1F820;
    v8[4] = self;
    v9 = v6;
    v7 = v6;
    [v7 performWithCompletionHandler:v8];
  }
}

void __57__WFReturnToHomeScreenAction_runAsynchronouslyWithInput___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v3 = *(a1 + 32);
    v5 = [v3 returnToHomeScreenError];
    [v3 finishRunningWithError:v5];
  }

  else
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __57__WFReturnToHomeScreenAction_runAsynchronouslyWithInput___block_invoke_2;
    v6[3] = &unk_278C1F530;
    v4 = *(a1 + 40);
    v6[4] = *(a1 + 32);
    [v4 observeForAppLaunchWithTimeout:v6 completionHandler:3.0];
  }
}

void __57__WFReturnToHomeScreenAction_runAsynchronouslyWithInput___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = dispatch_time(0, 1000000000);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __57__WFReturnToHomeScreenAction_runAsynchronouslyWithInput___block_invoke_3;
  v8[3] = &unk_278C21508;
  v6 = *(a1 + 32);
  v9 = v4;
  v10 = v6;
  v7 = v4;
  dispatch_after(v5, MEMORY[0x277D85CD0], v8);
}

void __57__WFReturnToHomeScreenAction_runAsynchronouslyWithInput___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (*(a1 + 32))
  {
    v3 = [*(a1 + 40) returnToHomeScreenError];
    [v1 finishRunningWithError:v3];
  }

  else
  {
    v2 = *(a1 + 40);

    [v2 finishRunningWithError:0];
  }
}

@end