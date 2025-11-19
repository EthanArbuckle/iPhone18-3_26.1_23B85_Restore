@interface MFMailboxFilterBarButtonItemAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (MFMailboxFilterBarButtonItemAccessibility)initWithTarget:(id)a3 action:(SEL)a4;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation MFMailboxFilterBarButtonItemAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"MFMailboxFilterBarButtonItem" hasInstanceMethod:@"initWithTarget:action:" withFullSignature:{"@", "@", ":", 0}];
  [v3 validateClass:@"MFMailboxFilterBarButtonItem" hasInstanceMethod:@"isFilterEnabled" withFullSignature:{"B", 0}];
  [v3 validateClass:@"MFMailboxFilterBarButtonItem" isKindOfClass:@"UIBarButtonItem"];
  [v3 validateClass:@"UIBarButtonItem" hasInstanceMethod:@"view" withFullSignature:{"@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v8.receiver = self;
  v8.super_class = MFMailboxFilterBarButtonItemAccessibility;
  [(MFMailboxFilterBarButtonItemAccessibility *)&v8 _accessibilityLoadAccessibilityInformation];
  v3 = [(MFMailboxFilterBarButtonItemAccessibility *)self safeValueForKey:@"_view"];
  v4 = [(MFMailboxFilterBarButtonItemAccessibility *)self accessibilityTraits];
  objc_initWeak(&location, self);
  v5[0] = MEMORY[0x29EDCA5F8];
  v5[1] = 3221225472;
  v5[2] = __87__MFMailboxFilterBarButtonItemAccessibility__accessibilityLoadAccessibilityInformation__block_invoke;
  v5[3] = &unk_29F2D4170;
  objc_copyWeak(v6, &location);
  v6[1] = v4;
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

- (MFMailboxFilterBarButtonItemAccessibility)initWithTarget:(id)a3 action:(SEL)a4
{
  v6.receiver = self;
  v6.super_class = MFMailboxFilterBarButtonItemAccessibility;
  v4 = [(MFMailboxFilterBarButtonItemAccessibility *)&v6 initWithTarget:a3 action:a4];
  [(MFMailboxFilterBarButtonItemAccessibility *)v4 _accessibilityLoadAccessibilityInformation];
  return v4;
}

@end