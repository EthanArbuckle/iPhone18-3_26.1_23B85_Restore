@interface SeymourUI_TabletStandardBrickRowCellAccessibility
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation SeymourUI_TabletStandardBrickRowCellAccessibility

- (id)accessibilityLabel
{
  v2 = [(SeymourUI_TabletStandardBrickRowCellAccessibility *)self _accessibilityTextForSubhierarchyIncludingHeaders:0 focusableItems:1 exclusions:0];
  v4 = _accessibilityReplaceStylsticBulletsForSpeaking(v2, v3);

  return v4;
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = SeymourUI_TabletStandardBrickRowCellAccessibility;
  return *MEMORY[0x29EDC7F70] | [(SeymourUI_TabletStandardBrickRowCellAccessibility *)&v3 accessibilityTraits];
}

@end