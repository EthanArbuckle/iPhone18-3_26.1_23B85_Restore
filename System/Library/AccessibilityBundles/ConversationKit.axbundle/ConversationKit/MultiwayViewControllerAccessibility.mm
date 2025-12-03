@interface MultiwayViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)accessibilityPerformEscape;
- (BOOL)axShouldDisableAutoHidingControls;
- (id)_axParticipantShutters;
- (void)_accessibilityExpandControls;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)setDeviceOrientation:(int64_t)orientation;
@end

@implementation MultiwayViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"ConversationKit.MultiwayViewController" isKindOfClass:@"UIViewController"];
  [validationsCopy validateClass:@"ConversationKit.MultiwayViewController" hasProperty:@"isShowingReactions" withType:"B"];
  [validationsCopy validateClass:@"ConversationKit.MultiwayViewController" hasProperty:@"localParticipantView" withType:"@"];
  [validationsCopy validateClass:@"ConversationKit.MultiwayViewController" hasInstanceMethod:@"setControlsState:animated:" withFullSignature:{"v", "q", "B", 0}];
  [validationsCopy validateClass:@"ConversationKit.MultiwayViewController" hasInstanceMethod:@"axShouldDisableAutoHidingControls" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"ConversationKit.MultiwayViewController" hasInstanceMethod:@"accessibilityConstraintController" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"ConversationKit.MultiwayViewController" hasInstanceMethod:@"isPipped" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"CNKFaceTimeConstraintsController" hasInstanceMethod:@"inCallControlsState" withFullSignature:{"q", 0}];
  [validationsCopy validateClass:@"ConversationKit.MultiwayViewController" hasInstanceMethod:@"isOnScreen" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"ConversationKit.MultiwayViewController" hasInstanceMethod:@"isDisplayedInBanner" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"ConversationKit.MultiwayViewController" hasInstanceMethod:@"setDeviceOrientation:" withFullSignature:{"v", "q", 0}];
  [validationsCopy validateClass:@"ConversationKit.MultiwayViewController" hasInstanceMethod:@"call" withFullSignature:{"@", 0}];
}

- (BOOL)accessibilityPerformEscape
{
  [(MultiwayViewControllerAccessibility *)self _axSetDidExpandControls:0];
  if ([(MultiwayViewControllerAccessibility *)self safeBoolForKey:@"isShowingReactions"])
  {
    v3 = [(MultiwayViewControllerAccessibility *)self safeValueForKey:@"localParticipantView"];
    accessibilityActivate = [v3 accessibilityActivate];

    return accessibilityActivate;
  }

  v6 = [(MultiwayViewControllerAccessibility *)self safeValueForKey:@"accessibilityConstraintController"];
  v7 = [v6 safeIntegerForKey:@"inCallControlsState"];

  if (v7 > 3)
  {
    if (v7 == 5)
    {
      v8 = 2;
      goto LABEL_12;
    }

    if (v7 == 4)
    {
      v8 = 1;
      goto LABEL_12;
    }
  }

  else
  {
    if ((v7 - 1) < 3)
    {
      v8 = 0;
LABEL_12:
      [(MultiwayViewControllerAccessibility *)self setControlsState:v8 animated:1];
      return 1;
    }

    if (!v7)
    {
      return 0;
    }
  }

  return 1;
}

- (void)_accessibilityExpandControls
{
  [(MultiwayViewControllerAccessibility *)self _axSetDidExpandControls:1];
  v3 = [(MultiwayViewControllerAccessibility *)self safeValueForKey:@"accessibilityConstraintController"];
  v4 = [v3 safeIntegerForKey:@"inCallControlsState"];

  v5 = 4;
  if (v4 == 3)
  {
    v5 = 6;
  }

  if (v4 == 2)
  {
    v6 = 5;
  }

  else
  {
    v6 = v5;
  }

  [(MultiwayViewControllerAccessibility *)self _axSetExpectedExpandedState:v6];
  [(MultiwayViewControllerAccessibility *)self setControlsState:v6 animated:1];
  AXPerformBlockOnMainThreadAfterDelay();
}

