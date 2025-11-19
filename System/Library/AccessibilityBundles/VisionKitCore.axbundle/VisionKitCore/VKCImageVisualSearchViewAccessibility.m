@interface VKCImageVisualSearchViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)_axIsItemsInFocusContainer;
- (id)accessibilityValue;
- (int64_t)accessibilityContainerType;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation VKCImageVisualSearchViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"VKCImageVisualSearchView" hasInstanceMethod:@"resultViews" withFullSignature:{"@", 0}];
  [v3 validateClass:@"VKCImageVisualSearchView" hasInstanceMethod:@"updateUIForVisualSearchResultsClearExistingResults:includeNotVisibleItems:" withFullSignature:{"v", "B", "B", 0}];
}

- (int64_t)accessibilityContainerType
{
  if ([(VKCImageVisualSearchViewAccessibility *)self _axIsItemsInFocusContainer])
  {
    return 4;
  }

  else
  {
    return 0;
  }
}

- (id)accessibilityValue
{
  v3 = MEMORY[0x29EDBA0F8];
  v4 = accessibilityLocalizedString(@"items.count");
  v5 = [(VKCImageVisualSearchViewAccessibility *)self _axVisualSearchResultViews];
  v6 = [v3 localizedStringWithFormat:v4, objc_msgSend(v5, "count")];

  return v6;
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v12.receiver = self;
  v12.super_class = VKCImageVisualSearchViewAccessibility;
  [(VKCImageVisualSearchViewAccessibility *)&v12 _accessibilityLoadAccessibilityInformation];
  v3 = [(VKCImageVisualSearchViewAccessibility *)self _axVisualSearchResultViews];
  v4 = [v3 count];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    do
    {
      objc_opt_class();
      v7 = [v3 objectAtIndexedSubscript:v6];
      v8 = __UIAccessibilityCastAsSafeCategory();

      v9 = MEMORY[0x29EDBA0F8];
      v10 = accessibilityLocalizedString(@"lookup.button.position");
      v11 = [v9 localizedStringWithFormat:v10, ++v6, v5];
      [v8 _axSetPositionInButtonsList:v11];
    }

    while (v5 != v6);
  }
}

- (BOOL)_axIsItemsInFocusContainer
{
  v2 = [(VKCImageVisualSearchViewAccessibility *)self _axVisualSearchResultViews];
  v3 = [v2 count] != 0;

  return v3;
}

@end