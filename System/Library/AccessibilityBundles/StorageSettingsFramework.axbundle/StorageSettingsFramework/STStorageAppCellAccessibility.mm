@interface STStorageAppCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
@end

@implementation STStorageAppCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"STStorageAppCell" hasInstanceVariable:@"_titleLabel" withType:"UILabel"];
  [v3 validateClass:@"STStorageAppCell" hasInstanceVariable:@"_sizeLabel" withType:"UILabel"];
  [v3 validateClass:@"STStorageAppCell" hasInstanceVariable:@"_infoLabel" withType:"UILabel"];
}

@end