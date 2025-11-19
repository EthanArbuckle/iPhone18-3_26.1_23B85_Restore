@interface SearchUITableViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)_accessibilityContainsCombinedView;
- (BOOL)_accessibilityContainsSportsGrid;
- (BOOL)_accessibilityHasAccessibleSubviews;
- (BOOL)_accessibilityUsesOverrideContainerProtocol;
- (BOOL)isAccessibilityElement;
- (id)_accessibilityRetrieveTableViewCellText;
- (id)_accessibilitySearchCellElements;
- (id)_accessibilitySupplementaryFooterViews;
- (id)accessibilityElements;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (id)automationCustomProperties;
- (unint64_t)accessibilityTraits;
@end

@implementation SearchUITableViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SearchUIMovieCardSectionView"];
  [v3 validateClass:@"SearchUIWebCardSectionView"];
  [v3 validateClass:@"SearchUIDetailedRowCardSectionView"];
  [v3 validateClass:@"SearchUITableViewCell" hasInstanceMethod:@"rowModel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SearchUIRowModel" hasInstanceMethod:@"cardSection" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SearchUIRowModel" hasInstanceMethod:@"isTappable" withFullSignature:{"B", 0}];
  [v3 validateClass:@"SearchUIRowModel" hasProperty:@"identifyingResult" withType:"@"];
  [v3 validateClass:@"SFSearchResult" hasProperty:@"contentType" withType:"@"];
  [v3 validateProtocol:@"SFTableHeaderRowCardSection" hasRequiredInstanceMethod:@"tableIdentifier"];
  [v3 validateProtocol:@"SFTableHeaderRowCardSection" conformsToProtocol:@"SFCardSection"];
  [v3 validateClass:@"CNActionView"];
  [v3 validateClass:@"TLKStoreButton"];
  [v3 validateClass:@"SearchUIDetailedRowCardSectionView"];
  [v3 validateClass:@"SearchUICardSectionView"];
  [v3 validateClass:@"SearchUIHomeScreenAppIconView"];
  [v3 validateClass:@"SearchUICardSectionTableCell" isKindOfClass:@"SearchUITableViewCell"];
}

- (BOOL)_accessibilityUsesOverrideContainerProtocol
{
  v2 = [(SearchUITableViewCellAccessibility *)self _accessibilitySearchCellElements];
  v3 = [v2 count] != 0;

  return v3;
}

- (id)accessibilityElements
{
  v7.receiver = self;
  v7.super_class = SearchUITableViewCellAccessibility;
  v3 = [(SearchUITableViewCellAccessibility *)&v7 accessibilityElements];
  if ([v3 count])
  {
    v4 = v3;
  }

  else
  {
    v4 = [(SearchUITableViewCellAccessibility *)self _accessibilitySearchCellElements];
  }

  v5 = v4;

  return v5;
}

- (id)_accessibilitySearchCellElements
{
  v5[0] = MEMORY[0x29EDCA5F8];
  v5[1] = 3221225472;
  v5[2] = __70__SearchUITableViewCellAccessibility__accessibilitySearchCellElements__block_invoke;
  v5[3] = &unk_29F2F4FB0;
  v5[4] = self;
  v2 = [(SearchUITableViewCellAccessibility *)self _accessibilityFindSubviewDescendantsPassingTest:v5];
  if ([v2 count])
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t __70__SearchUITableViewCellAccessibility__accessibilitySearchCellElements__block_invoke(uint64_t a1, void *a2, _BYTE *a3)
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
      NSClassFromString(&cfstr_Searchuicardse_0.isa);
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        NSClassFromString(&cfstr_Searchuihomesc_0.isa);
        isKindOfClass = objc_opt_isKindOfClass();
        goto LABEL_9;
      }
    }

    isKindOfClass = v6 != 0;
  }

LABEL_9:

  return isKindOfClass & 1;
}

- (id)_accessibilityRetrieveTableViewCellText
{
  v3 = [(SearchUITableViewCellAccessibility *)self contentView];
  v4 = [v3 _accessibilityFindDescendant:&__block_literal_global_13];

  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = SearchUITableViewCellAccessibility;
    v5 = [(SearchUITableViewCellAccessibility *)&v7 _accessibilityRetrieveTableViewCellText];
  }

  return v5;
}

