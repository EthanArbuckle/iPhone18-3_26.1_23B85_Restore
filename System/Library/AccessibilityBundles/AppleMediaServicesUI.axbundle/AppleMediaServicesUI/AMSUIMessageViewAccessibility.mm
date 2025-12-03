@interface AMSUIMessageViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (AMSUIMessageViewAccessibility)initWithFrame:(CGRect)frame;
- (id)accessibilityCustomActions;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation AMSUIMessageViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"AMSUIMessageView" hasInstanceMethod:@"imageView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"AMSUIMessageView" hasInstanceMethod:@"accessoryView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"AMSUIMessageView" hasInstanceMethod:@"accessorySecondaryView" withFullSignature:{"@", 0}];
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
  array = [MEMORY[0x29EDB8DE8] array];
  v21.receiver = self;
  v21.super_class = AMSUIMessageViewAccessibility;
  accessibilityCustomActions = [(AMSUIMessageViewAccessibility *)&v21 accessibilityCustomActions];
  [array axSafelyAddObjectsFromArray:accessibilityCustomActions];

  LOBYTE(location) = 0;
  objc_opt_class();
  v5 = [(AMSUIMessageViewAccessibility *)self safeValueForKey:@"accessoryView"];
  v6 = __UIAccessibilityCastAsClass();

  if (v6 && [v6 _accessibilityViewIsVisible])
  {
    objc_initWeak(&location, v6);
    v7 = objc_alloc(MEMORY[0x29EDC78E0]);
    accessibilityLabel = [v6 accessibilityLabel];
    v18[0] = MEMORY[0x29EDCA5F8];
    v18[1] = 3221225472;
    v18[2] = __59__AMSUIMessageViewAccessibility_accessibilityCustomActions__block_invoke;
    v18[3] = &unk_29F2A06C8;
    objc_copyWeak(&v19, &location);
    v9 = [v7 initWithName:accessibilityLabel actionHandler:v18];

    [v6 setAccessibilityElementsHidden:1];
    [array axSafelyAddObject:v9];

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
    accessibilityLabel2 = [v11 accessibilityLabel];
    v16[0] = MEMORY[0x29EDCA5F8];
    v16[1] = 3221225472;
    v16[2] = __59__AMSUIMessageViewAccessibility_accessibilityCustomActions__block_invoke_2;
    v16[3] = &unk_29F2A06C8;
    objc_copyWeak(&v17, &location);
    v14 = [v12 initWithName:accessibilityLabel2 actionHandler:v16];

    [v11 setAccessibilityElementsHidden:1];
    [array axSafelyAddObject:v14];

    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }

  return array;
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

- (AMSUIMessageViewAccessibility)initWithFrame:(CGRect)frame
{
  v5.receiver = self;
  v5.super_class = AMSUIMessageViewAccessibility;
  v3 = [(AMSUIMessageViewAccessibility *)&v5 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  [(AMSUIMessageViewAccessibility *)v3 _accessibilityLoadAccessibilityInformation];

  return v3;
}

@end