@interface _TVInfoHeaderViewAccessibility
+ (id)infoHeaderViewWithElement:(id)a3 existingView:(id)a4;
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation _TVInfoHeaderViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"_TVInfoHeaderView" hasClassMethod:@"infoHeaderViewWithElement:existingView:" withFullSignature:{"@", "@", "@", 0}];
  [v3 validateClass:@"_TVInfoHeaderView" hasInstanceMethod:@"headerView" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v2 = [(_TVInfoHeaderViewAccessibility *)self safeValueForKey:@"headerView"];
  v3 = [v2 accessibilityLabel];

  return v3;
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v4.receiver = self;
  v4.super_class = _TVInfoHeaderViewAccessibility;
  [(_TVInfoHeaderViewAccessibility *)&v4 _accessibilityLoadAccessibilityInformation];
  v3 = [(_TVInfoHeaderViewAccessibility *)self safeValueForKey:@"headerView"];
  [v3 setIsAccessibilityElement:0];
}

+ (id)infoHeaderViewWithElement:(id)a3 existingView:(id)a4
{
  v6.receiver = a1;
  v6.super_class = &OBJC_METACLASS____TVInfoHeaderViewAccessibility;
  v4 = objc_msgSendSuper2(&v6, sel_infoHeaderViewWithElement_existingView_, a3, a4);
  [v4 _accessibilityLoadAccessibilityInformation];

  return v4;
}

@end