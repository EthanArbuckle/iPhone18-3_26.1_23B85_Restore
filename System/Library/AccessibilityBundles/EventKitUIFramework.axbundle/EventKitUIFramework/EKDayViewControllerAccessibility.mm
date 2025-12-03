@interface EKDayViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)accessibilityScroll:(int64_t)scroll;
- (id)_axDayString;
- (id)accessibilityScrollStatusForScrollView:(id)view;
- (void)_relayoutDaysDuringScrolling;
- (void)_scrollViewDidEndDecelerating:(id)decelerating;
@end

@implementation EKDayViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"EKDayViewController" hasInstanceVariable:@"_horizontalScrollingView" withType:"UIScrollView"];
  [validationsCopy validateClass:@"EKDayViewController" hasInstanceVariable:@"_previousDayWithGutter" withType:"EKDayViewWithGutters"];
  [validationsCopy validateClass:@"EKDayViewController" hasInstanceVariable:@"_nextDayWithGutter" withType:"EKDayViewWithGutters"];
  [validationsCopy validateClass:@"EKDayViewWithGutters" isKindOfClass:@"UIView"];
  [validationsCopy validateClass:@"EKDayViewController" hasInstanceMethod:@"_relayoutDaysDuringScrolling" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"EKDayViewController" hasInstanceVariable:@"_currentDay" withType:"EKDayView"];
  [validationsCopy validateClass:@"EKDayViewController" hasInstanceMethod:@"_scrollViewDidEndDecelerating:" withFullSignature:{"v", "@", 0}];
}

- (id)_axDayString
{
  v2 = [(EKDayViewControllerAccessibility *)self safeValueForKey:@"_currentDay"];
  v3 = [v2 safeValueForKey:@"_displayDate"];
  if (v3)
  {
    currentCalendar = [NSClassFromString(&cfstr_Nscalendar.isa) currentCalendar];
    v5 = [currentCalendar dateFromComponents:v3];

    v6 = _AXGetYearlessStringForDay(v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)accessibilityScroll:(int64_t)scroll
{
  v5 = [(EKDayViewControllerAccessibility *)self safeValueForKey:@"_horizontalScrollingView"];
  v6 = [(EKDayViewControllerAccessibility *)self safeValueForKey:@"_previousDayWithGutter"];
  v7 = [(EKDayViewControllerAccessibility *)self safeValueForKey:@"_nextDayWithGutter"];
  v8 = v7;
  if (scroll == 2)
  {
    superview = [v7 superview];

    v10 = v8;
    if (superview)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  if (scroll == 1)
  {
    superview2 = [v6 superview];

    v10 = v6;
    if (superview2)
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
  v11 = [(EKDayViewControllerAccessibility *)&v14 accessibilityScroll:scroll];

  return v11;
}

- (void)_scrollViewDidEndDecelerating:(id)decelerating
{
  v5.receiver = self;
  v5.super_class = EKDayViewControllerAccessibility;
  [(EKDayViewControllerAccessibility *)&v5 _scrollViewDidEndDecelerating:decelerating];
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
    _axDayString = [(EKDayViewControllerAccessibility *)self _axDayString];
    v5 = _axDayString;
    AXPerformBlockOnMainThreadAfterDelay();
  }
}

uint64_t __64__EKDayViewControllerAccessibility__relayoutDaysDuringScrolling__block_invoke(uint64_t a1)
{
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7EA8], *(a1 + 32));

  return AXPerformBlockOnMainThreadAfterDelay();
}

- (id)accessibilityScrollStatusForScrollView:(id)view
{
  v3 = [(EKDayViewControllerAccessibility *)self safeValueForKey:@"_currentDay"];
  v4 = [v3 safeValueForKey:@"_displayDate"];
  if (v4)
  {
    currentCalendar = [MEMORY[0x29EDB8D98] currentCalendar];
    v6 = [currentCalendar dateFromComponents:v4];

    v7 = _AXGetYearlessStringForDay(v6);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end