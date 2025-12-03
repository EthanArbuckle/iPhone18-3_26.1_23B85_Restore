@interface SearchUICardSectionCollectionViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_accessibilityHasAccessibleSubviews;
- (BOOL)isAccessibilityElement;
- (id)_axAccessibilityElements;
- (id)accessibilityCustomActions;
- (id)accessibilityElements;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (id)automationCustomProperties;
- (unint64_t)accessibilityTraits;
@end

@implementation SearchUICardSectionCollectionViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"TLKLabel" isKindOfClass:@"UILabel"];
  [validationsCopy validateClass:@"TLKTextView" isKindOfClass:@"UITextView"];
  [validationsCopy validateClass:@"SearchUICardSectionCollectionViewCell" hasInstanceVariable:@"_cardSectionView" withType:"SearchUICardSectionView"];
  [validationsCopy validateClass:@"SearchUIDetailedRowCardSectionView"];
  [validationsCopy validateClass:@"SearchUICardSectionView"];
  [validationsCopy validateClass:@"SearchUICombinedCardSectionsView"];
  [validationsCopy validateClass:@"SearchUIMultiResultAppCollectionCell"];
  [validationsCopy validateClass:@"SearchUICircleButtonItemView"];
  [validationsCopy validateClass:@"FUFlightInfoView"];
  [validationsCopy validateClass:@"SearchUICircleButtonItemView" isKindOfClass:@"SearchUIButtonItemView"];
  [validationsCopy validateClass:@"SearchUIButtonItemView" hasInstanceVariable:@"_buttonTitle" withType:"NSString"];
}

- (id)accessibilityElements
{
  v3 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"%p-_accessibilityChildren", self];
  v4 = MEMORY[0x29EDC7300];
  v5 = [*MEMORY[0x29EDC7300] objectForKeyedSubscript:v3];

  if (v5)
  {
    v6 = [*v4 objectForKeyedSubscript:v3];
  }

  else
  {
    v9[0] = MEMORY[0x29EDCA5F8];
    v9[1] = 3221225472;
    v9[2] = __75__SearchUICardSectionCollectionViewCellAccessibility_accessibilityElements__block_invoke;
    v9[3] = &unk_29F2F4FB0;
    v9[4] = self;
    v6 = [(SearchUICardSectionCollectionViewCellAccessibility *)self _accessibilityFindSubviewDescendantsPassingTest:v9];
    if (![v6 count])
    {
      _axAccessibilityElements = [(SearchUICardSectionCollectionViewCellAccessibility *)self _axAccessibilityElements];

      v6 = _axAccessibilityElements;
    }

    [*v4 setObject:v6 forKeyedSubscript:v3];
  }

  return v6;
}

uint64_t __75__SearchUICardSectionCollectionViewCellAccessibility_accessibilityElements__block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  v6 = v5;
  if (*(a1 + 32) == v5 || ![v5 _accessibilityViewIsVisible])
  {
    isKindOfClass = 0;
  }

  else
  {
    NSClassFromString(&cfstr_Searchuicombin_2.isa);
    if (objc_opt_isKindOfClass())
    {
      *a3 = 1;
    }

    else
    {
      NSClassFromString(&cfstr_Fuflightinfovi.isa);
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        NSClassFromString(&cfstr_Searchuicardse_0.isa);
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          NSClassFromString(&cfstr_Searchuimultir_0.isa);
          isKindOfClass = objc_opt_isKindOfClass();
          goto LABEL_9;
        }
      }
    }

    isKindOfClass = v6 != 0;
  }

LABEL_9:

  return isKindOfClass & 1;
}

- (id)_axAccessibilityElements
{
  v2 = [MEMORY[0x29EDC7368] _accessibilityGetAllSwiftUISubviews:self withFiltering:1];
  v3 = NSClassFromString(&cfstr_SwiftuiAccessi.isa);
  v6[0] = MEMORY[0x29EDCA5F8];
  v6[1] = 3221225472;
  v6[2] = __78__SearchUICardSectionCollectionViewCellAccessibility__axAccessibilityElements__block_invoke;
  v6[3] = &__block_descriptor_40_e15_B32__0_8Q16_B24lu32l8;
  v6[4] = v3;
  v4 = [v2 ax_filteredArrayUsingBlock:v6];

  return v4;
}

BOOL __78__SearchUICardSectionCollectionViewCellAccessibility__axAccessibilityElements__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (objc_opt_isKindOfClass())
  {
    v5 = [v3 accessibilityTraits];
    v6 = v5 != *MEMORY[0x29EDC7F88];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)isAccessibilityElement
{
  accessibilityElements = [(SearchUICardSectionCollectionViewCellAccessibility *)self accessibilityElements];
  if ([accessibilityElements count])
  {
    v4 = [accessibilityElements objectAtIndexedSubscript:0];
    NSClassFromString(&cfstr_SwiftuiAccessi.isa);
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      v7 = [accessibilityElements objectAtIndexedSubscript:0];
      NSClassFromString(&cfstr_Searchuiwebcar.isa);
      if (objc_opt_isKindOfClass())
      {
        v8 = [accessibilityElements count];

        if (v8 == 1)
        {
          LOBYTE(v6) = 0;
          goto LABEL_10;
        }
      }

      else
      {
      }

      v9 = [accessibilityElements objectAtIndexedSubscript:0];
      v6 = [v9 isAccessibilityElement] ^ 1;

      goto LABEL_10;
    }

    LOBYTE(v6) = 1;
  }

  else
  {
    v6 = ![(SearchUICardSectionCollectionViewCellAccessibility *)self _accessibilityHasAccessibleSubviews];
  }

