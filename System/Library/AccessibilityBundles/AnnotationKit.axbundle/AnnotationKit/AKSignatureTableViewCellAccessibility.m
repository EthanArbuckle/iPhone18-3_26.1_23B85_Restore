@interface AKSignatureTableViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityValue;
@end

@implementation AKSignatureTableViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"AKSignatureTableViewCell" hasInstanceMethod:@"signature" withFullSignature:{"@", 0}];
  [v3 validateClass:@"AKSignature" hasInstanceMethod:@"creationDate" withFullSignature:{"@", 0}];
}

- (id)accessibilityValue
{
  v11.receiver = self;
  v11.super_class = AKSignatureTableViewCellAccessibility;
  v3 = [(AKSignatureTableViewCellAccessibility *)&v11 accessibilityLabel];
  if (!v3)
  {
    objc_opt_class();
    v4 = [(AKSignatureTableViewCellAccessibility *)self safeValueForKey:@"signature"];
    v5 = [v4 safeValueForKey:@"creationDate"];
    v6 = __UIAccessibilityCastAsClass();

    if (v6)
    {
      v7 = MEMORY[0x29EDBA0F8];
      v8 = accessibilityLocalizedString(@"signature.date.created");
      v9 = [MEMORY[0x29EDB9F78] localizedStringFromDate:v6 dateStyle:3 timeStyle:3];
      v3 = [v7 stringWithFormat:v8, v9];
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

@end