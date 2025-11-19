@interface AXSBSwitcherControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)configureRequest:(id)a3 forSwitcherTransitionRequest:(id)a4 withEventLabel:(id)a5;
@end

@implementation AXSBSwitcherControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SBSwitcherController"];
  [v3 validateClass:@"SBAppLayout"];
  [v3 validateClass:@"SBDisplayItem"];
  [v3 validateClass:@"SBSwitcherController" hasInstanceMethod:@"configureRequest:forSwitcherTransitionRequest: withEventLabel:" withFullSignature:{"v", "@", "@", "@", 0}];
  [v3 validateClass:@"SBDisplayItem" hasInstanceMethod:@"isEqual:" withFullSignature:{"B", "@", 0}];
  [v3 validateClass:@"SBSwitcherTransitionRequest" hasInstanceMethod:@"unlockedEnvironmentMode" withFullSignature:{"q", 0}];
  [v3 validateClass:@"SBSwitcherTransitionRequest" hasInstanceMethod:@"appLayout" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SBSwitcherTransitionRequest" hasInstanceMethod:@"activatingDisplayItem" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SBDisplayItem" hasClassMethod:@"homeScreenDisplayItem" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SBAppLayout" hasClassMethod:@"homeScreenAppLayout" withFullSignature:{"@", 0}];
}

- (void)configureRequest:(id)a3 forSwitcherTransitionRequest:(id)a4 withEventLabel:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v32.receiver = self;
  v32.super_class = AXSBSwitcherControllerAccessibility;
  [(AXSBSwitcherControllerAccessibility *)&v32 configureRequest:v8 forSwitcherTransitionRequest:v9 withEventLabel:v10];
  v11 = [v9 safeIntegerForKey:@"unlockedEnvironmentMode"];
  v12 = [v9 safeValueForKey:@"appLayout"];
  v13 = [v9 safeValueForKey:@"activatingDisplayItem"];
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 0;
  v22 = MEMORY[0x277D85DD0];
  v23 = 3221225472;
  v24 = __100__AXSBSwitcherControllerAccessibility_configureRequest_forSwitcherTransitionRequest_withEventLabel___block_invoke;
  v25 = &unk_27842BBA8;
  v27 = &v28;
  v14 = v13;
  v26 = v14;
  AXPerformSafeBlock();
  if (v11 != 1)
  {
    v15 = [NSClassFromString(&cfstr_Sbapplayout.isa) safeValueForKey:@"homeScreenAppLayout"];
    if ([v12 isEqual:v15])
    {
    }

    else
    {
      v20 = *(v29 + 24);

      if ((v20 & 1) == 0 && v11 != 2)
      {
        goto LABEL_7;
      }
    }
  }

  v16 = AXLogLiveTranscription();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *v21 = 0;
    _os_log_impl(&dword_21FE6B000, v16, OS_LOG_TYPE_DEFAULT, "SwitcherController: Sending transition to Home or AppSwitcher notification", v21, 2u);
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  v18 = [MEMORY[0x277CE7E20] sharedInstance];
  v19 = [v18 liveCaptionsTransitionToHomeOrAppSwitcherNotification];
  CFNotificationCenterPostNotification(DarwinNotifyCenter, v19, 0, 0, 1u);

LABEL_7:
  _Block_object_dispose(&v28, 8);
}

void __100__AXSBSwitcherControllerAccessibility_configureRequest_forSwitcherTransitionRequest_withEventLabel___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [NSClassFromString(&cfstr_Sbdisplayitem.isa) safeValueForKey:@"homeScreenDisplayItem"];
  *(*(*(a1 + 40) + 8) + 24) = [v2 isEqual:v3];
}

@end