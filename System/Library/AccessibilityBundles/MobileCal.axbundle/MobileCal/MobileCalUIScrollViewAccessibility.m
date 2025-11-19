@interface MobileCalUIScrollViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)_accessibilityDrawsFocusRingWhenChildrenFocused;
- (UIEdgeInsets)_accessibilityVisibleContentInset;
- (id)_accessibilityFirstContainedElementForTechnology:(id)a3 honoringGroups:(BOOL)a4 shouldAlwaysScroll:(BOOL)a5;
@end

@implementation MobileCalUIScrollViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"InfiniteScrollViewController"];
  [v3 validateClass:@"InfiniteScrollViewController" hasInstanceMethod:@"firstViewOnScreen" withFullSignature:{"@", 0}];
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
  v11 = [(MobileCalUIScrollViewAccessibility *)self accessibilityIdentifier];
  v12 = [v11 isEqualToString:@"_AXWeekViewScrollViewIdentifier"];

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
  v3 = [(MobileCalUIScrollViewAccessibility *)self _accessibilityIsFKARunningForFocusItem];
  if (v3)
  {
    v4 = [(MobileCalUIScrollViewAccessibility *)self accessibilityIdentification];
    v5 = [v4 isEqualToString:@"_AXWeekScrollViewIdentifier"];

    LOBYTE(v3) = v5;
  }

  return v3;
}

- (id)_accessibilityFirstContainedElementForTechnology:(id)a3 honoringGroups:(BOOL)a4 shouldAlwaysScroll:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v8 = a3;
  v9 = [(MobileCalUIScrollViewAccessibility *)self safeValueForKey:@"delegate"];
  NSClassFromString(&cfstr_Infinitescroll_0.isa);
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v11 = [(MobileCalUIScrollViewAccessibility *)self safeValueForKeyPath:@"delegate.firstViewOnScreen"];
    v12 = [v11 _accessibilityFirstContainedElementForTechnology:v8 honoringGroups:v6 shouldAlwaysScroll:v5];
  }

  else
  {
    v14.receiver = self;
    v14.super_class = MobileCalUIScrollViewAccessibility;
    v12 = [(MobileCalUIScrollViewAccessibility *)&v14 _accessibilityFirstContainedElementForTechnology:v8 honoringGroups:v6 shouldAlwaysScroll:v5];
  }

  return v12;
}

@end