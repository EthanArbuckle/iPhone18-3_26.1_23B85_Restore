@interface CapsuleNavigationBarRegistrationAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (CapsuleNavigationBarRegistrationAccessibility)initWithBar:(id)a3 barManager:(id)a4;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation CapsuleNavigationBarRegistrationAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"CapsuleNavigationBarRegistration" hasInstanceVariable:@"_formatMenuButton" withType:"SFNavigationBarToggleButton"];
  [v3 validateClass:@"CapsuleNavigationBarRegistration" hasInstanceMethod:@"initWithBar:barManager:" withFullSignature:{"@", "@", 0}];
  [v3 validateClass:@"CapsuleNavigationBarRegistration" hasInstanceVariable:@"_buttonsByBarItem" withType:"NSMutableDictionary"];
  [v3 validateClass:@"CapsuleNavigationBarRegistration" hasInstanceVariable:@"_pageFormatItemState" withType:"Q"];
}

- (CapsuleNavigationBarRegistrationAccessibility)initWithBar:(id)a3 barManager:(id)a4
{
  v6.receiver = self;
  v6.super_class = CapsuleNavigationBarRegistrationAccessibility;
  v4 = [(CapsuleNavigationBarRegistrationAccessibility *)&v6 initWithBar:a3 barManager:a4];
  [(CapsuleNavigationBarRegistrationAccessibility *)v4 _accessibilityLoadAccessibilityInformation];

  return v4;
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v11.receiver = self;
  v11.super_class = CapsuleNavigationBarRegistrationAccessibility;
  [(CapsuleNavigationBarRegistrationAccessibility *)&v11 _accessibilityLoadAccessibilityInformation];
  objc_initWeak(&location, self);
  v3 = [(CapsuleNavigationBarRegistrationAccessibility *)self safeUIViewForKey:@"_formatMenuButton"];
  v8[0] = MEMORY[0x29EDCA5F8];
  v8[1] = 3221225472;
  v8[2] = __91__CapsuleNavigationBarRegistrationAccessibility__accessibilityLoadAccessibilityInformation__block_invoke;
  v8[3] = &unk_29F2D7B20;
  objc_copyWeak(&v9, &location);
  [v3 setAccessibilityLabelBlock:v8];

  v4 = [(CapsuleNavigationBarRegistrationAccessibility *)self safeValueForKey:@"_buttonsByBarItem"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 objectForKeyedSubscript:&unk_2A222E140];
    if (v5)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v7 = [v5 className];
        _AXAssert();
      }

      v6 = accessibilitySafariServicesLocalizedString(@"buttonbar.voicesearch");
      [v5 setAccessibilityLabel:v6];
    }
  }

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

id __91__CapsuleNavigationBarRegistrationAccessibility__accessibilityLoadAccessibilityInformation__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained safeUnsignedIntegerForKey:@"_pageFormatItemState"];

  if ((v2 & 0x4000) != 0)
  {
    accessibilitySafariScribbleLocalizedString(@"buttonbar.formatMenu.distractions.hidden");
  }

  else
  {
    accessibilitySafariServicesLocalizedString(@"buttonbar.formatMenu");
  }
  v3 = ;

  return v3;
}

@end