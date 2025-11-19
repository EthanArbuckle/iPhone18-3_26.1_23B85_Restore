@interface CNGroupIdentityHeaderViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)updateActionButton;
@end

@implementation CNGroupIdentityHeaderViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"CNGroupIdentityHeaderViewController" hasInstanceMethod:@"actionButtonTitle" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CNGroupIdentityHeaderViewController" hasInstanceMethod:@"actionButton" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CNGroupIdentityHeaderViewController" hasInstanceMethod:@"updateActionButton" withFullSignature:{"v", 0}];
}

- (void)updateActionButton
{
  v7.receiver = self;
  v7.super_class = CNGroupIdentityHeaderViewControllerAccessibility;
  [(CNGroupIdentityHeaderViewControllerAccessibility *)&v7 updateActionButton];
  v3 = [(CNGroupIdentityHeaderViewControllerAccessibility *)self safeValueForKey:@"actionButton"];
  objc_initWeak(&location, self);
  v4[0] = MEMORY[0x29EDCA5F8];
  v4[1] = 3221225472;
  v4[2] = __70__CNGroupIdentityHeaderViewControllerAccessibility_updateActionButton__block_invoke;
  v4[3] = &unk_29F2B5DF0;
  objc_copyWeak(&v5, &location);
  [v3 _setIsAccessibilityElementBlock:v4];
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

BOOL __70__CNGroupIdentityHeaderViewControllerAccessibility_updateActionButton__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained safeStringForKey:@"actionButtonTitle"];
  v3 = [v2 length] != 0;

  return v3;
}

@end