uint64_t __77__SearchUITableViewCellAccessibility__accessibilityRetrieveTableViewCellText__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  NSClassFromString(&cfstr_Sckpmediacontr.isa);
  if (objc_opt_isKindOfClass())
  {
    isKindOfClass = 1;
  }

  else
  {
    NSClassFromString(&cfstr_Searchuimoviec_1.isa);
    isKindOfClass = objc_opt_isKindOfClass();
  }

  return isKindOfClass & 1;
}

- (id)accessibilityLabel
{
  v3 = [(SearchUITableViewCellAccessibility *)self accessibilityElements];
  v4 = MEMORY[0x29ED341C0]();

  v5 = [(SearchUITableViewCellAccessibility *)self safeValueForKey:@"rowModel"];
  v6 = *MEMORY[0x29EDBB1F8];
  v7 = [MEMORY[0x29EDB8D80] arrayWithObjects:{*MEMORY[0x29EDBB1E0], *MEMORY[0x29EDBB1F8], *MEMORY[0x29EDBB1D8], *MEMORY[0x29EDBB1F0], *MEMORY[0x29EDBB200], *MEMORY[0x29EDBB1E8], 0}];
  NSClassFromString(&cfstr_Searchuidetail_1.isa);
  if (objc_opt_isKindOfClass())
  {
    v8 = [v5 safeValueForKey:@"identifyingResult"];
    v9 = [v8 safeStringForKey:@"contentType"];

    if ([v7 containsObject:v9])
    {
      v12 = accessibilityLocalizedString(@"siri.shortcut");
      v10 = __UIAXStringForVariables();

      v4 = v10;
    }
  }

  return v4;
}

- (id)automationCustomProperties
{
  v3 = [(SearchUITableViewCellAccessibility *)self accessibilityElements];
  v4 = v3;
  if (v3 && [v3 count])
  {
    v5 = [v4 objectAtIndexedSubscript:0];
    v6 = [v5 automationCustomProperties];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = SearchUITableViewCellAccessibility;
    v6 = [(SearchUITableViewCellAccessibility *)&v8 automationCustomProperties];
  }

  return v6;
}

- (id)accessibilityValue
{
  v3 = [(SearchUITableViewCellAccessibility *)self accessibilityElements];
  v4 = v3;
  if (v3 && [v3 count])
  {
    v5 = [v4 objectAtIndexedSubscript:0];
    v6 = [v5 accessibilityValue];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = SearchUITableViewCellAccessibility;
    v6 = [(SearchUITableViewCellAccessibility *)&v8 accessibilityValue];
  }

  return v6;
}

- (BOOL)isAccessibilityElement
{
  v3 = [(SearchUITableViewCellAccessibility *)self accessibilityElements];
  v4 = v3;
  if (v3 && [v3 count])
  {
    NSClassFromString(&cfstr_Searchuicardse_3.isa);
    if (objc_opt_isKindOfClass())
    {
      LOBYTE(v5) = 0;
    }

    else
    {
      v6 = [v4 objectAtIndexedSubscript:0];
      v5 = [v6 isAccessibilityElement] ^ 1;
    }
  }

  else
  {
    v5 = ![(SearchUITableViewCellAccessibility *)self _accessibilityHasAccessibleSubviews];
  }

  return v5;
}

- (unint64_t)accessibilityTraits
{
  v3 = [(SearchUITableViewCellAccessibility *)self safeValueForKey:@"rowModel"];
  v4 = [v3 safeBoolForKey:@"isTappable"];

  if (v4)
  {
    return *MEMORY[0x29EDC7F70];
  }

  v6.receiver = self;
  v6.super_class = SearchUITableViewCellAccessibility;
  return [(SearchUITableViewCellAccessibility *)&v6 accessibilityTraits];
}

