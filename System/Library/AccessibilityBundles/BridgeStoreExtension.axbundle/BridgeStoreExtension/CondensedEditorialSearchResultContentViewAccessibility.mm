@interface CondensedEditorialSearchResultContentViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)_accessibilitySupplementaryFooterViews;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation CondensedEditorialSearchResultContentViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"BridgeStoreExtension.CondensedEditorialSearchResultContentView" hasInstanceMethod:@"accessibilityHeaderLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"BridgeStoreExtension.CondensedEditorialSearchResultContentView" hasInstanceMethod:@"accessibilityTitleLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"BridgeStoreExtension.CondensedEditorialSearchResultContentView" hasSwiftField:@"viewButton" withSwiftType:"UIButton"];
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
  v3 = [MEMORY[0x29EDB8DE8] array];
  v7.receiver = self;
  v7.super_class = CondensedEditorialSearchResultContentViewAccessibility;
  v4 = [(CondensedEditorialSearchResultContentViewAccessibility *)&v7 _accessibilitySupplementaryFooterViews];
  [v3 axSafelyAddObjectsFromArray:v4];

  v5 = [(CondensedEditorialSearchResultContentViewAccessibility *)self safeSwiftValueForKey:@"viewButton"];
  [v3 axSafelyAddObject:v5];

  return v3;
}

@end