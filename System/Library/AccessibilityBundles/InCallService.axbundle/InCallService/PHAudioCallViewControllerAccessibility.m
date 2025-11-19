@interface PHAudioCallViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_accessibilityAnnounceIncomingCallUsingCurrentCallInfo:(BOOL)a3;
- (void)_accessibilityBottomBarStoppedAnimating:(id)a3;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_accessibilitySubscribeForBottomBarNotificationsIfNecessary;
- (void)_axSetPhoneToMiddleState:(unsigned __int16)a3 totalTimeTried:(double)a4;
- (void)dealloc;
@end

@implementation PHAudioCallViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"PHAudioCallViewController" isKindOfClass:@"PHCallViewController"];
  [v3 validateClass:@"PHCallViewController" hasInstanceMethod:@"bottomBar" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PHAudioCallViewController" hasInstanceMethod:@"viewDidAppear:" withFullSignature:{"v", "B", 0}];
  [v3 validateClass:@"PHAudioCallViewController" hasInstanceMethod:@"setMiddleViewState:" withFullSignature:{"v", "S", 0}];
  [v3 validateClass:@"PHAudioCallViewController" hasInstanceMethod:@"setCurrentState: animated:" withFullSignature:{"v", "S", "B", 0}];
  [v3 validateClass:@"PHCallViewController" hasInstanceMethod:@"currentState" withFullSignature:{"S", 0}];
  [v3 validateClass:@"PHAudioCallViewController" hasInstanceMethod:@"middleViewState" withFullSignature:{"S", 0}];
  [v3 validateClass:@"PHBottomBar" hasInstanceMethod:@"slidingButton" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PHBottomBar" hasInstanceMethod:@"mainRightButton" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PHBottomBar" hasInstanceMethod:@"animating" withFullSignature:{"B", 0}];
  [v3 validateClass:@"PHAudioCallViewController" hasInstanceMethod:@"callForBackgroundImage" withFullSignature:{"@", 0}];
  [v3 validateClass:@"TUCall" hasInstanceMethod:@"displayName" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PHAudioCallViewController" hasInstanceMethod:@"setMiddleViewState: animated: completion:" withFullSignature:{"v", "S", "B", "@?", 0}];
  [v3 validateClass:@"PHAudioCallViewController" hasInstanceMethod:@"callParticipantsViewController" withFullSignature:{"@", 0}];
}

- (void)_accessibilitySubscribeForBottomBarNotificationsIfNecessary
{
  if (![(PHAudioCallViewControllerAccessibility *)self _accessibilityHasSubscribedForBottomBarNotifications])
  {
    v3 = [MEMORY[0x29EDBA068] defaultCenter];
    [v3 addObserver:self selector:sel__accessibilityBottomBarStoppedAnimating_ name:@"AXPHBottomBarStoppedAnimatingNotification" object:0];

    [(PHAudioCallViewControllerAccessibility *)self _accessibilitySetHasSubscribedToBottomBarNotifications:1];
  }
}

- (void)dealloc
{
  v3 = [MEMORY[0x29EDBA068] defaultCenter];
  [v3 removeObserver:self name:@"AXPHBottomBarStoppedAnimatingNotification" object:0];

  v4.receiver = self;
  v4.super_class = PHAudioCallViewControllerAccessibility;
  [(PHAudioCallViewControllerAccessibility *)&v4 dealloc];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v4.receiver = self;
  v4.super_class = PHAudioCallViewControllerAccessibility;
  [(PHAudioCallViewControllerAccessibility *)&v4 _accessibilityLoadAccessibilityInformation];
  [(PHAudioCallViewControllerAccessibility *)self _accessibilitySubscribeForBottomBarNotificationsIfNecessary];
  v3 = [(PHAudioCallViewControllerAccessibility *)self safeValueForKey:@"view"];
  [v3 setAccessibilityIgnoresInvertColors:1];

  AXPerformBlockOnMainThreadAfterDelay();
}

- (void)_accessibilityAnnounceIncomingCallUsingCurrentCallInfo:(BOOL)a3
{
  v45[2] = *MEMORY[0x29EDCA608];
  if (![(PHAudioCallViewControllerAccessibility *)self _accessibilityDidAnnounceIncomingCall])
  {
    [(PHAudioCallViewControllerAccessibility *)self _accessibilitySetDidAnnounceIncomingCall:1];
    if (UIAccessibilityIsVoiceOverRunning())
    {
      v5 = [(PHAudioCallViewControllerAccessibility *)self safeValueForKey:@"bottomBar"];
      v6 = [v5 safeValueForKey:@"slidingButton"];
      v7 = [v5 safeValueForKey:@"mainRightButton"];
      v8 = v7;
      if (v6)
      {
        v9 = v6;
      }

      else
      {
        v9 = v7;
      }

      v10 = v9;
      v11 = [(PHAudioCallViewControllerAccessibility *)self safeValueForKey:@"callParticipantsViewController"];
      v12 = [v11 safeValueForKey:@"view"];
      v13 = __UIAccessibilitySafeClass();

      v42 = v13;
      v14 = axStringForCallParticipantsView(v13);
      v15 = [MEMORY[0x29EDC6F78] sharedInstance];
      v16 = [v15 incomingCall];

      v17 = [v16 handle];
      if (!a3)
      {
        v37 = v5;
        v38 = v11;
        v39 = v10;
        v40 = v8;
        v18 = [v16 isoCountryCode];
        v19 = [v17 canonicalHandleForISOCountryCode:v18];

        v20 = [MEMORY[0x29EDC6F78] sharedInstance];
        v21 = [v20 providerManager];
        v22 = [v21 telephonyProvider];
        [v22 senderIdentityForHandle:v19];
        v24 = v23 = v17;
        v25 = [v24 localizedName];

        v17 = v23;
        if (!v25)
        {
          v25 = [v23 value];
        }

        v14 = v25;
        v10 = v39;
        v8 = v40;
        v5 = v37;
        v11 = v38;
      }

      if (v16 && v14)
      {
        v26 = MEMORY[0x29EDBA0F8];
        accessibilityLocalizedString(@"incoming.call");
        v41 = v6;
        v27 = v5;
        v28 = v17;
        v30 = v29 = v11;
        v31 = [v26 stringWithFormat:v30, v14];

        v32 = objc_allocWithZone(MEMORY[0x29EDB9F30]);
        v33 = *MEMORY[0x29EDBD860];
        v44[0] = *MEMORY[0x29EDBDA00];
        v44[1] = v33;
        v45[0] = MEMORY[0x29EDB8EB0];
        v45[1] = &unk_2A21D3208;
        v34 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v45 forKeys:v44 count:2];
        v35 = [v32 initWithString:v31 attributes:v34];

        v11 = v29;
        v17 = v28;
        v5 = v27;
        v6 = v41;
        UIAccessibilityPostNotification(*MEMORY[0x29EDC7EA8], v35);
      }

      if ([v10 _accessibilityViewIsVisible])
      {
        v43 = v10;
        AXPerformBlockOnMainThreadAfterDelay();
      }
    }
  }

  v36 = *MEMORY[0x29EDCA608];
}

