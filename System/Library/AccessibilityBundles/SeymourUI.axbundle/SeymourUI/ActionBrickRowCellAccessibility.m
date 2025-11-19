@interface ActionBrickRowCellAccessibility
- (id)_accessibilityCustomActions;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation ActionBrickRowCellAccessibility

- (id)accessibilityLabel
{
  v3 = [MEMORY[0x29EDB8D80] axArrayByIgnoringNilElementsWithCount:{1, MEMORY[0x29ED34A70](@"SeymourUI.DownloadButton", a2)}];
  v4 = [(ActionBrickRowCellAccessibility *)self _accessibilityTextForSubhierarchyIncludingHeaders:0 focusableItems:1 exclusions:0 classExclusions:v3];
  v6 = _accessibilityReplaceStylsticBulletsForSpeaking(v4, v5);

  return v6;
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = ActionBrickRowCellAccessibility;
  return *MEMORY[0x29EDC7F70] | [(ActionBrickRowCellAccessibility *)&v3 accessibilityTraits];
}

- (id)_accessibilityCustomActions
{
  v11[1] = *MEMORY[0x29EDCA608];
  v2 = [(ActionBrickRowCellAccessibility *)self _accessibilityDescendantOfType:MEMORY[0x29ED34A70](@"SeymourUI.DownloadButton", a2)];
  v3 = [v2 accessibilityLabel];
  if ([v3 length])
  {
    v4 = objc_alloc(MEMORY[0x29EDC78E0]);
    v9[0] = MEMORY[0x29EDCA5F8];
    v9[1] = 3221225472;
    v9[2] = __62__ActionBrickRowCellAccessibility__accessibilityCustomActions__block_invoke;
    v9[3] = &unk_29F2F66E0;
    v10 = v2;
    v5 = [v4 initWithName:v3 actionHandler:v9];
    v11[0] = v5;
    v6 = [MEMORY[0x29EDB8D80] arrayWithObjects:v11 count:1];
  }

  else
  {
    v6 = 0;
  }

  v7 = *MEMORY[0x29EDCA608];

  return v6;
}

@end