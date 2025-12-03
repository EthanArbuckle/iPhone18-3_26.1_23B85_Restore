@interface CondensedEditorialSearchResultContentViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)_accessibilitySupplementaryFooterViews;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation CondensedEditorialSearchResultContentViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"AppInstallExtension.CondensedEditorialSearchResultContentView" hasInstanceMethod:@"accessibilityHeaderLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"AppInstallExtension.CondensedEditorialSearchResultContentView" hasInstanceMethod:@"accessibilityTitleLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"AppInstallExtension.CondensedEditorialSearchResultContentView" hasSwiftField:@"viewButton" withSwiftType:"UIButton"];
}

- (id)accessibilityLabel
{
  v3 = [(CondensedEditorialSearchResultContentViewAccessibility *)self safeValueForKey:@"accessibilityHeaderLabel"];
  v4 = [v3 safeValueForKey:@"text"];

  v7 = [(CondensedEditorialSearchResultContentViewAccessibility *)self safeValueForKey:@"accessibilityTitleLabel"];
  v5 = __UIAXStringForVariables();

  return v5;
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = CondensedEditorialSearchResultContentViewAccessibility;
  return *MEMORY[0x29EDC7F70] | [(CondensedEditorialSearchResultContentViewAccessibility *)&v3 accessibilityTraits];
}

- (id)_accessibilitySupplementaryFooterViews
{
  array = [MEMORY[0x29EDB8DE8] array];
  v7.receiver = self;
  v7.super_class = CondensedEditorialSearchResultContentViewAccessibility;
  _accessibilitySupplementaryFooterViews = [(CondensedEditorialSearchResultContentViewAccessibility *)&v7 _accessibilitySupplementaryFooterViews];
  [array axSafelyAddObjectsFromArray:_accessibilitySupplementaryFooterViews];

  v5 = [(CondensedEditorialSearchResultContentViewAccessibility *)self safeSwiftValueForKey:@"viewButton"];
  [array axSafelyAddObject:v5];

  return array;
}

@end