- (BOOL)_accessibilityHasAccessibleSubviews
{
  if (_accessibilityHasAccessibleSubviews_onceToken_1 != -1)
  {
    [SearchUITableViewCellAccessibility _accessibilityHasAccessibleSubviews];
  }

  v6[0] = MEMORY[0x29EDCA5F8];
  v6[1] = 3221225472;
  v6[2] = __73__SearchUITableViewCellAccessibility__accessibilityHasAccessibleSubviews__block_invoke_2;
  v6[3] = &unk_29F2F5018;
  v6[4] = self;
  v3 = [(SearchUITableViewCellAccessibility *)self _accessibilityFindSubviewDescendant:v6];
  v4 = v3 != 0;

  return v4;
}

Class __73__SearchUITableViewCellAccessibility__accessibilityHasAccessibleSubviews__block_invoke()
{
  _accessibilityHasAccessibleSubviews_webCardClass_1 = NSClassFromString(&cfstr_Searchuiwebcar.isa);
  _accessibilityHasAccessibleSubviews_detailedRowClass_1 = NSClassFromString(&cfstr_Searchuidetail_0.isa);
  _accessibilityHasAccessibleSubviews_trailersSectionClass_1 = NSClassFromString(&cfstr_Searchuitraile_1.isa);
  result = NSClassFromString(&cfstr_Crkcontainerca.isa);
  _accessibilityHasAccessibleSubviews_cardKitSection_1 = result;
  return result;
}

uint64_t __73__SearchUITableViewCellAccessibility__accessibilityHasAccessibleSubviews__block_invoke_2(uint64_t a1, void *a2)
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

- (id)_accessibilitySupplementaryFooterViews
{
  if ([(SearchUITableViewCellAccessibility *)self _accessibilityContainsCombinedView])
  {
    v6.receiver = self;
    v6.super_class = SearchUITableViewCellAccessibility;
    v3 = [(SearchUITableViewCellAccessibility *)&v6 _accessibilitySupplementaryFooterViews];
  }

  else
  {
    if (_accessibilitySupplementaryFooterViews_onceToken_0 != -1)
    {
      [SearchUITableViewCellAccessibility _accessibilitySupplementaryFooterViews];
    }

    v5[0] = MEMORY[0x29EDCA5F8];
    v5[1] = 3221225472;
    v5[2] = __76__SearchUITableViewCellAccessibility__accessibilitySupplementaryFooterViews__block_invoke_2;
    v5[3] = &unk_29F2F5068;
    v5[4] = self;
    v3 = [(SearchUITableViewCellAccessibility *)self _accessibilityFindSubviewDescendantsPassingTest:v5];
  }

  return v3;
}

Class __76__SearchUITableViewCellAccessibility__accessibilitySupplementaryFooterViews__block_invoke()
{
  result = NSClassFromString(&cfstr_Tlktextbutton.isa);
  _accessibilitySupplementaryFooterViews_footnoteButtonClass_0 = result;
  return result;
}

uint64_t __76__SearchUITableViewCellAccessibility__accessibilitySupplementaryFooterViews__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  isKindOfClass = objc_opt_isKindOfClass();
  v5 = 0;
  if (*(a1 + 32) != v3 && (isKindOfClass & 1) != 0)
  {
    v5 = [v3 _accessibilityViewIsVisible];
  }

  return v5;
}

- (BOOL)_accessibilityContainsSportsGrid
{
  v2 = [(SearchUITableViewCellAccessibility *)self safeValueForKey:@"rowModel"];
  v3 = [v2 safeValueForKey:@"cardSection"];

  v4 = NSProtocolFromString(&cfstr_Sftableheaderr.isa);
  v5 = [v3 conformsToProtocol:v4];

  if (v5)
  {
    v6 = [v3 safeStringForKey:@"tableIdentifier"];
    v7 = [v6 isEqualToString:@"Period Scores"];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)_accessibilityContainsCombinedView
{
  v16 = *MEMORY[0x29EDCA608];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = [(SearchUITableViewCellAccessibility *)self accessibilityElements];
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v11 + 1) + 8 * i);
        NSClassFromString(&cfstr_Searchuicombin_2.isa);
        if (objc_opt_isKindOfClass())
        {
          v8 = 1;
          goto LABEL_11;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v8 = 0;
LABEL_11:

  v9 = *MEMORY[0x29EDCA608];
  return v8;
}

@end