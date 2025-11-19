@interface OBTrayButtonAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
@end

@implementation OBTrayButtonAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"OBTrayButton" isKindOfClass:@"UIButton"];
  [v3 validateClass:@"UIControl" hasInstanceMethod:@"isEnabled" withFullSignature:{"B", 0}];
  [v3 validateClass:@"UIControl" hasInstanceMethod:@"setEnabled:" withFullSignature:{"v", "B", 0}];
}

- (id)accessibilityLabel
{
  v9.receiver = self;
  v9.super_class = OBTrayButtonAccessibility;
  v2 = [(OBTrayButtonAccessibility *)&v9 accessibilityLabel];
  objc_opt_class();
  v3 = __UIAccessibilityCastAsClass();
  v4 = [v3 configuration];
  v5 = [v4 showsActivityIndicator];

  if (v5)
  {
    v8 = accessibilityLocalizedString(@"in.progress");
    v6 = __UIAXStringForVariables();
  }

  else
  {
    v6 = v2;
  }

  return v6;
}

@end