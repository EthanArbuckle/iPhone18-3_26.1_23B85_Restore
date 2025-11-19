@interface STStorageMediaItemCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
@end

@implementation STStorageMediaItemCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"STStorageMediaItemCell" hasInstanceVariable:@"_titleLabel" withType:"UILabel"];
  [v3 validateClass:@"STStorageMediaItemCell" hasInstanceVariable:@"_infoLabel" withType:"UILabel"];
  [v3 validateClass:@"STStorageMediaItemCell" hasInstanceVariable:@"_sizeLabel" withType:"UILabel"];
}

@end