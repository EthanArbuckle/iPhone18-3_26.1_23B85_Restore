@interface COSFeatureHighlightRowViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
@end

@implementation COSFeatureHighlightRowViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"COSFeatureHighlightRowView" hasInstanceMethod:@"title" withFullSignature:{"@", 0}];
  [v3 validateClass:@"COSFeatureHighlightRowView" hasInstanceMethod:@"body" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v3 = [(COSFeatureHighlightRowViewAccessibility *)self safeValueForKey:@"title"];
  v4 = [v3 accessibilityLabel];
  v5 = [(COSFeatureHighlightRowViewAccessibility *)self safeValueForKey:@"body"];
  v8 = [v5 accessibilityLabel];
  v6 = __UIAXStringForVariables();

  return v6;
}

@end