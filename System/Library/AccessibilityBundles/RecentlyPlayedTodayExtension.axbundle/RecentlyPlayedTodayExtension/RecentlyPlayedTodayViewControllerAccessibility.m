@interface RecentlyPlayedTodayViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation RecentlyPlayedTodayViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"RecentlyPlayedTodayExtension.RecentlyPlayedTodayViewController" hasInstanceMethod:@"recentlyPlayedItems" withFullSignature:{"@", 0}];
  [v3 validateClass:@"RecentlyPlayedTodayExtension.RecentlyPlayedTodayViewController" isKindOfClass:@"UIViewController"];
  [v3 validateClass:@"RecentlyPlayedTodayExtension.RecentlyPlayedTodayViewController" hasInstanceMethod:@"viewWillAppear:" withFullSignature:{"v", "B", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v8 = 0;
  objc_opt_class();
  v3 = [(RecentlyPlayedTodayViewControllerAccessibility *)self safeValueForKey:@"recentlyPlayedItems"];
  v4 = __UIAccessibilityCastAsClass();

  v5 = [(RecentlyPlayedTodayViewControllerAccessibility *)self view];
  if ([v4 count])
  {
    [v5 setIsAccessibilityElement:0];
  }

  else
  {
    [v5 setIsAccessibilityElement:1];
    v6 = accessibilityRecentlyPlayedTodayExtensionLocalizedString(@"no.recently.played.music");
    [v5 setAccessibilityLabel:v6];
  }

  v7.receiver = self;
  v7.super_class = RecentlyPlayedTodayViewControllerAccessibility;
  [(RecentlyPlayedTodayViewControllerAccessibility *)&v7 _accessibilityLoadAccessibilityInformation];
}

@end