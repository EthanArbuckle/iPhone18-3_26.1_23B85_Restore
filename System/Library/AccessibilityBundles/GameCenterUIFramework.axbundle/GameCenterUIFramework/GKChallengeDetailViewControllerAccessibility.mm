@interface GKChallengeDetailViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)_axElementsOfView;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)updateIconViewWithSubView:(id)view;
@end

@implementation GKChallengeDetailViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"GKChallengeDetailViewController" hasInstanceMethod:@"iconView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"GKChallengeDetailViewController" isKindOfClass:@"UIViewController"];
  [validationsCopy validateClass:@"GKChallengeDetailViewController" hasInstanceMethod:@"categoryLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"GKChallengeDetailViewController" hasInstanceMethod:@"titleLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"GKChallengeDetailViewController" hasInstanceMethod:@"descriptionLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"GKChallengeDetailViewController" hasInstanceMethod:@"playerAvatarView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"GKChallengeDetailViewController" hasInstanceMethod:@"challengeByNameLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"GKChallengeDetailViewController" hasInstanceMethod:@"shouldShowPlay" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"GKChallengeDetailViewController" hasInstanceMethod:@"playNowButton" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"GKChallengeDetailViewController" hasInstanceMethod:@"declineButton" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"GKChallengeDetailViewController" hasInstanceMethod:@"updateIconViewWithSubView:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"GameCenterUI.AchievementBadge"];
  [validationsCopy validateClass:@"GameCenterUI.AchievementBadge" hasInstanceMethod:@"accessibilityIsAchievementLocked" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"GameCenterUI.AchievementBadge" hasInstanceMethod:@"accessibilityIsAchievementCompleted" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"GameCenterUI.AchievementBadge" hasInstanceMethod:@"accessibilityIsAchievementInProgress" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"GameCenterUI.AchievementBadge" hasInstanceMethod:@"accessibilityProgress" withFullSignature:{"d", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v25.receiver = self;
  v25.super_class = GKChallengeDetailViewControllerAccessibility;
  [(GKChallengeDetailViewControllerAccessibility *)&v25 _accessibilityLoadAccessibilityInformation];
  v3 = [(GKChallengeDetailViewControllerAccessibility *)self safeValueForKey:@"iconView"];
  v4 = [v3 _accessibilityDescendantOfType:MEMORY[0x29C2D7090](@"GameCenterUI.AchievementBadge")];
  [v3 _setIsAccessibilityElementBlock:&__block_literal_global_3];
  v5 = [v4 safeBoolForKey:@"accessibilityIsAchievementLocked"];
  v6 = [v4 safeBoolForKey:@"accessibilityIsAchievementCompleted"];
  v7 = [v4 safeBoolForKey:@"accessibilityIsAchievementInProgress"];
  [v4 safeCGFloatForKey:@"accessibilityProgress"];
  if (v5)
  {
    v9 = @"LOCKED";
LABEL_5:
    v10 = AXGameCenterUIFrameworkLocString(v9);
    v11 = __UIAXStringForVariables();
    goto LABEL_6;
  }

  if (v6)
  {
    v9 = @"COMPLETED";
    goto LABEL_5;
  }

  if (!v7)
  {
    v11 = 0;
    goto LABEL_7;
  }

  v15 = v8;
  v10 = AXGameCenterUIFrameworkLocString(@"IN_PROGRESS");
  v16 = v15 / 100.0;
  v17 = MEMORY[0x29C2D70B0](0, v16);
  v11 = __UIAXStringForVariables();

LABEL_6:
LABEL_7:
  v23[0] = MEMORY[0x29EDCA5F8];
  v23[1] = 3221225472;
  v23[2] = __90__GKChallengeDetailViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_2;
  v23[3] = &unk_29F2C08B8;
  v12 = v11;
  v24 = v12;
  [v3 _setAccessibilityLabelBlock:v23];
  v21[0] = MEMORY[0x29EDCA5F8];
  v21[1] = 3221225472;
  v21[2] = __90__GKChallengeDetailViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_3;
  v21[3] = &unk_29F2C08E0;
  v13 = v4;
  v22 = v13;
  [v3 _setAccessibilityPathBlock:v21];
  objc_initWeak(&location, self);
  v14 = [(GKChallengeDetailViewControllerAccessibility *)self safeValueForKey:@"view"];
  v18[0] = MEMORY[0x29EDCA5F8];
  v18[1] = 3221225472;
  v18[2] = __90__GKChallengeDetailViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_4;
  v18[3] = &unk_29F2C0908;
  objc_copyWeak(&v19, &location);
  [v14 _setAccessibilityElementsBlock:v18];
  objc_destroyWeak(&v19);

  objc_destroyWeak(&location);
}

id __90__GKChallengeDetailViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained _axElementsOfView];

  return v2;
}

