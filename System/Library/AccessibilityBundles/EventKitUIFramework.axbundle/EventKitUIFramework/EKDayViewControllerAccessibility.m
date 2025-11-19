@interface EKDayViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)accessibilityScroll:(int64_t)a3;
- (id)_axDayString;
- (id)accessibilityScrollStatusForScrollView:(id)a3;
- (void)_relayoutDaysDuringScrolling;
- (void)_scrollViewDidEndDecelerating:(id)a3;
@end

@implementation EKDayViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"EKDayViewController" hasInstanceVariable:@"_horizontalScrollingView" withType:"UIScrollView"];
  [v3 validateClass:@"EKDayViewController" hasInstanceVariable:@"_previousDayWithGutter" withType:"EKDayViewWithGutters"];
  [v3 validateClass:@"EKDayViewController" hasInstanceVariable:@"_nextDayWithGutter" withType:"EKDayViewWithGutters"];
  [v3 validateClass:@"EKDayViewWithGutters" isKindOfClass:@"UIView"];
  [v3 validateClass:@"EKDayViewController" hasInstanceMethod:@"_relayoutDaysDuringScrolling" withFullSignature:{"v", 0}];
  [v3 validateClass:@"EKDayViewController" hasInstanceVariable:@"_currentDay" withType:"EKDayView"];
  [v3 validateClass:@"EKDayViewController" hasInstanceMethod:@"_scrollViewDidEndDecelerating:" withFullSignature:{"v", "@", 0}];
}

- (id)_axDayString
{
  v2 = [(EKDayViewControllerAccessibility *)self safeValueForKey:@"_currentDay"];
  v3 = [v2 safeValueForKey:@"_displayDate"];
  if (v3)
  {
    v4 = [NSClassFromString(&cfstr_Nscalendar.isa) currentCalendar];
    v5 = [v4 dateFromComponents:v3];

    v6 = _AXGetYearlessStringForDay(v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)accessibilityScroll:(int64_t)a3
{
  v5 = [(EKDayViewControllerAccessibility *)self safeValueForKey:@"_horizontalScrollingView"];
  v6 = [(EKDayViewControllerAccessibility *)self safeValueForKey:@"_previousDayWithGutter"];
  v7 = [(EKDayViewControllerAccessibility *)self safeValueForKey:@"_nextDayWithGutter"];
  v8 = v7;
  if (a3 == 2)
  {
    v13 = [v7 superview];

    v10 = v8;
    if (v13)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  if (a3 == 1)
  {
    v9 = [v6 superview];

    v10 = v6;
    if (v9)
    {
LABEL_5:
      [v5 _accessibilitySetBoolValue:1 forKey:@"_AXEKDayViewControllerShouldFakePageDecelerationTarget"];
      goto LABEL_6;
    }

LABEL_4:
    [v5 addSubview:v10];
    goto LABEL_5;
  }

LABEL_6:
  v14.receiver = self;
  v14.super_class = EKDayViewControllerAccessibility;
  v11 = [(EKDayViewControllerAccessibility *)&v14 accessibilityScroll:a3];

  return v11;
}

- (void)_scrollViewDidEndDecelerating:(id)a3
{
  v5.receiver = self;
  v5.super_class = EKDayViewControllerAccessibility;
  [(EKDayViewControllerAccessibility *)&v5 _scrollViewDidEndDecelerating:a3];
  v4 = [(EKDayViewControllerAccessibility *)self safeValueForKey:@"_horizontalScrollingView"];
  [v4 _accessibilityRemoveValueForKey:@"_AXEKDayViewControllerShouldFakePageDecelerationTarget"];
}

- (void)_relayoutDaysDuringScrolling
{
  v3 = [(EKDayViewControllerAccessibility *)self safeValueForKey:@"_currentDay"];
  v7.receiver = self;
  v7.super_class = EKDayViewControllerAccessibility;
  [(EKDayViewControllerAccessibility *)&v7 _relayoutDaysDuringScrolling];
  v4 = [(EKDayViewControllerAccessibility *)self safeValueForKey:@"_currentDay"];
  MEMORY[0x29C2D5250](*MEMORY[0x29EDC7EF0]);
  if (v3 != v4)
  {
    v6 = [(EKDayViewControllerAccessibility *)self _axDayString];
    v5 = v6;
    AXPerformBlockOnMainThreadAfterDelay();
  }
}

uint64_t __64__EKDayViewControllerAccessibility__relayoutDaysDuringScrolling__block_invoke(uint64_t a1)
{
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7EA8], *(a1 + 32));

  return AXPerformBlockOnMainThreadAfterDelay();
}

- (id)accessibilityScrollStatusForScrollView:(id)a3
{
  v3 = [(EKDayViewControllerAccessibility *)self safeValueForKey:@"_currentDay"];
  v4 = [v3 safeValueForKey:@"_displayDate"];
  if (v4)
  {
    v5 = [MEMORY[0x29EDB8D98] currentCalendar];
    v6 = [v5 dateFromComponents:v4];

    v7 = _AXGetYearlessStringForDay(v6);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end