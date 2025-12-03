@interface MobileCalUIScrollViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_accessibilityDrawsFocusRingWhenChildrenFocused;
- (UIEdgeInsets)_accessibilityVisibleContentInset;
- (id)_accessibilityFirstContainedElementForTechnology:(id)technology honoringGroups:(BOOL)groups shouldAlwaysScroll:(BOOL)scroll;
@end

@implementation MobileCalUIScrollViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"InfiniteScrollViewController"];
  [validationsCopy validateClass:@"InfiniteScrollViewController" hasInstanceMethod:@"firstViewOnScreen" withFullSignature:{"@", 0}];
}

- (UIEdgeInsets)_accessibilityVisibleContentInset
{
  v23.receiver = self;
  v23.super_class = MobileCalUIScrollViewAccessibility;
  [(MobileCalUIScrollViewAccessibility *)&v23 _accessibilityVisibleContentInset];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  accessibilityIdentifier = [(MobileCalUIScrollViewAccessibility *)self accessibilityIdentifier];
  v12 = [accessibilityIdentifier isEqualToString:@"_AXWeekViewScrollViewIdentifier"];

  if (v12)
  {
    v13 = [(MobileCalUIScrollViewAccessibility *)self safeValueForKey:@"superview"];
    NSClassFromString(&cfstr_Weekview.isa);
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v22 = v13;
      _AXAssert();
    }

    v14 = [v13 safeValueForKey:{@"_allDayView", v22}];
    v15 = [v14 safeValueForKey:@"frame"];
    [v15 CGRectValue];
    MaxY = CGRectGetMaxY(v24);
    v17 = [(MobileCalUIScrollViewAccessibility *)self safeValueForKey:@"frame"];
    [v17 CGRectValue];
    v4 = MaxY - CGRectGetMinY(v25);

    v10 = 0.0;
    v8 = 0.0;
    v6 = 0.0;
  }

  v18 = v4;
  v19 = v6;
  v20 = v8;
  v21 = v10;
  result.right = v21;
  result.bottom = v20;
  result.left = v19;
  result.top = v18;
  return result;
}

- (BOOL)_accessibilityDrawsFocusRingWhenChildrenFocused
{
  _accessibilityIsFKARunningForFocusItem = [(MobileCalUIScrollViewAccessibility *)self _accessibilityIsFKARunningForFocusItem];
  if (_accessibilityIsFKARunningForFocusItem)
  {
    accessibilityIdentification = [(MobileCalUIScrollViewAccessibility *)self accessibilityIdentification];
    v5 = [accessibilityIdentification isEqualToString:@"_AXWeekScrollViewIdentifier"];

    LOBYTE(_accessibilityIsFKARunningForFocusItem) = v5;
  }

  return _accessibilityIsFKARunningForFocusItem;
}

- (id)_accessibilityFirstContainedElementForTechnology:(id)technology honoringGroups:(BOOL)groups shouldAlwaysScroll:(BOOL)scroll
{
  scrollCopy = scroll;
  groupsCopy = groups;
  technologyCopy = technology;
  v9 = [(MobileCalUIScrollViewAccessibility *)self safeValueForKey:@"delegate"];
  NSClassFromString(&cfstr_Infinitescroll_0.isa);
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v11 = [(MobileCalUIScrollViewAccessibility *)self safeValueForKeyPath:@"delegate.firstViewOnScreen"];
    v12 = [v11 _accessibilityFirstContainedElementForTechnology:technologyCopy honoringGroups:groupsCopy shouldAlwaysScroll:scrollCopy];
  }

  else
  {
    v14.receiver = self;
    v14.super_class = MobileCalUIScrollViewAccessibility;
    v12 = [(MobileCalUIScrollViewAccessibility *)&v14 _accessibilityFirstContainedElementForTechnology:technologyCopy honoringGroups:groupsCopy shouldAlwaysScroll:scrollCopy];
  }

  return v12;
}

@end