@interface VideosUI_QueryDescriptionBarAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
@end

@implementation VideosUI_QueryDescriptionBarAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"VideosUI.QueryDescriptionBar" hasSwiftField:@"queryDescriptionBannerText" withSwiftType:"Optional<UIView>"];
  [v3 validateClass:@"VideosUI.QueryDescriptionBar" hasSwiftField:@"additionalInformationView" withSwiftType:"Optional<UIView>"];
  [v3 validateClass:@"VideosUI.QueryDescriptionBar" hasInstanceMethod:@"singlePressWithGesture:" withFullSignature:{"v", "@", 0}];
}

- (id)accessibilityLabel
{
  objc_opt_class();
  v3 = [(VideosUI_QueryDescriptionBarAccessibility *)self safeSwiftValueForKey:@"queryDescriptionBannerText"];
  v4 = __UIAccessibilityCastAsClass();

  objc_opt_class();
  v5 = [(VideosUI_QueryDescriptionBarAccessibility *)self safeSwiftValueForKey:@"additionalInformationView"];
  v6 = __UIAccessibilityCastAsClass();

  v7 = [v4 accessibilityLabel];
  v10 = [v6 accessibilityLabel];
  v8 = __UIAXStringForVariables();

  return v8;
}

@end