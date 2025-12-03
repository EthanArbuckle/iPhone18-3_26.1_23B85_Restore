@interface UIScrollViewAccessibility_EventKit_UIKit
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_accessibilityScrollingEnabled;
- (CGPoint)_pageDecelerationTarget;
- (id)_accessibilityScrollStatus;
@end

@implementation UIScrollViewAccessibility_EventKit_UIKit

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"EKDayGridView"];
  [validationsCopy validateClass:@"EKDayGridView" hasInstanceMethod:@"hourHeight" withFullSignature:{"d", 0}];
  [validationsCopy validateClass:@"EKDayGridView" hasInstanceMethod:@"topPadding" withFullSignature:{"d", 0}];
  [validationsCopy validateClass:@"UIScrollView" hasInstanceMethod:@"_pageDecelerationTarget" withFullSignature:{"{CGPoint=dd}", 0}];
  [validationsCopy validateClass:@"UIScrollView" hasInstanceMethod:@"_stopScrollDecelerationNotify:" withFullSignature:{"v", "B", 0}];
}

- (id)_accessibilityScrollStatus
{
  if (-[UIScrollViewAccessibility_EventKit_UIKit accessibilityIsDayGridScroller](self, "accessibilityIsDayGridScroller") || (-[UIScrollViewAccessibility_EventKit_UIKit accessibilityIdentifier](self, "accessibilityIdentifier"), v3 = objc_claimAutoreleasedReturnValue(), v4 = [v3 isEqualToString:@"_AXWeekViewScrollViewIdentifier"], v3, v4))
  {
    v5 = [(UIScrollViewAccessibility_EventKit_UIKit *)self _accessibilityDescendantOfType:NSClassFromString(&cfstr_Ekdaygridview.isa)];
    [(UIScrollViewAccessibility_EventKit_UIKit *)self bounds];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    [(UIScrollViewAccessibility_EventKit_UIKit *)self _accessibilityVisibleContentInset];
    v15 = v7 + v14;
    v17 = v9 + v16;
    v19 = v11 - (v14 + v18);
    v21 = v13 - (v16 + v20);
    v22 = [v5 safeValueForKey:@"hourHeight"];
    [v22 doubleValue];
    v24 = v23;

    v25 = [v5 safeValueForKey:@"topPadding"];
    [v25 doubleValue];
    v27 = v26;

    v28 = objc_alloc_init(MEMORY[0x29EDB8DB8]);
    [v28 setYear:2013];
    [v28 setMonth:6];
    [v28 setDay:30];
    currentCalendar = [MEMORY[0x29EDB8D98] currentCalendar];
    [v28 setHour:llround((v17 - v27) / v24)];
    v30 = [currentCalendar dateFromComponents:v28];
    v40.origin.x = v15;
    v40.origin.y = v17;
    v40.size.width = v19;
    v40.size.height = v21;
    [v28 setHour:llround((CGRectGetMaxY(v40) - v27) / v24)];
    v31 = [currentCalendar dateFromComponents:v28];
    v32 = MEMORY[0x29EDBA0F8];
    v33 = accessibilityLocalizedString(@"day.grid.scroll.status");
    v34 = AXDateStringForFormat();
    v35 = AXDateStringForFormat();
    _accessibilityScrollStatus = [v32 stringWithFormat:v33, v34, v35];
  }

  else
  {
    v38.receiver = self;
    v38.super_class = UIScrollViewAccessibility_EventKit_UIKit;
    _accessibilityScrollStatus = [(UIScrollViewAccessibility_EventKit_UIKit *)&v38 _accessibilityScrollStatus];
  }

  return _accessibilityScrollStatus;
}

- (BOOL)_accessibilityScrollingEnabled
{
  if ([(UIScrollViewAccessibility_EventKit_UIKit *)self accessibilityIsPreviewDayGridScroller])
  {
    if (!AXDoesRequestingClientDeserveAutomation() && ![(UIScrollViewAccessibility_EventKit_UIKit *)self accessibilityIsDayGridScroller])
    {
      _AXAssert();
    }

    return 0;
  }

  else
  {
    v4.receiver = self;
    v4.super_class = UIScrollViewAccessibility_EventKit_UIKit;
    return [(UIScrollViewAccessibility_EventKit_UIKit *)&v4 _accessibilityScrollingEnabled];
  }
}

- (CGPoint)_pageDecelerationTarget
{
  if ([(UIScrollViewAccessibility_EventKit_UIKit *)self _accessibilityBoolValueForKey:@"_AXEKDayViewControllerShouldFakePageDecelerationTarget"])
  {
    [(UIScrollViewAccessibility_EventKit_UIKit *)self bounds];
    Width = CGRectGetWidth(v7);
    v4 = 0.0;
  }

  else
  {
    v5.receiver = self;
    v5.super_class = UIScrollViewAccessibility_EventKit_UIKit;
    [(UIScrollViewAccessibility_EventKit_UIKit *)&v5 _pageDecelerationTarget];
  }

  result.y = v4;
  result.x = Width;
  return result;
}

@end