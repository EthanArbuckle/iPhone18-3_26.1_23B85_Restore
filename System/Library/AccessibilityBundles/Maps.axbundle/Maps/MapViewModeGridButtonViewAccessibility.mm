@interface MapViewModeGridButtonViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityCustomActions;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation MapViewModeGridButtonViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"MapViewModeGridButtonView" hasInstanceVariable:@"_titleLabel" withType:"UILabel"];
  [validationsCopy validateClass:@"MapViewModeGridButtonView" hasInstanceMethod:@"viewModel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MapViewModeGridButtonViewModel" hasInstanceMethod:@"selected" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"MapViewModeGridButtonViewModel" hasInstanceMethod:@"overflowMenu" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v2 = [(MapViewModeGridButtonViewAccessibility *)self safeUIViewForKey:@"_titleLabel"];
  accessibilityLabel = [v2 accessibilityLabel];

  return accessibilityLabel;
}

- (unint64_t)accessibilityTraits
{
  v2 = *MEMORY[0x29EDC7F70];
  _accessibilityViewModel = [(MapViewModeGridButtonViewAccessibility *)self _accessibilityViewModel];
  v4 = [_accessibilityViewModel safeBoolForKey:@"selected"];

  v5 = *MEMORY[0x29EDC7FC0];
  if (!v4)
  {
    v5 = 0;
  }

  return v5 | v2;
}

- (id)accessibilityCustomActions
{
  v17[1] = *MEMORY[0x29EDCA608];
  objc_initWeak(&location, self);
  _accessibilityViewModel = [(MapViewModeGridButtonViewAccessibility *)self _accessibilityViewModel];
  v4 = [_accessibilityViewModel safeValueForKey:@"overflowMenu"];
  if (v4)
  {
    v5 = objc_alloc(MEMORY[0x29EDC78E0]);
    v6 = AXMapsLocString(@"ADDITIONAL_FILTERS");
    v11 = MEMORY[0x29EDCA5F8];
    v12 = 3221225472;
    v13 = __68__MapViewModeGridButtonViewAccessibility_accessibilityCustomActions__block_invoke;
    v14 = &unk_29F2CC4B8;
    objc_copyWeak(&v15, &location);
    v7 = [v5 initWithName:v6 actionHandler:&v11];
    v17[0] = v7;
    v8 = [MEMORY[0x29EDB8D80] arrayWithObjects:v17 count:{1, v11, v12, v13, v14}];

    objc_destroyWeak(&v15);
  }

  else
  {
    v8 = 0;
  }

  objc_destroyWeak(&location);
  v9 = *MEMORY[0x29EDCA608];

  return v8;
}

uint64_t __68__MapViewModeGridButtonViewAccessibility_accessibilityCustomActions__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained safeUIViewForKey:@"_overflowButton"];

  [v2 _accessibilityShowContextMenuForElement:v2 targetPointValue:0];
  return 1;
}

@end