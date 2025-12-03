@interface MainWindowControlHeaderViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (MainWindowControlHeaderViewAccessibility)initWithFrame:(CGRect)frame;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_accessibilitySetupBadgedButtonsLabelsValues;
- (void)updateToolbarItems;
@end

@implementation MainWindowControlHeaderViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"MainWindowControlHeaderView" hasInstanceVariable:@"_calendarBarButton" withType:"UIBarButtonItem"];
  [validationsCopy validateClass:@"MainWindowControlHeaderView" hasInstanceVariable:@"_newEventBarButton" withType:"UIBarButtonItem"];
  [validationsCopy validateClass:@"MainWindowControlHeaderView" hasInstanceVariable:@"_inboxBarButton" withType:"UIBarButtonItem"];
  [validationsCopy validateClass:@"MainWindowControlHeaderView" hasInstanceVariable:@"_badgedCalendarBarButton" withType:"UIBarButtonItem"];
  [validationsCopy validateClass:@"MainWindowControlHeaderView" hasInstanceVariable:@"_badgedInboxBarButton" withType:"UIBarButtonItem"];
  [validationsCopy validateClass:@"MainWindowControlHeaderView" hasInstanceVariable:@"_inboxCount" withType:"Q"];
  [validationsCopy validateClass:@"MainWindowControlHeaderView" hasInstanceMethod:@"initWithFrame:" withFullSignature:{"@", "{CGRect={CGPoint=dd}{CGSize=dd}}", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v9.receiver = self;
  v9.super_class = MainWindowControlHeaderViewAccessibility;
  [(MainWindowControlHeaderViewAccessibility *)&v9 _accessibilityLoadAccessibilityInformation];
  v3 = [(MainWindowControlHeaderViewAccessibility *)self safeValueForKey:@"calendarBarButton"];
  v4 = accessibilityLocalizedString(@"navigationbar.calendar.button");
  [v3 setAccessibilityLabel:v4];

  v5 = [(MainWindowControlHeaderViewAccessibility *)self safeValueForKey:@"newEventBarButton"];
  v6 = accessibilityLocalizedString(@"navigationbar.plus.button");
  [v5 setAccessibilityLabel:v6];

  v7 = [(MainWindowControlHeaderViewAccessibility *)self safeValueForKey:@"inboxBarButton"];
  v8 = accessibilityLocalizedString(@"navigationbar.inbox.button");
  [v7 setAccessibilityLabel:v8];

  [(MainWindowControlHeaderViewAccessibility *)self _accessibilitySetupBadgedButtonsLabelsValues];
}

- (MainWindowControlHeaderViewAccessibility)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = MainWindowControlHeaderViewAccessibility;
  v3 = [(MainWindowControlHeaderViewAccessibility *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(MainWindowControlHeaderViewAccessibility *)v3 _accessibilityLoadAccessibilityInformation];
  }

  return v4;
}

- (void)updateToolbarItems
{
  v3.receiver = self;
  v3.super_class = MainWindowControlHeaderViewAccessibility;
  [(MainWindowControlHeaderViewAccessibility *)&v3 updateToolbarItems];
  [(MainWindowControlHeaderViewAccessibility *)self _accessibilitySetupBadgedButtonsLabelsValues];
}

- (void)_accessibilitySetupBadgedButtonsLabelsValues
{
  v11 = [(MainWindowControlHeaderViewAccessibility *)self safeValueForKey:@"_badgedCalendarBarButton"];
  v3 = accessibilityLocalizedString(@"navigationbar.calendar.button");
  [v11 setAccessibilityLabel:v3];

  v4 = accessibilityLocalizedString(@"navigationbar.calendar.badgedbutton.value");
  [v11 setAccessibilityValue:v4];

  v5 = [(MainWindowControlHeaderViewAccessibility *)self safeValueForKey:@"_badgedInboxBarButton"];
  v6 = accessibilityLocalizedString(@"navigationbar.inbox.button");
  [v5 setAccessibilityLabel:v6];

  v7 = [(MainWindowControlHeaderViewAccessibility *)self safeIntegerForKey:@"_inboxCount"];
  v8 = MEMORY[0x29EDBA0F8];
  v9 = accessibilityLocalizedString(@"items.format");
  v10 = [v8 localizedStringWithFormat:v9, v7];
  [v5 setAccessibilityValue:v10];
}

@end