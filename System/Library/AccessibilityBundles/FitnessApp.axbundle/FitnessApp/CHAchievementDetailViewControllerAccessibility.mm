@interface CHAchievementDetailViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_axAnnotateAchievementView;
- (void)viewDidLoad;
@end

@implementation CHAchievementDetailViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"CHAchievementDetailViewController" hasInstanceVariable:@"_achievement" withType:"ACHAchievement"];
  [v3 validateClass:@"CHAchievementDetailViewController" hasInstanceMethod:@"label" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CHAchievementDetailViewController" hasInstanceMethod:@"badgeContainer" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CHAchievementDetailViewController" hasInstanceMethod:@"viewDidLoad" withFullSignature:{"v", 0}];
  [v3 validateClass:@"CHAchievementDetailViewController" hasInstanceVariable:@"_locProvider" withType:"ACHAchievementLocalizationProvider"];
  [v3 validateClass:@"ACHAchievementLocalizationProvider" hasInstanceMethod:@"titleForAchievement:" withFullSignature:{"@", "@", 0}];
}

- (void)_axAnnotateAchievementView
{
  v3 = [(CHAchievementDetailViewControllerAccessibility *)self safeValueForKey:@"_achievement"];
  v24 = 0;
  objc_opt_class();
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy_;
  v22 = __Block_byref_object_dispose_;
  v23 = 0;
  v4 = v3;
  AXPerformSafeBlock();
  v5 = v19[5];

  _Block_object_dispose(&v18, 8);
  v6 = __UIAccessibilityCastAsClass();

  if (v24 == 1)
  {
    goto LABEL_8;
  }

  if ([v6 length])
  {
    v7 = [(CHAchievementDetailViewControllerAccessibility *)self safeUIViewForKey:@"badgeContainer"];
    [v7 setIsAccessibilityElement:1];
    v8 = accessibilityLocalizedString(@"achievement.badge.format");
    v9 = [NSString stringWithFormat:v8, v6];
    [v7 setAccessibilityLabel:v9];

    [v7 _accessibilitySetViewIsVisible:1];
    [v7 _accessibilitySetOverridesInvisibility:1];
  }

  LOBYTE(v18) = 0;
  objc_opt_class();
  v10 = [(CHAchievementDetailViewControllerAccessibility *)self safeValueForKey:@"label"];
  v11 = __UIAccessibilityCastAsClass();

  if (v18 == 1)
  {
LABEL_8:
    abort();
  }

  v12 = [v11 text];
  v13 = [v12 length];

  if (v13)
  {
    v14 = [v11 text];
    v15 = +[NSCharacterSet newlineCharacterSet];
    v16 = [v14 componentsSeparatedByCharactersInSet:v15];

    v17 = AXLabelForElements();
    [v11 setAccessibilityLabel:v17];
  }
}

void __76__CHAchievementDetailViewControllerAccessibility__axAnnotateAchievementView__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) safeValueForKey:@"_locProvider"];
  v2 = [v5 titleForAchievement:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v3.receiver = self;
  v3.super_class = CHAchievementDetailViewControllerAccessibility;
  [(CHAchievementDetailViewControllerAccessibility *)&v3 _accessibilityLoadAccessibilityInformation];
  [(CHAchievementDetailViewControllerAccessibility *)self _axAnnotateAchievementView];
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = CHAchievementDetailViewControllerAccessibility;
  [(CHAchievementDetailViewControllerAccessibility *)&v3 viewDidLoad];
  [(CHAchievementDetailViewControllerAccessibility *)self _axAnnotateAchievementView];
}

@end