@interface PlayerTimeControlAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)isAccessibilityElement;
- (id)_accessibilityAbsoluteValue;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
- (void)_accessibilityIncreaseAmount:(BOOL)amount;
@end

@implementation PlayerTimeControlAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"MusicApplication.PlayerTimeControl" hasInstanceMethod:@"accessibilityTotalDuration" withFullSignature:{"d", 0}];
  [validationsCopy validateClass:@"MusicApplication.PlayerTimeControl" hasInstanceMethod:@"accessibilityElapsedDuration" withFullSignature:{"d", 0}];
  [validationsCopy validateClass:@"MusicApplication.PlayerTimeControl" hasInstanceMethod:@"accessibilityUpdateWithElapsedDuration:" withFullSignature:{"v", "d", 0}];
  [validationsCopy validateClass:@"MusicApplication.PlayerTimeControl" hasInstanceMethod:@"accessibilityIsLiveContent" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"MusicApplication.PlayerTimeControl" hasInstanceMethod:@"liveLabel" withFullSignature:{"@", 0}];
}

- (BOOL)isAccessibilityElement
{
  result = 1;
  if ([(PlayerTimeControlAccessibility *)self _axIsLiveContent])
  {
    v3 = [(PlayerTimeControlAccessibility *)self safeValueForKey:@"liveLabel"];
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
    v4 = [(PlayerTimeControlAccessibility *)self safeValueForKey:@"liveLabel"];
    accessibilityLabel = [v4 accessibilityLabel];
    v6 = AXAttributedStringForBetterPronuciation();
  }

  else
  {
    v6 = accessibilityMusicLocalizedString(@"track.position.label");
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
    v5 = accessibilityMusicLocalizedString(@"no.track.position");
    goto LABEL_5;
  }

  v8 = MEMORY[0x29EDBA0F8];
  v9 = accessibilityMusicLocalizedString(@"track.position.value");
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

- (void)_accessibilityIncreaseAmount:(BOOL)amount
{
  [(PlayerTimeControlAccessibility *)self safeDoubleForKey:@"accessibilityTotalDuration"];
  [(PlayerTimeControlAccessibility *)self safeDoubleForKey:@"accessibilityElapsedDuration"];
  AXPerformSafeBlock();
}

- (id)_accessibilityAbsoluteValue
{
  [(PlayerTimeControlAccessibility *)self safeDoubleForKey:@"accessibilityTotalDuration"];
  v4 = v3;
  [(PlayerTimeControlAccessibility *)self safeDoubleForKey:@"accessibilityElapsedDuration"];
  v7 = v5 / v4;
  v6 = MEMORY[0x29EDBA070];
  *&v7 = v7;

  return [v6 numberWithFloat:v7];
}

@end