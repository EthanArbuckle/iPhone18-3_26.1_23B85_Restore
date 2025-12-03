@interface MFMailboxFilterBarButtonItemAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (MFMailboxFilterBarButtonItemAccessibility)initWithTarget:(id)target action:(SEL)action;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation MFMailboxFilterBarButtonItemAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"MFMailboxFilterBarButtonItem" hasInstanceMethod:@"initWithTarget:action:" withFullSignature:{"@", "@", ":", 0}];
  [validationsCopy validateClass:@"MFMailboxFilterBarButtonItem" hasInstanceMethod:@"isFilterEnabled" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"MFMailboxFilterBarButtonItem" isKindOfClass:@"UIBarButtonItem"];
  [validationsCopy validateClass:@"UIBarButtonItem" hasInstanceMethod:@"view" withFullSignature:{"@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v8.receiver = self;
  v8.super_class = MFMailboxFilterBarButtonItemAccessibility;
  [(MFMailboxFilterBarButtonItemAccessibility *)&v8 _accessibilityLoadAccessibilityInformation];
  v3 = [(MFMailboxFilterBarButtonItemAccessibility *)self safeValueForKey:@"_view"];
  accessibilityTraits = [(MFMailboxFilterBarButtonItemAccessibility *)self accessibilityTraits];
  objc_initWeak(&location, self);
  v5[0] = MEMORY[0x29EDCA5F8];
  v5[1] = 3221225472;
  v5[2] = __87__MFMailboxFilterBarButtonItemAccessibility__accessibilityLoadAccessibilityInformation__block_invoke;
  v5[3] = &unk_29F2D4170;
  objc_copyWeak(v6, &location);
  v6[1] = accessibilityTraits;
  [v3 _setAccessibilityTraitsBlock:v5];
  objc_destroyWeak(v6);
  objc_destroyWeak(&location);
}

uint64_t __87__MFMailboxFilterBarButtonItemAccessibility__accessibilityLoadAccessibilityInformation__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained safeBoolForKey:@"isFilterEnabled"];

  v4 = *MEMORY[0x29EDC7FC0];
  if (!v3)
  {
    v4 = 0;
  }

  return *(a1 + 40) | v4;
}

- (MFMailboxFilterBarButtonItemAccessibility)initWithTarget:(id)target action:(SEL)action
{
  v6.receiver = self;
  v6.super_class = MFMailboxFilterBarButtonItemAccessibility;
  v4 = [(MFMailboxFilterBarButtonItemAccessibility *)&v6 initWithTarget:target action:action];
  [(MFMailboxFilterBarButtonItemAccessibility *)v4 _accessibilityLoadAccessibilityInformation];
  return v4;
}

@end