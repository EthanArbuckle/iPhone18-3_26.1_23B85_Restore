@interface VKCCornerLookupButtonAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
@end

@implementation VKCCornerLookupButtonAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"VKCCornerLookupButton" hasInstanceMethod:@"_symbolNameForItem" withFullSignature:{"@", 0}];
  [v3 validateClass:@"VKCCornerLookupButton" hasInstanceMethod:@"resultItem" withFullSignature:{"@", 0}];
  [v3 validateClass:@"VKCVisualSearchResultItem" hasInstanceMethod:@"domainInfo" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MADVIVisualSearchGatingDomainInfo" hasInstanceMethod:@"domain" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v3 = [(VKCCornerLookupButtonAccessibility *)self safeStringForKey:@"_symbolNameForItem"];
  v4 = [(VKCCornerLookupButtonAccessibility *)self safeValueForKey:@"resultItem"];
  v5 = [v4 safeValueForKey:@"domainInfo"];

  v6 = [v5 safeStringForKey:@"domain"];
  v7 = accessibilityLookupButtonName(v3, v6);

  return v7;
}

@end