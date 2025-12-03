@interface ShortcutsRowCollectionViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
- (id)accessibilityValue;
@end

@implementation ShortcutsRowCollectionViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"ShortcutsRowCollectionViewCell" hasInstanceVariable:@"_titleLabel" withType:"UILabel"];
  [validationsCopy validateClass:@"ShortcutsRowCollectionViewCell" hasInstanceVariable:@"_subtitleLabel" withType:"UILabel"];
}

- (id)accessibilityLabel
{
  v2 = [(ShortcutsRowCollectionViewCellAccessibility *)self safeValueForKey:@"_titleLabel"];
  accessibilityLabel = [v2 accessibilityLabel];

  return accessibilityLabel;
}

- (id)accessibilityValue
{
  v2 = [(ShortcutsRowCollectionViewCellAccessibility *)self safeValueForKey:@"_subtitleLabel"];
  accessibilityLabel = [v2 accessibilityLabel];

  return accessibilityLabel;
}

@end