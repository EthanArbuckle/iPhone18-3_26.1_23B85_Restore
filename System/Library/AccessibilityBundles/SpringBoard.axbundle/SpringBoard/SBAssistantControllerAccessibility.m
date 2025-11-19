@interface SBAssistantControllerAccessibility
- (void)_dismissAssistantViewIfNecessaryWithAnimation:(int64_t)a3 factory:(id)a4 dismissalOptions:(id)a5 completion:(id)a6;
@end

@implementation SBAssistantControllerAccessibility

- (void)_dismissAssistantViewIfNecessaryWithAnimation:(int64_t)a3 factory:(id)a4 dismissalOptions:(id)a5 completion:(id)a6
{
  v29 = *MEMORY[0x29EDCA608];
  v22 = a4;
  v8 = a5;
  v9 = a6;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v10 = [MEMORY[0x29EDC1168] sharedInstance];
  v11 = [v10 allProcesses];

  v12 = [v11 countByEnumeratingWithState:&v24 objects:v28 count:16];
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
          objc_enumerationMutation(v11);
        }

        v17 = *(*(&v24 + 1) + 8 * i);
        v18 = [v17 bundleIdentifier];
        v19 = [v18 isEqualToString:v15];

        if (v19)
        {
          [v17 pid];
          AXProcessIsCarPlay();
          AXTentativePidSuspend();
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v13);
  }

  v23.receiver = self;
  v23.super_class = SBAssistantControllerAccessibility;
  [(SBAssistantControllerAccessibility *)&v23 _dismissAssistantViewIfNecessaryWithAnimation:a3 factory:v22 dismissalOptions:v8 completion:v9];
}

@end