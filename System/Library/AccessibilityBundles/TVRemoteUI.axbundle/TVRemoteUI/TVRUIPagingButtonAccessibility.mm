@interface TVRUIPagingButtonAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation TVRUIPagingButtonAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"TVRUIPagingButton" hasInstanceMethod:@"titleLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"TVRUIPagingButton" hasInstanceMethod:@"topButton" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"TVRUIPagingButton" hasInstanceMethod:@"bottomButton" withFullSignature:{"@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v8.receiver = self;
  v8.super_class = TVRUIPagingButtonAccessibility;
  [(TVRUIPagingButtonAccessibility *)&v8 _accessibilityLoadAccessibilityInformation];
  v3 = [(TVRUIPagingButtonAccessibility *)self safeValueForKey:@"topButton"];
  v4 = accessibilityLocalizedString(@"tv.remote.channel.up.button");
  [v3 setAccessibilityLabel:v4];

  v5 = [(TVRUIPagingButtonAccessibility *)self safeValueForKey:@"bottomButton"];
  v6 = accessibilityLocalizedString(@"tv.remote.channel.down.button");
  [v5 setAccessibilityLabel:v6];

  v7 = [(TVRUIPagingButtonAccessibility *)self safeValueForKey:@"titleLabel"];
  [v7 setIsAccessibilityElement:0];
}

@end