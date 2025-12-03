@interface FCUIActivityControlAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)_accessibilityMenuItemElements;
- (id)_accessibilitySupplementaryFooterViews;
- (id)accessibilityCustomActions;
- (id)automationElements;
- (unint64_t)accessibilityTraits;
@end

@implementation FCUIActivityControlAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"FCUIActivityControl" hasInstanceVariable:@"_activityTitleLabel" withType:"UILabel"];
  [validationsCopy validateClass:@"FCUIActivityControl" hasInstanceVariable:@"_detailLabel" withType:"UILabel"];
  [validationsCopy validateClass:@"FCUIActivityControl" hasInstanceVariable:@"_optionsButton" withType:"FCUIOptionsControl"];
  [validationsCopy validateClass:@"FCUIActivityControl" isKindOfClass:@"UIControl"];
  [validationsCopy validateClass:@"FCUIActivityControl" hasInstanceMethod:@"isExpanded" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"FCUIActivityControl" hasInstanceVariable:@"_menuView" withType:"FCUIActivityControlMenuView"];
  [validationsCopy validateClass:@"FCUIActivityControlMenuView" hasInstanceMethod:@"menuItemElements" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"FCUIActivityControlMenuView" hasInstanceVariable:@"_footerView" withType:"_FCUIActivityControlMenuFooterView"];
  [validationsCopy validateClass:@"FCUIActivityControl" hasInstanceMethod:@"optionsAction" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"FCUIOptionsControl" hasInstanceMethod:@"controlType" withFullSignature:{"q", 0}];
}

- (unint64_t)accessibilityTraits
{
  v2 = *MEMORY[0x29EDC7F70];
  v3 = [(FCUIActivityControlAccessibility *)self safeBoolForKey:@"selected"];
  v4 = *MEMORY[0x29EDC7FC0];
  if (!v3)
  {
    v4 = 0;
  }

  return v4 | v2;
}

- (id)accessibilityCustomActions
{
  if ([(FCUIActivityControlAccessibility *)self _accessibilityIsExpanded])
  {
    v3 = @"collapse.options.menu";
  }

  else
  {
    v3 = @"show.more.options";
  }

  v4 = accessibilityLocalizedString(v3);
  v5 = [(FCUIActivityControlAccessibility *)self safeValueForKey:@"_optionsButton"];
  v6 = [v5 safeIntegerForKey:@"controlType"];

  if (v6)
  {
    v7 = 0;
  }

  else
  {
    objc_initWeak(&location, self);
    v8 = objc_alloc(MEMORY[0x29EDC78E0]);
    v11[0] = MEMORY[0x29EDCA5F8];
    v11[1] = 3221225472;
    v11[2] = __62__FCUIActivityControlAccessibility_accessibilityCustomActions__block_invoke;
    v11[3] = &unk_29F2BF830;
    objc_copyWeak(&v12, &location);
    v7 = [v8 initWithName:v4 actionHandler:v11];
    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }

  v9 = [MEMORY[0x29EDB8D80] axArrayByIgnoringNilElementsWithCount:{1, v7}];

  return v9;
}

uint64_t __62__FCUIActivityControlAccessibility_accessibilityCustomActions__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained safeValueForKey:@"optionsAction"];

  v12 = v3;
  v4 = v3;
  AXPerformSafeBlock();
  v5 = objc_loadWeakRetained((a1 + 32));
  v6 = [v5 _accessibilityIsExpanded];
  v7 = objc_loadWeakRetained((a1 + 32));
  v8 = v7;
  if (v6)
  {
    v9 = [v7 _accessibilityMenuItemElements];
    v10 = [v9 firstObject];

    v8 = v10;
  }

  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], v8);
  return 1;
}

- (id)_accessibilitySupplementaryFooterViews
{
  array = [MEMORY[0x29EDB8DE8] array];
  if ([(FCUIActivityControlAccessibility *)self _accessibilityIsExpanded])
  {
    _accessibilityMenuItemElements = [(FCUIActivityControlAccessibility *)self _accessibilityMenuItemElements];
    [array axSafelyAddObjectsFromArray:_accessibilityMenuItemElements];

    _accessibilityMenuView = [(FCUIActivityControlAccessibility *)self _accessibilityMenuView];
    v6 = [_accessibilityMenuView safeValueForKey:@"_footerView"];

    [array axSafelyAddObject:v6];
  }

  return array;
}

- (id)automationElements
{
  v2 = MEMORY[0x29EDB8D80];
  v3 = [(FCUIActivityControlAccessibility *)self safeValueForKey:@"_optionsButton"];
  v4 = [v2 axArrayByIgnoringNilElementsWithCount:{1, v3}];

  return v4;
}

- (id)_accessibilityMenuItemElements
{
  _accessibilityMenuView = [(FCUIActivityControlAccessibility *)self _accessibilityMenuView];
  v3 = [_accessibilityMenuView safeArrayForKey:@"menuItemElements"];

  return v3;
}

@end