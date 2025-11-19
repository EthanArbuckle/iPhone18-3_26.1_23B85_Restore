@interface CNAtomViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
@end

@implementation CNAtomViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"CNAtomView" hasInstanceMethod:@"presentationOptions" withFullSignature:{"Q", 0}];
  [v3 validateClass:@"CNAtomView" hasInstanceMethod:@"title" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v3 = [(CNAtomViewAccessibility *)self safeValueForKey:@"presentationOptions"];
  v4 = [v3 integerValue];

  if ((v4 & 0x10) != 0)
  {
    v6 = accessibilityLocalizedString(@"vip.sender");
  }

  else
  {
    if ((*&v4 & 0x20001) != 0)
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