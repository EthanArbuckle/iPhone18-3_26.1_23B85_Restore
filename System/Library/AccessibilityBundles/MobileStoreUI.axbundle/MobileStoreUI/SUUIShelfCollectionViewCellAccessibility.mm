@interface SUUIShelfCollectionViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)setCollectionView:(id)view;
@end

@implementation SUUIShelfCollectionViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SUUIShelfCollectionViewCell" hasInstanceMethod:@"setCollectionView:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"SUUIShelfCollectionViewCell" hasInstanceMethod:@"collectionView" withFullSignature:{"@", 0}];
}

- (void)setCollectionView:(id)view
{
  v4.receiver = self;
  v4.super_class = SUUIShelfCollectionViewCellAccessibility;
  [(SUUIShelfCollectionViewCellAccessibility *)&v4 setCollectionView:view];
  [(SUUIShelfCollectionViewCellAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v10.receiver = self;
  v10.super_class = SUUIShelfCollectionViewCellAccessibility;
  [(SUUIShelfCollectionViewCellAccessibility *)&v10 _accessibilityLoadAccessibilityInformation];
  objc_opt_class();
  v3 = [(SUUIShelfCollectionViewCellAccessibility *)self safeValueForKey:@"collectionView"];
  v4 = __UIAccessibilityCastAsClass();

  collectionViewLayout = [v4 collectionViewLayout];
  NSClassFromString(&cfstr_Suuicarouselco.isa);
  isKindOfClass = objc_opt_isKindOfClass();

  v7 = [(SUUIShelfCollectionViewCellAccessibility *)self safeValueForKey:@"collectionView"];
  v8 = v7;
  if (isKindOfClass)
  {
    v9 = @"SUUICarouselCollection";
  }

  else
  {
    v9 = @"ShelfCollectionView";
  }

  [v7 setAccessibilityIdentifier:v9];
}

@end