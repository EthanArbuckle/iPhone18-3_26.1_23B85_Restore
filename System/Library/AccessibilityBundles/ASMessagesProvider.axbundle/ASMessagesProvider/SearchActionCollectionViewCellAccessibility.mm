@interface SearchActionCollectionViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation SearchActionCollectionViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"ASMessagesProvider.SearchActionCollectionViewCell" hasSwiftField:@"actionContentView" withSwiftType:"SearchActionContentView"];
  [validationsCopy validateClass:@"ASMessagesProvider.SearchActionContentView" hasSwiftField:@"linkLabel" withSwiftType:"DynamicLabel"];
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = SearchActionCollectionViewCellAccessibility;
  return *MEMORY[0x29EDC7F70] | [(SearchActionCollectionViewCellAccessibility *)&v3 accessibilityTraits]| *MEMORY[0x29EDC7FD0];
}

- (id)accessibilityLabel
{
  v2 = [(SearchActionCollectionViewCellAccessibility *)self safeSwiftValueForKey:@"actionContentView"];
  objc_opt_class();
  v3 = [v2 safeSwiftValueForKey:@"linkLabel"];
  v4 = __UIAccessibilityCastAsClass();

  accessibilityLabel = [v4 accessibilityLabel];

  return accessibilityLabel;
}

@end