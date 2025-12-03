@interface EditorialCardCollectionViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)_accessibilitySupplementaryFooterViews;
- (id)accessibilityCustomActions;
- (id)accessibilityLabel;
- (id)automationElements;
@end

@implementation EditorialCardCollectionViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"Arcade.EditorialCardCollectionViewCell" hasInstanceMethod:@"accessibilityCaptionLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"Arcade.EditorialCardCollectionViewCell" hasInstanceMethod:@"accessibilityTitleLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"Arcade.EditorialCardCollectionViewCell" hasInstanceMethod:@"accessibilitySubtitleLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"Arcade.EditorialCardCollectionViewCell" hasInstanceMethod:@"accessibilityAppPromotionFormattedDateView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"Arcade.AppPromotionFormattedDateView" hasInstanceMethod:@"accessibilityTextLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"Arcade.EditorialCardCollectionViewCell" hasInstanceMethod:@"accessibilityLockupView" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v3 = [(EditorialCardCollectionViewCellAccessibility *)self safeValueForKey:@"accessibilityAppPromotionFormattedDateView"];
  v4 = v3;
  if (v3 && ([v3 accessibilityElementsHidden] & 1) == 0)
  {
    v6 = [v4 safeValueForKey:@"accessibilityTextLabel"];
    v8 = [(EditorialCardCollectionViewCellAccessibility *)self _accessibilityStringForLabelKeyValues:@"accessibilityTitleLabel, accessibilitySubtitleLabel, accessibilityLockupView"];
    v5 = __UIAXStringForVariables();
  }

  else
  {
    v5 = [(EditorialCardCollectionViewCellAccessibility *)self _accessibilityStringForLabelKeyValues:@"accessibilityCaptionLabel, accessibilityTitleLabel, accessibilitySubtitleLabel, accessibilityLockupView"];
  }

  return v5;
}

- (id)automationElements
{
  v2 = MEMORY[0x29EDB8D80];
  v3 = [(EditorialCardCollectionViewCellAccessibility *)self safeValueForKey:@"accessibilityLockupView"];
  v4 = [v2 axArrayByIgnoringNilElementsWithCount:{1, v3}];

  return v4;
}

- (id)accessibilityCustomActions
{
  v12[1] = *MEMORY[0x29EDCA608];
  v11.receiver = self;
  v11.super_class = EditorialCardCollectionViewCellAccessibility;
  accessibilityCustomActions = [(EditorialCardCollectionViewCellAccessibility *)&v11 accessibilityCustomActions];
  v4 = [(EditorialCardCollectionViewCellAccessibility *)self safeUIViewForKey:@"accessibilityLockupView"];
  if ([v4 _accessibilityViewIsVisible])
  {
    v5 = objc_alloc(MEMORY[0x29EDC78E0]);
    accessibilityLabel = [v4 accessibilityLabel];
    v7 = [v5 initWithName:accessibilityLabel actionHandler:&__block_literal_global_3];

    [v4 accessibilityActivationPoint];
    [v7 setActivationPoint:?];
    if (accessibilityCustomActions)
    {
      v8 = [accessibilityCustomActions arrayByAddingObject:v7];

      accessibilityCustomActions = v8;
    }

    else
    {
      v12[0] = v7;
      accessibilityCustomActions = [MEMORY[0x29EDB8D80] arrayWithObjects:v12 count:1];
    }
  }

  v9 = *MEMORY[0x29EDCA608];

  return accessibilityCustomActions;
}

- (id)_accessibilitySupplementaryFooterViews
{
  v2 = [(EditorialCardCollectionViewCellAccessibility *)self safeUIViewForKey:@"accessibilityLockupView"];
  _accessibilitySupplementaryFooterViews = [v2 _accessibilitySupplementaryFooterViews];

  return _accessibilitySupplementaryFooterViews;
}

@end