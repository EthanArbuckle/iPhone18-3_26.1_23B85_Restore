@interface PXPhotosGlobalFooterViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)_accessibilityInternalTextLinks;
- (id)_accessibilitySupplementaryFooterViews;
- (id)_axLabel;
- (id)accessibilityElements;
@end

@implementation PXPhotosGlobalFooterViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"PXPhotosGlobalFooterView" hasInstanceVariable:@"_titleLabel" withType:"UILabel"];
  [v3 validateClass:@"PXPhotosGlobalFooterView" hasInstanceVariable:@"_subtitle2Label" withType:"UILabel"];
  [v3 validateClass:@"PXPhotosGlobalFooterView" hasInstanceVariable:@"_subtitle1TextView" withType:"UITextView"];
  [v3 validateClass:@"PXPhotosGlobalFooterView" hasInstanceVariable:@"_progressView" withType:"UIProgressView"];
  [v3 validateClass:@"PXPhotosGlobalFooterView" hasInstanceVariable:@"_filterView" withType:"UIView"];
  [v3 validateClass:@"PXPhotosGlobalFooterView" hasInstanceVariable:@"_accessoryView" withType:"UIView"];
}

- (id)accessibilityElements
{
  v3 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
  v4 = [(PXPhotosGlobalFooterViewAccessibility *)self _axAccessoryView];
  v5 = v4;
  if (v4 && ([v4 safeBoolForKey:@"isHidden"] & 1) == 0)
  {
    v6 = [v5 _accessibilityFindSubviewDescendantsPassingTest:&__block_literal_global_3];
    [v3 addObjectsFromArray:v6];
  }

  v7 = [(PXPhotosGlobalFooterViewAccessibility *)self _axFooterElement];

  if (!v7)
  {
    v8 = [objc_alloc(MEMORY[0x29EDC78F8]) initWithAccessibilityContainer:self];
    [(PXPhotosGlobalFooterViewAccessibility *)self _accessibilityBounds];
    [v8 setBounds:?];
    objc_initWeak(&location, self);
    v12 = MEMORY[0x29EDCA5F8];
    v13 = 3221225472;
    v14 = __62__PXPhotosGlobalFooterViewAccessibility_accessibilityElements__block_invoke_2;
    v15 = &unk_29F2E6480;
    objc_copyWeak(&v16, &location);
    [v8 setAccessibilityLabelBlock:&v12];
    [(PXPhotosGlobalFooterViewAccessibility *)self _setAXFooterElement:v8, v12, v13, v14, v15];
    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }

  v9 = [(PXPhotosGlobalFooterViewAccessibility *)self _axFooterElement];
  [v3 axSafelyAddObject:v9];

  v10 = [v3 copy];

  return v10;
}

id __62__PXPhotosGlobalFooterViewAccessibility_accessibilityElements__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained _axLabel];

  return v2;
}

- (id)_axLabel
{
  v3 = [(PXPhotosGlobalFooterViewAccessibility *)self safeValueForKey:@"_titleLabel"];
  v4 = [(PXPhotosGlobalFooterViewAccessibility *)self safeValueForKey:@"_subtitle2Label"];
  v5 = [(PXPhotosGlobalFooterViewAccessibility *)self safeValueForKey:@"_progressView"];
  if ([v5 safeBoolForKey:@"isHidden"])
  {
    v6 = 0;
  }

  else
  {
    v7 = [v5 accessibilityLabel];
    v15 = [v5 accessibilityValue];
    v16 = @"__AXStringForVariablesSentinel";
    v6 = __UIAXStringForVariables();
  }

  v8 = [(PXPhotosGlobalFooterViewAccessibility *)self _axFilterView:v15];
  v9 = [v3 accessibilityLabel];
  v10 = [(PXPhotosGlobalFooterViewAccessibility *)self _axSubtitle1TextView];
  v11 = [v10 accessibilityValue];
  v12 = [v4 accessibilityLabel];
  if ([v8 safeBoolForKey:@"isHidden"])
  {
    v13 = __UIAXStringForVariables();
  }

  else
  {
    v17 = [v8 accessibilityLabel];
    v13 = __UIAXStringForVariables();
  }

  return v13;
}

- (id)_accessibilityInternalTextLinks
{
  v3 = MEMORY[0x29EDB8DE8];
  v4 = [(PXPhotosGlobalFooterViewAccessibility *)self _axSubtitle1TextView];
  v5 = [v4 _accessibilityInternalTextLinks];
  v6 = [v3 axArrayWithPossiblyNilArrays:{1, v5}];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = [MEMORY[0x29EDB8DE8] array];
  }

  v9 = v8;

  v10 = [(PXPhotosGlobalFooterViewAccessibility *)self _axAccessoryView];
  v11 = [v10 _accessibilityInternalTextLinks];
  [v9 axSafelyAddObjectsFromArray:v11];

  return v9;
}

- (id)_accessibilitySupplementaryFooterViews
{
  v2 = [(PXPhotosGlobalFooterViewAccessibility *)self _axFilterView];
  v3 = [v2 _accessibilitySupplementaryFooterViews];

  return v3;
}

@end