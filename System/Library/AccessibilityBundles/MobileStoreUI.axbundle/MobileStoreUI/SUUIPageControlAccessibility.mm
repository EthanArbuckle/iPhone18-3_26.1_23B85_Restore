@interface SUUIPageControlAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)accessibilityDecrement;
- (void)accessibilityIncrement;
@end

@implementation SUUIPageControlAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SUUIGiftThemeBackgroundView" hasInstanceMethod:@"scrollView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SUUIGiftThemeCollectionView" isKindOfClass:@"UICollectionView"];
}

- (void)accessibilityIncrement
{
  v8.receiver = self;
  v8.super_class = SUUIPageControlAccessibility;
  [(SUUIPageControlAccessibility *)&v8 accessibilityIncrement];
  accessibilityIdentifier = [(SUUIPageControlAccessibility *)self accessibilityIdentifier];
  v4 = [accessibilityIdentifier isEqualToString:@"GiftThemePageControl"];

  if (v4)
  {
    objc_opt_class();
    v5 = [(SUUIPageControlAccessibility *)self _accessibilityAncestorIsKindOf:NSClassFromString(&cfstr_Suuigiftthemeb.isa)];
    v6 = [v5 safeValueForKey:@"scrollView"];
    v7 = __UIAccessibilityCastAsClass();

    [v7 accessibilityScrollLeftPage];
  }
}

- (void)accessibilityDecrement
{
  v8.receiver = self;
  v8.super_class = SUUIPageControlAccessibility;
  [(SUUIPageControlAccessibility *)&v8 accessibilityDecrement];
  accessibilityIdentifier = [(SUUIPageControlAccessibility *)self accessibilityIdentifier];
  v4 = [accessibilityIdentifier isEqualToString:@"GiftThemePageControl"];

  if (v4)
  {
    objc_opt_class();
    v5 = [(SUUIPageControlAccessibility *)self _accessibilityAncestorIsKindOf:NSClassFromString(&cfstr_Suuigiftthemeb.isa)];
    v6 = [v5 safeValueForKey:@"scrollView"];
    v7 = __UIAccessibilityCastAsClass();

    [v7 accessibilityScrollRightPage];
  }
}

@end