LABEL_10:

  return v6;
}

- (unint64_t)accessibilityTraits
{
  v6.receiver = self;
  v6.super_class = SearchUICardSectionCollectionViewCellAccessibility;
  accessibilityTraits = [(SearchUICardSectionCollectionViewCellAccessibility *)&v6 accessibilityTraits];
  if ([(SearchUICardSectionCollectionViewCellAccessibility *)self safeBoolForKey:@"isSelected"])
  {
    v4 = ~*MEMORY[0x29EDC7FC0];
  }

  else
  {
    v4 = -1;
  }

  return v4 & accessibilityTraits;
}

- (id)accessibilityLabel
{
  accessibilityElements = [(SearchUICardSectionCollectionViewCellAccessibility *)self accessibilityElements];
  v3 = MEMORY[0x29ED341C0]();

  return v3;
}

- (id)accessibilityValue
{
  v2 = [(SearchUICardSectionCollectionViewCellAccessibility *)self _accessibilityFindSubviewDescendantsPassingTest:&__block_literal_global_6];
  v3 = [v2 ax_flatMappedArrayUsingBlock:&__block_literal_global_347];
  v4 = [v3 componentsJoinedByString:{@", "}];

  return v4;
}

uint64_t __72__SearchUICardSectionCollectionViewCellAccessibility_accessibilityValue__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  NSClassFromString(&cfstr_Tlktextview.isa);
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 _accessibilityViewIsVisible];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)automationCustomProperties
{
  accessibilityElements = [(SearchUICardSectionCollectionViewCellAccessibility *)self accessibilityElements];
  v4 = accessibilityElements;
  if (accessibilityElements && [accessibilityElements count])
  {
    v5 = [v4 objectAtIndexedSubscript:0];
    automationCustomProperties = [v5 automationCustomProperties];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = SearchUICardSectionCollectionViewCellAccessibility;
    automationCustomProperties = [(SearchUICardSectionCollectionViewCellAccessibility *)&v8 automationCustomProperties];
  }

  return automationCustomProperties;
}

- (BOOL)_accessibilityHasAccessibleSubviews
{
  if (_accessibilityHasAccessibleSubviews_onceToken != -1)
  {
    [SearchUICardSectionCollectionViewCellAccessibility _accessibilityHasAccessibleSubviews];
  }

  v6[0] = MEMORY[0x29EDCA5F8];
  v6[1] = 3221225472;
  v6[2] = __89__SearchUICardSectionCollectionViewCellAccessibility__accessibilityHasAccessibleSubviews__block_invoke_2;
  v6[3] = &unk_29F2F5018;
  v6[4] = self;
  v3 = [(SearchUICardSectionCollectionViewCellAccessibility *)self _accessibilityFindSubviewDescendant:v6];
  v4 = v3 != 0;

  return v4;
}

Class __89__SearchUICardSectionCollectionViewCellAccessibility__accessibilityHasAccessibleSubviews__block_invoke()
{
  _accessibilityHasAccessibleSubviews_webCardClass = NSClassFromString(&cfstr_Searchuiwebcar.isa);
  _accessibilityHasAccessibleSubviews_detailedRowClass = NSClassFromString(&cfstr_Searchuidetail_0.isa);
  _accessibilityHasAccessibleSubviews_trailersSectionClass = NSClassFromString(&cfstr_Searchuitraile_1.isa);
  result = NSClassFromString(&cfstr_Crkcontainerca.isa);
  _accessibilityHasAccessibleSubviews_cardKitSection = result;
  return result;
}

uint64_t __89__SearchUICardSectionCollectionViewCellAccessibility__accessibilityHasAccessibleSubviews__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  isKindOfClass = objc_opt_isKindOfClass();
  v5 = objc_opt_isKindOfClass();
  v6 = objc_opt_isKindOfClass();
  v7 = objc_opt_isKindOfClass();
  v8 = 0;
  if (*(a1 + 32) != v3 && ((v6 | isKindOfClass | v7) & 1) != 0 && (v5 & 1) == 0)
  {
    v8 = [v3 _accessibilityViewIsVisible];
  }

  return v8;
}

- (id)accessibilityCustomActions
{
  v21 = *MEMORY[0x29EDCA608];
  array = [MEMORY[0x29EDB8DE8] array];
  [(SearchUICardSectionCollectionViewCellAccessibility *)self _axCircleButtonViews];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  obj = v19 = 0u;
  v4 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v17;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v16 + 1) + 8 * i);
        v9 = objc_alloc(MEMORY[0x29EDC78E0]);
        v10 = [v8 safeValueForKey:@"buttonTitle"];
        v15[0] = MEMORY[0x29EDCA5F8];
        v15[1] = 3221225472;
        v15[2] = __80__SearchUICardSectionCollectionViewCellAccessibility_accessibilityCustomActions__block_invoke;
        v15[3] = &unk_29F2F5040;
        v15[4] = v8;
        v11 = [v9 initWithName:v10 actionHandler:v15];
        [array addObject:v11];
      }

      v5 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v5);
  }

  v12 = *MEMORY[0x29EDCA608];

  return array;
}

uint64_t __74__SearchUICardSectionCollectionViewCellAccessibility__axCircleButtonViews__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  NSClassFromString(&cfstr_Searchuicircle.isa);
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

@end