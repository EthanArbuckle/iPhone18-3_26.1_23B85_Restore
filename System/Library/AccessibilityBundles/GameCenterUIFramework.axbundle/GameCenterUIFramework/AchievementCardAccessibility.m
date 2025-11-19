@interface AchievementCardAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
@end

@implementation AchievementCardAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"GameCenterUI.AchievementCard" hasInstanceMethod:@"accessibilityBadge" withFullSignature:{"@", 0}];
  [v3 validateClass:@"GameCenterUI.AchievementBadge" hasInstanceMethod:@"accessibilityIsAchievementLocked" withFullSignature:{"B", 0}];
  [v3 validateClass:@"GameCenterUI.AchievementBadge" hasInstanceMethod:@"accessibilityIsAchievementCompleted" withFullSignature:{"B", 0}];
  [v3 validateClass:@"GameCenterUI.AchievementBadge" hasInstanceMethod:@"accessibilityIsAchievementInProgress" withFullSignature:{"B", 0}];
  [v3 validateClass:@"GameCenterUI.AchievementCard" hasInstanceMethod:@"accessibilityTitleLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"GameCenterUI.AchievementCard" hasInstanceMethod:@"accessibilitySubtitleLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"GameCenterUI.AchievementCard" hasInstanceMethod:@"accessibilityAchievementCompletedDate" withFullSignature:{"@", 0}];
  [v3 validateClass:@"GameCenterUI.AchievementBadge" hasInstanceMethod:@"accessibilityProgress" withFullSignature:{"d", 0}];
}

- (id)accessibilityLabel
{
  v3 = [(AchievementCardAccessibility *)self safeValueForKey:@"accessibilityBadge"];
  v4 = [v3 safeBoolForKey:@"accessibilityIsAchievementLocked"];
  v5 = [v3 safeBoolForKey:@"accessibilityIsAchievementCompleted"];
  v6 = [v3 safeBoolForKey:@"accessibilityIsAchievementInProgress"];
  v7 = [(AchievementCardAccessibility *)self safeValueForKey:@"accessibilityTitleLabel"];
  v8 = [(AchievementCardAccessibility *)self safeValueForKey:@"accessibilitySubtitleLabel"];
  objc_opt_class();
  v9 = [(AchievementCardAccessibility *)self safeValueForKey:@"accessibilityAchievementCompletedDate"];
  v10 = __UIAccessibilityCastAsClass();

  [v3 safeCGFloatForKey:@"accessibilityProgress"];
  if (v4)
  {
    v12 = AXGameCenterUIFrameworkLocString(@"LOCKED");
    v13 = [v7 accessibilityLabel];
    v14 = [v8 accessibilityLabel];
    v15 = __UIAXStringForVariables();
LABEL_8:

    goto LABEL_9;
  }

  if (v5)
  {
    v12 = AXGameCenterUIFrameworkLocString(@"COMPLETED");
    v16 = AXDateStringForFormat();
LABEL_7:
    v13 = v16;
    v14 = [v7 accessibilityLabel];
    v20 = [v8 accessibilityLabel];
    v15 = __UIAXStringForVariables();

    goto LABEL_8;
  }

  if (v6)
  {
    v17 = v11;
    v12 = AXGameCenterUIFrameworkLocString(@"IN_PROGRESS");
    v18 = v17 / 100.0;
    v16 = MEMORY[0x29C2D70B0](0, v18);
    goto LABEL_7;
  }

  v12 = [v7 accessibilityLabel];
  v13 = [v8 accessibilityLabel];
  v15 = __UIAXStringForVariables();
LABEL_9:

  return v15;
}

@end