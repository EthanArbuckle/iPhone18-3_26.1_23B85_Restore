@interface SiriRestaurantsListItemCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
@end

@implementation SiriRestaurantsListItemCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SiriRestaurantsListItemCell" hasInstanceVariable:@"_nameLabel" withType:"UILabel"];
  [v3 validateClass:@"SiriRestaurantsListItemCell" hasInstanceVariable:@"_distanceLabel" withType:"UILabel"];
  [v3 validateClass:@"SiriRestaurantsListItemCell" hasInstanceVariable:@"_addressLabel" withType:"UILabel"];
  [v3 validateClass:@"SiriRestaurantsListItemCell" hasInstanceVariable:@"_tableTimesLabel" withType:"UILabel"];
  [v3 validateClass:@"SiriRestaurantsListItemCell" hasInstanceVariable:@"_categoriesLabel" withType:"UILabel"];
  [v3 validateClass:@"SiriRestaurantsListItemCell" hasInstanceVariable:@"_reviewsLabel" withType:"UILabel"];
  [v3 validateClass:@"SiriRestaurantsListItemCell" hasInstanceVariable:@"_priceLabel" withType:"UILabel"];
  [v3 validateClass:@"SiriRestaurantsListItemCell" hasInstanceVariable:@"_starsView" withType:"SiriUIStarsView"];
}

- (id)accessibilityLabel
{
  v19 = [(SiriRestaurantsListItemCellAccessibility *)self safeValueForKey:@"_priceLabel"];
  v3 = [v19 attributedText];
  v27 = 0;
  v28 = &v27;
  v29 = 0x3010000000;
  v30 = &unk_29C20F84A;
  v31 = xmmword_29C20F6C0;
  v4 = [v3 length];
  v26[0] = MEMORY[0x29EDCA5F8];
  v26[1] = 3221225472;
  v26[2] = __62__SiriRestaurantsListItemCellAccessibility_accessibilityLabel__block_invoke;
  v26[3] = &unk_29F2F2178;
  v26[4] = &v27;
  [v3 enumerateAttribute:@"NSColor" inRange:0 options:v4 usingBlock:{0, v26}];
  v18 = v3;
  v25 = [v3 string];
  v5 = v28[4];
  if (v5 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = [v25 stringByReplacingCharactersInRange:v5 withString:{v28[5], &stru_2A22C24A0}];

    v25 = v6;
  }

  v24 = [(SiriRestaurantsListItemCellAccessibility *)self safeValueForKey:@"_nameLabel"];
  v21 = [v24 accessibilityLabel];
  v23 = [(SiriRestaurantsListItemCellAccessibility *)self safeValueForKey:@"_distanceLabel"];
  v20 = [v23 accessibilityLabel];
  v22 = [(SiriRestaurantsListItemCellAccessibility *)self safeValueForKey:@"_addressLabel"];
  v7 = [v22 accessibilityLabel];
  v8 = [(SiriRestaurantsListItemCellAccessibility *)self safeValueForKey:@"_categoriesLabel"];
  v9 = [v8 accessibilityLabel];
  v10 = [(SiriRestaurantsListItemCellAccessibility *)self safeValueForKey:@"_tableTimesLabel"];
  v11 = [v10 accessibilityLabel];
  v12 = [(SiriRestaurantsListItemCellAccessibility *)self safeValueForKey:@"_starsView"];
  v13 = [v12 accessibilityLabel];
  v14 = [(SiriRestaurantsListItemCellAccessibility *)self safeValueForKey:@"_reviewsLabel"];
  v17 = [v14 accessibilityLabel];
  v15 = __UIAXStringForVariables();

  _Block_object_dispose(&v27, 8);

  return v15;
}

uint64_t __62__SiriRestaurantsListItemCellAccessibility_accessibilityLabel__block_invoke(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
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