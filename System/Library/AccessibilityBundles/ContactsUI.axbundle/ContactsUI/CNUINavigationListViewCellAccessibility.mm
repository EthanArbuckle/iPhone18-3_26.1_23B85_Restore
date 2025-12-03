@interface CNUINavigationListViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_accessibilityToggleSelection;
- (id)accessibilityCustomActions;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation CNUINavigationListViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"CNUINavigationListViewCell" hasInstanceMethod:@"accessoryImageView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CNUINavigationListViewCell" hasProperty:@"accessoryControlExpanded" customGetter:@"isAccessoryControlExpanded" customSetter:0 withType:"B"];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v4.receiver = self;
  v4.super_class = CNUINavigationListViewCellAccessibility;
  [(CNUINavigationListViewCellAccessibility *)&v4 _accessibilityLoadAccessibilityInformation];
  v3 = [(CNUINavigationListViewCellAccessibility *)self safeValueForKey:@"accessoryImageView"];
  [v3 setIsAccessibilityElement:0];
}

- (id)accessibilityCustomActions
{
  array = [MEMORY[0x29EDB8DE8] array];
  v13.receiver = self;
  v13.super_class = CNUINavigationListViewCellAccessibility;
  accessibilityCustomActions = [(CNUINavigationListViewCellAccessibility *)&v13 accessibilityCustomActions];
  [array axSafelyAddObjectsFromArray:accessibilityCustomActions];

  v5 = [(CNUINavigationListViewCellAccessibility *)self safeUIViewForKey:@"accessoryImageView"];
  _accessibilityViewIsVisible = [v5 _accessibilityViewIsVisible];

  if (_accessibilityViewIsVisible)
  {
    v7 = [(CNUINavigationListViewCellAccessibility *)self safeBoolForKey:@"accessoryControlExpanded"];
    v8 = objc_alloc(MEMORY[0x29EDC78E0]);
    if (v7)
    {
      v9 = @"collapse.selection.action";
    }

    else
    {
      v9 = @"expand.selection.action";
    }

    v10 = accessibilityLocalizedString(v9);
    v11 = [v8 initWithName:v10 target:self selector:sel__accessibilityToggleSelection];

    [array axSafelyAddObject:v11];
  }

  return array;
}

- (BOOL)_accessibilityToggleSelection
{
  v2 = [(CNUINavigationListViewCellAccessibility *)self _accessibilityAncestorIsKindOf:objc_opt_class()];
  v3 = [v2 safeValueForKey:@"delegate"];
  objc_opt_class();
  __UIAccessibilityCastAsSafeCategory();
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v6 = v10 = 0;
  AXPerformSafeBlock();
  v4 = *(v8 + 24);

  _Block_object_dispose(&v7, 8);
  return v4;
}

void __72__CNUINavigationListViewCellAccessibility__accessibilityToggleSelection__block_invoke(uint64_t a1)
{
  *(*(*(a1 + 48) + 8) + 24) = [*(a1 + 32) _accessibilityToggleItemForCell:*(a1 + 40)];
  if (*(*(*(a1 + 48) + 8) + 24) == 1)
  {
    v2 = *MEMORY[0x29EDC7F10];
    v3 = *(a1 + 40);

    UIAccessibilityPostNotification(v2, v3);
  }
}

@end