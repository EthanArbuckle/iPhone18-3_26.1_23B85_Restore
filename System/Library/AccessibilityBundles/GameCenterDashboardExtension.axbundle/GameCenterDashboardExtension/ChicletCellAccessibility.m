@interface ChicletCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
- (void)accessibilityPresentMetadata;
@end

@implementation ChicletCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"GameCenterDashboardExtension.ChicletCell" hasInstanceMethod:@"accessibilityTitleLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"GameCenterDashboardExtension.ChicletCell" hasInstanceMethod:@"accessibilityMetadataContainer" withFullSignature:{"@", 0}];
  [v3 validateClass:@"GameCenterDashboardExtension.ChicletCell" hasInstanceMethod:@"accessibilityPresentMetadata" withFullSignature:{"v", 0}];
  [v3 validateClass:@"GameCenterDashboardExtension.ChicletMetadata"];
}

- (id)accessibilityLabel
{
  v3 = [(ChicletCellAccessibility *)self safeValueForKey:@"accessibilityTitleLabel"];
  v4 = [(ChicletCellAccessibility *)self safeUIViewForKey:@"accessibilityMetadataContainer"];
  v5 = [v4 _accessibilityFindSubviewDescendant:&__block_literal_global_0];
  v6 = [v3 accessibilityLabel];
  v9 = [v5 accessibilityLabel];
  v7 = __UIAXStringForVariables();

  return v7;
}

uint64_t __46__ChicletCellAccessibility_accessibilityLabel__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  MEMORY[0x29C2D6C80](@"GameCenterDashboardExtension.ChicletMetadata");
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (void)accessibilityPresentMetadata
{
  v2.receiver = self;
  v2.super_class = ChicletCellAccessibility;
  [(ChicletCellAccessibility *)&v2 accessibilityPresentMetadata];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = ChicletCellAccessibility;
  return *MEMORY[0x29EDC7F70] | [(ChicletCellAccessibility *)&v3 accessibilityTraits];
}

@end