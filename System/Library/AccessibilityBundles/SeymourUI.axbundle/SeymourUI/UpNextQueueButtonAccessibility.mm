@interface UpNextQueueButtonAccessibility
- (id)accessibilityLabel;
@end

@implementation UpNextQueueButtonAccessibility

- (id)accessibilityLabel
{
  v2 = MEMORY[0x29EDBA0F8];
  v3 = [(UpNextQueueButtonAccessibility *)self safeSwiftValueForKey:@"queueCount"];
  v4 = [v2 stringWithFormat:@"%@", v3];

  v5 = accessibilityLocalizedString(@"workout.button.stack");
  v6 = __UIAXStringForVariables();

  return v6;
}

@end