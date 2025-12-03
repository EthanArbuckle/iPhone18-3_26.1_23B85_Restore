@interface ENUIRegionCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
- (id)accessibilityValue;
@end

@implementation ENUIRegionCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"ENUIRegionCell" hasInstanceMethod:@"sectionLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"ENUIRegionCell" hasInstanceMethod:@"titleLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"ENUIRegionCell" hasInstanceMethod:@"regionCapsuleLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CapsuleLabel" hasInstanceMethod:@"text" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v2 = [(ENUIRegionCellAccessibility *)self safeUIViewForKey:@"sectionLabel"];
  accessibilityLabel = [v2 accessibilityLabel];

  return accessibilityLabel;
}

- (id)accessibilityValue
{
  v3 = [(ENUIRegionCellAccessibility *)self safeValueForKey:@"regionCapsuleLabel"];
  v4 = [(ENUIRegionCellAccessibility *)self safeUIViewForKey:@"titleLabel"];
  accessibilityLabel = [v4 accessibilityLabel];
  v8 = [v3 safeStringForKey:@"text"];
  v6 = __UIAXStringForVariables();

  return v6;
}

@end