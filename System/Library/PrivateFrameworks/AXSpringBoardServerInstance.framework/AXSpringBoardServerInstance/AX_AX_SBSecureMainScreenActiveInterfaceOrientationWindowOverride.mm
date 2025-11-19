@interface AX_AX_SBSecureMainScreenActiveInterfaceOrientationWindowOverride
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)_accessibilityTripleClickElementHitTest:(id)a3;
- (void)_processEventForVOSpeakage:(id)a3;
- (void)_tripleClickSpeakMenuProcessTouch:(id)a3;
- (void)sendEvent:(id)a3;
@end

@implementation AX_AX_SBSecureMainScreenActiveInterfaceOrientationWindowOverride

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"_UIAlertControllerActionView" hasInstanceMethod:@"action" withFullSignature:{"@", 0}];
  [v3 validateClass:@"_UIAlertControllerActionView" hasInstanceVariable:@"_checkView" withType:"UIImageView"];
  [v3 validateClass:@"UIWindow" hasInstanceMethod:@"sendEvent:" withFullSignature:{"v", "@", 0}];
}

- (id)_accessibilityTripleClickElementHitTest:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CBEB18] array];
  [v5 addObject:self];
  while ([v5 count])
  {
    v6 = [v5 firstObject];
    [v5 removeObjectAtIndex:0];
    [v4 locationInView:v6];
    if ([v6 pointInside:0 withEvent:?])
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        goto LABEL_8;
      }

      NSClassFromString(&cfstr_Uialertcontrol.isa);
      if (objc_opt_isKindOfClass())
      {
        goto LABEL_8;
      }

      v7 = [v6 subviews];
      [v5 addObjectsFromArray:v7];
    }
  }

  v6 = 0;
LABEL_8:

  return v6;
}

- (void)_tripleClickSpeakMenuProcessTouch:(id)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(AX_AX_SBSecureMainScreenActiveInterfaceOrientationWindowOverride *)self _accessibilityValueForKey:@"TripleClickTitle"];
  v6 = [(AX_AX_SBSecureMainScreenActiveInterfaceOrientationWindowOverride *)self _accessibilityTripleClickElementHitTest:v4];
  NSClassFromString(&cfstr_Uialertcontrol.isa);
  if (objc_opt_isKindOfClass())
  {
    buf[0] = 0;
    objc_opt_class();
    v7 = [v6 safeValueForKey:@"action"];
    v8 = __UIAccessibilityCastAsClass();

    v9 = [v8 title];
    v10 = [v6 safeUIViewForKey:@"_checkView"];
    v11 = v10;
    if (v10 && ([v10 isHidden] & 1) == 0)
    {
      v30 = SBAXLocalizedString(@"selected");
      v31 = @"__AXStringForVariablesSentinel";
      v12 = __AXStringForVariables();

      v9 = v12;
    }

    if (!v9)
    {
      goto LABEL_16;
    }
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || ([v6 text], (v9 = objc_claimAutoreleasedReturnValue()) == 0))
    {
LABEL_16:
      v21 = [MEMORY[0x277D65370] sharedInstance];
      [v21 notifySpeakServicesToStopSpeaking];

      v22 = [MEMORY[0x277CE69A0] sharedInstance];
      v23 = [v22 ignoreLogging];

      if ((v23 & 1) == 0)
      {
        v24 = [MEMORY[0x277CE69A0] identifier];
        v25 = AXLoggerForFacility();

        v26 = AXOSLogLevelFromAXLogLevel();
        if (os_log_type_enabled(v25, v26))
        {
          v27 = AXColorizeFormatLog();
          v28 = _AXStringForArgs();
          if (os_log_type_enabled(v25, v26))
          {
            *buf = 138543362;
            v33 = v28;
            _os_log_impl(&dword_21FE6B000, v25, v26, "%{public}@", buf, 0xCu);
          }
        }
      }

      [(AX_AX_SBSecureMainScreenActiveInterfaceOrientationWindowOverride *)self _accessibilityRemoveValueForKey:@"TripleClickTitle"];
      v9 = 0;
      goto LABEL_23;
    }
  }

  if (([v5 isEqualToString:{v9, v30, v31}] & 1) == 0)
  {
    v13 = [MEMORY[0x277D65370] sharedInstance];
    _AXSVoiceOverTouchSpeakingRate();
    [v13 notifySpeakServicesForSpeechOutput:v9 volume:1.0 speakingRate:v14];

    [(AX_AX_SBSecureMainScreenActiveInterfaceOrientationWindowOverride *)self _accessibilitySetRetainedValue:v9 forKey:@"TripleClickTitle"];
    v15 = [MEMORY[0x277CE69A0] sharedInstance];
    LOBYTE(v13) = [v15 ignoreLogging];

    if ((v13 & 1) == 0)
    {
      v16 = [MEMORY[0x277CE69A0] identifier];
      v17 = AXLoggerForFacility();

      v18 = AXOSLogLevelFromAXLogLevel();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = AXColorizeFormatLog();
        v20 = _AXStringForArgs();
        if (os_log_type_enabled(v17, v18))
        {
          *buf = 138543362;
          v33 = v20;
          _os_log_impl(&dword_21FE6B000, v17, v18, "%{public}@", buf, 0xCu);
        }
      }
    }
  }

