@interface RecentlyPlayedTodayViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation RecentlyPlayedTodayViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"RecentlyPlayedTodayExtension.RecentlyPlayedTodayViewController" hasInstanceMethod:@"recentlyPlayedItems" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"RecentlyPlayedTodayExtension.RecentlyPlayedTodayViewController" isKindOfClass:@"UIViewController"];
  [validationsCopy validateClass:@"RecentlyPlayedTodayExtension.RecentlyPlayedTodayViewController" hasInstanceMethod:@"viewWillAppear:" withFullSignature:{"v", "B", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v8 = 0;
  objc_opt_class();
  v3 = [(RecentlyPlayedTodayViewControllerAccessibility *)self safeValueForKey:@"recentlyPlayedItems"];
  v4 = __UIAccessibilityCastAsClass();

  view = [(RecentlyPlayedTodayViewControllerAccessibility *)self view];
  if ([v4 count])
  {
    [view setIsAccessibilityElement:0];
  }

  else
  {
    [view setIsAccessibilityElement:1];
    v6 = accessibilityRecentlyPlayedTodayExtensionLocalizedString(@"no.recently.played.music");
    [view setAccessibilityLabel:v6];
  }

  v7.receiver = self;
  v7.super_class = RecentlyPlayedTodayViewControllerAccessibility;
  [(RecentlyPlayedTodayViewControllerAccessibility *)&v7 _accessibilityLoadAccessibilityInformation];
}

@end