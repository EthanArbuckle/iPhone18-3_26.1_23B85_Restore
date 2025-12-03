@interface STStorageUsageAppHeaderCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
@end

@implementation STStorageUsageAppHeaderCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"STStorageUsageAppHeaderCell" hasInstanceVariable:@"_titleLabel" withType:"UILabel"];
  [validationsCopy validateClass:@"STStorageUsageAppHeaderCell" hasInstanceVariable:@"_infoLabel" withType:"UILabel"];
  [validationsCopy validateClass:@"STStorageUsageAppHeaderCell" hasInstanceVariable:@"_vendorLabel" withType:"UILabel"];
}

@end