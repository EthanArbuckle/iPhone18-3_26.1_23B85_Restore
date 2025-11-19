@interface SKUIShelfCollectionViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)setCollectionView:(id)a3;
@end

@implementation SKUIShelfCollectionViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SKUIShelfCollectionViewCell" hasInstanceMethod:@"setCollectionView:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"SKUIShelfCollectionViewCell" hasInstanceMethod:@"collectionView" withFullSignature:{"@", 0}];
}

- (void)setCollectionView:(id)a3
{
  v4.receiver = self;
  v4.super_class = SKUIShelfCollectionViewCellAccessibility;
  [(SKUIShelfCollectionViewCellAccessibility *)&v4 setCollectionView:a3];
  [(SKUIShelfCollectionViewCellAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v10.receiver = self;
  v10.super_class = SKUIShelfCollectionViewCellAccessibility;
  [(SKUIShelfCollectionViewCellAccessibility *)&v10 _accessibilityLoadAccessibilityInformation];
  objc_opt_class();
  v3 = [(SKUIShelfCollectionViewCellAccessibility *)self safeValueForKey:@"collectionView"];
  v4 = __UIAccessibilityCastAsClass();

  v5 = [v4 collectionViewLayout];
  NSClassFromString(&cfstr_Skuicarouselco.isa);
  isKindOfClass = objc_opt_isKindOfClass();

  v7 = [(SKUIShelfCollectionViewCellAccessibility *)self safeValueForKey:@"collectionView"];
  v8 = v7;
  if (isKindOfClass)
  {
    v9 = @"SKUICarouselCollection";
  }

  else
  {
    v9 = @"ShelfCollectionView";
  }

  [v7 setAccessibilityIdentifier:v9];
}

@end