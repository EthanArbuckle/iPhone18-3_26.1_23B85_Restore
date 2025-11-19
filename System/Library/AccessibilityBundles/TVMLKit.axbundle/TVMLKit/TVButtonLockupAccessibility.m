@interface TVButtonLockupAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
- (void)_selectButtonAction:(id)a3;
@end

@implementation TVButtonLockupAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"TVButtonLockup" hasInstanceMethod:@"titleView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"TVButtonLockup" hasInstanceMethod:@"imageView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"TVButtonLockup" hasInstanceVariable:@"_textView" withType:"UILabel"];
  [v3 validateClass:@"TVButtonLockup" hasInstanceMethod:@"_selectButtonAction:" withFullSignature:{"v", "@", 0}];
}

- (id)accessibilityLabel
{
  v18.receiver = self;
  v18.super_class = TVButtonLockupAccessibility;
  v3 = [(TVButtonLockupAccessibility *)&v18 accessibilityLabel];
  v4 = [(TVButtonLockupAccessibility *)self safeValueForKey:@"titleView"];
  v5 = [v4 accessibilityLabel];

  v6 = [(TVButtonLockupAccessibility *)self safeValueForKey:@"_textView"];
  v7 = [v6 accessibilityLabel];

  if ([v3 length])
  {
    v8 = v3;
    if (([v8 axContainsString:v7 options:2] & 1) == 0)
    {
      v14 = v7;
      v16 = @"__AXStringForVariablesSentinel";
      v9 = __UIAXStringForVariables();

      v8 = v9;
    }

    if (([v8 axContainsString:v5 options:{2, v14, v16}] & 1) == 0)
    {
      v15 = v5;
      v17 = @"__AXStringForVariablesSentinel";
      v10 = __UIAXStringForVariables();

      v8 = v10;
    }
  }

  else
  {
    v15 = v5;
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

- (void)_selectButtonAction:(id)a3
{
  v4.receiver = self;
  v4.super_class = TVButtonLockupAccessibility;
  [(TVButtonLockupAccessibility *)&v4 _selectButtonAction:a3];
  [(TVButtonLockupAccessibility *)self _accessibilitySetShouldAnnounceAxLabelChange:1];
}

@end