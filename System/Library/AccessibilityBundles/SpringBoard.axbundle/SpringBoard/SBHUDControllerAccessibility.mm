@interface SBHUDControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_dismissHUD:(id)a3 animated:(BOOL)a4;
- (void)_presentHUD:(id)a3 animated:(BOOL)a4;
@end

@implementation SBHUDControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SBHUDController" hasInstanceMethod:@"_dismissHUD:animated:" withFullSignature:{"v", "@", "B", 0}];
  [v3 validateClass:@"SBHUDController" hasInstanceMethod:@"_presentHUD:animated:" withFullSignature:{"v", "@", "B", 0}];
  [v3 validateClass:@"SBHUDController" hasInstanceMethod:@"HUDWindow" withFullSignature:{"@", 0}];
}

- (void)_dismissHUD:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v9.receiver = self;
  v9.super_class = SBHUDControllerAccessibility;
  [(SBHUDControllerAccessibility *)&v9 _dismissHUD:v6 animated:v4];
  if (UIAccessibilityIsVoiceOverRunning())
  {
    objc_opt_class();
    v7 = [(SBHUDControllerAccessibility *)self safeValueForKey:@"HUDWindow"];
    v8 = __UIAccessibilityCastAsClass();

    [v8 setEnabled:0];
  }
}

- (void)_presentHUD:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v9.receiver = self;
  v9.super_class = SBHUDControllerAccessibility;
  [(SBHUDControllerAccessibility *)&v9 _presentHUD:v6 animated:v4];
  if (UIAccessibilityIsVoiceOverRunning())
  {
    objc_opt_class();
    v7 = [(SBHUDControllerAccessibility *)self safeValueForKey:@"HUDWindow"];
    v8 = __UIAccessibilityCastAsClass();

    [v8 setEnabled:1];
  }
}

@end