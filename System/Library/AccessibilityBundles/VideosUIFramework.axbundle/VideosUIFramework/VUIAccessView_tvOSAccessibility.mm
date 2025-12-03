@interface VUIAccessView_tvOSAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityHeaderElements;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)layoutSubviews;
@end

@implementation VUIAccessView_tvOSAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"VUIAccessView_tvOS" hasInstanceVariable:@"_titleLabel" withType:"UILabel"];
  [validationsCopy validateClass:@"VUIAccessView_tvOS" hasInstanceVariable:@"_bodyLabel" withType:"UILabel"];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v9.receiver = self;
  v9.super_class = VUIAccessView_tvOSAccessibility;
  [(VUIAccessView_tvOSAccessibility *)&v9 _accessibilityLoadAccessibilityInformation];
  objc_opt_class();
  v3 = [(VUIAccessView_tvOSAccessibility *)self safeValueForKey:@"_titleLabel"];
  v4 = __UIAccessibilityCastAsClass();

  accessibilityTraits = [v4 accessibilityTraits];
  v6 = *MEMORY[0x29EDC7F80];
  [v4 setAccessibilityTraits:*MEMORY[0x29EDC7F80] | accessibilityTraits];
  objc_opt_class();
  v7 = [(VUIAccessView_tvOSAccessibility *)self safeValueForKey:@"_bodyLabel"];
  v8 = __UIAccessibilityCastAsClass();

  [v8 setAccessibilityTraits:{objc_msgSend(v8, "accessibilityTraits") | v6}];
}

- (id)accessibilityHeaderElements
{
  v3 = MEMORY[0x29EDB8D80];
  v4 = [(VUIAccessView_tvOSAccessibility *)self safeValueForKey:@"_titleLabel"];
  v5 = [(VUIAccessView_tvOSAccessibility *)self safeValueForKey:@"_bodyLabel"];
  v6 = [v3 axArrayByIgnoringNilElementsWithCount:{2, v4, v5}];

  return v6;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = VUIAccessView_tvOSAccessibility;
  [(VUIAccessView_tvOSAccessibility *)&v3 layoutSubviews];
  [(VUIAccessView_tvOSAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end