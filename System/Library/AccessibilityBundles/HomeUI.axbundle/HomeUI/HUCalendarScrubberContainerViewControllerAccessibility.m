@interface HUCalendarScrubberContainerViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)viewDidLoad;
@end

@implementation HUCalendarScrubberContainerViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"HUCalendarScrubberContainerViewController" isKindOfClass:@"UIViewController"];
  [v3 validateClass:@"HUCalendarScrubberContainerViewController" hasInstanceMethod:@"prevWeekButton" withFullSignature:{"@", 0}];
  [v3 validateClass:@"HUCalendarScrubberContainerViewController" hasInstanceMethod:@"nextWeekButton" withFullSignature:{"@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v7.receiver = self;
  v7.super_class = HUCalendarScrubberContainerViewControllerAccessibility;
  [(HUCalendarScrubberContainerViewControllerAccessibility *)&v7 _accessibilityLoadAccessibilityInformation];
  v3 = [(HUCalendarScrubberContainerViewControllerAccessibility *)self safeValueForKey:@"prevWeekButton"];
  v4 = accessibilityHomeUILocalizedString(@"camera.calendar.previous.week");
  [v3 setAccessibilityLabel:v4];

  v5 = [(HUCalendarScrubberContainerViewControllerAccessibility *)self safeValueForKey:@"nextWeekButton"];
  v6 = accessibilityHomeUILocalizedString(@"camera.calendar.next.week");
  [v5 setAccessibilityLabel:v6];
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = HUCalendarScrubberContainerViewControllerAccessibility;
  [(HUCalendarScrubberContainerViewControllerAccessibility *)&v3 viewDidLoad];
  [(HUCalendarScrubberContainerViewControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end