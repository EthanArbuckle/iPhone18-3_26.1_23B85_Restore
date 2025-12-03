@interface VideosUI_QueryDescriptionBarAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
@end

@implementation VideosUI_QueryDescriptionBarAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"VideosUI.QueryDescriptionBar" hasSwiftField:@"queryDescriptionBannerText" withSwiftType:"Optional<UIView>"];
  [validationsCopy validateClass:@"VideosUI.QueryDescriptionBar" hasSwiftField:@"additionalInformationView" withSwiftType:"Optional<UIView>"];
  [validationsCopy validateClass:@"VideosUI.QueryDescriptionBar" hasInstanceMethod:@"singlePressWithGesture:" withFullSignature:{"v", "@", 0}];
}

- (id)accessibilityLabel
{
  objc_opt_class();
  v3 = [(VideosUI_QueryDescriptionBarAccessibility *)self safeSwiftValueForKey:@"queryDescriptionBannerText"];
  v4 = __UIAccessibilityCastAsClass();

  objc_opt_class();
  v5 = [(VideosUI_QueryDescriptionBarAccessibility *)self safeSwiftValueForKey:@"additionalInformationView"];
  v6 = __UIAccessibilityCastAsClass();

  accessibilityLabel = [v4 accessibilityLabel];
  accessibilityLabel2 = [v6 accessibilityLabel];
  v8 = __UIAXStringForVariables();

  return v8;
}

@end