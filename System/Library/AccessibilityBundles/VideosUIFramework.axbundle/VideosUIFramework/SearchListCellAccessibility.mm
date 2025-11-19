@interface SearchListCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityCustomActions;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation SearchListCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"VideosUI.SearchListCell" hasInstanceMethod:@"titleLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"VideosUI.SearchListCell" hasInstanceMethod:@"subtitleLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"VideosUI.SearchListCell" hasInstanceMethod:@"buttonView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"VUIButton" hasInstanceMethod:@"selectActionHandler" withFullSignature:{"@?", 0}];
  [v3 validateClass:@"VideosUI.SearchListCell" hasSwiftField:@"resultsContextLabel" withSwiftType:"Optional<VUILabel>"];
  [v3 validateClass:@"VideosUI.ContextMenuButton"];
}

- (id)accessibilityLabel
{
  v3 = [(SearchListCellAccessibility *)self safeValueForKey:@"titleLabel"];
  objc_opt_class();
  v4 = [(SearchListCellAccessibility *)self safeSwiftValueForKey:@"resultsContextLabel"];
  v5 = __UIAccessibilityCastAsClass();

  v6 = [(SearchListCellAccessibility *)self safeValueForKey:@"subtitleLabel"];
  v19 = 0;
  objc_opt_class();
  v7 = [(SearchListCellAccessibility *)self safeSwiftValueForKey:@"badgeView"];
  v8 = __UIAccessibilityCastAsClass();

  v18.receiver = self;
  v18.super_class = SearchListCellAccessibility;
  v9 = [(SearchListCellAccessibility *)&v18 accessibilityLabel];
  v10 = [v3 accessibilityLabel];
  v11 = [v10 length];

  if (v11)
  {
    v12 = [v3 accessibilityLabel];

    v9 = v12;
  }

  v13 = [v5 accessibilityLabel];
  v14 = [v6 accessibilityLabel];
  v17 = [v8 accessibilityLabel];
  v15 = __UIAXStringForVariables();

  return v15;
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = SearchListCellAccessibility;
  return *MEMORY[0x29EDC7F70] | [(SearchListCellAccessibility *)&v3 accessibilityTraits];
}

- (id)accessibilityCustomActions
{
  v3 = [MEMORY[0x29EDB8DE8] array];
  v18.receiver = self;
  v18.super_class = SearchListCellAccessibility;
  v4 = [(SearchListCellAccessibility *)&v18 accessibilityCustomActions];
  [v3 axSafelyAddObjectsFromArray:v4];

  v5 = [(SearchListCellAccessibility *)self safeValueForKey:@"buttonView"];
  objc_initWeak(&location, v5);
  MEMORY[0x29ED3FF70](@"VideosUI.ContextMenuButton");
  if (objc_opt_isKindOfClass())
  {
    v6 = accessibilityLocalizedString(@"search.cell.button.more.action");
    v7 = objc_alloc(MEMORY[0x29EDC78E0]);
    v15[0] = MEMORY[0x29EDCA5F8];
    v15[1] = 3221225472;
    v15[2] = __57__SearchListCellAccessibility_accessibilityCustomActions__block_invoke;
    v15[3] = &unk_29F31C0A8;
    objc_copyWeak(&v16, &location);
    v8 = [v7 initWithName:v6 actionHandler:v15];
    [v3 axSafelyAddObject:v8];

    objc_destroyWeak(&v16);
  }

  else
  {
    v9 = objc_alloc(MEMORY[0x29EDC78E0]);
    v10 = accessibilityLocalizedString(@"search.cell.button.more.action");
    v13[0] = MEMORY[0x29EDCA5F8];
    v13[1] = 3221225472;
    v13[2] = __57__SearchListCellAccessibility_accessibilityCustomActions__block_invoke_2;
    v13[3] = &unk_29F31C0A8;
    objc_copyWeak(&v14, &location);
    v11 = [v9 initWithName:v10 actionHandler:v13];

    [v3 axSafelyAddObject:v11];
    objc_destroyWeak(&v14);
  }

  objc_destroyWeak(&location);

  return v3;
}

uint64_t __57__SearchListCellAccessibility_accessibilityCustomActions__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _accessibilityShowContextMenuForElement:WeakRetained targetPointValue:0];

  return 1;
}

BOOL __57__SearchListCellAccessibility_accessibilityCustomActions__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained safeValueForKey:@"selectActionHandler"];

  if (v3)
  {
    v4 = objc_loadWeakRetained((a1 + 32));
    (v3)[2](v3, v4);
  }

  return v3 != 0;
}

@end