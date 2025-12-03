@interface VKCVisualSearchCornerViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_axIsNotObscuredItemsContainer;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (int64_t)accessibilityContainerType;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_showCornerLookupButtonsForResults:(id)results;
@end

@implementation VKCVisualSearchCornerViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"VKCVisualSearchCornerView" hasInstanceMethod:@"_showCornerLookupButtonsForResults:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"VKCVisualSearchCornerView" hasInstanceMethod:@"cornerButtons" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"VKCVisualSearchCornerView" hasInstanceMethod:@"analysis" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"VKImageAnalysis" hasInstanceMethod:@"imageAnalysisResult" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"VKCImageAnalysisResult" hasInstanceMethod:@"visualSearchResult" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"VKCVisualSearchResult" hasInstanceMethod:@"resultItems" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"VKCVisualSearchResultItem" hasInstanceMethod:@"shouldPlaceInCorner" withFullSignature:{"B", 0}];
}

- (int64_t)accessibilityContainerType
{
  if ([(VKCVisualSearchCornerViewAccessibility *)self _axIsNotObscuredItemsContainer])
  {
    return 0;
  }

  else
  {
    return 4;
  }
}

- (id)accessibilityLabel
{
  if ([(VKCVisualSearchCornerViewAccessibility *)self _axIsNotObscuredItemsContainer])
  {
    v2 = 0;
  }

  else
  {
    v2 = accessibilityLocalizedString(@"out.of.focus.items");
  }

  return v2;
}

- (id)accessibilityValue
{
  v3 = MEMORY[0x29EDBA0F8];
  v4 = accessibilityLocalizedString(@"items.count");
  _axVisualSearchCornerButtons = [(VKCVisualSearchCornerViewAccessibility *)self _axVisualSearchCornerButtons];
  v6 = [v3 localizedStringWithFormat:v4, objc_msgSend(_axVisualSearchCornerButtons, "count")];

  return v6;
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v12.receiver = self;
  v12.super_class = VKCVisualSearchCornerViewAccessibility;
  [(VKCVisualSearchCornerViewAccessibility *)&v12 _accessibilityLoadAccessibilityInformation];
  _axVisualSearchCornerButtons = [(VKCVisualSearchCornerViewAccessibility *)self _axVisualSearchCornerButtons];
  v4 = [_axVisualSearchCornerButtons count];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    do
    {
      objc_opt_class();
      v7 = [_axVisualSearchCornerButtons objectAtIndexedSubscript:v6];
      v8 = __UIAccessibilityCastAsSafeCategory();

      v9 = MEMORY[0x29EDBA0F8];
      v10 = accessibilityLocalizedString(@"lookup.button.position");
      v11 = [v9 localizedStringWithFormat:v10, ++v6, v5];
      [v8 _axSetPositionInButtonsList:v11];
    }

    while (v5 != v6);
  }
}

- (void)_showCornerLookupButtonsForResults:(id)results
{
  v4.receiver = self;
  v4.super_class = VKCVisualSearchCornerViewAccessibility;
  [(VKCVisualSearchCornerViewAccessibility *)&v4 _showCornerLookupButtonsForResults:results];
  [(VKCVisualSearchCornerViewAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

- (BOOL)_axIsNotObscuredItemsContainer
{
  v2 = [(VKCVisualSearchCornerViewAccessibility *)self safeValueForKeyPath:@"analysis.imageAnalysisResult.visualSearchResult"];
  v3 = [v2 safeArrayForKey:@"resultItems"];

  if ([v3 count] == 1)
  {
    v4 = [v3 objectAtIndexedSubscript:0];
    v5 = [v4 safeBoolForKey:@"shouldPlaceInCorner"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end