@interface AKSignatureTableViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityValue;
@end

@implementation AKSignatureTableViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"AKSignatureTableViewCell" hasInstanceMethod:@"signature" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"AKSignature" hasInstanceMethod:@"creationDate" withFullSignature:{"@", 0}];
}

- (id)accessibilityValue
{
  v11.receiver = self;
  v11.super_class = AKSignatureTableViewCellAccessibility;
  accessibilityLabel = [(AKSignatureTableViewCellAccessibility *)&v11 accessibilityLabel];
  if (!accessibilityLabel)
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
      accessibilityLabel = [v7 stringWithFormat:v8, v9];
    }

    else
    {
      accessibilityLabel = 0;
    }
  }

  return accessibilityLabel;
}

@end