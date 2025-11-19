@interface NCItemPickerSectionHeaderViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (CGRect)accessibilityFrame;
- (id)accessibilityCustomActions;
- (id)accessibilityLabel;
- (id)accessibilityPath;
- (int64_t)_accessibilityExpandedStatus;
- (unint64_t)accessibilityTraits;
@end

@implementation NCItemPickerSectionHeaderViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"NCItemPickerSectionHeaderView" hasInstanceMethod:@"titleLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"NCItemPickerSectionHeaderView" hasInstanceMethod:@"countLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"NCItemPickerSectionHeaderView" hasInstanceMethod:@"backgroundView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"NCItemPickerSectionHeaderView" hasInstanceMethod:@"checkmarkButton" withFullSignature:{"@", 0}];
  [v3 validateClass:@"NCItemPickerSectionHeaderView" hasInstanceMethod:@"selected" withFullSignature:{"B", 0}];
  [v3 validateClass:@"NCItemPickerSectionHeaderView" hasInstanceMethod:@"_checkmarkButtonPressed:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"NCItemPickerSectionHeaderView" hasInstanceMethod:@"_section" withFullSignature:{"@", 0}];
  [v3 validateClass:@"NCItemPickerSectionHeaderView" hasInstanceMethod:@"delegate" withFullSignature:{"@", 0}];
  [v3 validateClass:@"NCItemPickerSectionHeaderView" hasInstanceMethod:@"_section" withFullSignature:{"@", 0}];
  [v3 validateClass:@"NCItemPickerViewController" hasInstanceMethod:@"_isSectionExpanded" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v3 = [(NCItemPickerSectionHeaderViewAccessibility *)self safeValueForKey:@"titleLabel"];
  v4 = [(NCItemPickerSectionHeaderViewAccessibility *)self safeValueForKey:@"countLabel"];
  v5 = [v3 accessibilityLabel];
  v8 = [v4 accessibilityLabel];
  v6 = __UIAXStringForVariables();

  return v6;
}

- (unint64_t)accessibilityTraits
{
  v2 = *MEMORY[0x29EDC7F70];
  v3 = [(NCItemPickerSectionHeaderViewAccessibility *)self accessibilityIsSelected];
  v4 = *MEMORY[0x29EDC7FC0];
  if (!v3)
  {
    v4 = 0;
  }

  return v4 | v2;
}

- (CGRect)accessibilityFrame
{
  v2 = [(NCItemPickerSectionHeaderViewAccessibility *)self safeValueForKey:@"backgroundView"];
  [v2 accessibilityFrame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (id)accessibilityPath
{
  v2 = [(NCItemPickerSectionHeaderViewAccessibility *)self safeValueForKey:@"backgroundView"];
  v3 = [v2 accessibilityPath];

  return v3;
}

- (id)accessibilityCustomActions
{
  v3 = [MEMORY[0x29EDB8DE8] array];
  v18.receiver = self;
  v18.super_class = NCItemPickerSectionHeaderViewAccessibility;
  v4 = [(NCItemPickerSectionHeaderViewAccessibility *)&v18 accessibilityCustomActions];
  [v3 axSafelyAddObjectsFromArray:v4];

  v5 = [(NCItemPickerSectionHeaderViewAccessibility *)self accessibilityIsSelected];
  v6 = @"digest.apps.select.all";
  if (v5)
  {
    v6 = @"digest.apps.unselect.all";
  }

  v7 = v6;
  objc_initWeak(&location, self);
  v8 = objc_alloc(MEMORY[0x29EDC78E0]);
  v9 = accessibilityLocalizedString(v7);
  v12 = MEMORY[0x29EDCA5F8];
  v13 = 3221225472;
  v14 = __72__NCItemPickerSectionHeaderViewAccessibility_accessibilityCustomActions__block_invoke;
  v15 = &unk_29F316FB0;
  objc_copyWeak(&v16, &location);
  v10 = [v8 initWithName:v9 actionHandler:&v12];

  [v3 axSafelyAddObject:{v10, v12, v13, v14, v15}];
  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);

  return v3;
}

uint64_t __72__NCItemPickerSectionHeaderViewAccessibility_accessibilityCustomActions__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_copyWeak(&v5, (a1 + 32));
  AXPerformSafeBlock();
  objc_destroyWeak(&v5);

  return 1;
}

void __72__NCItemPickerSectionHeaderViewAccessibility_accessibilityCustomActions__block_invoke_2(uint64_t a1)
{
  v2 = objc_loadWeakRetained((a1 + 32));
  v1 = [v2 safeValueForKey:@"checkmarkButton"];
  [v2 _checkmarkButtonPressed:v1];
}

- (int64_t)_accessibilityExpandedStatus
{
  v3 = [(NCItemPickerSectionHeaderViewAccessibility *)self safeValueForKey:@"_section"];
  v4 = [v3 unsignedIntegerValue];

  v5 = [(NCItemPickerSectionHeaderViewAccessibility *)self safeValueForKey:@"delegate"];
  v6 = [v5 safeArrayForKey:@"_isSectionExpanded"];
  v7 = [v6 objectAtIndex:v4];
  v8 = [v7 BOOLValue];

  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = 2;
  }

  return v9;
}

@end