@interface PXPhotosGlobalFooterViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)_accessibilityInternalTextLinks;
- (id)_accessibilitySupplementaryFooterViews;
- (id)_axLabel;
- (id)accessibilityElements;
@end

@implementation PXPhotosGlobalFooterViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"PXPhotosGlobalFooterView" hasInstanceVariable:@"_titleLabel" withType:"UILabel"];
  [validationsCopy validateClass:@"PXPhotosGlobalFooterView" hasInstanceVariable:@"_subtitle2Label" withType:"UILabel"];
  [validationsCopy validateClass:@"PXPhotosGlobalFooterView" hasInstanceVariable:@"_subtitle1TextView" withType:"UITextView"];
  [validationsCopy validateClass:@"PXPhotosGlobalFooterView" hasInstanceVariable:@"_progressView" withType:"UIProgressView"];
  [validationsCopy validateClass:@"PXPhotosGlobalFooterView" hasInstanceVariable:@"_filterView" withType:"UIView"];
  [validationsCopy validateClass:@"PXPhotosGlobalFooterView" hasInstanceVariable:@"_accessoryView" withType:"UIView"];
}

- (id)accessibilityElements
{
  v3 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
  _axAccessoryView = [(PXPhotosGlobalFooterViewAccessibility *)self _axAccessoryView];
  v5 = _axAccessoryView;
  if (_axAccessoryView && ([_axAccessoryView safeBoolForKey:@"isHidden"] & 1) == 0)
  {
    v6 = [v5 _accessibilityFindSubviewDescendantsPassingTest:&__block_literal_global_3];
    [v3 addObjectsFromArray:v6];
  }

  _axFooterElement = [(PXPhotosGlobalFooterViewAccessibility *)self _axFooterElement];

  if (!_axFooterElement)
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

  _axFooterElement2 = [(PXPhotosGlobalFooterViewAccessibility *)self _axFooterElement];
  [v3 axSafelyAddObject:_axFooterElement2];

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
    accessibilityLabel = [v5 accessibilityLabel];
    accessibilityValue = [v5 accessibilityValue];
    v16 = @"__AXStringForVariablesSentinel";
    v6 = __UIAXStringForVariables();
  }

  v8 = [(PXPhotosGlobalFooterViewAccessibility *)self _axFilterView:accessibilityValue];
  accessibilityLabel2 = [v3 accessibilityLabel];
  _axSubtitle1TextView = [(PXPhotosGlobalFooterViewAccessibility *)self _axSubtitle1TextView];
  accessibilityValue2 = [_axSubtitle1TextView accessibilityValue];
  accessibilityLabel3 = [v4 accessibilityLabel];
  if ([v8 safeBoolForKey:@"isHidden"])
  {
    v13 = __UIAXStringForVariables();
  }

  else
  {
    accessibilityLabel4 = [v8 accessibilityLabel];
    v13 = __UIAXStringForVariables();
  }

  return v13;
}

- (id)_accessibilityInternalTextLinks
{
  v3 = MEMORY[0x29EDB8DE8];
  _axSubtitle1TextView = [(PXPhotosGlobalFooterViewAccessibility *)self _axSubtitle1TextView];
  _accessibilityInternalTextLinks = [_axSubtitle1TextView _accessibilityInternalTextLinks];
  v6 = [v3 axArrayWithPossiblyNilArrays:{1, _accessibilityInternalTextLinks}];
  v7 = v6;
  if (v6)
  {
    array = v6;
  }

  else
  {
    array = [MEMORY[0x29EDB8DE8] array];
  }

  v9 = array;

  _axAccessoryView = [(PXPhotosGlobalFooterViewAccessibility *)self _axAccessoryView];
  _accessibilityInternalTextLinks2 = [_axAccessoryView _accessibilityInternalTextLinks];
  [v9 axSafelyAddObjectsFromArray:_accessibilityInternalTextLinks2];

  return v9;
}

- (id)_accessibilitySupplementaryFooterViews
{
  _axFilterView = [(PXPhotosGlobalFooterViewAccessibility *)self _axFilterView];
  _accessibilitySupplementaryFooterViews = [_axFilterView _accessibilitySupplementaryFooterViews];

  return _accessibilitySupplementaryFooterViews;
}

@end