@interface STStorageSystemCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
@end

@implementation STStorageSystemCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"STStorageSystemCell" hasInstanceVariable:@"_titleLabel" withType:"UILabel"];
  [v3 validateClass:@"STStorageSystemCell" hasInstanceVariable:@"_sizeLabel" withType:"UILabel"];
}

@end