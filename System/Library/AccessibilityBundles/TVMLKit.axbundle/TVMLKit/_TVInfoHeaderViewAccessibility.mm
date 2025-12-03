@interface _TVInfoHeaderViewAccessibility
+ (id)infoHeaderViewWithElement:(id)element existingView:(id)view;
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation _TVInfoHeaderViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"_TVInfoHeaderView" hasClassMethod:@"infoHeaderViewWithElement:existingView:" withFullSignature:{"@", "@", "@", 0}];
  [validationsCopy validateClass:@"_TVInfoHeaderView" hasInstanceMethod:@"headerView" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v2 = [(_TVInfoHeaderViewAccessibility *)self safeValueForKey:@"headerView"];
  accessibilityLabel = [v2 accessibilityLabel];

  return accessibilityLabel;
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v4.receiver = self;
  v4.super_class = _TVInfoHeaderViewAccessibility;
  [(_TVInfoHeaderViewAccessibility *)&v4 _accessibilityLoadAccessibilityInformation];
  v3 = [(_TVInfoHeaderViewAccessibility *)self safeValueForKey:@"headerView"];
  [v3 setIsAccessibilityElement:0];
}

+ (id)infoHeaderViewWithElement:(id)element existingView:(id)view
{
  v6.receiver = self;
  v6.super_class = &OBJC_METACLASS____TVInfoHeaderViewAccessibility;
  v4 = objc_msgSendSuper2(&v6, sel_infoHeaderViewWithElement_existingView_, element, view);
  [v4 _accessibilityLoadAccessibilityInformation];

  return v4;
}

@end