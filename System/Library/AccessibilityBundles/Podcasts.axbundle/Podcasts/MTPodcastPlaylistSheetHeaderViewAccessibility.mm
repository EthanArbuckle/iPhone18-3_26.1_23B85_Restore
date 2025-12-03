@interface MTPodcastPlaylistSheetHeaderViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (CGPoint)accessibilityActivationPoint;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
@end

@implementation MTPodcastPlaylistSheetHeaderViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"MTPodcastPlaylistSheetHeaderView" hasInstanceVariable:@"_switch" withType:"UISwitch"];
  [validationsCopy validateClass:@"MTPodcastPlaylistSheetHeaderView" hasInstanceVariable:@"_title" withType:"UILabel"];
}

- (id)accessibilityValue
{
  _axSwitch = [(MTPodcastPlaylistSheetHeaderViewAccessibility *)self _axSwitch];
  accessibilityValue = [_axSwitch accessibilityValue];

  return accessibilityValue;
}

- (CGPoint)accessibilityActivationPoint
{
  _axSwitch = [(MTPodcastPlaylistSheetHeaderViewAccessibility *)self _axSwitch];
  [_axSwitch accessibilityActivationPoint];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.y = v8;
  result.x = v7;
  return result;
}

- (unint64_t)accessibilityTraits
{
  _axSwitch = [(MTPodcastPlaylistSheetHeaderViewAccessibility *)self _axSwitch];
  [_axSwitch accessibilityTraits];

  v3 = *MEMORY[0x29EDBDBD0];

  return _AXTraitsRemoveTrait();
}

@end