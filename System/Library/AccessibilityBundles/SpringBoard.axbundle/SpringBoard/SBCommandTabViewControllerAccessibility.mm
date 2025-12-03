@interface SBCommandTabViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_moveSelectionSquareToIconAtIndex:(unint64_t)index;
- (void)accessibilityAnnounceSelectedIcon;
- (void)viewDidLoad;
@end

@implementation SBCommandTabViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SBCommandTabViewController" isKindOfClass:@"UIViewController"];
  [validationsCopy validateClass:@"SBCommandTabViewController" hasInstanceVariable:@"_iconViews" withType:"NSMutableArray"];
  [validationsCopy validateClass:@"SBCommandTabViewController" hasInstanceVariable:@"_selectedIconView" withType:"SBIconView"];
  [validationsCopy validateClass:@"SBCommandTabViewController" hasInstanceMethod:@"_moveSelectionSquareToIconAtIndex:" withFullSignature:{"v", "Q", 0}];
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = SBCommandTabViewControllerAccessibility;
  [(SBCommandTabViewControllerAccessibility *)&v3 viewDidLoad];
  [(SBCommandTabViewControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v19 = *MEMORY[0x29EDCA608];
  v17.receiver = self;
  v17.super_class = SBCommandTabViewControllerAccessibility;
  [(SBCommandTabViewControllerAccessibility *)&v17 _accessibilityLoadAccessibilityInformation];
  v16 = 0;
  objc_opt_class();
  v3 = [(SBCommandTabViewControllerAccessibility *)self safeValueForKey:@"_iconViews"];
  v4 = __UIAccessibilityCastAsClass();

  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        v11 = [MEMORY[0x29EDBA070] numberWithBool:{1, v12}];
        [v10 _accessibilitySetValue:v11 forKey:@"AXIsInCmdTabSwitcher" storageMode:0];
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v18 count:16];
    }

    while (v7);
  }
}

- (void)_moveSelectionSquareToIconAtIndex:(unint64_t)index
{
  v4.receiver = self;
  v4.super_class = SBCommandTabViewControllerAccessibility;
  [(SBCommandTabViewControllerAccessibility *)&v4 _moveSelectionSquareToIconAtIndex:index];
  [(SBCommandTabViewControllerAccessibility *)self accessibilityAnnounceSelectedIcon];
}

- (void)accessibilityAnnounceSelectedIcon
{
  server = [MEMORY[0x29EDBDFA8] server];
  v4 = [server isScreenLockedWithPasscode:0];

  if ((v4 & 1) == 0)
  {
    v7 = [(SBCommandTabViewControllerAccessibility *)self safeValueForKey:@"_selectedIconView"];
    v5 = *MEMORY[0x29EDC7EA8];
    accessibilityLabel = [v7 accessibilityLabel];
    UIAccessibilityPostNotification(v5, accessibilityLabel);
  }
}

@end