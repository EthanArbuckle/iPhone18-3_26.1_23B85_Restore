@interface VKCVisualSearchResultItemViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
- (id)automationElements;
@end

@implementation VKCVisualSearchResultItemViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"VKCVisualSearchResultItemView" hasInstanceMethod:@"_symbolNameForItem" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"VKCVisualSearchResultItemView" hasInstanceMethod:@"visualSearchResultItem" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"VKCVisualSearchResultItem" hasInstanceMethod:@"resultItem" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MADVIVisualSearchGatingResultItem" hasInstanceMethod:@"domains" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MADVIVisualSearchGatingDomainInfo" hasInstanceMethod:@"domain" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"VKCVisualSearchResultItemView" hasInstanceMethod:@"lookupButton" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v3 = [(VKCVisualSearchResultItemViewAccessibility *)self safeStringForKey:@"_symbolNameForItem"];
  v4 = [(VKCVisualSearchResultItemViewAccessibility *)self safeValueForKeyPath:@"visualSearchResultItem.resultItem"];
  v5 = [v4 safeArrayForKey:@"domains"];

  if ([v5 count])
  {
    firstObject = [v5 firstObject];
    v7 = [firstObject safeStringForKey:@"domain"];
  }

  else
  {
    v7 = 0;
  }

  v8 = accessibilityLookupButtonName(v3, v7);

  return v8;
}

- (id)automationElements
{
  array = [MEMORY[0x29EDB8DE8] array];
  v4 = [(VKCVisualSearchResultItemViewAccessibility *)self safeValueForKey:@"lookupButton"];
  v5 = __UIAccessibilitySafeClass();
  isHidden = [v5 isHidden];

  if ((isHidden & 1) == 0)
  {
    [array axSafelyAddObject:v4];
  }

  return array;
}

@end