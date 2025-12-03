@interface SBAssistantControllerAccessibility
- (void)_dismissAssistantViewIfNecessaryWithAnimation:(int64_t)animation factory:(id)factory dismissalOptions:(id)options completion:(id)completion;
@end

@implementation SBAssistantControllerAccessibility

- (void)_dismissAssistantViewIfNecessaryWithAnimation:(int64_t)animation factory:(id)factory dismissalOptions:(id)options completion:(id)completion
{
  v29 = *MEMORY[0x29EDCA608];
  factoryCopy = factory;
  optionsCopy = options;
  completionCopy = completion;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  mEMORY[0x29EDC1168] = [MEMORY[0x29EDC1168] sharedInstance];
  allProcesses = [mEMORY[0x29EDC1168] allProcesses];

  v12 = [allProcesses countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v25;
    v15 = *MEMORY[0x29EDBD668];
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v25 != v14)
        {
          objc_enumerationMutation(allProcesses);
        }

        v17 = *(*(&v24 + 1) + 8 * i);
        bundleIdentifier = [v17 bundleIdentifier];
        v19 = [bundleIdentifier isEqualToString:v15];

        if (v19)
        {
          [v17 pid];
          AXProcessIsCarPlay();
          AXTentativePidSuspend();
        }
      }

      v13 = [allProcesses countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v13);
  }

  v23.receiver = self;
  v23.super_class = SBAssistantControllerAccessibility;
  [(SBAssistantControllerAccessibility *)&v23 _dismissAssistantViewIfNecessaryWithAnimation:animation factory:factoryCopy dismissalOptions:optionsCopy completion:completionCopy];
}

@end