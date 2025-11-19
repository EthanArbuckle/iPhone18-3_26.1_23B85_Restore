@interface SessionActionButtonAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
@end

@implementation SessionActionButtonAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"MediaControls.SessionActionButton" hasSwiftField:@"action" withSwiftType:"Optional<Action>"];
  [v3 validateSwiftStruct:@"MediaControl.RoutingItem[struct].Action"];
  [v3 validateSwiftStruct:@"MediaControl.RoutingItem[struct].Action" hasSwiftField:@"title" withSwiftType:"String"];
}

- (id)accessibilityLabel
{
  v3 = [(SessionActionButtonAccessibility *)self safeSwiftValueForKey:@"action"];
  v4 = [v3 safeSwiftStringForKey:@"title"];
  v5 = v4;
  if (v3 && [v4 length])
  {
    v6 = v5;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = SessionActionButtonAccessibility;
    v6 = [(SessionActionButtonAccessibility *)&v9 accessibilityLabel];
  }

  v7 = v6;

  return v7;
}

@end