- (id)_axElementsOfView
{
  _accessibilityChallengeDetailElements = [(GKChallengeDetailViewControllerAccessibility *)self _accessibilityChallengeDetailElements];
  if (!_accessibilityChallengeDetailElements)
  {
    _accessibilityChallengeDetailElements = [MEMORY[0x29EDB8DE8] array];
    v20 = [(GKChallengeDetailViewControllerAccessibility *)self safeValueForKey:@"iconView"];
    [_accessibilityChallengeDetailElements axSafelyAddObject:?];
    v4 = [(GKChallengeDetailViewControllerAccessibility *)self safeValueForKey:@"categoryLabel"];
    v5 = [(GKChallengeDetailViewControllerAccessibility *)self safeValueForKey:@"titleLabel"];
    v6 = [(GKChallengeDetailViewControllerAccessibility *)self safeValueForKey:@"descriptionLabel"];
    v19 = [MEMORY[0x29EDB8D80] axArrayByIgnoringNilElementsWithCount:{3, v4, v5, v6}];
    v7 = [objc_alloc(MEMORY[0x29EDC7318]) initWithAccessibilityContainer:self representedElements:v19];
    v23[0] = MEMORY[0x29EDCA5F8];
    v23[1] = 3221225472;
    v23[2] = __65__GKChallengeDetailViewControllerAccessibility__axElementsOfView__block_invoke;
    v23[3] = &unk_29F2C0930;
    v18 = v4;
    v24 = v18;
    v8 = v5;
    v25 = v8;
    v9 = v6;
    v26 = v9;
    [v7 _setAccessibilityLabelBlock:v23];
    [v7 _setIsAccessibilityElementBlock:&__block_literal_global_362];
    [_accessibilityChallengeDetailElements axSafelyAddObject:v7];
    v10 = [(GKChallengeDetailViewControllerAccessibility *)self safeValueForKey:@"playerAvatarView"];
    v11 = [(GKChallengeDetailViewControllerAccessibility *)self safeValueForKey:@"challengeByNameLabel"];
    v12 = [MEMORY[0x29EDB8D80] axArrayByIgnoringNilElementsWithCount:{2, v10, v11}];
    v13 = [objc_alloc(MEMORY[0x29EDC7318]) initWithAccessibilityContainer:self representedElements:v12];
    v21[0] = MEMORY[0x29EDCA5F8];
    v21[1] = 3221225472;
    v21[2] = __65__GKChallengeDetailViewControllerAccessibility__axElementsOfView__block_invoke_3;
    v21[3] = &unk_29F2C08B8;
    v22 = v11;
    v14 = v11;
    [v13 _setAccessibilityLabelBlock:v21];
    [v13 _setIsAccessibilityElementBlock:&__block_literal_global_364];
    [_accessibilityChallengeDetailElements axSafelyAddObject:v13];
    if ([(GKChallengeDetailViewControllerAccessibility *)self safeBoolForKey:@"shouldShowPlay"])
    {
      v15 = [(GKChallengeDetailViewControllerAccessibility *)self safeValueForKey:@"playNowButton"];
      [_accessibilityChallengeDetailElements axSafelyAddObject:v15];
    }

    v16 = [(GKChallengeDetailViewControllerAccessibility *)self safeValueForKey:@"declineButton"];
    [_accessibilityChallengeDetailElements axSafelyAddObject:v16];
    [(GKChallengeDetailViewControllerAccessibility *)self _setAccessibilityChallengeDetailElements:_accessibilityChallengeDetailElements];
  }

  return _accessibilityChallengeDetailElements;
}

id __65__GKChallengeDetailViewControllerAccessibility__axElementsOfView__block_invoke(id *a1)
{
  v2 = [a1[4] accessibilityLabel];
  v3 = [a1[5] accessibilityLabel];
  v6 = [a1[6] accessibilityLabel];
  v4 = __UIAXStringForVariables();

  return v4;
}

id __65__GKChallengeDetailViewControllerAccessibility__axElementsOfView__block_invoke_3(uint64_t a1)
{
  v1 = [*(a1 + 32) accessibilityLabel];
  v2 = __UIAXStringForVariables();

  return v2;
}

- (void)updateIconViewWithSubView:(id)view
{
  v4.receiver = self;
  v4.super_class = GKChallengeDetailViewControllerAccessibility;
  [(GKChallengeDetailViewControllerAccessibility *)&v4 updateIconViewWithSubView:view];
  [(GKChallengeDetailViewControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end