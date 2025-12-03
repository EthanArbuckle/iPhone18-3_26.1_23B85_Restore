@interface BYBuddySafetyAndHandlingViewControllerProviderAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)makeViewController;
@end

@implementation BYBuddySafetyAndHandlingViewControllerProviderAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"BYBuddySafetyAndHandlingViewControllerProvider" hasSwiftField:@"localizationProvider" withSwiftType:"BYBuddySafetyAndHandlingLocalizationProvider"];
  [validationsCopy validateProtocol:@"BYBuddySafetyAndHandlingLocalizationProvider" hasMethod:@"languageCode" isInstanceMethod:1 isRequired:1];
  [validationsCopy validateClass:@"OBHeaderView" hasInstanceMethod:@"headerLabel" withFullSignature:{"@", 0}];
}

- (id)makeViewController
{
  v9.receiver = self;
  v9.super_class = BYBuddySafetyAndHandlingViewControllerProviderAccessibility;
  makeViewController = [(BYBuddySafetyAndHandlingViewControllerProviderAccessibility *)&v9 makeViewController];
  v4 = [(BYBuddySafetyAndHandlingViewControllerProviderAccessibility *)self safeSwiftValueForKey:@"localizationProvider"];
  v5 = [v4 safeStringForKey:@"languageCode"];
  headerView = [makeViewController headerView];
  v7 = [headerView safeValueForKey:@"headerLabel"];
  [v7 setAccessibilityLanguage:v5];

  return makeViewController;
}

@end