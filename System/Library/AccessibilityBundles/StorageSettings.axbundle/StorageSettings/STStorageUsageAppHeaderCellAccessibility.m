@interface STStorageUsageAppHeaderCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
@end

@implementation STStorageUsageAppHeaderCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"STStorageUsageAppHeaderCell" hasInstanceVariable:@"_titleLabel" withType:"UILabel"];
  [v3 validateClass:@"STStorageUsageAppHeaderCell" hasInstanceVariable:@"_infoLabel" withType:"UILabel"];
  [v3 validateClass:@"STStorageUsageAppHeaderCell" hasInstanceVariable:@"_vendorLabel" withType:"UILabel"];
}

@end