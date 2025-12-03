@interface ETColorWheelViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)accessibilityActivate;
- (id)accessibilityValue;
- (void)_accessibilityChangeCrownOffset:(double)offset;
@end

@implementation ETColorWheelViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"ETColorWheelView"];
  [validationsCopy validateClass:@"ETColorWheelView" hasInstanceMethod:@"doneButtonTapped:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"ETColorWheelView" hasInstanceVariable:@"_doneButton" withType:"UIButton"];
  [validationsCopy validateClass:@"ETColorWheelView" hasInstanceMethod:@"crownInputSequencer" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PUICCrownInputSequencer"];
  [validationsCopy validateClass:@"PUICCrownInputSequencer" hasInstanceMethod:@"offset" withFullSignature:{"d", 0}];
  [validationsCopy validateClass:@"PUICCrownInputSequencer" hasInstanceMethod:@"setOffset:" withFullSignature:{"v", "d", 0}];
  [validationsCopy validateClass:@"ETColorWheelView" conformsToProtocol:@"PUICCrownInputSequencerDelegate"];
  [validationsCopy validateProtocol:@"PUICCrownInputSequencerDelegate" hasOptionalInstanceMethod:@"crownInputSequencerOffsetDidChange:"];
  [validationsCopy validateClass:@"ETColorWheelView" hasInstanceMethod:@"pickerViewHighlightedColor" withFullSignature:{"@", 0}];
}

- (id)accessibilityValue
{
  v2 = [(ETColorWheelViewAccessibility *)self safeValueForKey:@"pickerViewHighlightedColor"];
  v3 = __UIAccessibilitySafeClass();

  axColorStringForSpeaking = [v3 axColorStringForSpeaking];

  return axColorStringForSpeaking;
}

- (BOOL)accessibilityActivate
{
  v3 = [(ETColorWheelViewAccessibility *)self safeValueForKey:@"_doneButton"];
  [(ETColorWheelViewAccessibility *)self doneButtonTapped:v3];

  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
  return 1;
}

- (void)_accessibilityChangeCrownOffset:(double)offset
{
  v3 = [(ETColorWheelViewAccessibility *)self safeValueForKey:@"crownInputSequencer"];
  [v3 safeDoubleForKey:@"offset"];
  v4 = v3;
  AXPerformSafeBlock();
}

uint64_t __65__ETColorWheelViewAccessibility__accessibilityChangeCrownOffset___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setOffset:*(a1 + 48)];
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);

  return [v2 crownInputSequencerOffsetDidChange:v3];
}

@end