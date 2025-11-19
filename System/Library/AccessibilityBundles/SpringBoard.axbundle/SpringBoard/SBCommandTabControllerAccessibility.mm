@interface SBCommandTabControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_activateWithForwardDirection:(BOOL)a3;
@end

@implementation SBCommandTabControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SBSceneManagerCoordinator"];
  [v3 validateClass:@"FBDisplayManager"];
  [v3 validateClass:@"SBSceneManagerCoordinator" hasClassMethod:@"sharedInstance" withFullSignature:{"@", 0}];
  [v3 validateClass:@"FBDisplayManager" hasClassMethod:@"mainIdentity" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SBSceneManagerCoordinator" hasInstanceMethod:@"sceneManagerForDisplayIdentity:" withFullSignature:{"@", "@", 0}];
  [v3 validateClass:@"SBSceneManager" hasInstanceMethod:@"externalForegroundApplicationSceneHandles" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SBCommandTabController" hasInstanceMethod:@"_activateWithForwardDirection:" withFullSignature:{"v", "B", 0}];
  [v3 validateClass:@"SBCommandTabController" hasInstanceVariable:@"_commandTabViewController" withType:"SBCommandTabViewController"];
}

- (void)_activateWithForwardDirection:(BOOL)a3
{
  v3 = a3;
  v21.receiver = self;
  v21.super_class = SBCommandTabControllerAccessibility;
  [(SBCommandTabControllerAccessibility *)&v21 _activateWithForwardDirection:?];
  if (v3)
  {
    v5 = [NSClassFromString(&cfstr_Sbscenemanager.isa) safeValueForKey:@"sharedInstance"];
    v6 = [NSClassFromString(&cfstr_Fbdisplaymanag.isa) safeValueForKey:@"mainIdentity"];
    v15 = 0;
    v16 = &v15;
    v17 = 0x3032000000;
    v18 = __Block_byref_object_copy__3;
    v19 = __Block_byref_object_dispose__3;
    v20 = 0;
    v7 = v5;
    v8 = v6;
    AXPerformSafeBlock();
    v9 = v16[5];

    _Block_object_dispose(&v15, 8);
    LOBYTE(v15) = 0;
    objc_opt_class();
    v10 = [v9 safeValueForKey:@"externalForegroundApplicationSceneHandles"];
    v11 = __UIAccessibilityCastAsClass();

    if (v15 != 1)
    {
      v12 = [v11 count];

      if (v12)
      {
LABEL_6:

        return;
      }

      LOBYTE(v15) = 0;
      objc_opt_class();
      v13 = [(SBCommandTabControllerAccessibility *)self safeValueForKey:@"_commandTabViewController"];
      v14 = __UIAccessibilityCastAsSafeCategory();

      if (v15 != 1)
      {
        [v14 accessibilityAnnounceSelectedIcon];

        goto LABEL_6;
      }
    }

    abort();
  }
}

uint64_t __69__SBCommandTabControllerAccessibility__activateWithForwardDirection___block_invoke(uint64_t a1)
{
  *(*(*(a1 + 48) + 8) + 40) = [*(a1 + 32) sceneManagerForDisplayIdentity:*(a1 + 40)];

  return MEMORY[0x2A1C71028]();
}

@end