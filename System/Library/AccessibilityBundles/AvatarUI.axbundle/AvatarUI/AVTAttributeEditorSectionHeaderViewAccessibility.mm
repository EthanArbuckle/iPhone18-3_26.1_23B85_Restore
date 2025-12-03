@interface AVTAttributeEditorSectionHeaderViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)_accessibilitySupplementaryHeaderViews;
- (unint64_t)accessibilityTraits;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)createAccessoryButtonIfNeeded;
@end

@implementation AVTAttributeEditorSectionHeaderViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"AVTAttributeEditorSectionHeaderView" hasInstanceMethod:@"displayString" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"AVTAttributeEditorSectionHeaderView" hasInstanceMethod:@"accessoryButton" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"AVTAttributeEditorSectionHeaderView" hasInstanceMethod:@"createAccessoryButtonIfNeeded" withFullSignature:{"v", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v8.receiver = self;
  v8.super_class = AVTAttributeEditorSectionHeaderViewAccessibility;
  [(AVTAttributeEditorSectionHeaderViewAccessibility *)&v8 _accessibilityLoadAccessibilityInformation];
  LOBYTE(location) = 0;
  objc_opt_class();
  v3 = [(AVTAttributeEditorSectionHeaderViewAccessibility *)self safeUIViewForKey:@"accessoryButton"];
  v4 = __UIAccessibilityCastAsClass();

  objc_initWeak(&location, v4);
  v5[0] = MEMORY[0x29EDCA5F8];
  v5[1] = 3221225472;
  v5[2] = __94__AVTAttributeEditorSectionHeaderViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke;
  v5[3] = &unk_29F2A3978;
  objc_copyWeak(&v6, &location);
  [v4 _setAccessibilityLabelBlock:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

id __94__AVTAttributeEditorSectionHeaderViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained titleLabel];
  v3 = [v2 text];

  return v3;
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = AVTAttributeEditorSectionHeaderViewAccessibility;
  return *MEMORY[0x29EDC7F80] | [(AVTAttributeEditorSectionHeaderViewAccessibility *)&v3 accessibilityTraits];
}

- (id)_accessibilitySupplementaryHeaderViews
{
  v10[1] = *MEMORY[0x29EDCA608];
  v3 = [(AVTAttributeEditorSectionHeaderViewAccessibility *)self safeValueForKey:@"accessoryButton"];
  v4 = v3;
  if (v3)
  {
    v10[0] = v3;
    _accessibilitySupplementaryHeaderViews = [MEMORY[0x29EDB8D80] arrayWithObjects:v10 count:1];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = AVTAttributeEditorSectionHeaderViewAccessibility;
    _accessibilitySupplementaryHeaderViews = [(AVTAttributeEditorSectionHeaderViewAccessibility *)&v9 _accessibilitySupplementaryHeaderViews];
  }

  v6 = _accessibilitySupplementaryHeaderViews;

  v7 = *MEMORY[0x29EDCA608];

  return v6;
}

- (void)createAccessoryButtonIfNeeded
{
  v3.receiver = self;
  v3.super_class = AVTAttributeEditorSectionHeaderViewAccessibility;
  [(AVTAttributeEditorSectionHeaderViewAccessibility *)&v3 createAccessoryButtonIfNeeded];
  [(AVTAttributeEditorSectionHeaderViewAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end