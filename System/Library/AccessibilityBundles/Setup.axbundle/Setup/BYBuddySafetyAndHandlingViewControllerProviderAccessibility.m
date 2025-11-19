@interface BYBuddySafetyAndHandlingViewControllerProviderAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)makeViewController;
@end

@implementation BYBuddySafetyAndHandlingViewControllerProviderAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"BYBuddySafetyAndHandlingViewControllerProvider" hasSwiftField:@"localizationProvider" withSwiftType:"BYBuddySafetyAndHandlingLocalizationProvider"];
  [v3 validateProtocol:@"BYBuddySafetyAndHandlingLocalizationProvider" hasMethod:@"languageCode" isInstanceMethod:1 isRequired:1];
  [v3 validateClass:@"OBHeaderView" hasInstanceMethod:@"headerLabel" withFullSignature:{"@", 0}];
}

- (id)makeViewController
{
  v9.receiver = self;
  v9.super_class = BYBuddySafetyAndHandlingViewControllerProviderAccessibility;
  v3 = [(BYBuddySafetyAndHandlingViewControllerProviderAccessibility *)&v9 makeViewController];
  v4 = [(BYBuddySafetyAndHandlingViewControllerProviderAccessibility *)self safeSwiftValueForKey:@"localizationProvider"];
  v5 = [v4 safeStringForKey:@"languageCode"];
  v6 = [v3 headerView];
  v7 = [v6 safeValueForKey:@"headerLabel"];
  [v7 setAccessibilityLanguage:v5];

  return v3;
}

@end