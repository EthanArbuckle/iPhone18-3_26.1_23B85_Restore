@interface SearchActionCollectionViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation SearchActionCollectionViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"ProductPageExtension.SearchActionCollectionViewCell" hasSwiftField:@"actionContentView" withSwiftType:"SearchActionContentView"];
  [v3 validateClass:@"ProductPageExtension.SearchActionContentView" hasSwiftField:@"linkLabel" withSwiftType:"DynamicLabel"];
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

  v5 = [v4 accessibilityLabel];

  return v5;
}

@end