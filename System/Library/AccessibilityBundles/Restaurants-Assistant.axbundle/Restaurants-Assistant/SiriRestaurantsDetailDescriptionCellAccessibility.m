@interface SiriRestaurantsDetailDescriptionCellAccessibility
- (void)_setPriceInfoWithRestaurant:(id)a3;
@end

@implementation SiriRestaurantsDetailDescriptionCellAccessibility

- (void)_setPriceInfoWithRestaurant:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = SiriRestaurantsDetailDescriptionCellAccessibility;
  [(SiriRestaurantsDetailDescriptionCellAccessibility *)&v18 _setPriceInfoWithRestaurant:v4];
  objc_opt_class();
  v5 = [(SiriRestaurantsDetailDescriptionCellAccessibility *)self safeValueForKey:@"_priceLabel"];
  v6 = __UIAccessibilityCastAsClass();

  v7 = [v6 safeValueForKey:@"attributedText"];
  v13 = 0;
  v14 = &v13;
  v15 = 0x3010000000;
  v16 = &unk_29C20F84A;
  v17 = xmmword_29C20F6C0;
  v8 = [v7 length];
  v12[0] = MEMORY[0x29EDCA5F8];
  v12[1] = 3221225472;
  v12[2] = __81__SiriRestaurantsDetailDescriptionCellAccessibility__setPriceInfoWithRestaurant___block_invoke;
  v12[3] = &unk_29F2F2178;
  v12[4] = &v13;
  [v7 enumerateAttribute:@"NSColor" inRange:0 options:v8 usingBlock:{0, v12}];
  if (v14[4] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = [v7 string];
    [v6 setAccessibilityLabel:v9];
  }

  else
  {
    v9 = [v7 string];
    v10 = [v9 substringWithRange:{v14[4], v14[5]}];
    v11 = UIAXPriceRangeDescription();
    [v6 setAccessibilityLabel:v11];
  }

  _Block_object_dispose(&v13, 8);
}

uint64_t __81__SiriRestaurantsDetailDescriptionCellAccessibility__setPriceInfoWithRestaurant___block_invoke(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  if (a2)
  {
    *a5 = 1;
    v5 = *(*(result + 32) + 8);
    *(v5 + 32) = a3;
    *(v5 + 40) = a4;
  }

  return result;
}

@end