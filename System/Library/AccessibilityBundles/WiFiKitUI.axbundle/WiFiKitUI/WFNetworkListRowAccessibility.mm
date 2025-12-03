@interface WFNetworkListRowAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
- (int64_t)_axNetworkState;
- (unint64_t)accessibilityTraits;
@end

@implementation WFNetworkListRowAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"WFNetworkListRow" hasInstanceMethod:@"config" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"WFNetworkRowConfig" hasInstanceMethod:@"network" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"WFNetworkRowConfig" hasInstanceMethod:@"connectionState" withFullSignature:{"q", 0}];
  [validationsCopy validateProtocol:@"WFNetworkListRecord" hasRequiredInstanceMethod:@"title"];
  [validationsCopy validateProtocol:@"WFNetworkListRecord" hasRequiredInstanceMethod:@"subtitle"];
  [validationsCopy validateProtocol:@"WFNetworkListRecord" hasRequiredInstanceMethod:@"isSecure"];
  [validationsCopy validateProtocol:@"WFNetworkListRecord" hasRequiredInstanceMethod:@"isInstantHotspot"];
  [validationsCopy validateProtocol:@"WFNetworkListRecord" hasRequiredInstanceMethod:@"signalBars"];
}

- (unint64_t)accessibilityTraits
{
  v7.receiver = self;
  v7.super_class = WFNetworkListRowAccessibility;
  accessibilityTraits = [(WFNetworkListRowAccessibility *)&v7 accessibilityTraits];
  _axNetworkState = [(WFNetworkListRowAccessibility *)self _axNetworkState];
  v5 = *MEMORY[0x29EDC7FC0];
  if (_axNetworkState != 2)
  {
    v5 = 0;
  }

  return v5 | accessibilityTraits;
}

- (int64_t)_axNetworkState
{
  v2 = [(WFNetworkListRowAccessibility *)self safeValueForKey:@"config"];
  v3 = [v2 safeIntegerForKey:@"connectionState"];

  return v3;
}

- (id)accessibilityLabel
{
  _axNetworkState = [(WFNetworkListRowAccessibility *)self _axNetworkState];
  _axNetwork = [(WFNetworkListRowAccessibility *)self _axNetwork];
  v5 = [_axNetwork safeValueForKey:@"title"];

  _axNetwork2 = [(WFNetworkListRowAccessibility *)self _axNetwork];
  v7 = [_axNetwork2 safeValueForKey:@"subtitle"];

  _axNetwork3 = [(WFNetworkListRowAccessibility *)self _axNetwork];
  v9 = [_axNetwork3 safeBoolForKey:@"isSecure"];

  _axNetwork4 = [(WFNetworkListRowAccessibility *)self _axNetwork];
  v11 = [_axNetwork4 safeBoolForKey:@"isInstantHotspot"];

  _axNetwork5 = [(WFNetworkListRowAccessibility *)self _axNetwork];
  v13 = [_axNetwork5 safeUnsignedIntegerForKey:@"signalBars"];

  v14 = MEMORY[0x29EDBA0F8];
  v15 = accessibilityLocalizedString(@"wifi.strength");
  v16 = [MEMORY[0x29EDBA070] numberWithUnsignedInteger:v13];
  v17 = [v14 stringWithFormat:v15, v16];

  if (v9)
  {
    v18 = @"is.secure";
  }

  else
  {
    v18 = @"not.secure";
  }

  v24 = accessibilityLocalizedString(v18);
  v19 = __UIAXStringForVariables();

  if (_axNetworkState == 1)
  {
    v20 = accessibilityLocalizedString(@"connecting");
    if (!v11)
    {
LABEL_6:
      v21 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    v20 = 0;
    if (!v11)
    {
      goto LABEL_6;
    }
  }

  v21 = accessibilityLocalizedString(@"personal.hotspot");
LABEL_9:
  v22 = __UIAXStringForVariables();

  if (v11)
  {
  }

  if (_axNetworkState == 1)
  {
  }

  return v22;
}

@end