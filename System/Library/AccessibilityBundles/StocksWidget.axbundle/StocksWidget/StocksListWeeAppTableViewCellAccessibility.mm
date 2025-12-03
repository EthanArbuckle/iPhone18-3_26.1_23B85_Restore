@interface StocksListWeeAppTableViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (StocksListWeeAppTableViewCellAccessibility)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (id)_accessibilityBoxButtonLabel;
- (id)accessibilityLabel;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)updateValues;
@end

@implementation StocksListWeeAppTableViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"StocksListWeeAppTableViewCell" hasInstanceMethod:@"stock" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"StocksListWeeAppTableViewCell" hasInstanceVariable:@"_priceLabel" withType:"UILabel"];
  [validationsCopy validateClass:@"StocksListWeeAppTableViewCell" hasInstanceMethod:@"boxButton" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"Stock" hasInstanceMethod:@"companyName" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"StocksListWeeAppTableViewCell" hasInstanceVariable:@"_boxLabel" withType:"UILabel"];
  [validationsCopy validateClass:@"Stock" hasInstanceMethod:@"marketcap" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"Stock" hasClassMethod:@"BlankValueString" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"Stock" hasInstanceMethod:@"changeIsNegative" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"Stock" hasInstanceMethod:@"changeIsZero" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"Stock" hasClassMethod:@"formattedStringForString: fractionDigits: percentStyle:" withFullSignature:{"@", "@", "I", "B", 0}];
  [validationsCopy validateClass:@"Stock" hasInstanceMethod:@"formattedChangePercent:" withFullSignature:{"@", "B", 0}];
  [validationsCopy validateClass:@"Stock" hasInstanceMethod:@"change" withFullSignature:{"@", 0}];
}

- (id)_accessibilityBoxButtonLabel
{
  v2 = [(StocksListWeeAppTableViewCellAccessibility *)self safeValueForKey:@"stock"];
  v3 = [v2 safeValueForKey:@"marketcap"];
  v4 = [MEMORY[0x29ED39940](@"Stock") safeValueForKey:@"BlankValueString"];
  if ([v3 isEqualToString:v4])
  {
    v5 = 0;
  }

  else
  {
    [v3 floatValue];
    v6 = AXFormatFloat();

    v7 = MEMORY[0x29EDBA078];
    v8 = [MEMORY[0x29EDBA070] numberWithInteger:{objc_msgSend(v6, "integerValue")}];
    v3 = [v7 localizedStringFromNumber:v8 numberStyle:5];

    v9 = MEMORY[0x29EDBA0F8];
    v10 = accessibilityLocalizedString(@"marketcap.value");
    v5 = [v9 stringWithFormat:v10, v3];
  }

  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__0;
  v31 = __Block_byref_object_dispose__0;
  v32 = 0;
  v11 = v2;
  AXPerformSafeBlock();
  v12 = v28[5];

  _Block_object_dispose(&v27, 8);
  if ([v11 safeBoolForKey:@"changeIsZero"])
  {
    v13 = accessibilityLocalizedString(@"no.change");
  }

  else
  {
    v14 = [v11 safeBoolForKey:@"changeIsNegative"];
    v15 = MEMORY[0x29EDBA0F8];
    if (v14)
    {
      v16 = @"negative.change";
    }

    else
    {
      v16 = @"positive.change";
    }

    v17 = accessibilityLocalizedString(v16);
    v13 = [v15 stringWithFormat:v17, v12];
  }

  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__0;
  v31 = __Block_byref_object_dispose__0;
  v32 = 0;
  v18 = v11;
  AXPerformSafeBlock();
  v19 = v28[5];

  _Block_object_dispose(&v27, 8);
  if ([v18 safeBoolForKey:@"changeIsZero"])
  {
    v20 = accessibilityLocalizedString(@"no.change");
  }

  else
  {
    v21 = [v18 safeBoolForKey:@"changeIsNegative"];
    v22 = MEMORY[0x29EDBA0F8];
    if (v21)
    {
      v23 = @"down.value";
    }

    else
    {
      v23 = @"up.value";
    }

    v24 = accessibilityLocalizedString(v23);
    v20 = [v22 stringWithFormat:v24, v19];
  }

  v25 = __UIAXStringForVariables();

  return v25;
}

uint64_t __74__StocksListWeeAppTableViewCellAccessibility__accessibilityBoxButtonLabel__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) formattedChangePercent:1];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2A1C71028]();
}

void __74__StocksListWeeAppTableViewCellAccessibility__accessibilityBoxButtonLabel__block_invoke_2(uint64_t a1)
{
  v2 = MEMORY[0x29ED39940](@"Stock");
  v6 = [*(a1 + 32) safeValueForKey:@"change"];
  v3 = [v2 formattedStringForString:v6 fractionDigits:2 percentStyle:0];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (id)accessibilityLabel
{
  v3 = [(StocksListWeeAppTableViewCellAccessibility *)self safeValueForKey:@"stock"];
  objc_opt_class();
  v4 = [(StocksListWeeAppTableViewCellAccessibility *)self safeValueForKey:@"_priceLabel"];
  v5 = __UIAccessibilityCastAsClass();

  v6 = [(StocksListWeeAppTableViewCellAccessibility *)self safeValueForKey:@"boxButton"];
  v7 = [v3 safeValueForKey:@"companyName"];
  accessibilityLabel = [v5 accessibilityLabel];
  accessibilityLabel2 = [v6 accessibilityLabel];
  v9 = __UIAXStringForVariables();

  return v9;
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v5.receiver = self;
  v5.super_class = StocksListWeeAppTableViewCellAccessibility;
  [(StocksListWeeAppTableViewCellAccessibility *)&v5 _accessibilityLoadAccessibilityInformation];
  v3 = [(StocksListWeeAppTableViewCellAccessibility *)self safeValueForKey:@"boxButton"];
  [v3 setIsAccessibilityElement:0];
  _accessibilityBoxButtonLabel = [(StocksListWeeAppTableViewCellAccessibility *)self _accessibilityBoxButtonLabel];
  [v3 setAccessibilityLabel:_accessibilityBoxButtonLabel];
}

- (void)updateValues
{
  v3.receiver = self;
  v3.super_class = StocksListWeeAppTableViewCellAccessibility;
  [(StocksListWeeAppTableViewCellAccessibility *)&v3 updateValues];
  [(StocksListWeeAppTableViewCellAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

- (StocksListWeeAppTableViewCellAccessibility)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v6.receiver = self;
  v6.super_class = StocksListWeeAppTableViewCellAccessibility;
  v4 = [(StocksListWeeAppTableViewCellAccessibility *)&v6 initWithStyle:style reuseIdentifier:identifier];
  [(StocksListWeeAppTableViewCellAccessibility *)v4 _accessibilityLoadAccessibilityInformation];

  return v4;
}

@end