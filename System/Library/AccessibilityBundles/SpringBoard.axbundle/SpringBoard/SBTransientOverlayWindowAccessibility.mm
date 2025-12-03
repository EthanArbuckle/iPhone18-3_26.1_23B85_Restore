@interface SBTransientOverlayWindowAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_accessibilityIsInWidgetStack;
- (BOOL)accessibilityPerformEscape;
- (id)_axAdditionalElements;
- (id)_axRemoteContentViewController;
- (id)_axRemoteServiceBundleIdentifier;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation SBTransientOverlayWindowAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SBRemoteTransientOverlayHostContentAdapter" hasInstanceMethod:@"_performButtonEvents:" withFullSignature:{"B", "Q", 0}];
  [validationsCopy validateClass:@"SBRemoteTransientOverlayHostContentAdapter" hasInstanceVariable:@"_hostRemoteViewController" withType:"SBRemoteTransientOverlayHostViewController"];
  [validationsCopy validateClass:@"_UIRemoteViewController" hasInstanceMethod:@"serviceBundleIdentifier" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SBTransientOverlayWindow" isKindOfClass:@"UIWindow"];
  [validationsCopy validateClass:@"SBRemoteTransientOverlayViewController" isKindOfClass:@"UIViewController"];
  [validationsCopy validateClass:@"SBRemoteTransientOverlayHostViewController" isKindOfClass:@"UIViewController"];
  [validationsCopy validateClass:@"SBRemoteTransientOverlayViewController" hasInstanceVariable:@"_hostContentAdapter" withType:"SBRemoteTransientOverlayHostContentAdapter"];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v6.receiver = self;
  v6.super_class = SBTransientOverlayWindowAccessibility;
  [(SBTransientOverlayWindowAccessibility *)&v6 _accessibilityLoadAccessibilityInformation];
  _axRemoteServiceBundleIdentifier = [(SBTransientOverlayWindowAccessibility *)self _axRemoteServiceBundleIdentifier];
  v4 = [_axRemoteServiceBundleIdentifier isEqualToString:@"com.apple.shortcuts.runtime"];

  if (v4)
  {
    _axAdditionalElements = [(SBTransientOverlayWindowAccessibility *)self _axAdditionalElements];
    [(SBTransientOverlayWindowAccessibility *)self _accessibilitySetAdditionalElements:_axAdditionalElements];
  }
}

- (BOOL)accessibilityPerformEscape
{
  _axRemoteServiceBundleIdentifier = [(SBTransientOverlayWindowAccessibility *)self _axRemoteServiceBundleIdentifier];
  v3 = [_axRemoteServiceBundleIdentifier isEqualToString:@"com.apple.shortcuts.runtime"];

  if (v3)
  {
    AXPerformSafeBlock();
  }

  return v3;
}

void __67__SBTransientOverlayWindowAccessibility_accessibilityPerformEscape__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _axRemoteContentViewController];
  [v1 _performButtonEvents:16];
}

- (id)_axAdditionalElements
{
  array = [MEMORY[0x29EDB8DE8] array];
  v4 = [objc_alloc(MEMORY[0x29EDC78F8]) initWithAccessibilityContainer:self];
  objc_initWeak(&location, self);
  v9[0] = MEMORY[0x29EDCA5F8];
  v9[1] = 3221225472;
  v9[2] = __62__SBTransientOverlayWindowAccessibility__axAdditionalElements__block_invoke;
  v9[3] = &unk_29F2FC198;
  objc_copyWeak(&v10, &location);
  [v4 _setAccessibilityFrameBlock:v9];
  v7[0] = MEMORY[0x29EDCA5F8];
  v7[1] = 3221225472;
  v7[2] = __62__SBTransientOverlayWindowAccessibility__axAdditionalElements__block_invoke_2;
  v7[3] = &unk_29F2FBB78;
  objc_copyWeak(&v8, &location);
  [v4 _setAccessibilityActivateBlock:v7];
  [v4 _accessibilitySetSortPriority:-1];
  [v4 setAccessibilityTraits:*MEMORY[0x29EDC7F70]];
  v5 = accessibilityLocalizedString(@"springboard.shortcutmenu.dismiss");
  [v4 setAccessibilityLabel:v5];

  [array axSafelyAddObject:v4];
  objc_destroyWeak(&v8);
  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);

  return array;
}

double __62__SBTransientOverlayWindowAccessibility__axAdditionalElements__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  objc_opt_class();
  v2 = __UIAccessibilityCastAsClass();
  [v2 bounds];
  UIAccessibilityFrameForBounds();
  v4 = v3;

  return v4;
}

uint64_t __62__SBTransientOverlayWindowAccessibility__axAdditionalElements__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained accessibilityPerformEscape];

  return 1;
}

- (id)_axRemoteServiceBundleIdentifier
{
  _axRemoteContentViewController = [(SBTransientOverlayWindowAccessibility *)self _axRemoteContentViewController];
  v3 = [_axRemoteContentViewController safeStringForKey:@"serviceBundleIdentifier"];

  return v3;
}

- (id)_axRemoteContentViewController
{
  objc_opt_class();
  v2 = __UIAccessibilityCastAsClass();
  objc_opt_class();
  v3 = [v2 safeValueForKey:@"rootViewController"];
  v4 = __UIAccessibilityCastAsClass();

  NSClassFromString(&cfstr_Sbremotetransi.isa);
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    [v4 safeValueForKeyPath:@"_hostContentAdapter._hostRemoteViewController"];
  }

  else
  {
    objc_opt_class();
    [v4 safeValueForKey:@"_hostRemoteViewController"];
  }
  v5 = ;
  v6 = __UIAccessibilityCastAsClass();

  return v6;
}

- (BOOL)_accessibilityIsInWidgetStack
{
  objc_opt_class();
  v3 = [(SBTransientOverlayWindowAccessibility *)self safeValueForKey:@"rootViewController"];
  v4 = __UIAccessibilityCastAsClass();

  NSClassFromString(&cfstr_Sbambienttrans.isa);
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

@end