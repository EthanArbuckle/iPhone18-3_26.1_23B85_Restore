@interface SFAirDropMagicHeadViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)_axWheelView;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)loadView;
- (void)resetSecondLabel;
@end

@implementation SFAirDropMagicHeadViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SFAirDropMagicHeadViewController" isKindOfClass:@"UIViewController"];
  [v3 validateClass:@"SFAirDropMagicHeadViewController" hasInstanceMethod:@"nameLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SFAirDropMagicHeadViewController" hasInstanceMethod:@"nameLabel2" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SFAirDropMagicHeadViewController" hasInstanceMethod:@"secondLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SFAirDropMagicHeadViewController" hasInstanceMethod:@"resetSecondLabel" withFullSignature:{"v", 0}];
  [v3 validateClass:@"SFAirDropMagicHeadViewController" hasInstanceMethod:@"setSecondLabelText:withTextColor:animated:completion:" withFullSignature:{"v", "@", "@", "B", "@?", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v6.receiver = self;
  v6.super_class = SFAirDropMagicHeadViewControllerAccessibility;
  [(SFAirDropMagicHeadViewControllerAccessibility *)&v6 _accessibilityLoadAccessibilityInformation];
  v3 = [(SFAirDropMagicHeadViewControllerAccessibility *)self safeUIViewForKey:@"nameLabel"];
  [v3 setIsAccessibilityElement:0];

  v4 = [(SFAirDropMagicHeadViewControllerAccessibility *)self safeUIViewForKey:@"nameLabel2"];
  [v4 setIsAccessibilityElement:0];

  v5 = [(SFAirDropMagicHeadViewControllerAccessibility *)self safeUIViewForKey:@"secondLabel"];
  [v5 setIsAccessibilityElement:0];
}

- (void)loadView
{
  v3.receiver = self;
  v3.super_class = SFAirDropMagicHeadViewControllerAccessibility;
  [(SFAirDropMagicHeadViewControllerAccessibility *)&v3 loadView];
  [(SFAirDropMagicHeadViewControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

uint64_t __102__SFAirDropMagicHeadViewControllerAccessibility_setSecondLabelText_withTextColor_animated_completion___block_invoke(uint64_t a1)
{
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7EA8], *(a1 + 32));
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)resetSecondLabel
{
  v4.receiver = self;
  v4.super_class = SFAirDropMagicHeadViewControllerAccessibility;
  [(SFAirDropMagicHeadViewControllerAccessibility *)&v4 resetSecondLabel];
  v3 = [(SFAirDropMagicHeadViewControllerAccessibility *)self _axWheelView];
  [v3 _axSetStatusText:0];
}

- (id)_axWheelView
{
  objc_opt_class();
  v3 = [(SFAirDropMagicHeadViewControllerAccessibility *)self safeValueForKey:@"wheelView"];
  v4 = __UIAccessibilityCastAsSafeCategory();

  return v4;
}

@end