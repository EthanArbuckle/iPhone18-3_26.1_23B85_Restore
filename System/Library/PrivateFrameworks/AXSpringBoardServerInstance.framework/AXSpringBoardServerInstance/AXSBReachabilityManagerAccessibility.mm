@interface AXSBReachabilityManagerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)_axReachabilityEnabled;
- (id)_axDictionaryOfAnimationProperties;
- (id)_axReachabilitySettings;
- (void)_axAddReachabilityProperty:(id)a3 toDictionary:(id)a4;
- (void)_axSendReachabilityToggledActionWithPayload:(id)a3;
- (void)_notifyObserversReachabilityModeActive:(BOOL)a3;
- (void)_setKeepAliveTimer;
@end

@implementation AXSBReachabilityManagerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SBPrototypeController"];
  [v3 validateClass:@"SBPrototypeController" hasClassMethod:@"sharedInstance" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SBPrototypeController" hasInstanceMethod:@"rootSettings" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SBReachabilityDomain" hasClassMethod:@"rootSettings" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SBReachabilitySettings" hasInstanceMethod:@"animationSettings" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SBReachabilitySettings" hasInstanceMethod:@"yOffsetFactor" withFullSignature:{"d", 0}];
  [v3 validateClass:@"SBFFluidBehaviorSettings" hasInstanceMethod:@"trackingDampingRatio" withFullSignature:{"d", 0}];
  [v3 validateClass:@"SBFFluidBehaviorSettings" hasInstanceMethod:@"dampingRatio" withFullSignature:{"d", 0}];
  [v3 validateClass:@"SBFFluidBehaviorSettings" hasInstanceMethod:@"trackingResponse" withFullSignature:{"d", 0}];
  [v3 validateClass:@"SBFFluidBehaviorSettings" hasInstanceMethod:@"response" withFullSignature:{"d", 0}];
  [v3 validateClass:@"SBFFluidBehaviorSettings" hasInstanceMethod:@"trackingRetargetImpulse" withFullSignature:{"d", 0}];
  [v3 validateClass:@"SBFFluidBehaviorSettings" hasInstanceMethod:@"retargetImpulse" withFullSignature:{"d", 0}];
  [v3 validateClass:@"SBReachabilityManager" hasClassMethod:@"sharedInstance" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SBReachabilityManager" hasInstanceMethod:@"reachabilityEnabled" withFullSignature:{"B", 0}];
  [v3 validateClass:@"SBReachabilityManager" hasInstanceMethod:@"reachabilityModeActive" withFullSignature:{"B", 0}];
  [v3 validateClass:@"SBReachabilityManager" hasInstanceMethod:@"_notifyObserversReachabilityModeActive:" withFullSignature:{"v", "B", 0}];
  [v3 validateClass:@"SBReachabilityManager" hasInstanceMethod:@"_setKeepAliveTimer" withFullSignature:{"v", 0}];
}

