@interface MKPlaceCardHeaderViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_setupDatas;
- (void)_updateDirectionsButton;
@end

@implementation MKPlaceCardHeaderViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"MKPlaceCardHeaderViewController" hasInstanceMethod:@"_setupDatas" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"MKPlaceCardHeaderViewController" hasInstanceVariable:@"_placeItem" withType:"<_MKPlaceItem>"];
  [validationsCopy validateClass:@"MKPlaceCardHeaderViewController" hasInstanceVariable:@"_priceToken" withType:"_MKTokenAttributedString"];
  [validationsCopy validateProtocol:@"_MKPlaceItem" hasRequiredInstanceMethod:@"mapItem"];
  [validationsCopy validateClass:@"_MKTokenAttributedString" hasInstanceMethod:@"string" withFullSignature:{"@", 0}];
}

- (void)_updateDirectionsButton
{
  v8.receiver = self;
  v8.super_class = MKPlaceCardHeaderViewControllerAccessibility;
  [(MKPlaceCardHeaderViewControllerAccessibility *)&v8 _updateDirectionsButton];
  objc_opt_class();
  v3 = [(MKPlaceCardHeaderViewControllerAccessibility *)self safeValueForKey:@"_primaryButton"];
  v4 = __UIAccessibilityCastAsClass();

  currentAttributedTitle = [v4 currentAttributedTitle];
  string = [currentAttributedTitle string];
  v7 = [string stringByReplacingOccurrencesOfString:@"\n" withString:{@", "}];
  [v4 setAccessibilityLabel:v7];
}

- (void)_setupDatas
{
  v7.receiver = self;
  v7.super_class = MKPlaceCardHeaderViewControllerAccessibility;
  [(MKPlaceCardHeaderViewControllerAccessibility *)&v7 _setupDatas];
  v3 = [(MKPlaceCardHeaderViewControllerAccessibility *)self safeValueForKey:@"_priceToken"];
  v4 = __UIAccessibilitySafeClass();

  v5 = [v4 safeValueForKey:@"string"];
  v6 = UIAXPriceRangeDescription();
  [v5 setAccessibilityLabel:v6];
}

@end