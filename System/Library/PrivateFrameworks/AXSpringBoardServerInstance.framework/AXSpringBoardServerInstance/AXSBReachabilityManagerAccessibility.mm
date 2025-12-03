@interface AXSBReachabilityManagerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_axReachabilityEnabled;
- (id)_axDictionaryOfAnimationProperties;
- (id)_axReachabilitySettings;
- (void)_axAddReachabilityProperty:(id)property toDictionary:(id)dictionary;
- (void)_axSendReachabilityToggledActionWithPayload:(id)payload;
- (void)_notifyObserversReachabilityModeActive:(BOOL)active;
- (void)_setKeepAliveTimer;
@end

@implementation AXSBReachabilityManagerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SBPrototypeController"];
  [validationsCopy validateClass:@"SBPrototypeController" hasClassMethod:@"sharedInstance" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SBPrototypeController" hasInstanceMethod:@"rootSettings" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SBReachabilityDomain" hasClassMethod:@"rootSettings" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SBReachabilitySettings" hasInstanceMethod:@"animationSettings" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SBReachabilitySettings" hasInstanceMethod:@"yOffsetFactor" withFullSignature:{"d", 0}];
  [validationsCopy validateClass:@"SBFFluidBehaviorSettings" hasInstanceMethod:@"trackingDampingRatio" withFullSignature:{"d", 0}];
  [validationsCopy validateClass:@"SBFFluidBehaviorSettings" hasInstanceMethod:@"dampingRatio" withFullSignature:{"d", 0}];
  [validationsCopy validateClass:@"SBFFluidBehaviorSettings" hasInstanceMethod:@"trackingResponse" withFullSignature:{"d", 0}];
  [validationsCopy validateClass:@"SBFFluidBehaviorSettings" hasInstanceMethod:@"response" withFullSignature:{"d", 0}];
  [validationsCopy validateClass:@"SBFFluidBehaviorSettings" hasInstanceMethod:@"trackingRetargetImpulse" withFullSignature:{"d", 0}];
  [validationsCopy validateClass:@"SBFFluidBehaviorSettings" hasInstanceMethod:@"retargetImpulse" withFullSignature:{"d", 0}];
  [validationsCopy validateClass:@"SBReachabilityManager" hasClassMethod:@"sharedInstance" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SBReachabilityManager" hasInstanceMethod:@"reachabilityEnabled" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"SBReachabilityManager" hasInstanceMethod:@"reachabilityModeActive" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"SBReachabilityManager" hasInstanceMethod:@"_notifyObserversReachabilityModeActive:" withFullSignature:{"v", "B", 0}];
  [validationsCopy validateClass:@"SBReachabilityManager" hasInstanceMethod:@"_setKeepAliveTimer" withFullSignature:{"v", 0}];
}

