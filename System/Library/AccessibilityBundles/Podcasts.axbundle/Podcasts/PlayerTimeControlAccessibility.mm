@interface PlayerTimeControlAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)isAccessibilityElement;
- (CGPoint)accessibilityActivationPoint;
- (double)_accessibilityIncreaseAmount:(BOOL)amount;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
- (void)accessibilityDecrement;
- (void)accessibilityIncrement;
@end

@implementation PlayerTimeControlAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"NowPlayingUI.PlayerTimeControl" hasInstanceMethod:@"accessibilityTotalDuration" withFullSignature:{"d", 0}];
  [validationsCopy validateClass:@"NowPlayingUI.PlayerTimeControl" hasInstanceMethod:@"accessibilityElapsedDuration" withFullSignature:{"d", 0}];
  [validationsCopy validateClass:@"NowPlayingUI.PlayerTimeControl" hasInstanceMethod:@"accessibilityUpdateWithElapsedDuration:" withFullSignature:{"v", "d", 0}];
  [validationsCopy validateClass:@"NowPlayingUI.PlayerTimeControl" hasInstanceMethod:@"accessibilityKnobView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"NowPlayingUI.PlayerTimeControl" hasInstanceMethod:@"accessibilityIsLiveContent" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"NowPlayingUI.PlayerTimeControl" hasInstanceMethod:@"accessibilityLiveLabel" withFullSignature:{"@", 0}];
}

- (BOOL)isAccessibilityElement
{
  result = 1;
  if ([(PlayerTimeControlAccessibility *)self _axIsLiveContent])
  {
    v3 = [(PlayerTimeControlAccessibility *)self safeValueForKey:@"accessibilityLiveLabel"];
    _accessibilityViewIsVisible = [v3 _accessibilityViewIsVisible];

    if (!_accessibilityViewIsVisible)
    {
      return 0;
    }
  }

  return result;
}

- (id)accessibilityLabel
{
  if ([(PlayerTimeControlAccessibility *)self _axIsLiveContent])
  {
    v3 = *MEMORY[0x29EDC7378];
    v4 = [(PlayerTimeControlAccessibility *)self safeValueForKey:@"accessibilityLiveLabel"];
    accessibilityLabel = [v4 accessibilityLabel];
    v6 = AXAttributedStringForBetterPronuciation();
  }

  else
  {
    v6 = accessibilityLocalizedString(@"track.position.label");
  }

  return v6;
}

- (id)accessibilityValue
{
  [(PlayerTimeControlAccessibility *)self safeDoubleForKey:@"accessibilityTotalDuration"];
  [(PlayerTimeControlAccessibility *)self safeDoubleForKey:@"accessibilityElapsedDuration"];
  if (_AXSAutomationEnabled())
  {
    v3 = AXPositionalStyleDurationStringForDuration();
    v4 = AXPositionalStyleDurationStringForDuration();
    v5 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ of %@", v3, v4];
LABEL_5:
    v6 = v5;
    goto LABEL_6;
  }

  v3 = AXDurationStringForDuration();
  v4 = AXDurationStringForDuration();
  if ([(PlayerTimeControlAccessibility *)self _axIsLiveContent])
  {
    v5 = accessibilityLocalizedString(@"no.track.position");
    goto LABEL_5;
  }

  v8 = MEMORY[0x29EDBA0F8];
  v9 = accessibilityLocalizedString(@"track.position.value");
  v6 = [v8 stringWithFormat:v9, v3, v4];

LABEL_6:

  return v6;
}

- (unint64_t)accessibilityTraits
{
  v5.receiver = self;
  v5.super_class = PlayerTimeControlAccessibility;
  accessibilityTraits = [(PlayerTimeControlAccessibility *)&v5 accessibilityTraits];
  if ([(PlayerTimeControlAccessibility *)self _axIsLiveContent])
  {
    return *MEMORY[0x29EDC7FA0] | _AXTraitsRemoveTrait();
  }

  else
  {
    return *MEMORY[0x29EDC7F60] | accessibilityTraits;
  }
}

- (double)_accessibilityIncreaseAmount:(BOOL)amount
{
  amountCopy = amount;
  [(PlayerTimeControlAccessibility *)self safeDoubleForKey:@"accessibilityTotalDuration"];
  v6 = v5;
  v7 = v5 > 1800.0;
  [(PlayerTimeControlAccessibility *)self safeDoubleForKey:@"accessibilityElapsedDuration"];
  v8 = dbl_29C17C0B0[v7];
  v10 = v9 / v6;
  if (!amountCopy)
  {
    v8 = -v8;
  }

  return v10 + v8;
}

- (void)accessibilityIncrement
{
  [(PlayerTimeControlAccessibility *)self safeDoubleForKey:@"accessibilityTotalDuration"];
  [(PlayerTimeControlAccessibility *)self _accessibilityIncreaseAmount:1];
  AXPerformSafeBlock();
}

- (void)accessibilityDecrement
{
  [(PlayerTimeControlAccessibility *)self safeDoubleForKey:@"accessibilityTotalDuration"];
  [(PlayerTimeControlAccessibility *)self _accessibilityIncreaseAmount:0];
  AXPerformSafeBlock();
}

- (CGPoint)accessibilityActivationPoint
{
  v2 = [(PlayerTimeControlAccessibility *)self safeValueForKey:@"accessibilityKnobView"];
  [v2 accessibilityActivationPoint];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.y = v8;
  result.x = v7;
  return result;
}

@end