LABEL_23:

  v29 = *MEMORY[0x277D85DE8];
}

- (void)_processEventForVOSpeakage:(id)a3
{
  v4 = a3;
  v5 = [(AX_AX_SBSecureMainScreenActiveInterfaceOrientationWindowOverride *)self _accessibilityValueForKey:@"AXDispatchTimer"];
  if (!v5)
  {
    v6 = objc_alloc(MEMORY[0x277CE6950]);
    v5 = [v6 initWithTargetSerialQueue:MEMORY[0x277D85CD0]];
    [v5 setAutomaticallyCancelPendingBlockUponSchedulingNewBlock:1];
    [(AX_AX_SBSecureMainScreenActiveInterfaceOrientationWindowOverride *)self _accessibilitySetRetainedValue:v5 forKey:@"AXDispatchTimer"];
  }

  if ([(AX_AX_SBSecureMainScreenActiveInterfaceOrientationWindowOverride *)self _accessibilityBoolValueForKey:@"TripleClickSpeakWaited"])
  {
    [(AX_AX_SBSecureMainScreenActiveInterfaceOrientationWindowOverride *)self _tripleClickSpeakMenuProcessTouch:v4];
  }

  else if (![v5 isPending] || objc_msgSend(v5, "isCancelled"))
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __95__AX_AX_SBSecureMainScreenActiveInterfaceOrientationWindowOverride__processEventForVOSpeakage___block_invoke;
    v7[3] = &unk_27842BBF8;
    v7[4] = self;
    v8 = v4;
    [v5 afterDelay:v7 processBlock:0.300000012];
  }
}

- (void)sendEvent:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(AX_AX_SBSecureMainScreenActiveInterfaceOrientationWindowOverride *)self accessibilityIdentifier];
  v6 = [v5 isEqualToString:@"TripleClickAskWindow"];

  if (v6 && ![v4 type])
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v15 = v4;
    v7 = [v4 allTouches];
    v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (!v8)
    {
      goto LABEL_18;
    }

    v9 = v8;
    v10 = *v18;
    while (1)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        if (![v12 phase] || objc_msgSend(v12, "phase") == 1)
        {
          v13 = _AXSTripleClickCopyOptions();
          if ([v13 containsObject:&unk_2833B1510])
          {
            [(AX_AX_SBSecureMainScreenActiveInterfaceOrientationWindowOverride *)self _processEventForVOSpeakage:v12];
          }

          goto LABEL_15;
        }

        if ([v12 phase] == 3 || objc_msgSend(v12, "phase") == 4)
        {
          v13 = [(AX_AX_SBSecureMainScreenActiveInterfaceOrientationWindowOverride *)self _accessibilityValueForKey:@"AXDispatchTimer"];
          [v13 cancel];
          [(AX_AX_SBSecureMainScreenActiveInterfaceOrientationWindowOverride *)self _accessibilitySetBoolValue:0 forKey:@"TripleClickSpeakWaited"];
          [(AX_AX_SBSecureMainScreenActiveInterfaceOrientationWindowOverride *)self _accessibilityRemoveValueForKey:@"TripleClickTitle"];
LABEL_15:

          continue;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (!v9)
      {
LABEL_18:

        v4 = v15;
        break;
      }
    }
  }

  v16.receiver = self;
  v16.super_class = AX_AX_SBSecureMainScreenActiveInterfaceOrientationWindowOverride;
  [(AX_AX_SBSecureMainScreenActiveInterfaceOrientationWindowOverride *)&v16 sendEvent:v4];

  v14 = *MEMORY[0x277D85DE8];
}

@end