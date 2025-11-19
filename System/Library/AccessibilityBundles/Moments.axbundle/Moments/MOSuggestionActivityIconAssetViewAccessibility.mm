@interface MOSuggestionActivityIconAssetViewAccessibility
- (id)accessibilityLabel;
@end

@implementation MOSuggestionActivityIconAssetViewAccessibility

- (id)accessibilityLabel
{
  v2 = UIAXStringForAllChildren();
  v4 = _accessibilityReplaceStylsticBulletsForSpeaking(v2, v3);

  return v4;
}

@end