@interface SKUIPageControlAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)accessibilityDecrement;
- (void)accessibilityIncrement;
@end

@implementation SKUIPageControlAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SKUIGiftThemeBackgroundView" hasInstanceMethod:@"scrollView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SKUIGiftThemeCollectionView" isKindOfClass:@"UICollectionView"];
}

- (void)accessibilityIncrement
{
  v8.receiver = self;
  v8.super_class = SKUIPageControlAccessibility;
  [(SKUIPageControlAccessibility *)&v8 accessibilityIncrement];
  accessibilityIdentifier = [(SKUIPageControlAccessibility *)self accessibilityIdentifier];
  v4 = [accessibilityIdentifier isEqualToString:@"GiftThemePageControl"];

  if (v4)
  {
    objc_opt_class();
    v5 = [(SKUIPageControlAccessibility *)self _accessibilityAncestorIsKindOf:NSClassFromString(&cfstr_Skuigiftthemeb.isa)];
    v6 = [v5 safeValueForKey:@"scrollView"];
    v7 = __UIAccessibilityCastAsClass();

    [v7 accessibilityScrollLeftPage];
  }
}

- (void)accessibilityDecrement
{
  v8.receiver = self;
  v8.super_class = SKUIPageControlAccessibility;
  [(SKUIPageControlAccessibility *)&v8 accessibilityDecrement];
  accessibilityIdentifier = [(SKUIPageControlAccessibility *)self accessibilityIdentifier];
  v4 = [accessibilityIdentifier isEqualToString:@"GiftThemePageControl"];

  if (v4)
  {
    objc_opt_class();
    v5 = [(SKUIPageControlAccessibility *)self _accessibilityAncestorIsKindOf:NSClassFromString(&cfstr_Skuigiftthemeb.isa)];
    v6 = [v5 safeValueForKey:@"scrollView"];
    v7 = __UIAccessibilityCastAsClass();

    [v7 accessibilityScrollRightPage];
  }
}

@end