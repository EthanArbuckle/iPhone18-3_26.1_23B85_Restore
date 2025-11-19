@interface ENUIExposureCheckCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
@end

@implementation ENUIExposureCheckCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"ENUIExposureCheckCell" hasInstanceMethod:@"sectionLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"ENUIExposureCheckCell" hasInstanceMethod:@"titleLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"ENUIExposureCheckCell" hasInstanceMethod:@"subtitleLabel" withFullSignature:{"@", 0}];
}

@end