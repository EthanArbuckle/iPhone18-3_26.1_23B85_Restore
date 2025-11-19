@interface MTPodcastPlaylistSheetHeaderViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (CGPoint)accessibilityActivationPoint;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
@end

@implementation MTPodcastPlaylistSheetHeaderViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"MTPodcastPlaylistSheetHeaderView" hasInstanceVariable:@"_switch" withType:"UISwitch"];
  [v3 validateClass:@"MTPodcastPlaylistSheetHeaderView" hasInstanceVariable:@"_title" withType:"UILabel"];
}

- (id)accessibilityValue
{
  v2 = [(MTPodcastPlaylistSheetHeaderViewAccessibility *)self _axSwitch];
  v3 = [v2 accessibilityValue];

  return v3;
}

- (CGPoint)accessibilityActivationPoint
{
  v2 = [(MTPodcastPlaylistSheetHeaderViewAccessibility *)self _axSwitch];
  [v2 accessibilityActivationPoint];
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
  v2 = [(MTPodcastPlaylistSheetHeaderViewAccessibility *)self _axSwitch];
  [v2 accessibilityTraits];

  v3 = *MEMORY[0x29EDBDBD0];

  return _AXTraitsRemoveTrait();
}

@end