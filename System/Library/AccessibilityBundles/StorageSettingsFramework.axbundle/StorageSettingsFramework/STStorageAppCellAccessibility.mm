@interface STStorageAppCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
@end

@implementation STStorageAppCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"STStorageAppCell" hasInstanceVariable:@"_titleLabel" withType:"UILabel"];
  [validationsCopy validateClass:@"STStorageAppCell" hasInstanceVariable:@"_sizeLabel" withType:"UILabel"];
  [validationsCopy validateClass:@"STStorageAppCell" hasInstanceVariable:@"_infoLabel" withType:"UILabel"];
}

@end