- (BOOL)axShouldDisableAutoHidingControls
{
  if (UIAccessibilityIsVoiceOverRunning() || UIAccessibilityIsSwitchControlRunning())
  {
    return 1;
  }

  return MEMORY[0x2A1C6A990]();
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v20 = *MEMORY[0x29EDCA608];
  v18.receiver = self;
  v18.super_class = MultiwayViewControllerAccessibility;
  [(MultiwayViewControllerAccessibility *)&v18 _accessibilityLoadAccessibilityInformation];
  [(MultiwayViewControllerAccessibility *)self _axParticipantShutters];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v3 = v15 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v19 count:16];
  if (v4)
  {
    v5 = *v15;
    do
    {
      v6 = 0;
      do
      {
        if (*v15 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v14 + 1) + 8 * v6);
        v8 = accessibilityLocalizedString(@"take.live.photo");
        [v7 setAccessibilityLabel:v8];

        ++v6;
      }

      while (v4 != v6);
      v4 = [v3 countByEnumeratingWithState:&v14 objects:v19 count:16];
    }

    while (v4);
  }

  v9 = [(MultiwayViewControllerAccessibility *)self safeUIViewForKey:@"view"];
  objc_initWeak(&location, self);
  v11[0] = MEMORY[0x29EDCA5F8];
  v11[1] = 3221225472;
  v11[2] = __81__MultiwayViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke;
  v11[3] = &unk_29F2B7D20;
  objc_copyWeak(&v12, &location);
  [v9 _setAccessibilityElementsHiddenBlock:v11];
  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);

  v10 = *MEMORY[0x29EDCA608];
}

uint64_t __81__MultiwayViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if ([WeakRetained safeBoolForKey:@"isPipped"])
  {
    v3 = 1;
  }

  else
  {
    v4 = objc_loadWeakRetained((a1 + 32));
    if ([v4 safeBoolForKey:@"isOnScreen"])
    {
      v3 = 0;
    }

    else
    {
      v5 = objc_loadWeakRetained((a1 + 32));
      v3 = [v5 safeBoolForKey:@"isDisplayedInBanner"] ^ 1;
    }
  }

  return v3;
}

- (void)setDeviceOrientation:(int64_t)orientation
{
  v14.receiver = self;
  v14.super_class = MultiwayViewControllerAccessibility;
  [(MultiwayViewControllerAccessibility *)&v14 setDeviceOrientation:?];
  if ((AXDeviceIsPad() & 1) == 0)
  {
    objc_opt_class();
    v5 = [(MultiwayViewControllerAccessibility *)self safeValueForKey:@"call"];
    v6 = __UIAccessibilityCastAsClass();

    if ([v6 service] == 3)
    {
      v7 = 0;
      v8 = 1;
      v9 = 1;
      if (orientation > 1)
      {
        if (orientation == 2)
        {
          v9 = 0;
          v7 = @"rotate.landscape";
          v8 = 4;
        }

        else if (orientation == 3)
        {
          v9 = 0;
          v7 = @"rotate.portrait.upsidedown";
          v8 = 2;
        }
      }

      else if (orientation)
      {
        if (orientation == 1)
        {
          v9 = 0;
          v7 = @"rotate.portrait";
          v8 = 1;
        }
      }

      else
      {
        v9 = 0;
        v7 = @"rotate.landscape";
        v8 = 3;
      }

      mEMORY[0x29EDC7938] = [MEMORY[0x29EDC7938] sharedApplication];
      if ([mEMORY[0x29EDC7938] _accessibilityApplicationOrientation] != v8)
      {
        [mEMORY[0x29EDC7938] _accessibilitySetApplicationOrientation:v8];
        v11 = [(MultiwayViewControllerAccessibility *)self safeBoolForKey:@"isOnScreen"];
        v12 = [(MultiwayViewControllerAccessibility *)self safeBoolForKey:@"isPipped"];
        if (v11)
        {
          if ((v12 & 1) == 0)
          {
            if ((v9 & 1) == 0)
            {
              v13 = accessibilityLocalizedString(v7);
              UIAccessibilitySpeakAndDoNotBeInterrupted();
            }

            UIAccessibilityPostNotification(0x3E8u, 0);
          }
        }
      }
    }
  }
}

- (id)_axParticipantShutters
{
  v2 = [(MultiwayViewControllerAccessibility *)self safeUIViewForKey:@"view"];
  v3 = [v2 _accessibilityFindUnsortedSubviewDescendantsPassingTest:&__block_literal_global_4];

  return v3;
}

uint64_t __61__MultiwayViewControllerAccessibility__axParticipantShutters__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 accessibilityIdentifier];
  v3 = [v2 isEqualToString:@"participant-shutter"];

  return v3;
}

@end