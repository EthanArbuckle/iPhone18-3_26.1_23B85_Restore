@interface SFStartPageCustomizationCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (CGPoint)accessibilityActivationPoint;
- (id)_accessibilitySupplementaryFooterViews;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
@end

@implementation SFStartPageCustomizationCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SFStartPageCustomizationCell" hasInstanceVariable:@"_switch" withType:"UISwitch"];
  [v3 validateClass:@"SFStartPageCustomizationCell" isKindOfClass:@"UICollectionViewListCell"];
  [v3 validateClass:@"SFStartPageCustomizationCell" hasInstanceVariable:@"_contentView" withType:"UIView"];
  [v3 validateClass:@"UIListContentView" hasInstanceVariable:@"_textLabel" withType:"UILabel"];
}

- (unint64_t)accessibilityTraits
{
  v7.receiver = self;
  v7.super_class = SFStartPageCustomizationCellAccessibility;
  v3 = [(SFStartPageCustomizationCellAccessibility *)&v7 accessibilityTraits];
  v4 = [(SFStartPageCustomizationCellAccessibility *)self safeValueForKey:@"_switch"];
  v5 = [v4 accessibilityTraits];

  return v5 | v3;
}

- (CGPoint)accessibilityActivationPoint
{
  v2 = [(SFStartPageCustomizationCellAccessibility *)self safeValueForKey:@"_switch"];
  [v2 accessibilityActivationPoint];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.y = v8;
  result.x = v7;
  return result;
}

- (id)accessibilityValue
{
  v2 = [(SFStartPageCustomizationCellAccessibility *)self safeValueForKey:@"_switch"];
  v3 = [v2 accessibilityValue];

  return v3;
}

- (id)_accessibilitySupplementaryFooterViews
{
  v3 = [(SFStartPageCustomizationCellAccessibility *)self safeValueForKey:@"_switch"];
  v10.receiver = self;
  v10.super_class = SFStartPageCustomizationCellAccessibility;
  v4 = [(SFStartPageCustomizationCellAccessibility *)&v10 _accessibilitySupplementaryFooterViews];
  v8[0] = MEMORY[0x29EDCA5F8];
  v8[1] = 3221225472;
  v8[2] = __83__SFStartPageCustomizationCellAccessibility__accessibilitySupplementaryFooterViews__block_invoke;
  v8[3] = &unk_29F2D6A90;
  v9 = v3;
  v5 = v3;
  v6 = [v4 ax_filteredArrayUsingBlock:v8];

  return v6;
}

BOOL __83__SFStartPageCustomizationCellAccessibility__accessibilitySupplementaryFooterViews__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v9[0] = MEMORY[0x29EDCA5F8];
  v9[1] = 3221225472;
  v9[2] = __83__SFStartPageCustomizationCellAccessibility__accessibilitySupplementaryFooterViews__block_invoke_2;
  v9[3] = &unk_29F2D6A68;
  v10 = v3;
  v5 = v3;
  v6 = [v4 _accessibilityFindAncestor:v9 startWithSelf:1];
  v7 = v6 == 0;

  return v7;
}

@end