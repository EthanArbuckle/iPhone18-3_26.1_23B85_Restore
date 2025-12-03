@interface STStorageSystemCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
@end

@implementation STStorageSystemCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"STStorageSystemCell" hasInstanceVariable:@"_titleLabel" withType:"UILabel"];
  [validationsCopy validateClass:@"STStorageSystemCell" hasInstanceVariable:@"_sizeLabel" withType:"UILabel"];
}

@end