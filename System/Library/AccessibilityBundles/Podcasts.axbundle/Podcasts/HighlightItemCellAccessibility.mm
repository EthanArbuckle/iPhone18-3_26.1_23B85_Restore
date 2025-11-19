@interface HighlightItemCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)_accessibilitySupplementaryFooterViews;
- (id)_axPillView;
- (id)accessibilityLabel;
- (id)automationElements;
@end

@implementation HighlightItemCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SLHighlightPillView"];
  [v3 validateClass:@"ShelfKitCollectionViews.ArtworkView"];
}

- (id)accessibilityLabel
{
  v3 = [MEMORY[0x29EDB8DE8] array];
  v8[0] = MEMORY[0x29EDCA5F8];
  v8[1] = 3221225472;
  v8[2] = __52__HighlightItemCellAccessibility_accessibilityLabel__block_invoke;
  v8[3] = &unk_29F2EA0E0;
  v8[4] = self;
  v9 = v3;
  v4 = v3;
  v5 = [(HighlightItemCellAccessibility *)self _accessibilityFindDescendant:v8];
  v6 = MEMORY[0x29C2E7870](v4);

  return v6;
}

uint64_t __52__HighlightItemCellAccessibility_accessibilityLabel__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(a1 + 32) != v3)
  {
    if ([v3 isAccessibilityElement])
    {
      MEMORY[0x29C2E7850](@"SLHighlightPillView");
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        MEMORY[0x29C2E7850](@"ShelfKitCollectionViews.ArtworkView");
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          [*(a1 + 40) addObject:v4];
        }
      }
    }
  }

  return 0;
}

- (id)_accessibilitySupplementaryFooterViews
{
  v3 = [MEMORY[0x29EDB8DE8] array];
  v7.receiver = self;
  v7.super_class = HighlightItemCellAccessibility;
  v4 = [(HighlightItemCellAccessibility *)&v7 _accessibilitySupplementaryFooterViews];
  [v3 axSafelyAddObjectsFromArray:v4];

  v5 = [(HighlightItemCellAccessibility *)self _axPillView];
  if ([v5 _accessibilityViewIsVisible])
  {
    [v3 axSafelyAddObject:v5];
  }

  return v3;
}

- (id)automationElements
{
  v3 = [MEMORY[0x29EDB8DE8] array];
  v7.receiver = self;
  v7.super_class = HighlightItemCellAccessibility;
  v4 = [(HighlightItemCellAccessibility *)&v7 automationElements];
  [v3 axSafelyAddObjectsFromArray:v4];

  v5 = [(HighlightItemCellAccessibility *)self _axPillView];
  if ([v5 _accessibilityViewIsVisible])
  {
    [v3 axSafelyAddObject:v5];
  }

  return v3;
}

- (id)_axPillView
{
  v3 = MEMORY[0x29C2E7850](@"SLHighlightPillView", a2);

  return [(HighlightItemCellAccessibility *)self _accessibilityDescendantOfType:v3];
}

@end