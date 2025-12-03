@interface COSFeatureHighlightRowViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
@end

@implementation COSFeatureHighlightRowViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"COSFeatureHighlightRowView" hasInstanceMethod:@"title" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"COSFeatureHighlightRowView" hasInstanceMethod:@"body" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v3 = [(COSFeatureHighlightRowViewAccessibility *)self safeValueForKey:@"title"];
  accessibilityLabel = [v3 accessibilityLabel];
  v5 = [(COSFeatureHighlightRowViewAccessibility *)self safeValueForKey:@"body"];
  accessibilityLabel2 = [v5 accessibilityLabel];
  v6 = __UIAXStringForVariables();

  return v6;
}

@end