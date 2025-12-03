@interface SmallPlayerCardViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)_accessibilitySupplementaryFooterViews;
- (unint64_t)accessibilityTraits;
@end

@implementation SmallPlayerCardViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"GameCenterUI.SmallPlayerCardView" hasInstanceMethod:@"accessibilityTitleLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"GameCenterUI.SmallPlayerCardView" hasInstanceMethod:@"accessibilitySubtitleLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"GameCenterUI.SmallPlayerCardView" hasInstanceMethod:@"accessibilityInviteButton" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"GameCenterUI.SmallPlayerCardView" hasInstanceMethod:@"accessibilityCloseButton" withFullSignature:{"@", 0}];
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = SmallPlayerCardViewAccessibility;
  return *MEMORY[0x29EDC7F70] | [(SmallPlayerCardViewAccessibility *)&v3 accessibilityTraits];
}

- (id)_accessibilitySupplementaryFooterViews
{
  array = [MEMORY[0x29EDB8DE8] array];
  v4 = [(SmallPlayerCardViewAccessibility *)self safeValueForKey:@"accessibilityInviteButton"];
  v5 = [(SmallPlayerCardViewAccessibility *)self safeValueForKey:@"accessibilityTitleLabel"];
  accessibilityLabel = [v5 accessibilityLabel];
  [v4 setAccessibilityValue:accessibilityLabel];

  [array axSafelyAddObject:v4];
  v7 = [(SmallPlayerCardViewAccessibility *)self safeValueForKey:@"accessibilityCloseButton"];
  v8 = AXGameCenterUIFrameworkLocString(@"CLOSE_BUTTON");
  [v7 setAccessibilityLabel:v8];

  accessibilityLabel2 = [v5 accessibilityLabel];
  [v7 setAccessibilityValue:accessibilityLabel2];

  [array axSafelyAddObject:v7];

  return array;
}

@end