uint64_t __97__PHAudioCallViewControllerAccessibility__accessibilityAnnounceIncomingCallUsingCurrentCallInfo___block_invoke(uint64_t a1)
{
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7488], *(a1 + 32));
  v1 = *MEMORY[0x29EDC7ED8];

  return MEMORY[0x2A1C5EA58](v1);
}

- (void)_axSetPhoneToMiddleState:(unsigned __int16)a3 totalTimeTried:(double)a4
{
  v5 = a3;
  [(PHAudioCallViewControllerAccessibility *)self _accessibilitySetWantsToShowKeypad:0];
  v6 = [MEMORY[0x29EDC6F78] sharedInstance];
  v7 = [v6 currentCalls];
  v8 = [v7 firstObject];

  if (v5 == 4 && a4 <= 4.0 && UIAccessibilityIsVoiceOverRunning() && [v8 service] == 1 && (objc_msgSend(v8, "isTTY") & 1) == 0 && (objc_msgSend(v8, "isRTT") & 1) == 0)
  {
    AXPerformBlockOnMainThreadAfterDelay();
  }
}

void __82__PHAudioCallViewControllerAccessibility__axSetPhoneToMiddleState_totalTimeTried___block_invoke(uint64_t a1)
{
  v7 = *(a1 + 40);
  LOBYTE(v6) = 1;
  _AXLogWithFacility();
  objc_initWeak(&location, *(a1 + 32));
  v2 = [*(a1 + 32) safeValueForKey:{@"bottomBar", v6, @"Setting middle state to keyboard: %f", v7}];
  v3 = [v2 safeBoolForKey:@"animating"];
  v4 = ([*(a1 + 32) _accessibilityMiddleViewStateDepth] > 0) | v3;
  v5 = *(a1 + 32);
  if (v4)
  {
    [*(a1 + 32) _accessibilitySetWantsToShowKeypad:1];
  }

  else
  {
    v8[0] = MEMORY[0x29EDCA5F8];
    v8[1] = 3221225472;
    v8[2] = __82__PHAudioCallViewControllerAccessibility__axSetPhoneToMiddleState_totalTimeTried___block_invoke_2;
    v8[3] = &unk_29F2C8A98;
    objc_copyWeak(v9, &location);
    v9[1] = *(a1 + 40);
    [v5 setMiddleViewState:2 animated:1 completion:v8];
    objc_destroyWeak(v9);
  }

  objc_destroyWeak(&location);
}

void __82__PHAudioCallViewControllerAccessibility__axSetPhoneToMiddleState_totalTimeTried___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained safeIntForKey:@"middleViewState"];

  if (v3 != 2)
  {
    v4 = objc_loadWeakRetained((a1 + 32));
    [v4 _axSetPhoneToMiddleState:objc_msgSend(v4 totalTimeTried:{"safeIntForKey:", @"currentState", *(a1 + 40) + 0.5}];
  }
}

uint64_t __67__PHAudioCallViewControllerAccessibility_setCurrentState_animated___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _accessibilitySetDidAnnounceIncomingCall:0];
  v2 = *(a1 + 32);

  return [v2 _accessibilityAnnounceIncomingCallUsingCurrentCallInfo:0];
}

- (void)_accessibilityBottomBarStoppedAnimating:(id)a3
{
  if ([(PHAudioCallViewControllerAccessibility *)self _accessibilityWantsToShowKeypad])
  {
    v4 = [(PHAudioCallViewControllerAccessibility *)self safeIntForKey:@"currentState"];

    [(PHAudioCallViewControllerAccessibility *)self _axSetPhoneToMiddleState:v4 totalTimeTried:0.0];
  }
}

void __81__PHAudioCallViewControllerAccessibility_setMiddleViewState_animated_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained _accessibilityMiddleViewStateDepth];
  v4 = v3 - 1;
  if ((*(a1 + 56) & 1) == 0 && v3 >= 1)
  {
    [WeakRetained _accessibilitySetMiddleViewStateDepth:v4];
  }

  if (!v4 && [*(a1 + 32) _accessibilityWantsToShowKeypad])
  {
    v5 = objc_loadWeakRetained((a1 + 48));
    [WeakRetained _axSetPhoneToMiddleState:objc_msgSend(v5 totalTimeTried:{"safeIntForKey:", @"currentState", 0.0}];
  }
}

@end