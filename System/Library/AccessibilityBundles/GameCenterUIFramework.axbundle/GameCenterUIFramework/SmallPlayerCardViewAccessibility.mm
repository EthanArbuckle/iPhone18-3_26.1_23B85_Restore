@interface SmallPlayerCardViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)_accessibilitySupplementaryFooterViews;
- (unint64_t)accessibilityTraits;
@end

@implementation SmallPlayerCardViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"GameCenterUI.SmallPlayerCardView" hasInstanceMethod:@"accessibilityTitleLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"GameCenterUI.SmallPlayerCardView" hasInstanceMethod:@"accessibilitySubtitleLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"GameCenterUI.SmallPlayerCardView" hasInstanceMethod:@"accessibilityInviteButton" withFullSignature:{"@", 0}];
  [v3 validateClass:@"GameCenterUI.SmallPlayerCardView" hasInstanceMethod:@"accessibilityCloseButton" withFullSignature:{"@", 0}];
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = SmallPlayerCardViewAccessibility;
  return *MEMORY[0x29EDC7F70] | [(SmallPlayerCardViewAccessibility *)&v3 accessibilityTraits];
}

- (id)_accessibilitySupplementaryFooterViews
{
  v3 = [MEMORY[0x29EDB8DE8] array];
  v4 = [(SmallPlayerCardViewAccessibility *)self safeValueForKey:@"accessibilityInviteButton"];
  v5 = [(SmallPlayerCardViewAccessibility *)self safeValueForKey:@"accessibilityTitleLabel"];
  v6 = [v5 accessibilityLabel];
  [v4 setAccessibilityValue:v6];

  [v3 axSafelyAddObject:v4];
  v7 = [(SmallPlayerCardViewAccessibility *)self safeValueForKey:@"accessibilityCloseButton"];
  v8 = AXGameCenterUIFrameworkLocString(@"CLOSE_BUTTON");
  [v7 setAccessibilityLabel:v8];

  v9 = [v5 accessibilityLabel];
  [v7 setAccessibilityValue:v9];

  [v3 axSafelyAddObject:v7];

  return v3;
}

@end