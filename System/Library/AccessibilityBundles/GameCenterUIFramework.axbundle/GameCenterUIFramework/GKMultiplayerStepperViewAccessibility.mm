@interface GKMultiplayerStepperViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)accessibilityUpdateStepperWithValue:(int64_t)value;
- (void)layoutSubviews;
@end

@implementation GKMultiplayerStepperViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"GameCenterUI.GKMultiplayerStepperView" hasInstanceMethod:@"accessibilityDownButton" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"GameCenterUI.GKMultiplayerStepperView" hasInstanceMethod:@"accessibilityUpButton" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"GameCenterUI.GKMultiplayerStepperView" hasInstanceMethod:@"accessibilityUpdateStepperWithValue:" withFullSignature:{"v", "q", 0}];
  [validationsCopy validateClass:@"GameCenterUI.GKMultiplayerStepperView" hasInstanceMethod:@"layoutSubviews" withFullSignature:{"v", 0}];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = GKMultiplayerStepperViewAccessibility;
  [(GKMultiplayerStepperViewAccessibility *)&v3 layoutSubviews];
  [(GKMultiplayerStepperViewAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v5.receiver = self;
  v5.super_class = GKMultiplayerStepperViewAccessibility;
  [(GKMultiplayerStepperViewAccessibility *)&v5 _accessibilityLoadAccessibilityInformation];
  v3 = [(GKMultiplayerStepperViewAccessibility *)self safeValueForKey:@"accessibilityDownButton"];
  [v3 _setAccessibilityLabelBlock:&__block_literal_global_5];
  v4 = [(GKMultiplayerStepperViewAccessibility *)self safeValueForKey:@"accessibilityUpButton"];
  [v4 _setAccessibilityLabelBlock:&__block_literal_global_309];
  [v3 _setAccessibilityAdditionalTraitsBlock:&__block_literal_global_315];
  [v4 _setAccessibilityAdditionalTraitsBlock:&__block_literal_global_317];
}

- (void)accessibilityUpdateStepperWithValue:(int64_t)value
{
  v4 = MEMORY[0x29EDBD7E8];
  v5 = MEMORY[0x29EDBA0F8];
  v6 = AXGameCenterUIFrameworkLocString(@"PLAYER_COUNT");
  value = [v5 localizedStringWithFormat:v6, value];
  v8 = [v4 axAttributedStringWithString:value];

  [v8 setAttribute:MEMORY[0x29EDB8EB0] forKey:*MEMORY[0x29EDBD978]];
  v9 = v8;
  AXPerformBlockOnMainThreadAfterDelay();
}

@end