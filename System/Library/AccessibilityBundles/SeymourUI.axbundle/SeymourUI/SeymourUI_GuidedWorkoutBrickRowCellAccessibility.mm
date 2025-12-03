@interface SeymourUI_GuidedWorkoutBrickRowCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)_accessibilityCustomActions;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation SeymourUI_GuidedWorkoutBrickRowCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SeymourUI.GuidedWorkoutBrickRowCell" isKindOfClass:@"UICollectionViewCell"];
  [validationsCopy validateClass:@"SeymourUI.DownloadButton"];
}

- (id)accessibilityLabel
{
  v2 = [(SeymourUI_GuidedWorkoutBrickRowCellAccessibility *)self safeUIViewForKey:@"contentView"];
  v3 = v2;
  if (v2)
  {
    subviews = [v2 subviews];
    v5 = [subviews ax_filteredArrayUsingBlock:&__block_literal_global_1];
    v6 = v5;
    if (v5)
    {
      v7 = [v5 ax_mappedArrayUsingBlock:&__block_literal_global_299];

      v6 = AXLabelForElements();
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = SeymourUI_GuidedWorkoutBrickRowCellAccessibility;
  return *MEMORY[0x29EDC7F70] | [(SeymourUI_GuidedWorkoutBrickRowCellAccessibility *)&v3 accessibilityTraits];
}

- (id)_accessibilityCustomActions
{
  v11[1] = *MEMORY[0x29EDCA608];
  v2 = [(SeymourUI_GuidedWorkoutBrickRowCellAccessibility *)self _accessibilityDescendantOfType:MEMORY[0x29ED34A70](@"SeymourUI.DownloadButton", a2)];
  accessibilityLabel = [v2 accessibilityLabel];
  if ([accessibilityLabel length])
  {
    v4 = objc_alloc(MEMORY[0x29EDC78E0]);
    v9[0] = MEMORY[0x29EDCA5F8];
    v9[1] = 3221225472;
    v9[2] = __79__SeymourUI_GuidedWorkoutBrickRowCellAccessibility__accessibilityCustomActions__block_invoke;
    v9[3] = &unk_29F2F66E0;
    v10 = v2;
    v5 = [v4 initWithName:accessibilityLabel actionHandler:v9];
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