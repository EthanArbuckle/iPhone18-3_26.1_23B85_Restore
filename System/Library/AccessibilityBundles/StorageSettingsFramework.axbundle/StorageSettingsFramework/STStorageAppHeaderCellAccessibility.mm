@interface STStorageAppHeaderCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
@end

@implementation STStorageAppHeaderCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"STStorageAppHeaderCell" hasInstanceVariable:@"_titleLabel" withType:"UILabel"];
  [v3 validateClass:@"STStorageAppHeaderCell" hasInstanceVariable:@"_vendorLabel" withType:"UILabel"];
  [v3 validateClass:@"STStorageAppHeaderCell" hasInstanceVariable:@"_infoLabel" withType:"UILabel"];
}

@end