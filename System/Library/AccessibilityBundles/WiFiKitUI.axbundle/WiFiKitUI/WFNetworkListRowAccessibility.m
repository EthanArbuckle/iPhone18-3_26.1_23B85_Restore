@interface WFNetworkListRowAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
- (int64_t)_axNetworkState;
- (unint64_t)accessibilityTraits;
@end

@implementation WFNetworkListRowAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"WFNetworkListRow" hasInstanceMethod:@"config" withFullSignature:{"@", 0}];
  [v3 validateClass:@"WFNetworkRowConfig" hasInstanceMethod:@"network" withFullSignature:{"@", 0}];
  [v3 validateClass:@"WFNetworkRowConfig" hasInstanceMethod:@"connectionState" withFullSignature:{"q", 0}];
  [v3 validateProtocol:@"WFNetworkListRecord" hasRequiredInstanceMethod:@"title"];
  [v3 validateProtocol:@"WFNetworkListRecord" hasRequiredInstanceMethod:@"subtitle"];
  [v3 validateProtocol:@"WFNetworkListRecord" hasRequiredInstanceMethod:@"isSecure"];
  [v3 validateProtocol:@"WFNetworkListRecord" hasRequiredInstanceMethod:@"isInstantHotspot"];
  [v3 validateProtocol:@"WFNetworkListRecord" hasRequiredInstanceMethod:@"signalBars"];
}

- (unint64_t)accessibilityTraits
{
  v7.receiver = self;
  v7.super_class = WFNetworkListRowAccessibility;
  v3 = [(WFNetworkListRowAccessibility *)&v7 accessibilityTraits];
  v4 = [(WFNetworkListRowAccessibility *)self _axNetworkState];
  v5 = *MEMORY[0x29EDC7FC0];
  if (v4 != 2)
  {
    v5 = 0;
  }

  return v5 | v3;
}

- (int64_t)_axNetworkState
{
  v2 = [(WFNetworkListRowAccessibility *)self safeValueForKey:@"config"];
  v3 = [v2 safeIntegerForKey:@"connectionState"];

  return v3;
}

- (id)accessibilityLabel
{
  v3 = [(WFNetworkListRowAccessibility *)self _axNetworkState];
  v4 = [(WFNetworkListRowAccessibility *)self _axNetwork];
  v5 = [v4 safeValueForKey:@"title"];

  v6 = [(WFNetworkListRowAccessibility *)self _axNetwork];
  v7 = [v6 safeValueForKey:@"subtitle"];

  v8 = [(WFNetworkListRowAccessibility *)self _axNetwork];
  v9 = [v8 safeBoolForKey:@"isSecure"];

  v10 = [(WFNetworkListRowAccessibility *)self _axNetwork];
  v11 = [v10 safeBoolForKey:@"isInstantHotspot"];

  v12 = [(WFNetworkListRowAccessibility *)self _axNetwork];
  v13 = [v12 safeUnsignedIntegerForKey:@"signalBars"];

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

  if (v3 == 1)
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

  if (v3 == 1)
  {
  }

  return v22;
}

@end