@interface ProfileAvatarViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (_NSRange)accessibilityRowRange;
- (id)accessibilityHint;
- (id)accessibilityLabel;
- (id)automationElements;
- (unint64_t)accessibilityTraits;
@end

@implementation ProfileAvatarViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"GameCenterUI.ProfileAvatarView" hasInstanceMethod:@"initWithFrame:" withFullSignature:{"@", "{CGRect={CGPoint=dd}{CGSize=dd}}", 0}];
  [v3 validateClass:@"GameCenterUI.ProfileAvatarView" hasInstanceMethod:@"accessibilityIsEditable" withFullSignature:{"B", 0}];
  [v3 validateClass:@"GameCenterUI.PlayerProfileHeaderView"];
  [v3 validateClass:@"GameCenterUI.PlayerProfileHeaderView" hasInstanceMethod:@"accessibilityTitleLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"GameCenterUI.ProfileAvatarView" hasInstanceMethod:@"accessibilityRoundedEditButton" withFullSignature:{"@", 0}];
  [v3 validateClass:@"GameCenterUI.ProfileAvatarView" hasInstanceMethod:@"accessibilityProfileEditButtonBackground" withFullSignature:{"@", 0}];
  [v3 validateClass:@"GameCenterUI.ProfileAvatarView" hasInstanceMethod:@"accessibilityProfileEditLabel" withFullSignature:{"@", 0}];
}

- (unint64_t)accessibilityTraits
{
  if ([(ProfileAvatarViewAccessibility *)self _axIsEditable])
  {
    return *MEMORY[0x29EDC7F70];
  }

  v4.receiver = self;
  v4.super_class = ProfileAvatarViewAccessibility;
  return [(ProfileAvatarViewAccessibility *)&v4 accessibilityTraits];
}

- (id)accessibilityLabel
{
  v2 = [(ProfileAvatarViewAccessibility *)self _accessibilityAncestorIsKindOf:MEMORY[0x29C2D7090](@"GameCenterUI.PlayerProfileHeaderView", a2)];
  v3 = [v2 safeValueForKey:@"accessibilityTitleLabel"];
  v4 = MEMORY[0x29EDBA0F8];
  v5 = AXGameCenterUIFrameworkLocString(@"PLAYER_PHOTO_BUTTON_OF");
  v6 = [v3 accessibilityLabel];
  v7 = [v4 stringWithFormat:v5, v6];

  return v7;
}

- (id)accessibilityHint
{
  if ([(ProfileAvatarViewAccessibility *)self _axIsEditable])
  {
    v3 = AXGameCenterUIFrameworkLocString(@"PLAYER_PHOTO_BUTTON_HINT");
  }

  else
  {
    v5.receiver = self;
    v5.super_class = ProfileAvatarViewAccessibility;
    v3 = [(ProfileAvatarViewAccessibility *)&v5 accessibilityHint];
  }

  return v3;
}

- (_NSRange)accessibilityRowRange
{
  v2 = 0x7FFFFFFFLL;
  v3 = 0;
  result.length = v3;
  result.location = v2;
  return result;
}

- (id)automationElements
{
  v12.receiver = self;
  v12.super_class = ProfileAvatarViewAccessibility;
  v3 = [(ProfileAvatarViewAccessibility *)&v12 automationElements];
  v4 = [v3 mutableCopy];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = [MEMORY[0x29EDB8DE8] array];
  }

  v7 = v6;

  v8 = [(ProfileAvatarViewAccessibility *)self safeValueForKey:@"accessibilityRoundedEditButton"];
  if ([v8 _accessibilityViewIsVisible])
  {
    [v8 _setIsAccessibilityElementBlock:&__block_literal_global_4];
    [v8 _setAccessibilityLabelBlock:&__block_literal_global_326];
    [v8 _setAccessibilityTraitsBlock:&__block_literal_global_332];
    [v7 axSafelyAddObject:v8];
  }

  v9 = [(ProfileAvatarViewAccessibility *)self safeValueForKey:@"accessibilityProfileEditButtonBackground"];
  if ([v9 _accessibilityViewIsVisible])
  {
    v10 = [(ProfileAvatarViewAccessibility *)self safeValueForKey:@"accessibilityProfileEditLabel"];
    [v10 _setIsAccessibilityElementBlock:&__block_literal_global_334];
    [v10 _setAccessibilityLabelBlock:&__block_literal_global_336];
    [v10 _setAccessibilityTraitsBlock:&__block_literal_global_338];
    [v7 axSafelyAddObject:v10];
  }

  return v7;
}

@end