@interface SFCapsuleURLFieldAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (SFCapsuleURLFieldAccessibility)initWithTextField:(id)a3;
- (id)accessibilityElements;
- (int64_t)_accessibilitySortPriority;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation SFCapsuleURLFieldAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SFCapsuleURLField" hasInstanceVariable:@"_voiceSearchButton" withType:"_SFDimmingButton"];
  [v3 validateClass:@"SFCapsuleURLField" hasInstanceVariable:@"_clearTextButton" withType:"_SFDimmingButton"];
  [v3 validateClass:@"SFCapsuleURLField" hasInstanceMethod:@"initWithTextField:" withFullSignature:{"@", 0}];
}

- (int64_t)_accessibilitySortPriority
{
  if (AXDeviceIsPhoneIdiom())
  {
    return 1000;
  }

  v4.receiver = self;
  v4.super_class = SFCapsuleURLFieldAccessibility;
  return [(SFCapsuleURLFieldAccessibility *)&v4 _accessibilitySortPriority];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v7.receiver = self;
  v7.super_class = SFCapsuleURLFieldAccessibility;
  [(SFCapsuleURLFieldAccessibility *)&v7 _accessibilityLoadAccessibilityInformation];
  v3 = accessibilitySafariServicesLocalizedString(@"buttonbar.voicesearch");
  v4 = [(SFCapsuleURLFieldAccessibility *)self safeUIViewForKey:@"_voiceSearchButton"];
  [v4 setAccessibilityLabel:v3];

  v5 = UIKitAccessibilityLocalizedString();
  v6 = [(SFCapsuleURLFieldAccessibility *)self safeUIViewForKey:@"_clearTextButton"];
  [v6 setAccessibilityLabel:v5];
}

- (SFCapsuleURLFieldAccessibility)initWithTextField:(id)a3
{
  v5.receiver = self;
  v5.super_class = SFCapsuleURLFieldAccessibility;
  v3 = [(SFCapsuleURLFieldAccessibility *)&v5 initWithTextField:a3];
  [(SFCapsuleURLFieldAccessibility *)v3 _accessibilityLoadAccessibilityInformation];

  return v3;
}

- (id)accessibilityElements
{
  objc_opt_class();
  v2 = __UIAccessibilityCastAsClass();
  v3 = [v2 _accessibilitySubviews];

  v4 = [v3 sortedArrayUsingSelector:sel_accessibilityCompareGeometry_];

  return v4;
}

@end