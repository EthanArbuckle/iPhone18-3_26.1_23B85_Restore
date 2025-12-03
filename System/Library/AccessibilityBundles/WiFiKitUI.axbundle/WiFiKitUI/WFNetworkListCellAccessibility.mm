@interface WFNetworkListCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
- (int64_t)_axNetworkState;
- (unint64_t)accessibilityTraits;
@end

@implementation WFNetworkListCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateProtocol:@"WFNetworkCell" hasRequiredInstanceMethod:@"title"];
  [validationsCopy validateProtocol:@"WFNetworkCell" hasRequiredInstanceMethod:@"subtitle"];
  [validationsCopy validateProtocol:@"WFNetworkCell" hasRequiredInstanceMethod:@"secure"];
  [validationsCopy validateProtocol:@"WFNetworkCell" hasRequiredInstanceMethod:@"bars"];
  [validationsCopy validateClass:@"WFNetworkListCell" hasInstanceMethod:@"personalHotspot" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"WFAssociationStateView" hasInstanceMethod:@"state" withFullSignature:{"q", 0}];
  [validationsCopy validateClass:@"WFNetworkListCell" hasInstanceMethod:@"associationStateView" withFullSignature:{"@", 0}];
}

- (unint64_t)accessibilityTraits
{
  v7.receiver = self;
  v7.super_class = WFNetworkListCellAccessibility;
  accessibilityTraits = [(WFNetworkListCellAccessibility *)&v7 accessibilityTraits];
  _axNetworkState = [(WFNetworkListCellAccessibility *)self _axNetworkState];
  v5 = *MEMORY[0x29EDC7FC0];
  if (_axNetworkState != 2)
  {
    v5 = 0;
  }

  return v5 | accessibilityTraits;
}

- (int64_t)_axNetworkState
{
  v2 = [(WFNetworkListCellAccessibility *)self safeValueForKey:@"associationStateView"];
  v3 = [v2 safeIntegerForKey:@"state"];

  return v3;
}

- (id)accessibilityLabel
{
  _axNetworkState = [(WFNetworkListCellAccessibility *)self _axNetworkState];
  v4 = [(WFNetworkListCellAccessibility *)self safeValueForKey:@"title"];
  v5 = [(WFNetworkListCellAccessibility *)self safeValueForKey:@"subtitle"];
  v6 = [(WFNetworkListCellAccessibility *)self safeBoolForKey:@"secure"];
  v7 = [(WFNetworkListCellAccessibility *)self safeBoolForKey:@"personalHotspot"];
  v8 = [(WFNetworkListCellAccessibility *)self safeUnsignedIntegerForKey:@"bars"];
  v9 = MEMORY[0x29EDBA0F8];
  v10 = accessibilityLocalizedString(@"wifi.strength");
  v11 = [MEMORY[0x29EDBA070] numberWithUnsignedInteger:v8];
  v12 = [v9 stringWithFormat:v10, v11];

  if (v6)
  {
    v13 = @"is.secure";
  }

  else
  {
    v13 = @"not.secure";
  }

  v19 = accessibilityLocalizedString(v13);
  v14 = __UIAXStringForVariables();

  if (_axNetworkState == 1)
  {
    v15 = accessibilityLocalizedString(@"connecting");
    if (!v7)
    {
LABEL_6:
      v16 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    v15 = 0;
    if (!v7)
    {
      goto LABEL_6;
    }
  }

  v16 = accessibilityLocalizedString(@"personal.hotspot");
LABEL_9:
  v17 = __UIAXStringForVariables();

  if (v7)
  {
  }

  if (_axNetworkState == 1)
  {
  }

  return v17;
}

@end