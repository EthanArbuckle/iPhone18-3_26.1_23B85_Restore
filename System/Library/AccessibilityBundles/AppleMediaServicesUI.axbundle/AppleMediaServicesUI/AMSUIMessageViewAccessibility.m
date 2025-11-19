@interface AMSUIMessageViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (AMSUIMessageViewAccessibility)initWithFrame:(CGRect)a3;
- (id)accessibilityCustomActions;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation AMSUIMessageViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"AMSUIMessageView" hasInstanceMethod:@"imageView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"AMSUIMessageView" hasInstanceMethod:@"accessoryView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"AMSUIMessageView" hasInstanceMethod:@"accessorySecondaryView" withFullSignature:{"@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v4.receiver = self;
  v4.super_class = AMSUIMessageViewAccessibility;
  [(AMSUIMessageViewAccessibility *)&v4 _accessibilityLoadAccessibilityInformation];
  v3 = [(AMSUIMessageViewAccessibility *)self safeValueForKey:@"imageView"];
  [v3 setIsAccessibilityElement:0];
}

- (id)accessibilityCustomActions
{
  v3 = [MEMORY[0x29EDB8DE8] array];
  v21.receiver = self;
  v21.super_class = AMSUIMessageViewAccessibility;
  v4 = [(AMSUIMessageViewAccessibility *)&v21 accessibilityCustomActions];
  [v3 axSafelyAddObjectsFromArray:v4];

  LOBYTE(location) = 0;
  objc_opt_class();
  v5 = [(AMSUIMessageViewAccessibility *)self safeValueForKey:@"accessoryView"];
  v6 = __UIAccessibilityCastAsClass();

  if (v6 && [v6 _accessibilityViewIsVisible])
  {
    objc_initWeak(&location, v6);
    v7 = objc_alloc(MEMORY[0x29EDC78E0]);
    v8 = [v6 accessibilityLabel];
    v18[0] = MEMORY[0x29EDCA5F8];
    v18[1] = 3221225472;
    v18[2] = __59__AMSUIMessageViewAccessibility_accessibilityCustomActions__block_invoke;
    v18[3] = &unk_29F2A06C8;
    objc_copyWeak(&v19, &location);
    v9 = [v7 initWithName:v8 actionHandler:v18];

    [v6 setAccessibilityElementsHidden:1];
    [v3 axSafelyAddObject:v9];

    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);
  }

  LOBYTE(location) = 0;
  objc_opt_class();
  v10 = [(AMSUIMessageViewAccessibility *)self safeValueForKey:@"accessorySecondaryView"];
  v11 = __UIAccessibilityCastAsClass();

  if (location == 1)
  {
    abort();
  }

  if (v11 && [v11 _accessibilityViewIsVisible])
  {
    objc_initWeak(&location, v11);
    v12 = objc_alloc(MEMORY[0x29EDC78E0]);
    v13 = [v11 accessibilityLabel];
    v16[0] = MEMORY[0x29EDCA5F8];
    v16[1] = 3221225472;
    v16[2] = __59__AMSUIMessageViewAccessibility_accessibilityCustomActions__block_invoke_2;
    v16[3] = &unk_29F2A06C8;
    objc_copyWeak(&v17, &location);
    v14 = [v12 initWithName:v13 actionHandler:v16];

    [v11 setAccessibilityElementsHidden:1];
    [v3 axSafelyAddObject:v14];

    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }

  return v3;
}

uint64_t __59__AMSUIMessageViewAccessibility_accessibilityCustomActions__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained sendActionsForControlEvents:64];

  return 1;
}

uint64_t __59__AMSUIMessageViewAccessibility_accessibilityCustomActions__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained sendActionsForControlEvents:64];

  return 1;
}

- (AMSUIMessageViewAccessibility)initWithFrame:(CGRect)a3
{
  v5.receiver = self;
  v5.super_class = AMSUIMessageViewAccessibility;
  v3 = [(AMSUIMessageViewAccessibility *)&v5 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  [(AMSUIMessageViewAccessibility *)v3 _accessibilityLoadAccessibilityInformation];

  return v3;
}

@end