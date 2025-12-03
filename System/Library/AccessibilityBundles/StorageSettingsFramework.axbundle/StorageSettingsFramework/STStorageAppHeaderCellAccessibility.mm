@interface STStorageAppHeaderCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
@end

@implementation STStorageAppHeaderCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"STStorageAppHeaderCell" hasInstanceVariable:@"_titleLabel" withType:"UILabel"];
  [validationsCopy validateClass:@"STStorageAppHeaderCell" hasInstanceVariable:@"_vendorLabel" withType:"UILabel"];
  [validationsCopy validateClass:@"STStorageAppHeaderCell" hasInstanceVariable:@"_infoLabel" withType:"UILabel"];
}

@end