- (void)_notifyObserversReachabilityModeActive:(BOOL)active
{
  activeCopy = active;
  if (active)
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
  if (activeCopy)
  {
    if (ReachableActiveInProgress >= 1)
    {
      if ([(AXSBReachabilityManagerAccessibility *)self _axReachabilityEnabled])
      {
        v6 = +[_AXSpringBoardServerInstance springBoardServerInstance];
        shouldSendReachabilityToggled = [v6 shouldSendReachabilityToggled];

        if (shouldSendReachabilityToggled)
        {
          _axDictionaryOfAnimationProperties = [(AXSBReachabilityManagerAccessibility *)self _axDictionaryOfAnimationProperties];
          v9 = MEMORY[0x277CCABB0];
          v10 = [NSClassFromString(&cfstr_Sbreachability.isa) safeValueForKey:@"sharedInstance"];
          v11 = [v9 numberWithBool:{objc_msgSend(v10, "safeBoolForKey:", @"reachabilityModeActive"}];
          [_axDictionaryOfAnimationProperties setObject:v11 forKeyedSubscript:@"enabled"];

          _axReachabilitySettings = [(AXSBReachabilityManagerAccessibility *)self _axReachabilitySettings];
          v13 = MEMORY[0x277CCABB0];
          v14 = [_axReachabilitySettings safeValueForKey:@"yOffsetFactor"];
          [v14 doubleValue];
          v16 = v15;
          mainScreen = [MEMORY[0x277D759A0] mainScreen];
          [mainScreen bounds];
          v19 = [v13 numberWithDouble:v16 * v18];
          [_axDictionaryOfAnimationProperties setObject:v19 forKeyedSubscript:@"offset"];

          [(AXSBReachabilityManagerAccessibility *)self _axSendReachabilityToggledActionWithPayload:_axDictionaryOfAnimationProperties];
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
      shouldSendReachabilityToggled2 = [v20 shouldSendReachabilityToggled];

      if (shouldSendReachabilityToggled2)
      {
        _axDictionaryOfAnimationProperties = [(AXSBReachabilityManagerAccessibility *)self _axDictionaryOfAnimationProperties];
        [_axDictionaryOfAnimationProperties setObject:MEMORY[0x277CBEC28] forKeyedSubscript:@"enabled"];
        [_axDictionaryOfAnimationProperties setObject:&unk_2833B1260 forKeyedSubscript:@"offset"];
        [(AXSBReachabilityManagerAccessibility *)self _axSendReachabilityToggledActionWithPayload:_axDictionaryOfAnimationProperties];
        goto LABEL_13;
      }
    }
  }

  ReachabilityActive = activeCopy;
}

- (id)_axReachabilitySettings
{
  v2 = NSClassFromString(&cfstr_Sbreachability_0.isa);

  return [(objc_class *)v2 safeValueForKey:@"rootSettings"];
}

- (void)_axAddReachabilityProperty:(id)property toDictionary:(id)dictionary
{
  propertyCopy = property;
  dictionaryCopy = dictionary;
  _axReachabilitySettings = [(AXSBReachabilityManagerAccessibility *)self _axReachabilitySettings];
  v8 = [_axReachabilitySettings safeValueForKey:@"animationSettings"];
  v9 = [v8 safeValueForKey:propertyCopy];
  if (v9)
  {
    [dictionaryCopy setObject:v9 forKeyedSubscript:propertyCopy];
  }
}

- (id)_axDictionaryOfAnimationProperties
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  [(AXSBReachabilityManagerAccessibility *)self _axAddReachabilityProperty:@"trackingDampingRatio" toDictionary:dictionary];
  [(AXSBReachabilityManagerAccessibility *)self _axAddReachabilityProperty:@"dampingRatio" toDictionary:dictionary];
  [(AXSBReachabilityManagerAccessibility *)self _axAddReachabilityProperty:@"trackingResponse" toDictionary:dictionary];
  [(AXSBReachabilityManagerAccessibility *)self _axAddReachabilityProperty:@"response" toDictionary:dictionary];
  [(AXSBReachabilityManagerAccessibility *)self _axAddReachabilityProperty:@"trackingRetargetImpulse" toDictionary:dictionary];
  [(AXSBReachabilityManagerAccessibility *)self _axAddReachabilityProperty:@"retargetImpulse" toDictionary:dictionary];

  return dictionary;
}

- (void)_axSendReachabilityToggledActionWithPayload:(id)payload
{
  v3 = MEMORY[0x277D75DA0];
  payloadCopy = payload;
  _synchronizeDrawingAcrossProcesses = [v3 _synchronizeDrawingAcrossProcesses];
  v6 = +[_AXSpringBoardServerInstance springBoardServerInstance];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __84__AXSBReachabilityManagerAccessibility__axSendReachabilityToggledActionWithPayload___block_invoke;
  v7[3] = &__block_descriptor_36_e5_v8__0l;
  v8 = _synchronizeDrawingAcrossProcesses;
  [v6 reachabilityToggledWithPayload:payloadCopy synchronizationPort:_synchronizeDrawingAcrossProcesses completion:v7];
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