@interface EditorialCardCollectionViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)_accessibilitySupplementaryFooterViews;
- (id)accessibilityCustomActions;
- (id)accessibilityLabel;
- (id)automationElements;
@end

@implementation EditorialCardCollectionViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"ProductPageExtension.EditorialCardCollectionViewCell" hasInstanceMethod:@"accessibilityCaptionLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"ProductPageExtension.EditorialCardCollectionViewCell" hasInstanceMethod:@"accessibilityTitleLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"ProductPageExtension.EditorialCardCollectionViewCell" hasInstanceMethod:@"accessibilitySubtitleLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"ProductPageExtension.EditorialCardCollectionViewCell" hasInstanceMethod:@"accessibilityLockupView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"ProductPageExtension.EditorialCardCollectionViewCell" hasInstanceMethod:@"accessibilityAppPromotionFormattedDateView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"ProductPageExtension.AppPromotionFormattedDateView" hasInstanceMethod:@"accessibilityTextLabel" withFullSignature:{"@", 0}];
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
  v3 = [(EditorialCardCollectionViewCellAccessibility *)&v11 accessibilityCustomActions];
  v4 = [(EditorialCardCollectionViewCellAccessibility *)self safeUIViewForKey:@"accessibilityLockupView"];
  if ([v4 _accessibilityViewIsVisible])
  {
    v5 = objc_alloc(MEMORY[0x29EDC78E0]);
    v6 = [v4 accessibilityLabel];
    v7 = [v5 initWithName:v6 actionHandler:&__block_literal_global_2];

    [v4 accessibilityActivationPoint];
    [v7 setActivationPoint:?];
    if (v3)
    {
      v8 = [v3 arrayByAddingObject:v7];

      v3 = v8;
    }

    else
    {
      v12[0] = v7;
      v3 = [MEMORY[0x29EDB8D80] arrayWithObjects:v12 count:1];
    }
  }

  v9 = *MEMORY[0x29EDCA608];

  return v3;
}

- (id)_accessibilitySupplementaryFooterViews
{
  v2 = [(EditorialCardCollectionViewCellAccessibility *)self safeUIViewForKey:@"accessibilityLockupView"];
  v3 = [v2 _accessibilitySupplementaryFooterViews];

  return v3;
}

@end