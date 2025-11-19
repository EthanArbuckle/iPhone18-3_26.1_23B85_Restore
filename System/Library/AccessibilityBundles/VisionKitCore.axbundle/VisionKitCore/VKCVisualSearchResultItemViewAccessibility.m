@interface VKCVisualSearchResultItemViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
- (id)automationElements;
@end

@implementation VKCVisualSearchResultItemViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"VKCVisualSearchResultItemView" hasInstanceMethod:@"_symbolNameForItem" withFullSignature:{"@", 0}];
  [v3 validateClass:@"VKCVisualSearchResultItemView" hasInstanceMethod:@"visualSearchResultItem" withFullSignature:{"@", 0}];
  [v3 validateClass:@"VKCVisualSearchResultItem" hasInstanceMethod:@"resultItem" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MADVIVisualSearchGatingResultItem" hasInstanceMethod:@"domains" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MADVIVisualSearchGatingDomainInfo" hasInstanceMethod:@"domain" withFullSignature:{"@", 0}];
  [v3 validateClass:@"VKCVisualSearchResultItemView" hasInstanceMethod:@"lookupButton" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v3 = [(VKCVisualSearchResultItemViewAccessibility *)self safeStringForKey:@"_symbolNameForItem"];
  v4 = [(VKCVisualSearchResultItemViewAccessibility *)self safeValueForKeyPath:@"visualSearchResultItem.resultItem"];
  v5 = [v4 safeArrayForKey:@"domains"];

  if ([v5 count])
  {
    v6 = [v5 firstObject];
    v7 = [v6 safeStringForKey:@"domain"];
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
  v3 = [MEMORY[0x29EDB8DE8] array];
  v4 = [(VKCVisualSearchResultItemViewAccessibility *)self safeValueForKey:@"lookupButton"];
  v5 = __UIAccessibilitySafeClass();
  v6 = [v5 isHidden];

  if ((v6 & 1) == 0)
  {
    [v3 axSafelyAddObject:v4];
  }

  return v3;
}

@end