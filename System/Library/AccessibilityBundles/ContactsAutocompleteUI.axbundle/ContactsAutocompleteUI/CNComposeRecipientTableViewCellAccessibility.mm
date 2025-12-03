@interface CNComposeRecipientTableViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (unint64_t)accessibilityTraits;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)actionButtonTapped;
@end

@implementation CNComposeRecipientTableViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"CNComposeRecipientTableViewCell" hasInstanceMethod:@"actionType" withFullSignature:{"Q", 0}];
  [validationsCopy validateClass:@"CNComposeRecipientTableViewCell" hasInstanceMethod:@"actionButton" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CNComposeRecipientTableViewCell" hasInstanceMethod:@"actionButtonTapped" withFullSignature:{"v", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v12.receiver = self;
  v12.super_class = CNComposeRecipientTableViewCellAccessibility;
  [(CNComposeRecipientTableViewCellAccessibility *)&v12 _accessibilityLoadAccessibilityInformation];
  v3 = [(CNComposeRecipientTableViewCellAccessibility *)self safeUnsignedIntegerForKey:@"actionType"];
  v4 = 0;
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v5 = @"expanded.button.label";
      goto LABEL_10;
    }

    if (v3 == 4)
    {
      v6 = accessibilityLocalizedStringStewie(@"stewie.button.label");
LABEL_11:
      v4 = v6;
    }
  }

  else
  {
    if (v3 == 1)
    {
      v5 = @"info.button.label";
      goto LABEL_10;
    }

    if (v3 == 2)
    {
      v5 = @"collapsed.button.label";
LABEL_10:
      v6 = accessibilityLocalizedString(v5);
      goto LABEL_11;
    }
  }

  objc_initWeak(&location, self);
  v8[0] = MEMORY[0x29EDCA5F8];
  v8[1] = 3221225472;
  v8[2] = __90__CNComposeRecipientTableViewCellAccessibility__accessibilityLoadAccessibilityInformation__block_invoke;
  v8[3] = &unk_29F2B53A0;
  v7 = v4;
  v9 = v7;
  objc_copyWeak(&v10, &location);
  [(CNComposeRecipientTableViewCellAccessibility *)self setAccessibilityCustomActionsBlock:v8];
  objc_destroyWeak(&v10);

  objc_destroyWeak(&location);
}

id __90__CNComposeRecipientTableViewCellAccessibility__accessibilityLoadAccessibilityInformation__block_invoke(uint64_t a1)
{
  v10[1] = *MEMORY[0x29EDCA608];
  v2 = objc_alloc(MEMORY[0x29EDC78E0]);
  v3 = *(a1 + 32);
  v8[0] = MEMORY[0x29EDCA5F8];
  v8[1] = 3221225472;
  v8[2] = __90__CNComposeRecipientTableViewCellAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_2;
  v8[3] = &unk_29F2B5378;
  objc_copyWeak(&v9, (a1 + 40));
  v4 = [v2 initWithName:v3 actionHandler:v8];
  v10[0] = v4;
  v5 = [MEMORY[0x29EDB8D80] arrayWithObjects:v10 count:1];

  objc_destroyWeak(&v9);
  v6 = *MEMORY[0x29EDCA608];

  return v5;
}

uint64_t __90__CNComposeRecipientTableViewCellAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_copyWeak(&v5, (a1 + 32));
  AXPerformSafeBlock();
  objc_destroyWeak(&v5);

  return 1;
}

void __90__CNComposeRecipientTableViewCellAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained actionButtonTapped];
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = CNComposeRecipientTableViewCellAccessibility;
  return *MEMORY[0x29EDC7F70] | [(CNComposeRecipientTableViewCellAccessibility *)&v3 accessibilityTraits];
}

- (void)actionButtonTapped
{
  v3.receiver = self;
  v3.super_class = CNComposeRecipientTableViewCellAccessibility;
  [(CNComposeRecipientTableViewCellAccessibility *)&v3 actionButtonTapped];
  [(CNComposeRecipientTableViewCellAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end