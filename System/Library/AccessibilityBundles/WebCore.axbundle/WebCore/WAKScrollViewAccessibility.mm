@interface WAKScrollViewAccessibility
- (id)accessibilityContainer;
- (id)accessibilityElementAtIndex:(int64_t)a3;
@end

@implementation WAKScrollViewAccessibility

- (id)accessibilityElementAtIndex:(int64_t)a3
{
  v3 = [(WAKScrollViewAccessibility *)self safeValueForKey:@"contentView"];
  v4 = [v3 safeValueForKey:@"documentView"];
  v5 = [v4 safeValueForKey:@"accessibilityRootElement"];

  return v5;
}

- (id)accessibilityContainer
{
  v2 = [(WAKScrollViewAccessibility *)self safeValueForKey:@"superview"];
  v3 = [v2 safeValueForKey:@"superview"];
  NSClassFromString(&cfstr_Webhtmlview.isa);
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v7 = @"******** AX: ScrollView cannot find its WebHTMLView";
    LOBYTE(v6) = 1;
    _AXLogWithFacility();
  }

  v4 = [v3 _accessibilityParentForSubview:{v2, v6, v7}];

  return v4;
}

@end