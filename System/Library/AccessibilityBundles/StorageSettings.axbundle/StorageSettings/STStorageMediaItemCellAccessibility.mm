@interface STStorageMediaItemCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
@end

@implementation STStorageMediaItemCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"STStorageMediaItemCell" hasInstanceVariable:@"_titleLabel" withType:"UILabel"];
  [validationsCopy validateClass:@"STStorageMediaItemCell" hasInstanceVariable:@"_infoLabel" withType:"UILabel"];
  [validationsCopy validateClass:@"STStorageMediaItemCell" hasInstanceVariable:@"_sizeLabel" withType:"UILabel"];
}

@end