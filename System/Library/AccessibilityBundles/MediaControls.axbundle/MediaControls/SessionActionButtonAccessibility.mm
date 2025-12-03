@interface SessionActionButtonAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
@end

@implementation SessionActionButtonAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"MediaControls.SessionActionButton" hasSwiftField:@"action" withSwiftType:"Optional<Action>"];
  [validationsCopy validateSwiftStruct:@"MediaControl.RoutingItem[struct].Action"];
  [validationsCopy validateSwiftStruct:@"MediaControl.RoutingItem[struct].Action" hasSwiftField:@"title" withSwiftType:"String"];
}

- (id)accessibilityLabel
{
  v3 = [(SessionActionButtonAccessibility *)self safeSwiftValueForKey:@"action"];
  v4 = [v3 safeSwiftStringForKey:@"title"];
  v5 = v4;
  if (v3 && [v4 length])
  {
    accessibilityLabel = v5;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = SessionActionButtonAccessibility;
    accessibilityLabel = [(SessionActionButtonAccessibility *)&v9 accessibilityLabel];
  }

  v7 = accessibilityLabel;

  return v7;
}

@end