- (void)_notifyObserversReachabilityModeActive:(BOOL)a3
{
  v3 = a3;
  if (a3)
  {
    v5 = ReachableActiveInProgress + 1;
  }

  else
  {
    v5 = ReachableActiveInProgress - 1;
  }

  ReachableActiveInProgress = v5;
  v22.receiver = self;
  v22.super_class = AXSBReachabilityManagerAccessibility;
  [(AXSBReachabilityManagerAccessibility *)&v22 _notifyObserversReachabilityModeActive:?];
  if (v3)
  {
    if (ReachableActiveInProgress >= 1)
    {
      if ([(AXSBReachabilityManagerAccessibility *)self _axReachabilityEnabled])
      {
        v6 = +[_AXSpringBoardServerInstance springBoardServerInstance];
        v7 = [v6 shouldSendReachabilityToggled];

        if (v7)
        {
          v8 = [(AXSBReachabilityManagerAccessibility *)self _axDictionaryOfAnimationProperties];
          v9 = MEMORY[0x277CCABB0];
          v10 = [NSClassFromString(&cfstr_Sbreachability.isa) safeValueForKey:@"sharedInstance"];
          v11 = [v9 numberWithBool:{objc_msgSend(v10, "safeBoolForKey:", @"reachabilityModeActive"}];
          [v8 setObject:v11 forKeyedSubscript:@"enabled"];

          v12 = [(AXSBReachabilityManagerAccessibility *)self _axReachabilitySettings];
          v13 = MEMORY[0x277CCABB0];
          v14 = [v12 safeValueForKey:@"yOffsetFactor"];
          [v14 doubleValue];
          v16 = v15;
          v17 = [MEMORY[0x277D759A0] mainScreen];
          [v17 bounds];
          v19 = [v13 numberWithDouble:v16 * v18];
          [v8 setObject:v19 forKeyedSubscript:@"offset"];

          [(AXSBReachabilityManagerAccessibility *)self _axSendReachabilityToggledActionWithPayload:v8];
LABEL_13:
        }
      }
    }
  }

  else if (ReachabilityActive == 1)
  {
    if ([(AXSBReachabilityManagerAccessibility *)self _axReachabilityEnabled])
    {
      v20 = +[_AXSpringBoardServerInstance springBoardServerInstance];
      v21 = [v20 shouldSendReachabilityToggled];

      if (v21)
      {
        v8 = [(AXSBReachabilityManagerAccessibility *)self _axDictionaryOfAnimationProperties];
        [v8 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:@"enabled"];
        [v8 setObject:&unk_2833B1260 forKeyedSubscript:@"offset"];
        [(AXSBReachabilityManagerAccessibility *)self _axSendReachabilityToggledActionWithPayload:v8];
        goto LABEL_13;
      }
    }
  }

  ReachabilityActive = v3;
}

- (id)_axReachabilitySettings
{
  v2 = NSClassFromString(&cfstr_Sbreachability_0.isa);

  return [(objc_class *)v2 safeValueForKey:@"rootSettings"];
}

- (void)_axAddReachabilityProperty:(id)a3 toDictionary:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = [(AXSBReachabilityManagerAccessibility *)self _axReachabilitySettings];
  v8 = [v7 safeValueForKey:@"animationSettings"];
  v9 = [v8 safeValueForKey:v10];
  if (v9)
  {
    [v6 setObject:v9 forKeyedSubscript:v10];
  }
}

- (id)_axDictionaryOfAnimationProperties
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  [(AXSBReachabilityManagerAccessibility *)self _axAddReachabilityProperty:@"trackingDampingRatio" toDictionary:v3];
  [(AXSBReachabilityManagerAccessibility *)self _axAddReachabilityProperty:@"dampingRatio" toDictionary:v3];
  [(AXSBReachabilityManagerAccessibility *)self _axAddReachabilityProperty:@"trackingResponse" toDictionary:v3];
  [(AXSBReachabilityManagerAccessibility *)self _axAddReachabilityProperty:@"response" toDictionary:v3];
  [(AXSBReachabilityManagerAccessibility *)self _axAddReachabilityProperty:@"trackingRetargetImpulse" toDictionary:v3];
  [(AXSBReachabilityManagerAccessibility *)self _axAddReachabilityProperty:@"retargetImpulse" toDictionary:v3];

  return v3;
}

- (void)_axSendReachabilityToggledActionWithPayload:(id)a3
{
  v3 = MEMORY[0x277D75DA0];
  v4 = a3;
  v5 = [v3 _synchronizeDrawingAcrossProcesses];
  v6 = +[_AXSpringBoardServerInstance springBoardServerInstance];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __84__AXSBReachabilityManagerAccessibility__axSendReachabilityToggledActionWithPayload___block_invoke;
  v7[3] = &__block_descriptor_36_e5_v8__0l;
  v8 = v5;
  [v6 reachabilityToggledWithPayload:v4 synchronizationPort:v5 completion:v7];
}

uint64_t __84__AXSBReachabilityManagerAccessibility__axSendReachabilityToggledActionWithPayload___block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  if (v1)
  {
    return mach_port_deallocate(*MEMORY[0x277D85F48], v1);
  }

  return result;
}

- (BOOL)_axReachabilityEnabled
{
  v2 = [NSClassFromString(&cfstr_Sbreachability.isa) safeValueForKey:@"sharedInstance"];
  v3 = [v2 safeBoolForKey:@"reachabilityEnabled"];

  return v3;
}

- (void)_setKeepAliveTimer
{
  if (!UIAccessibilityIsVoiceOverRunning())
  {
    v3.receiver = self;
    v3.super_class = AXSBReachabilityManagerAccessibility;
    [(AXSBReachabilityManagerAccessibility *)&v3 _setKeepAliveTimer];
  }
}

@end