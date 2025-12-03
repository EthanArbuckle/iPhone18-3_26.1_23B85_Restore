@interface SBHUDControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_dismissHUD:(id)d animated:(BOOL)animated;
- (void)_presentHUD:(id)d animated:(BOOL)animated;
@end

@implementation SBHUDControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SBHUDController" hasInstanceMethod:@"_dismissHUD:animated:" withFullSignature:{"v", "@", "B", 0}];
  [validationsCopy validateClass:@"SBHUDController" hasInstanceMethod:@"_presentHUD:animated:" withFullSignature:{"v", "@", "B", 0}];
  [validationsCopy validateClass:@"SBHUDController" hasInstanceMethod:@"HUDWindow" withFullSignature:{"@", 0}];
}

- (void)_dismissHUD:(id)d animated:(BOOL)animated
{
  animatedCopy = animated;
  dCopy = d;
  v9.receiver = self;
  v9.super_class = SBHUDControllerAccessibility;
  [(SBHUDControllerAccessibility *)&v9 _dismissHUD:dCopy animated:animatedCopy];
  if (UIAccessibilityIsVoiceOverRunning())
  {
    objc_opt_class();
    v7 = [(SBHUDControllerAccessibility *)self safeValueForKey:@"HUDWindow"];
    v8 = __UIAccessibilityCastAsClass();

    [v8 setEnabled:0];
  }
}

- (void)_presentHUD:(id)d animated:(BOOL)animated
{
  animatedCopy = animated;
  dCopy = d;
  v9.receiver = self;
  v9.super_class = SBHUDControllerAccessibility;
  [(SBHUDControllerAccessibility *)&v9 _presentHUD:dCopy animated:animatedCopy];
  if (UIAccessibilityIsVoiceOverRunning())
  {
    objc_opt_class();
    v7 = [(SBHUDControllerAccessibility *)self safeValueForKey:@"HUDWindow"];
    v8 = __UIAccessibilityCastAsClass();

    [v8 setEnabled:1];
  }
}

@end