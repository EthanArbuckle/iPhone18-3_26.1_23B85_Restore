@interface HULockupViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation HULockupViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"HULockupView" hasInstanceMethod:@"titleLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"HULockupView" hasInstanceMethod:@"downloadControl" withFullSignature:{"@", 0}];
  [v3 validateClass:@"HUDownloadControl" hasInstanceMethod:@"controlStatus" withFullSignature:{"{HUDownloadControlStatus=qd}", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v12.receiver = self;
  v12.super_class = HULockupViewAccessibility;
  [(HULockupViewAccessibility *)&v12 _accessibilityLoadAccessibilityInformation];
  v3 = [(HULockupViewAccessibility *)self safeValueForKey:@"titleLabel"];
  LOBYTE(location) = 0;
  objc_opt_class();
  v4 = [(HULockupViewAccessibility *)self safeValueForKey:@"downloadControl"];
  v5 = __UIAccessibilityCastAsClass();

  objc_initWeak(&location, v5);
  v7[0] = MEMORY[0x29EDCA5F8];
  v7[1] = 3221225472;
  v7[2] = __71__HULockupViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke;
  v7[3] = &unk_29F2C6F00;
  objc_copyWeak(&v10, &location);
  v6 = v3;
  v8 = v6;
  v9 = self;
  [v5 setAccessibilityLabelBlock:v7];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

id __71__HULockupViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v3 = [WeakRetained controlStatus];

  if ((v3 - 3) > 1)
  {
    v9.receiver = a1[5];
    v9.super_class = HULockupViewAccessibility;
    v7 = objc_msgSendSuper2(&v9, sel_accessibilityLabel);
  }

  else
  {
    v4 = MEMORY[0x29EDBA0F8];
    v5 = accessibilityHomeLocalizedString(@"item.updating");
    v6 = [a1[4] accessibilityLabel];
    v7 = [v4 localizedStringWithFormat:v5, v6];
  }

  return v7;
}

@end