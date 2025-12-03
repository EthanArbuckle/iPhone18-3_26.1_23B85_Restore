@interface TVButtonLockupAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
- (void)_selectButtonAction:(id)action;
@end

@implementation TVButtonLockupAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"TVButtonLockup" hasInstanceMethod:@"titleView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"TVButtonLockup" hasInstanceMethod:@"imageView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"TVButtonLockup" hasInstanceVariable:@"_textView" withType:"UILabel"];
  [validationsCopy validateClass:@"TVButtonLockup" hasInstanceMethod:@"_selectButtonAction:" withFullSignature:{"v", "@", 0}];
}

- (id)accessibilityLabel
{
  v18.receiver = self;
  v18.super_class = TVButtonLockupAccessibility;
  accessibilityLabel = [(TVButtonLockupAccessibility *)&v18 accessibilityLabel];
  v4 = [(TVButtonLockupAccessibility *)self safeValueForKey:@"titleView"];
  accessibilityLabel2 = [v4 accessibilityLabel];

  v6 = [(TVButtonLockupAccessibility *)self safeValueForKey:@"_textView"];
  accessibilityLabel3 = [v6 accessibilityLabel];

  if ([accessibilityLabel length])
  {
    v8 = accessibilityLabel;
    if (([v8 axContainsString:accessibilityLabel3 options:2] & 1) == 0)
    {
      v14 = accessibilityLabel3;
      v16 = @"__AXStringForVariablesSentinel";
      v9 = __UIAXStringForVariables();

      v8 = v9;
    }

    if (([v8 axContainsString:accessibilityLabel2 options:{2, v14, v16}] & 1) == 0)
    {
      v15 = accessibilityLabel2;
      v17 = @"__AXStringForVariablesSentinel";
      v10 = __UIAXStringForVariables();

      v8 = v10;
    }
  }

  else
  {
    v15 = accessibilityLabel2;
    v17 = @"__AXStringForVariablesSentinel";
    v8 = __UIAXStringForVariables();
  }

  v11 = [(TVButtonLockupAccessibility *)self _accessibilityLastAxLabel:v15];
  if (-[TVButtonLockupAccessibility _accessibilityShouldAnnounceAxLabelChange](self, "_accessibilityShouldAnnounceAxLabelChange") && ([v8 isEqualToString:v11] & 1) == 0)
  {
    [(TVButtonLockupAccessibility *)self _accessibilitySetShouldAnnounceAxLabelChange:0];
  }

  [(TVButtonLockupAccessibility *)self _accessibilitySetLastAxLabel:v8];
  v12 = v8;

  return v8;
}

- (void)_selectButtonAction:(id)action
{
  v4.receiver = self;
  v4.super_class = TVButtonLockupAccessibility;
  [(TVButtonLockupAccessibility *)&v4 _selectButtonAction:action];
  [(TVButtonLockupAccessibility *)self _accessibilitySetShouldAnnounceAxLabelChange:1];
}

@end