@interface ENUIRegionCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
- (id)accessibilityValue;
@end

@implementation ENUIRegionCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"ENUIRegionCell" hasInstanceMethod:@"sectionLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"ENUIRegionCell" hasInstanceMethod:@"titleLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"ENUIRegionCell" hasInstanceMethod:@"regionCapsuleLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CapsuleLabel" hasInstanceMethod:@"text" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v2 = [(ENUIRegionCellAccessibility *)self safeUIViewForKey:@"sectionLabel"];
  v3 = [v2 accessibilityLabel];

  return v3;
}

- (id)accessibilityValue
{
  v3 = [(ENUIRegionCellAccessibility *)self safeValueForKey:@"regionCapsuleLabel"];
  v4 = [(ENUIRegionCellAccessibility *)self safeUIViewForKey:@"titleLabel"];
  v5 = [v4 accessibilityLabel];
  v8 = [v3 safeStringForKey:@"text"];
  v6 = __UIAXStringForVariables();

  return v6;
}

@end