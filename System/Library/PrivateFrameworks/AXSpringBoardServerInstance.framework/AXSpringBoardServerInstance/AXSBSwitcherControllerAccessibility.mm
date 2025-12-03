@interface AXSBSwitcherControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)configureRequest:(id)request forSwitcherTransitionRequest:(id)transitionRequest withEventLabel:(id)label;
@end

@implementation AXSBSwitcherControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SBSwitcherController"];
  [validationsCopy validateClass:@"SBAppLayout"];
  [validationsCopy validateClass:@"SBDisplayItem"];
  [validationsCopy validateClass:@"SBSwitcherController" hasInstanceMethod:@"configureRequest:forSwitcherTransitionRequest: withEventLabel:" withFullSignature:{"v", "@", "@", "@", 0}];
  [validationsCopy validateClass:@"SBDisplayItem" hasInstanceMethod:@"isEqual:" withFullSignature:{"B", "@", 0}];
  [validationsCopy validateClass:@"SBSwitcherTransitionRequest" hasInstanceMethod:@"unlockedEnvironmentMode" withFullSignature:{"q", 0}];
  [validationsCopy validateClass:@"SBSwitcherTransitionRequest" hasInstanceMethod:@"appLayout" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SBSwitcherTransitionRequest" hasInstanceMethod:@"activatingDisplayItem" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SBDisplayItem" hasClassMethod:@"homeScreenDisplayItem" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SBAppLayout" hasClassMethod:@"homeScreenAppLayout" withFullSignature:{"@", 0}];
}

- (void)configureRequest:(id)request forSwitcherTransitionRequest:(id)transitionRequest withEventLabel:(id)label
{
  requestCopy = request;
  transitionRequestCopy = transitionRequest;
  labelCopy = label;
  v32.receiver = self;
  v32.super_class = AXSBSwitcherControllerAccessibility;
  [(AXSBSwitcherControllerAccessibility *)&v32 configureRequest:requestCopy forSwitcherTransitionRequest:transitionRequestCopy withEventLabel:labelCopy];
  v11 = [transitionRequestCopy safeIntegerForKey:@"unlockedEnvironmentMode"];
  v12 = [transitionRequestCopy safeValueForKey:@"appLayout"];
  v13 = [transitionRequestCopy safeValueForKey:@"activatingDisplayItem"];
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
  mEMORY[0x277CE7E20] = [MEMORY[0x277CE7E20] sharedInstance];
  liveCaptionsTransitionToHomeOrAppSwitcherNotification = [mEMORY[0x277CE7E20] liveCaptionsTransitionToHomeOrAppSwitcherNotification];
  CFNotificationCenterPostNotification(DarwinNotifyCenter, liveCaptionsTransitionToHomeOrAppSwitcherNotification, 0, 0, 1u);

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