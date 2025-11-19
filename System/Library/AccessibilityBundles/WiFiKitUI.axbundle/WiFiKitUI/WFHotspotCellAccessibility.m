@interface WFHotspotCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_axHideBatteryView;
- (void)didMoveToWindow;
@end

@implementation WFHotspotCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"UIView" hasInstanceMethod:@"didMoveToWindow" withFullSignature:{"v", 0}];
  [v3 validateClass:@"WFHotspotCell" isKindOfClass:@"UIView"];
  [v3 validateClass:@"WFAssociationStateView" hasInstanceMethod:@"state" withFullSignature:{"q", 0}];
  [v3 validateClass:@"WFHotspotCell" hasInstanceMethod:@"associationStateView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"WFHotspotCell" hasInstanceMethod:@"hotspotDetailsView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"WFHotspotCell" hasInstanceMethod:@"nameLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"WFHotspotDetailsView" hasInstanceMethod:@"batteryCharge" withFullSignature:{"Q", 0}];
  [v3 validateClass:@"WFHotspotDetailsView" hasInstanceMethod:@"cellularProtocolString" withFullSignature:{"@", 0}];
  [v3 validateClass:@"WFHotspotDetailsView" hasInstanceMethod:@"signalBars" withFullSignature:{"Q", 0}];
  [v3 validateClass:@"WFHotspotDetailsView" hasInstanceMethod:@"batteryView" withFullSignature:{"@", 0}];
}

- (void)_axHideBatteryView
{
  v3 = [(WFHotspotCellAccessibility *)self safeValueForKey:@"hotspotDetailsView"];
  v2 = [v3 safeValueForKey:@"batteryView"];
  [v2 setIsAccessibilityElement:0];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v3.receiver = self;
  v3.super_class = WFHotspotCellAccessibility;
  [(WFHotspotCellAccessibility *)&v3 _accessibilityLoadAccessibilityInformation];
  [(WFHotspotCellAccessibility *)self _axHideBatteryView];
}

- (void)didMoveToWindow
{
  v3.receiver = self;
  v3.super_class = WFHotspotCellAccessibility;
  [(WFHotspotCellAccessibility *)&v3 didMoveToWindow];
  [(WFHotspotCellAccessibility *)self _axHideBatteryView];
}

- (id)accessibilityLabel
{
  v3 = [(WFHotspotCellAccessibility *)self safeValueForKey:@"hotspotDetailsView"];
  v4 = MEMORY[0x29EDBA0F8];
  v5 = accessibilityLocalizedString(@"cellular.strength");
  [v3 safeUnsignedIntegerForKey:@"signalBars"];
  v6 = AXFormatInteger();
  v7 = [v4 stringWithFormat:v5, v6];

  v8 = MEMORY[0x29EDBA0F8];
  v9 = accessibilityLocalizedString(@"battery.level");
  [v3 safeUnsignedIntegerForKey:@"batteryCharge"];
  v10 = AXFormatFloatWithPercentage();
  v11 = [v8 stringWithFormat:v9, v10];

  v12 = [(WFHotspotCellAccessibility *)self safeValueForKey:@"nameLabel"];
  v13 = [v12 accessibilityLabel];
  v16 = [v3 safeStringForKey:@"cellularProtocolString"];
  v14 = __UIAXStringForVariables();

  return v14;
}

@end