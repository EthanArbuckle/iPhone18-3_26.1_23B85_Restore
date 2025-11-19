@interface SeymourUI_TabletIndexedBrickItemCellAccessibility
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation SeymourUI_TabletIndexedBrickItemCellAccessibility

- (id)accessibilityLabel
{
  v2 = [(SeymourUI_TabletIndexedBrickItemCellAccessibility *)self _accessibilityTextForSubhierarchyIncludingHeaders:0 focusableItems:1 exclusions:0];
  v4 = _accessibilityReplaceStylsticBulletsForSpeaking(v2, v3);

  return v4;
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = SeymourUI_TabletIndexedBrickItemCellAccessibility;
  return *MEMORY[0x29EDC7F70] | [(SeymourUI_TabletIndexedBrickItemCellAccessibility *)&v3 accessibilityTraits];
}

@end