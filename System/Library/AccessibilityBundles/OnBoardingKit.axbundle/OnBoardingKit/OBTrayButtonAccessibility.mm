@interface OBTrayButtonAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
@end

@implementation OBTrayButtonAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"OBTrayButton" isKindOfClass:@"UIButton"];
  [validationsCopy validateClass:@"UIControl" hasInstanceMethod:@"isEnabled" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"UIControl" hasInstanceMethod:@"setEnabled:" withFullSignature:{"v", "B", 0}];
}

- (id)accessibilityLabel
{
  v9.receiver = self;
  v9.super_class = OBTrayButtonAccessibility;
  accessibilityLabel = [(OBTrayButtonAccessibility *)&v9 accessibilityLabel];
  objc_opt_class();
  v3 = __UIAccessibilityCastAsClass();
  configuration = [v3 configuration];
  showsActivityIndicator = [configuration showsActivityIndicator];

  if (showsActivityIndicator)
  {
    v8 = accessibilityLocalizedString(@"in.progress");
    v6 = __UIAXStringForVariables();
  }

  else
  {
    v6 = accessibilityLabel;
  }

  return v6;
}

@end