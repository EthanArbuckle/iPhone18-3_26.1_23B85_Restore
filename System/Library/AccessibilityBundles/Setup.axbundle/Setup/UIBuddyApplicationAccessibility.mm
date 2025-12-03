@interface UIBuddyApplicationAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_accessibilityCanRequestSetupControllerSafely;
- (BOOL)_accessibilityFinishSetupIfAppropriate;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation UIBuddyApplicationAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SetupController" hasInstanceMethod:@"navigationFlowController" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"BuddyNavigationFlowController" hasInstanceMethod:@"buddyControllers" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"BuddyFinishedController" isKindOfClass:@"UIViewController"];
  [validationsCopy validateClass:@"BuddyFinishedController" hasInstanceMethod:@"delegate" withFullSignature:{"@", 0}];
  [validationsCopy validateProtocol:@"BFFFlowItemDelegate" hasMethod:@"flowItemDone:" isInstanceMethod:1 isRequired:1];
  [validationsCopy validateClass:@"BuddyApplicationAndSceneSharedStorage"];
  [validationsCopy validateClass:@"BuddyApplicationAndSceneSharedStorage" hasClassMethod:@"setupController" withFullSignature:{"@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v5.receiver = self;
  v5.super_class = UIBuddyApplicationAccessibility;
  [(UIBuddyApplicationAccessibility *)&v5 _accessibilityLoadAccessibilityInformation];
  if ([(UIBuddyApplicationAccessibility *)self _accessibilityCanRequestSetupControllerSafely])
  {
    objc_opt_class();
    v3 = [NSClassFromString(&cfstr_Buddyapplicati.isa) safeValueForKey:@"setupController"];
    v4 = __UIAccessibilityCastAsClass();

    [v4 _accessibilityLoadAccessibilityInformation];
  }
}

- (BOOL)_accessibilityFinishSetupIfAppropriate
{
  if ([(UIBuddyApplicationAccessibility *)self _accessibilityCanRequestSetupControllerSafely])
  {
    LOBYTE(v10) = 0;
    v2 = [NSClassFromString(&cfstr_Buddyapplicati.isa) safeValueForKey:@"setupController"];
    v3 = __UIAccessibilitySafeClass();

    v4 = [v3 safeValueForKey:@"navigationFlowController"];
    v5 = [v4 safeArrayForKey:@"buddyControllers"];
    lastObject = [v5 lastObject];

    NSClassFromString(&cfstr_Buddyfinishedc_0.isa);
    if (objc_opt_isKindOfClass())
    {
      v10 = 0;
      v11 = &v10;
      v12 = 0x2020000000;
      v13 = 0;
      v9 = lastObject;
      AXPerformSafeBlock();
      v7 = *(v11 + 24);

      _Block_object_dispose(&v10, 8);
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

void __73__UIBuddyApplicationAccessibility__accessibilityFinishSetupIfAppropriate__block_invoke(uint64_t a1)
{
  objc_opt_class();
  v2 = *(a1 + 32);
  v3 = __UIAccessibilityCastAsClass();
  v4 = [v3 view];
  [v4 setUserInteractionEnabled:0];

  v5 = [*(a1 + 32) safeValueForKey:@"delegate"];
  [v5 flowItemDone:*(a1 + 32)];

  *(*(*(a1 + 40) + 8) + 24) = 1;
}

- (BOOL)_accessibilityCanRequestSetupControllerSafely
{
  v18 = *MEMORY[0x29EDCA608];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  connectedScenes = [*MEMORY[0x29EDC8008] connectedScenes];
  v3 = [connectedScenes countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v14;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(connectedScenes);
        }

        v7 = *(*(&v13 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          delegate = [v7 delegate];
          NSClassFromString(&cfstr_Buddyscenedele_0.isa);
          isKindOfClass = objc_opt_isKindOfClass();

          if (isKindOfClass)
          {
            v10 = 1;
            goto LABEL_12;
          }
        }
      }

      v4 = [connectedScenes countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_12:

  v11 = *MEMORY[0x29EDCA608];
  return v10;
}

@end