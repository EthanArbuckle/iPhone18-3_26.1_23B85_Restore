@interface CNAtomViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
@end

@implementation CNAtomViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"CNAtomView" hasInstanceMethod:@"presentationOptions" withFullSignature:{"Q", 0}];
  [validationsCopy validateClass:@"CNAtomView" hasInstanceMethod:@"title" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v3 = [(CNAtomViewAccessibility *)self safeValueForKey:@"presentationOptions"];
  integerValue = [v3 integerValue];

  if ((integerValue & 0x10) != 0)
  {
    v6 = accessibilityLocalizedString(@"vip.sender");
  }

  else
  {
    if ((*&integerValue & 0x20001) != 0)
    {
      v5 = accessibilityLocalizedString(@"address.failure.style");
      v6 = 0;
      goto LABEL_7;
    }

    v6 = 0;
  }

  v5 = 0;
LABEL_7:
  v7 = [(CNAtomViewAccessibility *)self safeStringForKey:@"title"];
  v8 = __UIAXStringForVariables();

  return v8;
}

@end